unit FirmaKart;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,pngImage,
  cxContainer, cxEdit, Menus, StdCtrls, cxButtons, cxGroupBox, DB, ADODB,
  cxTextEdit, cxMaskEdit, cxButtonEdit, cxDBEdit,
  kadirType,KadirLabel,Kadir,Data_Modul,
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
  dxSkinValentine, dxSkinXmas2008Blue;



type
  TfrmFirmaKart = class(TGirisForm)
    PopupMenu1: TPopupMenu;
    MenucxYeni: TMenuItem;
    MenucxKaydet: TMenuItem;
    MenucxIptal: TMenuItem;
    N1: TMenuItem;
    Kapat1: TMenuItem;
    cxFotoPanel: TcxGroupBox;
    Foto: TcxImage;
    cxFotoEkleButton: TcxButton;
    N2: TMenuItem;
    DataSource1: TDataSource;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    SeansKart1: TMenuItem;
    ADO_Gelisler: TADOQuery;
    lemler1: TMenuItem;
    txtAktif: TcxImageComboBox;
    ListeNaceKods: TListeAc;
    AKart1: TMenuItem;
    YatBilgileri1: TMenuItem;
    Epikriz1: TMenuItem;
    SmsGnder1: TMenuItem;
    HastaRaporlar1: TMenuItem;
    T1: TMenuItem;
    R1: TMenuItem;
    N3: TMenuItem;
    T2: TMenuItem;
    T3: TMenuItem;
    NaceKod: TcxButtonEditKadir;
    FileOpenDialog1: TFileOpenDialog;
    OpenDialog1: TOpenDialog;
    procedure FormCreate(Sender: TObject);
    procedure cxKaydetClick(Sender: TObject);override;
    procedure cxButtonCClick(Sender: TObject);
    procedure cxTextEditBKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxEditEnter(Sender: TObject);
    procedure cxEditExit(Sender: TObject);
    procedure seansGunleriPropertiesEditValueChanged(Sender: TObject);
    procedure FotoEkle;
    procedure FotoNewRecord;
    procedure FotoDeleteRecord;
    procedure cxButtonEditPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);override;
    function TakipSil(TakipNo : string) : string;
    procedure cxGridGelislerDblClick(Sender: TObject);
    procedure txtTipPropertiesChange(Sender: TObject);
    procedure txtAktifPropertiesChange(Sender: TObject);
    procedure PropertiesEditValueChanged(Sender: TObject);override;
    procedure cxGridGelislerKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DOGUMTARIHIPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure txtNaceKodPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
     procedure ButtonClick(Sender: TObject);

  private
    { Private declarations }
  protected
    procedure FirmaSubeBirlestir;
    procedure TopluPasifYap (const bPasif : boolean);
  public
    { Public declarations }
    procedure OrtakEventAta(Sender : TObject);overload;
    procedure OrtakEventAta(Sender : TcxImageComboKadir);overload;
    function Init(Sender: TObject) : Boolean; override;
  end;

const _TableName_ = 'SIRKETLER_TNM';
      formGenislik = 750;
      formYukseklik = 580;
      sqlInsert = 'exec sp_YeniHastaKarti ';//,%s,%s,%s,%s,%s,%s';
      sqlUpdate = 'exec sp_GuncelHastaKarti ';
      sqlDelete = 'delete from SIRKETLER_TNM where sirketKod = %s';
      FotoTable = 'select * from FirmaLogo where sirketKod = %s';

var
  frmFirmaKart: TfrmFirmaKart;
  ord : integer;
  _gez : integer;
  aktifKart : integer = 0;
  kart : sqlType;

implementation
uses AnaUnit,SMS, TransUtils, StrUtils, nThermo;
{$R *.dfm}

procedure TfrmFirmaKart.ButtonClick(Sender: TObject);
var
  F : TGirisForm;
  GirisRecord : TGirisFormRecord;
begin
  if IsNull (TcxButtonEditKadir(FindComponent('SirketKod')).EditValue) then
  begin
    ShowMessageSkin('Bir �irket kart� a�madan bu i�leme devam edemezsiniz', '', '', 'info');
    Exit;
  end;
  GirisRecord.F_firmaKod_ := TcxButtonEditKadir(FindComponent('SirketKod')).EditValue;
  GirisRecord.F_HastaAdSoyad_ := TcxTextEditKadir(FindComponent('tanimi')).EditValue;
  F := nil;
  if TcxButtonKadir(sender).ButtonName = 'btnSozlesmeler' then
    F := FormINIT(TagfrmSirketSozlesme,GirisRecord,ikHayir,'')
  else if TcxButtonKadir(sender).ButtonName = 'btnSubeler' then
    F := FormINIT(TagfrmKurumBilgi,GirisRecord,ikHayir,'')
  else if TcxButtonKadir(sender).ButtonName = 'btnISGEkipleri' then
    F := FormINIT(TagfrmFirmaISGEkip,GirisRecord,ikHayir,'')
  else if TcxButtonKadir(sender).ButtonName = 'btnCalismalar' then
    F := FormINIT(TagFirmaCalismalari,GirisRecord,ikHayir,'')
  else if TcxButtonKadir(sender).ButtonName = 'btnEkipmanList' then
    F := FormINIT(TagfrmSirketEkipmanList,GirisRecord,ikHayir,'')
  else if TcxButtonKadir(sender).ButtonName = 'btnFirmaYetkili' then
    F := FormINIT(TagfrmFirmaYetkili,GirisRecord,ikHayir,'')
  else
  if TcxButtonKadir(sender).ButtonName = 'btnSubeGetir' then
  begin
    FirmaSubeBirlestir;
  end
  else
  if TcxButtonKadir(sender).ButtonName = 'btnTopluPasif' then
  begin
    TopluPasifYap (True);
  end
  else
  if TcxButtonKadir(sender).ButtonName = 'btnTopluAktif' then
  begin
    TopluPasifYap (False);
  end;
  if F <> nil then F.ShowModal;
end;

procedure TfrmFirmaKart.OrtakEventAta(Sender : TObject);
begin
  TcxButtonEditKadir(sender).Properties.OnButtonClick := cxButtonEditPropertiesButtonClick;
  TcxButtonEditKadir(sender).OnEnter := cxEditEnter;
  TcxButtonEditKadir(sender).OnExit := cxEditExit;
  TcxButtonEditKadir(sender).OnKeyDown := cxTextEditBKeyDown;
  TcxButtonEditKadir(sender).Properties.OnEditValueChanged := PropertiesEditValueChanged;
end;

procedure TfrmFirmaKart.OrtakEventAta(Sender : TcxImageComboKadir);
begin
  TcxImageComboKadir (sender).OnEnter := cxEditEnter;
  TcxImageComboKadir(sender).OnExit := cxEditExit;
  TcxImageComboKadir(sender).OnKeyDown := cxTextEditBKeyDown;
  TcxImageComboKadir(sender).Properties.OnEditValueChanged := PropertiesEditValueChanged;
end;

procedure TfrmFirmaKart.txtAktifPropertiesChange(Sender: TObject);
var
   sql , _aktif , _pasifTarih : string;
begin
   if datalar.AktifSirket = '' then exit;

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
       sql := 'update FirmaKart set aktif = ' + #39 + _aktif + #39 +
              ' where kod = ' + #39 + TcxButtonEditKadir(FindComponent('SirketKod')).EditingValue + #39;
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

procedure TfrmFirmaKart.txtNaceKodPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  List : ArrayListeSecimler;
begin
   List := ListeNaceKods.ListeGetir;
   if High (List) < 0 then Exit;
   TcxTextEditKadir(FindComponent('naceKod')).EditValue := List[0].kolon1;
   TcxTextEditKadir(FindComponent('anaFaliyet')).EditValue := List[0].kolon2;
   TcxImageComboKadir(FindComponent('tehlikeSinifi')).EditValue := List[0].kolon4;

end;

procedure TfrmFirmaKart.PropertiesEditValueChanged(
  Sender: TObject);
var
 firmaTip : integer;
begin
  inherited;

  if TcxImageComboKadir(sender).Name = 'SEHIR'
  then begin
    TcxImageComboKadir(FindComponent('ILCE')).TableName := 'SKRS_ILCE_KODLARI';
    TcxImageComboKadir(FindComponent('ILCE')).Filter := 'ILKODU = ' + QuotedStr(TcxImageComboKadir(FindComponent('SEHIR')).EditingValue);
    if FindComponent('ILCE') <> nil Then TcxImageComboKadir(FindComponent('ILCE')).EditValue := '';
  end
  else
  if TcxImageComboKadir(sender).Name = 'ILCE'
  then begin
    TcxImageComboKadir(FindComponent('BUCAK')).TableName := 'SKRS_BUCAK_KODLARI';
    TcxImageComboKadir(FindComponent('BUCAK')).Filter := 'ILCEKODU = ' + QuotedStr(TcxImageComboKadir(FindComponent('ILCE')).EditingValue);
    if FindComponent('BUCAK') <> nil Then TcxImageComboKadir(FindComponent('BUCAK')).EditValue := '';
  end
  else
  if TcxImageComboKadir(sender).Name = 'BUCAK'
  then begin
    TcxImageComboKadir(FindComponent('KOY')).TableName := 'SKRS_KOY_KODLARI';
    TcxImageComboKadir(FindComponent('KOY')).Filter := 'BUCAKKODU = ' + QuotedStr(TcxImageComboKadir(FindComponent('BUCAK')).EditingValue);
    if FindComponent('KOY') <> nil Then TcxImageComboKadir(FindComponent('KOY')).EditValue := '';
  end
  else
  if TcxImageComboKadir(sender).Name = 'KOY'
  then begin
    TcxImageComboKadir(FindComponent('MAHALLE')).TableName := 'SKRS_MAHALLE_KODLARI';
    TcxImageComboKadir(FindComponent('MAHALLE')).Filter := 'KOYKODU = ' + QuotedStr(TcxImageComboKadir(FindComponent('KOY')).EditingValue);
    if FindComponent('MAHALLE') <> nil Then TcxImageComboKadir(FindComponent('MAHALLE')).EditValue := '';
  end ;

  if TcxImageComboKadir(sender).Name = 'FirmaTip'
  Then begin
    firmaTip := TcxImageComboKadir(sender).EditValue;
    if firmaTip in [1]
    then begin
        Kolon3.Visible := true;
    end
    else Kolon3.Visible := false;

  end;

end;

procedure TfrmFirmaKart.txtTipPropertiesChange(Sender: TObject);
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

function TfrmFirmaKart.TakipSil;
begin
//
end;

procedure TfrmFirmaKart.FotoNewRecord;
var
 sql,dosyaNo : string;
 ado : TADOQuery;
begin
  dosyaNo := TcxButtonEditKadir(FindComponent('SirketKod')).Text;
  ado := TADOQuery.Create(nil);
  try
    sql := 'if not exists(select sirketKod from FirmaLogo where sirketKod = ' + QuotedStr(dosyaNo) + ')' +
           ' insert into FirmaLogo (sirketKod,logo,tip) ' +
           ' values (' + QuotedStr(dosyaNo) + ',NULL,''H'')';
    datalar.QueryExec(ado,sql);
  finally
    ado.Free;
  end;
end;

procedure TfrmFirmaKart.FotoDeleteRecord;
var
 sql,dosyaNo : string;
 ado : TADOQuery;
begin
  dosyaNo := TcxButtonEditKadir(FindComponent('SirketKod')).Text;
  ado := TADOQuery.Create(nil);
  try
    sql := 'delete FirmaLogo where sirketKod = ' + QuotedStr(dosyaNo);
    datalar.QueryExec(ado,sql);
  finally
    ado.Free;
  end;
end;

procedure TfrmFirmaKart.FotoEkle;
var
 Fo : TOpenDialog;
 filename,dosyaNo : string;
 jp : TJPEGImage;
 bBasarili : Boolean;
begin
  dosyaNo := TcxButtonEditKadir(FindComponent('SirketKod')).Text;
  datalar.ADO_Foto.SQL.Text := Format(FotoTable,[#39+dosyaNo+#39]);
  datalar.ADO_FOTO.Open;
  if datalar.ADO_FOTO.Eof then
  begin
    datalar.ADO_FOTO.Append;
    DATALAR.ADO_FOTO.fieldByName ('SirketKod').AsString := dosyaNo;
  end
  else datalar.ADO_FOTO.Edit;
  bBasarili := False;
  try
    Fo := TOpenDialog.Create(nil);
    try
      Fo.Filter := 'Jpeg Dosyalar� (*.jpg)|*.jpg';
      if not fo.Execute then Exit;
      filename := fo.FileName;
    finally
      fo.Free;
    end;
    Foto.Picture.LoadFromFile(filename);

    jp := TJpegimage.Create;
    try
      jp.Assign(FOTO.Picture);
      datalar.ADO_FOTO.FieldByName('Logo').Assign(jp);
      datalar.ADO_FOTO.Post;
      bBasarili := True;
    finally
      jp.Free;
    end;
  finally
    if not bBasarili then DATALAR.ADO_FOTO.Cancel;

  end;
end;


procedure TfrmFirmaKart.cxButtonEditPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
 g : TGraphic;
begin
  inherited;
  if length(datalar.ButtonEditSecimlist) > 0 then
  begin
    enabled;


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

             _dosyaNo_ := TcxButtonEditKadir(sender).Text;
             (*
             _Tc_ := TcxTextEditKadir(FindComponent('TcKimlikNo')).Text;
             _HastaAdSoyad_ := TcxTextEditKadir(FindComponent('HASTAADI')).Text +
                               ' ' + TcxTextEditKadir(FindComponent('HASTASOYADI')).Text;
             HastaBilgiRecordSet(TcxTextEditKadir(FindComponent('HASTAADI')).Text,
                                 TcxTextEditKadir(FindComponent('HASTASOYADI')).Text,
                                 _Tc_,'');
               *)
             datalar.ADO_Foto.SQL.Text := Format(FotoTable,[#39+_dosyaNo_+#39]);
             datalar.ADO_FOTO.Open;

             g := TJpegimage.Create;
             try
               try
                 if datalar.ADO_FOTO.FieldByName('logo').AsVariant <> Null
                 Then begin
                   g.Assign(datalar.ADO_FOTO.FieldByName('logo'));
                   FOTO.Picture.Assign(g);
                 end
                 else
                 FOTO.Picture.Assign(nil);
               except
               end;
             finally
               g.Free;
             end;
         end;
     end;
  end;
end;

procedure TfrmFirmaKart.cxEditEnter(Sender: TObject);
begin
  inherited;
  //

end;

procedure TfrmFirmaKart.cxEditExit(Sender: TObject);
begin
  inherited;
  //

end;

procedure TfrmFirmaKart.cxGridGelislerDblClick(Sender: TObject);
begin
  inherited;
    SeansKart1.Click;
end;

procedure TfrmFirmaKart.cxGridGelislerKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
if Key = 13 then SeansKart1.Click;
end;

procedure TfrmFirmaKart.cxTextEditBKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   inherited;
  // if key  then

   cxButtonEditPropertiesButtonClick(TcxButtonEditKadir(sender),-1);

//   Gelisler(TcxButtonEditKadir(sender).Text);


end;

procedure TfrmFirmaKart.DOGUMTARIHIPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
//
end;

function TfrmFirmaKart.Init(Sender : TObject) : Boolean;
var
  key : word;
begin

  Result := False;
  if not inherited Init(Sender) then exit;
  (*
  if _dosyaNo_ = '' then
  begin
     ado := TADOQuery.Create(nil);
     t2 := ayliktarih(date,t1);
     sql := 'select top 1 dosyaNo from gelisler ' +
            ' where bhdat between ' + QuotedStr(tarihal(t1)) + ' and ' + QuotedStr(tarihal(t2)) +
            ' order by dosyaNo';
     datalar.QuerySelect(ado,sql);
     _dosyaNo_ := ado.Fields[0].AsString;
     ado.Free;
  end;
    *)

  key := 13;
 // SirketKod.EditValue := _dosyaNo_;//datalar.Bilgi.dosyaNo;
  TcxButtonEditKadir(FindComponent('SirketKod')).EditValue := _firmaKod_;
  if TcxButtonEditKadir(FindComponent('SirketKod')).EditingValue  <> ''
  then
   TcxButtonEditKadir(FindComponent('SirketKod')).OnKeyDown(TcxButtonEditKadir(FindComponent('SirketKod')),key,[]);

  Result := True;
end;


procedure TfrmFirmaKart.FirmaSubeBirlestir;
var
  List: TListeAc;
  sKaynakSirketKod, sKaynakSubeKod, sHedefSirketKod, sHedefSubeKod, sTmp1, sTmp2 : String;
  aQuery : TADOQuery;
  iMaxSubeNo: Integer;
begin
  sHedefSirketKod := TcxButtonEditKadir(FindComponent('SirketKod')).EditingValue;
  if IsNull (sHedefSirketKod) then Exit;
  //o �irket d���ndaki ve �ubesi olan �irketler
  List :=
    ListeAcCreate
      ('SIRKETLER_TNM',
       'sirketKod,tanimi,Aktif',
       'SirketKod,Sirket,Durum',
       '50,250,50',
       'SirketKodList',
       '�ubenin Oldu�u Kaynak Firma Se�imi',
       'SirketKod <> ' + SQLValue (sHedefSirketKod)+
       ' and Exists (Select 1 from SIRKET_SUBE_TNM sss where sss.SirketKod = SIRKETLER_TNM.SirketKod)',3,True);
  try
    datalar.ButtonEditSecimlist := List.ListeGetir;
    if length (datalar.ButtonEditSecimlist) <= 0 then Exit;
    sKaynakSirketKod := DATALAR.ButtonEditSecimlist [0].kolon1;
    sTmp1 := DATALAR.ButtonEditSecimlist [0].kolon2;
  finally
    List.Free;
  end;
  //se�ilen kaynak �irketin �ubeleri
  List :=
    ListeAcCreate
      ('SIRKET_SUBE_TNM',
       'subeKod,subeTanim,subeSiciNo',
       '�ube Kodu,�ube,Sicil No',
       '10,80,250',
       'SubeKodList',
       'Ta��n�p Birle�tirilecek �ube Se�imi',
       'SirketKod = ' + SQLValue (sKaynakSirketKod),3,True);
  try
    datalar.ButtonEditSecimlist := List.ListeGetir;
    if length (datalar.ButtonEditSecimlist) <= 0 then Exit;
    sKaynakSubeKod := DATALAR.ButtonEditSecimlist [0].kolon1;
    sTmp2 := DATALAR.ButtonEditSecimlist [0].kolon2;
  finally
    List.Free;
  end;
  if ShowMessageSkin (
       '"' + sTmp1 + '" �irketinin'#13#10+
       '"' + sTmp2 + '" �ubesi'#13#10+
       '"' + TcxTextEditKadir(FindComponent('tanimi')).EditValue + '" �irketi alt�na ta��nacak!'#13#10#13#10+
       'Emin Misiniz ?', '', '', 'conf') <> mrYes then Exit;

  aQuery := TADOQuery.Create (Self);
  try
    aQuery.Connection := DATALAR.ADOConnection2;
    aQuery.SQL.Text := 'Select IsNull ((select max (cast (SubeKod as int)) from SIRKET_SUBE_TNM sb where sb.SirketKod = ' + SQLValue (sHedefSirketKod) + ' and IsNumeric (SubeKod) = 1), -1) + 1 XX';
    aQuery.Open;
    iMaxSubeNo := aQuery.FieldByName('XX').AsInteger;
    sHedefSubeKod := FormatFloat('00', iMaxSubeNo);
    KademeliStoredProcCalistir('sp_SubeSirketiniDegistir', ', ' + SQLValue(sKaynakSirketKod) + ', ' + SQLValue(sKaynakSubeKod) + ', ' + SQLValue(sHedefSirketKod) + ', ' + SQLValue(sHedefSubeKod));
  finally
    aQuery.Free;
  end;
end;

procedure TfrmFirmaKart.TopluPasifYap (const bPasif : boolean);
var
  List: TListeAc;
  sSirketKod, sSubeKod : String;
begin
  sSirketKod := VarToStr (TcxButtonEditKadir(FindComponent('SirketKod')).EditingValue);
  if IsNull (sSirketKod) then Exit;
  //se�ilen kaynak �irketin �ubeleri
  List :=
    ListeAcCreate
      ('SIRKET_SUBE_TNM',
       'subeKod,subeTanim,subeSiciNo',
       '�ube Kodu,�ube,Sicil No',
       '10,80,250',
       'SubeKodList',
       'Personeli ' + IfThen (bPasif, 'Pasif', 'Aktif') + ' Hale Getirilecek �ube Se�imi',
       'SirketKod = ' + SQLValue (sSirketKod),3,True);
  try
    datalar.ButtonEditSecimlist := List.ListeGetir;
    if length (datalar.ButtonEditSecimlist) <= 0 then Exit;
    sSubeKod := DATALAR.ButtonEditSecimlist [0].kolon1;
    if IsNull (sSubeKod) then Exit;
  finally
    List.Free;
  end;
  if not PersonelTopluPasifYap (bPasif, sSirketKod, sSubeKod) then Exit;
end;

procedure TfrmFirmaKart.FormCreate(Sender: TObject);
var
  List : TListeAc;
  SEHIR ,ILCE ,BUCAK ,KOY,MAHALLE,tehlikeSinifi,odeme : TcxImageComboKadir;
  BB : TcxButtonKadir;
begin
  // Burdaki User_ID ve sirketKod base formda dolduruluyor. Visible false (true set etmeyin)
  // E�er kay�t ekledi�iniz tabloda bu alanlar varsa ve bunlar� otomatik set etmek isterseniz
  //tag de�erini burda 0 set edin default -100 d�r -100 obje kay�t i�lemize girmez.
  USER_ID.Tag := 0;
  //SirketKod.Tag := 1;
//  SirketKod.Visible := True;
 // SirketKod.Properties.OnButtonClick := cxButtonEditPropertiesButtonClick;
  //
 _SaveKontrol := True;
  Menu := PopupMenu1;

//  Tag := TagfrmHastaKart;
  ClientHeight := formYukseklik;
  ClientWidth := formGenislik;



  indexFieldName := 'SirketKod';
  TableName := _TableName_;
  Olustur(self,_TableName_,'Firma Tan�m Kart�',22,sqlInsert);

  cxPanel.Visible := True;

  Sayfa3_Kolon3.Width := 0;
  Sayfa3_Kolon2.Width := 0;

  List := ListeAcCreate('SIRKETLER_TNM_view','sirketKod,tanimi,Aktif',
                       'SirketKod,Sirket,Durum',
                       '50,250,50','SirketKod','Firma Listesi','',5,True);

 // List.Where := datalar.sirketlerUserFilter;

  setDataStringB(self,'SirketKod','�irket Kodu',Kolon1,'',80,List,True,nil,'','',True,True,1);

  tehlikeSinifi := TcxImageComboKadir.Create(self);
  tehlikeSinifi.Conn := datalar.ADOConnection2;
  tehlikeSinifi.TableName := 'FirmaTipleri';
  tehlikeSinifi.ValueField := 'kod';
  tehlikeSinifi.DisplayField := 'tanimi';
  tehlikeSinifi.BosOlamaz := False;
  tehlikeSinifi.Filter := '';
  setDataStringKontrol(self,tehlikeSinifi,'FirmaTip','Firma Tipi',kolon1,'',120);


  OrtakEventAta(tehlikeSinifi);



  setDataString(self,'tanimi','Firma Ad�  ',Kolon1,'',350,True);
  setDataString(self,'FaturaUnvan','Fatura Unvan�  ',Kolon1,'',350,True);

  setDataString(self,'ruhsatNo','Ruhsat No  ',Kolon1,'',100,True);
 // setDataStringKontrol(self,NaceKod, 'NaceKod','Nace Kodu  ',Kolon1,'',130);
 // setDataString(self,'anaFaliyet','Firma Ana Faaliye',Kolon1,'',450,True);
 // setDataString(self,'tehlikeSinifi','Tehlike S�n�f�',Kolon1,'',100,True);

 (*
  tehlikeSinifi := TcxImageComboKadir.Create(self);
  tehlikeSinifi.Conn := Datalar.ADOConnection2;
  tehlikeSinifi.TableName := 'TehlikeSiniflari';
  tehlikeSinifi.ValueField := 'TehlikeSinifi';
  tehlikeSinifi.DisplayField := 'Tanimi';
  tehlikeSinifi.BosOlamaz := False;
  tehlikeSinifi.Filter := '';
  setDataStringKontrol(self,tehlikeSinifi,'tehlikeSinifi','Tehlike S�n�f�',kolon1,'',100);
  OrtakEventAta(tehlikeSinifi);
   *)

  setDataString(self,'VD','Vergi Dairesi',Kolon1,'',100,True);
  setDataString(self,'VN','Vergi No',Kolon1,'',100,True);
  setDataString(self,'IsyeriSicilNo','�� Yeri Sicil No',Kolon1,'',100,True);
  setDataString(self,'BolgeMudurlukSicilNo','B�lge M�d. Sicil No.',Kolon1,'',100,True);

  SEHIR := TcxImageComboKadir.Create(self);
  SEHIR.Conn := Datalar.ADOConnection2;
  SEHIR.TableName := 'SKRS_IL_KODLARI';
  SEHIR.ValueField := 'KODU';
  SEHIR.DisplayField := 'ADI';
  SEHIR.BosOlamaz := True;
  SEHIR.Filter := '';
  setDataStringKontrol(self,SEHIR,'SEHIR','�l',kolon1,'',120);
//  OrtakEventAta(SEHIR);
//  setDataStringBLabel(self,'EV_SEHIR',Kolon2,'il',100,' ');

 // ILCE_KODLARI := ListeAcCreate('SKRS_ILCE_KODLARI','KODU,ADI','Kod,Adi','50,100','KODU','�L�ELER',' ILKODU = %s',2);

  ILCE := TcxImageComboKadir.Create(self);
  ILCE.Conn := Datalar.ADOConnection2;
  ILCE.TableName := 'SKRS_ILCE_KODLARI';
  ILCE.ValueField := 'KODU';
  ILCE.DisplayField := 'ADI';
  ILCE.BosOlamaz := True;
//  EV_ILCE.Filter := EV_SEHIR.EditValue;
//  EV_ILCE.Properties.ReadOnly := True;
  setDataStringKontrol(self,ILCE,'ILCE','�l�e',kolon1,'',120);
 // OrtakEventAta(ILCE);
  //  setDataStringB(self,'EV_ILCE','�l�e',Kolon2,'ilce',60,ILCE_KODLARI,false,EV_ILCE,'ADI','EV_SEHIR',false);
//  setDataStringBLabel(self,'EV_ILCE',Kolon2,'ilce',100,' ');

  //BUCAK_KODLARI := ListeAcCreate('SKRS_BUCAK_KODLARI','KODU,ADI','Kod,Adi','50,100','KODU','BUCAKLAR',' ILCEKODU = %s',2);
  BUCAK := TcxImageComboKadir.Create(self);
  BUCAK.Conn := Datalar.ADOConnection2;
  BUCAK.TableName := 'SKRS_BUCAK_KODLARI';
  BUCAK.ValueField := 'KODU';
  BUCAK.DisplayField := 'ADI';
  BUCAK.BosOlamaz := True;

  setDataStringKontrol(self,BUCAK,'BUCAK','Bucak',kolon1,'',120);
 // OrtakEventAta(BUCAK);

//  setDataStringB(self,'EV_BUCAK','Bucak',Kolon2,'bucak',60,BUCAK_KODLARI,false,EV_BUCAK,'ADI','EV_ILCE',false);
//  setDataStringBLabel(self,'EV_BUCAK',Kolon2,'bucak',100,' ');

 // KOY_KODLARI := ListeAcCreate('SKRS_KOY_KODLARI','KODU,ADI','Kod,Adi','50,100','KODU','K�YLER',' BUCAKKODU = %s',2);
  KOY := TcxImageComboKadir.Create(self);
 // EV_KOY.Properties.ReadOnly := True;
  KOY.Conn := Datalar.ADOConnection2;
  KOY.TableName := 'SKRS_KOY_KODLARI';
  KOY.ValueField := 'KODU';
  KOY.DisplayField := 'ADI';
  KOY.BosOlamaz := True;
  setDataStringKontrol(self,KOY,'KOY','K�y�',kolon1,'',120);
 // OrtakEventAta(KOY);
  //  setDataStringB(self,'EV_KOY','K�y�',Kolon2,'koy',60,KOY_KODLARI,false,EV_KOY,'ADI','EV_BUCAK',false);
//  setDataStringBLabel(self,'EV_KOY',Kolon2,'koy',100,' ');

 // MAHALLE_KODLARI := ListeAcCreate('SKRS_MAHALLE_KODLARI','KODU,ADI','Kod,Adi','50,100','KODU','MAHALLELER',' KOYKODU = %s',2);
  MAHALLE := TcxImageComboKadir.Create(self);
//  EV_MAHALLE.Properties.ReadOnly := True;
  MAHALLE.Conn := Datalar.ADOConnection2;
  MAHALLE.TableName := 'SKRS_MAHALLE_KODLARI';
  MAHALLE.ValueField := 'KODU';
  MAHALLE.DisplayField := 'ADI';
  MAHALLE.BosOlamaz := True;
  setDataStringKontrol(self,MAHALLE,'MAHALLE','Mahalle',kolon1,'',120);
 //  OrtakEventAta(MAHALLE);
 // setDataStringB(self,'EV_MAHALLE','Mahalle',Kolon2,'mh',60,MAHALLE_KODLARI,false,EV_MAHALLE,'ADI','EV_KOY',false);
 // setDataStringBLabel(self,'EV_MAHALLE',Kolon2,'mh',100,' ');
  setDataString(self,'SOKAK','Sok./Cad.',Kolon1,'',350,True);
  setDataString(self,'ADRES','Adres Di�er',Kolon1,'',350);
  setDataString(self,'postaKodu','Posta Kodu',Kolon1,'',100);

  setdatastring (self, 'Tel1', 'Telefon 1', Kolon1, '', 100);
  setdatastring (self, 'Tel2', 'Telefon 2', Kolon1, '', 100);
  setdatastring (self, 'Fax', 'Faks', Kolon1, '', 100);
  setdatastring (self, 'Yetkili', 'Yetkili Ki�i', Kolon1, '', 166);
  setdatastring (self, 'yetkiliTel', 'Yetkili Telefon', Kolon1, '', 100);
  setdatastring (self, 'yetkilimail', 'Yetkili EPosta', Kolon1, '', 166);

  (*
  odeme := TcxImageComboKadir.Create(self);
  odeme.Conn := nil;
  odeme.ItemList := '1;Kurum �der,2;Personel �der';
  odeme.Filter := '';
  odeme.BosOlamaz := True;
  setDataStringKontrol(self,odeme,'OdemeKimYapar','��e Giri� �demesini',Kolon1,'',120);
  OrtakEventAta(odeme);
    *)


 // setDataString(self,'EMAIL','E-Posta',Kolon2,'',166);

  tehlikeSinifi := TcxImageComboKadir.Create(self);
  tehlikeSinifi.Conn := Datalar.ADOConnection2;
  tehlikeSinifi.TableName := 'FaturaGonderimTipleri';
  tehlikeSinifi.ValueField := 'kod';
  tehlikeSinifi.DisplayField := 'tanimi';
  tehlikeSinifi.BosOlamaz := False;
  tehlikeSinifi.Filter := '';
  setDataStringKontrol(self,tehlikeSinifi,'FaturaGonderimTipi','Fatura G�nderim Tipi',kolon1,'',100);
  OrtakEventAta(tehlikeSinifi);

  setDataString(self,'IBAN','IBAN',Kolon1,'',166);

  setDataStringKontrol(self,cxFotoPanel , 'cxFotoPanel','',Kolon2,'',110);
  setDataStringKontrol(self,txtAktif , 'Aktif','',Kolon2,'',110);



//  setDataStringKontrol(self,txtTip , 'Tip','',Kolon3,'',110);

  setDataStringBLabel(self,'bosSatir2',sayfa2_Kolon1,'',1);


  addButton(self,nil,'btnSubeler','','Firma WS Eri�im Bilgileri',Kolon3,'',230,ButtonClick);

 // addButton(self,nil,'btnISGEkipleri','','�� Sa�l��� ve G�venli�i Ekipleri',Kolon3,'',230,ButtonClick);

  (*
  addButton(self,nil,'btnSubeGetir','','Ba�ka Firmadan �ube Ta�� (Firma Birle�tir)',Kolon3,'',230,ButtonClick);
  addButton(self,nil,'btnCalismalar','','Firma �al��malar�',Kolon3,'',230,ButtonClick);
  addButton(self,nil,'btnSozlesmeler','','Firma S�zle�meleri',Kolon3,'',230,ButtonClick);
  addButton(self,nil,'btnISGEkipleri','','�� Sa�l��� ve G�venli�i Ekipleri',Kolon3,'',230,ButtonClick);
  addButton(self,nil,'btnEkipmanList','','Firma Ekipman Listesi',Kolon3,'',230,ButtonClick);
  addButton(self,nil,'btnFirmaYetkili','','Firma Yetkili Listesi',Kolon3,'',230,ButtonClick);
  addButton(self,nil,'btnTopluAktif','','Firma Personeli Toplu Aktif Yap',Kolon3,'',230,ButtonClick);
  addButton(self,nil,'btnTopluPasif','','Firma Personeli Toplu Pasif Yap',Kolon3,'',230,ButtonClick);
  *)

 // tableColumnDescCreate;


 // cxpnlHastaGelisler.Align := alBottom;

  SayfaCaption('Firma Bilgileri','','' ,'','');
  Disabled(self,True);

 end;


procedure TfrmFirmaKart.seansGunleriPropertiesEditValueChanged(Sender: TObject);
begin
  inherited;
//  s := seansGunleri.EditingValue;


 // ShowMessage(s,'','','info');
end;

procedure TfrmFirmaKart.cxKaydetClick(Sender: TObject);
var
 B : TcxButtonKadir;
 AktifSirket : integer;
begin
  datalar.KontrolUserSet := False;
  BeginTrans (DATALAR.ADOConnection2);
  try
    case TControl(sender).Tag  of
      sil : begin
              FotoDeleteRecord;
            end;
  kaydet : begin
              if (TcxImageComboKadir(FindComponent('FirmaTip')).EditValue = 1) and
                 (Kart = sql_new)
              then begin
                  AktifSirket := datalar.QuerySelect('select count(*) from SIRKETLER_TNM where FirmaTip = 1').Fields[0].AsInteger;
                  if AktifSirket >= datalar.AktifSirketSayisi
                  Then begin
                     ShowMessageSkin('Merkez Say�n�z A��lm��t�r ',
                                     'Lisans�n�za Merkez Ekletiniz',
                                     'Sistem Y�neticiniz �le �rtibata Ge�iniz','info');
                     exit;
                  end;
              end;
            end;
    end;

    inherited;

    if datalar.KontrolUserSet then exit;
    if not cxKaydetResult then Exit;

    case TControl(sender).Tag  of
 kaydet : begin
           // if TCtoDosyaNo(TcxCustomEdit(FindComponent('TckimlikNo')).EditingValue)
           FotoNewRecord;
           Kart := sql_none;
           if SubeIGUDoktorAtanmismi(TcxButtonEditKadir(FindComponent('SirketKod')).Text) = 0
           Then
            if mrYes = ShowMessageSkin('Doktor Yada �GU atamas� yap�lmayan �ube Var','Tan�mlamak �ster misiniz?','','msg')
            then begin
              B := TcxButtonKadir(FindComponentButtonName('btnSubeler',Self));

              B.Click;
            end;

          end;
    sil : begin
            Kart := sql_delete;
          end;
   yeni : begin
              Kart := sql_new;
              TcxButtonEditKadir(FindComponent('SirketKod')).EditValue := dosyaNoYeniNumaraAl('FN');
              if TcxButtonEditKadir(FindComponent('SirketKod')).EditingValue = '0'
              then begin
                ShowMessageskin('Dosya No Al�namad�','','','info');
              end;
              foto.Picture.Assign(nil);
          end;
    end;
  finally
    if cxKaydetResult then
      CommitTrans (DATALAR.ADOConnection2)
     else
      RollbackTrans (DATALAR.ADOConnection2);
  end;

end;


procedure TfrmFirmaKart.cxButtonCClick(Sender: TObject);
var
 List : TListeAc;
 _L_ : ArrayListeSecimler;
 _name_ : string;
 F : TGirisForm;
 GirisFormRecord : TGirisFormRecord;
begin
  datalar.KontrolUserSet := False;
  inherited;
  if datalar.KontrolUserSet = True then exit;

  if TcxButtonEditKadir(FindComponent('SirketKod')).EditingValue  = ''
  then begin
   ShowMessageSkin('Firma Dosyas� A��lmadan Bu ��lem Kullan�lamaz...','','','info');
   exit;
  end;


  case TControl(sender).Tag  of
    0 : begin
            List := TListeAc.Create(nil);
            List.Kolonlar.Create;
            List.Table := 'ilacListesi';
            List.Kolonlar.Add('barkod');
            List.Kolonlar.Add('ilacAdi');

            List.KolonBasliklari.Create;
            List.KolonBasliklari.Add('Barkod');
            List.KolonBasliklari.Add('�la� Adi');

            List.KolonBasliklari.Create;
            List.TColcount := 2;
            List.TColsW := '100,300';
            List.ListeBaslik := '�la�lar';
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
        end;
    1 : begin
         // post;
         //ShowMessage('�ptal');
        end;
   -1 : begin
             if ADO_Gelisler.FieldByName('TakIpNo').AsString <> ''
             Then Begin
                  ShowMessageskin('Mevcut Takip Numaras� Var , Takip Al�namaz','','','info');
                  exit;
             End;

             if (copy(TcxCustomEdit(FindComponent('KurumTip')).EditingValue,1,1) = '8')
             then begin
                 exit;

             end else
             begin
                F := FormINIT(TagfrmTakipNo,GirisFormRecord,ikEvet,'Takip Al');
                if F <> nil then F.ShowModal;
             end;

        end;
   -2 : begin

        end;


   -3 : begin
         TakipSil('');
        end;
   -4 : begin
         F := FormINIT(TagfrmTakipBilgisiOku,GirisFormRecord);
         if F <> nil then F.ShowModal;
         //TakipBilgisiOkuForm(self);

        end;
   -5 : begin

        end;


   -6 : begin

        end;

 -25 : begin
          F := FormINIT(TagfrmAsiKarti,GirisFormRecord,ikHayir);
          if F <> nil then F.ShowModal;
       end;
 -26 : begin
        // EpikrizYaz(dosyaNo.Text,ADO_Gelisler.FieldByName('gelisNo').AsString,false);
       end;
 -27 : begin

       end;



 -28 : begin
          Application.CreateForm(TfrmSMS, frmSMS);
       //   frmSMS.dosyaNo := DosyaNo.Text;
        //  frmSMS.hasta := txtHastaAdi.Text + ' ' + txtSoyAdi.Text;
          frmSMS.ShowModal;
          frmSMS := nil;
       end;
 -29 : begin
         //HastaRaporlari;
       end;
 -30 : begin
        //  ReceteForm(dosyaNo.Text,_gelisNO_);
       end;
 -31 : begin
        //GelisDuzenle;
       end;
 -32 : begin
          F := FormINIT(TagfrmHastaTetkikEkle,GirisFormRecord);
          if F <> nil then F.ShowModal;
         // TetkikEkle(dosyaNo.Text,_gelisNo_,datalar.HastaBil.Tarih);
       end;
 -33 : begin
         //GelisSil;
       end;

 -35 : begin
          F := FormINIT(TagfrmTaniKarti,GirisFormRecord,ikHayir);
          if F <> nil then F.ShowModal;
       end;

 -36 : begin
          F := FormINIT(TagfrmHastaDiyalizIzlem,GirisFormRecord,ikHayir);
          if F <> nil then F.ShowModal;
       end;


 -50 : begin
          FotoEkle;
       end;

 130 : begin
        //  datalar.HastaBil.dosyaNO := dosyaNo.Text;
         // datalar.HastaBil.gelisNo := _gelisNo_;
          F := FormINIT(TagfrmHastaRecete,GirisFormRecord,ikEvet,'Giri�');
          if F <> nil then F.ShowModal;

       end;
 140 : begin
            F := FormINIT(TagfrmHastaIlacTedavi,GirisFormRecord,ikEvet,'Giri�');
            if F <> nil then F.ShowModal;
      //  IlacTedaviKarti(dosyaNo.Text,_gelisNo_,noktasizTarih(DATALAR.Bilgi.ProvizyonTarihi));
       end;
  end;
end;

end.
