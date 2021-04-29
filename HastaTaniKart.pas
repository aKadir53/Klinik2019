unit HastaTaniKart;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,KadirLabel,GirisUnit,KadirType,Kadir, KadirMedula3,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  dxSkinsCore, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinsDefaultPainters, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, Vcl.Menus, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxDropDownEdit, cxImageComboBox, cxPCdxBarPopupMenu,
  cxContainer, cxTextEdit, cxMemo, cxPC;

type
  TfrmTaniKart = class(TGirisForm)
    PopupMenu1: TPopupMenu;
    Ekle1: TMenuItem;
    Sl1: TMenuItem;
    Kapat1: TMenuItem;
    Tanilar: TListeAc;
    M1: TMenuItem;
    cxPageControl1: TcxPageControl;
    Tab_Tani: TcxTabSheet;
    Tab_log: TcxTabSheet;
    Grid_Tanilar: TcxGrid;
    ListeS: TcxGridDBTableView;
    ListeSColumn2: TcxGridDBColumn;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    ListeSColumn1: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    txtLog: TcxMemo;
    ListeSColumn3: TcxGridDBColumn;
    ListeSColumn4: TcxGridDBColumn;
    ListeSColumn5: TcxGridDBColumn;
    ListeSColumn6: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure TaniGetir;
    procedure TaniEkle;
    procedure TaniSil;

    procedure MedulayaGonder;
    procedure cxButtonCClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function Init(Sender: TObject) : Boolean; override;
  end;

const _TableName_ = 'Hareketler';
      formGenislik = 600;
      formYukseklik = 300;
      TaniSQL = 'select Hr.*,g.TakipNo,g.basvuruNo,g.SIRANO hastaneRefNo from Hareketler Hr ' +
                ' join Hasta_Gelisler g on g.dosyaNO = Hr.dosyaNO and g.gelisNO = Hr.gelisNo ' +
                ' where Hr.dosyaNO = %s and Hr.gelisNo = %s and Tip = ''T''';
var
  frmTaniKart: TfrmTaniKart;

implementation
      uses Data_Modul,AnaUnit;
{$R *.dfm}


function TfrmTaniKart.Init(Sender: TObject) : Boolean;
begin
  cxTab.Tabs[0].Caption := _HastaAdSoyad_;
  TaniGetir;

  if _pasifSebeb_ = '5' then
  begin
   ListeS.OptionsData.Editing := False;
  end;

  Result := True;
end;

procedure TfrmTaniKart.TaniSil;
var
 islemRefNo : string;
begin
   if sqlRun.Eof then exit;
   islemRefNo := sqlRun.FieldByName('SiraNo').AsString;
   if sqlRun.FieldByName('islemSiraNo').AsString = ''
   then begin
     datalar.QueryExec('delete from hareketler where siraNo = ' + islemRefNo);
     sqlRun.Requery();
   end
   else
    ShowMessageSkin('Taný Medulaya Kayýtlý','','','info');

end;

procedure TfrmTaniKart.TaniEkle;
var
    List : ArrayListeSecimler;
begin
    List := Tanilar.ListeGetir;
    if length(List) > 0
    Then BEgin
       if sqlRun.Locate('dosyaNo;gelisNo;code',VarArrayOf([_dosyaNO_, _gelisNO_,List[0].kolon1]),[])
       then exit;
       sqlRun.Append;
       sqlRun.FieldByName('code').AsString := List[0].kolon1;
       sqlRun.FieldByName('NAME1').AsString := List[0].kolon2;
       sqlRun.FieldByName('BIRINCIL').AsString := 'Evet';
       sqlRun.FieldByName('TANITURU').AsString := '2';
       sqlRun.FieldByName('dosyaNo').AsString := _dosyaNO_;
       sqlRun.FieldByName('gelisNo').AsString := _gelisNO_;
       sqlRun.FieldByName('gelisSiraNo').AsString := _gelisSiraNo_;
       sqlRun.FieldByName('Tip').AsString := 'T';
       sqlRun.Post;
    End;
end;
procedure TfrmTaniKart.TaniGetir;
begin
  sqlRun.SQL.Text := Format(TaniSQL,[#39+_dosyaNo_+#39,_gelisNo_]);
  sqlRun.Open;
  ListeS.DataController.DataSource := DataTableSource;

end;


procedure TfrmTaniKart.MedulayaGonder;
var
   x , durum , _msg_,satir ,sirano: integer;
   oncekiTalepBilgisi ,sql , sonuc,talep,TakipNo,BasvuruNo  : string;
   HataliIslem,Hatali : TStringList;
   fark : double;
   sysTakipNo,islemRefNo,mesajTipi,HastaneRefNo,eNabizSonuc ,raporTakipNo,sebeb: string;
begin

   if UserRight('MEDULA ÝÞLEMLERÝ', 'Ödeme Yolla') = False
   then begin
       ShowMessageSkin('Bu Ýþlem Ýçin Yetkiniz Bulunmamaktadýr !','','','info');
       exit;
   end;

  txtLog.Lines.Clear;


   if LisansKontrol(fark) = False
   Then Begin
    ShowMessageSkin('Lisans Yenileyin','','','info');
    exit;
   End;



   durum := 0;
   DurumGoster(True);
   try
       for x := 0 to ListeS.Controller.SelectedRowCount - 1 do
       begin
           Application.ProcessMessages;
           satir := ListeS.Controller.SelectedRows[x].RecordIndex;
           talep := varToStr(ListeS.DataController.GetValue(satir,ListeS.DataController.GetItemByFieldName('islemSiraNo').Index)) ;
           TakipNo := varToStr(ListeS.DataController.GetValue(satir,ListeS.DataController.GetItemByFieldName('TakipNo').Index)) ;
           BasvuruNo := varToStr(ListeS.DataController.GetValue(satir,ListeS.DataController.GetItemByFieldName('BasvuruNo').Index)) ;
           islemRefNo := varToStr(ListeS.DataController.GetValue(satir,ListeS.DataController.GetItemByFieldName('siraNo').Index));
           HastaneRefNo := varToStr(ListeS.DataController.GetValue(satir,ListeS.DataController.GetItemByFieldName('hastaneRefNo').Index));

           Application.ProcessMessages;

           if (talep = '')
           then begin
               HizmetKayitVeriSeti(takipNo,BasvuruNo, 'D','G','T','',sonuc);
               txtLog.Lines.Add('Medula Hizmet Kayýt : ' + takipno + '-' + sonuc);
           end
           else
             txtLog.Lines.Add(takipno + ' - Medula Hizmet Kayýt Ýçin ,islemSýraNo  Boþ olmalýdýr');
        end;

   finally
      TaniGetir;
      DurumGoster(False);
   end;


end;


procedure TfrmTaniKart.cxButtonCClick(Sender: TObject);
begin
  datalar.KontrolUserSet := False;
  inherited;
  if datalar.KontrolUserSet = True then exit;

  case TControl(sender).Tag of
  -1 : begin
        TaniEkle;
       end;
  -2 : begin
        TaniSil;
       end;
  -3 : begin
         close;
       end;

  -10 : begin
           MedulayaGonder;
        end;

  end;


end;

procedure TfrmTaniKart.FormCreate(Sender: TObject);
var
  index,i : integer;
  Ts,Ts1 : TStringList;
  List,List1 : TListeAc;
begin
  ClientHeight := formYukseklik;
  ClientWidth := formGenislik;

  TableName := _TableName_;

  Olustur(self,_TableName_,'Tani Kartý',25);
  menu := PopupMenu1;
  cxPanel.Visible := false;
  Tanilar.SkinName := AnaForm.dxSkinController1.SkinName;

 sayfalar.HideTabs := true;
 sayfa2.TabVisible := false;
 sayfa3.TabVisible := false;
 sayfa4.TabVisible := false;
 sayfa5.TabVisible := false;

end;

end.
