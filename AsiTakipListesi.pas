unit AsiTakipListesi;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,KadirLabel,GirisUnit,KadirType,getFormClass, Kadir,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  dxSkinsCore, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinsDefaultPainters, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, Vcl.Menus, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid;

type
  TfrmAsiTakipListesi = class(TGirisForm)
    GridAsiTakip: TcxGridKadir;
    gridAsilar: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    Asilar: TListeAc;
    PopupMenu1: TPopupMenu;
    Ekle1: TMenuItem;
    Sl1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure TopPanelButonClick(Sender: TObject);
    procedure AsiGetir;
    procedure AsiEkle;
    procedure AsiSil;
    procedure cxButtonCClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function Init(Sender: TObject) : Boolean; override;
  end;

const _TableName_ = 'HastaAsi';
      formGenislik = 550;
      formYukseklik = 400;
      AsiSQL = 'select * from HastaAsi where dosyaNO = %s';
var
  frmAsiTakipListesi: TfrmAsiTakipListesi;

implementation
      uses Data_Modul,AnaUnit;
{$R *.dfm}


function TfrmAsiTakipListesi.Init(Sender: TObject) : Boolean;
begin
  cxTab.Tabs[0].Caption := _HastaAdSoyad_;
  AsiGetir;
  Result := True;
end;

procedure TfrmAsiTakipListesi.AsiSil;
begin
           if gridAsilar.Controller.SelectedRowCount > 0
           Then begin
              sqlRun.Delete;
           end;
end;

procedure TfrmAsiTakipListesi.AsiEkle;
var
    List : ArrayListeSecimler;
begin
    List := Asilar.ListeGetir;
    if length(List) > 0
    Then BEgin
       if sqlRun.Locate('dosyaNo;tarih;asiKodu',VarArrayOf([_dosyaNO_, date(),List[0].kolon1]),[])
       then exit;

       sqlRun.Append;
       try
         sqlRun.FieldByName('asiKodu').AsString := List[0].kolon1;
         sqlRun.FieldByName('asiAdi').AsString := List[0].kolon2;
         sqlRun.FieldByName('Tarih').AsDateTime := date();
         sqlRun.FieldByName('dosyaNo').AsString := _dosyaNO_;
         sqlRun.Post;
       except
         sqlRun.Cancel;
         raise;
       end;

    End;
end;
procedure TfrmAsiTakipListesi.AsiGetir;
begin
  sqlRun.SQL.Text := Format(AsiSQL,[#39+_dosyaNo_+#39]);
  sqlRun.Open;
  gridAsilar.DataController.DataSource := DataTableSource;

end;
procedure TfrmAsiTakipListesi.cxButtonCClick(Sender: TObject);
var
  Form : TGirisForm;
  GirisFormRecord : TGirisFormRecord;
begin
inherited;

  GirisFormRecord.F_dosyaNo_ :=  GridAsiTakip.dataset.FieldByName('dosyaNo').AsString;
  GirisFormRecord.F_HastaAdSoyad_ := GridAsiTakip.dataset.FieldByName('HastaAdi').AsString;

  datalar.KontrolUserSet := False;
  inherited;
  if datalar.KontrolUserSet = True then exit;

  case TControl(sender).Tag of
  -1 : begin
          Form := FormINIT(TagfrmAsiKarti,GirisFormRecord,ikEvet,'');
          //F._Foto_ := foto;
          if Form <> nil then Form.ShowModal;
       end;
  -2 : begin
           if FindTab(AnaForm.sayfalar,TagfrmHastaKart)
           Then begin
             Form := TGirisForm(FormClassType(TagfrmHastaKart));
             TGirisForm(FormClassType(TagfrmHastaKart))._dosyaNO_ := GirisFormRecord.F_dosyaNo_;
             TGirisForm(FormClassType(TagfrmHastaKart))._TC_ := '';
             TGirisForm(FormClassType(TagfrmHastaKart)).Init(Form);
           end
           Else begin
            Form := FormINIT(TagfrmHastaKart,self,GirisFormRecord.F_dosyaNo_,NewTab(AnaForm.sayfalar,TagfrmHastaKart),ikEvet,'Giriþ');
            if Form <> nil then Form.show;
           end;
       end;
  -3 : begin
         //close;
       end;

  end;


end;

procedure TfrmAsiTakipListesi.FormCreate(Sender: TObject);
begin

  ClientHeight := formYukseklik;
  ClientWidth := formGenislik;

  TableName := _TableName_;

   TopPanel.Visible := True;
   TapPanelElemanVisible(True,True,True,false,false,false,false,false,False,False,false,false,false,false);



  menu := PopupMenu1;
  cxPanel.Visible := false;

  Asilar.SkinName := AnaForm.dxSkinController1.SkinName;

 sayfalar.HideTabs := true;
 sayfa2.TabVisible := false;
 sayfa3.TabVisible := false;
 sayfa4.TabVisible := false;
 sayfa5.TabVisible := false;

end;

procedure TfrmAsiTakipListesi.TopPanelButonClick(Sender: TObject);
var
 sql  : string;
 maxFaturaNo : Double;
begin
 inherited;
     DurumGoster;
     try
       gridAsilar.ClearItems;
       sql := 'exec sp_AsiTakipListesi @tarih1 = '+ varTostr(txtTopPanelTarih1.GetSQLValue) +
       ',@tarih2 = '+ varTostr(txtTopPanelTarih2.GetSQLValue) +
       ',@sirketKod = ' + QuotedStr(datalar.AktifSirket);


        datalar.QuerySelect(GridAsiTakip.Dataset,sql);
        gridAsilar.DataController.CreateAllItems(True);

     finally
       DurumGoster(false);
     end;

end;

end.
