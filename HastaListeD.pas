unit HastaListeD;

interface

uses
  Windows, Messages, SysUtils,StrUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, StdCtrls,dxLayoutControl, jpeg,
  Buttons,  ExtCtrls, DBGrids,  KadirLabel,Kadir,KadirType,GetFormClass,
  DBGridEh, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, Menus,
  cxContainer, cxGroupBox, cxRadioGroup,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxImageComboBox, cxMemo,
  cxPCdxBarPopupMenu, cxPC,GirisUnit, Vcl.ComCtrls, dxtree, dxdbtree,
  dxSkinsCore, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  cxGridCustomPopupMenu, cxGridPopupMenu, dxSkinBlack, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinValentine,
  dxSkinXmas2008Blue, cxImage;

type
  TfrmHastaListeD = class(TGirisForm)
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    PopupMenu1: TPopupMenu;
    Tip: TcxRadioGroup;
    txtay: TcxComboBox;
    ktip: TcxComboBox;
    DiyalizTip: TcxRadioGroup;
    popupYil: TPopupMenu;
    cxListPanel: TcxGroupBox;
    uyari: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    txtUyariMesaj: TcxMemo;
    Recete: TMenuItemModul;
    edaviKart1: TMenuItemModul;
    SeansKart1: TMenuItemModul;
    Epikriz1: TMenuItemModul;
 //   akipRaporBul1: TMenuItemModul;
 //   SeansTahakkuk1: TMenuItemModul;
    cxHastaListePanelBaslik: TcxGroupBox;
    e1: TMenuItemModul;
    He1: TMenuItemModul;
    He2: TMenuItemModul;
    He3: TMenuItemModul;
    N1: TMenuItem;
    A1: TMenuItem;
    T1: TMenuItem;
    cxGrid2: TcxGridKadir;
    Liste: TcxGridDBTableView;
    TC: TcxGridDBColumn;
    ListeColumn1: TcxGridDBColumn;
    HastaAdi: TcxGridDBColumn;
    HastaSoyadi: TcxGridDBColumn;
    ListeColumn4: TcxGridDBColumn;
    ListeColumn5: TcxGridDBColumn;
    ListeColumn6: TcxGridDBColumn;
    Kilo: TcxGridDBColumn;
    ListeColumn7: TcxGridDBColumn;
    ListeColumn8: TcxGridDBColumn;
    ListeColumn10: TcxGridDBColumn;
    ListeColumn11: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    N2: TMenuItem;
    ListeColumn2: TcxGridDBColumn;
    E2: TMenuItem;
    R1: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    HastaYllkTekikCetveli1: TMenuItem;
    ListeColumn3: TcxGridDBColumn;
    H1: TMenuItem;
    M1: TMenuItem;
    E3: TMenuItem;

    procedure TopPanelPropertiesChange(Sender: TObject);
    procedure btnVazgecClick(Sender: TObject);
    procedure btnAraClick(Sender: TObject);
    procedure btnGuncelleClick(Sender: TObject);
    procedure Bilgiler;
    procedure ado_BransKodlariAfterPost(DataSet: TDataSet);
    procedure ListeDblClick(Sender: TObject);
    procedure SeansKart1Click(Sender: TObject);
    procedure edaviKart1Click(Sender: TObject);
    procedure Epikriz1Click(Sender: TObject);
    procedure SeansTahakkuk1Click(Sender: TObject);
    procedure cxRadioGroup1PropertiesChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure txtayPropertiesChange(Sender: TObject);
    procedure ado_BransKodlariAfterOpen(DataSet: TDataSet);
    procedure ado_BransKodlariAfterScroll(DataSet: TDataSet);
    procedure ListeDataControllerFilterRecord(
      ADataController: TcxCustomDataController; ARecordIndex: Integer;
      var Accept: Boolean);
    procedure popupYilPopup(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure ListeCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure H1Click(Sender: TObject);
    procedure cxButtonCClick(Sender: TObject);
    procedure ListeFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure cxDonemComboKadir1PropertiesChange(Sender: TObject);
    procedure ListeGetCellHeight(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      ACellViewInfo: TcxGridTableDataCellViewInfo; var AHeight: Integer);

  private
    { Private declarations }
  public
    { Public declarations }
    function Init(Sender: TObject) : Boolean; override;
  end;

type
  TdxLayoutControlAccess = class(TdxLayoutControl);

const formGenislik = 700;
      formYukseklik = 600;
      FotoTable = 'select * from PersonelFoto where dosyaNo = %s';

var
  frmHastaListeD: TfrmHastaListeD;
  ay1 , ay2  , donemYil ,_Tarih_: string;
implementation
  uses Data_Modul,AnaUnit, HastaListe;// HastaRecete, HastaSeansIsle;
{$R *.dfm}



procedure TfrmHastaListeD.Bilgiler;

begin
    ay1 := txtDonemTopPanel.getValueIlkTarih; //tarihal(ayaditoay(txtAy.Text,donemYil));
    ay2 := txtDonemTopPanel.getValueSonTarih; //tarihal(ayliktarih2(txtAy.Text,donemYil));
    _tarih_ := copy(ay1,1,4);
  //  cxGrid2.Dataset := _Dataset;
end;

procedure TfrmHastaListeD.btnVazgecClick(Sender: TObject);
begin
  close;
end;

procedure TfrmHastaListeD.cxButtonCClick(Sender: TObject);
var
 GirisFormRecord : TGirisFormRecord;
 F : TGirisForm;
 Datasets : TDataSetKadir;
 x , satir : integer;
 dosyaNo , dosyaNos ,sql : string;
begin
  datalar.KontrolUserSet := False;
  inherited;
  if datalar.KontrolUserSet = True then exit;

  GirisFormRecord.F_dosyaNo_ := _Dataset.FieldByName('dosyaNo').AsString;
  GirisFormRecord.F_gelisNo_ := _Dataset.FieldByName('gelisNo').AsString;
  GirisFormRecord.F_GelisSIRANO := _Dataset.FieldByName('SIRANO').AsString;
  GirisFormRecord.F_provizyonTarihi_ := FormatDateTime('YYYYMMDD', _Dataset.FieldByName('BHDAT').AsDateTime);
  GirisFormRecord.F_HastaAdSoyad_ := _Dataset.FieldByName('HASTAADI').AsString + ' ' +
                                     _Dataset.FieldByName('HASTASOYADI').AsString;
  GirisFormRecord.F_TakipNo_ := _Dataset.FieldByName('TakipNO').AsString;
  GirisFormRecord.F_TC_ := _Dataset.FieldByName('TCKimlikNo').AsString;
  GirisFormRecord.F_Doktor_ := _Dataset.FieldByName('doktor').AsString;
  GirisFormRecord.F_Makina_ := _Dataset.FieldByName('MakinaNo').AsString;
  GirisFormRecord.F_Seans_ := _Dataset.FieldByName('Seans').AsString;
  GirisFormRecord.F_mobilTel_ := _Dataset.FieldByName('EV_TEL1').AsString;

  GirisFormRecord.F_SeansBilgi.DiyalizorTipi := _Dataset.FieldByName('DiyalizorTipi').AsString;
  GirisFormRecord.F_SeansBilgi.DiyalizorCinsi := _Dataset.FieldByName('DiyalizorCinsi').AsString;
  GirisFormRecord.F_SeansBilgi.Diyalizat := _Dataset.FieldByName('D').AsString;
  GirisFormRecord.F_SeansBilgi.YA := _Dataset.FieldByName('YA').AsString;
  GirisFormRecord.F_SeansBilgi.Diyalizor := _Dataset.FieldByName('Diyalizor').AsString;
  GirisFormRecord.F_SeansBilgi.GirisYolu := _Dataset.FieldByName('GIRISYOLU').AsString;
  GirisFormRecord.F_SeansBilgi.Heparin := _Dataset.FieldByName('HEPARIN').AsString;
  GirisFormRecord.F_SeansBilgi.HeparinTip := _Dataset.FieldByName('HEPARINTIP').AsString;
  GirisFormRecord.F_SeansBilgi.HeparinUyg := _Dataset.FieldByName('HEPARINUYG').AsString;
  GirisFormRecord.F_SeansBilgi.Igne := _Dataset.FieldByName('Igne').AsString;
  GirisFormRecord.F_SeansBilgi.IgneV := _Dataset.FieldByName('IgneV').AsString;
  GirisFormRecord.F_SeansBilgi.APH := _Dataset.FieldByName('APH').AsString;
  GirisFormRecord.F_SeansBilgi.Na := _Dataset.FieldByName('Na').AsString;


  if _Dataset.RecordCount = 0 then exit;

  case Tcontrol(sender).tag of
 -1 : begin
          F := FormINIT(TagfrmHastaIlacTedavi,GirisFormRecord,ikEvet,'');
          F._foto_ := _foto_;
          if F <> nil then F.ShowModal;
      end;
 -2 : begin
          F := FormINIT(TagfrmHastaSeans,GirisFormRecord,ikHayir,'');
          if F <> nil then F.ShowModal;
      end;
 -3  : begin
          EpikrizYaz(_Dataset.FieldByName('dosyaNo').AsString,_Dataset.FieldByName('gelisNo').AsString,false);
       end;

 -7 : begin
          DurumGoster(True,False,'Hastanýn Reçeteleri Yükleniyor...');
          F := FormINIT(TagfrmHastaRecete,GirisFormRecord,ikEvet);
          F._foto_ := _foto_;
          if F <> nil then F.ShowModal;
          DurumGoster(False,False);
       // ReceteForm(ado_BransKodlari.FieldByName('dosyaNo').AsString,ado_BransKodlari.FieldByName('gelisNo').AsString);
      end;

 -8 : begin
          F := FormINIT(TagfrmRaporDetay,GirisFormRecord,ikEvet,'');
          F._foto_ := _foto_;
          if F <> nil then F.ShowModal;
      end;


 -20,-21 : begin
        //
              DurumGoster(True,False,'Ýmza Föyleri Yükleniyor, Lütfen Bekleyiniz');
              try
                Datasets.Dataset0 := datalar.ADO_aktifSirketLogo;
                Datasets.Dataset2 := datalar.ADO_AktifSirket;

                if Tcontrol(sender).tag = -21
                then begin
                  DataSource.Dataset.Filtered := True;
                  DataSource.Dataset.Filter := 'dosyaNO = ' + QuotedStr(GirisFormRecord.F_dosyaNo_);
                end;


                Datasets.Dataset1 := DataSource.Dataset;
                PrintYap('039','Ýmza Föyü',intTostr(TagfrmHastaListeD),Datasets);
                DataSource.Dataset.Filtered := False;
              finally
                DurumGoster(False);
              end;

       end;
 -37 : begin
          GirisFormRecord.F_provizyonTarihi_ := tarihal(date);
          F := FormINIT(TagfrmKanTetkikTakip,GirisFormRecord,ikHayir);
          if F <> nil then F.ShowModal;
       end;
-110 : begin
         if datalar.doktorKodu <> ''
         then begin
             if FindTab(AnaForm.sayfalar,TagfrmMedEczane)
             Then begin
               F := TGirisForm(FormClassType(TagfrmMedEczane));
               TGirisForm(FormClassType(TagfrmMedEczane))._dosyaNO_ := '';
               TGirisForm(FormClassType(TagfrmMedEczane))._value_ := 'MedEczane';
               TGirisForm(FormClassType(TagfrmMedEczane))._TC_ := _Dataset.FieldByName('TCKimlikNo').AsString;
               TGirisForm(FormClassType(TagfrmMedEczane))._HastaAdSoyad_ :=   GirisFormRecord.F_HastaAdSoyad_;
               TGirisForm(FormClassType(TagfrmMedEczane)).Init(F);
             end
             Else begin
              F := FormINIT(TagfrmMedEczane,self,GirisFormRecord,'',NewTab(AnaForm.sayfalar,TagfrmMedEczane),ikEvet,'Giriþ');
              if F <> nil then F.show;
             end;
         end
         else
           ShowMessageSkin('Doktor Kullanýcýsý Olmalýsýnýz','','','info');
       end;

-111 : begin
         if datalar.doktorKodu <> ''
         then
           ENabizDoktorErisim(datalar._userSaglikNet2_,datalar._passSaglikNet2_,_Dataset.FieldByName('TCKimlikNo').AsString,datalar.doktorTC)
         else
         begin
           ShowMessageSkin('Doktor Kullanýcýsý Olmalýsýnýz','','','info');
         end;
       end;

-100 : begin
              if DirectoryExists('C:\NoktaV3\QR') = False
              then
                MkDir('C:\NoktaV3\QR');

          DurumGoster(True);

          try
            for x := 0 to Liste.Controller.SelectedRowCount - 1 do
            begin
               Application.ProcessMessages;
               satir := Liste.Controller.SelectedRows[x].RecordIndex;
               dosyaNo := varToSTr(Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('dosyaNo').Index));
               dosyaNos := dosyaNos + ifthen(dosyaNos = '','',',') + dosyaNo;
               FotoEkle('',dosyaNo);
               QRBarkod('http://185.99.199.39:8079?dosyaNo=' + dosyaNo,'C:\NoktaV3\QR\' + dosyaNo +'.jpg');
               QRYukle(datalar.ADO_FOTO ,'QR','C:\NoktaV3\QR\' + dosyaNo+'.jpg');
            end;

              sql := 'select * from hastakart h ' +
                     'left join PersonelFoto p on h.dosyano = p.dosyano ' +
                     'where h.dosyaNo in (select datavalue from dbo.strTotable(' + QuotedStr(dosyaNos) + ','',''))' ;

              Datasets.Dataset0 := datalar.QuerySelect(sql);
              Datasets.Dataset2 := datalar.ADO_AktifSirket;
              Datasets.Dataset3 := datalar.ADO_aktifSirketLogo;
              PrintYap('PKBT','Hasta Kart Toplu','',Datasets,kadirType.pTNone);

          finally
            DurumGoster(False);
          end;


       end;


 330,9020 : begin
               F := FormINIT(Tcontrol(sender).tag,GirisFormRecord,ikEvet,'Giriþ');
               if F <> nil then F.ShowModal;
            end;

  end;
end;

procedure TfrmHastaListeD.cxDonemComboKadir1PropertiesChange(Sender: TObject);
begin
   Bilgiler;
end;

procedure TfrmHastaListeD.cxRadioGroup1PropertiesChange(Sender: TObject);
begin
    Bilgiler;

(*
    ado_BransKodlari.Close;
    ado_BransKodlari.Parameters.ParamByName('ak').Value := Tip.EditValue;
    ado_BransKodlari.Parameters.ParamByName('tip').Value := DiyalizTip.EditValue;
    ado_BransKodlari.Parameters.ParamByName('t').value := ay1;
    ado_BransKodlari.Parameters.ParamByName('t1').value := ay2;
    ado_BransKodlari.Parameters.ParamByName('ktip').value := trim(copy(ktip.Text,1,2));
    ado_BransKodlari.Open;
  *)


end;

procedure TfrmHastaListeD.FormCreate(Sender: TObject);
var
 d : string;
begin
  cxPanel.Visible := false;
 // ToolBar1.Visible := false;

  ClientHeight := AnaForm.ClientHeight - (AnaForm.ToolBar1.Height + AnaForm.dxStatusBar1.Height+50);
  ClientWidth := formGenislik;
  Olustur(self,TableName,'Hasta Listesi',23);

  if datalar.LisansTipDeger = '1'
  then
    E3.Visible := False
  else
    E3.Visible := True;

  Menu := PopupMenu1;
  Tag := TagfrmHastaListeD;

//  TdxLayoutControlAccess(sayfa1_dxLayoutControl1). ScrollBars := ssVertical;
//  TdxLayoutControlAccess(dxLayoutControl1).VScrollBar.Visible := False;

  TopPanel.Visible := True;

 // AktifPasifTopPanel.EditValue := '1';

(*
  KurumTipTopPanel.TableName := 'KURUMLAR_TNM';
  KurumTipTopPanel.DisplayField := 'tanimi';
  KurumTipTopPanel.EditValue := 'KurumKod';
  KurumTipTopPanel.Conn := Datalar.ADOConnection2;
  *)
  KurumTipTopPanel.Filter := '';

  Liste.DataController.DataSource := DataSource;

  txtDonemTopPanel.Yil := copy(FormatDateTime('YYYYMMDD', date()),1,4);
  d := copy(FormatDateTime('YYYYMMDD', date()),5,2);
  txtDonemTopPanel.EditValue := copy(FormatDateTime('YYYYMMDD', date()),5,2);

 // txtay.ItemIndex :=  strtoint(copy(tarihal(date()),5,2))-1;

  ay1 := txtDonemTopPanel.getValueIlkTarih; //tarihal(ayaditoay(txtAy.Text));
  ay2 := txtDonemTopPanel.getValueSonTarih; //tarihal(ayliktarih2(txtAy.Text));
  SayfaCaption('','','','','');

end;

procedure TfrmHastaListeD.H1Click(Sender: TObject);
var
  sql : string;
  ado,ado0,ado1,ado2,ado3,ado4,ado5,ado6,ado7,ado8,ado9,ado10,ado11,ado12 : TADOQuery;
  m : string;
  topluset : TDataSetKadir;
begin

   case TMenuItem(sender).Tag of
    10 : m := 'E';
    11 : m := 'H';
   end;

   if TMenuItem(sender).Tag in [12]
   then begin
    topluset.Dataset1 := cxGrid2.Dataset;
    PrintYap('203T','Hasta Tetkik Takip Hepatit Toplu',inttostr(TagfrmHastaListe),topluset);
   end
   else begin

    DurumGoster(True);
    try
    ado := TADOQuery.Create(nil);
    sql := 'exec  sp_HastaTetkikTakipPIVOTToplu @dosyaNO = '''' , @yil = ' + QuotedStr(ay1) +
                  ',@marker = ' + QuotedStr(m) + ',@f= -1 , @sirketKod = ' + QuotedStr(datalar.AktifSirket) +
                  ',@seans = ' + QuotedStr(txtSeansTopPanel.text);
    datalar.QuerySelect(ado,sql);

    topluset.Dataset0 := ado;
    PrintYap('205','Toplu Tetkik Takip',inttostr(TagfrmHastaListe),topluset);
    finally
      DurumGoster(False);
      ado.Free;
    end;

   end;


end;

function TfrmHastaListeD.Init(Sender: TObject): Boolean;
var
  seans : string;
begin
   TapPanelElemanVisible(True,false,false,false,True,false,True,false,False,True,False,True,False);

   AktifPasifTopPanel.EditValue := '1';
   KurumTipTopPanel.EditValue := '1000';

   try
     seans := SaatRangeToSeans(FormatDateTime('hh:nn',now()));
   except
     seans := '';
   end;

   if seans <> ''
   then begin
     ChangeButtonListClick := True;
     txtSeansTopPanel.EditValue := seans;
   end;


   Result := True;
end;

procedure TfrmHastaListeD.btnAraClick(Sender: TObject);
var
  t : string;
  List : TStringList;
begin



end;

procedure TfrmHastaListeD.btnGuncelleClick(Sender: TObject);
begin
  (*
  if mrYes = ShowMessageSkin('Satýr Silmek Ýstediðinize Eminmisiniz ?','','','msg')
  then begin
     ado_BransKodlari.Delete;
  end;
         *)

end;

procedure TfrmHastaListeD.ado_BransKodlariAfterOpen(DataSet: TDataSet);
begin
 // panel1.Caption := 'Listelenen Hasta Sayýsý : ' + inttostr(ado_BransKodlari.RecordCount);
end;

procedure TfrmHastaListeD.ado_BransKodlariAfterPost(DataSet: TDataSet);
begin

//   gridBransKodlari.Options := [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goEditing , goRowSelect];


end;

procedure TfrmHastaListeD.ado_BransKodlariAfterScroll(DataSet: TDataSet);
begin
(*
  datalar.Bilgi.dosyaNo := ado_BransKodlari.FieldByName('dosyaNo').AsString;
  datalar.Bilgi.gelisNo := ado_BransKodlari.FieldByName('gelisNo').AsString;
  datalar.Bilgi.Doktor := ado_BransKodlari.FieldByName('doktor').AsString;
  datalar.Bilgi.TakipNo := ado_BransKodlari.FieldByName('TakýpNo').AsString;
  datalar.Bilgi.Adi := ado_BransKodlari.FieldByName('HASTAADI').AsString + ' ' +
                           ado_BransKodlari.FieldByName('HASTASOYADI').AsString;
  datalar.Bilgi.tckimlikNo := ado_BransKodlari.FieldByName('TCKIMLIKNO').AsString;
  datalar.Bilgi.ProvizyonTarihi := FormattedTarih(ado_BransKodlari.FieldByName('BHDAT').AsString);




 (*
  HastaBilgileri.TcKimlikNo := ado_BransKodlari.FieldByName('TCKIMLIKNO').AsString;

  HastaBilgileri.Adi := ado_BransKodlari.FieldByName('HASTAADI').AsString + ' ' +
                           ado_BransKodlari.FieldByName('HASTASOYADI').AsString;

  HastaBilgileri.dosyaNo := ado_BransKodlari.FieldByName('dosyaNo').AsString;
  datalar._takip_ := ado_BransKodlari.FieldByName('TakýpNo').AsString;


  datalar.Bilgi.dosyaNo := ado_BransKodlari.FieldByName('dosyaNo').AsString;
  datalar.Bilgi.gelisNo := ado_BransKodlari.FieldByName('gelisNo').AsString;
  datalar.Bilgi.Doktor := ado_BransKodlari.FieldByName('doktor').AsString;
  datalar.Bilgi.TakipNo := ado_BransKodlari.FieldByName('TakýpNo').AsString;
  datalar.Bilgi.Adi := ado_BransKodlari.FieldByName('HASTAADI').AsString + ' ' +
                           ado_BransKodlari.FieldByName('HASTASOYADI').AsString;
  datalar.Bilgi.tckimlikNo := ado_BransKodlari.FieldByName('TCKIMLIKNO').AsString;
      *)

(*
  if (ado_BransKodlari.FieldByName('tahlil').AsString = '1')
      or
     (ado_BransKodlari.FieldByName('ozelDurum').AsString = '1')
     or
     (ado_BransKodlari.FieldByName('seansKontrol').AsString = '1')
     Then Begin
       uyari.Visible := True;
       txtUyariMesaj.Lines.Add(ado_BransKodlari.FieldByName('diger').AsString);
       if ado_BransKodlari.FieldByName('tahlil').AsString = '1'
       Then txtUyariMesaj.Lines.Add('Sonucu Girilmemiþ Tetkik Bilgisi Bulunmaktadýr');
       if ado_BransKodlari.FieldByName('Kilo').AsString = '1'
       Then txtUyariMesaj.Lines.Add('Giriþ Çýkýþ Kilo Bilgisi Girilmemiþ Seans Bulunmaktadýr');
       if ado_BransKodlari.FieldByName('seansKontrol').AsString = '1'
       Then txtUyariMesaj.Lines.Add('Rapora Göre haftalýk eksik yada sebeb belirtilmeden girilmemiþ Seans bulunmaktadýr');
     End
     Else
     begin
      txtUyariMesaj.Lines.Clear;
      uyari.Visible := False;
     end;
     *)
end;

procedure TfrmHastaListeD.ListeCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  (*
  if ACellViewInfo.Item.Index = 6
  Then Begin
    cxGrid2.Hint := ado_BransKodlari.FieldByName('diger').AsString;
    cxGrid2.ShowHint := True;
  End
  else
  if (ACellViewInfo.Item.Index = 11) and (ado_BransKodlari.FieldByName('TakipProvizyonTarihiKontrol').AsString = 'H')
  Then Begin
    cxGrid2.Hint := 'Takibin Provizyon Tarihi ile ilk seans tarihi uyuþmuyor';
    cxGrid2.ShowHint := True;
  End
  else
  begin
    cxGrid2.Hint := '';
    cxGrid2.ShowHint := false;
  end;
      *)

end;

procedure TfrmHastaListeD.ListeDataControllerFilterRecord(
  ADataController: TcxCustomDataController; ARecordIndex: Integer;
  var Accept: Boolean);
begin

 //  panel1.Caption := 'Kayýt Sayýsý : '  + inttostr(liste.DataController.Summary.FooterSummaryValues[0]);

end;

procedure TfrmHastaListeD.ListeDblClick(Sender: TObject);
var
 Form : TGirisForm;
begin
 // datalar.Bilgi.dosyaNo := ado_BransKodlari.FieldByName('dosyaNo').AsString;
//  FormINIT(TagfrmHastaKart,AnaForm,ado_BransKodlari.FieldByName('dosyaNo').AsString);
 if FindTab(AnaForm.sayfalar,TagfrmHastaKart)
 Then begin
   Form := TGirisForm(FormClassType(TagfrmHastaKart));
   TGirisForm(FormClassType(TagfrmHastaKart))._dosyaNO_ := _Dataset.FieldByName('dosyaNo').AsString;
   TGirisForm(FormClassType(TagfrmHastaKart))._TC_ := '';
   TGirisForm(FormClassType(TagfrmHastaKart)).Init(Form);
 end
 Else begin
  Form := FormINIT(TagfrmHastaKart,self,_Dataset.FieldByName('dosyaNo').AsString,NewTab(AnaForm.sayfalar,TagfrmHastaKart),ikEvet,'Giriþ');
  if Form <> nil then Form.show;
 end;
  (*


   if UserRight('Hasta Kartý', 'Giriþ') = False
   then begin
       ShowMessageSkin('Bu Ýþlem Ýçin Yetkiniz Bulunmamaktadýr !','','','info');
       exit;
   end;

    try

           if datalar.HkA = 0
           Then Begin
            frmHastaKarti := TfrmHastaKarti.Create(self);
          //  GorselAyar(frmHastaKarti,datalar.global_img_list4);
            frmHastaKarti.Top := 2;
            frmHastaKarti.Left := 2 + frmHastaListe.Width + 5;
           End;

           frmHastaKarti.Combo;
           frmHastaKarti.ilCombo;
           frmHastaKarti.yakinlikCombo;
           frmHastaKarti.KartGetir(ado_BransKodlari.FieldByName('dosyaNo').AsString);
           frmHastaKarti.Gelisler(ado_BransKodlari.FieldByName('dosyaNo').AsString);
           frmHastaKarti.Durum(1);
           frmHastaKarti.btnGuncelle.Enabled := True;
          // Disabled(frmHastaKarti);
           frmHastaKarti.Disable;
    except
    end;

             *)

end;

procedure TfrmHastaListeD.ListeFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
var
  Hadi,HSadi,HTc : string;
  index : integer;
  g : TGraphic;
begin
  inherited;

   g := TJpegimage.Create;

   try
    if _Dataset.FieldByName('foto').AsVariant <> Null
    Then begin
      g.Assign(_Dataset.FieldByName('foto'));
      _foto_ := TcxImage.Create(self);
      _foto_.Visible := False;
      _foto_.Picture.Assign(g);
    end;

   finally
     g.Free;
   end;

  //index := AFocusedRecord.Index;
  Hadi := _Dataset.FieldByName('HASTAADI').AsString; //Liste.DataController.GetValue(index,HastaAdi.Index);
  HSadi := _Dataset.FieldByName('HASTASOYADI').AsString;//Liste.DataController.GetValue(index,HastaSoyadi.Index);
  HTc := _Dataset.FieldByName('TCKIMLIKNO').AsString;//Liste.DataController.GetValue(index,TC.Index);
  HastaBilgiRecordSet(Hadi,HSadi,HTc,'');

end;

procedure TfrmHastaListeD.ListeGetCellHeight(Sender: TcxCustomGridTableView;
  ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
  ACellViewInfo: TcxGridTableDataCellViewInfo; var AHeight: Integer);
begin
  inherited;

  if ACellViewInfo.Properties.ClassType = TcxImageProperties
  then begin
    AHeight := 48;

  end;

end;

procedure TfrmHastaListeD.N1Click(Sender: TObject);
begin
  donemYil := trim(stringReplace(TMenuItem(sender).Caption,'&','',[rfReplaceAll]));
  frmHastaListe.Caption := 'Hasta Listesi [ ' + donemYil + ' ]';
  Bilgiler;
end;

procedure TfrmHastaListeD.popupYilPopup(Sender: TObject);
var
  I ,yil : integer;
  item : TMenuItem;
begin
  yil := strtoint(copy(datetostr(date),7,4))+1;
//--  popupYil.Items.Clear;
  for I := 1 to 5 do
  begin
   yil := yil - 1;
   if popupYil.items.Find(inttostr(yil)) = nil
   Then Begin
     item := TMenuItem.Create(self);
     item.Caption := inttostr(yil);
    // item.Name := protokol + '-' + hasta;
     item.onClick := N1.onClick;
     popupYil.Items.Insert(popupYil.Items.Count  , item);
   End;
  end;
end;

procedure TfrmHastaListeD.SeansKart1Click(Sender: TObject);
begin

   (*
   if UserRight('SEANS iÞLEMLERÝ', 'Ýzle') = False
   then begin
       ShowMessageSkin('Bu Ýþlem Ýçin Yetkiniz Bulunmamaktadýr !','','','info');
       exit;
   end;

    Application.CreateForm(TfrmSeanslar, frmSeanslar);
    GorselAyar(frmSeanslar,datalar.global_img_list4);
    //frmSeanslar.HastaBil(txtDosyaNo.Text , gridGelisler.Cells[1,gridgelisler.Row] , txtHastaAdi.text+' '+txtSoyadi.text , gridGelisler.Cells[3,gridgelisler.Row] ,gridGelisler.Cells[6,gridgelisler.Row],txtMakinaNo.text);
    frmSeanslar.SeansGetir(ado_BransKodlari.fieldbyname('dosyaNo').AsString , ado_BransKodlari.fieldbyname('gelisno').AsString);
    frmSeanslar.ShowModal;
    frmSeanslar.Release;
    frmSeanslar := nil;
             *)

end;

procedure TfrmHastaListeD.edaviKart1Click(Sender: TObject);
begin
  (*
   if UserRight('Hasta Kartý', 'Tedavi Kartý') = False
   then begin
       ShowMessageSkin('Bu Ýþlem Ýçin Yetkiniz Bulunmamaktadýr !','','','info');
       exit;
   end;

       Application.CreateForm(TfrmTedaviBilgisi, frmTedaviBilgisi);
       frmTedaviBilgisi.TedaviFormDosyaNo := ado_BransKodlari.fieldbyname('dosyaNo').AsString;
       frmTedaviBilgisi.TedaviFormGelisNo := ado_BransKodlari.fieldbyname('gelisNo').AsString;

       GorselAyar(frmTedaviBilgisi,datalar.global_img_list4);
       frmTedaviBilgisi.TedaviBilgi(ado_BransKodlari.fieldbyname('gelisNo').AsString,ado_BransKodlari.fieldbyname('dosyaNo').AsString
                                      ,datetostr(kadir.tarihyap(ado_BransKodlari.fieldbyname('BHDAT').AsString)),'',ado_BransKodlari.fieldbyname('HASTAADI').AsString,
                                       ado_BransKodlari.fieldbyname('HASTASOYADI').AsString);
       frmTedaviBilgisi.ShowModal;
       *)
end;

procedure TfrmHastaListeD.Epikriz1Click(Sender: TObject);
begin
   EpikrizYaz(cxGrid2.Dataset.fieldbyname('dosyaNo').AsString,cxGrid2.Dataset.fieldbyname('gelisNo').AsString,false);
end;

procedure TfrmHastaListeD.SeansTahakkuk1Click(Sender: TObject);
begin
(*
  DatasetiDoldur(ado_BransKodlari.fieldbyname('TakýpNo').AsString,
                 ado_BransKodlari.fieldbyname('TEDAVITURU').AsString,
                 ado_BransKodlari.fieldbyname('TakýpNo').AsString);

  frmRapor.topluset.Dataset8 := KurumBilgi;

  frmRapor.raporData1(frmRapor.topluset ,'035','\SeansTahakkuk');
  frmRapor.ShowModal;
  *)
end;

procedure TfrmHastaListeD.TopPanelPropertiesChange(Sender: TObject);
begin
  inherited;
  ay1 := txtDonemTopPanel.getValueIlkTarih; //tarihal(ayaditoay(txtAy.Text));
  ay2 := txtDonemTopPanel.getValueSonTarih; //tarihal(ayliktarih2(txtAy.Text));
//  Bilgiler;
end;

procedure TfrmHastaListeD.txtayPropertiesChange(Sender: TObject);
begin
    Bilgiler;
end;

end.
