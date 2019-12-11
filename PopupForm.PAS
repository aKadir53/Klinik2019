unit PopupForm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, ComCtrls, jpeg, kadir,kadirType,kadirLabel,
  dxGDIPlusClasses, cxGraphics, cxControls,GirisUnit,KadirMedula3,
  GetFormClass,StrUtils, Adodb,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  Menus, cxButtons, cxGroupBox, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  DB, cxDBData, cxCurrencyEdit, cxGridLevel, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxLabel, cxCheckBox,
  cxImageComboBox, cxMemo,Variants, cxCheckGroup,cxImage,dxLayoutControl,dxLayoutContainer;

type
  TfrmPopup = class(TGirisForm)
    cxPanelBottom: TcxGroupBox;
    btnYes: TcxButton;
    btnIptal: TcxButton;
    cxGroupDoktorlar: TcxGroupBox;
    cxLabel3: TcxLabel;
    cxGrid3: TcxGrid;
    doktorlarGrid: TcxGridDBTableView;
    doktorlarGridkod: TcxGridDBColumn;
    doktorlarGridADI: TcxGridDBColumn;
    cxGridDBBandedTableView5: TcxGridDBBandedTableView;
    cxGridDBBandedColumn14: TcxGridDBBandedColumn;
    cxGridDBBandedColumn15: TcxGridDBBandedColumn;
    cxGridDBBandedColumn16: TcxGridDBBandedColumn;
    cxGridDBBandedColumn17: TcxGridDBBandedColumn;
    cxGridDBBandedColumn18: TcxGridDBBandedColumn;
    cxGridDBBandedTableView6: TcxGridDBBandedTableView;
    cxGridDBBandedColumn19: TcxGridDBBandedColumn;
    cxGridDBBandedColumn20: TcxGridDBBandedColumn;
    cxGridDBBandedTableView7: TcxGridDBBandedTableView;
    cxGridDBBandedTableView8: TcxGridDBBandedTableView;
    cxGridDBBandedColumn21: TcxGridDBBandedColumn;
    cxGridDBBandedColumn22: TcxGridDBBandedColumn;
    cxGridDBBandedColumn23: TcxGridDBBandedColumn;
    cxGridDBBandedColumn24: TcxGridDBBandedColumn;
    cxGridDBBandedColumn25: TcxGridDBBandedColumn;
    cxGridDBBandedColumn26: TcxGridDBBandedColumn;
    cxGridLevel2: TcxGridLevel;
    peryotR: TcxImageComboBox;
    List: TListeAc;
    Olcumler: TcxCheckGroupKadir;
    Grid: TcxGridDBTableView;
    cxGridKadir1Level1: TcxGridLevel;
    cxGridKadir1: TcxGridKadir;
    GridColumn1: TcxGridDBColumn;
    DataSource1: TDataSource;
    txtDVitaminKul: TcxComboBox;
    txtSinekalset: TcxComboBox;
    txtAnemi: TcxCheckGroup;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    T1: TMenuItem;
    N3: TMenuItem;
    E2: TMenuItem;
    ListeAc2: TListeAc;
    procedure txtDozClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure txtMsgEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure SetDataTarih(Tarih : TDate);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxMemoPropertiesChange(Sender: TObject);
    procedure PropertiesEditValueChanged(Sender: TObject);override;
    procedure PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure ButtonClick(Sender: TObject);
    procedure CalismaplaninaAylarikoy;
    procedure cxButtonEditPropertiesButtonClick(Sender: TObject;
       AButtonIndex: Integer);override;
    procedure BeforePost(DataSet: TDataSet);
    procedure NavigatorButtonsButtonClick(Sender: TObject;
      AButtonIndex: Integer; var ADone: Boolean);
    procedure cxButtonCClick(Sender: TObject);
    procedure SablonOlarakKaydet;
    procedure SablondanYukle;


  private
    { Private declarations }
    Fislem_ : integer;
    Fcaption_ : string;
    Fvalue_ : string;
    FFormName_ : string;

  public
    _islem_ :integer;
    _caption_ : string;
    _value_ : string;
    FGirisForm : TGirisForm;
    { Public declarations }

    property islem_ : integer read Fislem_ write Fislem_;
    property caption_ : string read Fcaption_ write Fcaption_;
    property value_ : string read Fvalue_ write Fvalue_;
    property FormName_ : string read FFormName_ write FFormName_;
  end;

  Const
      formGenislik = 310;
      formYukseklik = 150;
      insertCek = 'insert into cari_Cekler (evrakNo,VadeTarihi,sirketKod,TedarikciKod,tutar,Tip,Durum,Tarih,user_create,aciklama) ' +
                  ' values(%s,%s,%s,%s,%g,%s,%s,%s,%s,%s)';

var
  frmPopup: TfrmPopup;
  sql : string;
  DS : TDataSource;

implementation

uses message, data_modul;

{$R *.DFM}
var
   frmTop_ :word = 0;
   frmLeft_ :word = 0;
   mevcutTarih_,txtT_,ReceteTarih , _Tarih_ : TcxDateEditKadir;
   ImageCombo : TcxImageComboBox;
   MemoKalanLen : integer;
   textEdit : TcxTextEdit;
   _sahaDenetim_ : TSahaDenetimler;
   chkEv,chkPlan : TcxCheckBox;
   txtGun : TcxCurrencyEdit;


procedure TfrmPopup.CalismaplaninaAylarikoy;
var
  Combo : TcxImageComboKadir;
begin
  Combo := TcxImageComboKadir.Create(self);
  Combo.Conn := nil;
  Combo.ItemList := 'P;1,;0';
  Combo.Filter := '';
  setDataStringKontrol(self,Combo,'ocak','Ocak',Kolon1,'',50);

  Combo := TcxImageComboKadir.Create(self);
  Combo.Conn := nil;
  Combo.ItemList := 'P;1,;0';
  Combo.Filter := '';
  setDataStringKontrol(self,Combo,'subat','Þubat',Kolon1,'',50);

  Combo := TcxImageComboKadir.Create(self);
  Combo.Conn := nil;
  Combo.ItemList := 'P;1,;0';
  Combo.Filter := '';
  setDataStringKontrol(self,Combo,'mart','Mart',Kolon1,'',50);

  Combo := TcxImageComboKadir.Create(self);
  Combo.Conn := nil;
  Combo.ItemList := 'P;1,;0';
  Combo.Filter := '';
  setDataStringKontrol(self,Combo,'nisan','Nisan',Kolon1,'',50);

  Combo := TcxImageComboKadir.Create(self);
  Combo.Conn := nil;
  Combo.ItemList := 'P;1,;0';
  Combo.Filter := '';
  setDataStringKontrol(self,Combo,'mayis','Mayis',Kolon1,'',50);

  Combo := TcxImageComboKadir.Create(self);
  Combo.Conn := nil;
  Combo.ItemList := 'P;1,;0';
  Combo.Filter := '';
  setDataStringKontrol(self,Combo,'haziran','Haziran',Kolon1,'',50);

  Combo := TcxImageComboKadir.Create(self);
  Combo.Conn := nil;
  Combo.ItemList := 'P;1,;0';
  Combo.Filter := '';
  setDataStringKontrol(self,Combo,'temmuz','Temmuz',Kolon1,'',50);

  Combo := TcxImageComboKadir.Create(self);
  Combo.Conn := nil;
  Combo.ItemList := 'P;1,;0';
  Combo.Filter := '';
  setDataStringKontrol(self,Combo,'agustos','Aðustos',Kolon1,'',50);

  Combo := TcxImageComboKadir.Create(self);
  Combo.Conn := nil;
  Combo.ItemList := 'P;1,;0';
  Combo.Filter := '';
  setDataStringKontrol(self,Combo,'eylul','Eylül',Kolon1,'',50);

  Combo := TcxImageComboKadir.Create(self);
  Combo.Conn := nil;
  Combo.ItemList := 'P;1,;0';
  Combo.Filter := '';
  setDataStringKontrol(self,Combo,'ekim','Ekim',Kolon1,'',50);

  Combo := TcxImageComboKadir.Create(self);
  Combo.Conn := nil;
  Combo.ItemList := 'P;1,;0';
  Combo.Filter := '';
  setDataStringKontrol(self,Combo,'kasim','Kasim',Kolon1,'',50);

  Combo := TcxImageComboKadir.Create(self);
  Combo.Conn := nil;
  Combo.ItemList := 'P;1,;0';
  Combo.Filter := '';
  setDataStringKontrol(self,Combo,'aralik','Aralik',Kolon1,'',50);



  Combo := TcxImageComboKadir.Create(self);
  Combo.Conn := nil;
  Combo.ItemList := 'G;1,;0';
  Combo.Filter := '';
  setDataStringKontrol(self,Combo,'ocak_R','Ocak',Kolon1,'',50);

  Combo := TcxImageComboKadir.Create(self);
  Combo.Conn := nil;
  Combo.ItemList := 'G;1,;0';
  Combo.Filter := '';
  setDataStringKontrol(self,Combo,'subat_R','Þubat',Kolon1,'',50);

  Combo := TcxImageComboKadir.Create(self);
  Combo.Conn := nil;
  Combo.ItemList := 'G;1,;0';
  Combo.Filter := '';
  setDataStringKontrol(self,Combo,'mart_R','Mart',Kolon1,'',50);

  Combo := TcxImageComboKadir.Create(self);
  Combo.Conn := nil;
  Combo.ItemList := 'G;1,;0';
  Combo.Filter := '';
  setDataStringKontrol(self,Combo,'nisan_R','Nisan',Kolon1,'',50);

  Combo := TcxImageComboKadir.Create(self);
  Combo.Conn := nil;
  Combo.ItemList := 'G;1,;0';
  Combo.Filter := '';
  setDataStringKontrol(self,Combo,'mayis_R','Mayis',Kolon1,'',50);

  Combo := TcxImageComboKadir.Create(self);
  Combo.Conn := nil;
  Combo.ItemList := 'G;1,;0';
  Combo.Filter := '';
  setDataStringKontrol(self,Combo,'haziran_R','Haziran',Kolon1,'',50);

  Combo := TcxImageComboKadir.Create(self);
  Combo.Conn := nil;
  Combo.ItemList := 'G;1,;0';
  Combo.Filter := '';
  setDataStringKontrol(self,Combo,'temmuz_R','Temmuz',Kolon1,'',50);

  Combo := TcxImageComboKadir.Create(self);
  Combo.Conn := nil;
  Combo.ItemList := 'G;1,;0';
  Combo.Filter := '';
  setDataStringKontrol(self,Combo,'agustos_R','Aðustos',Kolon1,'',50);

  Combo := TcxImageComboKadir.Create(self);
  Combo.Conn := nil;
  Combo.ItemList := 'G;1,;0';
  Combo.Filter := '';
  setDataStringKontrol(self,Combo,'eylul_R','Eylül',Kolon1,'',50);

  Combo := TcxImageComboKadir.Create(self);
  Combo.Conn := nil;
  Combo.ItemList := 'G;1,;0';
  Combo.Filter := '';
  setDataStringKontrol(self,Combo,'ekim_R','Ekim',Kolon1,'',50);

  Combo := TcxImageComboKadir.Create(self);
  Combo.Conn := nil;
  Combo.ItemList := 'G;1,;0';
  Combo.Filter := '';
  setDataStringKontrol(self,Combo,'kasim_R','Kasim',Kolon1,'',50);

  Combo := TcxImageComboKadir.Create(self);
  Combo.Conn := nil;
  Combo.ItemList := 'G;1,;0';
  Combo.Filter := '';
  setDataStringKontrol(self,Combo,'aralik_R','Aralik',Kolon1,'',50);



end;


procedure TfrmPopup.BeforePost(DataSet: TDataSet);
begin

  if Dataset.Name = 'cxGridHemsireTakipDS'
  then begin
    TcxGridKadir(FindComponent('cxGridHemsireTakip')).Dataset.FieldByName('siraNo').AsString := datalar.SeansBilgi.hizmetSunucuRefNo;
  end
  else
  begin
    cxGridKadir1.Dataset.FieldByName('sirketKod').AsString := datalar.FirmaSubeBilgi.SirketKodu;
    cxGridKadir1.Dataset.FieldByName('subeKod').AsString := datalar.FirmaSubeBilgi.SubeKodu;
  end;



end;

procedure TfrmPopup.ButtonClick(Sender: TObject);
var
  open : TOpenDialog;
  filename : string;
  Jpeg1 : TJPEGImage;
  Image : TcxImage;
  GirisFormRecord : TGirisFormRecord;
  _Sonuc_ : string;
begin
  case TcxButton(Sender).tag of
  -10  : begin
           DurumGoster();
           try
             HastaTakipleriBul(TcxTextEdit(FindComponent('TcKimlikNo')).Text,
                               TcxTextEdit(FindComponent('Tarih1')).Text,
                               TcxTextEdit(FindComponent('Tarih2')).Text
                               );

           finally
             DurumGoster(False);
           end;
         end;

  -11  : begin
             DurumGoster();
             Try
               Application.ProcessMessages;

               if TakipSil_3(datalar.RxHastaTakip.FieldByName('TakipNo').AsString) = '0000'
               Then datalar.RxHastaTakip.Delete;

             Finally
               DurumGoster(False);
             End;


         end;

  -12  : begin
           GirisFormRecord.F_TakipNo_ := datalar.RxHastaTakip.FieldByName('Takipno').AsString;
           GirisFormRecord.F_BasvuruNo_ := datalar.RxHastaTakip.FieldByName('basvuruNo').AsString;
           FGirisForm := FormINIT(TagfrmTakipBilgisiOku,GirisFormRecord);
           if FGirisForm <> nil then FGirisForm.ShowModal;
         end;

    20 : begin
            if mrYes = ShowPopupForm('Risk Bölüm Ekle',yeniRiskBolum,'','RiskTanimEkleForm')
            then
               TcxImageComboKadir(FindComponent('RiskBolum')).Filter := '';
         end;

    21 : begin
            if mrYes = ShowPopupForm('Tehlike Kaynak Ekle',yeniTehlikeKaynak,'','RiskTanimEkleForm')
            then
               TcxImageComboKadir(FindComponent('TehlikeKaynak')).Filter := '';
         end;
    22 : begin
           ShowPopupForm('Tehlike Kaynak Ekle',yeniKKDEkle,'','KKDTanimEkleForm')
        end;
    23 : begin
           ShowPopupForm('Tehlike Ekle',yeniTehlike,'','RiskTanimEkleForm')


        end;
    24 : begin
           if mrYes = ShowPopupForm('Etkilenecekler Ekle',yeniEkilenecekler,'','RiskTanimEkleForm')
           then
             TcxImageComboKadir(FindComponent('Etkilenecekler')).Filter := '';
         end;

    30 : begin
             datalar.Cek.evrakNo := '';
             datalar.Cek.vade := date();
             datalar.Cek.tutar := 0;
             datalar.Cek.sirketKod := '';
             datalar.Cek.tedarikciKod := '';
             datalar.Cek.tip := '';
             datalar.CEk.durum := '';

             if mrYEs = ShowPopupForm('Çek Tanýmla',yeniCek,'')
             then begin
                //evrakNo,VadeTarihi,sirketKod,kimden,TedarikciKod,kime,tutar,Tip,Durum,date_create,user_create

             end;

         end;


  98,99 : begin
          open := TOpenDialog.Create(self);
          try
            if not open.Execute then Exit;
            filename := open.FileName;
            TcxImage(FindComponent('ImageResim')).Picture.LoadFromFile(filename);
            Image := TcxImage(FindComponent('ImageResim'));
            StretchImage(Image,stHerDurumdaStretch,400,300);
            Jpeg1 := TJPEGImage.Create;
            try
              Jpeg1.Assign(Image.Picture.Bitmap);
              TcxImage(FindComponent('ImageResim')).Clear;
              TcxImage(FindComponent('ImageResim')).Picture.Assign(Jpeg1);
            finally
              Jpeg1.Free;
            end;
          finally
            open.Free;
          end;
         end;

   raporAra
        : begin
           try
            if TcxImageComboKadir(FindComponent('RaporTuru')).EditValue = 1
            then
              DataSource1.DataSet := datalar.memDataRaporlar
            else
              DataSource1.DataSet := datalar.memDataRaporlarI;

            _value_ := TcxTextEdit(FindComponent('KisiBilgisi')).EditValue;
            HastaRaporlariBul(_value_,TcxImageComboKadir(FindComponent('RaporTuru')).EditValue);
           finally
           end;
          end;

   raporSistemeAktar
        : begin
            btnYes.Click;
          end;

  -20   : begin
              if varTostr(TcxTextEdit(FindComponent('TakipNo')).EditValue) <> ''
              then begin
                datalar.HastaKabulWS.TakipOkuGiris.takipNo := TcxTextEdit(FindComponent('TakipNo')).EditValue;
                datalar.HastaKabulWS.TakipOkuGiris.saglikTesisKodu := datalar._kurumKod;
                datalar.HastaKabulWS.KabulOku;
                if (datalar.HastaKabulWS.Takip.sonucKodu <> '0000')  and (datalar.HastaKabulWS.Takip.takipNo = '')
                then begin
                  TcxTextEdit(FindComponent('TakipNo')).EditValue := '';
                  TcxTextEdit(FindComponent('BasvuruNo')).EditValue := '';
                end
                else
                 ShowmessageSkin('Takip Meduladan Silinmeden Bu iþlem gerçekleþtirilmez',datalar.HastaKabulWS.Takip.sonucMesaji,'','info');
              end;
          end;
  -30   : begin
             if varToSTr(TcxTextEdit(FindComponent('sysTakipNo')).EditValue) <> ''
             Then begin
               SysTakipNoSorgula(TcxTextEdit(FindComponent('sysTakipNo')).EditValue, _Sonuc_);
               if Pos('E1014', _Sonuc_) > 0
               Then
                 TcxTextEdit(FindComponent('sysTakipNo')).EditValue := ''
               Else
                ShowMessageSkin('Sys Takip No Silinmeden Bu iþlem Yapýlamaz','','','info');
             end;
          end;

  end;





end;


procedure TfrmPopup.PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
 L : ArrayListeSecimler;

begin

  if TControl(sender).Name = 'raporTakipNo'
  Then begin
   // List.KaynakTableTip := tpTable;
   // List.Table := '(select raporTakipNo,baslangicTarihi,bitisTarihi,seansSayi tanimi from Raporlar where dosyaNo = ' + QuotedStr(_value_) + ' ) t';

    L := TLisTeAc(FindComponent('ilacList')).ListeGetir;
   // L := List.ListeGetir;
    if Length(L) = 0 then exit;
    TcxButtonEditKadir(FindComponent('RaporTakip')).EditValue := L[0].Kolon1;
  end;

  if TControl(sender).Name = 'KKD'
  Then begin
    List.KaynakTableTip := tpTable;
    List.Table := 'KKD';
    L := List.ListeGetir;
    if Length(L) = 0 then exit;
    TcxButtonEditKadir(FindComponent('KKD')).EditValue := L[0].Kolon2;
  end;


  if TControl(sender).Name = 'VucutKisim'
  Then begin
    List.KaynakTableTip := tpTable;
    List.Table := 'Uzuvlar';
    L := List.ListeGetir;
    if Length(L) = 0 then exit;
    TcxButtonEditKadir(FindComponent('VucutKisim')).EditValue := L[0].Kolon2;
  end;

  if TControl(sender).Name = 'VucutUzuv'
  Then begin
    List.KaynakTableTip := tpTable;
    List.Table := 'Uzuvlar';
    L := List.ListeGetir;
    if Length(L) = 0 then exit;
    TcxButtonEditKadir(FindComponent('VucutUzuv')).EditValue := L[0].Kolon2;
  end;


  if TControl(sender).Name = 'Risk_tanimi'
  Then begin
    List.KaynakTableTip := tpTable;
    List.Table := 'RDS_Risk';
    L := List.ListeGetir;
    if Length(L) = 0 then exit;
    TcxImageComboKadir(FindComponent('Risk_tanimi')).EditValue := L[0].Kolon2;
  end;

  if TControl(sender).Name = 'Tehlike'
  Then begin
    if datalar.Risk.SektorId  = ''
    then begin
     List.KaynakTableTip := tpTable;
     List.Table := 'RDS_Tehlike';
    end
    else begin
      List.KaynakTableTip := tpSp;
      List.Table := 'select 0 kod,Tehlike tanimi from RDS_RiskKaynakSektorEslesmeTablosu ES ' +
                    'join RDS_TehlikeKaynak TK on TK.kod = ES.TehlikeKaynagi ' +
                    'where TehlikeKaynagi = ' + vartoStr(TcxImageComboKadir(FindComponent('TehlikeKaynak')).EditingValue);

    end;
    L := List.ListeGetir;
    if Length(L) = 0 then exit;
    TcxImageComboKadir(FindComponent('Tehlike')).EditValue := L[0].Kolon2;
  end;

end;


procedure TfrmPopup.txtDozClick(Sender: TObject);
begin
   TcxCurrencyEdit(FindComponent('Doz1')).Value := strtoint(TcxCurrencyEdit(FindComponent('Doz')).Text[1]);
   TcxCurrencyEdit(FindComponent('Doz2')).Value := strtoint(TcxCurrencyEdit(FindComponent('Doz')).Text[3]);
end;

procedure TfrmPopup.SablondanYukle;
var
  sql : string;
  ado : TADOQuery;
  L : ArrayListeSecimler;
begin

   L := ListeAc2.ListeGetir;

   if L[0].kolon1 <> ''
   Then Begin
     ado := TADOQuery.Create(nil);
     ado.Connection := datalar.ADOConnection2;
     try
        datalar.ADOConnection2.BeginTrans;
       try
           sql := 'select * from IlacRaporTeshislerSablon where sablonId = ' + L[0].kolon1;
           datalar.QuerySelect(ado,sql);
           while not ado.Eof do
           Begin
             TcxGridKadir(FindComponent('cxGridTeshis')).Dataset.Append;
             TcxGridKadir(FindComponent('cxGridTeshis')).Dataset.FieldByName('RaporSira').AsString := datalar.RaporBilgisi.sira;

             TcxGridKadir(FindComponent('cxGridTeshis')).Dataset.FieldByName('baslangicTarihi').AsDateTime := date;
             TcxGridKadir(FindComponent('cxGridTeshis')).Dataset.FieldByName('bitisTarihi').AsDateTime := date;

             TcxGridKadir(FindComponent('cxGridTeshis')).Dataset.FieldByName('teshisKodu').AsString := ado.FieldByName('teshisKodu').AsString;
             TcxGridKadir(FindComponent('cxGridTeshis')).Dataset.FieldByName('ICD10Kodu').AsString := ado.FieldByName('ICD10Kodu').AsString;
             TcxGridKadir(FindComponent('cxGridTeshis')).Dataset.Post;
             ado.Next;
           End;

           sql := 'select * from IlacRaporEtkenMaddelerSablon where sablonId = ' + L[0].kolon1;
           datalar.QuerySelect(ado,sql);
           while not ado.Eof do
           Begin
             TcxGridKadir(FindComponent('cxGridEtkenMadde')).Dataset.Append;
             TcxGridKadir(FindComponent('cxGridEtkenMadde')).Dataset.FieldByName('RaporSira').AsString := datalar.RaporBilgisi.sira;
             TcxGridKadir(FindComponent('cxGridEtkenMadde')).Dataset.FieldByName('etkenMaddeKodu').AsString := ado.FieldByName('etkenMaddeKodu').AsString;
             TcxGridKadir(FindComponent('cxGridEtkenMadde')).Dataset.FieldByName('etkenMaddeAdi').AsString := ado.FieldByName('etkenMaddeAdi').AsString;
             TcxGridKadir(FindComponent('cxGridEtkenMadde')).Dataset.FieldByName('kullanimDoz1').AsString := ado.FieldByName('kullanimDoz1').AsString;
             TcxGridKadir(FindComponent('cxGridEtkenMadde')).Dataset.FieldByName('kullanimDoz2').AsString := ado.FieldByName('kullanimDoz2').AsString;
             TcxGridKadir(FindComponent('cxGridEtkenMadde')).Dataset.FieldByName('kullanimDozBirim').AsString := ado.FieldByName('kullanimDozBirim').AsString;
             TcxGridKadir(FindComponent('cxGridEtkenMadde')).Dataset.FieldByName('kullanimPeriyot').AsString := ado.FieldByName('kullanimPeriyot').AsString;
             TcxGridKadir(FindComponent('cxGridEtkenMadde')).Dataset.FieldByName('kullanimPeriyotBirim').AsString := ado.FieldByName('kullanimPeriyotBirim').AsString;
             TcxGridKadir(FindComponent('cxGridEtkenMadde')).Dataset.Post;
             ado.Next;
           End;

           sql := 'select * from IlacRaporAciklamaSablon where sablonId = ' + L[0].kolon1;
           datalar.QuerySelect(ado,sql);
           datalar.QueryExec('update Raporlar set ' +
                             'aciklama = ' + QuotedStr(ado.FieldByName('aciklama').AsString) +
                             'where sira = ' + datalar.RaporBilgisi.sira);

          TcxMemo(FindComponent('aciklama')).EditValue := ado.FieldByName('aciklama').AsString;
         datalar.ADOConnection2.CommitTrans;
       except on e : exception do
         begin
          datalar.ADOConnection2.RollbackTrans;
          ShowMessageSkin(e.message,'','','info');
         end;
       end;
     finally
       ado.Free;
     end;

   End;

//   L.Free;
end;

procedure TfrmPopup.SablonOlarakKaydet;
var
  sql , sablon , id, idd ,doz1,doz2 ,peryot: string;
begin
   sablon := InputBox('Teþhis , Etken Madde Þablon','Þablon Tanýmý Giriniz','Sablon1');
   if sablon <> ''
   then begin
     datalar.ADOConnection2.BeginTrans;

     try
       sql := 'insert into IlacRaporSablon(SablonTanimi) ' +
              'values ( ' + QuotedStr(sablon) + ') select SCOPE_IDENTITY() as id ';

       id := datalar.QuerySelect(sql).fieldbyname('id').AsString;

       TcxGridKadir(FindComponent('cxGridTeshis')).Dataset.First;
       while not TcxGridKadir(FindComponent('cxGridTeshis')).Dataset.Eof do
       begin
         sql := 'insert into IlacRaporTeshislerSablon (sablonId,teshisKodu,ICD10Kodu) ' +
                'values(' + id + ',' +
                QuotedStr(TcxGridKadir(FindComponent('cxGridTeshis')).Dataset.FieldByName('teshisKodu').AsString) + ',' +
                QuotedStr(TcxGridKadir(FindComponent('cxGridTeshis')).Dataset.FieldByName('ICD10Kodu').AsString) + ')';
         datalar.QueryExec(sql);
         TcxGridKadir(FindComponent('cxGridTeshis')).Dataset.Next;
       end;


       TcxGridKadir(FindComponent('cxGridEtkenMadde')).Dataset.First;
       while not TcxGridKadir(FindComponent('cxGridEtkenMadde')).Dataset.Eof do
       begin
         doz1 := ifThen(TcxGridKadir(FindComponent('cxGridEtkenMadde')).Dataset.FieldByName('kullanimDoz1').AsString = '','1',TcxGridKadir(FindComponent('cxGridEtkenMadde')).Dataset.FieldByName('kullanimDoz1').AsString);
         doz2 := ifThen(TcxGridKadir(FindComponent('cxGridEtkenMadde')).Dataset.FieldByName('kullanimDoz2').AsString = '','1',TcxGridKadir(FindComponent('cxGridEtkenMadde')).Dataset.FieldByName('kullanimDoz2').AsString);
         peryot := ifThen(TcxGridKadir(FindComponent('cxGridEtkenMadde')).Dataset.FieldByName('kullanimPeriyot').AsString = '','3',TcxGridKadir(FindComponent('cxGridEtkenMadde')).Dataset.FieldByName('kullanimPeriyot').AsString);

         sql := 'insert into IlacRaporEtkenMaddelerSablon (sablonId,etkenMaddeKodu,etkenMaddeAdi,kullanimDoz1,' +
                ' kullanimDoz2,kullanimDozBirim,kullanimPeriyot,kullanimPeriyotBirim) ' +
                'values(' + id + ',' +
                QuotedStr(TcxGridKadir(FindComponent('cxGridEtkenMadde')).Dataset.FieldByName('etkenMaddeKodu').AsString) + ',' +
                QuotedStr(TcxGridKadir(FindComponent('cxGridEtkenMadde')).Dataset.FieldByName('etkenMaddeAdi').AsString) +  ',' +
                doz1 + ',' +
                doz2 + ',' +
                QuotedStr(TcxGridKadir(FindComponent('cxGridEtkenMadde')).Dataset.FieldByName('kullanimDozBirim').AsString) + ',' +
                peryot + ',' +
                QuotedStr(TcxGridKadir(FindComponent('cxGridEtkenMadde')).Dataset.FieldByName('kullanimPeriyotBirim').AsString) +  ')';
         datalar.QueryExec(sql);
         TcxGridKadir(FindComponent('cxGridEtkenMadde')).Dataset.Next;
       end;

       sql := 'insert into IlacRaporAciklamaSablon (sablonId,Aciklama) ' +
              'values(' + id + ',' +
              QuotedStr(varToStr(TcxMemo(FindComponent('aciklama')).EditValue)) + ')';
       datalar.QueryExec(sql);

       datalar.ADOConnection2.CommitTrans;
       ShowMessageSkin('Þablon Kayýt Edildi','','','info');

     except on e : Exception do
      begin
        ShowMessageSkin(e.Message,'','','info');
        datalar.ADOConnection2.RollbackTrans;
      end;
     end;

   end;


end;


procedure TfrmPopup.SetDataTarih(Tarih : TDate);
var
   Year, Month, Day: Word;
begin
  mevcutTarih_.Date := Tarih;//TarihYap(Datalar.SeansBilgi.islemTarihi);
  DecodeDate(mevcutTarih_.Date, Year, Month, Day);
  txtT_.Properties.MinDate := EncodeDate(Year, Month, 1);
  txtT_.Properties.MaxDate := EncodeDate(Year, Month, MonthDays[IsLeapYear(Year), Month]);
  txtT_.Date := txtT_.Properties.MaxDate;//date;
end;

procedure TfrmPopup.FormClose(Sender: TObject; var Action: TCloseAction);
var
  xSahaDenetimVeri : TSahaDenetimler;
  TopluDataset : TDataSetKadir;
  sql : String;
  _record_ : Pointer;
  Label Don;
begin

  if TfrmPopup(self).FGirisForm <> nil
  Then
  if TfrmPopup(self).FGirisForm.Name = 'frmKanTetkikTakipDegerlendir'
  Then begin
      case TfrmPopup(self).islem_ of
        DiyalizIzlemDVitamin : begin
                                  FGirisForm._value_ := txtDVitaminKul.EditValue;
                               end;
        DiyalizIzlemAnemi : begin
                             FGirisForm._value_ := txtAnemi.EditValue;
                            end;
       DiyalizIzlemCinacalset : begin
                                  FGirisForm._value_ := txtSinekalset.EditValue;
                                end;

      end;

      exit;
  end;

  if TfrmPopup(self).ModalResult = mrYes
  then
  case TfrmPopup(self).islem_ of

   raporAra          :
           begin
             //DS.Free;
           end;

   SKSindikatorSorgu :
            begin
                DurumGoster(True,False,'Ýndikatörler Sorgulanýyor , Lütfen Bekleyiniz');
                try
                  sql := 'exec sp_istatistikSKS ' + TcxDateEditKadir(FindComponent('SKSSorguIlkTarih')).GetSQLValue + ',' +
                                                    TcxDateEditKadir(FindComponent('SKSSorguSonTarih')).GetSQLValue + ',' +
                                                    QuotedStr(datalar.AktifSirket);
                  TopluDataset.Dataset0 := datalar.QuerySelect(sql);

                  sql := 'exec sp_istatistikSKSHastalar ' + TcxDateEditKadir(FindComponent('SKSSorguIlkTarih')).GetSQLValue + ',' +
                                                            TcxDateEditKadir(FindComponent('SKSSorguSonTarih')).GetSQLValue + ',' +
                                                            QuotedStr(datalar.AktifSirket);
                  TopluDataset.Dataset1 := datalar.QuerySelect(sql);


                  PrintYap('900','Sks Ýndikatör Sorgula','',TopluDataset,pTNone);

                finally
                      DurumGoster(False);
                end;

            end;

      SeansTarihiUpdate   :
            begin
              if TfrmPopup(self).ModalResult = mrYes
              then
               datalar.SeansBilgi.islemTarihi := TcxDateEdit(FindComponent('mevcutTarih_')).text;
               datalar.SeansBilgi.doktor := TcxImageComboBox(FindComponent('Doktor')).EditValue;
               datalar.SeansBilgi.hemsire := TcxImageComboBox(FindComponent('hemsire')).EditValue;
               datalar.SeansBilgi.raporTakipNo := TcxButtonEditKadir(FindComponent('raporTakipNo')).EditValue;
               datalar.SeansBilgi.Durum := TcxCheckBox(FindComponent('Durum')).EditValue;
              // datalar.SeansBilgi.KanAlimi := TcxCheckBox(FindComponent('KanAlindimi')).EditValue;
               datalar.SeansBilgi.DiyalizorCinsi := TcxImageComboKadir(FindComponent('DiyalizorCinsi')).EditValue;
               datalar.SeansBilgi.DiyalizorTipi := TcxImageComboKadir(FindComponent('DiyalizorTipi')).EditValue;
               datalar.SeansBilgi.Diyalizor := TcxImageComboKadir(FindComponent('Diyalizor')).EditValue;
               datalar.SeansBilgi.Diyalizat := TcxImageComboKadir(FindComponent('D')).EditValue;
               datalar.SeansBilgi.GirisYolu := TcxImageComboKadir(FindComponent('GIRISYOLU')).EditValue;
               datalar.SeansBilgi.YA := TcxComboBox(FindComponent('YA')).EditValue;
               datalar.SeansBilgi.HeparinTip := TcxComboBox(FindComponent('HEPARINTIP')).EditValue;
               datalar.SeansBilgi.Heparin := TcxComboBox(FindComponent('HEPARIN')).EditValue;
               datalar.SeansBilgi.HCOOO := TcxComboBox(FindComponent('HCOOO')).EditValue;
               datalar.SeansBilgi.APH := TcxComboBox(FindComponent('APH')).EditValue;
               datalar.SeansBilgi.Na := TcxComboBox(FindComponent('Na')).EditValue;
               datalar.SeansBilgi.Kilo := TcxCurrencyEdit(FindComponent('Kilo')).EditValue;
               datalar.SeansBilgi.girisKilo := TcxCurrencyEdit(FindComponent('girisKilo')).EditValue;
               datalar.SeansBilgi.cikisKilo := TcxCurrencyEdit(FindComponent('cikisKilo')).EditValue;
               datalar.SeansBilgi.Seans := TcxComboBox(FindComponent('seans')).EditValue;
               datalar.SeansBilgi.MakinaNo := TcxTextEdit(FindComponent('makinaNo')).EditValue;
               datalar.SeansBilgi.Igne := TcxComboBox(FindComponent('Igne')).EditValue;
               datalar.SeansBilgi.IgneV := TcxComboBox(FindComponent('IgneV')).EditValue;
               datalar.SeansBilgi.HeparinUyg := TcxTextEdit(FindComponent('HEPARINUYG')).EditValue;
               datalar.SeansBilgi.AldigiKilo := TcxCurrencyEdit(FindComponent('aldigiKilo')).EditValue;
               datalar.SeansBilgi.CekilecekSivi := TcxCurrencyEdit(FindComponent('CEKILECEKSIVI')).EditValue;
               datalar.SeansBilgi.VerilecekSivi := TcxCurrencyEdit(FindComponent('verilecekSivi')).EditValue;
               datalar.SeansBilgi.UF := TcxCurrencyEdit(FindComponent('UF')).EditValue;
               datalar.SeansBilgi.hemsireNot := TcxTextEdit(FindComponent('hekimGozlemDdiger')).EditValue;
               datalar.SeansBilgi.SeansSure := TcxTextEdit(FindComponent('DIYALIZSURESI')).EditValue;
            end;

      raporUpdate,raporInsert :
           begin
               datalar.RaporBilgisi.raporNo := TcxTextEdit(FindComponent('raporNo')).EditValue;
               datalar.RaporBilgisi.raporTarihi := TcxDateEditKadir(FindComponent('raporTarihi')).GetValue;
               datalar.RaporBilgisi.Turu := TcxImageComboKadir(FindComponent('turu')).EditValue;
               datalar.RaporBilgisi.tedaviRaporTuru := varToStr(TcxImageComboKadir(FindComponent('tedaviRaporTuru')).EditValue);
               datalar.RaporBilgisi.verenTesisKodu :=  TcxTextEdit(FindComponent('verenTesisKodu')).EditValue;
               datalar.RaporBilgisi.duzenlemeTuru :=  TcxImageComboKadir(FindComponent('duzenlemeTuru')).EditValue;
               datalar.RaporBilgisi.baslangicTarihi :=   TcxDateEditKadir(FindComponent('baslangicTarihi')).GetValue;
               datalar.RaporBilgisi.bitisTarihi :=  TcxDateEditKadir(FindComponent('bitisTarihi')).GetValue;
               datalar.RaporBilgisi.protokolNo :=  TcxTextEdit(FindComponent('protokolNo')).EditValue;
               datalar.RaporBilgisi.aciklama :=  varToStr(TcxTextEdit(FindComponent('aciklama')).EditValue);
               datalar.RaporBilgisi.duzenleyenDoktor :=  TcxImageComboKadir(FindComponent('duzenleyenDoktor')).EditValue;
               datalar.RaporBilgisi.raporTakipNo := TcxTextEdit(FindComponent('raporTakipNo')).EditValue;
           end;

      SeansDoktorUpdate :
            begin
              //datalar.SeansBilgi.drTescilNo := TcxTextEdit(FindComponent('doktor')).EditValue;
              datalar.SeansBilgi.doktor := TcxTextEdit(FindComponent('doktor')).EditValue;
            end;
      SeansInsert :
            begin
              datalar.SeansOlusturPrm.ilkSeansTarihi := TcxDateEdit(FindComponent('mevcutTarih_')).EditValue;
              datalar.SeansOlusturPrm.sonSeansTarihi := TcxDateEdit(FindComponent('txtT_')).EditValue;
              datalar.SeansOlusturPrm.gunSayisi := TcxCurrencyEdit(FindComponent('txtGun')).EditValue;
    //          datalar.SeansOlusturPrm.HizmetTip := TcxCheckBox(FindComponent('chkEv')).EditValue;
              datalar.SeansOlusturPrm.araSeans := TcxCheckBox(FindComponent('chkPlan')).EditValue;
              datalar.SeansOlusturPrm.SeansKodu := varToStr(TcxImageComboKadir(FindComponent('HizmetKod')).EditValue);
            end;
      ReceteIlacEkle,ReceteIlacDuzenle :
            begin

               if (TcxTextEdit(FindComponent('doz1')).Text <> '') and
                  (TcxTextEdit(FindComponent('doz2')).Text <> '') and
                  (TcxCurrencyEdit(FindComponent('adet')).Text <> '') and
                  (TcxCurrencyEdit(FindComponent('adet')).EditValue <> 0)
                then begin
                  datalar.ReceteSatir.barkod := TcxTextEdit(FindComponent('code')).EditValue;
                  datalar.ReceteSatir.barkodadi := TcxLabel(FindComponent('Label'+'code')).Caption;
                  datalar.ReceteSatir.kutuadet := TcxCurrencyEdit(FindComponent('adet')).EditValue;
                  datalar.ReceteSatir.peryot := TcxComboBox(FindComponent('peryotR')).EditValue;
                  datalar.ReceteSatir.peryotAdet := TcxCurrencyEdit(FindComponent('Padet')).EditValue;
                  datalar.ReceteSatir.doz := TcxTextEdit(FindComponent('doz')).EditValue;
                  datalar.ReceteSatir.doz1 := TcxCurrencyEdit(FindComponent('doz1')).EditValue;
                  datalar.ReceteSatir.doz2 := TcxCurrencyEdit(FindComponent('doz2')).EditValue;
                  datalar.ReceteSatir.kulyol := TcxTextEdit(FindComponent('kulYol')).EditValue;
                end
                else
                begin
                   //ShowMessageSkin(TcxLabel(FindComponent('Label'+'code')).Caption + ' için doz veya adet bilgisi girilmemiþ','','','info');
                   TcxTextEdit(FindComponent('doz')).SetFocus;
                   raise Exception.Create(TcxLabel(FindComponent('Label'+'code')).Caption + ' için doz veya adet bilgisi girilmemiþ');

                 // exit;
                end;


            end;
      ReceteAckEkle,ReceteAckDuzenle,ReceteIlacAckDuzenle,ReceteIlacAckEkle :
            begin
              datalar.ReceteAciklama.ackKod := StringReplace(trim(copy(TcxComboBox(FindComponent('ackKodu')).EditValue,1,2)),'-','',[rfReplaceAll]);
              datalar.ReceteAciklama.ack := TcxTextEdit(FindComponent('ack')).EditValue;
            end;
      ReceteYeni,ReceteDuzenle :
            begin

              datalar.YeniRecete.Tarih := TcxDateEdit(FindComponent('ReceteTarih')).Text;
              datalar.YeniRecete.ReceteTuru := TcxImageComboBox(FindComponent('ReceteTuru')).EditValue;
              datalar.YeniRecete.ReceteAltTuru := TcxImageComboBox(FindComponent('ReceteAltTuru')).EditValue;
              datalar.YeniRecete.doktor := TcxTextEditKadir(FindComponent('kod')).EditValue;
              datalar.YeniRecete.doktorAdi := TcxLabel(FindComponent('Labelkod')).Caption;
              datalar.YeniRecete.protokolNo := TcxTextEditKadir(FindComponent('ProtokolNo')).EditValue;
              datalar.YeniRecete.takipNo := TcxTextEditKadir(FindComponent('eReceteNo')).EditValue;
            end;
      ReceteyiSablonKaydet :
            begin
               datalar.YeniRecete.sablonAdi := TcxTextEditKadir(FindComponent('sablonAdi')).EditValue;
            end;
      TeleEkgDuzenle :
            begin
              datalar.TeleEkg.Tarih := TcxDateEdit(FindComponent('Tarih')).Date;
              datalar.TeleEkg.ack := TcxTextEdit(FindComponent('islemAciklamasi')).Text;
            end;
      gdgelisDuzenle :
            begin
              datalar.GelisDuzenleRecord.TedaviTuru := TcxImageComboKadir(FindComponent('TEDAVITURU')).EditValue;
              datalar.GelisDuzenleRecord.TakipNo := TcxTextEdit(FindComponent('TakipNo')).EditValue;
              datalar.GelisDuzenleRecord.GirisTarihi := TcxTextEdit(FindComponent('GirisTarihi')).EditValue;
              datalar.GelisDuzenleRecord.doktor := TcxImageComboKadir(FindComponent('Doktor')).EditValue;
              datalar.GelisDuzenleRecord.BransKodu := TcxTextEdit(FindComponent('BransKodu')).EditValue;
              datalar.GelisDuzenleRecord.ProtokolNo := TcxTextEdit(FindComponent('protokolNo')).EditValue;
            end;
       gdgelisAc :
            begin
              datalar.GelisDuzenleRecord.GirisTarihi := TcxTextEdit(FindComponent('GirisTarihi')).EditValue;
              datalar.GelisDuzenleRecord.TedaviTuru := TcxImageComboKadir(FindComponent('TEDAVITURU')).EditValue;
              datalar.GelisDuzenleRecord.ProtokolNo := TcxTextEdit(FindComponent('protokolNo')).EditValue;
              datalar.GelisDuzenleRecord.ProtokolNoGuncelle := TcxCheckBox(FindComponent('ProtokolNoGuncelle')).EditValue;
              if Assigned(FindComponent('Doktor'))
              Then
               datalar.doktorKodu := TcxImageComboKadir(FindComponent('Doktor')).EditValue;
            end;
       gdPeryodikgelisAc :
            begin
              datalar.GelisDuzenleRecord.GirisTarihi := TcxTextEdit(FindComponent('GirisTarihi')).EditValue;
              datalar.GelisDuzenleRecord.TedaviTuru := TcxImageComboKadir(FindComponent('TEDAVITURU')).EditValue;

              if Assigned(FindComponent('Doktor'))
              Then
               datalar.doktorKodu := TcxImageComboKadir(FindComponent('Doktor')).EditValue;

               datalar.GelisDuzenleRecord.Tetkikler := TcxCheckGroupKadir(FindComponent('tetkikIstemGrupSablon')).getItemCheckString;

            end;
       hastaGelisAc :
            begin
                datalar.GelisDuzenleRecordK.GirisTarihi := TcxTextEdit(FindComponent('BHDAT')).EditValue;
                datalar.GelisDuzenleRecordK.TedaviTuru := TcxImageComboKadir(FindComponent('TEDAVITURU')).EditValue;
             //   datalar.GelisDuzenleRecordK.ProtokolNo := TcxTextEdit(FindComponent('protokolNo')).EditValue;
             //   datalar.GelisDuzenleRecord.ProtokolNoGuncelle := TcxCheckBox(FindComponent('ProtokolNoGuncelle')).EditValue;
                datalar.GelisDuzenleRecordK.doktor := TcxImageComboKadir(FindComponent('Doktor')).EditValue;
                datalar.GelisDuzenleRecordK.TedaviYontemi := TcxImageComboKadir(FindComponent('diyalizTedaviYontemi')).EditValue;

              //  if Assigned(FindComponent('Doktor'))
              //  Then
               //  datalar.doktorKodu := TcxImageComboKadir(FindComponent('Doktor')).EditValue;

            end;
      hastaGelisDuzenle :
            begin
              datalar.GelisDuzenleRecordK.TedaviTuru := TcxImageComboKadir(FindComponent('TEDAVITURU')).EditValue;
              datalar.GelisDuzenleRecordK.TedaviYontemi := TcxImageComboKadir(FindComponent('diyalizTedaviYontemi')).EditValue;
              datalar.GelisDuzenleRecordK.TakipNo := TcxTextEdit(FindComponent('TakipNo')).EditValue;
              datalar.GelisDuzenleRecordK.basvuruNo := TcxTextEdit(FindComponent('BasvuruNo')).EditValue;
              datalar.GelisDuzenleRecordK.GirisTarihi := TcxTextEdit(FindComponent('GirisTarihi')).EditValue;
              datalar.GelisDuzenleRecordK.CikisTarih := TcxTextEdit(FindComponent('CikisTarihi')).EditValue;
              datalar.GelisDuzenleRecordK.doktor := TcxImageComboKadir(FindComponent('Doktor')).EditValue;
              datalar.GelisDuzenleRecordK.BransKodu := TcxImageComboKadir(FindComponent('SERVIS')).EditValue;
              datalar.GelisDuzenleRecordK.TaburcuKodu := TcxImageComboKadir(FindComponent('Taburcu')).EditValue;
              datalar.GelisDuzenleRecordK.Yupass := TcxTextEdit(FindComponent('Yupass')).EditValue;
              datalar.GelisDuzenleRecordK.sysTakipNo := TcxTextEdit(FindComponent('sysTakipNo')).EditValue ;
            end;

       PrgSifre :
           begin
             if TcxTextEdit(FindComponent('MevcutSifre')).EditValue <> DATALAR.usersifre then
             begin
               ShowMessageSkin('Mevcut þifre hatalý!','', '', 'info');
               Action := caNone;
             end
             else if TcxTextEdit(FindComponent('YeniSifre')).EditValue <>
               TcxTextEdit(FindComponent('YeniSifreTekrar')).EditValue then
             begin
               ShowMessageSkin('Yeni þifre ve tekrar giriþleri uyumsuz', '', '', 'info');
               Action := caNone;
             end
             else if not SifreGecerliMi (TcxTextEdit(FindComponent('YeniSifre')).EditValue, 6, 1, 0, 0, 1) then
             begin
               Action := caNone;
             end;
             datalar.SifreDegistir.Sifre := TcxTextEdit(FindComponent('YeniSifre')).EditValue;
           end;

       userSifre :
           begin
               if TcxTextEdit(FindComponent('YeniSifre')).EditValue <>
                TcxTextEdit(FindComponent('YeniSifreTekrar')).EditValue then
              begin
                ShowMessageSkin('Yeni þifre ve tekrar giriþleri uyumsuz', '', '', 'info');
                Action := caNone;
              end
              else
              datalar.SifreDegistir.Sifre := TcxTextEdit(FindComponent('YeniSifre')).EditValue;
           end;


       yeniGozlem, GozlemDuzenle :
           begin
             xSahaDenetimVeri.DenetimTarihi := TcxTextEdit(FindComponent('DenetimTarihi')).EditValue;
             xSahaDenetimVeri.FirmaKod := TcxTextEdit(FindComponent('FirmaKodu')).EditValue;
             xSahaDenetimVeri.SubeKod := TcxTextEdit(FindComponent('SubeKod')).EditValue;
             xSahaDenetimVeri.KullaniciAdi := TcxTextEdit(FindComponent('Kullanici')).EditValue;
             xSahaDenetimVeri.DenetimDefterNo := TcxTextEdit(FindComponent('DenetimDefterNo')).EditValue;
             xSahaDenetimVeri.GozlemGrubu := TcxTextEdit(FindComponent('GozlemGrup')).EditValue;
             TGirisForm(FGirisForm)._SahaDenetimVeri_ := xSahaDenetimVeri;
           //  (Application.FindComponent(FGirisForm.name) as TGirisForm)._SahaDenetimVeri_ := xSahaDenetimVeri;
           end;
ptPersonelTetkikleri :
           begin
             datalar.TarihAralik.ilkTarih := TcxTextEdit(FindComponent('ilkTarih')).EditValue;
             datalar.TarihAralik.sonTarih := TcxTextEdit(FindComponent('sonTarih')).EditValue;
           end;
riskDuzenle,yeniRisk :
           begin
              datalar.Risk.Bolum := TcxImageComboKadir(FindComponent('RiskBolum')).EditValue;
              datalar.Risk.TehlikeKaynagi := TcxImageComboKadir(FindComponent('TehlikeKaynak')).EditValue;
              datalar.Risk.Tehlike := TcxImageComboKadir(FindComponent('Tehlike')).Text;
              datalar.Risk.Etkilenecek := TcxImageComboKadir(FindComponent('Etkilenecekler')).EditValue;
              datalar.Risk.Risk_tanim := TcxImageComboKadir(FindComponent('Risk_tanimi')).Text;
              datalar.Risk.Onlemler := TcxMemo(FindComponent('Onlemler')).Text;
              datalar.Risk.Olasilik := TcxImageComboKadir(FindComponent('Olasilik')).EditValue;
              if (datalar.Risk.Method = 1) or (datalar.Risk.Method = 3)
              then datalar.Risk.Frekans := TcxImageComboKadir(FindComponent('Frekans')).EditValue;

              datalar.Risk.Siddet := TcxImageComboKadir(FindComponent('Siddet')).EditValue;
              datalar.Risk.Risk := TcxCurrencyEdit(FindComponent('Risk')).EditValue;

              datalar.Risk.MevcutOnlem := TcxMemo(FindComponent('MevcutOnlem')).Text;
              datalar.Risk.Sorumlu := TcxTextEditKadir(FindComponent('Sorumlu')).Text;
              datalar.Risk.Termin := TcxTextEditKadir(FindComponent('Termin')).Text;
              datalar.Risk.TerminSure := TcxImageComboKadir(FindComponent('TerminTipleri')).EditingValue;

              datalar.Risk.Gerceklesme := TcxTextEditKadir(FindComponent('Gercek')).Text;
              datalar.Risk.Olasilik_2 := TcxImageComboKadir(FindComponent('Olasilik_2')).EditValue;
              if (datalar.Risk.Method = 1) or (datalar.Risk.Method = 3)
              then datalar.Risk.Frekans_2 := TcxImageComboKadir(FindComponent('Frekans_2')).EditValue;
              datalar.Risk.Siddet_2 := TcxImageComboKadir(FindComponent('Siddet_2')).EditValue;
              datalar.Risk.Risk_2 := TcxCurrencyEdit(FindComponent('Risk_2')).EditValue;
           //   datalar.Risk.RDS_2 := Null;
              datalar.Risk.yasalDayanak := TcxMemo(FindComponent('yasalDayanak')).Text;
              datalar.Risk.Image.Picture := TcxImage(FindComponent('ImageResim')).Picture;

            end;
 gozetimDuzenle,yeniGozetim :
            begin
              datalar.Risk.Onlemler := TcxMemo(FindComponent('Tespitler')).Text;
              datalar.Risk.SSGBolum := (TcxImageComboKadir(FindComponent('Bolum')).EditValue);
              datalar.Risk.SSGYapilacakFaliyetTuru := (TcxImageComboKadir(FindComponent('YapilacakFaliyetTuru')).EditValue);
              datalar.Risk.SSGKokNeden := TcxTextEdit(FindComponent('KokNeden')).Text;
              datalar.Risk.SSGFaliyetPlan := TcxTextEdit(FindComponent('FaliyetPlan')).Text;
              datalar.Risk.SSGUygulanacakFaliyetTarihi := VarToStr (TcxTextEdit(FindComponent('UygulanacakFaliyetTarihi')).EditValue);
              datalar.Risk.SSGBolumYetkilisi := TcxTextEdit(FindComponent('BolumYetkilisi')).Text;
              datalar.Risk.SSGSonuc := (TcxImageComboKadir(FindComponent('Sonuc')).EditValue);
              datalar.Risk.SSGYapilanFaliyet := TcxTextEdit(FindComponent('YapilanFaliyet')).Text;
              datalar.Risk.SSGFaliyetKapamaTarihi := VarToStr (TcxTextEdit(FindComponent('FaliyetKapamaTarihi')).EditValue);
              datalar.Risk.SSGTakipSüresi := VarToStr (TcxTextEdit(FindComponent('TakipSüresi')).EditValue);
              datalar.Risk.SSGKapamaOnayi := TcxImageComboKadir(FindComponent('KapamaOnayi')).EditValue;
              datalar.Risk.SSGTespitTarihi := VarToStr (TcxTextEdit(FindComponent('TespitTarihi')).EditValue);

              //datalar.Risk.Image := TcxImage.Create(nil);
             // datalar.Risk.Image.Picture := TcxImage(FindComponent('ImageResim')).Picture;
            end;
 denetimDuzenle,yeniDenetim :
            begin
              datalar.SahaDenetim.TehlikeliDurum := TcxMemo(FindComponent('TehlikeliDurum')).Text;
              datalar.SahaDenetim.Bolum := (TcxImageComboKadir(FindComponent('Bolum')).EditValue);
              datalar.SahaDenetim.Yonetmelik := TcxTextEdit(FindComponent('Yonetmelik')).Text;
              datalar.SahaDenetim.IlgiliKisi := TcxTextEdit(FindComponent('IlgiliKisi')).Text;
              datalar.SahaDenetim.isinDurumu := TcxImageComboKadir(FindComponent('isinDurumu')).EditValue;
             // datalar.SahaDenetim.Image := TcxImage.Create(nil);
              datalar.SahaDenetim.Image.Picture := TcxImage(FindComponent('ImageResim')).Picture;
            end;

 yeniKKD,KKDDuzenle :
            begin
              datalar.KKD.VucutKisim := TcxButtonEditKadir(FindComponent('VucutKisim')).Text;
              datalar.KKD.VucutUzuv := TcxButtonEditKadir(FindComponent('VucutUzuv')).Text;
              datalar.KKD.KKD := TcxButtonEditKadir(FindComponent('KKD')).Text;
              datalar.KKD.TSE := TcxButtonEditKadir(FindComponent('TS_EN_KODLARI')).EditText;
              datalar.KKD.KullanilacakIs := TcxButtonEditKadir(FindComponent('KullanilacakIS')).EditText;
              datalar.KKD.Bolum := TcxImageComboKadir(FindComponent('RiskBolum')).EditValue;

            end;


   yeniRiskBolum ,
   yeniTehlikeKaynak,
   yeniTehlike,
   yeniEkilenecekler,
   yeniKKDEkle
              :
              begin

                 case TfrmPopup(self).islem_ of
                   yeniRiskBolum :
                         begin
                          datalar.QueryExec('insert into RDS_RiskBolum (tanimi) values(' +
                                             QuotedStr(TcxTextEditKadir(FindComponent('RiskBolum')).EditingValue) +
                                             ')');
                         end;
                   yeniTehlikeKaynak :
                         begin
                          datalar.QueryExec('insert into RDS_TehlikeKaynak (tanimi) values(' +
                                             QuotedStr(TcxTextEditKadir(FindComponent('TehlikeKaynak')).EditingValue) +
                                             ')');
                         end;
                   yeniTehlike :
                         begin
                          datalar.QueryExec('insert into RDS_Tehlike (tanimi) values(' +
                                             QuotedStr(TcxTextEditKadir(FindComponent('Tehlike')).EditingValue) +
                                             ')');
                         end;

                   yeniEkilenecekler :
                        begin
                          datalar.QueryExec('insert into RDS_Etkilenecekler (tanimi) values(' +
                                             QuotedStr(TcxTextEditKadir(FindComponent('yeniEkilenecekler')).EditingValue) +
                                             ')');
                        end;

                   yeniKKDEkle :
                         datalar.QueryExec('insert into KKD (tanimi) values(' +
                                           QuotedStr(TcxTextEditKadir(FindComponent('KKD')).EditingValue) +
                                           ')');
                 end;


              end;
   riskRaporuPaylas :
              begin
                  datalar.QueryExec('update RDS_SirketRisk set paylasilan = ' +
                     QuotedStr(TcxImageComboKadir(FindComponent('paylasilan')).EditingValue) +
                     ' where id = ' + datalar.Risk.RiskID);
              end;
   sahaGozetimPaylas :
              begin
                  datalar.QueryExec('update SirketSahaGozetim set paylasilan = ' +
                     QuotedStr(TcxImageComboKadir(FindComponent('paylasilan')).EditingValue) +
                     ' where id = ' + datalar.Risk.RiskID);
              end;
   FaturaTahsilatEkle :
              begin
                   if TcxImageComboKadir(FindComponent('OdemeTip')).EditValue = 1
                   Then
                     HesapIsle(TcxImageComboKadir(FindComponent('HesapKod')).EditValue,
                               self._value_,
                               TcxTextEdit(FindComponent('Aciklama')).EditValue ,
                               TcxCurrencyEdit(FindComponent('Tutar')).EditValue,
                               TcxDateEditKadir(FindComponent('Tarih')).GetSQLValue,'H','','','','',''

                               )
                   else
                   begin
                     HesapIsle(vartostr(TcxImageComboKadir(FindComponent('HesapKod')).EditValue),
                               self._value_,
                               TcxTextEdit(FindComponent('Aciklama')).EditValue ,
                               TcxCurrencyEdit(FindComponent('Tutar')).EditValue,
                               TcxDateEditKadir(FindComponent('Tarih')).GetSQLValue,
                               'E',
                               TcxDateEditKadir(FindComponent('VadeTarih')).GetSQLValue,'2',
                               '',
                               '1',
                               TcxDateEditKadir(FindComponent('CekId')).EditValue);

                   end;
              end;

     yeniCek       :
              begin
                 datalar.Cek.evrakNo := vartoStr(TcxTextEdit(FindComponent('evrakNo')).EditingValue);
                 datalar.Cek.vade := TcxDateEdit(FindComponent('VadeTarihi')).EditingValue;
                 datalar.Cek.tutar := TcxCurrencyEdit(FindComponent('tutar')).EditingValue;
                 datalar.Cek.sirketKod := vartoStr(TcxImageComboKadir(FindComponent('sirketKod')).EditingValue);
                 datalar.Cek.kimden := TcxImageComboKadir(FindComponent('sirketKod')).Text;
                 datalar.Cek.tedarikciKod := vartoStr(TcxImageComboKadir(FindComponent('TedarikciKod')).EditingValue);
                 datalar.Cek.kime := TcxImageComboKadir(FindComponent('TedarikciKod')).Text;
                 datalar.Cek.tip := TcxImageComboKadir(FindComponent('Tip')).EditingValue;
                 datalar.Cek.durum := TcxImageComboKadir(FindComponent('Durum')).EditingValue;
                 datalar.Cek.aciklama := vartoStr(TcxTextEdit(FindComponent('aciklama')).EditingValue);

                 try
                  sql := Format(insertCek,
                                           [QuotedStr(datalar.Cek.evrakNo),
                                            QuotedStr(tarihal(datalar.Cek.vade)),
                                            ifThen(datalar.Cek.sirketKod <> '',QuotedStr(datalar.Cek.sirketKod),'null'),
                                            ifThen(datalar.Cek.TedarikciKod <> '',QuotedStr(datalar.Cek.TedarikciKod),'null'),
                                            datalar.Cek.tutar,
                                            QuotedStr(datalar.Cek.Tip),
                                            QuotedStr(datalar.Cek.Durum),
                                            QuotedStr(FormatDateTime('YYYY-MM-DD HH:NN:SS',now())),
                                            QuotedStr(datalar.username),
                                            QuotedStr(datalar.Cek.aciklama)]);

                   datalar.QueryExec(sql);
                 except on e : exception do
                  begin
                    ShowMessageSkin(e.Message,'','','info');
                  end;
                 end;

              end;
     OdemeEkle     :
              begin
                   if TcxImageComboKadir(FindComponent('OdemeTip')).EditValue = 1
                   Then
                     HesapIsleOdeme(TcxImageComboKadir(FindComponent('HesapKod')).EditValue,
                               self._value_,
                               TcxTextEdit(FindComponent('Aciklama')).EditValue ,
                               TcxCurrencyEdit(FindComponent('Tutar')).EditValue,
                               TcxDateEditKadir(FindComponent('Tarih')).GetSQLValue,'H','','','','',''

                               )
                   else
                   begin
                     HesapIsleOdeme(vartostr(TcxImageComboKadir(FindComponent('HesapKod')).EditValue),
                               self._value_,
                               TcxTextEdit(FindComponent('Aciklama')).EditValue ,
                               TcxCurrencyEdit(FindComponent('Tutar')).EditValue,
                               TcxDateEditKadir(FindComponent('Tarih')).GetSQLValue,
                               'E',
                               TcxDateEditKadir(FindComponent('VadeTarih')).GetSQLValue,'','','','');

                   end;

              end;

    CekTahsilat    :
              begin
                     HesapIsle(vartostr(TcxImageComboKadir(FindComponent('HesapKod')).EditValue),
                               '',
                               TcxTextEdit(FindComponent('Aciklama')).EditValue ,
                               TcxCurrencyEdit(FindComponent('Tutar')).EditValue,
                               TcxDateEditKadir(FindComponent('Tarih')).GetSQLValue,
                               'T',
                               QuotedStr(''),
                               '3','','2',self._value_);

              end;

    FirmaUzmanDegistir,FirmaDoktorDegistir :
             begin
                if self.islem_ = FirmaUzmanDegistir
                then
                  datalar.GirisFormRecord.F_Igu_ := vartostr(TcxImageComboKadir(FindComponent('Uzman')).EditValue)
                else
                 datalar.GirisFormRecord.F_Doktor_ := vartostr(TcxImageComboKadir(FindComponent('Uzman')).EditValue);
             end;

    PersonelSirketDegistir :
             begin
                 datalar.GirisFormRecord.F_firmaKod_ := vartostr(TcxImageComboKadir(FindComponent('sirketKod')).EditValue);
                 datalar.GirisFormRecord.F_sube_ := vartostr(TcxImageComboKadir(FindComponent('subeKod')).EditValue);
             end;

    yeniFaaliyet,
    FaaliyetDuzenle :
             begin
                    datalar.YillikCalismaPlan.peryod := TcxImageComboKadir(FindComponent('peryod')).EditValue;
                    datalar.YillikCalismaPlan.ocak := TcxImageComboKadir(FindComponent('ocak')).EditValue;
                    datalar.YillikCalismaPlan.subat := TcxImageComboKadir(FindComponent('subat')).EditValue;
                    datalar.YillikCalismaPlan.mart := TcxImageComboKadir(FindComponent('mart')).EditValue;
                    datalar.YillikCalismaPlan.nisan := TcxImageComboKadir(FindComponent('nisan')).EditValue;
                    datalar.YillikCalismaPlan.mayis := TcxImageComboKadir(FindComponent('mayis')).EditValue;
                    datalar.YillikCalismaPlan.haziran := TcxImageComboKadir(FindComponent('haziran')).EditValue;
                    datalar.YillikCalismaPlan.temmuz := TcxImageComboKadir(FindComponent('temmuz')).EditValue;
                    datalar.YillikCalismaPlan.agustos := TcxImageComboKadir(FindComponent('agustos')).EditValue;
                    datalar.YillikCalismaPlan.eylul := TcxImageComboKadir(FindComponent('eylul')).EditValue;
                    datalar.YillikCalismaPlan.ekim := TcxImageComboKadir(FindComponent('ekim')).EditValue;
                    datalar.YillikCalismaPlan.kasim := TcxImageComboKadir(FindComponent('kasim')).EditValue;
                    datalar.YillikCalismaPlan.aralik := TcxImageComboKadir(FindComponent('aralik')).EditValue;
                    datalar.YillikCalismaPlan.ocakR := TcxImageComboKadir(FindComponent('ocak_R')).EditValue;
                    datalar.YillikCalismaPlan.subatR := TcxImageComboKadir(FindComponent('subat_R')).EditValue;
                    datalar.YillikCalismaPlan.martR := TcxImageComboKadir(FindComponent('mart_R')).EditValue;
                    datalar.YillikCalismaPlan.nisanR := TcxImageComboKadir(FindComponent('nisan_R')).EditValue;
                    datalar.YillikCalismaPlan.mayisR := TcxImageComboKadir(FindComponent('mayis_R')).EditValue;
                    datalar.YillikCalismaPlan.haziranR := TcxImageComboKadir(FindComponent('haziran_R')).EditValue;
                    datalar.YillikCalismaPlan.temmuzR := TcxImageComboKadir(FindComponent('temmuz_R')).EditValue;
                    datalar.YillikCalismaPlan.agustosR := TcxImageComboKadir(FindComponent('agustos_R')).EditValue;
                    datalar.YillikCalismaPlan.eylulR := TcxImageComboKadir(FindComponent('eylul_R')).EditValue;
                    datalar.YillikCalismaPlan.ekimR := TcxImageComboKadir(FindComponent('ekim_R')).EditValue;
                    datalar.YillikCalismaPlan.kasimR := TcxImageComboKadir(FindComponent('kasim_R')).EditValue;
                    datalar.YillikCalismaPlan.aralikR := TcxImageComboKadir(FindComponent('aralik_R')).EditValue;


             end;

    PersonelTetkisIste :
             begin
                 datalar.PersonelTetkikler.Tetkik :=
                   TcxCheckGroupKadir(FindComponent('istemler')).getItemCheckString;


             end;

   YeniSube,SubeDuzenle :
               begin
                  //  _record_ := @datalar.FirmaSubeBilgi;
                 //   TFirmaBilgi(_record_^).SubeKodu := '';
                    datalar.FirmaSubeBilgi.SubeKodu := TcxTextEdit(FindComponent('subeKod')).EditValue;
                    datalar.FirmaSubeBilgi.SirketAdi := TcxTextEdit(FindComponent('subeTanim')).EditValue;
                    datalar.FirmaSubeBilgi.subeSiciNo :=  TcxTextEdit(FindComponent('subeSiciNo')).EditValue;
                    datalar.FirmaSubeBilgi.doktor :=  TcxTextEdit(FindComponent('subeDoktor')).EditValue;
                    datalar.FirmaSubeBilgi.IGU :=  TcxTextEdit(FindComponent('IGU')).EditValue;
                    datalar.FirmaSubeBilgi.BolgeMudurlukSicilNo :=  TcxTextEdit(FindComponent('BolgeMudurlukSicilNo')).EditValue;
                    datalar.FirmaSubeBilgi.MuayeneProtokolNo :=  TcxTextEdit(FindComponent('MuayeneProtokolNo')).EditValue;
                    datalar.FirmaSubeBilgi.DoktorCalismaDakika :=  TcxTextEdit(FindComponent('DoktorCalismaDakika')).EditValue;
                    datalar.FirmaSubeBilgi.IGUCalismaDakika :=  TcxTextEdit(FindComponent('IGUCalismaDakika')).EditValue;
                    datalar.FirmaSubeBilgi.NaceKod :=  TcxTextEdit(FindComponent('NaceKod')).EditValue;
                    datalar.FirmaSubeBilgi.tehlikeSinifi :=  TcxTextEdit(FindComponent('tehlikeSinifi')).EditValue;
                    datalar.FirmaSubeBilgi.DigerSaglikPers :=  TcxTextEdit(FindComponent('DigerSaglikPers')).EditValue;
                    datalar.FirmaSubeBilgi.DigerSaglikPersCalismaDakika :=  TcxTextEdit(FindComponent('DigerSaglikPersCalismaDakika')).EditValue;
                    datalar.FirmaSubeBilgi.Pasif :=  TcxTextEdit(FindComponent('Pasif')).EditValue;
                    datalar.FirmaSubeBilgi.SemtLokasyon :=  TcxTextEdit(FindComponent('SemtLokasyon')).EditValue;
                    datalar.FirmaSubeBilgi.calisanSayi :=  TcxTextEdit(FindComponent('calisanSayi')).EditValue;
                    datalar.FirmaSubeBilgi.Adres :=  TcxTextEdit(FindComponent('Adres')).EditValue;
                    datalar.FirmaSubeBilgi.KapaliAlan :=  TcxTextEdit(FindComponent('KapaliAlan')).EditValue;
                    datalar.FirmaSubeBilgi.AcikAlan :=  TcxTextEdit(FindComponent('AcikAlan')).EditValue;

               end;
   olcumEkle :
               begin
                  datalar.OrtamOlcum.Bolum := TcxImageComboKadir(FindComponent('Bolum')).EditValue;
                  datalar.OrtamOlcum.Olcumler :=  TcxCheckGroupKadir(FindComponent('Olcumler')).getItemCheckArrayOfString;

               end;
   GGEkle    :
               begin
                  datalar.DokumanGG.ggTarihi := TcxDateEdit(FindComponent('ggTarihi')).EditValue;
                  datalar.DokumanGG.SggTarihi := TcxDateEdit(FindComponent('SggTarihi')).EditValue;
               end;

  yeniMadde,MaddeDuzenle
             :  begin
                           datalar.KurulToplantiMadde.SiraNo := TcxCurrencyEdit(FindComponent('siraNo')).EditValue;
                           datalar.KurulToplantiMadde.Madde := TcxTextEdit(FindComponent('Madde')).EditValue;
                           datalar.KurulToplantiMadde.Karar := TcxMemo(FindComponent('Karar')).EditValue;
                           datalar.KurulToplantiMadde.GorusmeNotlari := TcxMemo(FindComponent('GorusmeNotlari')).EditValue;
                           datalar.KurulToplantiMadde.Aksiyon := TcxMemo(FindComponent('Aksiyon')).EditValue;
                           datalar.KurulToplantiMadde.Gorevli := TcxTextEdit(FindComponent('Gorevli')).EditValue;
                           datalar.KurulToplantiMadde.GorevTarihi := TcxDateEditKadir(FindComponent('GorevTarihi')).EditValue;
                           datalar.KurulToplantiMadde.HedafTarih := TcxDateEditKadir(FindComponent('HedefTarih')).EditValue;
                           datalar.KurulToplantiMadde.YapilanIslem := TcxMemo(FindComponent('YapilanIslem')).EditValue;
                           datalar.KurulToplantiMadde.TamamlanmaTarihi := TcxDateEditKadir(FindComponent('TamamlanmaTarihi')).EditValue;
                           datalar.KurulToplantiMadde.Tamam := TcxCheckBox(FindComponent('Tamam')).EditValue;
                         end;
    hastaTakipleriGetir
             : begin
                 // hasta takipleri ekraný kapatýldý
               end;

     KtvUrrDuzenle
             : begin
                 datalar.KtvUrr.Ktv := TcxCurrencyEdit(FindComponent('KT_v')).Value ;
                 datalar.KtvUrr.URR := TcxCurrencyEdit(FindComponent('URR')).Value;
                 datalar.KtvUrr.CaxP := TcxCurrencyEdit(FindComponent('CaxP')).Value;
                 datalar.KtvUrr.DuzCa := TcxCurrencyEdit(FindComponent('DuzCa')).Value;
                 datalar.KtvUrr.TS := TcxCurrencyEdit(FindComponent('TS')).Value;
               end;
  end;
end;

procedure TfrmPopup.FormCreate(Sender: TObject);
begin
  Image2.Visible := false;
  cxPanel.Visible := false;
  SayfaCaption(' ','','','','');
end;

procedure TfrmPopup.txtMsgEnter(Sender: TObject);
begin
 //perform(wm_nextdlgctl,0,0);
 ActiveControl := btnYes;
end;

procedure TfrmPopup.FormShow(Sender: TObject);
var
  ilacList : TlisteAc;
  Doktorlar,kulYolList,sirketKos,subeKod,tetkikIstemGrupSablon,HizmetKod : TcxImageComboKadir;
  txtTetkikIstem : TcxCheckGroupKadir;
  TabCaption ,TahsilatOdemeTipCaption : string;
  Image1 : TcxImage;
  //Listx : TListeAc;
  ICombo : TcxImageComboKadir;
  Tarih : TcxDateEditKadir;
  KontolYukseklik : integer;
begin
inherited;

  btnYes.Visible := True;
  btnYes.Caption := '&Tamam';
  btnIptal.Visible := True;

  btnIptal.Caption := '&Vazgeç';
  btnIptal.TabOrder := 0;
  btnYes.TabOrder := 1;
  btnIptal.SetFocus;

//  self.Caption := PopupFormCaption(TfrmPopup(self).islem_ ,TabCaption);
  self.Caption := '';
  cxTab.Tabs[0].Caption := _caption_;

  if TfrmPopup(self).FGirisForm <> nil
  Then
  if TfrmPopup(self).FGirisForm.Name = 'frmKanTetkikTakipDegerlendir'
  Then begin
      ClientWidth := 400;
      ClientWidth := 400;

      case TfrmPopup(self).islem_ of
        DiyalizIzlemDVitamin : begin
                                  setDataStringKontrol(self,txtDVitaminKul ,'txtDVitaminKul','D Vitamin Tedavisi',Kolon1,'',200,25);
                                  txtDVitaminKul.EditValue := FGirisForm._value_;
                               end;
        DiyalizIzlemAnemi : begin
                                setDataStringKontrol(self,txtAnemi ,'txtAnemi','Anemi Tedavisi',Kolon1,'',200,80);
                                txtAnemi.EditValue := FGirisForm._value_;
                            end;
       DiyalizIzlemCinacalset : begin
                                  setDataStringKontrol(self,txtSinekalset ,'txtSinekalset','Cinacalset Ýlaç Tedavisi',Kolon1,'',200,25);
                                  txtSinekalset.EditValue := FGirisForm._value_;

                                end;

      end;

      exit;
  end;


  case TfrmPopup(self).islem_ of

   raporAra          :
           begin
                  ClientHeight := 400;
                  SayfaCaption('Hastanýn Raporlarýný Bul','','','','');

                  setDataStringIC(Self,'RaporTuru','Aranacak Rapor Türü',Kolon1,'btn',100,'Medula_RaporTurleri','kod','tanimi');
                  setDataString(Self,'KisiBilgisi','Tc/Yupass',Kolon1,'btn',100);
                  TcxTextEdit(FindComponent('KisiBilgisi')).EditValue := _value_;

                  addButton(self,nil,'btnRaporBul','','Ara',Kolon1,'btn',40,ButtonClick,raporAra);
                  addButton(self,nil,'btnRaporSistemAktar','','Sisteme Aktar',Kolon1,'btn',100,ButtonClick,raporSistemeAktar);


                  SetGrid(CreateGrid('cxGridHastaRaporlari',frmPopup,False,DataSource1,False),'RaporNo,RaporTarihi,baslangicTarihi,bitisTarihi,VerenTesis,raporTakipNo,SeansGun,SeansSayi',
                               'TcxTextEditProperties,TcxTextEditProperties,TcxTextEditProperties,TcxTextEditProperties,TcxTextEditProperties,TcxTextEditProperties,TcxTextEditProperties,TcxTextEditProperties',
                               'RaporNo,RaporTarihi,BaþlangýçTarihi,BitiþTarihi,VerenTesis,raporTakipNo,SeansGun,SeansSayi',
                               '50,100,100,100,80,100,50,50',
                               '0,0,0,0,0,0,0,0',
                               'False,False,False,False,False,False,False,False'
                               );

                  setDataStringKontrol(self,TcxGridKadir(FindComponent('cxGridHastaRaporlari')) ,'cxGridHastaRaporlari','Hasta Raporlarý',Kolon1,'',750,200);
                  TcxGridKadir(FindComponent('cxGridHastaRaporlari')).Dataset.DataSource := DS;
                  kolon2.Visible := False;
                  kolon3.Visible := False;
                  kolon4.Visible := False;

           end;


  SKSindikatorSorgu :
      begin
          Olustur(self,'','Ýlaç Düzenle',62,'');
          cxTab.Width := 150;
          ClientHeight := 220;
          ClientWidth := 250;
          ReceteTarih := TcxDateEditKadir.Create(self);
          setDataStringKontrol(self,ReceteTarih, 'SKSSorguIlkTarih','Ýlk Tarih',Kolon1,'',120);
          ReceteTarih := TcxDateEditKadir.Create(self);
          setDataStringKontrol(self,ReceteTarih, 'SKSSorguSonTarih','Son Tarih',Kolon1,'',120);
          kolon2.Visible := False;
          kolon3.Visible := False;
          kolon4.Visible := False;
      end;

  ReceteIlacEkle,ReceteIlacDuzenle :
       begin
          Olustur(self,'','Ýlaç Düzenle',62,'');
          cxTab.Width := 150;
          ClientHeight := 320;
          ClientWidth := 450;
          TableName := 'ILACLARMM';

          ilacList := ListeAcCreate('ILACLARM','code,name1,ICD,doz,adet,kulyol',
                                    'StokKodu,StokAdý,ICD,Doz,Adet,KYolu',
                                    '90,250,30,30,30,60','code','Ýlaçlar','',6,True);

        //  setDataStringB(self,'code','&Ilaç Barkod',Kolon1,'ik',120,ilacList,True,nil,'name1','',false);

          setDataString(self,'code','&Ilaç Barkod',Kolon1,'ik',120,False,'',True);

          setDataStringBLabel(self,'code',Kolon1,'ik',200,' ');
          setDataStringCurr(self,'adet','Adet',Kolon1,'',50,'0');
          setDataStringKontrol(self,peryotR, 'PeryotR','Peryot',Kolon1,'',50);

//          setDataStringC(self,'peryotR','Peryot',Kolon1,'p',50,',,,Gün,Hafta,Ay,Yýl');

          setDataStringCurr(self,'Padet','Peryot Adet',Kolon1,'p',50,'0');
          setDataStringC(self,'doz','Doz',Kolon1,'d',50,'1x1,2x1,3x1,3x2,1x2,1x3,1x4,2x1,2x2,2x3,2x4,3x1,3x2,3x3,3x4,4x1,4x2,4x3,4x4');
          TcxComboBox(FindComponent('Doz')).OnClick := txtDozClick;
          setDataStringCurr(self,'Doz1','Doz1',Kolon1,'d',50,'0');
          setDataStringCurr(self,'Doz2','Doz2',Kolon1,'d',50,'0');

         (*
          kulYolList := ListeAcCreate('ReceteKullanimYol','SLX,SLT',
                                    'Kodu,Tanýmý',
                                    '50,250','kulYol','Ýlaç Kullaným','',2,True);
          setDataStringB(self,'kulYol','Kullaným Yolu',Kolon1,'ky',120,kulYolList,false,nil,'SLT','',false);
          setDataStringBLabel(self,'kulYol',Kolon1,'ky',200,' ');
          *)

          kulYolList := TcxImageComboKadir.Create(self);
          kulYolList.Conn := Datalar.ADOConnection2;
          kulYolList.TableName := 'ReceteKullanimYol';
          kulYolList.ValueField := 'kod';
          kulYolList.DisplayField := 'tanimi';
          kulYolList.Filter := '';
          setDataStringKontrol(self,kulYolList,'kulYol','Kullaným Yolu',kolon1,'',150);




          if TfrmPopup(self).islem_ = ReceteIlacDuzenle //then

         // frmPopup._islem_ = ReceteIlacDuzenle
          Then begin
            TcxTextEdit(FindComponent('code')).EditValue := datalar.ReceteSatir.barkod;
            TcxLabel(FindComponent('Label'+'code')).Caption := datalar.ReceteSatir.barkodadi;
            TcxCurrencyEdit(FindComponent('adet')).EditValue := datalar.ReceteSatir.kutuadet;
            TcxComboBox(FindComponent('peryotR')).EditValue := datalar.ReceteSatir.peryot;
            TcxCurrencyEdit(FindComponent('Padet')).EditValue := datalar.ReceteSatir.peryotAdet;
            TcxTextEdit(FindComponent('doz')).EditValue := datalar.ReceteSatir.doz;
            TcxCurrencyEdit(FindComponent('doz1')).EditValue := datalar.ReceteSatir.doz1;
            TcxCurrencyEdit(FindComponent('doz2')).EditValue := datalar.ReceteSatir.doz2;
            TcxTextEdit(FindComponent('kulYol')).EditValue := datalar.ReceteSatir.kulyol;
         end;

       end;

  ReceteAckEkle,ReceteAckDuzenle,ReceteIlacAckEkle,ReceteIlacAckDuzenle :
       begin
          Olustur(self,'','Açýklama Ekle',62,'');
          cxTab.Width := 150;
          ClientHeight := 280;
          ClientWidth := 450;
          TableName := 'ReceteAciklama';
          setDataStringC(self,'AckKodu','Açýklama Kodu',Kolon1,'',200,'1-Teþhiþ/Taný,2-TedaviSüresi,'+
                                                        '3-HastaGüvenlikveÝzlemeFormu,4-TetkikSonucu,'+
                                                        '5-EndikasyonDýþýKullanýmizni,99-Diðer');
          setDataStringMemo(self,'Ack','Açýklama',kolon1,'',200,50);

          if TfrmPopup(self).islem_ in [ReceteAckDuzenle,ReceteIlacAckDuzenle]
          then begin
            TcxComboBox(FindComponent('ackKodu')).EditValue := datalar.ReceteAciklama.ackKod;
            TcxTextEdit(FindComponent('ack')).EditValue := datalar.ReceteAciklama.ack;
          end;

       end;
  ReceteyiSablonKaydet :
       begin
          Olustur(self,'',_caption_,62,'');
          cxTab.Width := 150;
          ClientHeight := 200;
          ClientWidth := 380;
          setDataString(self,'SablonAdi','Þablon Adý',Kolon1,'',250);

       end;
  ReceteYeni,ReceteDuzenle :
       begin
          Olustur(self,'',_caption_,62,'');
          cxTab.Width := 150;
          ClientHeight := 280;
          ClientWidth := 450;
          TableName := 'Receteler';
          ReceteTarih := TcxDateEditKadir.Create(self);
          setDataStringKontrol(self,ReceteTarih, 'ReceteTarih','Tarih',Kolon1,'',100);
          ImageCombo := TcxImageComboBox.Create(self);
          ImageCombo.name := 'ReceteTuru';
          ImageComboItemAdd('1','Normal',ImageCombo);
          ImageComboItemAdd('2','Kýrmýzý',ImageCombo);
          ImageComboItemAdd('3','Turuncu',ImageCombo);
          ImageComboItemAdd('4','Mor',ImageCombo);
          ImageComboItemAdd('5','Yeþil',ImageCombo);
          setDataStringKontrol(self,ImageCombo, 'ReceteTuru','Reçete Türü',Kolon1,'',100);
          ImageCombo := TcxImageComboBox.Create(self);
          ImageCombo.name := 'ReceteAltTuru';
          ImageComboItemAdd('1','Ayaktan Reçetesi',ImageCombo);
          ImageComboItemAdd('2','Yatan Reçetesi',ImageCombo);
          ImageComboItemAdd('3','Taburcu Reçetesi',ImageCombo);
          ImageComboItemAdd('4','Günübirlik Reçetesi',ImageCombo);
          ImageComboItemAdd('5','Acil Reçetesi',ImageCombo);
          ImageComboItemAdd('6','Yeþil Alan Reçetesi',ImageCombo);
          ImageComboItemAdd('7','Evde Bakým Reçetesi',ImageCombo);
          setDataStringKontrol(self,ImageCombo, 'ReceteAltTuru','Reçete Alt Türü',Kolon1,'',100);

        (*
          Doktorlar := ListeAcCreate('Doktorlar','kod,ADI',
                                    'Kodu,Doktor',
                                    '60,250','kod','Doktorlar','',2,False);
          setDataStringB(self,'kod','Doktor',Kolon1,'d',100,Doktorlar,False,nil,'ADI','',false);
          setDataStringBLabel(self,'kod',Kolon1,'d',200,' ');
          *)

          Doktorlar := TcxImageComboKadir.Create(self);
          Doktorlar.Conn := Datalar.ADOConnection2;
          Doktorlar.TableName := 'DoktorlarT';
          Doktorlar.ValueField := 'kod';
          Doktorlar.DisplayField := 'tanimi';
          Doktorlar.Filter := ' durum = ''Aktif''';
          setDataStringKontrol(self,Doktorlar,'kod','Doktor',kolon1,'',200);


          setDataString(self,'ProtokolNo','ProtokolNo',Kolon1,'',307);
          setDataString(self,'eReceteNo','e-Reçete No',Kolon1,'',307);
          TcxButtonEditKadir(FindComponent('kod')).EditValue := datalar.YeniRecete.doktor;
         // TcxLabel(FindComponent('Labelkod')).Caption := datalar.YeniRecete.doktorAdi;
          TcxTextEdit(FindComponent('ProtokolNo')).EditValue := datalar.YeniRecete.protokolNo;
          TcxTextEdit(FindComponent('ReceteTuru')).EditValue := datalar.YeniRecete.ReceteTuru;
          TcxTextEdit(FindComponent('ReceteAltTuru')).EditValue := datalar.YeniRecete.ReceteAltTuru;
          TcxTextEdit(FindComponent('ReceteTarih')).EditValue := datalar.YeniRecete.Tarih;
          TcxTextEdit(FindComponent('eReceteNo')).EditValue := datalar.YeniRecete.takipNo;
          TcxTextEdit(FindComponent('eReceteNo')).Properties.ReadOnly := True;
       end;

   TeleEkgDuzenle :
       begin
          Olustur(self,'','Sonuç Düzenle',8,'');
          mevcutTarih_ := TcxDateEditKadir.Create(self);
          setDataStringKontrol(self,mevcutTarih_, 'Tarih','Tarih',Kolon1,'',100);
          setDataStringMemo(self,'islemAciklamasi','Sonuç',Kolon1,'',270,70);
          TcxTextEdit(FindComponent('islemAciklamasi')).Properties.MaxLength := 200;
          setDataStringBLabel(self,'ackLabel',Kolon1,'',50,'','Kalan Karakter : ');
          TcxMemo(FindComponent('islemAciklamasi')).Properties.OnChange := cxMemoPropertiesChange;
          mevcutTarih_.Date := datalar.TeleEkg.Tarih;
          TcxTextEdit(FindComponent('islemAciklamasi')).Text := datalar.TeleEkg.ack;
          ClientHeight := 270;
          ClientWidth := 400;
       end;

   FirmaUzmanDegistir,FirmaDoktorDegistir :
       begin
          ClientHeight := 200;
          ClientWidth := 310;

          Doktorlar := TcxImageComboKadir.Create(self);
          Doktorlar.Conn := Datalar.ADOConnection2;
          Doktorlar.ValueField := 'Kod';
          Doktorlar.DisplayField := 'Tanimi';

          if frmPopup.islem_ = FirmaUzmanDegistir
          Then begin
            Doktorlar.TableName := 'IGU';
            setDataStringKontrol(self,Doktorlar, 'Uzman','Ýþ Güvenlik Uzmaný',Kolon1,'',120);
          end
          Else begin
            Doktorlar.TableName := 'DoktorlarT';
            setDataStringKontrol(self,Doktorlar, 'Uzman','Ýþ Yeri Hekimi',Kolon1,'',120);
          end;
          Doktorlar.Filter := ' durum = ''Aktif''';


       end;

   PersonelSirketDegistir :
       begin
          ClientHeight := 250;
          ClientWidth := 330;

          setDataStringBLabel(self,'ackSatir',kolon1,'',300,'Ýþlem Görmeyen Kartlar Taþýnacaktýr');

          Doktorlar := TcxImageComboKadir.Create(self);
          Doktorlar.Name := 'sirketKod';
      //    Doktorlar.Tag := -20;
          Doktorlar.Conn := Datalar.ADOConnection2;
          Doktorlar.TableName := 'SIRKETLER_TNM';
          Doktorlar.ValueField := 'sirketKod';
          Doktorlar.DisplayField := 'Tanimi';
          Doktorlar.Filter := ' aKtif = 1';
          TcxImageComboKadir(FindComponent('sirketKod')).Properties.OnEditValueChanged := PropertiesEditValueChanged;
          setDataStringKontrol(self,Doktorlar, 'sirketKod','Firma',Kolon1,'',250);


          Doktorlar := TcxImageComboKadir.Create(self);
          Doktorlar.Name := 'subeKod';
          Doktorlar.Conn := Datalar.ADOConnection2;
          Doktorlar.TableName := 'SIRKETLER_TNM_view';
          Doktorlar.ValueField := 'subeKod';
          Doktorlar.DisplayField := 'subeTanim';
         // Doktorlar.Filter := '';
          setDataStringKontrol(self,Doktorlar, 'subeKod','Þube',Kolon1,'',120);


       end;

  gdgelisDuzenle :
       begin
          cxTab.Tabs[0].ImageIndex := 15;
          //Olustur(self,'','Gelis Duzenle',9,'');
          ClientHeight := 390;
          ClientWidth := 310;

          Doktorlar := TcxImageComboKadir.Create(self);
          Doktorlar.Conn := Datalar.ADOConnection2;
          Doktorlar.Name := 'TEDAVITURU';
          Doktorlar.TableName := 'vw_muayenetipleri';
          Doktorlar.ValueField := 'Kod';
          Doktorlar.DisplayField := 'Tanim';
          Doktorlar.Filter := '';
          setDataStringKontrol(self,Doktorlar, 'TEDAVITURU','Tedavi Türü',Kolon1,'',120);

          TcxImageComboKadir(FindComponent('TEDAVITURU')).EditValue := datalar.GelisDuzenleRecord.TedaviTuru;

          textEdit := TcxTextEdit.Create(self);
          textEdit.Name := 'dosyaNo';
          setDataStringKontrol(self,textEdit, 'dosyaNo','Dosya No',Kolon1,'',100);
          TcxTextEdit(FindComponent('dosyaNo')).EditValue := datalar.GelisDuzenleRecord.dosyaNo;

          textEdit := TcxTextEdit.Create(self);
          textEdit.Name := 'gelisNo';
          setDataStringKontrol(self,textEdit, 'gelisNo','Gelis No',Kolon1,'',60);
          TcxTextEdit(FindComponent('gelisNo')).EditValue := datalar.GelisDuzenleRecord.gelisNo;

          textEdit := TcxTextEdit.Create(self);
          textEdit.Name := 'TakipNo';
          setDataStringKontrol(self,textEdit, 'TakipNo','Takip No',Kolon1,'tkp',100);
          TcxTextEdit(FindComponent('TakipNo')).EditValue := datalar.GelisDuzenleRecord.TakipNo;


          mevcutTarih_ := TcxDateEditKadir.Create(self);
          mevcutTarih_.Name := 'GirisTarihi';
          setDataStringKontrol(self,mevcutTarih_, 'GirisTarihi','Giriþ Tarih',Kolon1,'',100);
          TcxTextEdit(FindComponent('GirisTarihi')).EditValue := datalar.GelisDuzenleRecord.GirisTarihi;

          Doktorlar := TcxImageComboKadir.Create(self);
          Doktorlar.Conn := Datalar.ADOConnection2;
          Doktorlar.Name := 'Doktor';
          Doktorlar.TableName := 'DoktorlarT';
          Doktorlar.ValueField := 'kod';
          Doktorlar.DisplayField := 'Tanimi';
          Doktorlar.Filter := ' durum = ''Aktif''';
          setDataStringKontrol(self,Doktorlar,'Doktor','Doktor',kolon1,'',120);
          TcxImageComboKadir(FindComponent('Doktor')).EditValue := datalar.GelisDuzenleRecord.doktor;

          textEdit := TcxTextEdit.Create(self);
          textEdit.Name := 'BransKodu';
          setDataStringKontrol(self,textEdit, 'BransKodu','Branþ Kodu',Kolon1,'',100);
          TcxTextEdit(FindComponent('BransKodu')).EditValue := datalar.GelisDuzenleRecord.BransKodu;

          textEdit := TcxTextEdit.Create(self);
          textEdit.Name := 'protokolNo';
          setDataStringKontrol(self,textEdit, 'protokolNo','Muayene Protokol No',Kolon1,'',100);
          TcxTextEdit(FindComponent('protokolNo')).EditValue := datalar.GelisDuzenleRecord.ProtokolNo;

       end;

     hastaGelisAc :
       begin
          cxTab.Tabs[0].ImageIndex := 21;
          //Olustur(self,'','',21,'');
          mevcutTarih_ := TcxDateEditKadir.Create(self);
          mevcutTarih_.Name := 'GirisTarihi';
          setDataStringKontrol(self,mevcutTarih_, 'BHDAT','Geliþ Tarih',Kolon1,'',100);
          TcxTextEdit(FindComponent('BHDAT')).EditValue := date;

          Doktorlar := TcxImageComboKadir.Create(self);
          Doktorlar.Conn := Datalar.ADOConnection2;
          Doktorlar.Name := 'TEDAVITURU';
          Doktorlar.TableName := 'Medula_TedaviTurleri';
          Doktorlar.ValueField := 'Kod';
          Doktorlar.DisplayField := 'Tanimi';
          Doktorlar.Filter := '';
          Doktorlar.EditValue := datalar.DefaultTedaviTuru;
          setDataStringKontrol(self,Doktorlar, 'TEDAVITURU','Tedavi Türü',Kolon1,'',120);

          Doktorlar := TcxImageComboKadir.Create(self);
          Doktorlar.Conn := Datalar.ADOConnection2;
          Doktorlar.Name := 'doktor';
          Doktorlar.TableName := 'DoktorlarT';
          Doktorlar.ValueField := 'Kod';
          Doktorlar.DisplayField := 'Tanimi';
          Doktorlar.Filter := ' sirketKod = ' + QuotedStr(datalar.AktifSirket);
          Doktorlar.ItemIndex := 0;
          setDataStringKontrol(self,Doktorlar, 'doktor','Doktor',Kolon1,'',120);

          setDataStringIC(self,'diyalizTedaviYontemi','Tedavi Yöntemi',kolon1,'',100,'Diyaliz_Tipleri','kod','Tanimi');
          TcxImageComboBox(FindComponent('diyalizTedaviYontemi')).EditValue := 'H';
       end;

  hastagelisDuzenle :
       begin
          cxTab.Tabs[0].ImageIndex := 15;
          //Olustur(self,'','Gelis Duzenle',9,'');
          ClientHeight := 390;
          ClientWidth := 400;

          setDataStringIC(self,'diyalizTedaviYontemi','Tedavi Yöntemi',kolon1,'',120,'Diyaliz_Tipleri','kod','Tanimi');
          TcxImageComboKadir(FindComponent('diyalizTedaviYontemi')).EditValue := datalar.GelisDuzenleRecordK.TedaviYontemi;

          setDataStringIC(self,'TEDAVITURU','Tedavi Türü',kolon1,'',120,'Medula_TedaviTurleri','kod','Tanimi');
          TcxImageComboKadir(FindComponent('TEDAVITURU')).EditValue := datalar.GelisDuzenleRecordK.TedaviTuru;

          (*
          textEdit := TcxTextEdit.Create(self);
          textEdit.Name := 'dosyaNo';
          setDataStringKontrol(self,textEdit, 'dosyaNo','Dosya No',Kolon1,'',100);
          TcxTextEdit(FindComponent('dosyaNo')).EditValue := datalar.GelisDuzenleRecordK.dosyaNo;

          textEdit := TcxTextEdit.Create(self);
          textEdit.Name := 'gelisNo';
          setDataStringKontrol(self,textEdit, 'gelisNo','Gelis No',Kolon1,'',60);
          TcxTextEdit(FindComponent('gelisNo')).EditValue := datalar.GelisDuzenleRecordK.gelisNo;
          *)

          textEdit := TcxTextEdit.Create(self);
          textEdit.Name := 'TakipNo';
          setDataStringKontrol(self,textEdit, 'TakipNo','Takip No',Kolon1,'tkp',100);
          TcxTextEdit(FindComponent('TakipNo')).EditValue := datalar.GelisDuzenleRecordK.TakipNo;
          if varToStr(TcxTextEdit(FindComponent('TakipNo')).EditValue) = ''
          then
           textEdit.Properties.ReadOnly := False
          else
          textEdit.Properties.ReadOnly := True;
          addButton(self,nil,'btnTakipNoTemizle','','TakipNo Temizle',Kolon1,'tkp',100,ButtonClick,-20);

          textEdit := TcxTextEdit.Create(self);
          textEdit.Name := 'BasvuruNo';
          setDataStringKontrol(self,textEdit, 'BasvuruNo','Basvuru No',Kolon1,'',100);
          TcxTextEdit(FindComponent('BasvuruNo')).EditValue := datalar.GelisDuzenleRecordK.basvuruNo;
          if varToStr(TcxTextEdit(FindComponent('BasvuruNo')).EditValue) = ''
          then
           textEdit.Properties.ReadOnly := False
          else
          textEdit.Properties.ReadOnly := True;


          textEdit := TcxTextEdit.Create(self);
          textEdit.Name := 'sysTakipNo';
          setDataStringKontrol(self,textEdit, 'sysTakipNo','SysTakipNo No',Kolon1,'systkp',100);
          TcxTextEdit(FindComponent('sysTakipNo')).EditValue := datalar.GelisDuzenleRecordK.sysTakipNo;
          if varToStr(TcxTextEdit(FindComponent('sysTakipNo')).EditValue) = ''
          then
           textEdit.Properties.ReadOnly := False
          else
          textEdit.Properties.ReadOnly := True;
          addButton(self,nil,'btnsysTakipNoTemizle','','SysTakipNo Temizle',Kolon1,'systkp',100,ButtonClick,-30);

          mevcutTarih_ := TcxDateEditKadir.Create(self);
          mevcutTarih_.Name := 'GirisTarihi';
          setDataStringKontrol(self,mevcutTarih_, 'GirisTarihi','Giriþ Tarih',Kolon1,'',100);
          TcxTextEdit(FindComponent('GirisTarihi')).EditValue := datalar.GelisDuzenleRecordK.GirisTarihi;

          mevcutTarih_ := TcxDateEditKadir.Create(self);
          mevcutTarih_.Name := 'CikisTarihi';
          setDataStringKontrol(self,mevcutTarih_, 'CikisTarihi','Çýkýþ Tarih',Kolon1,'',100);
          TcxTextEdit(FindComponent('CikisTarihi')).EditValue := datalar.GelisDuzenleRecordK.CikisTarih;

          Doktorlar := TcxImageComboKadir.Create(self);
          Doktorlar.Conn := Datalar.ADOConnection2;
          Doktorlar.Name := 'Doktor';
          Doktorlar.TableName := 'DoktorlarT';
          Doktorlar.ValueField := 'kod';
          Doktorlar.DisplayField := 'tanimi';
          Doktorlar.Filter := ' sirketKod = ' + QuotedStr(datalar.AktifSirket) ;
          setDataStringKontrol(self,Doktorlar,'Doktor','Doktor',kolon1,'',150);
          TcxImageComboKadir(FindComponent('Doktor')).EditValue := datalar.GelisDuzenleRecordK.doktor;

          setDataStringIC(self,'SERVIS','Branþ Kodu',kolon1,'',150,'Medula_BransKodlari','kod','Tanimi');
          TcxImageComboKadir(FindComponent('SERVIS')).EditValue := datalar.GelisDuzenleRecordK.BransKodu;

          setDataStringIC(self,'Taburcu','Taburcu Kodu',kolon1,'',150,'Medula_TaburcuKodlari','kod','Tanimi');
          TcxImageComboKadir(FindComponent('Taburcu')).EditValue := datalar.GelisDuzenleRecordK.TaburcuKodu;

          textEdit := TcxTextEdit.Create(self);
          textEdit.Name := 'Yupass';
          setDataStringKontrol(self,textEdit, 'Yupass','Yupass',Kolon1,'',150);
          TcxTextEdit(FindComponent('Yupass')).EditValue := datalar.GelisDuzenleRecordK.Yupass;
       end;

    gdgelisAc,gdPeryodikgelisAc :
       begin

          cxTab.Tabs[0].ImageIndex := 21;
          //Olustur(self,'','',21,'');
          mevcutTarih_ := TcxDateEditKadir.Create(self);
          mevcutTarih_.Name := 'GirisTarihi';
          setDataStringKontrol(self,mevcutTarih_, 'GirisTarihi','Muayene Tarih',Kolon1,'',100);
          TcxTextEdit(FindComponent('GirisTarihi')).EditValue := date;

          Doktorlar := TcxImageComboKadir.Create(self);
          Doktorlar.Conn := Datalar.ADOConnection2;
          Doktorlar.Name := 'TEDAVITURU';
          Doktorlar.TableName := 'vw_muayenetipleri';
          Doktorlar.ValueField := 'Kod';
          Doktorlar.DisplayField := 'Tanim';
          Doktorlar.Filter := '';
          setDataStringKontrol(self,Doktorlar, 'TEDAVITURU','Tedavi Türü',Kolon1,'',120);

          if datalar.doktorKodu = ''
          then begin
            Doktorlar := TcxImageComboKadir.Create(self);
            Doktorlar.Conn := Datalar.ADOConnection2;
            Doktorlar.TableName := 'DoktorlarT';
            Doktorlar.ValueField := 'kod';
            Doktorlar.DisplayField := 'tanimi';
            Doktorlar.Filter := ' durum = ''Aktif''';
            setDataStringKontrol(self,Doktorlar,'Doktor','Doktor',kolon1,'',120);
          end;

          if frmPopup._islem_ = gdPeryodikgelisAc
          then begin
            cxTab.Tabs[0].Caption := _caption_;
            cxTab.Tabs[0].ImageIndex := 39;
            ClientHeight := 320;
            Doktorlar.EditValue := 2;
            txtTetkikIstem := TcxCheckGroupKadir.Create(self);
            txtTetkikIstem.Properties.EditValueFormat := cvfStatesString;
            txtTetkikIstem.Properties.Columns := 2;
            txtTetkikIstem.Alignment := alCenterCenter;
            txtTetkikIstem.Conn := Datalar.ADOConnection2;
            txtTetkikIstem.TableName := 'TetkikIstemSablonItem';
            txtTetkikIstem.ValueField := 'id';
            txtTetkikIstem.DisplayField := 'tanimi';
            txtTetkikIstem.Filter := ' SablonGrupKod = ' + ifThen(_value_ = '','0',_value_);
            setDataStringKontrol(self,txtTetkikIstem,'tetkikIstemGrupSablon','Tetkikler',kolon1,'',180,80);
            txtTetkikIstem.Caption := '';

          end
          else begin
            textEdit := TcxTextEdit.Create(self);
            textEdit.Name := 'protokolNo';
            setDataStringKontrol(self,textEdit, 'protokolNo','Muayene Protokol No',Kolon1,'',100);
            TcxTextEdit(FindComponent('protokolNo')).EditValue := datalar.GelisDuzenleRecord.ProtokolNo;

            setDataStringChk (Self, 'ProtokolNoGuncelle', 'Protokol Numarasýný Buradan Devam Ettir', Kolon1, '', 220);
            TcxCheckBox(FindComponent('ProtokolNoGuncelle')).Properties.Alignment := taRightJustify;
            ClientHeight := 250;
          end;

       end;

   PrgSifre :
       begin
          setDataString(self,'MevcutSifre','Mevcut Þifre',Kolon1,'',100);
          setDataString(self,'YeniSifre','Yeni Þifre',Kolon1,'',100);
          setDataString(self,'YeniSifreTekrar','Yeni Þifre Tekrar',Kolon1,'',100);
          TcxTextEdit(FindComponent('MevcutSifre')).Properties.EchoMode := eemPassword;
          TcxTextEdit(FindComponent('MevcutSifre')).Properties.PasswordChar := '*';
          TcxTextEdit(FindComponent('YeniSifre')).Properties.EchoMode := eemPassword;
          TcxTextEdit(FindComponent('YeniSifre')).Properties.PasswordChar := '*';
          TcxTextEdit(FindComponent('YeniSifreTekrar')).Properties.EchoMode := eemPassword;
          TcxTextEdit(FindComponent('YeniSifreTekrar')).Properties.PasswordChar := '*';
          if DATALAR.SifreDegistir.SifreyiDoldur then
            TcxTextEdit(FindComponent('MevcutSifre')).Text := DATALAR.SifreDegistir.Sifre;
          ClientHeight := 250;
          ClientWidth := 400;
          if DATALAR.SifreDegistir.SifreyiDoldur then
            TcxTextEdit(FindComponent('YeniSifre')).SetFocus
           else
            TcxTextEdit(FindComponent('MevcutSifre')).SetFocus;
       end;

    userSifre :
       begin
          Caption := _caption_;
          cxTab.Tabs[0].Caption := datalar.SifreDegistir.KullaniciAdi;
          cxTab.Tabs[0].ImageIndex := 38;
          setDataString(self,'YeniSifre','Yeni Þifre',Kolon1,'',100);
          setDataString(self,'YeniSifreTekrar','Yeni Þifre Tekrar',Kolon1,'',100);
          TcxTextEdit(FindComponent('YeniSifre')).Properties.EchoMode := eemPassword;
          TcxTextEdit(FindComponent('YeniSifre')).Properties.PasswordChar := '*';
          TcxTextEdit(FindComponent('YeniSifreTekrar')).Properties.EchoMode := eemPassword;
          TcxTextEdit(FindComponent('YeniSifreTekrar')).Properties.PasswordChar := '*';


          ClientHeight := 235;
          ClientWidth := 350;



       end;


   yeniGozlem, GozlemDuzenle :
       begin
         ClientHeight := 310;
         ClientWidth := 442;
         textEdit := TcxTextEdit.Create(self);
         textEdit.Name := 'FirmaKodu';
         textEdit.Properties.ReadOnly := True;
         setDataStringKontrol(self,textEdit, 'FirmaKodu','Firma No',Kolon1,'',60);
         TcxTextEdit(FindComponent('FirmaKodu')).EditValue := _SahaDenetimVeri_.FirmaKod;

         textEdit := TcxTextEdit.Create(self);
         textEdit.Name := 'FirmaAdi';
         textEdit.Properties.ReadOnly := True;
         setDataStringKontrol(self,textEdit, 'FirmaAdi','Firma Ünvaný',Kolon1,'',250);
         TcxTextEdit(FindComponent('FirmaAdi')).EditValue := DATALAR.AktifSirketAdi;

         Doktorlar := TcxImageComboKadir.Create(self);
         Doktorlar.Conn := Datalar.ADOConnection2;
         Doktorlar.TableName := 'SIRKET_SUBE_TNM';
         Doktorlar.ValueField := 'subeKod';
         Doktorlar.DisplayField := 'subeTanim';
         Doktorlar.BosOlamaz := True;
         setDataStringKontrol(self,Doktorlar,'SubeKod','Þube',Kolon1,'',150);
         Doktorlar.EditValue := _SahaDenetimVeri_.SubeKod;
         Doktorlar.Filter := ' SirketKod = ' + QuotedStr(_SahaDenetimVeri_.FirmaKod) + ' and (Pasif = 0 or Pasif is Null)';


         doktorlar := TcxImageComboKadir.Create(self);
         doktorlar.Conn := Datalar.ADOConnection2;
         doktorlar.TableName := 'SahaGozlemSoruGrup';
         doktorlar.ValueField := 'GozlemGrup';
         doktorlar.DisplayField := 'Tanimi';
         doktorlar.BosOlamaz := True;
         doktorlar.Filter := '';
         Doktorlar.Properties.ReadOnly := (frmPopup.islem_ = GozlemDuzenle);
         OrtakEventAta(doktorlar);
         setDataStringKontrol(self,doktorlar,'GozlemGrup','Saha Gözlem Tipi',kolon1,'',250);
         TcxTextEdit(FindComponent('GozlemGrup')).EditValue := _SahaDenetimVeri_.GozlemGrubu;


         textEdit := TcxTextEdit.Create(self);
         textEdit.Name := 'Kullanici';
         textEdit.Properties.ReadOnly := True;
         setDataStringKontrol(self,textEdit, 'Kullanici','Denetimi Yapan Kullanici',Kolon1,'',80);
         TcxTextEdit(FindComponent('Kullanici')).EditValue := _SahaDenetimVeri_.KullaniciAdi;

         _Tarih_ := TcxDateEditKadir.Create(self);
         _Tarih_.Name := 'DenetimTarihi';
         setDataStringKontrol(self,_Tarih_, 'DenetimTarihi','Tarih',Kolon1,'',100);
         TcxTextEdit(FindComponent('DenetimTarihi')).EditValue := _SahaDenetimVeri_.DenetimTarihi;

         textEdit := TcxTextEdit.Create(self);
         textEdit.Name := 'DenetimDefterNo';
         textEdit.Properties.ReadOnly := False;
         setDataStringKontrol(self,textEdit, 'DenetimDefterNo','Denetim Defter No.',Kolon1,'',60);
         TcxTextEdit(FindComponent('DenetimDefterNo')).EditValue := _SahaDenetimVeri_.DenetimDefterNo;
       end;

ptPersonelTetkikleri :
       begin
          ClientHeight := 200;
          ClientWidth := 300;

          mevcutTarih_ := TcxDateEditKadir.Create(self);
          mevcutTarih_.Name := 'GirisTarihi';
          setDataStringKontrol(self,mevcutTarih_, 'ilkTarih','Ýlk Tarih',Kolon1,'',100);
          TcxTextEdit(FindComponent('ilkTarih')).EditValue := date;

          _Tarih_ := TcxDateEditKadir.Create(self);
          _Tarih_.Name := 'DenetimTarihi';
          setDataStringKontrol(self,_Tarih_, 'SonTarih','Son Tarih',Kolon1,'',100);
          TcxTextEdit(FindComponent('SonTarih')).EditValue := date;


       end;

 yeniRisk ,
 riskDuzenle :    begin
                    ClientHeight := 650;
                    ClientWidth := 460;

                    ICombo := TcxImageComboKadir.Create(self);
                    ICombo.Name := 'RiskBolum';
                    ICombo.Tag := -1;
                    ICombo.Conn := datalar.ADOConnection2;
                    ICombo.TableName := 'RDS_RiskBolum';
                    ICombo.ValueField := 'Kod';
                    ICombo.DisplayField := 'tanimi';
                    ICombo.Filter := '';
                    setDataStringKontrol(self,ICombo,'RiskBolum','Risk Bölümü',Kolon1,'RB',250);
                    addButton(self,nil,'btnRiskBolumEkle','','Ekle',Kolon1,'RB',40,ButtonClick,20);
                    TcxImageComboKadir(FindComponent('RiskBolum')).EditValue := datalar.Risk.Bolum;


                    ICombo := TcxImageComboKadir.Create(self);
                    ICombo.Name := 'TehlikeKaynak';
                    ICombo.Tag := -1;
                    ICombo.Properties.DropDownRows := 20;
                    ICombo.Conn := datalar.ADOConnection2;

                    case datalar.Risk.Method of
                     1,2 : begin
                              if datalar.Risk.SektorId = ''
                              then
                               ICombo.TableName := 'RDS_TehlikeKaynak'
                              else
                              ICombo.TableName := '(select * from RDS_RiskKaynakSektorEslesmeTablosu ES ' +
                                                  ' join RDS_TehlikeKaynak TK on TK.kod = ES.TehlikeKaynagi ' +
                                                  ' where sektorid = ' + datalar.Risk.SektorId+ ') T ';

                              ICombo.ValueField := 'Kod';
                              ICombo.DisplayField := 'tanimi';
                              ICombo.Filter := ' Method is null';
                     end;
                        3 : begin
                              ICombo.TableName := 'RDS_TehlikeKaynak';
                              ICombo.ValueField := 'Kod';
                              ICombo.DisplayField := 'tanimi';
                              ICombo.Filter := ' Method = ' + vartostr(datalar.Risk.Method);
                            end;
                    end;


                    setDataStringKontrol(self,ICombo,'TehlikeKaynak','Tehlike Kaynaðý',Kolon1,'TK',250);
                    addButton(self,nil,'btnTehlikeKaynakEkle','','Ekle',Kolon1,'TK',40,ButtonClick,21);
                    TcxImageComboKadir(FindComponent('TehlikeKaynak')).EditValue := datalar.Risk.TehlikeKaynagi;

                 (*
                    ICombo := TcxImageComboKadir.Create(self);
                    ICombo.Name := 'Tehlike';
                    ICombo.Tag := -100;
                    ICombo.Conn := datalar.ADOConnection2;
                    ICombo.TableName := 'RDS_Tehlike';
                    ICombo.ValueField := 'Kod';
                    ICombo.DisplayField := 'tanimi';
                    ICombo.Filter := '';
                    setDataStringKontrol(self,ICombo,'Tehlike','Tehlike',Kolon1,'',300);
                   *)
                    setDataStringB(self,'Tehlike','Tehlike',Kolon1,'Teh',250,List,False,nil,'','',False,True,-100);
                    addButton(self,nil,'btnTehlikeEkle','','Ekle',Kolon1,'Teh',40,ButtonClick,23);
                    TcxButtonEditKadir(FindComponent('Tehlike')).Properties.OnButtonClick := PropertiesButtonClick;
                    TcxButtonEditKadir(FindComponent('Tehlike')).EditValue := datalar.Risk.Tehlike;



                    ICombo := TcxImageComboKadir.Create(self);
                    ICombo.Name := 'Etkilenecekler';
                 //   ICombo.Tag := 100;
                    ICombo.Conn := datalar.ADOConnection2;
                    ICombo.TableName := 'RDS_Etkilenecekler';
                    ICombo.ValueField := 'Kod';
                    ICombo.DisplayField := 'tanimi';
                    ICombo.Filter := '';
                    setDataStringKontrol(self,ICombo,'Etkilenecekler','Etkilenecekler',Kolon1,'Etki',250);
                    addButton(self,nil,'btnEtkileneceklerEkle','','Ekle',Kolon1,'Etki',40,ButtonClick,24);
                    TcxImageComboKadir(FindComponent('Etkilenecekler')).EditValue := datalar.Risk.Etkilenecek;

                    setDataStringB(self,'Risk_tanimi','Risk Taným',Kolon1,'',250,List,False,nil,'','',False,True,-100);
                    TcxButtonEditKadir(FindComponent('Risk_tanimi')).Properties.OnButtonClick := PropertiesButtonClick;
                    TcxImageComboKadir(FindComponent('Risk_tanimi')).EditValue := datalar.Risk.Risk_tanim;

                    setDataStringMemo(self,'Onlemler','Alýnmasý Gereken Önlem',Kolon1,'',250,80);
                    TcxMemo(FindComponent('Onlemler')).text := datalar.Risk.Onlemler;

                    ICombo := TcxImageComboKadir.Create(self);
                    ICombo.Name := 'Olasilik';
                    ICombo.Tag := -100;
                    ICombo.Conn := datalar.ADOConnection2;
                    ICombo.TableName := 'RDS_OLASILIK';
                    ICombo.ValueField := 'degeri';
                    ICombo.DisplayField := 'tanimi';
                    ICombo.Filter := ' Metod = ' + vartostr(datalar.Risk.Method);

                    setDataStringKontrol(self,ICombo,'Olasilik','Olasýlýk',Kolon1,'',250);
                    TcxImageComboKadir(FindComponent('Olasilik')).Properties.OnEditValueChanged := PropertiesEditValueChanged;

                  //  if datalar.Risk.Method = 1  // FineKenny
                //    then begin
                     ICombo := TcxImageComboKadir.Create(self);
                     ICombo.Name := 'Frekans';
                     ICombo.Tag := -100;
                     ICombo.Conn := datalar.ADOConnection2;
                     ICombo.TableName := 'RDS_Frekans';
                     ICombo.ValueField := 'degeri';
                     ICombo.DisplayField := 'tanimi';
                     ICombo.Filter := ' Method = ' + vartostr(datalar.Risk.Method);

                     case datalar.Risk.Method of
                       3 : setDataStringKontrol(self,ICombo,'Frekans','Saptanabilirlik',Kolon1,'',250);
                       1 : setDataStringKontrol(self,ICombo,'Frekans','Frekans',Kolon1,'',250);
                     end;


                     TcxImageComboKadir(FindComponent('Frekans')).Properties.OnEditValueChanged := PropertiesEditValueChanged;
                 //   end;

                    ICombo := TcxImageComboKadir.Create(self);
                    ICombo.Name := 'Siddet';
                    ICombo.Tag := -100;
                    ICombo.Conn := datalar.ADOConnection2;
                    ICombo.TableName := 'RDS_SIDDET';
                    ICombo.ValueField := 'degeri';
                    ICombo.DisplayField := 'tanimi';
                    ICombo.Filter := 'Metod = ' + vartostr(datalar.Risk.Method);
                    setDataStringKontrol(self,ICombo,'Siddet','Þiddet',Kolon1,'',250);
                    TcxImageComboKadir(FindComponent('Siddet')).Properties.OnEditValueChanged := PropertiesEditValueChanged;

                    setDataStringCurr(self,'Risk','Risk',Kolon1,'',80);

                    TcxImageComboKadir(FindComponent('Olasilik')).EditValue := datalar.Risk.Olasilik;
                    case datalar.Risk.Method of
                     1,3 :  TcxImageComboKadir(FindComponent('Frekans')).EditValue := datalar.Risk.Frekans;
                    end;
                    TcxImageComboKadir(FindComponent('Siddet')).EditValue := datalar.Risk.Siddet;


                    setDataStringMemo(self,'MevcutOnlem','Mevcut Önlemler',Kolon1,'',250,80);
                    TcxMemo(FindComponent('MevcutOnlem')).text := datalar.Risk.MevcutOnlem;

                    setDataString(self,'Sorumlu','Sorumlu',Kolon1,'',120);
                    TcxTextEditKadir(FindComponent('Sorumlu')).EditValue := datalar.Risk.Sorumlu;

                    ICombo := TcxImageComboKadir.Create(self);
                    ICombo.Name := 'TerminTipleri';
                   // ICombo.Tag := -100;
                    ICombo.Conn := datalar.ADOConnection2;
                    ICombo.TableName := 'TerminTipleri';
                    ICombo.ValueField := 'kod';
                    ICombo.DisplayField := 'tanimi';
                    ICombo.Filter := '';
                    setDataStringKontrol(self,ICombo,'TerminTipleri','Termin Sure',Kolon1,'',100);
                    TcxImageComboKadir(FindComponent('TerminTipleri')).EditValue := datalar.Risk.TerminSure;

                    Tarih := TcxDateEditKadir.Create(self);
                    setDataStringKontrol(self,Tarih, 'Termin','Termin Tarihi',Kolon1,'',100);
                    TcxTextEditKadir(FindComponent('Termin')).EditValue := datalar.Risk.Termin;

                 //   setDataStringKontrol(self,Tarih, 'Gercek','Gerçekleþme Tarihi',Kolon1,'',100);
                  //  TcxTextEditKadir(FindComponent('Gercek')).EditValue := datalar.Risk.Gerceklesme;


                    Tarih := TcxDateEditKadir.Create(self);
                    setDataStringKontrol(self,Tarih, 'Gercek','Gerçekleþme Tarihi',Kolon1,'',100);
                    TcxTextEditKadir(FindComponent('Gercek')).EditValue := datalar.Risk.Gerceklesme;

                    ICombo := TcxImageComboKadir.Create(self);
                    ICombo.Name := 'Olasilik_2';
                    ICombo.Tag := -2;
                    TcxImageComboKadir(FindComponent('Olasilik_2')).Properties.Items :=
                    TcxImageComboKadir(FindComponent('Olasilik')).Properties.Items;
                    setDataStringKontrol(self,ICombo,'Olasilik_2','Olasýlýk',Kolon1,'',250);
                    TcxImageComboKadir(FindComponent('Olasilik_2')).Tag := -2;
                    TcxImageComboKadir(FindComponent('Olasilik_2')).Properties.OnEditValueChanged := PropertiesEditValueChanged;

                    if (datalar.Risk.Method = 1) or (datalar.Risk.Method = 3)
                    then begin
                      ICombo := TcxImageComboKadir.Create(self);
                      ICombo.Name := 'Frekans_2';
                      ICombo.Tag := -2;
                      TcxImageComboKadir(FindComponent('Frekans_2')).Properties.Items :=
                      TcxImageComboKadir(FindComponent('Frekans')).Properties.Items;
                      case datalar.Risk.Method of
                        3 : setDataStringKontrol(self,ICombo,'Frekans_2','Saptanabilirlik',Kolon1,'',250);
                        1 : setDataStringKontrol(self,ICombo,'Frekans_2','Frekans',Kolon1,'',250);
                      end;
                      TcxImageComboKadir(FindComponent('Frekans_2')).Tag := -2;
                      TcxImageComboKadir(FindComponent('Frekans_2')).Properties.OnEditValueChanged := PropertiesEditValueChanged;
                    end;

                    ICombo := TcxImageComboKadir.Create(self);
                    ICombo.Name := 'Siddet_2';
                    ICombo.Tag := -2;
                    TcxImageComboKadir(FindComponent('Siddet_2')).Properties.Items :=
                    TcxImageComboKadir(FindComponent('Siddet')).Properties.Items;
                    setDataStringKontrol(self,ICombo,'Siddet_2','Þiddet',Kolon1,'',250);
                    TcxImageComboKadir(FindComponent('Siddet_2')).Tag := -2;
                    TcxImageComboKadir(FindComponent('Siddet_2')).Properties.OnEditValueChanged := PropertiesEditValueChanged;

                    setDataStringCurr(self,'Risk_2','Risk',Kolon1,'',80);

                    TcxImageComboKadir(FindComponent('Olasilik_2')).EditValue := datalar.Risk.Olasilik_2;
                    if (datalar.Risk.Method = 1) or (datalar.Risk.Method = 3)
                    Then TcxImageComboKadir(FindComponent('Frekans_2')).EditValue := datalar.Risk.Frekans_2;
                    TcxImageComboKadir(FindComponent('Siddet_2')).EditValue := datalar.Risk.Siddet_2;

                    setDataStringMemo(self,'yasalDayanak','Yasal Dayanak',Kolon1,'',250,80);
                    TcxMemo(FindComponent('yasalDayanak')).text := datalar.Risk.yasalDayanak;

                    Image1 := TcxImage.Create(self);
                    Image1.Properties.GraphicClassName := 'TJPEGImage';
                    setDataStringKontrol(self,Image1,'ImageResim','Image',Kolon1,'',300,300);
                  //  datalar.Risk.Image.Picture.SaveToFile('dd.jpg');
                    try
                     TcxImage(FindComponent('ImageResim')).Picture := datalar.Risk.Image.Picture;
                    finally
                    end;
                    addButton(self,nil,'btnResimEkle','','Resim Ekle',Kolon1,'',100,ButtonClick,98);


               end;
  yeniFaaliyet,
  FaaliyetDuzenle :
               begin
                    ClientHeight := 500;
                    ClientWidth := 300;
                    Doktorlar := TcxImageComboKadir.Create(self);
                    Doktorlar.Conn := Datalar.ADOConnection2;
                    Doktorlar.TableName := 'FaaliyetKonulari';
                    Doktorlar.ValueField := 'kod';
                    Doktorlar.DisplayField := 'tanimi';
                    Doktorlar.BosOlamaz := True;
                    Doktorlar.Filter := '';
                    setDataStringKontrol(self,Doktorlar,'FaaliyetKonulari','Faaliyet Konulari',Kolon1,'',150);
                    Doktorlar.EditValue := datalar.YillikCalismaPlan.faliyetid;

                    Doktorlar := TcxImageComboKadir.Create(self);
                    Doktorlar.Conn := Datalar.ADOConnection2;
                    Doktorlar.TableName := 'KontrolPeryodTipleri';
                    Doktorlar.ValueField := 'kod';
                    Doktorlar.DisplayField := 'tanimi';
                    Doktorlar.BosOlamaz := True;
                    Doktorlar.Filter := '';
                    setDataStringKontrol(self,Doktorlar,'KontrolPeryodTipleri','Peryot',Kolon1,'',100);

                    CalismaplaninaAylarikoy;
                    TcxImageComboKadir(FindComponent('peryod')).EditValue := datalar.YillikCalismaPlan.peryod;
                    TcxImageComboKadir(FindComponent('ocak')).EditValue := datalar.YillikCalismaPlan.ocak;
                    TcxImageComboKadir(FindComponent('subat')).EditValue := datalar.YillikCalismaPlan.subat;
                    TcxImageComboKadir(FindComponent('mart')).EditValue := datalar.YillikCalismaPlan.mart;
                    TcxImageComboKadir(FindComponent('nisan')).EditValue := datalar.YillikCalismaPlan.nisan;
                    TcxImageComboKadir(FindComponent('mayis')).EditValue := datalar.YillikCalismaPlan.mayis;
                    TcxImageComboKadir(FindComponent('haziran')).EditValue := datalar.YillikCalismaPlan.mayis;
                    TcxImageComboKadir(FindComponent('temmuz')).EditValue := datalar.YillikCalismaPlan.mayis;
                    TcxImageComboKadir(FindComponent('agustos')).EditValue := datalar.YillikCalismaPlan.mayis;
                    TcxImageComboKadir(FindComponent('eylul')).EditValue := datalar.YillikCalismaPlan.mayis;
                    TcxImageComboKadir(FindComponent('ekim')).EditValue := datalar.YillikCalismaPlan.mayis;
                    TcxImageComboKadir(FindComponent('kasim')).EditValue := datalar.YillikCalismaPlan.mayis;
                    TcxImageComboKadir(FindComponent('aralik')).EditValue := datalar.YillikCalismaPlan.mayis;
                    TcxImageComboKadir(FindComponent('ocak_R')).EditValue := datalar.YillikCalismaPlan.ocakR;
                    TcxImageComboKadir(FindComponent('subat_R')).EditValue := datalar.YillikCalismaPlan.subatR;
                    TcxImageComboKadir(FindComponent('mart_R')).EditValue := datalar.YillikCalismaPlan.martR;
                    TcxImageComboKadir(FindComponent('nisan_R')).EditValue := datalar.YillikCalismaPlan.nisanR;
                    TcxImageComboKadir(FindComponent('mayis_R')).EditValue := datalar.YillikCalismaPlan.mayisR;
                    TcxImageComboKadir(FindComponent('haziran_R')).EditValue := datalar.YillikCalismaPlan.mayisR;
                    TcxImageComboKadir(FindComponent('temmuz_R')).EditValue := datalar.YillikCalismaPlan.mayisR;
                    TcxImageComboKadir(FindComponent('agustos_R')).EditValue := datalar.YillikCalismaPlan.mayisR;
                    TcxImageComboKadir(FindComponent('eylul_R')).EditValue := datalar.YillikCalismaPlan.mayisR;
                    TcxImageComboKadir(FindComponent('ekim_R')).EditValue := datalar.YillikCalismaPlan.mayisR;
                    TcxImageComboKadir(FindComponent('kasim_R')).EditValue := datalar.YillikCalismaPlan.mayisR;
                    TcxImageComboKadir(FindComponent('aralik_R')).EditValue := datalar.YillikCalismaPlan.mayisR;

                    Doktorlar := TcxImageComboKadir.Create(self);
                    Doktorlar.Conn := nil;
                    Doktorlar.ItemList := 'Ýþyeri Hekimi;1,Ýþ Güvenliði Uzm.;2,ÝÞ GÜVENLÝÐÝ UZMANI/ÝÞ YERÝ HEKÝMÝ;3,ÝÞVEREN;4,ÝÞ GÜVENLÝÐÝ UZMANI/ÝÞVEREN;5';
                    Doktorlar.Filter := '';
                    setDataStringKontrol(self,Doktorlar,'Sorumlu1','Sorumlu',Kolon1,'',100);

                    Doktorlar := TcxImageComboKadir.Create(self);
                    Doktorlar.Conn := nil;
                    Doktorlar.ItemList := 'TAKÝP;1,KATILIM;2,TESPÝT;3,ÖNERÝ;4,KATILIM VE ÖNERÝ;5,PLANLAMAVE TAKÝBÝ;6,UYGULAMA;7,ÖNERÝ VE PLANLAMA;8,EÐÝTÝM ÖNERÝ;9,KONTROL VE HAZIRLIK;10,EÐÝTÝM ALINMASI;11,EÐÝTÝM UYGULAMASI;12';
                    Doktorlar.Filter := '';
                    setDataStringKontrol(self,Doktorlar,'Sorumlu1Konu','Sorumlu',Kolon1,'',100);

                    Doktorlar := TcxImageComboKadir.Create(self);
                    Doktorlar.Conn := nil;
                    Doktorlar.ItemList := 'Ýþyeri Hekimi;1,Ýþ Güvenliði Uzm.;2,ÝÞ GÜVENLÝÐÝ UZMANI/ÝÞ YERÝ HEKÝMÝ;3,ÝÞVEREN;4,ÝÞ GÜVENLÝÐÝ UZMANI/ÝÞVEREN;5';
                    Doktorlar.Filter := '';
                    setDataStringKontrol(self,Doktorlar,'Sorumlu2','Sorumlu',Kolon1,'',100);

                    Doktorlar := TcxImageComboKadir.Create(self);
                    Doktorlar.Conn := nil;
                    Doktorlar.ItemList := 'TAKÝP;1,KATILIM;2,TESPÝT;3,ÖNERÝ;4,KATILIM VE ÖNERÝ;5,PLANLAMAVE TAKÝBÝ;6,UYGULAMA;7,ÖNERÝ VE PLANLAMA;8,EÐÝTÝM ÖNERÝ;9,KONTROL VE HAZIRLIK;10,EÐÝTÝM ALINMASI;11,EÐÝTÝM UYGULAMASI;12';
                    Doktorlar.Filter := '';
                    setDataStringKontrol(self,Doktorlar,'Sorumlu2Konu','Sorumlu',Kolon1,'',100);

               end;

   yeniGozetim,gozetimDuzenle :
               begin
                    ClientHeight := 500;
                    ClientWidth := 500;
                    setDataStringMemo(self,'Tespitler','Tespitler',Kolon1,'',250,80);
                    TcxMemo(FindComponent('Tespitler')).text := datalar.Risk.Onlemler;

                    _Tarih_ := TcxDateEditKadir.Create(self);
                    _Tarih_.Name := 'TespitTarihi';
                    setDataStringKontrol(self,_Tarih_, 'TespitTarihi','Tespit Tarihi',Kolon1,'',100);
                    TcxTextEdit(FindComponent('TespitTarihi')).Text := datalar.Risk.SSGTespitTarihi;

                    (*
                    Image1 := TcxImage.Create(self);
                    Image1.Properties.GraphicClassName := 'TJPEGImage';
                    setDataStringKontrol(self,Image1,'ImageResim','Image',Kolon1,'',300,300);
                     *)
                    Doktorlar := TcxImageComboKadir.Create(self);
                    Doktorlar.Conn := Datalar.ADOConnection2;
                    Doktorlar.TableName := 'RDS_RiskBolum';
                    Doktorlar.ValueField := 'kod';
                    Doktorlar.DisplayField := 'tanimi';
                    Doktorlar.BosOlamaz := True;
                    Doktorlar.Filter := '';
                    setDataStringKontrol(self,Doktorlar,'Bolum','Bölüm',Kolon1,'',150);
                    Doktorlar.EditValue := datalar.Risk.SSGBolum;

                    Doktorlar := TcxImageComboKadir.Create(self);
                    Doktorlar.Conn := Datalar.ADOConnection2;
                    Doktorlar.TableName := 'SahaGozetimFaaliyetTuru';
                    Doktorlar.ValueField := 'kod';
                    Doktorlar.DisplayField := 'tanimi';
                    Doktorlar.BosOlamaz := True;
                    Doktorlar.Filter := '';
                    setDataStringKontrol(self,Doktorlar,'YapilacakFaliyetTuru','Yapýlacak Faaliyet Türü',Kolon1,'',150);
                    Doktorlar.EditValue := datalar.Risk.SSGYapilacakFaliyetTuru;

                    setDataStringMemo(self, 'KokNeden', 'Kok Neden', kolon1, '', 250,50);
                    TcxTextEdit(FindComponent('KokNeden')).Text := datalar.Risk.SSGKokNeden;

                    setDataStringMemo(self, 'FaliyetPlan', 'Faaliyet Plan', kolon1, '', 250,50);
                    TcxTextEdit(FindComponent('FaliyetPlan')).Text := datalar.Risk.SSGFaliyetPlan;

                    _Tarih_ := TcxDateEditKadir.Create(self);
                    _Tarih_.Name := 'UygulanacakFaliyetTarihi';
                    setDataStringKontrol(self,_Tarih_, 'UygulanacakFaliyetTarihi','Uygulanacak Faaliyet Tarihi',Kolon1,'',100);
                    TcxTextEdit(FindComponent('UygulanacakFaliyetTarihi')).Text := datalar.Risk.SSGUygulanacakFaliyetTarihi;
                    setDataString(self, 'BolumYetkilisi', 'Bolum Yetkilisi', kolon1, '', 200);
                    TcxTextEdit(FindComponent('BolumYetkilisi')).Text := datalar.Risk.SSGBolumYetkilisi;

                    Doktorlar := TcxImageComboKadir.Create(self);
                    Doktorlar.Conn := Datalar.ADOConnection2;
                    Doktorlar.TableName := 'SahaGozetimTakipTetkikSonuc';
                    Doktorlar.ValueField := 'kod';
                    Doktorlar.DisplayField := 'tanimi';
                    Doktorlar.BosOlamaz := True;
                    Doktorlar.Filter := '';
                    setDataStringKontrol(self,Doktorlar,'Sonuc','Takip Tetkik Sonucu',Kolon1,'',150);
                    Doktorlar.EditValue := datalar.Risk.SSGSonuc;

                    setDataStringMemo(self, 'YapilanFaliyet', 'Yapýlan Faaliyet', kolon1, '', 250,50);
                    TcxTextEdit(FindComponent('YapilanFaliyet')).Text := datalar.Risk.SSGYapilanFaliyet;

                    _Tarih_ := TcxDateEditKadir.Create(self);
                    _Tarih_.Name := 'FaliyetKapamaTarihi';
                    setDataStringKontrol(self,_Tarih_, 'FaliyetKapamaTarihi','Kapatma Tarihi',Kolon1,'',100);
                    TcxTextEdit(FindComponent('FaliyetKapamaTarihi')).Text := datalar.Risk.SSGFaliyetKapamaTarihi;

                    _Tarih_ := TcxDateEditKadir.Create(self);
                    _Tarih_.Name := 'TakipSüresi';
                    setDataStringKontrol(self,_Tarih_, 'TakipSüresi','Takip Süresi',Kolon1,'',100);
                    TcxTextEdit(FindComponent('TakipSüresi')).Text := datalar.Risk.SSGTakipSüresi;


                    Doktorlar := TcxImageComboKadir.Create(self);
                    Doktorlar.Name := 'KapamaOnayi';
                    Doktorlar.Conn := nil;
                    Doktorlar.ItemList := '1;Evet,0;Hayýr';
                    Doktorlar.Filter := '';
                    setDataStringKontrol(self,Doktorlar,'KapamaOnayi','Kapama Onayi',kolon1,'',50);
                    Doktorlar.EditValue := datalar.Risk.SSGKapamaOnayi;
                  //  datalar.Risk.Image.Picture.SaveToFile('dd.jpg');
                   (*
                    try
                     TcxImage(FindComponent('ImageResim')).Picture := datalar.Risk.Image.Picture;
                    finally
                    end;
                     *)
                   // addButton(self,nil,'btnResimEkle','','Resim Ekle',Kolon1,'',100,ButtonClick,99);

               end;

   yeniDenetim,denetimDuzenle :
               begin
                    ClientHeight := 500;
                    ClientWidth := 500;
                    setDataStringMemo(self,'TehlikeliDurum','Tehlikeli Durum',Kolon1,'',250,80);
                    TcxMemo(FindComponent('TehlikeliDurum')).text := datalar.SahaDenetim.TehlikeliDurum;

                    Doktorlar := TcxImageComboKadir.Create(self);
                    Doktorlar.Conn := Datalar.ADOConnection2;
                    Doktorlar.TableName := 'RDS_RiskBolum';
                    Doktorlar.ValueField := 'kod';
                    Doktorlar.DisplayField := 'tanimi';
                    Doktorlar.BosOlamaz := True;
                    Doktorlar.Filter := '';
                    setDataStringKontrol(self,Doktorlar,'Bolum','Bölüm',Kolon1,'',150);
                    Doktorlar.EditValue := datalar.SahaDenetim.Bolum;



                    setDataStringMemo(self, 'Yonetmelik', 'Yonetmelik - Ek Açýklama', kolon1, '', 250,50);
                    TcxTextEdit(FindComponent('Yonetmelik')).Text := datalar.SahaDenetim.Yonetmelik;

                    setDataString(self, 'IlgiliKisi', 'Bolum Yetkilisi', kolon1, '', 200);
                    TcxTextEdit(FindComponent('IlgiliKisi')).Text := datalar.SahaDenetim.IlgiliKisi;


                    Doktorlar := TcxImageComboKadir.Create(self);
                    Doktorlar.Name := 'KapamaOnayi';
                    Doktorlar.Conn := nil;
                    Doktorlar.ItemList := '1;Baþladý,2;Planlandý,3;Tamamlandý';
                    Doktorlar.Filter := '';
                    setDataStringKontrol(self,Doktorlar,'isinDurumu','Ýþin Durumu',kolon1,'',50);
                    Doktorlar.EditValue := datalar.SahaDenetim.isinDurumu;
                  //  datalar.Risk.Image.Picture.SaveToFile('dd.jpg');

                    Image1 := TcxImage.Create(self);
                    Image1.Properties.GraphicClassName := 'TJPEGImage';
                    setDataStringKontrol(self,Image1,'ImageResim','Image',Kolon1,'',300,300);

                    try
                     TcxImage(FindComponent('ImageResim')).Picture := datalar.SahaDenetim.Image.Picture;
                    finally
                    end;

                    addButton(self,nil,'btnResimEkle','','Resim Ekle',Kolon1,'',100,ButtonClick,99);

               end;

    yeniKKD,KKDDuzenle :
               begin
                  ClientHeight := 500;
                  ClientWidth := 500;
                 (*
                  uzuv := TcxImageComboKadir.Create(self);
                  uzuv.Conn := datalar.ADOConnection2;
                  uzuv.TableName := 'Uzuvlar';
                  uzuv.ValueField := 'Kod';
                  uzuv.DisplayField := 'tanimi';
                  uzuv.Filter := '';
                  setDataStringKontrol(self,uzuv,'VucutKisim','Vücut Kýsým',Kolon1,'',150);
                  TcxImageComboKadir(FindComponent('VucutKisim')).Text := datalar.KKD.VucutKisim;
                  *)
                  setDataStringB(self,'VucutKisim','Vücut Kýsým',Kolon1,'',150,List,False,nil,'','',False,True,-100);
                  TcxButtonEditKadir(FindComponent('VucutKisim')).Properties.OnButtonClick := PropertiesButtonClick;
                  TcxButtonEditKadir(FindComponent('VucutKisim')).EditText := datalar.KKD.VucutKisim;
               (*
                  uzuv := TcxImageComboKadir.Create(self);
                  uzuv.Conn := datalar.ADOConnection2;
                  uzuv.TableName := 'Uzuvlar';
                  uzuv.ValueField := 'Kod';
                  uzuv.DisplayField := 'tanimi';
                  uzuv.Filter := '';
                  setDataStringKontrol(self,uzuv,'VucutUzuv','Vücut Uzuv',Kolon1,'',150);
                  TcxImageComboKadir(FindComponent('VucutUzuv')).EditText := datalar.KKD.VucutUzuv;
                 *)
                  setDataStringB(self,'VucutUzuv','Vücut Uzuv',Kolon1,'',150,List,False,nil,'','',False,True,-100);
                  TcxButtonEditKadir(FindComponent('VucutUzuv')).Properties.OnButtonClick := PropertiesButtonClick;
                  TcxButtonEditKadir(FindComponent('VucutUzuv')).EditText := datalar.KKD.VucutUzuv;
                (*
                  uzuv := TcxImageComboKadir.Create(self);
                  uzuv.Name := 'KKD';
                  uzuv.Tag := -100;
                  uzuv.Conn := datalar.ADOConnection2;
                  uzuv.TableName := 'KKD';
                  uzuv.ValueField := 'Kod';
                  uzuv.DisplayField := 'tanimi';
                  uzuv.Filter := '';
                  setDataStringKontrol(self,uzuv,'KKD','Kullanýlacak KKD',Kolon1,'kk',150);
                  *)
                  setDataStringB(self,'KKD','Kiþisel Donaným',Kolon1,'kk',150,List,False,nil,'','',False,True,-100);
                  TcxButtonEditKadir(FindComponent('KKD')).Properties.OnButtonClick := PropertiesButtonClick;
                  TcxButtonEditKadir(FindComponent('KKD')).EditText := datalar.KKD.KKD;
                  addButton(self,nil,'btnKKDEkle','','Ekle',Kolon1,'kk',40,ButtonClick,22);

                  setDataStringB(self,'TS_EN_KODLARI','Ulusal Standart',Kolon1,'',150,List,False,nil,'','',False,True,-100);
                  TcxButtonEditKadir(FindComponent('TS_EN_KODLARI')).Properties.OnButtonClick := PropertiesButtonClick;
                  TcxButtonEditKadir(FindComponent('TS_EN_KODLARI')).EditText := datalar.KKD.TSE;

                  setDataString(self,'KullanilacakIS','KullanilacakIS',Kolon1,'',250);
                  TcxTextEditKadir(FindComponent('KullanilacakIS')).EditingText := datalar.KKD.KullanilacakIs;

                  ICombo := TcxImageComboKadir.Create(self);
                  ICombo.Name := 'RiskBolum';
                  ICombo.Tag := -1;
                  ICombo.Conn := datalar.ADOConnection2;
                  ICombo.TableName := 'RDS_RiskBolum';
                  ICombo.ValueField := 'Kod';
                  ICombo.DisplayField := 'tanimi';
                  ICombo.Filter := '';
                  setDataStringKontrol(self,ICombo,'RiskBolum','Risk Bölümü',Kolon1,'',250);
              //    addButton(self,nil,'btnRiskBolumEkle','','Ekle',Kolon1,'RB',40,ButtonClick,20);
                  TcxImageComboKadir(FindComponent('RiskBolum')).EditValue := datalar.KKD.Bolum;

                  (*
                  setDataStringB(self,'Risk_tanimi','Risk Taným',Kolon1,'',250,List,False,nil,'','',False,True,-100);
                  TcxButtonEditKadir(FindComponent('Risk_tanimi')).Properties.OnButtonClick := PropertiesButtonClick;
                  TcxImageComboKadir(FindComponent('Risk_tanimi')).EditValue := datalar.Risk.Risk_tanim;
                    *)

               end;


   yeniRiskBolum ,
   yeniTehlikeKaynak,
   yeniTehlike,
   yeniEkilenecekler,
   yeniKKDEkle
              :
              begin
                 ClientHeight := 200;
                 ClientWidth := 330;
                 kolon2.Width := 0;
                 kolon3.Width := 0;
                 kolon4.Width := 0;
                 case TfrmPopup(self).islem_ of
                   yeniRiskBolum : setDataString(self,'RiskBolum','Risk Bölüm',Kolon1,'',200,True,'',False,0,'',ecUpperCase);
                   yeniTehlikeKaynak : setDataString(self,'TehlikeKaynak','Tehlike Kaynaðý',Kolon1,'',200,True,'',False,0,'',ecUpperCase);
                   yeniTehlike : setDataString(self,'Tehlike','Tehlike',Kolon1,'',200,True,'',False,0,'',ecUpperCase);
                   yeniEkilenecekler : setDataString(self,'yeniEkilenecekler','Ekilenecekler',Kolon1,'',200,True,'',False,0,'',ecUpperCase);
                   yeniKKDEkle : setDataString(self,'KKD','Kiþisel Koruyucu Donaným',Kolon1,'',200,True,'',False,0,'',ecUpperCase);
                 end;


              end;
   riskRaporuPaylas,
   sahaGozetimPaylas
              : begin
                   ClientHeight := 200;
                   ClientWidth := 330;
                   kolon2.Width := 0;
                   kolon3.Width := 0;
                   kolon4.Width := 0;

                   Doktorlar := TcxImageComboKadir.Create(self);
                   Doktorlar.Conn := Datalar.ADOConnection2;
                   Doktorlar.Name := 'paylasilan';
                   Doktorlar.TableName := 'users';
                   Doktorlar.ValueField := 'Kullanici';
                   Doktorlar.DisplayField := 'ADISOYADI';
                   Doktorlar.Filter := '';
                   setDataStringKontrol(self,Doktorlar, 'paylasilan','Kullanýcý',Kolon1,'',180);
                end;



   FaturaTahsilatEkle,
   CekTahsilat ,
   OdemeEkle
              : begin
                    ClientHeight := 350;
                    ClientWidth := 300;
                    TahsilatOdemeTipCaption := ifThen(TfrmPopup(self).islem_ = OdemeEkle,'Ödeme Tip','Tahsilat Tip');

                    List := TListeAc.Create(nil);
                    List.Table := '(select c.id,c.VadeTarihi,tutar, evrakNo, aciklama,isnull(S.tanimi,'')+isnull(T.tanimi,'') tanimi '+
                                   ' from cari_cekler c ' +
                                   ' left join SIRKETLER_TNM S on s.sirketKod = c.sirketKod '+
                                   ' left join  cari_Tedarikciler T on T.kod = c.TedarikciKod '+
                                   ' where c.Durum = 1) t ';

                    List.kolonlar.Add('id');// := Ts;
                    List.kolonlar.Add('VadeTarihi');// := Ts;
                    List.kolonlar.Add('tutar');// := Ts;
                    List.kolonlar.Add('evrakNo'); // := Ts;
                    List.kolonlar.Add('aciklama'); // := Ts;
                    List.kolonlar.Add('tanimi'); // := Ts;


                    List.KolonBasliklari.Add('CekID');// := Ts1;
                    List.KolonBasliklari.Add('Vade');// := Ts1;
                    List.KolonBasliklari.Add('Tutar');// := Ts1;
                    List.KolonBasliklari.Add('Çek No');// := Ts1;
                    List.KolonBasliklari.Add('Açýklama');// := Ts1;
                    List.KolonBasliklari.Add('Tanimi');// := Ts1;

                    List.TColcount := 5;
                    List.TColsW := '40,80,80,200,200,50';
                    List.ListeBaslik := 'Çekler';
                    List.Conn := Datalar.ADOConnection2;

                    Doktorlar := TcxImageComboKadir.Create(self);
                    Doktorlar.Conn := Datalar.ADOConnection2;
                    Doktorlar.TableName := 'cari_OdemeTip';
                    Doktorlar.ValueField := 'kod';
                    Doktorlar.DisplayField := 'tanimi';
                    Doktorlar.BosOlamaz := True;
                    Doktorlar.Filter := '';
                    Doktorlar.tag := -3;
                    setDataStringKontrol(self,Doktorlar,'OdemeTip',TahsilatOdemeTipCaption,Kolon1,'',150);
                    TcxImageComboKadir(FindComponent('OdemeTip')).Properties.OnEditValueChanged := PropertiesEditValueChanged;

                    setDataStringB(self,'CekId','Çek Bilgisi',Kolon1,'ÇB',70,List,False,nil,'','',False,True,-100);

                    TcxButtonEditKadir(FindComponent('CekId')).Properties.OnButtonClick := cxButtonEditPropertiesButtonClick;
                  //  setDataString(self,'evrakNo','Evrak No',Kolon1,'',70,False,'',False,-100);
                    addButton(self,nil,'btnyeniCek','','Çek Ekle',Kolon1,'ÇB',80,ButtonClick,30);
                   // TcxButton(FindComponent('btnyeniCek')).Visible := False;

                    _Tarih_ := TcxDateEditKadir.Create(self);
                    _Tarih_.Name := 'Tarih';
                    setDataStringKontrol(self,_Tarih_, 'Tarih','Tarih',Kolon1,'',100);
                    TcxDateEditKadir(FindComponent('Tarih')).EditValue := date;

                    Doktorlar := TcxImageComboKadir.Create(self);
                    Doktorlar.Conn := Datalar.ADOConnection2;
                    Doktorlar.TableName := 'cari_Hesaplar';
                    Doktorlar.ValueField := 'kod';
                    Doktorlar.DisplayField := 'tanimi';
                    Doktorlar.BosOlamaz := True;
                    Doktorlar.Filter := '';
                    setDataStringKontrol(self,Doktorlar,'HesapKod','Hesap',Kolon1,'',150);


                    _Tarih_ := TcxDateEditKadir.Create(self);
                    _Tarih_.Name := 'VadeTarih';
                    setDataStringKontrol(self,_Tarih_, 'VadeTarih','Vade Tarihi',Kolon1,'',100);
                    TcxDateEditKadir(FindComponent('VadeTarih')).EditValue := date;
                    TcxDateEditKadir(FindComponent('VadeTarih')).Visible := False;


                    setDataStringCurr(self,'Tutar','Meblað',Kolon1,'',100,',0.00');
                    TcxCurrencyEdit(FindComponent('Tutar')).EditValue := datalar.CariHareket.tutar;

                    setDataString(self,'Aciklama','Açýklama',Kolon1,'',200,True,'',False,0,'',ecUpperCase);


                    TcxImageComboKadir(FindComponent('OdemeTip')).EditValue := 1;

                    case TfrmPopup(self).islem_ of
                      CekTahsilat : TcxImageComboKadir(FindComponent('OdemeTip')).Enabled := false;
                    end;

                end;

   yeniCek :  begin

                    ClientHeight := 350;
                    ClientWidth := 300;

                    setDataString(self,'evrakNo','Evrak No',Kolon1,'',70,False,'',False,-100);


                    _Tarih_ := TcxDateEditKadir.Create(self);
                    _Tarih_.Name := 'Tarih';
                    setDataStringKontrol(self,_Tarih_, 'VadeTarihi','Vade Tarihi',Kolon1,'',100);
                    TcxDateEditKadir(FindComponent('VadeTarihi')).EditValue := date;

                    Doktorlar := TcxImageComboKadir.Create(self);
                    Doktorlar.Conn := Datalar.ADOConnection2;
                    Doktorlar.TableName := 'cari_CariKartView';
                    Doktorlar.ValueField := 'kod';
                    Doktorlar.DisplayField := 'tanimi';
                    Doktorlar.BosOlamaz := True;
                    Doktorlar.Filter := '';
                    setDataStringKontrol(self,Doktorlar,'sirketKod','Kimden',Kolon1,'',150);

                     Doktorlar := TcxImageComboKadir.Create(self);
                    Doktorlar.Conn := Datalar.ADOConnection2;
                    Doktorlar.TableName := 'cari_CariKartView';
                    Doktorlar.ValueField := 'kod';
                    Doktorlar.DisplayField := 'tanimi';
                    Doktorlar.BosOlamaz := True;
                    Doktorlar.Filter := '';
                    setDataStringKontrol(self,Doktorlar,'TedarikciKod','Kime',Kolon1,'',150);


                    Doktorlar := TcxImageComboKadir.Create(self);
                    Doktorlar.Conn := Datalar.ADOConnection2;
                    Doktorlar.TableName := 'cari_CekDurum';
                    Doktorlar.ValueField := 'kod';
                    Doktorlar.DisplayField := 'tanimi';
                    Doktorlar.BosOlamaz := False;
                    Doktorlar.Filter := '';
                    setDataStringKontrol(self,Doktorlar,'Durum','Durum',Kolon1,'',150);


                    Doktorlar := TcxImageComboKadir.Create(self);
                    Doktorlar.Conn := nil;
                    Doktorlar.ItemList := 'G;Giren,C;Çýkan';
                    Doktorlar.BosOlamaz := False;
                    Doktorlar.Filter := '';
                    setDataStringKontrol(self,Doktorlar,'Tip','Tip',Kolon1,'',150);


                    setDataStringCurr(self,'Tutar','Meblað',Kolon1,'',100,',0.00');


                    setDataString(self,'Aciklama','Açýklama',Kolon1,'',200,True,'',False,0,'',ecUpperCase);


              end;


   PersonelTetkisIste :
               begin
                      ClientHeight := 320;
                      tetkikIstemGrupSablon := TcxImageComboKadir.Create(self);
                      tetkikIstemGrupSablon.Conn := datalar.ADOConnection2;
                      tetkikIstemGrupSablon.TableName := 'tetkikIstemGrupSablon';
                      tetkikIstemGrupSablon.ValueField := 'kod';
                      tetkikIstemGrupSablon.DisplayField := 'tanimi';
                      tetkikIstemGrupSablon.Filter := '';
                      setDataStringKontrol(self,tetkikIstemGrupSablon,'tetkikIstemGrupSablon','',kolon1,'',250);
                      TcxImageComboKadir(FindComponent('tetkikIstemGrupSablon')).Properties.OnEditValueChanged := PropertiesEditValueChanged;

                      txtTetkikIstem := TcxCheckGroupKadir.Create(self);
                      txtTetkikIstem.Properties.EditValueFormat := cvfStatesString;
                      txtTetkikIstem.Alignment := alCenterCenter;
                      txtTetkikIstem.Conn := Datalar.ADOConnection2;
                      txtTetkikIstem.Name := 'txtTetkikIstem';
                      txtTetkikIstem.TableName := 'TetkikIstemSablonItem';
                      txtTetkikIstem.ValueField := 'id';
                      txtTetkikIstem.DisplayField := 'tanimi';
                      setDataStringKontrol(self,txtTetkikIstem,'istemler','',Kolon1,'',250,150);

               end;
   YeniSube,SubeDuzenle :
               begin
                  cxTab.Width := 150;
                  ClientHeight := 700;
                  ClientWidth := 460;
                  TableName := 'SIRKET_SUBE_TNM';
                  setDataString(self,'subeKod','Þube Kodu',Kolon1,'aa',50,True,'',False,0,'',ecUpperCase);
                  TcxTextEdit(FindComponent('subeKod')).EditValue := datalar.FirmaSubeBilgi.SubeKodu;
                  setDataString(self,'subeTanim','Þube Tanýmý',Kolon1,'',150,True,'',False,0,'',ecUpperCase);
                  TcxTextEdit(FindComponent('subeTanim')).EditValue := datalar.FirmaSubeBilgi.SirketAdi;

                  setDataString(self,'subeSiciNo','Þube Sicil No',Kolon1,'',240,True,'',False,0,'',ecUpperCase,'9-0009-09-09-9999999-099-09-09-000');
                  TcxTextEdit(FindComponent('subeSiciNo')).EditValue := datalar.FirmaSubeBilgi.subeSiciNo;

                  setDataStringIC(self,'subeDoktor','Doktor',kolon1,'',150,'DoktorlarT','kod','tanimi','Durum = ''Aktif''');
                  TcxImageComboKadir(FindComponent('subeDoktor')).EditValue := datalar.FirmaSubeBilgi.doktor;
                  setDataStringIC(self,'IGU','ÝþG.Uzmaný',kolon1,'',150,'IGU','kod','tanimi','Durum = ''Aktif''');
                  TcxImageComboKadir(FindComponent('IGU')).EditValue := datalar.FirmaSubeBilgi.IGU;

                  setDataStringKontrol(self,cxGridKadir1,'cxGridKadir1','Yardýmcý Uzmanlar',Kolon1,'',150,100,alNone,'',clLeft);
                  cxGridKadir1.Visible := True;
                  cxGridKadir1.Dataset.BeforePost := BeforePost;
                  cxGridKadir1.Dataset.Connection := datalar.ADOConnection2;
                  cxGridKadir1.Dataset.SQL.Text := 'select * from SIRKET_SUBE_IGU where sirketKod = ' + QuotedStr(datalar.FirmaSubeBilgi.SirketKodu) +
                                                   ' and subeKod = ' + QuotedStr(datalar.FirmaSubeBilgi.SubeKodu);
                  cxGridKadir1.Dataset.Open;

                  TcxImageComboBoxProperties(Grid.Columns[0].Properties).Items :=
                   TcxImageComboBoxProperties(TcxImageComboKadir(FindComponent('IGU')).Properties).Items;




                  setDataString(self,'BolgeMudurlukSicilNo','Müdürlük Sicil No',Kolon1,'',100,True,'',False,0,'',ecUpperCase);
                  TcxTextEdit(FindComponent('BolgeMudurlukSicilNo')).EditValue := datalar.FirmaSubeBilgi.BolgeMudurlukSicilNo;
                  setDataString(self,'MuayeneProtokolNo','Protokol No',Kolon1,'',100,True,'',False,0,'',ecUpperCase);
                  TcxTextEdit(FindComponent('MuayeneProtokolNo')).EditValue := datalar.FirmaSubeBilgi.MuayeneProtokolNo;
                  setDataString(self,'DoktorCalismaDakika','Doktor Çalýþma Dakika',Kolon1,'',100,True,'',False,0,'',ecUpperCase);
                  TcxTextEdit(FindComponent('DoktorCalismaDakika')).EditValue := datalar.FirmaSubeBilgi.DoktorCalismaDakika;
                  setDataString(self,'IGUCalismaDakika','Uzm. Çalýþma Dakika',Kolon1,'',100,True,'',False,0,'',ecUpperCase);
                  TcxTextEdit(FindComponent('IGUCalismaDakika')).EditValue := datalar.FirmaSubeBilgi.IGUCalismaDakika;

                  setDataStringB(self,'NaceKod','Nace Kodu',Kolon1,'',100,List,False,nil,'','',False,True);
                  TcxButtonEditKadir(FindComponent('NaceKod')).Properties.OnButtonClick := NaceKodPropertiesButtonClick;
                  TcxTextEdit(FindComponent('NaceKod')).EditValue := datalar.FirmaSubeBilgi.NaceKod;

                  setDataStringIC(self,'tehlikeSinifi','Tehlike Sýnýfý',kolon1,'',150,'TehlikeSiniflari','TehlikeSinifi','tanimi');
                  TcxImageComboKadir(FindComponent('tehlikeSinifi')).EditValue := datalar.FirmaSubeBilgi.tehlikeSinifi;
                  setDataStringIC(self,'DigerSaglikPers','Saðlýk Personeli',kolon1,'',150,'DigerSaglikPersonel','kod','tanimi');
                  TcxImageComboKadir(FindComponent('DigerSaglikPers')).EditValue := datalar.FirmaSubeBilgi.DigerSaglikPers;
                  setDataString(self,'DigerSaglikPersCalismaDakika','D.Saðlýk Per. Çalýþma Dak.',Kolon1,'',100,True,'',False,0,'',ecUpperCase);
                  TcxTextEdit(FindComponent('DigerSaglikPersCalismaDakika')).EditValue := datalar.FirmaSubeBilgi.DigerSaglikPersCalismaDakika;

                  setDataStringChk (Self, 'Pasif', 'Þube Pasif Edilsin', Kolon1, 'aa', 120);

                 // setDataString(self,'Pasif','Aktif',Kolon1,'',100,True,'',False,0,'',ecUpperCase);
                  TcxTextEdit(FindComponent('Pasif')).EditValue := datalar.FirmaSubeBilgi.Pasif;

                  setDataString(self,'SemtLokasyon','Lokasyon',Kolon1,'',100,True,'',False,0,'',ecUpperCase);
                  TcxTextEdit(FindComponent('SemtLokasyon')).EditValue := datalar.FirmaSubeBilgi.SemtLokasyon;
                  setDataString(self,'calisanSayi','Çalýþan Sayýsý',Kolon1,'',100,True,'',False,0,'',ecUpperCase);
                  TcxTextEdit(FindComponent('calisanSayi')).EditValue := datalar.FirmaSubeBilgi.calisanSayi;
                  setDataString(self,'Adres','Adres',Kolon1,'',300,True,'',False,0,'',ecUpperCase);
                  TcxTextEdit(FindComponent('Adres')).EditValue := datalar.FirmaSubeBilgi.Adres;
                  setDataString(self,'KapaliAlan','Kapalý Alan(m2)',Kolon1,'',50,True,'',False,0,'',ecUpperCase);
                  TcxTextEdit(FindComponent('KapaliAlan')).EditValue := datalar.FirmaSubeBilgi.KapaliAlan;
                  setDataString(self,'AcikAlan','Açýk Alan(m2)',Kolon1,'',50,True,'',False,0,'',ecUpperCase);
                  TcxTextEdit(FindComponent('AcikAlan')).EditValue := datalar.FirmaSubeBilgi.AcikAlan;

               end;
   olcumEkle :
               begin
                  cxTab.Width := 150;
                  ClientHeight := 600;
                  ClientWidth := 450;
                  setDataStringIC(self,'Bolum','Bolum Seçin',kolon1,'',150,'RDS_RiskBolum','kod','tanimi');
                  TcxImageComboKadir(FindComponent('Bolum')).EditValue := datalar.OrtamOlcum.Bolum;

                  Olcumler.Conn := Datalar.ADOConnection2;
                  Olcumler.TableName := 'OrtamOlcumTipleri';
                  Olcumler.Filter := '';
                  setDataStringKontrol(self,Olcumler,'Olcumler','',kolon1,'',250,250);




               end;
   GGEkle      :
                begin
                    cxTab.Width := 150;
                    ClientHeight := 600;
                    ClientWidth := 450;

                    _Tarih_ := TcxDateEditKadir.Create(self);
                    _Tarih_.Name := 'Tarih';
                    setDataStringKontrol(self,_Tarih_, 'ggTarihi','Gözden G.Tarihi',Kolon1,'',100);
                    TcxDateEditKadir(FindComponent('ggTarihi')).EditValue := date;

                    _Tarih_ := TcxDateEditKadir.Create(self);
                    _Tarih_.Name := 'Tarih';
                    setDataStringKontrol(self,_Tarih_, 'SggTarihi','Sonraki G.Tarihi',Kolon1,'',100);
                    TcxDateEditKadir(FindComponent('SggTarihi')).EditValue := date;


                end;


   yeniMadde,
   MaddeDuzenle :
              begin
                  cxTab.Width := 150;
                  ClientHeight := 600;
                  ClientWidth := 600;
                  TableName := 'KurulToplantiMaddeler';

                  setDataStringCurr(self,'siraNo','Sira No',Kolon1,'',50,'0',1);
                  TcxTextEdit(FindComponent('siraNo')).EditValue := datalar.KurulToplantiMadde.SiraNo;

                  setDataString(self,'Madde','Madde',Kolon1,'',400,True,'',False,0,'',ecUpperCase);
                  TcxTextEdit(FindComponent('Madde')).EditValue := datalar.KurulToplantiMadde.Madde;

                  setDataStringMemo(self,'Karar','Karar',Kolon1,'',400,70);
                  TcxMemo(FindComponent('Karar')).EditValue := datalar.KurulToplantiMadde.Karar;

                  setDataStringMemo(self,'GorusmeNotlari','Görüþme Not',Kolon1,'',400,70);
                  TcxMemo(FindComponent('GorusmeNotlari')).EditValue := datalar.KurulToplantiMadde.GorusmeNotlari;

                  setDataStringMemo(self,'Aksiyon','Aksiyon',Kolon1,'',400,70);
                  TcxMemo(FindComponent('Aksiyon')).EditValue := datalar.KurulToplantiMadde.Aksiyon;

                  setDataString(self,'Gorevli','Görevli',Kolon1,'',120,True,'',False,0,'',ecUpperCase);
                  TcxTextEdit(FindComponent('Gorevli')).EditValue := datalar.KurulToplantiMadde.Gorevli;


                  _Tarih_ := TcxDateEditKadir.Create(self);
                  _Tarih_.Name := 'GorevTarihi';
                  setDataStringKontrol(self,_Tarih_, 'GorevTarihi','Görev Tarihi',Kolon1,'',120);
                  TcxDateEditKadir(FindComponent('GorevTarihi')).EditValue := datalar.KurulToplantiMadde.GorevTarihi;

                  _Tarih_ := TcxDateEditKadir.Create(self);
                  _Tarih_.Name := 'HedefTarih';
                  setDataStringKontrol(self,_Tarih_, 'HedefTarih','Hedef Tarih',Kolon1,'',120);
                  TcxDateEditKadir(FindComponent('HedefTarih')).EditValue := datalar.KurulToplantiMadde.HedafTarih;


                  setDataStringMemo(self,'YapilanIslem','Yapilan Ýþlem',Kolon1,'',400,70);
                  TcxMemo(FindComponent('YapilanIslem')).EditValue := datalar.KurulToplantiMadde.YapilanIslem;

                  _Tarih_ := TcxDateEditKadir.Create(self);
                  _Tarih_.Name := 'TamamlanmaTarihi';
                  setDataStringKontrol(self,_Tarih_, 'TamamlanmaTarihi','Tamamlanma Tarihi',Kolon1,'tt',120);
                  TcxDateEditKadir(FindComponent('TamamlanmaTarihi')).EditValue := datalar.KurulToplantiMadde.TamamlanmaTarihi;

                  setDataStringChk (Self, 'Tamam', 'Tamamlandý', Kolon1, 'tt', 120,ctint);
                  TcxCheckBox(FindComponent('Tamam')).EditValue := datalar.KurulToplantiMadde.Tamam;

             end;

  SeansDoktorUpdate
              :
       begin
            cxTab.Width := 150;
            ClientHeight := 200;
            ClientWidth := 300;
            setDataStringIC(self,'doktor','Doktor',Kolon1,'BB',150,'DoktorlarT','Kod','Tanimi',' sirketKod = ' + QuotedStr(datalar.AktifSirket));
            TcxImageComboKadir(FindComponent('doktor')).EditValue := datalar.SeansBilgi.doktor;

       end;

  SeansInsert :
       begin
          Olustur(self,'','Seans Oluþtur',9,'');
          mevcutTarih_ := TcxDateEditKadir.Create(self);
          txtT_ := TcxDateEditKadir.Create(self);
          setDataStringKontrol(self,mevcutTarih_, 'mevcutTarih_','Seans Tarih',Kolon1,'',100);
          setDataStringKontrol(self,txtT_, 'txtT_','Bitiþ Tarihi',Kolon1,'',100);
          txtGun := TcxCurrencyEdit.Create(self);
          txtGun.Properties.MaxValue := 31;
          txtGun.Properties.MinValue := 0;
          txtGun.EditValue := 0;
          txtGun.Properties.DisplayFormat := '0';
          txtGun.Properties.EditFormat := '0';

          HizmetKod := TcxImageComboKadir.Create(self);
          HizmetKod.Conn := Datalar.ADOConnection2;
          HizmetKod.TableName := 'diyaliz_Tipleri';
          HizmetKod.ValueField := 'butKodu';
          HizmetKod.DisplayField := 'tanimi';
          HizmetKod.Filter := '';
          HizmetKod.BosOlamaz := True;
          HizmetKod.EditValue := 'P704230';
          setDataStringKontrol(self,HizmetKod,'HizmetKod','Sut Kodu',kolon1,'',120);

          setDataStringKontrol(self,txtGun, 'txtGun','Seans Sayýsý',Kolon1,'',50);
       //   chkEv := TcxCheckBox.Create(self);
       //   chkEv.Caption := 'Ev Hemodiyaliz';
       //   chkEv.Transparent := True;
       //   setDataStringKontrol(self,chkEv, 'chkEv','',Kolon1,'',100);
          chkPlan := TcxCheckBox.Create(self);
          chkPlan.Transparent := True;
          chkPlan.Caption := 'Ara Seans';
          setDataStringKontrol(self,chkPlan, 'chkPlan','',Kolon1,'',100);
          ClientHeight := 300;
          setDataTarih(datalar.SeansOlusturPrm.ilkSeansTarihi);
       end;

  SeansTarihiUpdate  :
        begin
          ClientHeight := 620;
          ClientWidth :=  550;
          cxTab.Width := 350;
          cxTab.Tabs[0].Caption := datalar.SeansBilgi.SeansCaption;

          mevcutTarih_ := TcxDateEditKadir.Create(self);
          setDataStringKontrol(self,mevcutTarih_, 'mevcutTarih_','Seans Tarih',Kolon1,'BB',100);
          TcxDateEditKadir(FindComponent('mevcutTarih_')).EditValue := strToDate(datalar.SeansBilgi.islemTarihi);

          setDataStringIC(self,'doktor','Doktor',Kolon1,'BB',100,'DoktorlarT','Kod','Tanimi',' sirketKod = ' + QuotedStr(datalar.AktifSirket));
          TcxImageComboKadir(FindComponent('doktor')).EditValue := datalar.SeansBilgi.doktor;

          ilacList := ListeAcCreate('Raporlar','raporTakipNo,baslangicTarihi,BitisTarihi,SeansGun,SeansSayi',
                                    'TakipNo,Baþlangýç,Bitiþ,SeansGun,SeansSayý',
                                    '90,100,100,30,30','raporTakipNo','Hasta Raporlarý',' dosyaNo = ' + QuotedStr(_value_),6,True);

          setDataStringB(self,'raporTakipNo','Rapor TakipNo',Kolon1,'rr',100,ilacList,False,nil,'','',False,True,-100);
          TcxButtonEditKadir(FindComponent('raporTakipNo')).EditValue := datalar.SeansBilgi.raporTakipNo;
      //    TcxButtonEditKadir(FindComponent('raporTakipNo')).Properties.OnButtonClick := PropertiesButtonClick;

          KontolYukseklik := TcxButtonEditKadir(FindComponent('raporTakipNo')).Height;

          setDataStringIC(self,'hemsire','Hemþire',Kolon1,'rr',100,'hemsirelerT','Kod','Tanimi',' sirketKod = ' + QuotedStr(datalar.AktifSirket));
          TcxImageComboKadir(FindComponent('hemsire')).EditValue := datalar.SeansBilgi.hemsire;



          setDataStringChk (Self, 'Durum', 'Seans Onayý', Kolon1, 'CC', 120,ctint);
          TcxCheckBox(FindComponent('Durum')).EditValue := datalar.SeansBilgi.Durum;

        //  setDataStringChk (Self, 'KanAlindimi', 'Kan Alindi mi?', Kolon1, 'CC', 120,ctint);
        //  TcxCheckBox(FindComponent('KanAlindimi')).EditValue := datalar.SeansBilgi.KanAlimi;

         // TcxCheckBox(FindComponent('KanAlindimi')).Height := KontolYukseklik;
          TcxCheckBox(FindComponent('Durum')).Height := KontolYukseklik;

          DiyalizTedaviControlleriniFormaEkle(Kolon1,True);

          TcxImageComboKadir(FindComponent('DiyalizorCinsi')).EditValue := datalar.SeansBilgi.DiyalizorCinsi;
          TcxImageComboKadir(FindComponent('DiyalizorTipi')).EditValue := datalar.SeansBilgi.DiyalizorTipi;
          TcxImageComboKadir(FindComponent('Diyalizor')).EditValue := datalar.SeansBilgi.Diyalizor;
          TcxImageComboKadir(FindComponent('D')).EditValue := datalar.SeansBilgi.Diyalizat;
          TcxImageComboKadir(FindComponent('GIRISYOLU')).EditValue := datalar.SeansBilgi.GirisYolu;
          TcxComboBox(FindComponent('YA')).EditValue := datalar.SeansBilgi.YA;
          TcxComboBox(FindComponent('HEPARINTIP')).EditValue := datalar.SeansBilgi.HeparinTip;
          TcxComboBox(FindComponent('HEPARIN')).EditValue := datalar.SeansBilgi.Heparin;
          TcxTextEdit(FindComponent('HEPARINUYG')).EditValue := datalar.SeansBilgi.HeparinUyg;

          TcxComboBox(FindComponent('HCOOO')).EditValue := datalar.SeansBilgi.HCOOO;
          TcxComboBox(FindComponent('APH')).EditValue := datalar.SeansBilgi.APH;
          TcxComboBox(FindComponent('Na')).EditValue := datalar.SeansBilgi.Na;
          TcxComboBox(FindComponent('Igne')).EditValue := datalar.SeansBilgi.Igne;
          TcxComboBox(FindComponent('IgneV')).EditValue := datalar.SeansBilgi.IgneV;

          setDataStringBLabel(self,'lblBostatir1',Kolon2,'',1,'','','',false,255,taLeftJustify,KontolYukseklik);
          setDataStringBLabel(self,'lblBostatir2',Kolon2,'',1,'','','',false,255,taLeftJustify,KontolYukseklik);
          setDataStringBLabel(self,'lblBostatir3',Kolon2,'',1,'','','',false,255,taLeftJustify,KontolYukseklik);

          DiyalizTedavi_UF_KontrolleriniFormaEkle(Kolon2);

          TcxCurrencyEdit(FindComponent('Kilo')).EditValue := datalar.SeansBilgi.Kilo;
          TcxCurrencyEdit(FindComponent('girisKilo')).EditValue := datalar.SeansBilgi.girisKilo;
          TcxCurrencyEdit(FindComponent('cikisKilo')).EditValue := datalar.SeansBilgi.cikisKilo;
          TcxCurrencyEdit(FindComponent('OncekiCikisKilo')).EditValue := datalar.SeansBilgi.OncekiCikisKilo;
          TcxCurrencyEdit(FindComponent('CEKILECEKSIVI')).EditValue := datalar.SeansBilgi.CekilecekSivi;
          TcxCurrencyEdit(FindComponent('aldigiKilo')).EditValue := datalar.SeansBilgi.AldigiKilo;
          TcxCurrencyEdit(FindComponent('verilecekSivi')).EditValue := datalar.SeansBilgi.VerilecekSivi;
          TcxCurrencyEdit(FindComponent('UF')).EditValue := datalar.SeansBilgi.UF;


          setDataStringC(self,'seans','Seans / Süre',Kolon1,'ss',40,'1,2,3,4,5');
          TcxComboBox(FindComponent('seans')).EditValue := datalar.SeansBilgi.Seans;

          setDataString(self,'DIYALIZSURESI','',Kolon1,'ss',40);
          TcxTextEdit(FindComponent('DIYALIZSURESI')).EditValue := datalar.SeansBilgi.SeansSure;

          setDataString(self,'makinaNo','Makina',Kolon1,'',40);
          TcxTextEdit(FindComponent('makinaNo')).EditValue := datalar.SeansBilgi.MakinaNo;


          datalar.QueryExec('exec sp_HemsireGozlemIsle ' + QuotedStr(datalar.SeansBilgi.hizmetSunucuRefNo));

          SetGrid(CreateGrid('cxGridHemsireTakip',frmPopup),'Saat,TA_NABIZ,NABIZ,ARTPON,VENBAS,ARTBAS,UF,Na,ISI,gozlem',
                       'TcxTimeEditProperties,TcxTextEditProperties,TcxTextEditProperties,TcxTextEditProperties,TcxTextEditProperties,TcxTextEditProperties,TcxTextEditProperties,TcxTextEditProperties,TcxTextEditProperties,TcxTextEditProperties',
                       'Saat,TANS.,NABIZ,ARTPON,VENBAS,ARTBAS,UF,Na,ISI,HemþireNot',
                       '80,50,50,50,50,50,50,50,50,250',
                       '0,0,0,0,0,0,0,0,0,',
                       'False,False,False,False,False,False,False,False,False,False'
                       );

          setDataStringKontrol(self,TcxGridKadir(FindComponent('cxGridHemsireTakip')) ,'cxGridHemsireTakip','Hemþire Gözlem',sayfa2_Kolon1,'',530,200);
          datalar.QuerySelect(TcxGridKadir(FindComponent('cxGridHemsireTakip')).Dataset,'select * from HemsireTakip where SiraNo = ' + QuotedStr(datalar.SeansBilgi.hizmetSunucuRefNo));
          TcxGridDBTableView(TcxGridKadir(FindComponent('cxGridHemsireTakip')).Levels[0].GridView).NavigatorButtons.OnButtonClick := NavigatorButtonsButtonClick;
          TcxGridKadir(FindComponent('cxGridHemsireTakip')).Dataset.Name := 'cxGridHemsireTakipDS';
          TcxGridKadir(FindComponent('cxGridHemsireTakip')).Dataset.BeforePost := BeforePost;

          setDataStringBLabel(self,'BosSatir',sayfa2_Kolon1,'',530,'');
          setDataStringBLabel(self,'BosSatir1',sayfa2_Kolon1,'',530,'Hemþire Gözlem Notu');
          setDataStringMemo(self,'hekimGozlemDdiger','',sayfa2_Kolon1,'',530,100);
          TcxTextEdit(FindComponent('hekimGozlemDdiger')).EditValue := datalar.SeansBilgi.hemsireNot;


          if Datalar.SeansBilgi.islemSiraNo <> ''
          then begin
             Disabled(self,False);// else Enabled;
             BorderIcons := [biSystemMenu];
          end;


          SayfaCaption('Tedavi Order','Hemþire Gözlem','','','');


        end;

  hastaTakipleriGetir
       : begin
             ClientHeight := 420;
             ClientWidth :=  620;
             cxTab.Width := 150;
          //   cxTab.Tabs[0].Caption := _HastaAdSoyad_;

             Kolon2.Visible := False;
             Kolon3.Visible := False;
             Kolon4.Visible := False;
             setDataString(self,'TcKimlikNo','Tc Kimlik No',Kolon1,'Tc',90);
             TcxTextEdit(FindComponent('TcKimlikNo')).EditValue := _value_;

             mevcutTarih_ := TcxDateEditKadir.Create(self);
             setDataStringKontrol(self,mevcutTarih_, 'Tarih1','Ýlk Tarih',Kolon1,'T',90);
             TcxDateEditKadir(FindComponent('Tarih1')).EditValue := date;

             mevcutTarih_ := TcxDateEditKadir.Create(self);
             setDataStringKontrol(self,mevcutTarih_, 'Tarih2','Son Tarih',Kolon1,'T',90);
             TcxDateEditKadir(FindComponent('Tarih2')).EditValue := date;

             addButton(self,nil,'btnTakipleriBul','','Takip Bul',Kolon1,'T',70,ButtonClick,-10);
             addButton(self,nil,'btnTakipleriOku','','Takip Oku',Kolon1,'T',70,ButtonClick,-12);
             addButton(self,nil,'btnTakipleriSil','','Takip Sil',Kolon1,'T',70,ButtonClick,-11);

             setDataStringBLabel(self,'bosSatir1',Kolon1,'',100);

             SetGrid(CreateGrid('cxGridTakipler',frmPopup,False,DataSource1,False),'TakipNo,basvuruNo,TakipTarihi,takipTuru,takipDurum,Durum',
                           'TcxTextEditProperties,TcxTextEditProperties,TcxTextEditProperties,TcxTextEditProperties,TcxTextEditProperties,TcxTextEditProperties',
                           'TakipNo,BaþvuruNo,Takip Tarihi,Takip Turu,Takip Durum,Durum',
                           '80,80,80,50,50,50',
                           '0,0,0,0,0,0',
                           'True,True,True,True,True,True'
                           );
             setDataStringKontrol(self,TcxGridKadir(FindComponent('cxGridTakipler')) ,'cxGridTakipler','Hasta Takipleri',Kolon1,'',580,150);


             DataSource1.DataSet := datalar.RxHastaTakip;

         //    TcxGridDBTableView(TcxGridKadir(FindComponent('cxGridTakipler')).Levels[0].GridView).DataController.DataSource := DataSource1;



         end;

  KtvUrrDuzenle :
        begin
          ClientHeight := 300;
          ClientWidth :=  200;
          cxTab.Width := 150;
          cxTab.Tabs[0].Caption := datalar.KtvUrr.hasta;

          Kolon2.Visible := False;
          Kolon3.Visible := False;
          Kolon4.Visible := False;

          setDataStringCurr(self,'KT_v','KT/V',Kolon1,'',50);
          TcxCurrencyEdit(FindComponent('KT_v')).Value := datalar.KtvUrr.Ktv;
          setDataStringCurr(self,'URR','URR',Kolon1,'',50);
          TcxCurrencyEdit(FindComponent('URR')).Value := datalar.KtvUrr.URR;
          setDataStringCurr(self,'CaxP','CaxP',Kolon1,'',50);
          TcxCurrencyEdit(FindComponent('CaxP')).Value := datalar.KtvUrr.CaxP;
          setDataStringCurr(self,'DuzCa','DuzCa',Kolon1,'',50);
          TcxCurrencyEdit(FindComponent('DuzCa')).Value := datalar.KtvUrr.DuzCa;
          setDataStringCurr(self,'TS','TS',Kolon1,'',50);
          TcxCurrencyEdit(FindComponent('TS')).Value := datalar.KtvUrr.TS;

        end;

  raporUpdate ,raporInsert :
        begin
          ClientHeight := 420;
          ClientWidth :=  620;
          cxTab.Width := 150;
          cxTab.Tabs[0].Caption := datalar.RaporBilgisi.raporCaption;

          Kolon2.Visible := False;
          Kolon3.Visible := False;
          Kolon4.Visible := False;

          if TfrmPopup(self).islem_ = raporInsert
          Then begin
            datalar.RaporBilgisi.raporNo := '';
            datalar.RaporBilgisi.raporTarihi := datetoStr(date);
            datalar.RaporBilgisi.Turu := '10';
            datalar.RaporBilgisi.tedaviRaporTuru := '';
            datalar.RaporBilgisi.verenTesisKodu := inttostr(datalar._kurumKod);
            datalar.RaporBilgisi.duzenlemeTuru := '1';
            datalar.RaporBilgisi.duzenleyenDoktor := '';
            datalar.RaporBilgisi.protokolNo := EnsonSeansProtokolNo(_firmaKod_,_sube_,'Rapor');
          end;


          setDataString(self,'raporNo','Rapor No',Kolon1,'rno',100);
          TcxTextEdit(FindComponent('raporNo')).EditValue := datalar.RaporBilgisi.raporNo;

          mevcutTarih_ := TcxDateEditKadir.Create(self);
          setDataStringKontrol(self,mevcutTarih_, 'raporTarihi','Rapor Tarih',Kolon1,'rno',100);
          TcxDateEditKadir(FindComponent('raporTarihi')).Text := datalar.RaporBilgisi.raporTarihi;

          setDataStringIC(self,'turu','Rapor Türü',Kolon1,'rt',100,'Medula_RaporTurleri','Kod','Tanimi');
          TcxImageComboKadir(FindComponent('turu')).Filter := ' Aktif = 1';
          TcxImageComboKadir(FindComponent('turu')).EditValue := datalar.RaporBilgisi.Turu;

          setDataStringIC(self,'tedaviRaporTuru','Tedavi Rapor Türü',Kolon1,'rt',100,'Medula_TedaviRaporTurleri','Kod','Tanimi');
          TcxImageComboKadir(FindComponent('tedaviRaporTuru')).Filter := ' Aktif = 1';
          TcxImageComboKadir(FindComponent('tedaviRaporTuru')).EditValue := datalar.RaporBilgisi.tedaviRaporTuru;

          setDataString(self,'verenTesisKodu','Tesis Kodu',Kolon1,'',100);
          TcxTextEdit(FindComponent('verenTesisKodu')).EditValue := datalar.RaporBilgisi.verenTesisKodu;

          setDataStringIC(self,'duzenlemeTuru','Düzenleme Türü',Kolon1,'rno',100,'','','','',1,'1;Tek Hekim,2;Heyet');
          TcxImageComboKadir(FindComponent('duzenlemeTuru')).EditValue := datalar.RaporBilgisi.duzenlemeTuru;

          setDataStringIC(self,'duzenleyenDoktor','Düzenleyen Doktor',Kolon1,'rt',100,'DoktorlarT','kod','tanimi',' sirketKod = ' + QuotedStr(datalar.AktifSirket),1,'');
          TcxImageComboKadir(FindComponent('duzenleyenDoktor')).EditValue := datalar.RaporBilgisi.duzenleyenDoktor;


          mevcutTarih_ := TcxDateEditKadir.Create(self);
          setDataStringKontrol(self,mevcutTarih_, 'baslangicTarihi','Baþlangýç Tarih',Kolon1,'tr',100);
          TcxDateEdit(FindComponent('baslangicTarihi')).text := datalar.RaporBilgisi.baslangicTarihi;

          mevcutTarih_ := TcxDateEditKadir.Create(self);
          setDataStringKontrol(self,mevcutTarih_, 'bitisTarihi','Bitiþ Tarih',Kolon1,'tr',100);
          TcxDateEdit(FindComponent('bitisTarihi')).text := datalar.RaporBilgisi.bitisTarihi;

          setDataString(self,'protokolNo','Protokol No',Kolon1,'tr',100);
          TcxTextEdit(FindComponent('protokolNo')).EditValue := datalar.RaporBilgisi.protokolNo;



          setDataString(self,'raporTakipNo','Rapor TakipNo',Kolon1,'',100);
          TcxTextEdit(FindComponent('raporTakipNo')).EditValue := datalar.RaporBilgisi.raporTakipNo;
          if varToStr(TcxTextEdit(FindComponent('raporTakipNo')).EditValue) = ''
          then
           TcxTextEdit(FindComponent('raporTakipNo')).Properties.ReadOnly := False
          else
           TcxTextEdit(FindComponent('raporTakipNo')).Properties.ReadOnly := True;

          setDataStringMemo(self,'aciklama','Açýklama',Kolon1,'ack',503,50);
          TcxTextEdit(FindComponent('aciklama')).EditValue := datalar.RaporBilgisi.aciklama;




          if TfrmPopup(self).islem_ = raporUpdate
          Then begin
             if datalar.RaporBilgisi.Turu = '10'
             then begin
                ClientHeight := 670;
                SayfaCaption('Ýlaç Rapor','','','','');
                SetGrid(CreateGrid('cxGridTeshis',frmPopup),'baslangicTarihi,bitisTarihi,teshisKodu,ICD10Kodu',
                             'TcxDateEditProperties,TcxDateEditProperties,TcxTextEditProperties,TcxTextEditProperties',
                             'BaþlangýçTarihi,BitiþTarihi,TeþhisKodu,Icd Kodu',
                             '80,80,50,60',
                             '0,0,0,0',
                             'False,False,True,True'
                             );

                setDataStringKontrol(self,TcxGridKadir(FindComponent('cxGridTeshis')) ,'cxGridTeshis','Ýlaç Teþhisleri',Kolon1,'',580,100);
                datalar.QuerySelect(TcxGridKadir(FindComponent('cxGridTeshis')).Dataset,'select * from IlacRaporTeshisler where RaporSira = ' + QuotedStr(datalar.RaporBilgisi.sira));
                TcxGridDBTableView(TcxGridKadir(FindComponent('cxGridTeshis')).Levels[0].GridView).NavigatorButtons.OnButtonClick := NavigatorButtonsButtonClick;


                SetGrid(CreateGrid('cxGridEtkenMadde',frmPopup),'etkenMaddeKodu,etkenMaddeAdi,kullanimDoz1,kullanimDoz2,kullanimDozBirim,kullanimPeriyot,kullanimPeriyotBirim',
                             'TcxTextEditProperties,TcxTextEditProperties,TcxTextEditProperties,TcxTextEditProperties,TcxTextEditProperties,TcxImageComboBoxProperties,TcxImageComboBoxProperties',
                             'EtkenMaddeKodu,EtkenMaddeAdi,Doz1,Doz2,K.D.Birim,K.Periyot,K.P.Birim',
                             '80,150,50,50,80,80,80',
                             '0,0,0,0,0,Medula_DozBirimleri;kod;tanimi,Medula_PeryotBirimleri;kod;tanimi',
                             'True,True,False,False,False,False,False'
                             );

                setDataStringKontrol(self,TcxGridKadir(FindComponent('cxGridEtkenMadde')) ,'cxGridEtkenMadde','Ýlaç Etken Maddeler',Kolon1,'',580,210);
                datalar.QuerySelect(TcxGridKadir(FindComponent('cxGridEtkenMadde')).Dataset,'select * from IlacRaporEtkenMaddeler where RaporSira = ' + QuotedStr(datalar.RaporBilgisi.sira));
                TcxGridDBTableView(TcxGridKadir(FindComponent('cxGridEtkenMadde')).Levels[0].GridView).NavigatorButtons.OnButtonClick := NavigatorButtonsButtonClick;
                TcxGridDBTableView(TcxGridKadir(FindComponent('cxGridEtkenMadde')).Levels[0].GridView).PopupMenu := PopupMenu1;

             end;

             if datalar.RaporBilgisi.Turu = '1'
             then begin
                 setDataStringIC(self,'seansGun','Seans Gun',Kolon1,'',100,'','','','',1,'7;Haftada,30;Ayda');
                 TcxImageComboBox(FindComponent('seansGun')).EditValue := datalar.RaporBilgisi.seansGun;
                 setDataStringCurr(self,'seansSayi','Seans Sayý',Kolon1,'',50,'0');
                 TcxTextEdit(FindComponent('seansSayi')).EditValue := datalar.RaporBilgisi.seansSayi;
                 setDataStringIC(self,'butKodu','Sut Kodu',kolon1,'',100,'Diyaliz_Tipleri','butKodu','Tanimi');
                 TcxImageComboBox(FindComponent('butKodu')).EditValue := datalar.RaporBilgisi.butkodu;

                 SayfaCaption('Tedavi Rapor','','','','');
             end;

          end;

        end;
  end;

end;

procedure TfrmPopup.NavigatorButtonsButtonClick(Sender: TObject;
  AButtonIndex: Integer; var ADone: Boolean);
var
  sql : string;
 _List_ : ArrayListeSecimler;
begin
  inherited;

  if (TcxGridViewNavigatorButtons(Sender).Insert.Hint = 'cxGridTeshisViewInsert') and
     (AButtonIndex = 6)
  then begin
    List.Kolonlar.Clear;
    List.KolonBasliklari.Clear;
    List.Table := 'ilac_Teshis_Kodlarý';
    List.Kolonlar.Add('teshiskodu');
    List.Kolonlar.Add('adi');
    List.Kolonlar.Add('taniKodu');
    List.Kolonlar.Add('taniAdi');
    List.KolonBasliklari.Add('T.Kodu');
    List.KolonBasliklari.Add('T.Adý');
    List.KolonBasliklari.Add('Taný.Kodu');
    List.KolonBasliklari.Add('Tani Adi');
    List.TColcount := 4;
    List.TColsW := '60,200,60,200';
    List.ListeBaslik := 'Teþhis Kodlarý';
    List.Grup := True;
    List.GrupCol := 1;
    _List_ := List.ListeGetir;
    if length(_List_) > 0
    Then BEgin
       sql := 'insert into IlacRaporTeshisler(RaporSira,teshisKodu,ICD10Kodu) ' +
                         'values( ' + datalar.RaporBilgisi.sira + ',' +
                                      QuotedStr(_List_[0].kolon1) + ',' +
                                      QuotedStr(_List_[0].kolon3) + ')';
       datalar.QueryExec(sql);

       TcxGridKadir(FindComponent('cxGridTeshis')).Dataset.Requery();
       TcxGridKadir(FindComponent('cxGridTeshis')).Dataset.Next;

    End;

  end;


  if (TcxGridViewNavigatorButtons(Sender).Insert.Hint = 'cxGridEtkenMaddeViewInsert') and
     (AButtonIndex = 6)
  then begin
    List.Kolonlar.Clear;
    List.KolonBasliklari.Clear;
    List.Table := 'EtkinMaddeler';
    List.Kolonlar.Add('ETKIN_MADDE_KODU');
    List.Kolonlar.Add('ETKIN_MADDE_ADI');
    List.Kolonlar.Add('FORM');

    List.KolonBasliklari.Add('E.Madde Kodu');
    List.KolonBasliklari.Add('E.Madde Adý');
    List.KolonBasliklari.Add('Form');

    List.TColcount := 3;
    List.TColsW := '60,200,100';
    List.ListeBaslik := 'Etkin Madde Kodlarý';

    _List_ := List.ListeGetir;
    if length(_List_) > 0
    Then BEgin
       sql := 'insert into IlacRaporEtkenMaddeler(RaporSira,etkenMaddeKodu,etkenMaddeAdi) ' +
                         'values( ' + datalar.RaporBilgisi.sira + ',' +
                                      QuotedStr(_List_[0].kolon1) + ',' +
                                      QuotedStr(_List_[0].kolon2) + ')';
       datalar.QueryExec(sql);

       TcxGridKadir(FindComponent('cxGridEtkenMadde')).Dataset.Requery();
       TcxGridKadir(FindComponent('cxGridEtkenMadde')).Dataset.Next;

    End;
  end;


end;

procedure TfrmPopup.cxButtonCClick(Sender: TObject);
begin
  inherited;

 case TMenuItem(Sender).Tag of
 -20 : begin
          SablonOlarakKaydet;
       end;
 -21 : begin
         SablondanYukle;
       end;
 end;


end;

procedure TfrmPopup.cxButtonEditPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
(*
  if TcxButtonEditKadir(sender).Name = 'CekId'
  then begin
    if TcxButtonEditKadir(sender).Text <> ''
    then begin
      TcxTextEdit(FindComponent('evrakNo')).Text := TcxButtonEditKadir(sender).kolon3;
      TcxTextEdit(FindComponent('evrakNo')).Properties.ReadOnly := True;
    end
    else
    begin
      TcxTextEdit(FindComponent('evrakNo')).Text := '';
      TcxTextEdit(FindComponent('evrakNo')).Properties.ReadOnly := False;
    end;

  end;
  *)
end;

procedure TfrmPopup.PropertiesEditValueChanged(Sender: TObject);
begin
  inherited;


  if TcxImageComboKadir(sender).Name = 'tetkikIstemGrupSablon'
  Then begin
    TcxCheckGroupKadir(FindComponent('istemler')).Filter := ' SablonGrupKod = ' +
      vartoStr(TcxImageComboKadir(FindComponent('tetkikIstemGrupSablon')).EditValue);
  end;

  if TcxImageComboKadir(sender).Name = 'sirketKod'
  Then begin
    TcxImageComboKadir(FindComponent('subeKod')).Filter :=
    ' sirketKod = ' + QuotedStr(vartoStr(TcxImageComboKadir(FindComponent('sirketKod')).EditValue));
  end;

  if TcxImageComboKadir(sender).Tag = -3
  Then begin
    if TcxImageComboKadir(FindComponent('OdemeTip')).EditingValue = 1
    Then begin
     TdxLayoutItem(FindComponent('dxLaVadeTarih')).Visible := False;
     TdxLayoutItem(FindComponent('dxLaHesapKod')).Visible := True;
     TdxLayoutItem(FindComponent('dxLacekID')).Visible := False;
     TdxLayoutItem(FindComponent('dxLaBbtnyeniCek')).Visible := False;
    end
    else
    begin
     TdxLayoutItem(FindComponent('dxLaVadeTarih')).Visible := True;
     TdxLayoutItem(FindComponent('dxLaHesapKod')).Visible := False;
     TdxLayoutItem(FindComponent('dxLacekID')).Visible := True;
     TdxLayoutItem(FindComponent('dxLaBbtnyeniCek')).Visible := True;
    end;
  end
  else
  if TcxImageComboKadir(sender).Tag = -2
  Then begin
   case  datalar.Risk.Method of
     1,3 : TcxCurrencyEdit(FindComponent('Risk_2')).EditValue :=
          TcxImageComboKadir(FindComponent('Olasilik_2')).EditValue *
          TcxImageComboKadir(FindComponent('Frekans_2')).EditValue*
          TcxImageComboKadir(FindComponent('Siddet_2')).EditValue;
     2 : TcxCurrencyEdit(FindComponent('Risk_2')).EditValue :=
          TcxImageComboKadir(FindComponent('Olasilik_2')).EditValue *
          TcxImageComboKadir(FindComponent('Siddet_2')).EditValue;
   end;
  end
  else if TcxImageComboKadir(sender).Tag = -100
  then begin
   case  datalar.Risk.Method of
     1,3 : TcxCurrencyEdit(FindComponent('Risk')).EditValue :=
          TcxImageComboKadir(FindComponent('Olasilik')).EditValue *
          TcxImageComboKadir(FindComponent('Frekans')).EditValue*
          TcxImageComboKadir(FindComponent('Siddet')).EditValue;
     2 : TcxCurrencyEdit(FindComponent('Risk')).EditValue :=
          TcxImageComboKadir(FindComponent('Olasilik')).EditValue *
          TcxImageComboKadir(FindComponent('Siddet')).EditValue;
   end;
  end;



end;

procedure TfrmPopup.cxMemoPropertiesChange(Sender: TObject);
begin
  inherited;
  MemoKalanLen := TcxMemo(sender).Properties.MaxLength - length(TcxMemo(sender).Text);
  TcxLabel(FindComponent('LabelackLabel')).Caption := inttostr(MemoKalanLen);
end;

procedure TfrmPopup.FormActivate(Sender: TObject);
begin
   if frmTop_ = 0
   Then frmTop_ := Trunc(TScreen(frmPopup).DesktopHeight/2);
   if frmLeft_ = 0
   Then frmLeft_ := Trunc(TScreen(frmPopup).DesktopWidth/2);

   Top := frmTop_ - Trunc(Height/2);
   Left := frmLeft_ - Trunc(Width/2);
end;

end.

