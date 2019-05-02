unit HastaKart;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,pngImage,
  cxContainer, cxEdit, Menus, StdCtrls, cxButtons, cxGroupBox, DB, ADODB,
  cxTextEdit, cxMaskEdit, cxButtonEdit, cxDBEdit,
  Data_Modul,strUtils,kadirType,KadirLabel,Kadir,KadirMedula3,
  GirisUnit, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,jpeg,
  dxSkinsCore, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinsDefaultPainters, cxRadioGroup, cxDropDownEdit,
  cxCalendar, cxImageComboBox, cxPCdxBarPopupMenu, cxPC, cxCheckGroup, cxImage,
  cxGridBandedTableView, cxGridDBBandedTableView, cxSplitter, cxCheckBox,
  cxDBLookupComboBox, cxCurrencyEdit, cxVGrid, cxDBVGrid, cxInplaceContainer,
  cxLabel, Vcl.Buttons, Vcl.Grids, AdvObj, BaseGrid, AdvGrid, Vcl.ExtCtrls,
  Vcl.ComCtrls, dxLayoutContainer, dxLayoutControl, cxMemo,GetFormClass,
  dxSkinsdxStatusBarPainter, dxStatusBar, cxCheckListBox, dxSkinBlack,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinValentine, dxSkinXmas2008Blue, Vcl.ActnList, Soap.InvokeRegistry,
  Soap.Rio, Soap.SOAPHTTPClient;



type
  TfrmHastaKart = class(TGirisForm)
    CINSIYETI: TcxImageComboKadir;
    MEDENI: TcxImageComboKadir;
    DURUM: TcxImageComboKadir;
    VatandasTip: TcxImageComboKadir;
    seansGunleri: TcxCheckGroup;
    DOGUMTARIHI: TcxDateEditKadir;
    cxFotoPanel: TcxGroupBox;
    Foto: TcxImage;
    cxFotoEkleButton: TcxButton;
    dosyaNo: TcxButtonEditKadir;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    KANGRUBU: TcxImageComboBox;
    txtAktif: TcxImageComboBox;
    ListeAc3: TListeAc;
    txtSeansSikayet: TcxCheckGroup;
    PopupMenu2: TPopupMenu;
    cxStyleRepository2: TcxStyleRepository;
    cxStyle3: TcxStyle;
    Meslekler: TListeAc;
    MESLEK: TcxButtonEditKadir;
    ActionList1: TActionList;
    PersonelKaydet: TAction;
    YeniMuayene: TAction;
    Splitter_Muayene: TSplitter;
    cxpnlHastaGelisler: TcxGroupBox;
    cxGridGelis: TcxGridKadir;
    GridGelisler: TcxGridDBBandedTableView;
    GridGelislerTakpNo: TcxGridDBBandedColumn;
    GridGelislerBasvuruNo: TcxGridDBBandedColumn;
    GridGelislerdosyaNo: TcxGridDBBandedColumn;
    GridGelislergelisNo: TcxGridDBBandedColumn;
    GridGelislerBHDAT: TcxGridDBBandedColumn;
    GridGelislerdoktor: TcxGridDBBandedColumn;
    GridGelislerSERVIS: TcxGridDBBandedColumn;
    GridGelislerTEDAVITURU: TcxGridDBBandedColumn;
    GridGelislerKullanici: TcxGridDBBandedColumn;
    GridGelislerilkTakipNo: TcxGridDBBandedColumn;
    GridGelislerSIRANO: TcxGridDBBandedColumn;
    GridGelisleryupass: TcxGridDBBandedColumn;
    GridGelisleryardimHakki: TcxGridDBBandedColumn;
    GridGelislerSYSTakipNo: TcxGridDBBandedColumn;
    cxGridGelisLevel1: TcxGridLevel;
    PopupMenu1: TPopupMenu;
    Kapat1: TMenuItem;
    N1: TMenuItem;
    SmsGnder1: TMenuItem;
    AKart1: TMenuItem;
    T2: TMenuItem;
    YatBilgileri1: TMenuItem;
    Epikriz1: TMenuItem;
    R1: TMenuItem;
    N3: TMenuItem;
    HastaRaporlar1: TMenuItem;
    N2: TMenuItem;
    SeansKart1: TMenuItem;
    T1: TMenuItem;
    T3: TMenuItem;
    lemler1: TMenuItem;
    MenucxYeni: TMenuItem;
    MenucxKaydet: TMenuItem;
    MenucxIptal: TMenuItem;
    akipBul1: TMenuItem;
    akipBilgisiOku1: TMenuItem;
    akipSil1: TMenuItem;
    mHizmetleriMedulayaKAydet1: TMenuItem;
    akipLA1: TMenuItem;
    GeliA1: TMenuItem;
    G1: TMenuItem;
    G2: TMenuItem;
    txtBobrekHastaligi: TcxButtonEdit;
    hastaTip: TcxImageComboBox;
    txtBransKodu: TcxImageComboKadir;
    txtDoktor: TcxImageComboKadir;
    H1: TMenuItem;
    SysTakipNoSGKHizmetSorgula1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure cxKaydetClick(Sender: TObject);override;
    procedure cxButtonCClick(Sender: TObject);
    procedure cxTextEditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxTextEditBKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxEditEnter(Sender: TObject);
    procedure cxEditExit(Sender: TObject);
    procedure seansGunleriPropertiesEditValueChanged(Sender: TObject);
    procedure FotoEkle;
    procedure FotoNewRecord;
    procedure cxButtonEditPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);override;
    procedure TakipAl;
    function TakipSil(TakipNo : string) : string;
    procedure Gelisler(kartNo : string);
    procedure GridGelislerDblClick(Sender: TObject);
    procedure txtTipPropertiesChange(Sender: TObject);
    procedure txtAktifPropertiesChange(Sender: TObject);
    procedure Combo;
    procedure GelisAc;
    procedure GelisSil;
    procedure GelisDuzenle;
    procedure HastaRaporlari;
    procedure HizmetKaydet;
    procedure txtBobrekHastaligiPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure PropertiesEditValueChanged(Sender: TObject);override;
    procedure GridGelislerFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure DOGUMTARIHIPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure ADO_WebServisErisimAfterScroll(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure SirketlerPropertiesChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ButtonClick(Sender: TObject);
  protected
    procedure TopluPasifYap(const bPasif: boolean);
    { Private declarations }
  public
    { Public declarations }
    procedure OrtakEventAta(Sender : TObject);overload;
    procedure OrtakEventAta(Sender : TcxImageComboKadir);overload;

    function Init(Sender: TObject) : Boolean; override;
  end;

const _TableName_ = 'HastaKart';
      formGenislik = 750;
      formYukseklik = 580;
      sqlInsert = 'exec sp_YeniHastaKarti ';//,%s,%s,%s,%s,%s,%s';
      sqlUpdate = 'exec sp_GuncelHastaKarti ';
      sqlDelete = 'delete from HastaKart where dosyaNo = %s';
      FotoTable = 'select * from PersonelFoto where dosyaNo = %s';

var
  frmHastaKart: TfrmHastaKart;
  ord : integer;
  _gez : integer;
  aktifKart : integer = 0;
  kart : sqlType;

implementation
uses AnaUnit, HastaAsiKArti,SMS,Anamnez, TransUtils, MESSAGE;
{$R *.dfm}






procedure TfrmHastaKart.ButtonClick(Sender: TObject);
var
  F : TGirisForm;
  GirisRecord : TGirisFormRecord;
  TopluDataset : TDataSetKadir;
  Ado : TADOQuery;
  sql : string;
begin
  case TcxButtonKadir(sender).Tag of
    550 : TopluPasifYap (True);
    555 : TopluPasifYap (False);
    -50 : begin

         end;
         else
         begin
            F := FormINIT(TcxButtonKadir(sender).Tag,GirisRecord,ikHayir,'');
            if F <> nil then F.ShowModal;
            TcxImageComboKadir(FindComponent('bolum')).Filter := '';
            TcxImageComboKadir(FindComponent('birim')).Filter := '';
         end;
  end;






end;

procedure TfrmHastaKart.SirketlerPropertiesChange(Sender: TObject);
var
  sube : string;
begin
  (*
  if not IsNull (datalar.doktorKodu)
  then
     sube := ' and subeDoktor = ' + QuotedStr(datalar.doktorKodu)
  else
  if not IsNull (datalar.IGU) then
     sube := ' and IGU = ' + QuotedStr(datalar.IGU)
  else
  if not IsNull (datalar.DSPers) then
     sube := ' and DigerSaglikPers = ' + QuotedStr(datalar.DSPers)
  else
    sube := '';
    *)
//  TcxImageComboKadir(FindComponent('Sube')).TableName := 'SIRKET_SUBE_TNM';
//  TcxImageComboKadir(FindComponent('Sube')).Filter := ' SirketKod = ' +
//  QuotedStr(varToStr(TcxImageComboKadir(FindComponent('SirketKod')).EditValue)) + sube;// + ' and (Pasif = 0 or Pasif is Null)';

  (*
  if (TcxImageComboKadir(Sender).name = 'SirketKod') or
     (TcxImageComboKadir(Sender).name = 'sube')
  then
  begin
      TcxImageComboKadir(FindComponent('muayenePeryot')).EditValue :=
      SirketSubeTehlikeSinifi(vartostr(TcxImageComboKadir(FindComponent('SirketKod')).EditValue),
                              vartostr(TcxImageComboKadir(FindComponent('Sube')).EditValue));
  end;

    *)

end;

procedure TfrmHastaKart.ADO_WebServisErisimAfterScroll(DataSet: TDataSet);
var
  ValueCombo,ValueObjeValues : String;
  ValuesCombo : TStringList;
  item : TcxRadioGroupItem;
begin

end;


procedure TfrmHastaKart.HastaRaporlari;
begin
      if dosyaNo.Text = ''
     then exit;
   (*
     HastaBilgileri.TcKimlikNo := txtTcKimlikNo.Text;
     HastaBilgileri.karneNo := txtKarneNo.Text;
     HastaBilgileri.sosyalGuvenlikNo := txtSosyalGuvenlikNo.Text;
     HastaBilgileri.yakinlikKodu := copy(txtYakinlik.Text,1,4);
     HastaBilgileri.sigortaliTuru := copy(txtSigortaliTur.Text,1,1);
     HastaBilgileri.devredilenKurum := trim(copy(txtKurumTipi.Text,1,2));
     HastaBilgileri.provizyonTipi := 'N';
     HastaBilgileri.Adi := txtHastaAdi.Text + ' ' + txtSoyAdi.Text;
     HastaBilgileri.dosyaNo := txtDosyaNo.Text;
     HastaBilgileri.provizyontarihi := frmHastaKarti.gridGelisler.Cells[3,frmHastaKarti.gridGelisler.Row];
     datalar._takip_ := gridGelisler.Cells[2,gridGelisler.Row];
     *)
      if UserRight('Hasta Kartý', 'Rapor') = False
     then begin
         ShowMessageSkin('Bu Ýþlem Ýçin Yetkiniz Bulunmamaktadýr !','','','info');
         exit;
     end;






end;


procedure TfrmHastaKart.HizmetKaydet;
var
  TakipNo,BasvuruNo : string;
  hatali : TStringList;
begin
  DurumGoster();
  try
   takipNo := cxGridGelis.Dataset.FieldByName('TakipNo').AsString;
   BasvuruNo := cxGridGelis.Dataset.FieldByName('basvuruNo').AsString;

   HizmetKayitVeriSeti(takipNo,BasvuruNo, 'D','G');

  finally
    DurumGoster(False);
  end;
end;

procedure TfrmHastaKart.gelisDuzenle;
var
 hata : string;
begin
    datalar.GelisDuzenleRecordK.TedaviYontemi := cxGridGelis.Dataset.FieldByName('diyalizTedaviYontemi').AsString;
    datalar.GelisDuzenleRecordK.TedaviTuru := cxGridGelis.Dataset.FieldByName('TEDAVITURU').AsString;
    datalar.GelisDuzenleRecordK.dosyaNo := dosyaNO.Text;
    datalar.GelisDuzenleRecordK.gelisNo := cxGridGelis.Dataset.FieldByName('gelisNo').AsString;
    datalar.GelisDuzenleRecordK.TakipNo := cxGridGelis.Dataset.FieldByName('TakipNo').AsString;
    datalar.GelisDuzenleRecordK.basvuruNo := cxGridGelis.Dataset.FieldByName('BasvuruNo').AsString;
    datalar.GelisDuzenleRecordK.BransKodu := cxGridGelis.Dataset.FieldByName('SERVIS').AsString;
    datalar.GelisDuzenleRecordK.TaburcuKodu := cxGridGelis.Dataset.FieldByName('Taburcu').AsString;
    datalar.GelisDuzenleRecordK.doktor := cxGridGelis.Dataset.FieldByName('doktor').AsString;
    datalar.GelisDuzenleRecordK.ProtokolNo := cxGridGelis.Dataset.FieldByName('protokolNo').AsString;
    datalar.GelisDuzenleRecordK.Yupass := cxGridGelis.Dataset.FieldByName('Yupass').AsString;
    datalar.GelisDuzenleRecordK.GirisTarihi :=  cxGridGelis.Dataset.FieldByName('Tarih').AsDateTime;
    datalar.GelisDuzenleRecordK.CikisTarih :=  cxGridGelis.Dataset.FieldByName('CikisTarih').AsDateTime;
    datalar.GelisDuzenleRecordK.SIRANO := cxGridGelis.Dataset.FieldByName('SIRANO').AsString;

    if mrYes = ShowPopupForm('Hasta Geliþ Düzenle',hastaGelisDuzenle)
    Then Begin
       if kadir.gelisDuzenle(datalar.GelisDuzenleRecordK,Hata)
       Then begin
        cxGridGelis.Dataset.Requery();
        cxGridGelis.Dataset.Next;
        ShowMessageSkin('Geliþ Bilgisi Düzenlendi','','','info');
       end
       else ShowMessageSkin(Hata,'','','info')
    End;

end;

procedure TfrmHastaKart.gelisSil;
var
  ado : TADOQuery;
  sql : string;
  bSucc: Boolean;
begin
   if _gelisNo_ = '' then exit;


   if UserRight('Muayene Ýþlemleri', 'Sil') = False
   then begin
     ShowMessageSkin('Bu Ýþlem Ýçin Yetkiniz Bulunmamaktadýr !','','','info');
     exit;
   end;


   ado := TADOQuery.Create(nil);
   try
     ado.Connection := datalar.ADOConnection2;
     try
       bSucc := False;
       BeginTrans (ado.Connection);
       try
         sql := 'Delete from Hasta_Gelisler where dosyaNo = ' + QuotedStr (DosyaNo.Text) +
                ' and gelisNo = ' + _gelisNo_;
         datalar.QueryExec(ado, sql);
         bSucc := True;
       finally
         if bSucc then CommitTrans(ado.Connection)
         else RollbackTrans(ado.Connection);

       end;
       cxGridGelis.Dataset.Requery();
       cxGridGelis.Dataset.Next;
    //   Gelisler(DosyaNo.Text);
     except on e : sysUtils.exception do
       begin
        ShowMessageSkin(e.Message,'','','info');
        exit;
       end;
     end;
   finally
     ado.Free;
   end;
end;


procedure TfrmHastaKart.gelisAc;
var
  sql , Gelis , error ,Tarih : string;
  _tarih_ : Tdate;
  ado : TADOQuery;
begin

   if dosyaNo.Text = ''
   then begin
     exit;
   end;

   if TcxCustomEdit(FindComponent('Aktif')).EditValue = '0'
   then exit;


   if UserRight('GELÝÞ ÝÞLEMLERÝ', 'Aç') = False
   then begin
       ShowMessageSkin('Bu Ýþlem Ýçin Yetkiniz Bulunmamaktadýr !','','','info');
       exit;
   end;

   if sureKontrol
   then begin

      if Raporgecerlimi(dosyaNo.Text) = 0
      then begin
         ShowMessageSkin('Dikkat , Rapor Bitiþ Tarihi Dolmuþtur. Yeni Rapor Giriþi Yapmadan Seans Geliþi Açamazsýnýz...!','','','info');
         exit;
      end else
      if Raporgecerlimi(dosyaNo.Text) <> -1
      then begin
          ShowMessageSkin('Dikkat , Rapor Bitiþ Tarihi Dolmak Üzere','Kalan gun :' + floattostr(RaporGecerlimi(dosyaNo.Text)),'','info');

      end;

   end;

    if mrYes = ShowPopupForm('Hasta Geliþ Aç',hastaGelisAc)
    Then Begin
        _Tarih_ := datalar.GelisDuzenleRecordK.GirisTarihi;
    End
    else
     exit;


   sql := 'exec sp_HastaGelisKaydet ' +
          '@dosyaNo = ' + #39 + dosyaNo.Text + #39 + ',' +
          '@gelisNo = 0 ,' +
          '@BHDAT = ' + #39 + tarihal(_Tarih_) + #39 + ',' +
          '@doktor = ' + QuotedStr(datalar.GelisDuzenleRecordK.doktor)+ ',' +
          '@SERVIS = ' + QuotedStr(datalar.GelisDuzenleRecordK.BransKodu) + ',' +
          '@TEDAVITURU = ' + QuotedStr(datalar.GelisDuzenleRecordK.TedaviTuru) + ',' +
          '@Kullanici = ' + #39 + kullanici + #39 + ',' +
          '@diyaliztedaviTipi = ' + QuotedStr(datalar.GelisDuzenleRecordK.TedaviYontemi);

     ado := datalar.QuerySelect(sql);

     gelis := ado.fieldbyname('Gelis').AsString;
     error := ado.fieldbyname('error').AsString;

     if gelis = '-1'
     then begin
        ShowMessageSkin(error,'','','info');
        exit;
     end;

     cxGridGelis.Dataset.Requery();
     cxGridGelis.Dataset.Next;

end;



procedure TfrmHastaKart.OrtakEventAta(Sender : TObject);
begin
  TcxButtonEditKadir(sender).Properties.OnButtonClick := cxButtonEditPropertiesButtonClick;
  TcxButtonEditKadir(sender).OnEnter := cxEditEnter;
  TcxButtonEditKadir(sender).OnExit := cxEditExit;
  TcxButtonEditKadir(sender).OnKeyDown := cxTextEditBKeyDown;
  TcxButtonEditKadir(sender).Properties.OnEditValueChanged := PropertiesEditValueChanged;
end;

procedure TfrmHastaKart.OrtakEventAta(Sender : TcxImageComboKadir);
begin
  TcxImageComboKadir (sender).OnEnter := cxEditEnter;
  TcxImageComboKadir(sender).OnExit := cxEditExit;
  TcxImageComboKadir(sender).OnKeyDown := cxTextEditBKeyDown;
  TcxImageComboKadir(sender).Properties.OnEditValueChanged := PropertiesEditValueChanged;
end;

procedure TfrmHastaKart.Gelisler(kartNo : string);
var
  sql : string;
begin
   txtDoktor.Filter := '  sirketKod = ' + QuotedStr(varToStr(TcxImageComboKadir(FindComponent('sirketKod')).EditValue));
   txtBransKodu.Filter := '';
   TcxImageComboBoxProperties(GridGelislerSERVIS.Properties).Items := txtBransKodu.Properties.Items;
   TcxImageComboBoxProperties(GridGelislerdoktor.Properties).Items := txtDoktor.Properties.Items;

   sql := 'exec sp_HastaGelisleri ' + QuotedStr(kartNo);
   datalar.QuerySelect(cxGridGelis.Dataset,sql);

   TcxImageComboKadir(FindComponent('sirketKod')).Enabled := cxGridGelis.Dataset.Eof;
  //HastaGelis(kartNo,cxGridGelis.Dataset);
end;



procedure TfrmHastaKart.TakipAl;
begin
     if cxGridGelis.Dataset.FieldByName('TakipNo').AsString <> ''
     Then Begin
          ShowMessageskin('Mevcut Takip Numarasý Var , Takip Alýnamaz','','','info');
          exit;
     End;

     if (copy(TcxCustomEdit(FindComponent('KurumTip')).EditingValue,1,1) = '8')
     then begin
         exit;

     end else
     begin


     end;

end;


procedure TfrmHastaKart.txtAktifPropertiesChange(Sender: TObject);
var
   sql , _aktif , _pasifTarih : string;
begin
   if DosyaNo.Text = '' then exit;

   if aktifKart = 0
   then begin
       if txtAktif.ItemIndex in [1,2]
       then begin
         _aktif := inttostr(txtAktif.ItemIndex);
         _pasifTarih := '';

       end
       else
       if txtAktif.ItemIndex = 0
       then begin
         _aktif := '0';
         _pasifTarih := tarihal(date());

       end
       else begin
         _pasifTarih := tarihal(date());
         _aktif := '2';
       end;
       sql := 'update HastaKart set aktif = ' + #39 + _aktif + #39 + ', pasifTarih = ' + #39 + _pasifTarih + #39 +
              ' where dosyaNo = ' + #39 + DosyaNo.Text + #39;
       datalar.QueryExec(datalar.ADO_SQL1,sql);


       (*
       btnKaydet.Enabled := false;
       btnGuncelle.Enabled := true;
       btnAra.Enabled := True;
       btnVazgec.Enabled := True;
       Disable;*)

       ord := 2;
       aktifKart := 1;
       txtAktif.Enabled := false;
   end;

end;

procedure TfrmHastaKart.txtBobrekHastaligiPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  List : ArrayListeSecimler;
begin
    List := ListeAc3.ListeGetir;
    if length(List) > 0
    Then BEgin
       TcxButtonEdit(sender).Text := List[0].kolon1 + '-' + List[0].kolon2;
    End;
end;

procedure TfrmHastaKart.PropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;

  if (TcxImageComboKadir(Sender).name = 'SirketKod') or
     (TcxImageComboKadir(Sender).name = 'Sube')
  then
  begin
      TcxImageComboKadir(FindComponent('muayenePeryot')).EditValue :=
      SirketSubeTehlikeSinifi(vartostr(TcxImageComboKadir(FindComponent('SirketKod')).EditValue),
                              vartostr(TcxImageComboKadir(FindComponent('Sube')).EditValue));
  end;

  if TcxImageComboKadir(sender).Name = 'EV_SEHIR'
  then begin
    TcxImageComboKadir(FindComponent('EV_ILCE')).TableName := 'SKRS_ILCE_KODLARI';
    TcxImageComboKadir(FindComponent('EV_ILCE')).Filter := 'ILKODU = ' + QuotedStr(TcxImageComboKadir(FindComponent('EV_SEHIR')).EditingValue);
    if FindComponent('EV_ILCE') <> nil Then TcxImageComboKadir(FindComponent('EV_ILCE')).EditValue := Null;
  end
  else
  if TcxImageComboKadir(sender).Name = 'EV_ILCE'
  then begin
    TcxImageComboKadir(FindComponent('EV_BUCAK')).TableName := 'SKRS_BUCAK_KODLARI';
    TcxImageComboKadir(FindComponent('EV_BUCAK')).Filter := 'ILCEKODU = ' + QuotedStr(VarToStr(TcxImageComboKadir(FindComponent('EV_ILCE')).EditingValue));
    if FindComponent('EV_BUCAK') <> nil Then TcxImageComboKadir(FindComponent('EV_BUCAK')).EditValue := Null;
  end
  else
  if TcxImageComboKadir(sender).Name = 'EV_BUCAK'
  then begin
    TcxImageComboKadir(FindComponent('EV_KOY')).TableName := 'SKRS_KOY_KODLARI';
    TcxImageComboKadir(FindComponent('EV_KOY')).Filter := 'BUCAKKODU = ' + QuotedStr(VarToStr(TcxImageComboKadir(FindComponent('EV_BUCAK')).EditingValue));
    if FindComponent('EV_KOY') <> nil Then TcxImageComboKadir(FindComponent('EV_KOY')).EditValue := Null;
  end
  else
  if TcxImageComboKadir(sender).Name = 'EV_KOY'
  then begin
    TcxImageComboKadir(FindComponent('EV_MAHALLE')).TableName := 'SKRS_MAHALLE_KODLARI';
    TcxImageComboKadir(FindComponent('EV_MAHALLE')).Filter := 'KOYKODU = ' +
    QuotedStr(VarToStr(TcxImageComboKadir(FindComponent('EV_KOY')).EditingValue));
    if FindComponent('EV_MAHALLE') <> nil Then TcxImageComboKadir(FindComponent('EV_MAHALLE')).EditValue := Null;
  end ;
 (*
  if TcxImageComboKadir(sender).Name = 'SirketKodNew'
  then begin
    datalar.AktifSirket := TcxImageComboKadir(sender).EditValue;
    datalar.AktifSirketAdi := TcxImageComboKadir(sender).EditingText;
    sirketKod.text := datalar.AktifSirket;
  end;
  *)
end;

procedure TfrmHastaKart.txtTipPropertiesChange(Sender: TObject);
begin
  inherited;
      (*
      if txtTip.ItemIndex = 0
      then begin
        sheetSeans.TabVisible := True;
        sheetPeriton.TabVisible := false;
        pnlH.Visible := True;
        pnlP.Visible := False;
      end
      else
      begin
        sheetSeans.TabVisible := False;
        sheetPeriton.TabVisible := True;
        pnlH.Visible := False;
        pnlP.Visible := True;
      end; *)
end;

function TfrmHastaKart.TakipSil;
var
  sql : string;
begin
          DurumGoster();
          Application.ProcessMessages;


          TakipSil_3(_TakipNo_);

          cxGridGelis.Dataset.Requery();
          cxGridGelis.Dataset.Next;
          DurumGoster(False);
end;

procedure TfrmHastaKart.FotoNewRecord;
var
 sql,dosyaNo : string;
 ado : TADOQuery;
begin
  dosyaNo := TcxButtonEditKadir(FindComponent('dosyaNo')).Text;
  ado := TADOQuery.Create(nil);
  try
    sql := 'if not exists(select dosyaNo from PersonelFoto where dosyaNo = ' + QuotedStr(dosyaNo) + ')' +
           ' insert into PersonelFoto (dosyaNo,foto,tip) ' +
           ' values (' + QuotedStr(dosyaNo) + ',NULL,''H'')';
    datalar.QueryExec(ado,sql);
  finally
    ado.Free;
  end;

end;

procedure TfrmHastaKart.FotoEkle;
var
 Fo : TFileOpenDialog;
 filename,dosyaNo : string;
 jp : TJPEGImage;
begin
  dosyaNo := TcxButtonEditKadir(FindComponent('dosyaNo')).Text;
  datalar.ADO_Foto.SQL.Text := Format(FotoTable,[#39+dosyaNo+#39]);
  datalar.ADO_FOTO.Open;
  datalar.ADO_FOTO.Edit;

  Fo := TFileOpenDialog.Create(nil);
  try
    if not fo.Execute then Exit;
    filename := fo.FileName;
  finally
    fo.Free;
  end;
  Foto.Picture.LoadFromFile(filename);

  jp := TJpegimage.Create;
  try
    jp.Assign(FOTO.Picture);
    datalar.ADO_FOTO.FieldByName('Foto').Assign(jp);
    datalar.ADO_FOTO.Post;
  finally
    jp.Free;
  end;
end;


procedure TfrmHastaKart.cxButtonEditPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
 g : TGraphic;
  List : ArrayListeSecimler;
begin

  if TcxButtonEditKadir(sender).name = 'MESLEK'
  then begin
    List := Meslekler.ListeGetir;
    TcxTextEditKadir(FindComponent('MESLEK')).EditValue := List[0].kolon1;
    TcxTextEditKadir(FindComponent('MESLEKADI')).EditValue := List[0].kolon2;
    exit;
  end;

  TListeAc(FindComponent('ListdosyaNo')).Where := ' SirketKod = ' + QuotedStr(datalar.AktifSirket);
                                                 //  ' and Sube in (select datavalue from dbo.strtotable(' + QuotedStr(datalar.AktifSube) + ','',''))';
  inherited;

  if length(datalar.ButtonEditSecimlist) > 0 then
  begin
    enabled;
   TcxImageComboKadir(FindComponent('sirketKod')).Enabled := cxGridGelis.Dataset.Eof;

    FormInputZorunluKontrolPaint(self,$00FCDDD1);
  end;

  if TComponent(Sender).ClassName = 'TcxImageComboKadir' then
  Begin
    case TcxImageComboKadir(Sender).Tag of
    1 : begin
            TcxImageComboKadir(FindComponent('EV_ILCE')).Filter := 'ILKODU = ' + QuotedStr(varToStr(TcxImageComboKadir(FindComponent('EV_SEHIR')).EditingValue));
            TcxImageComboKadir(FindComponent('EV_BUCAK')).Filter := 'ILCEKODU = ' + QuotedStr(varToStr(TcxImageComboKadir(FindComponent('EV_ILCE')).EditingValue));
            TcxImageComboKadir(FindComponent('EV_KOY')).Filter := 'BUCAKKODU = ' + QuotedStr(varToStr(TcxImageComboKadir(FindComponent('EV_BUCAK')).EditingValue));
            TcxImageComboKadir(FindComponent('EV_MAHALLE')).Filter := 'KOYKODU = ' + QuotedStr(varToStr(TcxImageComboKadir(FindComponent('EV_KOY')).EditingValue));
        end;
    end;

  End;


  case TcxButtonEditKadir(sender).tag of
   1 : begin  //dosyaNo buttonedit
        try
        //    TcxImageComboKadir(FindComponent('Sirketlerx')).EditValue := TcxLabel(FindComponent('LabelSirketKod')).Caption;

           _dosyaNo_ := TcxButtonEditKadir(sender).Text;
           _Tc_ := TcxTextEditKadir(FindComponent('TcKimlikNo')).Text;
           _HastaAdSoyad_ := TcxTextEditKadir(FindComponent('HASTAADI')).Text +
                             ' ' + TcxTextEditKadir(FindComponent('HASTASOYADI')).Text;
           HastaBilgiRecordSet(TcxTextEditKadir(FindComponent('HASTAADI')).Text,
                               TcxTextEditKadir(FindComponent('HASTASOYADI')).Text,
                               _Tc_,'');

           datalar.ADO_Foto.SQL.Text := Format(FotoTable,[#39+_dosyaNo_+#39]);
           datalar.ADO_FOTO.Open;

           g := TJpegimage.Create;
           try
            if datalar.ADO_FOTO.FieldByName('foto').AsVariant <> Null
            Then begin
              g.Assign(datalar.ADO_FOTO.FieldByName('foto'));
              FOTO.Picture.Assign(g);
            end
            else
            FOTO.Picture.Assign(nil);
           finally
             g.Free;
           end;
           Gelisler(TcxButtonEditKadir(sender).Text);
      //     _gelisNO_ := ADO_Gelisler.FieldByName('gelisNO').AsString;


        except

        end;

       end;


   end;
end;

procedure TfrmHastaKart.cxEditEnter(Sender: TObject);
begin
  inherited;
  //

end;

procedure TfrmHastaKart.cxEditExit(Sender: TObject);
begin
  inherited;
  //

end;

procedure TfrmHastaKart.GridGelislerDblClick(Sender: TObject);
begin
  inherited;
//    SeansKart1.Click;
end;

procedure TfrmHastaKart.GridGelislerFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;
  if cxGridGelis.Dataset.Active
  Then begin
    _gelisNo_ := cxGridGelis.Dataset.FieldByName('gelisNo').AsString;
    if _gelisNO_ <> ''
    then  begin
      _gelisNo_ := ifThen(_gelisNo_ = '','0',_gelisNo_);
      _provizyonTarihi_ := cxGridGelis.Dataset.FieldByName('Tarih').AsString;
      _Doktor_ := cxGridGelis.Dataset.FieldByName('doktor').AsString;
      datalar.Bilgi.gelisNo := cxGridGelis.Dataset.FieldByName('gelisNo').AsString;
      datalar.Bilgi.Doktor := cxGridGelis.Dataset.FieldByName('doktor').AsString;
      datalar.Bilgi.ProvizyonTarihi := cxGridGelis.Dataset.FieldByName('Tarih').AsString;
      datalar.Bilgi.yas := cxGridGelis.Dataset.FieldByName('yas').AsString;
      _HastaAdSoyad_ := TcxTextEditKadir(FindComponent('HASTAADI')).Text +
                             ' ' + TcxTextEditKadir(FindComponent('HASTASOYADI')).Text + ' ('+datalar.Bilgi.yas +')';
    end;



  end;
end;

procedure TfrmHastaKart.cxTextEditBKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   inherited;
   cxButtonEditPropertiesButtonClick(TcxButtonEditKadir(sender),-1);
end;

procedure TfrmHastaKart.cxTextEditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   inherited;
  // if key  then
  Gelisler(TcxButtonEditKadir(sender).Text);
end;



procedure TfrmHastaKart.DOGUMTARIHIPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
//
end;

procedure TfrmHastaKart.Combo;
begin
  (*
   datalar.ADO_SQL.Close;
   DATALAR.ADO_SQL.SQL.Clear;

   sql := 'select SLT from Parametreler where SLK = ''40'' and SLB = ''KH''';
   ComboDoldur(datalar.ADO_SQL,sql,txtKomorbitHastalik);
   DATALAR.ADO_SQL.SQL.Clear;

 //  ComboDoldurName('',txtBobrekHastaligi);
   ComboDoldurName('',txtKomorbitHastalik);
   ComboDoldurName('',txtTedaviSekli);
   ComboDoldurName('',txtDializorCinsi);
   ComboDoldurName('',txtDializorTipi);
   ComboDoldurName('',txtYA);
   ComboDoldurName('',txtSonDurum);
   ComboDoldurName('',txtDializat);
   ComboDoldurName('',txtDamarGiris);
   ComboDoldurName('',txtHipar);
   ComboDoldurName('',txtDegisimiYapan);
   ComboDoldurName('',txtTunelYonu);
   ComboDoldurName('',txtKataterYY);
   ComboDoldurName('',txtGS);
   ComboDoldurName('',txtKT);
    *)
end;


function TfrmHastaKart.Init(Sender : TObject) : Boolean;
var
  key : word;
  sql : string;
  ado : TADOQuery;
begin

  Result := True;
  if not inherited Init(Sender) then exit;

  if _TC_ <> '' then
  begin
    ado := TADOQuery.Create(nil);
    try
      //t2x := ayliktarih(date,t1);
      sql := 'select top 1 dosyaNo from HastaKart ' +
             ' where TCKIMLIKNO = ' + QuotedStr(_TC_) +
             ' and Aktif = 1 ' +
             ' order by dosyaNo';
      datalar.QuerySelect(ado,sql);
      if not ado.Eof
      then
      _dosyaNo_ := ado.Fields[0].AsString
      else begin
        ShowMessageSkin('TC Kimlik No Sistemde Bulunamadý','','','info');
        close;
        Anaform.Sayfalar.Pages[Anaform.Sayfalar.ActivePageIndex].Free;
        Result := False;
      end;
    finally
      ado.Free;
    end;
  end
  else
  if _dosyaNo_ = '' then
  begin
    ado := TADOQuery.Create(nil);
    try
      //t2x := ayliktarih(date,t1);
     (*
      sql := 'select top 1 dosyaNo from PersonelKart ' +
             ' where sirketKod = ' + QuotedStr(datalar.AktifSirket) +
             ' and Aktif = 1 ' +
             ' order by dosyaNo';
      datalar.QuerySelect(ado,sql);
      _dosyaNo_ := ado.Fields[0].AsString;
      *)
    finally
      ado.Free;
    end;
  end;

  if _dosyaNo_ <> ''
  then begin
    key := 13;
    dosyaNo.EditValue := _dosyaNo_;//datalar.Bilgi.dosyaNo;
    if varTostr(dosyaNo.EditValue) <> ''
    then
     dosyaNo.OnKeyDown(frmHastaKart.dosyaNo,key,[]);

    enabled;
    FormInputZorunluKontrolPaint(self,$00FCDDD1);
    TcxImageComboKadir(FindComponent('sirketKod')).Enabled := cxGridGelis.Dataset.Eof;
    Result := True;
  end;


end;


procedure TfrmHastaKart.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := Cafree;
end;

procedure TfrmHastaKart.FormCreate(Sender: TObject);
var
  List,
  UYRUK  : TListeAc;
  merkezdeBaslangic,BASLANGIC,ilkTaniTarihi : TcxDateEditKadir;
  EV_SEHIR ,EV_ILCE ,EV_BUCAK , EV_KOY,EV_MAHALLE,DEV_KURUM,Kurum : TcxImageComboKadir;
  EGITIM : TcxImageComboKadir;
  askerlik,ozur,bolum,birim,risk,muayenePeryot,tetkikIstemGrupSablon,
  Subeler,sirketlerx: TcxImageComboKadir;

begin
  USER_ID.Tag := 0;
  //sirketKod.Tag := 0;
  PopupMenu1.Images := datalar.imag24png;
  Menu := PopupMenu1;

  ClientHeight := formYukseklik;
  ClientWidth := formGenislik;

  USER_ID.Text := datalar.username;

  indexFieldName := 'dosyaNo';
  TableName := _TableName_;
  Olustur(self,_TableName_,'Hasta Taným Kartý',22,sqlInsert);
  cxPanel.Visible := false;
  Sayfa3_Kolon3.Width := 0;
  Sayfa3_Kolon2.Width := 0;

  List := ListeAcCreate('HastaKart','dosyaNo,HASTAADI,HASTASOYADI,TCKIMLIKNO,Aktif',
                       'DosyaNo,HastaAdý,HastaSoyadý,TCKimlikNo,Durum',
                       '50,100,100,80,50','ListdosyaNo','Hastalar',
                       ' SirketKod = ' + QuotedStr(datalar.AktifSirket), //+
                      // ' and Sube in (select datavalue from dbo.strtotable(' + QuotedStr(datalar.AktifSube) + ','',''))',
                        5,True,Self);


  //List.Where := ' SirketKod = ' + QuotedStr(datalar.AktifSirket);

  setDataStringB(self,'dosyaNo','&DosyaNo',Kolon1,'dn',80,List,True,dosyaNo,'','SirketKod',True,True,1);
 (*
  if datalar.AktifSirket = '' then
  begin
    SirketKodNew := TcxImageComboKadir.Create(self);
    SirketKodNew.Conn := Datalar.ADOConnection2;
    SirketKodNew.TableName := 'SIRKETLER_TNM';
    SirketKodNew.ValueField := 'SirketKod';
    SirketKodNew.DisplayField := 'Tanimi';
    SirketKodNew.BosOlamaz := False;
    SirketKodNew.Filter := '';
    SirketKodNew.tag := -100;
    setDataStringKontrol(self,SirketKodNew,'SirketKodNew','Þirket Seç',kolon1,'',250);
    OrtakEventAta(SirketKodNew);
  end;
   *)

  setDataString(self,'HUVIYETNO','',Kolon1,'dn',45);
  setDataString(self,'TCKIMLIKNO','TC Kimlik No  ',Kolon1,'',130,True);
  setDataString(self,'HASTAADI','Personel Adý  ',Kolon1,'',130,True);
  setDataString(self,'HASTASOYADI','Soyadý  ',Kolon1,'',130,True);
  setDataString(self,'BABAADI','Baba Adý  ',Kolon1,'',130);
  setDataString(self,'ANAADI','Ana Adý  ',Kolon1,'',130);
  setDataString(self,'DOGUMYERI','Doðum Yeri  ',Kolon1,'',130);
  setDataStringKontrol(self,DOGUMTARIHI, 'DOGUMTARIHI','Doðum Tarihi  ',Kolon1,'',130);


  setDataStringKontrol(self,KANGRUBU, 'KANGRUBU','Kan Grubu  ',Kolon1,'',100);
  setDataStringKontrol(self,CINSIYETI, 'CINSIYETI','Cinsiyeti  ',Kolon1,'',100);
  setDataStringKontrol(self,MEDENI, 'MEDENI','Medeni Hal  ',Kolon1,'',100);
//  setDataStringCurr(self,'CocukSayi','Çocuk Say.',kolon1,'',40,'0,',1);

  setDataStringKontrol(self,VatandasTip, 'VatandasTip','Vatandaþ Tipi  ',Kolon1,'',100);
  UYRUK := ListeAcCreate('SKRS_ULKE_KODLARI','KODU,ADI','Kod,Ülke Adi',
                       '50,200','KODU','Ülke Kodlarý','',2);
  setDataStringB(self,'UYRUGU','Uyruk',Kolon1,'',50,UYRUK,false,nil,'ADI','',True,True);

  EGITIM := TcxImageComboKadir.Create(self);
  EGITIM.Conn := Datalar.ADOConnection2;
  EGITIM.TableName := 'EgitimDurumlari';
  EGITIM.ValueField := 'kod';
  EGITIM.DisplayField := 'tanimi';
  EGITIM.BosOlamaz := True;
  EGITIM.Filter := '';
  OrtakEventAta(EGITIM);
  setDataStringKontrol(self,EGITIM,'EGITIM_DURUMU','Eðitim Durumu',kolon1,'',130);


  setDataStringIC(self,'Kurum','Kurum',kolon2,'',120,'Kurumlar','Kurum','ADI1','',1);
  setDataStringIC(self,'KurumTip','Dev.Kurum',kolon2,'',120,'Medula_DevredilenKurumlar','Kod','Tanimi','',1);
  setDataStringKontrol(self,DURUM, 'DURUM','Sigortalý Türü',Kolon2,'',100);

 


  setDataString(self,'SicilNo','Sigorta No',Kolon2,'',70);
  setDataStringBLabel(self,'BosSatir1',Kolon2,'',10);

  setDataString(self,'EV_TEL1','Mobil Tel',Kolon2,'',120);
  setDataString(self,'EV_TEL2','Sabit Tel',Kolon2,'',120);


  EV_SEHIR := TcxImageComboKadir.Create(self);
  EV_SEHIR.Conn := Datalar.ADOConnection2;
  EV_SEHIR.TableName := 'SKRS_IL_KODLARI';
  EV_SEHIR.ValueField := 'KODU';
  EV_SEHIR.DisplayField := 'ADI';
  EV_SEHIR.BosOlamaz := True;
  EV_SEHIR.Filter := '';
  setDataStringKontrol(self,EV_SEHIR,'EV_SEHIR','Ýl',kolon2,'',120);
  OrtakEventAta(EV_SEHIR);
//  setDataStringBLabel(self,'EV_SEHIR',Kolon2,'il',100,' ');


  EV_ILCE := TcxImageComboKadir.Create(self);
  EV_ILCE.Conn := Datalar.ADOConnection2;
  EV_ILCE.TableName := 'SKRS_ILCE_KODLARI';
  EV_ILCE.ValueField := 'KODU';
  EV_ILCE.DisplayField := 'ADI';
  EV_ILCE.BosOlamaz := True;
//  EV_ILCE.Filter := EV_SEHIR.EditValue;
//  EV_ILCE.Properties.ReadOnly := True;
  setDataStringKontrol(self,EV_ILCE,'EV_ILCE','Ýlçe',kolon2,'',120);
  OrtakEventAta(EV_ILCE);
  //  setDataStringB(self,'EV_ILCE','Ýlçe',Kolon2,'ilce',60,ILCE_KODLARI,false,EV_ILCE,'ADI','EV_SEHIR',false);
//  setDataStringBLabel(self,'EV_ILCE',Kolon2,'ilce',100,' ');

  //BUCAK_KODLARI := ListeAcCreate('SKRS_BUCAK_KODLARI','KODU,ADI','Kod,Adi','50,100','KODU','BUCAKLAR',' ILCEKODU = %s',2);
  EV_BUCAK := TcxImageComboKadir.Create(self);
  EV_BUCAK.Conn := Datalar.ADOConnection2;
  EV_BUCAK.TableName := 'SKRS_BUCAK_KODLARI';
  EV_BUCAK.ValueField := 'KODU';
  EV_BUCAK.DisplayField := 'ADI';
  EV_BUCAK.BosOlamaz := True;

  setDataStringKontrol(self,EV_BUCAK,'EV_BUCAK','Bucak',kolon2,'',120);
  OrtakEventAta(EV_BUCAK);

//  setDataStringB(self,'EV_BUCAK','Bucak',Kolon2,'bucak',60,BUCAK_KODLARI,false,EV_BUCAK,'ADI','EV_ILCE',false);
//  setDataStringBLabel(self,'EV_BUCAK',Kolon2,'bucak',100,' ');

 // KOY_KODLARI := ListeAcCreate('SKRS_KOY_KODLARI','KODU,ADI','Kod,Adi','50,100','KODU','KÖYLER',' BUCAKKODU = %s',2);
  EV_KOY := TcxImageComboKadir.Create(self);
 // EV_KOY.Properties.ReadOnly := True;
  EV_KOY.Conn := Datalar.ADOConnection2;
  EV_KOY.TableName := 'SKRS_KOY_KODLARI';
  EV_KOY.ValueField := 'KODU';
  EV_KOY.DisplayField := 'ADI';
  EV_KOY.BosOlamaz := True;
  setDataStringKontrol(self,EV_KOY,'EV_KOY','Köyü',kolon2,'',120);
  OrtakEventAta(EV_KOY);

 // MAHALLE_KODLARI := ListeAcCreate('SKRS_MAHALLE_KODLARI','KODU,ADI','Kod,Adi','50,100','KODU','MAHALLELER',' KOYKODU = %s',2);
  EV_MAHALLE := TcxImageComboKadir.Create(self);
  EV_MAHALLE.Conn := Datalar.ADOConnection2;
  EV_MAHALLE.TableName := 'SKRS_MAHALLE_KODLARI';
  EV_MAHALLE.ValueField := 'KODU';
  EV_MAHALLE.DisplayField := 'ADI';
  EV_MAHALLE.BosOlamaz := True;
  setDataStringKontrol(self,EV_MAHALLE,'EV_MAHALLE','Mahalle',kolon2,'',120);
   OrtakEventAta(EV_MAHALLE);

  setDataString(self,'EV_SOKAK','Sok./Cad.',Kolon2,'',166,True);
  setDataString(self,'EV_ADRES','Adres Diðer',Kolon2,'',166);
  setDataString(self,'EMAIL','E-Posta',Kolon2,'',166);


  setDataStringKontrol(self,cxFotoPanel , 'cxFotoPanel','',Kolon4,'',160,210);
  setDataStringKontrol(self,txtAktif , 'Aktif','',Kolon4,'',110);

  Sirketlerx := TcxImageComboKadir.Create(self);
  Sirketlerx.Conn := Datalar.ADOConnection2;
  Sirketlerx.TableName := 'SIRKETLER_TNM';
  Sirketlerx.ValueField := 'SirketKod';
  Sirketlerx.DisplayField := 'Tanimi';
  Sirketlerx.BosOlamaz := False;
  Sirketlerx.Filter := '';
  Sirketlerx.EditValue := datalar.AktifSirket;
  Sirketlerx.ItemIndex := -1;
  setDataStringKontrol(self,sirketlerx,'SirketKod','',Kolon4,'',250,0,alNone,'');
  sirketlerx.Properties.OnEditValueChanged := SirketlerPropertiesChange;
  sirketlerx.Enabled := False;

  (*

  addButton(self,nil,'btnTopluAktif','','Toplu &Aktif Yap',Kolon4,'',110,ButtonClick, 555);
  addButton(self,nil,'btnTopluPasif','','Toplu &Pasif Yap',Kolon4,'',110,ButtonClick, 550);

  setDataStringBLabel(self,'MuayenePeryotBaslik',Kolon4,'',110,'Muayene Peryodu');

  muayenePeryot := TcxImageComboKadir.Create(self);
  muayenePeryot.Conn := nil;
  muayenePeryot.ItemList := '30;Ayda Bir,90;3 Ayda Bir,180;6 Ayda Bir,365;Yýlda Bir,730;Ýki Yýlda Bir,1095;Üç Yýlda Bir,1825;Beþ Yýlda Bir';
  muayenePeryot.Filter := '';
  muayenePeryot.BosOlamaz := True;
  setDataStringKontrol(self,muayenePeryot,'MuayenePeryot','',kolon4,'',110);
  OrtakEventAta(muayenePeryot);


  setDataStringBLabel(self,'tetkikIstemGrupSablonBaslik',Kolon4,'',110,'Tetkik Grubu');
  tetkikIstemGrupSablon := TcxImageComboKadir.Create(self);
  tetkikIstemGrupSablon.Conn := datalar.ADOConnection2;
  tetkikIstemGrupSablon.TableName := 'tetkikIstemGrupSablon';
  tetkikIstemGrupSablon.ValueField := 'kod';
  tetkikIstemGrupSablon.DisplayField := 'tanimi';
  tetkikIstemGrupSablon.Filter := '';
  setDataStringKontrol(self,tetkikIstemGrupSablon,'tetkikIstemGrupSablon','',kolon4,'',110);
  OrtakEventAta(tetkikIstemGrupSablon);
    *)




// meslekler := ListeAcCreate('MeslekKodlari','kod,tanimi','Meslekler','100,300','Kodu','Meslek Tanýmý','',2);

  setDataStringKontrol(self,MESLEK, 'MESLEK','Meslek Kodu  ',Kolon1,'',80);
  setDataString(self,'MESLEKADI','Meslek Tanimi',Kolon1,'',200,false,'',True);
//  OrtakEventAta(meslekKod);

 // setDataStringBLabel(self,'bosSatir2',Kolon3,'',350);

 // setDataStringC(self,'seans','Seans',sayfa2_Kolon1,'_s_',50,'1,2,3,4,5');
 // setDataString(self,'seansSuresi','Günlük Çalýþma Süre',sayfa2_Kolon1,'_s_',30);
//  setDataString(self,'makinaNo','Makina',sayfa2_Kolon1,'_s_',40);
//  setDataStringKontrol(self,seansGunleri , 'seansGunleri','Çalýþma Günleri',sayfa2_Kolon1,'',230);



 // setDataStringMemo(self,'soygecmis','Soy Geçmiþ',sayfa3_Kolon1,'',630,40);
  setDataStringMemo(self,'hastaNot','Tedavi Geçmiþ',sayfa3_Kolon1,'',630,40);
  setDataStringMemo(self,'diger','Hasta Özel Durum',sayfa3_Kolon1,'',630,40);

  setDataStringKontrol(self,txtSeansSikayet , 'GELHAST','Kronik Hast/Baðým',sayfa3_Kolon1,'',300);


  setDataStringKontrol(self,txtBobrekHastaligi , 'PBH','Primer Böbrek Hast.',Sayfa2_Kolon1,'',200);
  ilkTaniTarihi := TcxDateEditKadir.Create(self);
  setDataStringKontrol(self,ilkTaniTarihi, 'ilkTaniTarihi','Ýlk Taný Tarihi',Sayfa2_Kolon1,'',100);

  BASLANGIC := TcxDateEditKadir.Create(self);
  setDataStringKontrol(self,BASLANGIC, 'BASLANGIC','Ýlk Diyaliz Tarihi',Sayfa2_Kolon1,'',100);

  merkezdeBaslangic := TcxDateEditKadir.Create(self);
  setDataStringKontrol(self,merkezdeBaslangic, 'merkezdeBaslangic','Merkezde Baþlama Tarihi',Sayfa2_Kolon1,'',100);
  setDataStringKontrol(self,hastaTip , 'hastaTip','Hasta Tipi',Sayfa2_Kolon1,'',100);

  setDataStringC(self,'Aday','Transplastasyon',Sayfa2_Kolon1,'',100,'E,H');

 // setDataStringBLabel(self,'bosSatir2',Kolon3,'',1);


  DiyalizTedaviControlleriniFormaEkle(sayfa2_Kolon1);

  setDataStringCurr(self,'idealKilo','Kilo',sayfa2_Kolon1,'kilo',50,'0.00', 1);
  setDataStringCurr(self,'boy','Boy',sayfa2_Kolon1,'kilo',50,'0', 1);

  setDataStringC(self,'seans','Seans',Sayfa2_Kolon2,'_s_',50,'1,2,3,4,5');
  setDataString(self,'seansSuresi','Seans Süre',Sayfa2_Kolon2,'_s_',30);
  setDataString(self,'makinaNo','Makina',Sayfa2_Kolon2,'_s_',40);
  setDataStringKontrol(self,seansGunleri , 'seansGunleri','Seans Günleri',Sayfa2_Kolon2,'',230);

 // setDataStringBLabel(self,'bosSatir4',Kolon3,'',1);


  setDataStringIC(self,'HbsAg','HbsAg',Sayfa2_Kolon2,'',80,'','','','',1,'1;Pozitif,-1;Negatif');
  setDataStringIC(self,'AntiHbs','AntiHbs',Sayfa2_Kolon2,'',80,'','','','',1,'1;Pozitif,-1;Negatif');
  setDataStringIC(self,'AntiHCV','AntiHCV',Sayfa2_Kolon2,'',80,'','','','',1,'1;Pozitif,-1;Negatif');
  setDataStringIC(self,'HIV','AntiHIV',Sayfa2_Kolon2,'',80,'','','','',1,'1;Pozitif,-1;Negatif');




 // tableColumnDescCreate;
  cxpnlHastaGelisler.Parent := sayfa1;
  Splitter_Muayene.Parent := sayfa1;

  cxpnlHastaGelisler.Align := alBottom;
  Splitter_Muayene.Align := alBottom;

  SayfaCaption('Kimlik Bilgileri','Diyaliz Bilgileri','Öz Geçmiþ','Çalýþma Geçmiþi','');


  Kolon3.Width := 50;
 (*
  if datalar.UserGroup <> '2'
  then begin
    sayfa3.TabVisible := False;
  end;
   *)

  Disabled(self,True);




 end;


procedure TfrmHastaKart.FormShow(Sender: TObject);
begin
  inherited;
  //
end;

procedure TfrmHastaKart.seansGunleriPropertiesEditValueChanged(Sender: TObject);
begin
  inherited;
//  s := seansGunleri.EditingValue;


 // ShowMessage(s,'','','info');
end;

procedure TfrmHastaKart.cxKaydetClick(Sender: TObject);
begin
  case TControl(sender).Tag  of
    0 :begin
    (*
        if StrToint(VarToStr(TcxImageComboKadir(FindComponent('VatandasTip')).EditValue)) in [0,1]
        Then
        if TCKontrol(vartoStr(TcxTextEditKadir(FindComponent('TCKIMLIKNO')).EditingValue)) = False
         Then begin
           ShowMessageSkin('TC Kimlik No Hatalý','Lütfen Kontrol Ediniz','','info');
           TcxCustomEdit(FindComponent('TCKIMLIKNO')).SetFocus;
           exit;
         end;
         if MrYes <> ShowMessageSkin('Personel Kartý',TcxImageComboKadir(FindComponent('SirketKod')).Text,
                                     TcxImageComboKadir(FindComponent('Sube')).Text + ' Þubesine Kayýt Edilecek',
                                     'msg') Then
           exit;
           *)
    end;
    2 : begin
    (*
         if datalar.AktifSirket = '' then
         begin
            ShowMessageSkin('Þirket Seçmelisiniz','','','info');
            exit;
         end;

        if IsNull (TcxLabel(FindComponent('LabelSirketKod')).Caption) then
        TcxLabel(FindComponent('LabelSirketKod')).Caption := datalar.AktifSirket;
    *)
    end;
  end;

  datalar.KontrolUserSet := False;
  BeginTrans (DATALAR.ADOConnection2);
  try
    inherited;
    if datalar.KontrolUserSet = True then exit;
    if not cxKaydetResult then Exit;

    case TControl(sender).Tag  of
 Kaydet : begin
           // if TCtoDosyaNo(TcxCustomEdit(FindComponent('TckimlikNo')).EditingValue)

            if StrToint(VarToStr(TcxImageComboKadir(FindComponent('VatandasTip')).EditValue)) in [0,1]
            Then
            if TCKontrol(vartoStr(TcxTextEditKadir(FindComponent('TCKIMLIKNO')).EditingValue)) = False
             Then begin
               ShowMessageSkin('TC Kimlik No Hatalý','Lütfen Kontrol Ediniz','','info');
               TcxCustomEdit(FindComponent('TCKIMLIKNO')).SetFocus;
               exit;
             end;
             if MrYes <> ShowMessageSkin('Hasta ',TcxImageComboKadir(FindComponent('SirketKod')).Text,
                                         ' Merkezine Kayýt Edilecek',
                                         'msg') Then exit;

           FotoNewRecord;
           Kart := sql_none;
          end;
    Sil : begin
            Kart := sql_delete;
          end;
  Yeni : begin

             if datalar.AktifSirket = '' then
             begin
                ShowMessageSkin('Þirket Seçmelisiniz','','','info');
                exit;
             end;

            if IsNull (TcxLabel(FindComponent('LabelSirketKod')).Caption) then
            TcxLabel(FindComponent('LabelSirketKod')).Caption := datalar.AktifSirket;

            Kart := sql_new;
            dosyaNo.Text := dosyaNoYeniNumaraAl('DN');
            if dosyaNo.Text = '0'
            then begin
              ShowMessageskin('Dosya No Alýnamadý','','','info');
            end;
            foto.Picture.Assign(nil);
            Gelisler (dosyaNo.Text);
            TcxImageComboKadir(FindComponent('SirketKod')).EditValue := datalar.AktifSirket;
           // TcxImageComboKadir(FindComponent('SirketKod')).Enabled := False;

            if IsNull (TcxLabel(FindComponent('LabelSirketKod')).Caption) then
              TcxLabel(FindComponent('LabelSirketKod')).Caption := datalar.AktifSirket;
            //aktif pasif yeni  kombosu yeni kayýtta eðer ekleyen kullanýcý doktor deðilse Yeni deðeri varsayýlan olacak.
            if IsNull (datalar.doktorKodu) then
              TcxImageComboBox (FindComponent ('Aktif')).ItemIndex := 2
             else
              TcxImageComboBox (FindComponent ('Aktif')).ItemIndex := 1;

              TcxImageComboBox (FindComponent ('VatandasTip')).EditValue := 0;
              TcxButtonEditKadir(FindComponent('UYRUGU')).EditValue := 'TR';


          end;

    end;
  finally
    if cxKaydetResult then
      CommitTrans (DATALAR.ADOConnection2)
     else
      RollbackTrans (DATALAR.ADOConnection2);
  end;
end;

procedure TfrmHastaKart.TopluPasifYap (const bPasif : boolean);
var
  sSirketKod, sSubeKod : String;
begin
  sSirketKod := VarToStr (TcxImageComboKadir(FindComponent('SirketKod')).EditingValue);
  if IsNull (sSirketKod) then 
  begin
    ShowMessageSkin ('Personelin Þirket bilgisi seçilmemiþ', '', '', 'info');
    Exit;
  end;
  sSubeKod := VarToStr (TcxImageComboKadir(FindComponent('Sube')).EditingValue);
  if IsNull (sSubeKod) then
  begin
    ShowMessageSkin ('Personelin Þube bilgisi seçilmemiþ', '', '', 'info');
    Exit;
  end;
  if not PersonelTopluPasifYap (bPasif, sSirketKod, sSubeKod) then Exit;
end;

procedure TfrmHastaKart.cxButtonCClick(Sender: TObject);
var
 List : TListeAc;
 _L_ : ArrayListeSecimler;
 _name_, tel,msj,sysTakipNo : string;
 F : TGirisForm;
 GirisFormRecord : TGirisFormRecord;
begin
  datalar.KontrolUserSet := False;
  inherited;
  if datalar.KontrolUserSet = True then exit;

  if dosyaNo.Text = ''
  then begin
   ShowMessageSkin('Hasta Dosyasý Açýlmadan Bu Ýþlem Kullanýlamaz...','','','info');
   exit;
  end;

  GirisFormRecord.F_dosyaNo_ := dosyaNo.Text;
  GirisFormRecord.F_gelisNo_ := cxGridGelis.Dataset.FieldByName('gelisNo').AsString;
  GirisFormRecord.F_GelisSIRANO := cxGridGelis.Dataset.FieldByName('SIRANO').AsString;
  GirisFormRecord.F_MuayeneProtokolNo_ := cxGridGelis.Dataset.FieldByName('PROTOKOLNO').AsString;
  GirisFormRecord.F_provizyonTarihi_ := NoktasizTarih(cxGridGelis.Dataset.FieldByName('Tarih').AsString);
  GirisFormRecord.F_TC_ := sqlRun.FieldByName('TCKimlikNo').AsString;
  GirisFormRecord.F_Doktor_ := cxGridGelis.Dataset.FieldByName('doktor').AsString;
  GirisFormRecord.F_SigortaliTur_ := '';
  GirisFormRecord.F_HastaAdSoyad_ := _HastaAdSoyad_;
  GirisFormRecord.F_mobilTel_ := vartoStr(TcxTextEdit(FindComponent('EV_TEL1')).Text);
  GirisFormRecord.F_firmaKod_ := TcxImageComboKadir(FindComponent('SirketKod')).EditValue;
  GirisFormRecord.F_Yupass_ := cxGridGelis.Dataset.FieldByName('Yupass').AsString;
  GirisFormRecord.F_DevKurum_ := TcxImageComboKadir(FindComponent('kurumTip')).EditValue;
  GirisFormRecord.F_BransKodu_ := cxGridGelis.Dataset.FieldByName('SERVIS').AsString;
  GirisFormRecord.F_Adres_ := varToStr(TcxTextEdit(FindComponent('EV_ADRES')).EditValue);
  GirisFormRecord.F_TedaviTuru_ := cxGridGelis.Dataset.FieldByName('TEDAVITURU').AsString;
  GirisFormRecord.F_TakipNo_ := cxGridGelis.Dataset.FieldByName('TakipNo').AsString;
  GirisFormRecord.F_BasvuruNo_ := cxGridGelis.Dataset.FieldByName('basvuruNo').AsString;
  GirisFormRecord.F_Makina_ := sqlRun.FieldByName('makinaNo').AsString;
  GirisFormRecord.F_Seans_ := sqlRun.FieldByName('seans').AsString;
  GirisFormRecord.F_SeansSira_ := '';
  GirisFormRecord.F_sysTakipNo := cxGridGelis.Dataset.FieldByName('sysTakipNo').AsString;
  GirisFormRecord.F_firmaKod_ := DATALAR.AktifSirket;

  GirisFormRecord.F_SeansBilgi.DiyalizorCinsi := sqlRun.FieldByName('DiyalizorCinsi').AsString;
  GirisFormRecord.F_SeansBilgi.DiyalizorTipi := sqlRun.FieldByName('DiyalizorTipi').AsString;
  GirisFormRecord.F_SeansBilgi.YA := sqlRun.FieldByName('YA').AsString;
  GirisFormRecord.F_SeansBilgi.GirisYolu := sqlRun.FieldByName('GIRISYOLU').AsString;
  GirisFormRecord.F_SeansBilgi.Heparin := sqlRun.FieldByName('HEPARIN').AsString;
  GirisFormRecord.F_SeansBilgi.HeparinUyg := sqlRun.FieldByName('HEPARINUYG').AsString;
  GirisFormRecord.F_SeansBilgi.HeparinTip := sqlRun.FieldByName('HEPARINTIP').AsString;
  GirisFormRecord.F_SeansBilgi.APH := sqlRun.FieldByName('APH').AsString;
  GirisFormRecord.F_SeansBilgi.Na := sqlRun.FieldByName('Na').AsString;
  GirisFormRecord.F_SeansBilgi.Igne := sqlRun.FieldByName('Igne').AsString;
  GirisFormRecord.F_SeansBilgi.IgneV := sqlRun.FieldByName('IgneV').AsString;
  GirisFormRecord.F_SeansBilgi.Diyalizat := sqlRun.FieldByName('D').AsString;
  GirisFormRecord.F_SeansBilgi.Diyalizor := sqlRun.FieldByName('Diyalizor').AsString;
  GirisFormRecord.F_SeansBilgi.Kilo := sqlRun.FieldByName('IdealKilo').AsString;


  _TakipNo_ := cxGridGelis.Dataset.FieldByName('TakipNo').AsString;

  if (cxGridGelis.Dataset.Eof) and (TControl(sender).Tag <> -27)
  then begin
   ShowMessageSkin('Muayene Dosyasý Açýlmadan Bu Ýþlem Kullanýlamaz...','','','info');
   exit;
  end;

  case TControl(sender).Tag  of
    0 : begin
          List := TListeAc.Create(nil);
          try
            List.Kolonlar.Create;
            List.Table := 'ilacListesi';
            List.Kolonlar.Add('barkod');
            List.Kolonlar.Add('ilacAdi');

            List.KolonBasliklari.Create;
            List.KolonBasliklari.Add('Barkod');
            List.KolonBasliklari.Add('Ýlaç Adi');

            List.KolonBasliklari.Create;
            List.TColcount := 2;
            List.TColsW := '100,300';
            List.ListeBaslik := 'Ýlaçlar';
            List.Name := 'barkod';
            List.Conn := Datalar.ADOConnection2;
            List.SkinName := AnaForm.dxSkinController1.SkinName;
            List.Grup := True;

            _L_ := List.ListeGetir;
            if High (_L_) >= 0 then
            begin
              _name_ := TcxButtonKadir(sender).ButtonName;
              _name_ := StringReplace(_name_,'cxBtn','',[rfReplaceAll]);
              TcxButtonEditKadir(FindComponent(_name_)).Text := _L_ [0].kolon1;
              TcxButtonEditKadir(FindComponent('tanimi')).Text := _L_ [0].kolon2;
            end;
          finally
            List.Free;
          end;
        end;
    1 : begin
         // post;
         //ShowMessage('Ýptal');
        end;
   -1 : begin
             if cxGridGelis.Dataset.FieldByName('TakipNo').AsString <> ''
             Then Begin
                  ShowMessageskin('Mevcut Takip Numarasý Var , Takip Alýnamaz','','','info');
                  exit;
             End;

             if (copy(TcxCustomEdit(FindComponent('KurumTip')).EditingValue,1,1) = '8')
             then begin
                 exit;

             end else
             begin
                F := FormINIT(TagfrmTakipNo,GirisFormRecord,ikEvet,'Takip Al');
                if F <> nil then F.ShowModal;
                Gelisler(dosyaNo.Text);
             end;
        end;
   -2 : begin
          HizmetKaydet;
        end;


   -3 : begin
         TakipSil('');
        end;
   -4 : begin
          F := FormINIT(TagfrmTakipBilgisiOku,GirisFormRecord);
          if F <> nil then F.ShowModal;
        end;
   -5 : begin

               if mrYes = ShowPopupForm('Hasta Takipleri Bul',hastaTakipleriGetir,GirisFormRecord.F_TC_)
               Then Begin
                 //HastaTakipleriBul('66190086354','01.03.2019','30.03.2019');
               End;
        end;


   -6 : begin
         // Tab := FindTabSheet(sayfalar,'sayfa4');
         // F := FormINIT(TagfrmHastaSeans,self,GirisFormRecord,'',Tab,ikHayir,'Giriþ');
          F := FormINIT(TagfrmHastaSeans,GirisFormRecord,ikHayir,'');
         // F.cxTopPanel.Visible := false;
          //F.dxStatusBar1.Visible := False;
          if F <> nil then F.ShowModal;
        end;

 -25 : begin
          F := FormINIT(TagfrmAsiKarti,GirisFormRecord,ikEvet,'');
          if F <> nil then F.ShowModal;
       end;
 -26 : begin
         EpikrizYaz(dosyaNo.Text,cxGridGelis.Dataset.FieldByName('gelisNo').AsString,false);
       end;
 -27 : begin
         GelisAc;
       end;

 -28 : begin
         tel := dosyaNoTel(_dosyaNO_,TcxTextEdit(FindComponent('EV_TEL1')).Text);
         SMSSend(tel,msj,_HastaAdSoyad_);
       end;
 -29 : begin
            F := FormINIT(TagfrmRaporDetay,GirisFormRecord,ikEvet,'');
            if F <> nil then F.ShowModal;
       end;
 -30 : begin
        //  ReceteForm(dosyaNo.Text,_gelisNO_);
       end;
 -31 : begin
        GelisDuzenle;
       end;
 -32 : begin
          F := FormINIT(TagfrmHastaTetkikEkle,GirisFormRecord);
          if F <> nil then F.ShowModal;
         // TetkikEkle(dosyaNo.Text,_gelisNo_,datalar.HastaBil.Tarih);
       end;
 -33 : begin
         GelisSil;
       end;
 -34 : begin
         sysTakipNo := cxGridGelis.Dataset.FieldByName('sysTakipNo').AsString;
        // ShowMessageSkin(
           SGKHizmetSorgulama(datalar._userSaglikNet2_,DATALAR._passSaglikNet2_,sysTakipNo,'',ktsHbysKodu);
       //  '','','info');
       end;

 -35 : begin
          F := FormINIT(TagfrmTaniKarti,GirisFormRecord,ikEvet,'');
          if F <> nil then F.ShowModal;
       end;

 -36 : begin
          F := FormINIT(TagfrmHastaDiyalizIzlem,GirisFormRecord,ikHayir);
          if F <> nil then F.ShowModal;
       end;

 -37 : begin
          F := FormINIT(TagfrmKanTetkikTakip,GirisFormRecord,ikHayir);
          if F <> nil then F.ShowModal;
       end;



 -50 : begin
          FotoEkle;
       end;

 -51 : begin
            GirisFormRecord.F_dosyaNO_ := dosyaNO.Text;
            GirisFormRecord.F_gelisNO_ := cxGridGelis.Dataset.FieldByName('gelisNo').AsString;

            case cxGridGelis.Dataset.FieldByName('AnemnezEkranTipi').AsInteger of
              1 : F := FormINIT(TagfrmIseGiris,GirisFormRecord,ikHayir,'');
              2 : F := FormINIT(TagfrmAnamnez,GirisFormRecord,ikEvet,'');
            end;


            if F <> nil then F.ShowModal;


       end;

 130 : begin
          datalar.HastaBil.dosyaNO := dosyaNo.Text;
          datalar.HastaBil.gelisNo := _gelisNo_;
          F := FormINIT(TagfrmHastaRecete,GirisFormRecord,ikEvet,'');
          if F <> nil then F.ShowModal;

       end;
 140 : begin
            F := FormINIT(TagfrmHastaIlacTedavi,GirisFormRecord,ikEvet,'');
            if F <> nil then F.ShowModal;
          //  IlacTedaviKarti(dosyaNo.Text,_gelisNo_,noktasizTarih(DATALAR.Bilgi.ProvizyonTarihi));
       end;

  end;
end;

end.

