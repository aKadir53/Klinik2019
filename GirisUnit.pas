unit GirisUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  System.Diagnostics,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,Math,
  cxContainer, cxEdit,cxCalendar,  Menus, dxSkinscxPCPainter, cxPCdxBarPopupMenu,
  Data.Win.ADODB, cxPC, Vcl.StdCtrls, cxButtons, cxGroupBox, cxLabel,kadir,
  cxTextEdit, cxDBEdit, dxLayoutContainer, dxLayoutControl, KadirLabel,kadirType,
  dxLayoutcxEditAdapters, cxMaskEdit, cxButtonEdit, dxLayoutLookAndFeels,
  Vcl.ExtCtrls, Vcl.DBCtrls, cxDropDownEdit, dxLayoutControlAdapters, cxMemo,
  cxImageComboBox,cxImage,jpeg, dxSkinsdxStatusBarPainter, dxStatusBar,
  Vcl.ComCtrls, Vcl.ToolWin, dxGDIPlusClasses, cxCurrencyEdit, cxCheckBox,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, DB, dxSkinsCore, dxSkinBlue,strUtils,
  dxSkinCaramel, dxSkinCoffee, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinsDefaultPainters,
  acPNG,cxGridExportLink, cxProgressBar, dxSkinBlack, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinValentine,
  dxSkinXmas2008Blue, cxRadioGroup, cxCheckComboBox, cxCheckGroup, Vcl.ImgList,
  JvExControls, JvAnimatedImage, JvGIFCtrl,ShellApi, cxSpinEdit, cxTimeEdit,
  RxClock;
type
  TControlAccess = class(TControl);
  TcxLookAndFeelAccess = class(TcxLookAndFeel);
  TWinControlAccess = class(TWinControl);
  TdxLayoutControlAccess = class(TdxLayoutControl);


type
  TGirisForm = class(TForm)
    cxPanel: TcxGroupBox;
    DataTableSource: TDataSource;
    cxButton1: TcxButton;
    Sayfalar: TcxPageControl;
    sayfa1: TcxTabSheet;
    sayfa2: TcxTabSheet;
    sayfa3: TcxTabSheet;
    sayfa4: TcxTabSheet;
    Sayfa1_dxLayoutControl1Group_Root: TdxLayoutGroup;
    Sayfa1_dxLayoutControl1: TdxLayoutControl;
    Kolon2: TdxLayoutGroup;
    sqlRun: TADOQuery;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel;
    Kolon3: TdxLayoutGroup;
    Kolon1: TdxLayoutGroup;
    cxYeni: TcxButton;
    cxKaydet: TcxButton;
    cxIptal: TcxButton;
    cxButton5: TcxButton;
    cxKapat : TcxButton;
    dxStatusBar1: TdxStatusBar;
    cxTopPanel: TcxGroupBox;
    cxTab: TcxTabControl;
    Image1: TImage;
    Image2: TImage;
    cxButtonKadir1: TcxButtonKadir;
    cxTopPanel_AltSag: TcxGroupBox;
    Menu: TPopupMenu;
    cxTopPanelAltOrta: TControlBar;
    ToolBar1: TToolBar;
    sayfa3_dxLayoutControl2: TdxLayoutControl;
    sayfa3_dxLayoutGroup1: TdxLayoutGroup;
    Sayfa3_Kolon2: TdxLayoutGroup;
    Sayfa3_Kolon3: TdxLayoutGroup;
    Sayfa3_Kolon1: TdxLayoutGroup;
    sayfa5: TcxTabSheet;
    sayfaList: TcxTabSheet;
    cxGridGiris: TcxGrid;
    cxGridGirisrisTableView: TcxGridDBTableView;
    cxGridGirisLevel1: TcxGridLevel;
    sayfa2_dxLayoutControl3: TdxLayoutControl;
    sayfa2_dxLayoutGroup2: TdxLayoutGroup;
    sayfa2_Kolon2: TdxLayoutGroup;
    sayfa2_Kolon3: TdxLayoutGroup;
    sayfa2_Kolon1: TdxLayoutGroup;
    dxLayoutLookAndFeelList2: TdxLayoutLookAndFeelList;
    dxLayoutSkinLookAndFeel2: TdxLayoutSkinLookAndFeel;
    pnlDurum: TcxGroupBox;
    pnlDurumImage: TcxImage;
    pnlDurumDurum: TcxGroupBox;
    DosyaKaydet: TSaveDialog;
    SelectAdo: TADOQuery;
    pBar: TcxProgressBar;
    TopPanel: TcxGroupBox;
    txtTopPanelTarih1: TcxDateEditKadir;
    txtTopPanelTarih2: TcxDateEditKadir;
    btnListTopPanel: TcxButtonKadir;
    txtkodTopPanel: TcxComboBox;
    txtSeansTopPanel: TcxComboBox;
    SysTakipNoVar: TcxImageComboKadir;
    ENabizMesajTipi: TcxImageComboKadir;
    AktifPasifTopPanel: TcxImageComboKadir;
    DiyalizTipTopPanel: TcxImageComboKadir;
    txtDonemTopPanel: TcxDonemComboKadir;
    KurumTipTopPanel: TcxImageComboKadir;
    DataSource: TDataSource;
    chkList: TcxCheckGroup;
    USER_ID: TcxTextEdit;
    sirketKodu_: TcxButtonEditKadir;
    Kolon4: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutGroup1: TdxLayoutGroup;
    Sayfa4_Kolon2: TdxLayoutGroup;
    Sayfa4_Kolon3: TdxLayoutGroup;
    Sayfa4_Kolon1: TdxLayoutGroup;
    SeansKriter: TcxTextEdit;
    pnlDurumImageList: TcxImageList;
    dxLayoutControl2: TdxLayoutControl;
    dxLayoutGroup2: TdxLayoutGroup;
    Sayfa5_Kolon1: TdxLayoutGroup;
    Sayfa5_Kolon2: TdxLayoutGroup;
    Sayfa5_Kolon3: TdxLayoutGroup;
    Ado_Foto: TADOQuery;
    ListeNaceKodlari: TListeAc;
    _CINSIYET_: TcxImageComboKadir;
    Timer1: TTimer;
    RdGroup: TcxRadioGroup;
    pGecenSure: TcxTimeEdit;
    pSaat: TRxClock;
    txtTekTarih: TcxDateEditKadir;

    procedure cxKaydetClick(Sender: TObject);virtual;
    procedure cxButtonCClick(Sender: TObject);
    procedure TopPanelPropertiesChange(Sender: TObject);
    function Post : Boolean;
    procedure cxListeleClick(Sender : TObject);
    function PostSQL(sp_Sql : string) : Boolean;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxEditEnter(Sender: TObject);
    procedure cxEditExit(Sender: TObject);
    procedure cxTextEditKeyDown(Sender: TObject; var Key: Word;  Shift: TShiftState);
    procedure cxTextEditBKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure cxButtonEditPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);virtual;
    procedure cGridcxButtonEditPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure NaceKodPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer); virtual;

    procedure CustomEditClear;virtual;
    procedure KontrolEditValueClear;
    procedure sqlRunLoad;virtual;
    procedure Yukle;virtual;
    procedure Disabled(_form: TForm ; indexField : Boolean = True);
    procedure Enabled;
    procedure newButonVisible(durum : boolean);
    procedure indexKaydiBul(kod : string;Fieldname : string = '' ; sirketKod : string = '');
    procedure cxButtonKadir1Click(Sender: TObject);
    procedure TopPanelButonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxPanelButtonEnabled(yeni,kaydet,sil : boolean);
    procedure cxPanelButtonVisible(yeni,kaydet,sil : boolean ; kapat : boolean = True);
    procedure Image2Click(Sender: TObject);
    procedure PropertiesEditValueChanged(Sender: TObject);virtual;
    procedure SayfaCaption(s1,s2,s3,s4,s5 : string;ActivePage : integer = 0);
    procedure FormResize(Sender: TObject);
    procedure SetFormID(const Value : integer);
    procedure SetHastaBilgileriniCaptionGoster(const Value : Boolean);
    function GetFormID : integer;
    procedure ExceleGonder;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SayfalarPageChanging(Sender: TObject; NewPage: TcxTabSheet;
      var AllowChange: Boolean);
    procedure PropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);

    function FormInputZorunluKontrol(form : TForm) : Boolean;
    procedure FormCreate(Sender: TObject);
    procedure SayfalarChange(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Timer1Timer(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure pSaatGetTime(Sender: TObject; var ATime: TDateTime);

    procedure MaskEditPropertiesValidate(Sender: TObject;
     var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);virtual;

    procedure AppException(Sender: TObject; E: Exception);
    procedure PrintScreenDetect(Sender: TObject; var Result: Boolean);

  private
    F_dosyaNO_ : string;
    F_gelisNO_ : string;
    F_gelisSiraNO_ : string;
    F_provizyonTarihi_ : string;
    F_TakipNo_ : string;
    //F_ilkTakipNo_ : string;
    F_BasvuruNo_ : string;
    F_DiyalizTedaviTipi_ : string;
    F_Doktor_ : string;
    F_Makina_ : string;
    F_Seans_ : string;
    F_TalepSira_ : string;
    F_TC_ : string;
    F_DevKurum_ : string;
    F_SigortaliTur_ : string;
    F_HastaAdSoyad_ : string;
    FformID : integer;
    F_HastaBilgileriniCaptionGoster_ : Boolean;
    F_SeansTarihi_ : string;
    F_Yupass_ : String;
    F_FaturaNo_ : String;
    F_Dataset : TADOQuery;
    F_DataSource : TDataSource;
    F_SeansSira_ : string;
    F_IlacEtkenMadde_ : string;
    F_firmaKod_ : string;
    F_mobilTel_ : string;
    F_adres_ : string;
    F_sp_ : string;
    F_kod_ : string;
    F_sube_ : string;
    F_SahaDenetimVeri_ : TSahaDenetimler;
    F_KaliteYonetimPlan_ : TKaliteYonetimPlan;
    F_Tatbikat_ : TTatbikat;
    F_MuayeneProtokolNo_ : string;
    F_cxKaydetResult : Boolean;
    F_Tarih1_ : string;
    F_Tarih2_ : string;
    F_ResourceID_ : string;
    F_FaturaIptal : Boolean;
    F_BransKodu_ : String;
    F_TedaviTuru_ : String;
    F_SeansBilgi : TDigerIslemTalep;
    F_sysTakipNo_ : string;
    F_DescFieldKontrol : Boolean;
    F_FormDiseabled : Boolean;
    F_Foto_ : TcxImage;
    F_kilo_ : double;
    F_yas_ : integer;
    F_value_ : Variant;
    F_pasifSebeb_ : string;
    F_Aktif_ : string;
    F_ShowTip_ : integer;

    F_SaveKontrol : Boolean;

    procedure SetSaveKontrol(const value : Boolean);

  protected
    F_IDENTITY : Integer;
    function IsPostControl (const aComponent : TComponent) : Boolean;
    function IsLoadControl (const aComponent : TComponent) : Boolean;
    function IsPostSQLControl (const aComponent : TComponent) : Boolean;
    function IsGridPropertyControl (const aComponent : TComponent) : Boolean;
    function IsInputZorunluControl (const aComponent : TComponent) : Boolean;
    function IsClearControl (const aComponent : TComponent) : Boolean;
    function IsEnableControl (const aComponent : TComponent) : Boolean;
    function IsDisableControl (const aComponent : TComponent) : Boolean;
  public
    indexFieldName,TableName,_SqlInsert_,_SqlUpdate_,_SqlDelete_ : string;
    _fieldsEdit_,_fields_ ,_fieldBaslik_,_fieldTips_,_fieldFormats_,_spSQL_,_ICParams_,_fieldReadOnly_ : string;
    indexFieldValue : string;
    sqlTip : sqlType;
    GonderenForm : TGirisForm;
    ChangeButtonListClick : Boolean;
    DatasetOpen : Boolean;
   // _dosyaNo_,_gelisNo_,TakipNo,BasvuruNo : string;
    procedure Olustur(sender : TObject;Table,Tabbaslik : string ; imageindex : integer;
                      sqlInsert : string = '';sqlUpdate : string = '';sqlDelete : string = '';indexField : string = '');
    procedure ButonClick(sender : TObject ; key : char);
    procedure tableColumnDescCreate;
    procedure TapPanelElemanVisible(ButtonList : Boolean = True;Tarih1 : Boolean = True;
                                    Tarih2 : Boolean = True;ENabizmesajTip : Boolean = True;
                                    Seans : Boolean = True;HizmetKod : Boolean = True;
                                    KurumTip : Boolean = True;SysTakipNoVarMi : Boolean = False;
                                    SeansKriteri : Boolean = False;
                                    AktifPasif : Boolean = False;
                                    DiyalizTip : Boolean = False;
                                    Donem : Boolean = False;
                                    ChkListe : Boolean = False;
                                    ChangeButtonListClick : Boolean = True;
                                    tekTarih : Boolean = False);

    procedure setDataStringC(sender : Tform ; fieldName,caption : string;
      parent : TdxLayoutGroup;grup : string ;uzunluk : integer;List : Tstrings);overload;
    procedure setDataStringC(sender : Tform ; fieldName,caption : string;
     parent : TdxLayoutGroup;grup : string ;uzunluk : integer;List : string); overload;

    procedure setDataStringC(sender : Tform ; fieldName,caption : string;
     parent : TdxLayoutGroup;grup : string ;uzunluk : integer;TableName,Field,where : string); overload;


    procedure setDataStringIC(sender : Tform ; fieldName,caption : string;
     parent : TdxLayoutGroup;grup : string ;uzunluk : integer;TableName,valueField,DescField : string;filter :string = '';tag : integer = -1;itemList : string = '');

    procedure setDataString(sender : Tform ; fieldName ,caption: string ;
          parent : TdxLayoutGroup; grup : string;uzunluk : integer;Zorunlu : Boolean = False;
          ObjectName : String = '';ReadOnly : Boolean = False;_Tag_ : integer = 0;
          DefaultText : string = '' ; EditCharCase : TEditCharCase = ecNormal ; EditMask : string = '' ; KarakterTip : TKarakterTip = ktNone);



    procedure setDataStringMemo(sender : Tform ; fieldName ,caption: string ;
          parent : TdxLayoutGroup; grup : string;uzunluk,yukseklik : integer);
    procedure setDataStringB(sender : Tform; fieldName ,caption: string ;
        parent : TdxLayoutGroup; grup : string;uzunluk:integer; Prms : TListeAc;indexField : Boolean;
        obje:TcxButtonEditKadir;tanimi : string='tanimi';whereColumObjeName : string = '';
        Zorunlu : Boolean = False ; ReadOnly : Boolean = False;_Tag_ : integer = 0);

    procedure setDataStringKontrol(sender : Tform;obje : TControl; fieldName,caption : string;
     parent : TdxLayoutGroup;grup : string ;uzunluk : integer ; Yukseklik : integer = 0 ;
     Aling : TAlign = alNone; objeName : string = '' ; CaptionAling : TdxCaptionLayout = clTop ; ImmediatePost : Boolean = True);

    procedure setDataStringBLabel(sender : Tform ; Name : string;
     parent : TdxLayoutGroup;grup : string;uzunluk : integer;caption : string = '';parentCaption : string = '';fieldName : string = '';
     pBoldText: Boolean = True;
     pTextColor: TColor = clRed;
     pHorzAlignment: TcxEditHorzAlignment = taLeftJustify;
     yukseklik : integer = 21);
    procedure addButton(sender : Tform ;cxButton:TcxButtonKadir;
                        Name ,captionItem,captionButton: string; parent : TdxLayoutGroup;
                        grup : string;uzunluk : integer;
                        Event : TNotifyEvent = nil;Tag : integer = 0;yukseklik : integer = 21);
    procedure addButtonTopPanel(sender : Tform ; Name,caption: string ; uzunluk,Tag : integer; Event : TNotifyEvent = nil);
    procedure setDataImage(sender : Tform; Name ,captionItem : string; parent : TdxLayoutGroup; grup : string;uzunluk,yukseklik : integer);
    procedure setDataStringChk(sender : Tform ; fieldName,caption : string;
     parent : TdxLayoutGroup;grup : string ;uzunluk : integer ; tip : CheckTip = ctBol  ; text : string = ' ');
    procedure setDataStringCurr(sender : Tform ; fieldName,caption : string;
     parent : TdxLayoutGroup;grup : string ;uzunluk : integer;displayFormat : string = ',0.00';_Tag_ : integer = -100);
 //   procedure SetGrid(cxGrid : TcxGrid ; Colums,ColumnsPropertiesClassName,ColumsCaption,ColumnsWidth : String);
 //   function CreateGrid(name : string; Form : TGirisForm)  : TcxGrid;
    procedure DiyalizTedaviControlleriniFormaEkle(Grp : TdxLayoutGroup ; Baslik : Boolean = True);
    procedure DiyalizTedaviControlleriReadOnly(ReadOnly : Boolean = True);
    procedure DiyalizTedavi_UF_KontrolleriniFormaEkle(Grp : TdxLayoutGroup);
    function SirketComboFilter : string;
    function  Init(Sender: TObject) : Boolean; virtual;
    procedure OrtakEventAta(Sender : TcxCustomEdit);
    procedure QuerySelect(sql:string);
    procedure DurumGoster(Visible : Boolean = True; pBarVisible : Boolean = False ;
                                 msj : string = '��leminiz Yap�l�yor , l�tfen bekleyiniz...';
                                 imageIndex : integer = 0 ;PbarMax : integer = 0);

    function ResultDataset(FormTag : integer) : TADOQuery;
        { Public declarations }
    property formID : integer read GetFormID write SetFormID;
    property _dosyaNO_ : string read F_dosyaNO_ write F_dosyaNO_;
    property _gelisNO_ : string read F_gelisNO_ write F_gelisNO_;
    property _gelisSiraNo_ : string read F_gelisSiraNo_ write F_gelisSiraNo_;
    property _provizyonTarihi_ : string read F_provizyonTarihi_ write F_provizyonTarihi_;
    property _TakipNo_ : string read F_TakipNo_ write F_TakipNo_;
    property _DiyalizTedaviTipi_ : string read F_DiyalizTedaviTipi_ write F_DiyalizTedaviTipi_;
    property _Doktor_ : string read F_Doktor_ write F_Doktor_;
    property _Makina_ : string read F_Makina_ write F_Makina_;
    property _Seans_ : string read F_Seans_ write F_Seans_;
    property _BasvuruNo_ : string read F_BasvuruNo_ write F_BasvuruNo_;
    property _TalepSira_ : string read F_TalepSira_ write F_TalepSira_;
    property _TC_ : string read F_TC_ write F_TC_;
    property _DevKurum_ : string read F_DevKurum_ write F_DevKurum_;
    property _SigortaliTur_ : string read F_SigortaliTur_ write F_SigortaliTur_;
    property _HastaAdSoyad_ : string read F_HastaAdSoyad_ write F_HastaAdSoyad_;
    property _HastaBilgileriniCaptionGoster_ : Boolean read F_HastaBilgileriniCaptionGoster_ write SetHastaBilgileriniCaptionGoster;
    property _SeansTarihi_ : string read F_SeansTarihi_ write F_SeansTarihi_;
    property _FaturaNo_ : string read F_FaturaNo_ write F_FaturaNo_;
    property _Yupass_ : string read F_Yupass_ write F_Yupass_;
    property _Dataset : TADOQuery read F_Dataset write F_Dataset;
    property _DataSource : TDataSource read F_DataSource write F_DataSource;
    property _SeansSira_ : string read F_SeansSira_ write F_SeansSira_;
    property _IlacEtkenMadde_ : string read F_IlacEtkenMadde_ write F_IlacEtkenMadde_;
    property _firmaKod_ : string read F_firmaKod_ write F_firmaKod_;
    property _mobilTel_ : string read F_mobilTel_ write F_mobilTel_;
    property _adres_ : string read F_adres_ write F_adres_;
    property _sp_ : string read F_sp_ write F_sp_;
    property _kod_ : string read F_kod_ write F_kod_;
    property _sube_ : string read F_sube_ write F_sube_;
    property _SahaDenetimVeri_ : TSahaDenetimler read F_SahaDenetimVeri_ write F_SahaDenetimVeri_;
    property _KaliteYonetimPlan_ : TKaliteYonetimPlan read F_KaliteYonetimPlan_ write F_KaliteYonetimPlan_;
    property _Tatbikat_ : TTatbikat read F_Tatbikat_ write F_Tatbikat_;

    property _MuayeneProtokolNo_ : string read F_MuayeneProtokolNo_ write F_MuayeneProtokolNo_;
    property cxKaydetResult : boolean read F_cxKaydetResult;
    property _Tarih1_ : string read F_Tarih1_ write F_Tarih1_;
    property _Tarih2_ : string read F_Tarih2_ write F_Tarih2_;
    property _ResourceID : string read F_ResourceID_ write F_ResourceID_;
    property _FaturaIptal : Boolean read F_FaturaIptal write F_FaturaIptal;
    property _BransKodu_ : string read F_BransKodu_ write F_BransKodu_;
    property _TedaviTuru_ : string read F_TedaviTuru_ write F_TedaviTuru_;
    property _SeansBilgi : TDigerIslemTalep read F_SeansBilgi write F_SeansBilgi;
    property _sysTakipNo_ : string read F_sysTakipNo_ write F_sysTakipNo_;
    property _DescFieldKontrol : Boolean read F_DescFieldKontrol write F_DescFieldKontrol;
    property _FormDiseabled : Boolean read F_FormDiseabled write F_FormDiseabled;
    property _Foto_ : TcxImage read F_Foto_ write F_Foto_;
    property _kilo_ : double read F_kilo_ write F_kilo_;
    property _yas_ : integer read F_yas_ write F_yas_;
    property _value_ : variant read F_value_ write F_value_;
    property _pasifSebeb_ : string read F_pasifSebeb_ write F_pasifSebeb_;
    property _Aktif_ : string read F_Aktif_ write F_Aktif_;
    property _SaveKontrol : Boolean read F_SaveKontrol write SetSaveKontrol Default False ;
    property _showTip_ : integer read F_showTip_ write F_showTip_ Default 0;
  end;

const
  _SqlSelect_ = 'Select %s from %s where %s';
  selectSQLAll  = 'select * from %s ';
  selectSQL  = 'select * from %s where %s';
  selectSQLW  = 'select * from %s where %s';
  selectTableDescColumn = 'select st.name [Table],sc.name [Column],sep.value [Description] '+
                          ' from sys.tables st ' +
                          ' inner join sys.columns sc on st.object_id = sc.object_id ' +
                          ' left join sys.extended_properties sep on st.object_id = sep.major_id ' +
                                                              ' and sc.column_id = sep.minor_id ' +
                                                              ' and sep.name = ''MS_Description'' ' +
                          ' where st.name = %s' +
                          'and isnull(sep.value,'''') <> ''''';

  insertrecordViewLog = 'insert into recordViewLog (recordField,recordFieldValue,recordTable,vUser) ' +
                        ' values(%s,%s,%s,%s)';
var
  GirisForm: TGirisForm;
  _SQLRUN_ : string;
  Lxxxx : TListeAc;
  oldRenk : TColor;
  StartTime : TTime;
implementation

uses AnaUnit,Data_Modul,FormKontrolUserSet;

{$R *.dfm}


procedure TGirisForm.PrintScreenDetect(Sender: TObject; var Result: Boolean);
var
  image1 : TcxImage;
  bmpF,jpgF : string;
begin
    if GetAsyncKeyState(VK_SNAPSHOT) <> 0
    then begin
      if not DirectoryExists('C:\NoktaV3\Ekran\') then
       MkDir('C:\NoktaV3\Ekran\');

      image1 := TcxImage.Create(nil);
      image1.Properties.GraphicClassName := 'TJPEGImage';

      try
       ScreenShot(image1.Picture.BitMap);
       //ScreenShotActiveWindow(image1.Picture.BitMap);
       image1.Picture.SaveToFile('C:\NoktaV3\Ekran\screen.bmp');
       bmpF := 'C:\NoktaV3\Ekran\screen.bmp';
       jpgF := 'C:\NoktaV3\Ekran\screen.jpg';
       BMPtoJPG(bmpF, jpgF);
      finally
        image1.Free;
      end;

    end;



   // Label1.Caption:='PrintScreen Key was pressed';
    Result := True;
end;


procedure TGirisForm.AppException(Sender: TObject; E: Exception);
begin
  Application.ShowException(E);
 // Application.Terminate;
end;


procedure TGirisForm.NaceKodPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  List : ArrayListeSecimler;
begin
   List := ListeNaceKodlari.ListeGetir;
   if High (List) < 0 then Exit;
   datalar.FirmaSubeBilgi.NaceKod := List[0].kolon1;
   TcxButtonEditKadir(Sender).EditValue := List[0].kolon1;
end;


function TGirisForm.SirketComboFilter : string;
var
 where,sube : string;
begin
  Result := '';
  if datalar.DoktorKodu <> '' then
  begin
    where := '';
    sube := ' Doktor = ' + QuotedStr(datalar.doktorKodu);
  end
  else
  if datalar.IGU <> '' then
  begin
    where := '';
    sube := ' IGU = ' + QuotedStr(datalar.IGU);
  end
  else
  if datalar.DSPers <> '' then
  begin
    where := '';
    sube := ' DigerSaglikPers = ' + QuotedStr(datalar.DSPers);
  end
  else
  if datalar.sirketKodu <> ''
  Then begin
    Where := 'SirketKod = ' + QuotedStr(datalar.sirketKodu);
    sube:= '';
  end
  else begin
    Where := '';
    Sube := '';
  end;
  Result := where + Sube;
end;

function TGirisForm.ResultDataset(FormTag : integer) : TADOQuery;
var
  ADO : TADOQuery;
  Sql,SirketKod : string;
begin
   ADO := TADOQuery.Create(nil);
   ADO.Connection := Datalar.ADOConnection2;
   Application.ProcessMessages;
   TGirisForm(self).DurumGoster;
 // try
   try
     case formTag of

      TagfrmLabEntegrasyon :
          begin
             sql := 'exec sp_LabListesi ' + txtTopPanelTarih1.GetSQLValue + ',' +
                                            txtTopPanelTarih2.GetSQLValue + ',' +
                                            QuotedStr(datalar.AktifSirket) + ',' +
                                            QuotedStr(RdGroup.EditValue);

          end;


       TagfrmHastaListe :
           begin
              sql := 'exec sp_frmPersonelListesi ' + QuotedStr(datalar.AktifSirket) + ',' +
                                                     AktifPasifTopPanel.EditValue + ',' +
                                                     QuotedStr('') + ',' +
                                                     QuotedStr(datalar.AktifSube);

           end;

     TagfrmHastaListeD :
         begin
            sql := 'exec sp_frmHastaListesi ' + QuotedStr(txtDonemTopPanel.getValueIlkTarih) + ',' +
                                                QuotedStr(txtDonemTopPanel.getValueSonTarih) + ',' +
                                                QuotedStr(vartoStr(AktifPasifTopPanel.EditValue)) + ',' +
                                                QuotedStr(varToStr(txtSeansTopPanel.EditValue)) + ',' +
                                                QuotedStr(varToStr(KurumTipTopPanel.EditValue)) + ',' +
                                                QuotedStr(datalar.AktifSirket) + ',' +
                                                QuotedStr(varToStr(ifThen(txtTekTarih.GetValue='NULL','',txtTekTarih.GetValue)));
         end;

       TagfrmFirmaPersonelEgitimList :
           begin

              if chkList.EditValue = '0' then
              begin

               sql :=
                   ' Select e.id, e.BaslamaTarihi,e.BitisTarihi, et.tanimi tanimi, s.Tanimi SirketTanimi ,'+
                    ' dbo.fn_egitimAltDetay(e.id) EgitimBilgi,'+
                    ' EgitimCSGBGonderimSonuc,sorguNo,sorguSonuc,I.tanimi IGU,' +
                    '(select top 1 egitimciAdiSoyadi from Personel_Egitim_Egitimci where EgitimID = e.id) egitimci ' +

                    ' from Egitimler e  left join egitimGrup_tnm et on et.Kod = e.EgitimTuru '+
                    ' left outer join SIRKETLER_TNM s on s.SirketKod = e.SirketKod ' +
                    ' left join IGU I on I.kod = e.IGU ' +
                    ' where e.BaslamaTarihi between ' + txtTopPanelTarih1.GetSQLValue +
                    ' and ' + txtTopPanelTarih2.GetSQLValue;

              end
              else
              begin
                 sql :=
                   'Select e.id, e.BaslamaTarihi,e.BitisTarihi, et.tanimi tanimi, s.Tanimi SirketTanimi , ' +
                   ' dbo.fn_egitimAltDetay(e.id) EgitimBilgi, ' +
                   ' EgitimCSGBGonderimSonuc,sorguNo,sorguSonuc,I.tanimi IGU,(select top 1 egitimciAdiSoyadi from Personel_Egitim_Egitimci where EgitimID = e.id) egitimci,' +
                   ' Pk.TCKIMLIKNO personelTc,Pk.HASTAADI + '' '' + pk.HASTASOYADI personelAdi '+
                   ' from Egitimler e '+
                   ' left join egitimGrup_tnm et on et.Kod = e.EgitimTuru '+
                   ' left outer join SIRKETLER_TNM s on s.SirketKod = e.SirketKod  left join IGU I on I.kod = e.IGU '+
                   ' left join Personel_Egitim Pe on Pe.EgitimID = e.id '+
                   ' left join PersonelKart Pk on Pk.dosyaNO = Pe.PersonelDosyaNo ' +
                   ' where e.BaslamaTarihi between ' + txtTopPanelTarih1.GetSQLValue +
                   ' and ' + txtTopPanelTarih2.GetSQLValue +
                   ' order by e.id ';
              end;


           end;
       TagfrmDoktorHastaListe :
           begin
              sql := 'exec sp_frmDoktorPersonelListesi ' + QuotedStr(ifThen(KurumTipTopPanel.EditingValue=1,datalar.AktifSirket,'')) + ',' +
                                                          AktifPasifTopPanel.EditValue + ',' +
                                                          QuotedStr(datalar.doktorKodu) + ',' +
                                                          QuotedStr(datalar.AktifSube);

           end;

       TagfrmfirmaListe :
           begin
             sql := 'exec sp_firmaListesi ' + QuotedStr(vartoStr(KurumTipTopPanel.EditingValue)) + ',' +
                                               QuotedStr(vartoStr(AktifPasifTopPanel.EditingValue));

           end;

       TagfrmCihazKontrolListesi :
           begin
             sql := 'exec sp_firmaCihazKontrolListesi ' + QuotedStr(vartoStr(KurumTipTopPanel.EditingValue));


           end;


       TagfrmReceteler :
           begin
              if KurumTipTopPanel.EditValue = 1 then sirketKod := datalar.AktifSirket
               else SirketKod := '';
              sql := 'exec sp_Receteler ' + QuotedStr(sirketKod) + ',' +
                                            txtTopPanelTarih1.GetSQLValue   + ',' +
                                            txtTopPanelTarih2.GetSQLValue;

           end;
       TagfrmTopluSeans :
           begin
             sql := 'exec sp_TopluSeansGetir ' + txtTopPanelTarih1.GetSQLValue   + ',' +
                                                 txtTopPanelTarih2.GetSQLValue + ',' +
                                             //    QuotedStr('') + ',' +
                                                 QuotedStr(txtSeansTopPanel.Text) + ',' +
                                            //     QuotedStr('') + ',' +
                                            //     copy(chkList.EditValue,1,1) + ',' +
                                             //    inttoStr(strtoint(copy(chkList.EditValue,3,1))*-1) + ',' +
                                                 QuotedStr(datalar.AktifSirket);

           end;
       TagfrmTedaviListP :
           begin
             sql := 'exec sp_TedaviListesiPivot ' + txtTopPanelTarih1.GetSQLValue + ',' +
                                                    txtTopPanelTarih2.GetSQLValue;
           end;
       TagfrmFaturalar :
           begin
             sql := 'exec sp_Faturalar '+ txtTopPanelTarih1.GetSQLValue + ',' +
                                          txtTopPanelTarih2.GetSQLValue + ',' +
                                          QuotedStr(datalar.AktifSirket) + ',' +
                                          copy(chkList.EditValue,2,1)
                                          ;

           end;

       TagfrmSirketSozlesmeler :
           begin
             sql := 'exec sp_SirketAktifSozlesmeler ' + txtTopPanelTarih1.GetSQLValue('YYYY-MM-DD');

           end;

       TagfrmCariHesapEkstre :
           begin
             sql := 'exec sp_CariHesapExtresi ' + QuotedStr(vartostr(KurumTipTopPanel.EditValue)) + ',' +
                                                  txtTopPanelTarih1.GetSQLValue + ',' +
                                                  txtTopPanelTarih2.GetSQLValue + ',' +
                                                  QuotedStr(datalar.AktifSirket);


           end;

       TagfrmCekler :
           begin
             sql := 'exec sp_Cekler ' + vartostr(KurumTipTopPanel.EditValue) + ',' +
                                          QuotedStr(datalar.AktifSirket);
           end;

       TagfrmKasaBanka :
           begin
             sql := 'exec sp_KasaDefteri ' +      txtTopPanelTarih1.GetSQLValue + ',' +
                                                  txtTopPanelTarih2.GetSQLValue + ',' +
                                                  QuotedStr(datalar.AktifSirket) + ',' +
                                                  QuotedStr(varToStr(KurumTipTopPanel.EditValue)) ;
           end;


       TagfrmSKS_Dokumanlar :
           begin
                 (*
               sql := 'select top 1 *,DK.tanimi KapsamAdi,DT.tanimi TurAdi, ' +
                      ' case when isnull(DR.PDF,D.PDF) is null then 0 else 1 end PDFVar ' +
                      ' from SKS_Dokumanlar D' +
                      ' join SKS_DokumanKapsamlari DK on DK.kod = D.Kapsam ' +
                      ' join SKS_DokumanTurleri DT on DT.kod = D.tur ' +
                      ' left join SKS_DokumanlarRev DR on DR.dokumanid = D.id'+ // and DR.aktif = 1' +
                      ' where D.sirketKod = ' + QuotedStr(datalar.AktifSirket)  +
                      ' order by rev desc ';
                      //convert(varchar,yayinTarih,112) between ' + tarihal(txtTopPanelTarih1.date) + ' and ' + tarihal(txtTopPanelTarih2.Date);
           *)
           end;


     end;
     if sql = '' then exit;

     datalar.QuerySelect(sql);

     ResultDataset := datalar.QuerySelect(sql);
   finally
     DurumGoster(False);
   end;
//  except
//    ADO.free;
//  end;

end;

procedure TGirisForm.pSaatGetTime(Sender: TObject; var ATime: TDateTime);
var
  b : TTime;
begin

   pGecenSure.Time := ATime - StartTime;
end;

procedure TGirisForm.TopPanelButonClick(Sender: TObject);
begin
    case TcxButtonKadir(sender).Tag of
     ClckListele : begin
                      _Dataset := ResultDataset(Tag);
                      DataSource.DataSet := _Dataset;
                      if not Assigned(_DataSource) then _DataSource := TDataSource.Create(self);
                      _DataSource.DataSet := _Dataset;
                   end;
    end;

end;


procedure TGirisForm.TapPanelElemanVisible(ButtonList : Boolean = True;Tarih1 : Boolean = True;
                                    Tarih2 : Boolean = True;ENabizmesajTip : Boolean = True;
                                    Seans : Boolean = True;HizmetKod : Boolean = True;
                                    KurumTip : Boolean = True ; SysTakipNoVarMi : Boolean = False;
                                    SeansKriteri : Boolean = False;
                                    AktifPasif : Boolean = False;
                                    DiyalizTip : Boolean = False;
                                    Donem : Boolean = False;
                                    ChkListe : Boolean = False;
                                    ChangeButtonListClick : Boolean = True;
                                    tekTarih : Boolean = False);
begin
  btnListTopPanel.Visible := ButtonList;
  txtTopPanelTarih1.Visible := Tarih1;
  txtTopPanelTarih2.Visible := Tarih2;
  txtTekTarih.Visible := tekTarih;
  txtTopPanelTarih1.EditValue := date;
  txtTopPanelTarih2.EditValue := date;
  ENabizmesajTipi.Visible := ENabizmesajTip;
  txtSeansTopPanel.Visible := Seans;
  txtkodTopPanel.Visible := HizmetKod;
  KurumTipTopPanel.Visible := KurumTip;
  SysTakipNoVar.Visible := SysTakipNoVarmi;
  SeansKriter.Visible := SeansKriteri;
  AktifPasifTopPanel.Visible := AktifPasif;
  DiyalizTipTopPanel.Visible := DiyalizTip;
  txtDonemTopPanel.Visible := Donem;
  chkList.Visible := ChkListe;

end;

procedure TGirisForm.Timer1Timer(Sender: TObject);
begin
  //pnlDurumImage.Picture.Assign(imzaGif);
end;

procedure TGirisForm.DurumGoster(Visible : Boolean = True; pBarVisible : Boolean = False ;
                                 msj : string = '��leminiz Yap�l�yor , l�tfen bekleyiniz...';
                                 imageIndex : integer = 0;PbarMax : integer = 0);

begin
   pnlDurum.Left:=(self.width div 2) - (pnlDurum.Width div 2);
   pnlDurum.Top:=(self.height div 2) - (pnlDurum.height div 2);
   pnlDurum.BringToFront;
   pnlDurum.Visible := Visible;
   pBar.Visible := pBarVisible;
   pGecenSure.Visible := pBarVisible;
   pGecenSure.Time := strToTime('00:00:00');
   StartTime:= Time;
   pBar.Position := 0;
   pBar.Properties.Max := PbarMax;
   pnlDurumDurum.Caption := msj;
   pnlDurumImage.Clear;
   pnlDurumImageList.GetBitmap(imageIndex,pnlDurumImage.Picture.Bitmap);
   //imzaGif.Animate := True;
   Application.ProcessMessages;
end;

procedure TGirisForm.QuerySelect(sql:string);
begin
//    if Pos ('WHERE',AnsiUpperCase(sql)) <> 0
//    Then sql := StringReplace(sql,'WHERE','WITH(NOLOCK) WHERE',[rfReplaceAll,rfIgnoreCase])
//    else
//      if  (Pos ('GROUP BY',AnsiUpperCase(sql)) = 0)
//      and (Pos ('ORDER BY',AnsiUpperCase(sql)) = 0)
//      Then sql := sql + ' WITH(NOLOCK) ';
   try
    if Copy(AnsiUppercase(sql) ,1, 6) = 'SELECT'
    Then sql := 'SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED  '+ sql;
    Self.SelectAdo.Close;
    Self.SelectAdo.SQL.Clear ;
    Self.SelectAdo.SQL.Add(sql);
    Self.SelectAdo.Open;
   except on e : Exception do
    begin
      ShowMessageskin(e.Message,'','','info');
    end;
   end;
end;

procedure TGirisForm.OrtakEventAta(Sender : TcxCustomEdit);
begin
  TcxImageComboKadir (sender).OnEnter := cxEditEnter;
  TcxImageComboKadir(sender).OnExit := cxEditExit;
  TcxImageComboKadir(sender).OnKeyDown := cxTextEditBKeyDown;
  TcxTextEdit(sender).Properties.OnEditValueChanged := PropertiesEditValueChanged;
end;

function TGirisForm.Init(Sender: TObject) : Boolean;
var
  i,ToolBar1H,TopPanelH,cxPanelH : integer;
begin
  USER_ID.Text := datalar.username;
  //sirketKod.Text := datalar.AktifSirket; //sadece yeni kay�t ise yap dedik, di�erlerinde veritaban�ndan geldik�e eziliyor zaten.
  FormInputZorunluKontrolPaint(self,$00FCDDD1);

 //  if self._showTip_ = 0
//   then begin
        sayfa1.Width := AnaForm.sayfalar.Width - 20;
        sayfa2.Width := sayfa1.Width;
        sayfa3.Width := sayfa1.Width;
        sayfa4.Width := sayfa1.Width;


        if ToolBar1.Visible then ToolBar1H := ToolBar1.Height else ToolBar1H := 0;
        if TopPanel.Visible then TopPanelH := TopPanel.Height else TopPanelH := 0;
        if cxPanel.Visible then cxPanelH := cxPanel.Height else cxPanelH := 0;

        sayfa1.Height := AnaForm.sayfalar.Height - (ToolBar1H + TopPanelH + cxPanelH + sayfalar.TabHeight + AnaForm.sayfalar.TabHeight + dxStatusBar1.Height);
        sayfa2.Height := sayfa1.Height;
        sayfa3.Height := sayfa1.Height;
        sayfa4.Height := sayfa1.Height;

 // end;
 // cxTab.PopupMenu := menu;

//  pnlDurum.Alignment := alCenterCenter;


  if _DescFieldKontrol
  then tableColumnDescCreate;

  pnlDurum.left := (width div 2) - pnlDurum.width div 2;
  pnlDurum.Top := (Height div 2) - pnlDurum.Height div 2;

  case Tag of
   TagfrmMedulaFatura,TagfrmTakipKontrol  : begin
      KurumTipTopPanel.Conn := datalar.ADOConnection2;
      KurumTipTopPanel.TableName := 'Kurumlar_TNM';
      KurumTipTopPanel.DisplayField := 'Tanimi';
      KurumTipTopPanel.ValueField := 'KurumKod';
      KurumTipTopPanel.Filter := ' KurumTip = 1';
   end;

   TagfrmKurumFatura,TagfrmKurumFaturaHazirlik : begin
     KurumTipTopPanel.Conn := datalar.ADOConnection2;
     KurumTipTopPanel.TableName := 'Kurumlar_TNM';
     KurumTipTopPanel.DisplayField := 'Tanimi';
     KurumTipTopPanel.ValueField := 'KurumKod';
     KurumTipTopPanel.Filter := ' KurumTip = 98';

   end;


  end;


  if _pasifSebeb_ = '5'
  Then begin
      cxTab.Tabs[0].ImageIndex := 52;
   // Disabled(self,True);
    for i := 0 to self.ComponentCount - 1 do
     begin
       if (self.Components[i] is TPopupMenu)
       then begin
         PopupMenuEnabled(Self,TPopupMenu(self.Components[i]),False);
         try
           if TPopupMenu(self.Components[i]).Tag = 0
           then
             PopupMenuToToolBarEnabled(self,ToolBar1,TPopupMenu(self.Components[i]));
         except
         end;
       end;
     end;

  end
  else
  begin
     cxTab.Tabs[0].ImageIndex := -1;
  end;




  Result := True;
end;

function TGirisForm.IsClearControl(const aComponent: TComponent): Boolean;
begin
  Result :=
    (SameText (aComponent.ClassName, 'TcxTextEdit')) or
    (SameText (aComponent.ClassName, 'TcxMaskEdit')) or
    (SameText (aComponent.ClassName, 'TcxTextEditKadir')) or
    (SameText (aComponent.ClassName, 'TcxButtonEdit')) or
    (SameText (aComponent.ClassName, 'TcxButtonEditKadir')) or
    (SameText (aComponent.ClassName, 'TcxComboBox')) or
    (SameText (aComponent.ClassName, 'TcxMemo')) or
    (SameText (aComponent.ClassName, 'TcxImageComboBox')) or
    (SameText (aComponent.ClassName, 'TcxImageComboKadir')) or
    (SameText (aComponent.ClassName, 'TcxImage')) or
    (SameText (aComponent.ClassName, 'TcxCheckBox')) or
    (SameText (aComponent.ClassName, 'TcxCurrencyEdit')) or
    (SameText (aComponent.ClassName, 'TcxRadioGroup')) or
    (SameText (aComponent.ClassName, 'TcxDateEdit')) or
    (SameText (aComponent.ClassName, 'TcxDateEditKadir')) or
    (SameText (aComponent.ClassName, 'TcxCheckGroup'));
end;

function TGirisForm.IsDisableControl(const aComponent: TComponent): Boolean;
begin
  Result := IsEnableControl(aComponent);
end;

function TGirisForm.IsEnableControl(const aComponent: TComponent): Boolean;
begin
  Result :=
    (SameText (aComponent.ClassName, 'TcxTextEdit')) or
    (SameText (aComponent.ClassName, 'TcxMaskEdit')) or
    (SameText (aComponent.ClassName, 'TcxTextEditKadir')) or
    (SameText (aComponent.ClassName, 'TcxButtonEdit')) or
    (SameText (aComponent.ClassName, 'TcxButtonEditKadir')) or
    (SameText (aComponent.ClassName, 'TcxComboBox')) or
    (SameText (aComponent.ClassName, 'TcxMemo')) or
    (SameText (aComponent.ClassName, 'TcxImageComboBox')) or
    (SameText (aComponent.ClassName, 'TcxImageComboKadir')) or
    (SameText (aComponent.ClassName, 'TcxCheckBox')) or
    (SameText (aComponent.ClassName, 'TcxCurrencyEdit')) or
    (SameText (aComponent.ClassName, 'TcxDateEdit')) or
    (SameText (aComponent.ClassName, 'TcxDateEditKadir')) or
    (SameText (aComponent.ClassName, 'TcxCheckGroup')) or
    (SameText (aComponent.ClassName, 'TcxButton')) or
    (SameText (aComponent.ClassName, 'TcxGrid')) or
    (SameText (aComponent.ClassName, 'TcxGridKadir')) or
    (SameText (aComponent.ClassName, 'TcxButton')) or
    (SameText (aComponent.ClassName, 'TcxButtonKadir')) or
    (SameText (aComponent.ClassName, 'TcxImage')) or
    (SameText (aComponent.ClassName, 'TcxCheckGroupKadir'));
end;

function TGirisForm.IsGridPropertyControl(const aComponent: TComponent): Boolean;
begin
  Result :=
    (SameText (aComponent.ClassName, 'TcxTextEdit')) or
    (SameText (aComponent.ClassName, 'TcxButtonEdit')) or
    (SameText (aComponent.ClassName, 'TcxButtonEditKadir')) or
    (SameText (aComponent.ClassName, 'TcxComboBox')) or
    (SameText (aComponent.ClassName, 'TcxMemo')) or
    (SameText (aComponent.ClassName, 'TcxImageComboBox')) or
    (SameText (aComponent.ClassName, 'TcxImage')) or
    (SameText (aComponent.ClassName, 'TcxCheckBox')) or
    (SameText (aComponent.ClassName, 'TcxCurrencyEdit')) or
    (SameText (aComponent.ClassName, 'TcxRadioGroup')) or
    (SameText (aComponent.ClassName, 'TcxDateEdit'));
end;

function TGirisForm.IsInputZorunluControl(const aComponent: TComponent): Boolean;
var
 cl : string;
begin
  cl := aComponent.ClassName;
  Result :=
    (SameText (aComponent.ClassName, 'TcxTextEdit')) or
    (SameText (aComponent.ClassName, 'TcxMaskEdit')) or
    (SameText (aComponent.ClassName, 'TcxTextEditKadir')) or
    (SameText (aComponent.ClassName, 'TcxButtonEdit')) or
    (SameText (aComponent.ClassName, 'TcxButtonEditKadir')) or
    (SameText (aComponent.ClassName, 'TcxComboBox')) or
    (SameText (aComponent.ClassName, 'TcxMemo')) or
    (SameText (aComponent.ClassName, 'TcxImageComboBox')) or
    (SameText (aComponent.ClassName, 'TcxImageComboKadir')) or
    (SameText (aComponent.ClassName, 'TcxCheckBox')) or
    (SameText (aComponent.ClassName, 'TcxCurrencyEdit')) or
    (SameText (aComponent.ClassName, 'TcxDateEdit')) or
    (SameText (aComponent.ClassName, 'TcxDateEditKadir')) or
    (SameText (aComponent.ClassName, 'TcxCheckGroup')) or
    (SameText (aComponent.ClassName, 'TcxCheckGroupKadir'));
end;

function TGirisForm.IsLoadControl(const aComponent: TComponent): Boolean;
begin
  Result :=
    IsPostControl(aComponent) or
    (SameText (aComponent.ClassName, 'TcxRadioGroup')) or
    ((SameText (aComponent.ClassName, 'TcxLabel'))
       and (TcxLabel(aComponent).Tag = -200));
  //�� 20171215 g�r�nmeyen bile�enin doldurulmas�nda sak�nca yok, �irket kodu baz� yerlerde g�r�nmedi�i halde yaz�l�p okunmas� gerekiyor. istenmeyen bile�en i�in Tag atanabilir.
  //if TcxCustomEdit(self.Components[i]).Visible = false then Continue;
  Result := Result and (not SameText (TcxCustomEdit(aComponent).Name, 'txtSifreTekrar'));
  Result := Result and (TcxCustomEdit(aComponent).Tag <> -100);
  Result := Result and (TcxImage(aComponent).Tag <> -1);
end;

function TGirisForm.IsPostControl(const aComponent: TComponent): Boolean;
begin
  Result :=
    IsPostSQLControl(aComponent) or
    (SameText (aComponent.ClassName, 'TcxImage'));
  Result := Result and (not SameText (TcxCustomEdit(aComponent).Name, 'txtSifreTekrar'));
  Result := Result and (TcxCustomEdit(aComponent).Tag <> -100);
  Result := Result and (TcxImage(aComponent).Tag <> -1);
end;

function TGirisForm.IsPostSQLControl(const aComponent: TComponent): Boolean;
begin
  Result := IsInputZorunluControl(aComponent);
  Result := Result and (TcxCustomEdit(aComponent).Tag <> -100);
end;

procedure TGirisForm.DiyalizTedavi_UF_KontrolleriniFormaEkle(Grp : TdxLayoutGroup);
begin
 //   setDataStringBLabel(self,'lblBostatir2',Grp,'',1,'','');
    setDataStringBLabel(self,'kiloOrder',Grp,'',126,'Kilo Order', '', '', True, clRed, taCenter);
    setDataStringCurr(self,'girisKilo','Giri� Kilo',Grp,'',60,'#.#0',0);
    setDataStringCurr(self,'kilo','Kuru Kilo',Grp,'',60,'#.#0',0);
    setDataStringCurr(self,'CEKILECEKSIVI','�.S�v�',Grp,'',60,'0',0);
    setDataStringCurr(self,'OncekiCikisKilo','�.��k�� Kilo',Grp,'',60,'#.#0',0);
    setDataStringCurr(self,'aldigiKilo','Ald��� Kilo',Grp,'',60,'#.#0',0);
    setDataStringCurr(self,'verilecekSivi','Verilecek S�v�',Grp,'',60,'0',0);
    setDataStringCurr(self,'UF','UF',Grp,'',60,'0',0);
    setDataStringCurr(self,'cikisKilo','��k�� Kilo',Grp,'',60,'#.#0',0);

    TcxTextEdit(FindComponent('kilo')).Properties.ReadOnly := False;
    TcxTextEdit(FindComponent('OncekiCikisKilo')).Properties.ReadOnly := True;
    TcxTextEdit(FindComponent('CEKILECEKSIVI')).Properties.ReadOnly := True;
    TcxTextEdit(FindComponent('UF')).Properties.ReadOnly := True;
    TcxTextEdit(FindComponent('aldigiKilo')).Properties.ReadOnly := True;


    TcxTextEdit(FindComponent('girisKilo')).Properties.OnEditValueChanged := PropertiesEditValueChanged;
    TcxTextEdit(FindComponent('CEKILECEKSIVI')).Properties.OnEditValueChanged := PropertiesEditValueChanged;
    TcxTextEdit(FindComponent('aldigiKilo')).Properties.OnEditValueChanged := PropertiesEditValueChanged;
    TcxTextEdit(FindComponent('verilecekSivi')).Properties.OnEditValueChanged := PropertiesEditValueChanged;
    TcxTextEdit(FindComponent('UF')).Properties.OnEditValueChanged := PropertiesEditValueChanged;
    TcxTextEdit(FindComponent('cikisKilo')).Properties.OnEditValueChanged := PropertiesEditValueChanged;

end;


procedure TGirisForm.DiyalizTedaviControlleriniFormaEkle(Grp : TdxLayoutGroup ; Baslik : Boolean = True);
var
  D : TcxComboBox;
begin
  D := TcxComboBox.Create(self);
  try
    D.Properties.DropDownListStyle := lsFixedList;

    if baslik then
    setDataStringBLabel(self,'tedaviOrder',Grp,'',300,'Tedavi Order', '', '', True, clRed, taCenter);

    setDataStringIC(self,'DiyalizorCinsi','Diyaliz�r Cinsi',Grp,'',120,'Diyalizor_Cinsleri','Kod','Tanimi','',1);
    setDataStringIC(self,'DiyalizorTipi','Diyaliz�r Tipi',Grp,'',120,'Diyalizor_Tipleri','Kod','Tanimi','',1);

    setDataStringIC(self,'Diyalizor','Diyaliz�r',Grp,'',120,'Diyalizorler','Code','Name1','',1);

    setDataStringIC(self,'D','Diyalizat',Grp,'',120,'Diyaliz_Diyalizat','Kod','Tanimi','',1);
    setDataStringIC(self,'GIRISYOLU','Damar Giri�',Grp,'GY',120,'Diyaliz_DamarGiris','Kod','Tanimi','',1);

    if self.Tag = TagfrmHastaKart
    then begin
     setDataStringC(self,'LokalizasyonTip','Tip/Lokalizasyon',Grp,'lkl',60,'Sa�,Sol');
     setDataStringIC(self,'Lokalizasyon','',Grp,'lkl',150,'Diyaliz_Lokalizasyon','Kod','Tanimi','',1);
    end;

    if self.Tag = TagfrmPopup
    then
     setDataStringChk(self,'GIRISYOLU_ENF','',Grp,'GY',150,ctint,'Enfeksiyon');

    D.Name := 'txtYA';
    ComboDoldur3('select tanimi from Diyaliz_YA',D,0,-1);
    setDataStringC(self,'YA','Y�zey Alan',Grp,'',120,D.Properties.Items);

    D.Name := 'txtHipar';
    ComboDoldur3('select tanimi from Diyaliz_Heparin',D,0,-1);

    setDataStringC(self,'HEPARINTIP','Heparin Tip',Grp,'',120,'Standart,D���kMolek�l,Di�er');
    setDataStringC(self,'HEPARIN','Heparin / Uyg.',Grp,'Hep',50,D.Properties.Items);
    setDataString(self,'HEPARINUYG','',Grp,'Hep',60);

    D.name := 'txtAPH';
    ComboDoldur3('select tanimi from Diyaliz_APH',D,0,-1);
    setDataStringCurr(self,'Flow','Flow',Grp,'_isi_',50,'0',1);
    setDataStringC(self,'HCOOO','HCO3',Grp,'_isi_',50,'20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40');
    setDataStringCurr(self,'ISI','ISI',Grp,'_isi_',50,'0',1);
    setDataStringC(self,'APH','APH',Grp,'aphNa',50,D.Properties.Items);
    setDataStringC(self,'Na','Na',Grp,'aphNa',50,'135,136,137,138,139,140,141,142,143,144,145,146,147,148');

    D.name := 'txtIgne';
    ComboDoldur3('select tanimi from Diyaliz_Igne',D,0,-1);
    setDataStringC(self,'Igne','��ne A',Grp,'Ign',50,D.Properties.Items);
    setDataStringC(self,'IgneV','V ',Grp,'Ign',50,D.Properties.Items);


   // setDataStringCurr(self,'UF','UF',Grp,'_isi_',50,'0',1);

    TcxImageComboKadir(FindComponent('DiyalizorCinsi')).Properties.OnEditValueChanged := PropertiesEditValueChanged;
    TcxImageComboKadir(FindComponent('DiyalizorTipi')).Properties.OnEditValueChanged := PropertiesEditValueChanged;
    TcxImageComboKadir(FindComponent('D')).Properties.OnEditValueChanged := PropertiesEditValueChanged;
    TcxImageComboKadir(FindComponent('GIRISYOLU')).Properties.OnEditValueChanged := PropertiesEditValueChanged;
    TcxComboBox(FindComponent('YA')).Properties.OnEditValueChanged := PropertiesEditValueChanged;
    TcxComboBox(FindComponent('HEPARIN')).Properties.OnEditValueChanged := PropertiesEditValueChanged;
    TcxComboBox(FindComponent('HEPARINUYG')).Properties.OnEditValueChanged := PropertiesEditValueChanged;
    TcxComboBox(FindComponent('HEPARINTIP')).Properties.OnEditValueChanged := PropertiesEditValueChanged;
    TcxComboBox(FindComponent('HCOOO')).Properties.OnEditValueChanged := PropertiesEditValueChanged;
    TcxComboBox(FindComponent('APH')).Properties.OnEditValueChanged := PropertiesEditValueChanged;
    TcxComboBox(FindComponent('Na')).Properties.OnEditValueChanged := PropertiesEditValueChanged;
    TcxComboBox(FindComponent('Igne')).Properties.OnEditValueChanged := PropertiesEditValueChanged;
    TcxComboBox(FindComponent('IgneV')).Properties.OnEditValueChanged := PropertiesEditValueChanged;
    TcxComboBox(FindComponent('ISI')).Properties.OnEditValueChanged := PropertiesEditValueChanged;

  finally
    D.Free;
  end;
end;



procedure TGirisForm.DiyalizTedaviControlleriReadOnly(ReadOnly : Boolean = True);
begin
  try
    TcxImageComboBox(Self.FindComponent('DiyalizorCinsi')).Properties.ReadOnly := ReadOnly;
    TcxImageComboBox(Self.FindComponent('DiyalizorTipi')).Properties.ReadOnly := ReadOnly;
    TcxImageComboBox(Self.FindComponent('Diyalizor')).Properties.ReadOnly := ReadOnly;
    TcxImageComboBox(Self.FindComponent('D')).Properties.ReadOnly := ReadOnly;
    TcxImageComboBox(Self.FindComponent('GIRISYOLU')).Properties.ReadOnly := ReadOnly;
    TcxImageComboBox(Self.FindComponent('DiyalizorCinsi')).Properties.ReadOnly := ReadOnly;

    if Assigned(TcxCheckBox(Self.FindComponent('GIRISYOLU_ENF')))
    then
     TcxCheckBox(Self.FindComponent('GIRISYOLU_ENF')).Properties.ReadOnly := ReadOnly;

    TcxComboBox(Self.FindComponent('YA')).Properties.ReadOnly := ReadOnly;
    TcxComboBox(Self.FindComponent('HEPARINTIP')).Properties.ReadOnly := ReadOnly;
    TcxComboBox(Self.FindComponent('HEPARIN')).Properties.ReadOnly := ReadOnly;
    TcxComboBox(Self.FindComponent('HEPARINUYG')).Properties.ReadOnly := ReadOnly;
    TcxComboBox(Self.FindComponent('HCOOO')).Properties.ReadOnly := ReadOnly;
    TcxComboBox(Self.FindComponent('ISI')).Properties.ReadOnly := ReadOnly;
    TcxComboBox(Self.FindComponent('APH')).Properties.ReadOnly := ReadOnly;
    TcxComboBox(Self.FindComponent('Na')).Properties.ReadOnly := ReadOnly;
    TcxComboBox(Self.FindComponent('Igne')).Properties.ReadOnly := ReadOnly;
    TcxComboBox(Self.FindComponent('IgneV')).Properties.ReadOnly := ReadOnly;
  finally
  end;
end;


procedure TGirisForm.SetFormID(const Value : integer);
begin
  FformID := Value;
end;


procedure TGirisForm.SetHastaBilgileriniCaptionGoster(const Value : Boolean);
begin
  F_HastaBilgileriniCaptionGoster_ := Value;
  if F_HastaBilgileriniCaptionGoster_
  then begin
    Caption := _HastaAdSoyad_ + ' ' + _dosyaNO_ + ' ' + _gelisNO_ +' ' + _SeansTarihi_
  end;
end;


procedure TGirisForm.SetSaveKontrol(const value: Boolean);
begin
    F_SaveKontrol := value;
end;

function TGirisForm.GetFormID;
begin
  Result := FformID;
end;

procedure TGirisForm.ExceleGonder;
var
 i : integer;
begin
 for i := 0 to self.ComponentCount - 1 do
  begin
     if ((self.Components[i].ClassName = 'TcxGridKadir') or
         (self.Components[i].ClassName = 'TcxGrid'))
     then begin
        if TcxGridKadir(self.Components[i]).ExceleGonder = True
        Then begin
           DosyaKaydet.FileName := TcxGridKadir(self.Components[i]).ExcelFileName+'.XLS';
           if not DosyaKaydet.Execute then Exit;
           try
              ExportGridToExcel(DosyaKaydet.FileName,TcxGridKadir(self.Components[i]),False,True,True);
           except on e : Exception do
             begin
                ShowMessageSkin('Hata Olu�tu : ' + e.Message,'','','info');
                exit;
             end;
           end;
             ShowMessageSkin(DosyaKaydet.FileName + ' ',' Ba�ar� ile Kaydedildi','','info');
        end;
     end;
  end;
end;

procedure TGirisForm.SayfaCaption(s1,s2,s3,s4,s5 : string;ActivePage : integer = 0);
begin
   sayfa1.Caption := s1;
   sayfa2.Caption := s2;
   sayfa3.Caption := s3;
   sayfa4.Caption := s4;
   sayfa5.Caption := s5;
   if s1 = '' then sayfa1.TabVisible := false else sayfa1.TabVisible := True;
   if s2 = '' then sayfa2.TabVisible := false else sayfa2.TabVisible := True;
   if s3 = '' then sayfa3.TabVisible := false else sayfa3.TabVisible := True;
   if s4 = '' then sayfa4.TabVisible := false else sayfa4.TabVisible := True;
   if s5 = '' then sayfa5.TabVisible := false else sayfa5.TabVisible := True;
   Sayfalar.ActivePageIndex := ActivePage;
end;

procedure TGirisForm.SayfalarChange(Sender: TObject);
begin
  //
end;

procedure TGirisForm.SayfalarPageChanging(Sender: TObject; NewPage: TcxTabSheet;
  var AllowChange: Boolean);
begin
//
end;

procedure TGirisForm.PropertiesEditValueChanged(Sender: TObject);
begin
  cxPanelButtonEnabled(false,True,false);


end;

procedure TGirisForm.cxPanelButtonVisible(yeni,kaydet,sil : boolean ;  kapat : boolean = True);
begin
  cxYeni.Visible := yeni;
  cxKaydet.Visible := kaydet;
  cxIptal.Visible := sil;
  cxKapat.Visible := kapat;
end;

procedure TGirisForm.cxPanelButtonEnabled(yeni,kaydet,sil : boolean);
var
  i : integer;
  mi : TMenuItem;
begin
  cxYeni.Enabled := yeni;
  cxKaydet.Enabled := kaydet;
  cxIptal.Enabled := sil;

  for i := 0 to self.ComponentCount - 1 do
  begin
    if self.Components[i].ClassType = TToolButton
    then begin
       if TToolButton(self.Components[i]).Style = tbsDropDown
       then begin
          for mi in TToolButton(self.Components[i]).DropdownMenu.Items do
          begin
             if mi.Tag = cxYeni.Tag
             Then mi.Enabled := cxYeni.Enabled
             else
             if mi.Tag = cxKaydet.Tag
             Then mi.Enabled := cxKaydet.Enabled
             else
             if mi.Tag = cxIptal.Tag
             Then mi.Enabled := cxIptal.Enabled;
          end;
       end;

     if TToolButton(Components[i]).Tag = cxYeni.Tag
     Then TToolButton(Components[i]).Enabled := cxYeni.Enabled
     else
     if TToolButton(Components[i]).Tag = cxKaydet.Tag
     Then TToolButton(Components[i]).Enabled := cxKaydet.Enabled
     else
     if TToolButton(Components[i]).Tag = cxIptal.Tag
     Then TToolButton(Components[i]).Enabled := cxIptal.Enabled;
    end;
  end;


end;


procedure TGirisForm.newButonVisible(durum : boolean);
var
  i : integer;
begin
// forma eklenen butonlardan NewButtonVisible �zelli�i true olan butonun bulundu�u item g�r�n�r oluyor
  for i := 0 to self.ComponentCount - 1 do
  begin
   try
    if (self.Components[i].ClassName = 'TdxLayoutItem')
     then
       if
         TcxButtonKadir(TdxLayoutItem(self.Components[i]).Control).NewButtonVisible = True
          then
            TdxLayoutItem(self.Components[i]).Visible := durum;
   except
   end;
  end;
end;

procedure TGirisForm.indexKaydiBul(kod : string ; Fieldname : string = '' ; sirketKod : string = '');
var
 _oldvalue_ , SQL , WheresirketKod: string;
begin
// index alan ve bu alan�n de�erine sahip olan kay�t getiriliyor. ve sqlRun dataset edit yap�l�yor
// sqlRunLoad ile kay�t kontrollere yerle�tiriliyor.
// formun creat yada init inde tablename de�erini set etmeyi unutma
// kay�t yok ise append yap�l�yor.
    SQL := ifThen(sqlTip = sql_Select , selectSQLW,_spSQL_);

  // 19.12.2020 eklendi.
  // ButtonEditKadir sirketKod set edilmi�se kod de�eri ayn� olan sirket bazl� kay�t var demektir.
  //�rne�in id de�eri 1310 olan dokuman SKS_Dokumanlar tablosunda 000005 ve 000031 sirketleri i�in vard�r
  //kay�tlar� ay�ran �zellik sirketkodu oldu�unu belirtiyor.

  if sirketKod <> ''
  then
    WheresirketKod := ' and sirketKod = ' + QuotedStr(datalar.AktifSirket)
  else
    WheresirketKod := '';


  try
    if Fieldname = '' then Fieldname := indexFieldName;
    if kod <> ''
    then begin
     if sqlTip <> sql_Select
     then
       sqlRun.SQL.Text := Format(SQL,[kod]) + WheresirketKod
     else
       sqlRun.SQL.Text := Format(SQL,[tablename,Fieldname+'='+#39+kod+#39]) + WheresirketKod;
       sqlRun.Open;
       sql := Format(insertrecordViewLog,[QuotedStr(Fieldname),QuotedStr(kod),QuotedStr(tablename),QuotedStr(datalar.username)]);
       datalar.QueryExec(sql);
    end
    else begin
     sqlRun.SQL.Text := Format(SQL,[tablename,Fieldname+'='+#39+kod+#39]) + WheresirketKod;
     sqlRun.Open;
     sqlRunLoad;
     if (TcxButtonEditKadir(FindComponent(Fieldname)).indexField = True)
     Then begin
      // TcxButtonEditKadir(FindComponent(Fieldname)).Properties.ReadOnly := false;
       try ActiveControl := TcxButtonEditKadir(FindComponent(Fieldname));except end;
     end;
     exit;
    end;

    if (sqlRun.Eof) and (sqlTip = sql_Select)
    Then begin
         _SQLRUN_ := _SqlInsert_;
         sqlRun.Append;
         _oldvalue_ := TcxButtonEditKadir(FindComponent(Fieldname)).Text;
         sqlRunLoad;
         if (TcxButtonEditKadir(FindComponent(Fieldname)).indexField = True)
         Then
            TcxButtonEditKadir(FindComponent(Fieldname)).Text := _oldvalue_;
         newButonVisible(true);
    end
    Else begin
      cxPanelButtonEnabled(true,true,true);
      //�� 20180411 edit kutular� de�i�irken edit moduna ge�ir dedik, kaydedilmemi� bilgi uyar�s�n�n d�zg�n �al��mas� i�in...
      //sqlRun.Edit;
      _SQLRUN_ := _SqlUpdate_;
      sqlRunLoad;
    end;

  except on e : exception do
     begin
        ShowMessageSkin(e.Message,'','','info');
     end;
  end;

end;

procedure TGirisForm.Enabled;
var
  _say, x , i : integer;
  _Obje_ : TcxCustomEdit;
begin
  _say := self.ComponentCount - 1;
  cxTopPanel.Enabled := True;
   _FormDiseabled := True;
  for x := 0 to _say do
  begin
      _obje_ := TcxCustomEdit(self.Components[x]);
      if IsEnableControl(_obje_)
      Then begin

            if (SameText (_obje_.ClassName, 'TcxGrid')) or
               (SameText (_obje_.ClassName, 'TcxGridKadir'))
            then begin
              // TcxGridDBTableView(TcxGridKadir(_obje_).Levels[0].GridView).OptionsData.Editing := True;
               TControl(_obje_).Enabled := True;
               //for i := 0 to TcxGridDBTableView(TcxGridKadir(_obje_).Levels[0].GridView).ColumnCount - 1 do
               // begin
                // TcxGridDBTableView(TcxGridKadir(_obje_).Levels[0].GridView).Columns[i].Options.Editing := True;
                // TcxGridDBTableView(TcxGridKadir(_obje_).Levels[0].GridView).Navigator.Visible := False;
              //  end;
            end
            else

              TControl(_obje_).Enabled := True;
      end;


  end;
end;


procedure TGirisForm.Disabled(_form: TForm ; indexField : Boolean = True);
var
  _say, x , i : integer;
  _Obje_ : TcxCustomEdit;
begin
  _say := _form.ComponentCount - 1;
  //�� 20180413 hac� kadir'in 5 nisan'daki push'unda eklenmi�.
  //            firma, personel, kullan�c� kart� gibi ekranlarda [Yeni] men�s� se�ilemiyor diye geri kapatt�m
  //cxTopPanel.Enabled := false;
   _FormDiseabled := False;
  for x := 0 to _say do
  begin
   _obje_ := TcxCustomEdit(_form.Components[x]);
   if ((_obje_.ClassName = 'TcxButtonEditKadir') and
      (TcxButtonEditKadir(_obje_).indexField = True))
    Then begin
     TcxButtonEditKadir(_obje_).Enabled := True;
    end
    else begin
      if IsDisableControl (_obje_)
      Then begin
        if (SameText (_obje_.ClassName, 'TcxGrid')) or
           (SameText (_obje_.ClassName, 'TcxGridKadir'))
           and (_pasifSebeb_ = '5')
        then begin
        //   TcxGridDBTableView(TcxGridKadir(_obje_).Levels[0].GridView).Navigator.Visible := False;
        //   TcxGridDBTableView(TcxGridKadir(_obje_).Levels[0].GridView).OptionsData.Editing := False;
//           for i := 0 to TcxGridDBTableView(TcxGridKadir(_obje_).Levels[0].GridView).ColumnCount - 1 do
  //          begin
             //TcxGridDBTableView(TcxGridKadir(_obje_).Levels[0].GridView).Columns[i].Options.Editing := False;
             //TcxGridDBTableView(TcxGridKadir(_obje_).Levels[0].GridView).Navigator.Visible := False;
    //        end;
        end
        else
           TControl(_obje_).Enabled := False;

      end;
    end;

   if (_obje_.ClassName = 'TcxButtonEditKadir') then TcxButtonEditKadir(_obje_).Enabled := TcxButtonEditKadir(_obje_).indexField;

  end;



end;



procedure TGirisForm.Yukle;
var
  sql : string;
begin
 try
  sqlRun.Active := False;
  sqlRun.SQL.Text := Format(_SqlSelect_,[ifThen(_fields_='','*',_fields_),Tablename,indexFieldName]);
  sqlRun.Active := True;
  sql := Format(insertrecordViewLog,[QuotedStr(indexFieldName),QuotedStr(_fields_),QuotedStr(Tablename),QuotedStr(datalar.username)]);
  datalar.QueryExec(sql);
 except
 end;

end;


function TGirisForm.FormInputZorunluKontrol(form : Tform) : Boolean;
var
 i : integer;
 _Obje_ : TcxCustomEdit;
begin
  FormInputZorunluKontrol := False;
  for i := 0 to form.ComponentCount - 1 do
  begin
    if IsInputZorunluControl (form.Components [i])
    then Begin
        _obje_ := TcxCustomEdit(form.Components[i]);

        if (KontrolZorunlumu(TForm(form).Tag,_Obje_.Name))
           and ((TcxCustomEdit(_Obje_).EditingValue = Null) or (VarToStr(TcxCustomEdit(_Obje_).EditingValue) = ''))
        then begin
          ShowMessageSkin(TcxTextEditKadir(_obje_).Name,'Zorunlu Alan','','info');

          if form.Parent = nil then
           form.ActiveControl := TcxCustomEdit(_obje_)
          else
            TcxCustomEdit(_obje_).SetFocus;

          FormInputZorunluKontrol := True;
          Break;
          exit;
        end;
    End;
   End; // for end

end;

procedure TGirisForm.KontrolEditValueClear;
var
 i : integer;
 _Obje_ : TcxCustomEdit;
begin
  for i := 0 to self.ComponentCount - 1 do
  begin
    if IsClearControl (Components [i])
    then begin
      try
        _obje_ := TcxCustomEdit(self.Components[i]);
        _obje_.Clear;
      finally
      end;
    end;
  end;
end;

procedure TGirisForm.MaskEditPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
var
 Etiket : String;
begin
  if Error
  then begin
    Etiket := TdxLayoutGroup(FindComponent('dxLa' + TcxMaskEdit(Sender).Name)).Caption;
    ErrorText := Etiket + ' Hatal�';
    ShowMessageSkin(DisplayValue,ErrorText,'','info');
    TcxMaskEdit(Sender).SetFocus;
    Error := False;
  end;



end;

procedure TGirisForm.sqlRunLoad;
var
 i : integer;
 _Obje_ : TcxCustomEdit;

 SQL : TADOQuery;
 _Table_,_text_ ,_kolon1_: string;
 g : TGraphic;
begin
// sqlRun dataset nesnesindeki kay�t kntrollere yerle�tiriliyor.
// kontrollerin typelerine g�re yerle�tirme i�lemleri o nesnenin i�leyi�ine g�re d�zenleniyor.
// butoneditlerde index alan kontrol� yap�larak indexField true ise tabloda konumlanma yap�laca��
// false ise butonedit i�in se�im yap�lacag� belirleniyor. se�im yap�lan kod butonedite tan�m ise labele yerle�iyor


  for i := 0 to self.ComponentCount - 1 do
  begin
    _obje_ := TcxCustomEdit(self.Components[i]);

    if IsLoadControl(_obje_)//(components [i])
    then begin
     // _obje_ := TcxCustomEdit(self.Components[i]);
      try

       if (self.Components[i].ClassName = 'TcxCheckGroupKadir')
       then begin
         TcxCheckGroupKadir(_obje_).setItemStringCheck(vartostr(sqlRun.FieldByName(_Obje_.Name).AsVariant));
       end
       else
       if (self.Components[i].ClassName = 'TcxLabel') and
           (TcxLabel(self.Components[i]).Tag = -200)
       Then begin
         _obje_ := TcxLabel(self.Components[i]);
         if sqlRun.FieldByName(copy(_Obje_.Name,6,50)) is TStringField then
           TcxLabel(_obje_).Caption := sqlRun.FieldByName(copy(_Obje_.Name,6,50)).AsString
          else
           TcxLabel(_obje_).Caption := sqlRun.FieldByName(copy(_Obje_.Name,6,50)).AsVariant;
         Continue;
       end
       else

       if (self.Components[i].ClassName = 'TcxCurrencyEdit') and
          (sqlRun.FieldByName(_Obje_.Name).AsVariant = null)
       then
        _obje_.EditValue := 0
       else
       if (self.Components[i].ClassName = 'TcxComboBox') and
          (sqlRun.FieldByName(_Obje_.Name).AsVariant = null)
       then
         TcxComboBox(_obje_).ItemIndex := -1
       else
       if (self.Components[i].ClassName = 'TcxImageComboKadir') and
          (sqlRun.FieldByName(_Obje_.Name).AsString = '')
       then begin
         try TcxImageComboKadir(_obje_).Clear except end;
       end
       else
       begin
         try
         TcxImageComboKadir(_obje_).EditValue := sqlRun.FieldByName(_Obje_.Name).AsVariant;
         except on e : exception do
          begin
           //ShowMessageSkin(e.Message,'','','info');
          end;
         end;
       end;
       if (self.Components[i].ClassName = 'TcxImage')
       Then Begin
         g := TJpegimage.Create;
         try
           try
            if sqlRun.FieldByName(_Obje_.Name).AsVariant <> Null
            Then begin
              g.Assign(sqlRun.FieldByName(_Obje_.Name));
              TcxImage(self.Components[i]).Picture.Assign(g);
            end;
           except
           end;
         finally
           g.Free;
         end;
       End
       Else
       if (self.Components[i].ClassName = 'TcxDateEditKadir')
       Then Begin

          if (sqlRun.FieldByName(_Obje_.Name).AsString = '') or (sqlRun.FieldByName(_Obje_.Name).AsVariant = NULL)
          then _obje_.Clear
          else
          try
          TcxDateEdit(_obje_).Date := tarihyap(sqlRun.FieldByName(_Obje_.Name).AsVariant);except end;

       End
       Else
       if (self.Components[i].ClassName = 'TcxButtonEditKadir') and
          (TcxButtonEditKadir(self.Components[i]).indexField = True) and
          (sqlRun.State in [dsNewValue,dsInsert])
       Then begin
        TcxButtonEditKadir(self.Components[i]).Properties.ReadOnly := False;
        TcxButtonEditKadir(self.Components[i]).SetFocus;
       end
       else
       if (self.Components[i].ClassName = 'TcxButtonEditKadir') and
          (TcxButtonEditKadir(self.Components[i]).indexField = True) and
          (sqlRun.State = dsEdit)
       Then
        TcxButtonEditKadir(self.Components[i]).Properties.ReadOnly := True
       else
       //�� 20171215 yukar�daki continue'yi a�t�k. g�r�nmeyen bile�en i�in liste a� i�lemleri yapmaya ba�lad�, gerek yok.
       if (self.Components[i].ClassName = 'TcxButtonEditKadir')
         and (TcxButtonEditKadir(self.Components[i]).Visible)
         and (TcxButtonEditKadir(self.Components[i]).indexField = False) //and
       //   (sqlRun.State = dsEdit)
       then begin
          SQL := TADOQuery.Create(nil);
          try
            SQL.Connection := sqlRun.Connection;
            _Table_ := TcxButtonEditKadir(self.Components[i]).ListeAc.Table;
            _kolon1_ := TcxButtonEditKadir(self.Components[i]).ListeAc.Kolonlar[0];
            _text_ := TcxButtonEditKadir(self.Components[i]).Text;
            SQL.SQL.Text := Format(selectSQL,[_table_,
                                        _kolon1_ + '=' + #39+_text_+#39]);
            SQl.Open;
          //  TcxButtonEditKadir(self.Components[i]).tanimDeger := SQL.FieldByName(TcxButtonEditKadir(self.Components[i]).tanim).AsString;
            if TcxButtonEditKadir(self.Components[i]).tanim <> ''
            then
            TcxLabel(FindComponent('label'+TcxButtonEditKadir(self.Components[i]).Name)).Caption := SQL.FieldByName(TcxButtonEditKadir(self.Components[i]).tanim).AsString;
          finally
            SQL.Free;
          end;
       end;

        except on e : Exception do
         begin
          ShowMessage(_Obje_.Name,e.Message,'','info');
         end;
        end;


    end;
  end;



end;




procedure TGirisForm.cxButtonEditPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  list : ArrayListeSecimler;
  where,prm : string;
  i : integer;
begin
// buttonedit buton cliklendi�inde tabloda konumlan�lacak kay�t i�in list a��yor.Bu listen kay�t
//se�iliyor kod butonedite tan�m label kontrole yerle�iyor.
//indexField true ise konumlan�p kay�t kontrollere yerle�iyor

  if AButtonIndex > -1 then
  begin
     where := TcxButtonEditKadir(sender).ListeAc.Where;
     if length(TcxButtonEditKadir(sender).ListeAc.Where) > 0
     //pos('%s',TcxButtonEditKadir(sender).ListeAc.Where) > 0
     Then begin
       if (TcxButtonEditKadir(sender).whereColum <> Null) and
          Assigned(TcxButtonEditKadir(FindComponent(TcxButtonEditKadir(sender).whereColum)))
       Then
         prm := QuotedStr(TcxButtonEditKadir(FindComponent(TcxButtonEditKadir(sender).whereColum)).EditingText);

       TcxButtonEditKadir(sender).ListeAc.Where :=
       format(TcxButtonEditKadir(sender).ListeAc.Where,[prm]);

     end;

      list := TcxButtonEditKadir(sender).ListeAc.ListeGetir;
      datalar.ButtonEditSecimlist := list;
      if length(list) = 0 then begin
       // TcxButtonEditKadir(sender).ListeAc.Where := where;
       // TcxButtonEditKadir(sender).Text := '';
       // TcxButtonEditKadir(sender).tanimDeger := '';
       // TcxButtonEditKadir(sender).kolon3 := '';
       // TcxButtonEditKadir(sender).kolon4 := '';
      //  indexKaydiBul(varTostr(TcxCustomEdit(sender).EditingValue),TcxButtonEditKadir(sender).name);
        exit;
      end;
      TcxButtonEditKadir(sender).Text := list[0].kolon1;
      TcxButtonEditKadir(sender).tanimDeger := list[0].kolon2;
      TcxButtonEditKadir(sender).kolon3 := list[0].kolon3;
      TcxButtonEditKadir(sender).kolon4 := list[0].kolon4;


      TcxLabel(FindComponent('label'+TcxButtonEditKadir(sender).Name)).Caption := list[0].kolon2;

      if (TcxButtonEditKadir(sender).indexField = True)
      then begin
        indexKaydiBul(varTostr(TcxCustomEdit(sender).EditingValue),
                       TcxButtonEditKadir(sender).name,
                       TcxButtonEditKadir(sender).sirketKod
                       );
       // TcxButtonEditKadir(sender).Properties.ReadOnly := True;
      end;
      TcxButtonEditKadir(sender).ListeAc.Where := where;

  end
  else
     indexKaydiBul(varTostr(TcxCustomEdit(sender).EditingValue),
                   TcxButtonEditKadir(sender).name ,
                   TcxButtonEditKadir(sender).sirketKod
                   );


  if _pasifSebeb_ = '5'
  Then begin
    Disabled(self,True);
    for i := 0 to self.ComponentCount - 1 do
     begin
       if (self.Components[i] is TPopupMenu)
       then begin
         PopupMenuEnabled(Self,TPopupMenu(self.Components[i]),False);
         PopupMenuToToolBarEnabled(self,ToolBar1,TPopupMenu(self.Components[i]));
       end;
     end;

  end;

end;

procedure TGirisForm.cGridcxButtonEditPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  list : ArrayListeSecimler;
begin
 // TcxButtonEditKadir(TcxGridDBColumn(sender).Properties).ListeAc.Table := 'PersonelKart';

  list := TcxButtonEditKadir(TcxGridDBColumn(sender).Properties).ListeAc.ListeGetir;
  Datalar.ButtonEditSecimlist := List;
end;



procedure TGirisForm.CustomEditClear;
var
 _obje_ : TComponent;
 i : integer;
 name : string;
begin
     for i := 0 to self.ComponentCount - 1 do
     begin
        _obje_ := self.Components[i];
         if (_obje_ is TcxCustomEdit)
           then
             if TcxCustomEdit(_obje_).Visible
             then begin
               name := TcxCustomEdit(_obje_).Name;
               TcxCustomEdit(_obje_).Clear;
             end;
     end;
end;

procedure TGirisForm.cxButtonKadir1Click(Sender: TObject);
var
 i : integer;
 colon : TcxGridDBColumn;
begin

  sayfalar.ActivePage := sayfa2;
  sqlRun.Close;
  sqlRun.SQL.Text := Format(selectSQLAll,[tablename]);
  sqlRun.Open;
  cxGridGirisrisTableView.ClearItems;
  for i := 0 to self.ComponentCount - 1 do
  begin
    colon := nil;
    if IsGridPropertyControl(Components [i])
    then begin
      colon := (cxGridGirisrisTableView as TcxGridDBTableView).CreateColumn;
      colon.DataBinding.FieldName := self.Components[i].Name;
      colon.Name := 'Column'+self.Components[i].Name;
      try colon.Width := TcxTextEdit(self.Components[i]).Width; except colon.Width := 50 end;
      try colon.Caption := self.Components[i].Name except colon.Caption := '' end;
    end;


    if (self.Components[i].ClassName = 'TcxTextEdit')
    Then begin
      TcxGridDBColumn(colon).PropertiesClass:= TcxTextEditProperties;
    end
    else
    if (self.Components[i].ClassName = 'TcxButtonEditKadir')
    then begin
      TcxGridDBColumn(colon).PropertiesClass := TcxButtonEditProperties;
      TcxButtonEditKadir(TcxGridDBColumn(colon).Properties).ListeAc := TcxButtonEditKadir(self.Components[i]).ListeAc;
      TcxGridDBColumn(colon).Properties.OnButtonClick := cGridcxButtonEditPropertiesButtonClick;
    end;
     (*
      (self.Components[i].ClassName = 'TcxButtonEdit') or
      (self.Components[i].ClassName = 'TcxButtonEditKadir') or
      (self.Components[i].ClassName = 'TcxComboBox') or
      (self.Components[i].ClassName = 'TcxMemo') or
      (self.Components[i].ClassName = 'TcxImageComboBox') or
      (self.Components[i].ClassName = 'TcxImage') or
      (self.Components[i].ClassName = 'TcxCheckBox') or
      (self.Components[i].ClassName = 'TcxCurrencyEdit')
        *)

  end;
end;

procedure TGirisForm.PropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  //
end;

procedure TGirisForm.cxEditEnter(Sender: TObject);
begin
// kontrole girildi�inde rekn sar� yap�l�yor.
  oldRenk := TcxCustomEdit(sender).Style.Color;
  TcxCustomEdit(sender).Style.Color := clYellow;
  TcxCustomEdit(sender).Style.Font.Style := TcxCustomEdit(sender).Style.Font.Style + [fsBold];
  try
   if Assigned(FindComponent('dxLa'+TcxCustomEdit(sender).Name))
   then
    TdxLayoutItem(FindComponent('dxLa'+TcxCustomEdit(sender).name)).LayoutLookAndFeel := dxLayoutSkinLookAndFeel2;
  except
  end;
end;

procedure TGirisForm.cxEditExit(Sender: TObject);
var
 firma : string;
begin
// kontrolden ��k�ld���ndan beyaz yap�l�yor
  TcxCustomEdit(sender).Style.Color := oldRenk;
  TcxCustomEdit(sender).Style.Font.Style := TcxCustomEdit(sender).Style.Font.Style - [fsBold];
  try
   if Assigned(FindComponent('dxLa'+TcxCustomEdit(sender).Name))
   then
   TdxLayoutItem(FindComponent('dxLa'+TcxCustomEdit(sender).name)).LayoutLookAndFeel := dxLayoutSkinLookAndFeel1;
  except
  end;

 // if (TcxTextEditKadir(sender).BosOlamaz = True) and
 (*
   if (KontrolZorunlumu(TGirisForm(Self).Tag,TcxTextEditKadir(sender).Name) = True) and
     ((TcxTextEditKadir(sender).EditingValue = Null) or (TcxTextEditKadir(sender).EditingValue = ''))
  then begin
    ShowMessageSkin(TcxTextEditKadir(sender).Name,'Zorunlu Alan','','info');
    TcxTextEditKadir(sender).SetFocus;
    exit;
  end;
   *)

// form hastakart� ve textkontrol tc ise bu tc kontrol ediliyor sistemde kay�tl� ise uyar�
  if (TcxCustomEdit(sender).Name = 'TCKIMLIKNO') and
     (TGirisForm(Self).Name = 'frmPersonelKart') and
     (sqlRun.State = dsInsert)
  then begin
    if TCKontrol(vartoStr(TcxTextEditKadir(sender).EditingValue)) = True
    Then begin
       if TCtoDosyaNo(vartoStr(TcxTextEditKadir(sender).EditingValue),firma) <> ''
       Then begin
          if mrYes <> ShowMessageSkin('TC ' + firma + ' Firmas�nda Mevcut','Devam Edilsin mi','','msg')
          then begin
           TcxTextEditKadir(sender).SetFocus;
           TcxTextEditKadir(sender).EditValue := '';
          end;
       end;
    end
    else
    begin
          ShowMessageSkin('Tc Hatal�','','','info');
        //  TcxTextEditKadir(sender).SetFocus;
    end;
  end;

  if IsPostControl (TComponent (Sender))
    and TcxTextEditKadir(sender).EditModified
    and (sqlRun.State = dsBrowse) then
  begin
    sqlRun.Edit;
  end;

end;

procedure TGirisForm.cxTextEditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
// kontrolde enter tu�lan�rsa ir sonraki kontrole ge�iliyor
// memo kontrol ise bir alt sat�r iniliyor
 (*
  if (key = 13) and
     (TcxTextEditKadir(sender).Name = 'TCKIMLIKNO') and
     (TGirisForm(Self).Name = 'frmHastaKart')
  then begin
    indexKaydiBul(TcxTextEditKadir(sender).EditingValue,'TCKIMLIKNO');
  end;
   *)


  if (Key = 13) and (TComponent(sender).ClassParent.ClassName <> 'TcxCustomMemo')
  then begin
         TWinControlAccess(GetParentForm(Self)).SelectNext(GetParentForm(Self).ActiveControl,
            not(ssShift in Shift), True);
  end
  else begin
  //  if sqlRun.State <> dsNewValue then sqlRun.Edit;
  end;

end;


procedure TGirisForm.cxTextEditBKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
   key_ : word;
   shift_ :TShiftState;
   tus : TShortCut;
   c : string;
begin
// butonedit kontolde enter tu�lanm�� ve bu kntrolun indexfield true ise konumlanma yap�l�yor
// kay�t bulunmu�sa dataset editlniyor kay�t kontrollere yerle�tiriliyor
// bir sonraki kontoler ge�iliyor
// eger kontrollde tan�nl� k�sa yol tu�u varsa liste �ma i�lemi i�in k�sa yol liste a��l�yor

  if (Key = 13) //and ((TcxCustomEdit(Sender).ClassName <> 'TcxImageComBoBox') or (TcxCustomEdit(Sender).ClassName <> 'TcxImageComBoKadir'))
  then begin
      try
        if (TcxButtonEditKadir(sender).indexField = True)
        then begin
          indexKaydiBul(TcxCustomEdit(sender).EditingValue,TcxButtonEditKadir(sender).name);
        end;
         TWinControlAccess(GetParentForm(Self)).SelectNext(GetParentForm(Self).ActiveControl,
           not(ssShift in Shift), True);
      except
      end;
  end
  else begin
   // if sqlRun.State <> dsNewValue then sqlRun.Edit;
  end;


  if TcxButtonEditKadir(sender).ListeAcTus  = 0
  Then
   tus := menus.TextToShortCut('Ctrl+F1')
  else
    tus := TcxButtonEditKadir(sender).ListeAcTus;

  menus.ShortCutToKey(Tus,key_,shift_);

  if (key = key_) and (shift = shift_) then
    cxButtonEditPropertiesButtonClick(sender,0);
end;



procedure TGirisForm.addButton(sender : Tform;cxButton : TcxButtonKadir; Name ,
                              captionItem,captionButton: string; parent : TdxLayoutGroup;
                              grup : string;uzunluk : integer;
                              Event : TNotifyEvent = nil;Tag : integer = 0;yukseklik : integer = 21);
var
//  cxButton : TcxButton;
  dxLa : TdxLayoutItem;
  dxLaG : TdxLayoutGroup;
begin
  if cxButton = nil
  then cxButton := TcxButtonKadir.Create(sender);
  cxButton.Parent := sender;

 // cxButton.Visible := True;
 // cxButton.Name := Name;
 // cxButton.Tag := 0;

  cxButton.ButtonName := Name;
  cxButton.Caption := captionButton;
  cxButton.Tag := Tag;
  cxButton.Width := uzunluk;
  dxLa := TdxLayoutGroup(parent).CreateItemForControl(cxButton);
  dxLa.Name := 'dxLaB'+Name;
  dxLa.AlignHorz := ahLeft;
  dxLa.Width := uzunluk;//TdxLayoutGroup(parent).Width;
  dxLa.Height := yukseklik;
  dxLa.Caption := captionItem;
  dxLa.Visible := not cxButton.NewButtonVisible;


  if grup = '' then
    dxLa.Parent := parent
    else begin
        if Self.FindComponent(grup) = nil
        then begin
         dxLaG := TdxLayoutGroup.Create(self);
         dxLaG.Name := grup;
         dxLaG.LayoutDirection := ldHorizontal;
         dxLaG.AlignHorz := ahLeft;
         dxLaG.Parent := parent;
         dxLag.ShowBorder := false;
         dxLaG.Width := uzunluk;
        // dxLaG.Caption := captionItem;
        end ;

      dxLa.Parent := TdxLayoutGroup(Self.findcomponent(grup));
      TdxLayoutGroup(Self.findcomponent(grup)).Width := uzunluk;//TdxLayoutGroup(parent).Width;
 //     SpaceItem.Parent := TdxLayoutGroup(findcomponent(grup));
    end;
  cxButton.OnClick := Event;
end;



procedure TGirisForm.setDataImage(sender : Tform; Name ,captionItem : string; parent : TdxLayoutGroup; grup : string;uzunluk,yukseklik : integer);
var
  cxImage : TcxImage;
  dxLa : TdxLayoutItem;
  dxLaG : TdxLayoutGroup;
begin
  cxImage := TcxImage (Sender.FindComponent (Name));
  if not Assigned (cxImage) then
  begin
    cxImage := TcxImage.Create(self);
    cxImage.Name := Name;
    cxImage.Properties.GraphicClassName := 'TJPEGImage';
    cxImage.Properties.Stretch := True;
  end;
  dxLa := TdxLayoutGroup(parent).CreateItemForControl(cxImage);
  dxLa.Name := 'dxLaB'+Name;
  dxLa.AlignHorz := ahLeft;
  dxLa.Width := uzunluk;
  dxLa.Height := yukseklik;
  dxLa.Caption := captionItem;

  if grup = '' then
    dxLa.Parent := parent
    else begin
        if Self.FindComponent(grup) = nil
        then begin
         dxLaG := TdxLayoutGroup.Create(self);
         dxLaG.Name := grup;
         dxLaG.LayoutDirection := ldHorizontal;
         dxLaG.Parent := parent;
         dxLag.ShowBorder := false;
        end ;

      dxLa.Parent := TdxLayoutGroup(Self.findcomponent(grup));
 //     SpaceItem.Parent := TdxLayoutGroup(findcomponent(grup));
    end;

//  cxButton.OnClick := cxButtonCClick;
end;


procedure TGirisForm.setDataStringMemo(sender : Tform ; fieldName ,caption: string; parent : TdxLayoutGroup; grup : string;uzunluk,yukseklik : integer);
var
  cxEdit : TcxMemo;
  dxLa : TdxLayoutItem;
  dxLaG : TdxLayoutGroup;
begin
  cxEdit := TcxMemo.Create(self);
  cxEdit.Name := fieldName;
  cxEdit.Text := '';
  cxEdit.Properties.ScrollBars := ssVertical;
  dxLa := TdxLayoutGroup(parent).CreateItemForControl(cxEdit);
  dxLa.Name := 'dxLa'+fieldName;
  dxLa.AlignHorz := ahLeft;
  cxEdit.Width := uzunluk;
 // dxLa.Width := uzunluk;
  dxLa.Height := yukseklik;
  dxLa.Caption := caption;
//  SpaceItem := TdxLayoutEmptySpaceItem.Create(self);
 // SpaceItem.Name := 'dxSp'+fieldName;
 // SpaceItem.Width := TdxLayoutGroup(parent).Width - (50 + uzunluk);
  if grup = '' then
    dxLa.Parent := parent
    else begin
        if Self.FindComponent(grup) = nil
        then begin
         dxLaG := TdxLayoutGroup.Create(self);
         dxLaG.Name := grup;
         dxLaG.LayoutDirection := ldHorizontal;
         dxLaG.Parent := parent;
         dxLag.ShowBorder := false;
        end ;

      dxLa.Parent := TdxLayoutGroup(Self.findcomponent(grup));
 //     SpaceItem.Parent := TdxLayoutGroup(findcomponent(grup));
    end;

  cxEdit.Style.Color := clWhite;
  cxEdit.OnEnter := cxEditEnter;
  cxEdit.OnExit := cxEditExit;
  cxEdit.OnKeyDown := cxTextEditKeyDown;
  cxEdit.Properties.OnEditValueChanged := PropertiesEditValueChanged;
end;



procedure TGirisForm.setDataString(sender: Tform; fieldName, caption: string;
  parent: TdxLayoutGroup; grup: string; uzunluk: integer; Zorunlu: Boolean;
  ObjectName: String; ReadOnly: Boolean; _Tag_: integer; DefaultText: string;
  EditCharCase: TEditCharCase; EditMask: string; KarakterTip: TKarakterTip);
var
  cxEdit : TcxTextEditKadir;
  cxEditMask : TcxMaskEdit;
  dxLa : TdxLayoutItem;
  dxLaG : TdxLayoutGroup;
  control : TControl;
begin
   if EditMask = ''
   then begin
        cxEdit := TcxTextEditKadir.Create(self);

        cxEdit.Name := ifthen (Trim(ObjectName) = '', fieldName, Trim (ObjectName));
        cxEdit.Text := DefaultText;
        cxEdit.Tag := _Tag_;
        cxEdit.Properties.ReadOnly := ReadOnly;
        cxEdit.Properties.ValidateOnEnter := True;
        cxEdit.Properties.CharCase := EditCharCase;
        cxEdit.Properties.ImmediatePost := True;
        cxEdit.BosOlamaz := Zorunlu;//KontrolZorunlumu(TForm(sender).Tag,fieldName); //Zorunlu;
        cxEdit.Width := uzunluk;
        cxEdit.KarakterTip := KarakterTip;
        control := cxEdit;
   end
   else
   begin
        cxEditMask := TcxMaskEdit.Create(self);

        cxEditMask.Name := ifthen (Trim(ObjectName) = '', fieldName, Trim (ObjectName));
        cxEditMask.Text := DefaultText;
        cxEditMask.Tag := _Tag_;
        cxEditMask.Properties.ReadOnly := ReadOnly;

        cxEditMask.Properties.ValidateOnEnter := False;
        cxEditMask.Properties.CharCase := EditCharCase;
      // cxEditMask.BosOlamaz := Zorunlu;//KontrolZorunlumu(TForm(sender).Tag,fieldName); //Zorunlu;
        cxEditMask.Width := uzunluk;
        cxEditMask.Properties.EditMask := EditMask;
        cxEditMask.Properties.OnValidate := MaskEditPropertiesValidate;
        control := cxEditMask;
   end;



  dxLa := TdxLayoutGroup(parent).CreateItemForControl(control);

  //  dxLa.ControlOptions.ShowBorder := true;
  dxLa.Name := 'dxLa'+fieldName;
  dxLa.AlignHorz := ahLeft;
 // dxLa.Width := uzunluk;
  dxLa.Caption := caption;
//  SpaceItem := TdxLayoutEmptySpaceItem.Create(self);
 // SpaceItem.Name := 'dxSp'+fieldName;
 // SpaceItem.Width := TdxLayoutGroup(parent).Width - (50 + uzunluk);
  if grup = '' then
    dxLa.Parent := parent
    else begin
        if Self.FindComponent(grup) = nil
        then begin
         dxLaG := TdxLayoutGroup.Create(self);
         dxLaG.Name := grup;
         dxLaG.LayoutDirection := ldHorizontal;
         dxLaG.Parent := parent;
         dxLag.ShowBorder := false;
        end ;

      dxLa.Parent := TdxLayoutGroup(Self.findcomponent(grup));
 //     SpaceItem.Parent := TdxLayoutGroup(findcomponent(grup));
    end;


  TcxTextEdit(control).Style.Color := clWhite;
  TcxTextEdit(control).OnEnter := cxEditEnter;
  TcxTextEdit(control).OnExit := cxEditExit;
  TcxTextEdit(control).OnKeyDown := cxTextEditKeyDown;
  TcxTextEdit(control).Properties.OnEditValueChanged := PropertiesEditValueChanged;
end;
procedure TGirisForm.setDataStringB(sender : Tform; fieldName,caption : string;
     parent : TdxLayoutGroup;grup : string ;uzunluk :integer; Prms : TListeAc;indexField : Boolean;
     obje:TcxButtonEditKadir;tanimi : string='tanimi';whereColumObjeName : string = '';
     Zorunlu : Boolean = false;ReadOnly : Boolean = False;_Tag_ : integer = 0);
var
  cxEditB : TcxButtonEditKadir;
  dxLaB : TdxLayoutItem;
  dxLaGB : TdxLayoutGroup;
begin
 (*
  if indexField then
    if TableName = '' then
    begin
      ShowMessage('indexField parametresi True set edildi�inde', 'TableName parametresi Bo� Olamaz','','info');
      exit;
    end; *)

  if obje = nil
  then
    cxEditB := TcxButtonEditKadir.Create(self)
  else
    cxEditB := obje;


  cxEditB.Name := fieldName;
  cxEditB.Text := '';
  cxEditB.indexField := indexField;
  cxEditB.tanim := tanimi;
  cxEditB.Tag := _Tag_;
  cxEditB.BosOlamaz := Zorunlu;//KontrolZorunlumu(TForm(sender).Tag,fieldName);//Zorunlu;
  cxEditB.Properties.ReadOnly := ReadOnly;
  cxEditB.whereColum := whereColumObjeName;
  cxEditB.Properties.ClickKey := menus.TextToShortCut('Shift+F1');
  dxLaB := TdxLayoutGroup(parent).CreateItemForControl(cxEditB);
  dxLaB.Name := 'dxLa'+fieldName;
  dxLaB.AlignHorz := ahLeft;
  cxEditB.Width := uzunluk;
 // dxLaB.Width := uzunluk;
  dxLaB.Caption := caption;
  cxEditB.ListeAc := Prms;

  if grup = '' then
    dxLaB.Parent := parent
    else begin
        if Self.FindComponent(grup) = nil
        then begin
         dxLaGB := TdxLayoutGroup.Create(self);
         dxLaGB.Name := grup;
         dxLaGB.LayoutDirection := ldHorizontal;
         dxLaGB.Parent := parent;
         dxLagB.ShowBorder := false;
        end;

      dxLaB.Parent := TdxLayoutGroup(Self.findcomponent(grup));
    end;

  cxEditB.Style.Color := clWhite;

  if obje = nil then
  begin
   cxEditB.OnEnter := cxEditEnter;
   cxEditB.OnExit := cxEditExit;
   cxEditB.OnKeyDown := cxTextEditBKeyDown;
   cxEditB.Properties.OnButtonClick := cxButtonEditPropertiesButtonClick;
   cxEditB.Properties.OnEditValueChanged := PropertiesEditValueChanged;
  end
  else
   cxEditB.Properties.OnEditValueChanged := PropertiesEditValueChanged;
end;



procedure TGirisForm.setDataStringBLabel(sender : Tform ; Name : string;
     parent : TdxLayoutGroup;grup : string;uzunluk : integer;caption : string = '';parentCaption : string = '';fieldName : string = '';
     pBoldText: Boolean = True;
     pTextColor: TColor = clRed;
     pHorzAlignment: TcxEditHorzAlignment = taLeftJustify;
     yukseklik : integer = 21);
var
  cxLabel : TcxLabel;
  dxLaB : TdxLayoutItem;
  dxLaGB : TdxLayoutGroup;
begin
  cxLabel := TcxLabel.Create(self);
  cxLabel.Name := 'Label'+ Name;
  if FieldName <> '' then begin
   cxLabel.Tag := -200;
  end;
  cxLabel.Caption := caption;
  cxLabel.Transparent := true;
  cxLabel.AutoSize := false;
  cxLabel.Height := yukseklik;
  if pBoldText then
    cxLabel.Style.Font.Style := cxLabel.Style.Font.Style + [fsBold]
   else
    cxLabel.Style.Font.Style := cxLabel.Style.Font.Style - [fsBold];
  cxLabel.Style.TextColor := pTextColor;
  cxLabel.Properties.Alignment.Horz := pHorzAlignment;
  cxLabel.Style.BorderStyle := ebsFlat;
  dxLaB := TdxLayoutGroup(parent).CreateItemForControl(cxLabel);
  dxLaB.Name := 'dxLaC'+Name;
  dxLaB.AlignHorz := ahLeft;
  dxLaB.Width := uzunluk;
  dxLaB.Caption := parentCaption;
  if cxLabel.Caption = ''
  then
   dxLaB.ControlOptions.ShowBorder := false
  else
   dxLaB.ControlOptions.ShowBorder := true;

  if grup = '' then
    dxLaB.Parent := parent
    else begin
        if Self.FindComponent(grup) = nil
        then begin
         dxLaGB := TdxLayoutGroup.Create(self);
         dxLaGB.Name := grup;
         dxLaGB.LayoutDirection := ldHorizontal;
         dxLaGB.Parent := parent;
         dxLagB.ShowBorder := false;
        end;

      dxLaB.Parent := TdxLayoutGroup(Self.findcomponent(grup));
    end;

end;



procedure TGirisForm.setDataStringIC(sender : Tform ; fieldName,caption : string;
     parent : TdxLayoutGroup;grup : string ;uzunluk : integer;TableName,valueField,DescField : string ; filter : string = '';tag : integer = -1;itemList : string = '');
var
  cxEditC : TcxImageComboKadir;
  dxLaC : TdxLayoutItem;
  dxLaGC : TdxLayoutGroup;
begin
  cxEditC := TcxImageComboKadir.Create(self);
  cxEditC.Name := fieldName;
  if itemList = ''
  then begin
   cxEditC.Conn := datalar.ADOConnection2;
   cxEditC.TableName := TableName;
   cxEditC.ValueField := valueField;
   cxEditC.DisplayField := DescField;
  end
  else
  begin
    cxEditC.Conn := nil;
    cxEditC.ItemList := itemList;
  end;

  cxEditC.Filter := filter;
  cxEditC.Tag := tag;
  cxEditC.Properties.DropDownListStyle := lsFixedList;
  dxLaC := TdxLayoutGroup(parent).CreateItemForControl(cxEditC);
  dxLaC.Name := 'dxLa'+fieldName;
  dxLaC.AlignHorz := ahLeft;
  cxEDitC.Width := uzunluk;
//  dxLaC.Width := uzunluk;
  dxLaC.Caption := caption;

  if grup = '' then
    dxLaC.Parent := parent
    else begin
        if Self.FindComponent(grup) = nil
        then begin
         dxLaGC := TdxLayoutGroup.Create(self);
         dxLaGC.Name := grup;
         dxLaGC.LayoutDirection := ldHorizontal;
         dxLaGC.Parent := parent;
         dxLagC.ShowBorder := false;
        end;

      dxLaC.Parent := TdxLayoutGroup(Self.findcomponent(grup));
    end;
  cxEditC.Style.Color := clWhite;
  cxEditC.OnEnter := cxEditEnter;
  cxEditC.OnExit := cxEditExit;
  cxEditC.OnKeyDown := cxTextEditBKeyDown;
  cxEditC.Properties.OnEditValueChanged := PropertiesEditValueChanged;
  cxEditC.Properties.ImmediatePost := True;
  cxEditC.Properties.ImmediateUpdateText := True;
end;



procedure TGirisForm.setDataStringC(sender : Tform ; fieldName,caption : string;
     parent : TdxLayoutGroup;grup : string ;uzunluk : integer;List : Tstrings);
var
  cxEditC : TcxComboBox;
  dxLaC : TdxLayoutItem;
  dxLaGC : TdxLayoutGroup;
begin
  cxEditC := TcxComboBox.Create(self);
  cxEditC.Name := fieldName;
  cxEditC.Text := '';
  cxEditC.Properties.Items := List;
  cxEditC.Properties.DropDownListStyle := lsFixedList;
  dxLaC := TdxLayoutGroup(parent).CreateItemForControl(cxEditC);
  dxLaC.Name := 'dxLa'+fieldName;
  dxLaC.AlignHorz := ahLeft;
  cxEDitC.Width := uzunluk;
//  dxLaC.Width := uzunluk;
  dxLaC.Caption := caption;

  if grup = '' then
    dxLaC.Parent := parent
    else begin
        if Self.FindComponent(grup) = nil
        then begin
         dxLaGC := TdxLayoutGroup.Create(self);
         dxLaGC.Name := grup;
         dxLaGC.LayoutDirection := ldHorizontal;
         dxLaGC.Parent := parent;
         dxLagC.ShowBorder := false;
        end;

      dxLaC.Parent := TdxLayoutGroup(Self.findcomponent(grup));
    end;
  cxEditC.Style.Color := clWhite;
  cxEditC.OnEnter := cxEditEnter;
  cxEditC.OnExit := cxEditExit;
  cxEditC.OnKeyDown := cxTextEditBKeyDown;
  cxEditC.Properties.ImmediatePost := True;
  cxEditC.Properties.ImmediateUpdateText := True;
  cxEditC.Properties.ClearKey := VK_DELETE;

end;

procedure TGirisForm.setDataStringC(sender : Tform ; fieldName,caption : string;
     parent : TdxLayoutGroup;grup : string ;uzunluk : integer;TableName,Field,where : string);
var
  cxEditC : TcxComboBox;
  dxLaC : TdxLayoutItem;
  dxLaGC : TdxLayoutGroup;
  ado : TADOQuery;
begin
  ado := datalar.QuerySelect('select ' + Field + ' from ' + TableName + ' ' + where);
  try
    cxEditC := TcxComboBox.Create(self);
    cxEditC.Name := fieldName;
    cxEditC.Text := '';
    cxEditC.Properties.Items.Clear;
    while not ado.Eof do
      begin
        cxEditC.Properties.Items.Add(ado.FieldByName(Field).AsString);
        ado.next;
      end;
  finally
    ado.Free;
  end;


  cxEditC.Properties.DropDownListStyle := lsFixedList;
  dxLaC := TdxLayoutGroup(parent).CreateItemForControl(cxEditC);
  dxLaC.Name := 'dxLa'+fieldName;
  dxLaC.AlignHorz := ahLeft;
  cxEDitC.Width := uzunluk;
 // dxLaC.Width := uzunluk;
  dxLaC.Caption := caption;

  if grup = '' then
    dxLaC.Parent := parent
    else begin
        if Self.FindComponent(grup) = nil
        then begin
         dxLaGC := TdxLayoutGroup.Create(self);
         dxLaGC.Name := grup;
         dxLaGC.LayoutDirection := ldHorizontal;
         dxLaGC.Parent := parent;
         dxLagC.ShowBorder := false;
        end;
      dxLaC.Parent := TdxLayoutGroup(Self.findcomponent(grup));
    end;
  cxEditC.Style.Color := clWhite;
  cxEditC.OnEnter := cxEditEnter;
  cxEditC.OnExit := cxEditExit;
  cxEditC.OnKeyDown := cxTextEditBKeyDown;
  cxEditC.Properties.OnEditValueChanged := PropertiesEditValueChanged;

end;



procedure TGirisForm.setDataStringC(sender : Tform ; fieldName,caption : string;
     parent : TdxLayoutGroup;grup : string ;uzunluk : integer;List : string);
var
  cxEditC : TcxComboBox;
  dxLaC : TdxLayoutItem;
  dxLaGC : TdxLayoutGroup;
  Tlist : TstringList;
begin
  TList := TStringList.Create;
  try
    Split(',',List,TList);
    cxEditC := TcxComboBox.Create(self);
    cxEditC.Name := fieldName;
    cxEditC.Text := '';
    cxEditC.Properties.Items := TList;
  finally
    TList.Free;
  end;
  cxEditC.Properties.DropDownListStyle := lsFixedList;
  dxLaC := TdxLayoutGroup(parent).CreateItemForControl(cxEditC);
  dxLaC.Name := 'dxLa'+fieldName;
  dxLaC.AlignHorz := ahLeft;
  cxEDitC.Width := uzunluk;
 // dxLaC.Width := uzunluk;
  dxLaC.Caption := caption;

  if grup = '' then
    dxLaC.Parent := parent
    else begin
        if Self.FindComponent(grup) = nil
        then begin
         dxLaGC := TdxLayoutGroup.Create(self);
         dxLaGC.Name := grup;
         dxLaGC.LayoutDirection := ldHorizontal;
         dxLaGC.Parent := parent;
         dxLagC.ShowBorder := false;
        end;
      dxLaC.Parent := TdxLayoutGroup(Self.findcomponent(grup));
    end;
  cxEditC.Style.Color := clWhite;
  cxEditC.OnEnter := cxEditEnter;
  cxEditC.OnExit := cxEditExit;
  cxEditC.OnKeyDown := cxTextEditBKeyDown;
  cxEditC.Properties.OnEditValueChanged := PropertiesEditValueChanged;

end;


procedure TGirisForm.setDataStringChk(sender : Tform ; fieldName,caption : string;
     parent : TdxLayoutGroup;grup : string ;uzunluk : integer ; tip : CheckTip = ctBol ; text : string = ' ');
var
  cxCheck : TcxCheckBox;
  dxLaC : TdxLayoutItem;
  dxLaGC : TdxLayoutGroup;
begin
  cxCheck := TcxCheckBox.Create(self);
  cxCheck.Name := fieldName;
  cxCheck.Transparent := True;
  cxCheck.Caption := caption;
  cxCheck.AutoSize := False;
  if tip = ctBol
  then begin
    cxCheck.Properties.ValueChecked := 'True';
    cxCheck.Properties.ValueUnchecked := 'False';
    cxCheck.EditValue := False;
  end
  else
  begin
    cxCheck.Properties.ValueChecked := 1;
    cxCheck.Properties.ValueUnchecked := 0;
    cxCheck.EditValue := 0;
  end;

  dxLaC := TdxLayoutGroup(parent).CreateItemForControl(cxCheck);
  dxLaC.Name := 'dxLa'+fieldName;
  dxLaC.AlignHorz := ahLeft;
  dxLaC.Width := uzunluk;
  dxLaC.Caption := text;


  if grup = '' then
    dxLaC.Parent := parent
    else begin
        if Self.FindComponent(grup) = nil
        then begin
         dxLaGC := TdxLayoutGroup.Create(self);
         dxLaGC.Name := grup;
         dxLaGC.LayoutDirection := ldHorizontal;
         dxLaGC.Parent := parent;
         dxLagC.ShowBorder := false;
        end;
      dxLaC.Parent := TdxLayoutGroup(Self.findcomponent(grup));
    end;
  cxCheck.Style.Color := clWhite;
  cxCheck.OnEnter := cxEditEnter;
  cxCheck.OnExit := cxEditExit;
  cxCheck.OnKeyDown := cxTextEditBKeyDown;
  cxCheck.Properties.OnEditValueChanged := PropertiesEditValueChanged;
end;

procedure TGirisForm.setDataStringCurr(sender : Tform ; fieldName,caption : string;
     parent : TdxLayoutGroup;grup : string ;uzunluk : integer ; displayFormat : string = ',0.00';_tag_ : integer = -100);
var
  cxCurr : TcxCurrencyEdit;
  dxLaC : TdxLayoutItem;
  dxLaGC : TdxLayoutGroup;
begin
  cxCurr := TcxCurrencyEdit.Create(self);
  cxCurr.Name := fieldName;
  cxCurr.Properties.displayFormat := displayFormat;
  cxCurr.Properties.Alignment.Horz := taRightJustify;
  dxLaC := TdxLayoutGroup(parent).CreateItemForControl(cxCurr);
  dxLaC.Name := 'dxLa'+fieldName;
  dxLaC.AlignHorz := ahLeft;
  cxCurr.Width := uzunluk;
  cxCurr.Tag := _Tag_;
  cxCurr.EditValue := 0;
 // dxLaC.Width := uzunluk;
  dxLaC.Caption := caption;

  if grup = '' then
    dxLaC.Parent := parent
    else begin
        if Self.FindComponent(grup) = nil
        then begin
         dxLaGC := TdxLayoutGroup.Create(self);
         dxLaGC.Name := grup;
         dxLaGC.LayoutDirection := ldHorizontal;
         dxLaGC.Parent := parent;
         dxLagC.ShowBorder := false;
        end;

      dxLaC.Parent := TdxLayoutGroup(Self.findcomponent(grup));
    end;
  cxCurr.Style.Color := clWhite;
  cxCurr.OnEnter := cxEditEnter;
  cxCurr.OnExit := cxEditExit;
  cxCurr.OnKeyDown := cxTextEditBKeyDown;
  cxCurr.Properties.OnEditValueChanged := PropertiesEditValueChanged;
end;


procedure TGirisForm.setDataStringKontrol(sender : Tform;obje : TControl; fieldName,caption : string;
     parent : TdxLayoutGroup;grup : string ;uzunluk : integer ; yukseklik : integer = 0 ;
     Aling : TAlign = alNone; objeName : string = '' ; CaptionAling : TdxCaptionLayout = clTop ; ImmediatePost : Boolean = True);
var
  dxLaC : TdxLayoutItem;
  dxLaGC : TdxLayoutGroup;
begin
  if obje = nil then exit;
  if objeName = ''
  then
  begin
   try obje.Name := fieldName; except on e: exception do ShowMessageSkin (e.Message, '', '', 'info'); end;
  end
  else
    obje.Name := objeName;

  obje.Parent := sender;
  obje.Align := Aling;
  dxLaC := TdxLayoutGroup(parent).CreateItemForControl(obje);
  dxLaC.Name := 'dxLa'+fieldName;
  dxLaC.AlignHorz := ahLeft;

  obje.Width := uzunluk;
  if yukseklik > 0 then obje.Height := Yukseklik;

  //dxLaC.AlignHorz := ahClient;
  dxLaC.AlignVert := avParentManaged;
 // dxLaC.Width := uzunluk;
  dxLaC.Caption := caption;

  if grup = '' then
    dxLaC.Parent := parent
    else begin
        if Self.FindComponent(grup) = nil
        then begin
         dxLaGC := TdxLayoutGroup.Create(self);
         dxLaGC.Name := grup;
         dxLaGC.LayoutDirection := ldHorizontal;
         dxLaGC.Parent := parent;
         dxLagC.ShowBorder := false;
        end;
      dxLaC.Parent := TdxLayoutGroup(Self.findcomponent(grup));
    end;

    (*
  if (obje.ClassName = 'TcxGrid') or
     (obje.ClassName = 'TcxGridKadir')
  then begin
    if Aling = alClient
    then begin
      dxLaC.Height := sayfa1.Height-20;
      dxLaC.Width := sayfa1.Width-20;
    end;

  end;
      *)

  if (obje.ClassName = 'TcxGrid') or
     (obje.ClassName = 'TcxGridKadir') or
     (obje.ClassName = 'TcxPageControl') or
     (obje.ClassName = 'TcxGroupBox') or
     (obje.ClassName = 'TcxRadioGroup') or
     (obje.ClassName = 'TcxCheckListBox') or
     (obje.ClassName = 'TcxDBVerticalGrid')
  then
  begin
     dxLac.CaptionOptions.Layout := CaptionAling;
  end
  else
  begin
    if (obje.ClassName = 'TcxDateEdit') or
       (obje.ClassName = 'TcxDateEditKadir')
    then begin
      TcxdateEdit(obje).Properties.DateOnError := deNull;
      //TcxdateEdit(obje).Properties.ImmediateDropDownWhenKeyPressed := True;
      TcxdateEdit(obje).Properties.ImmediatePost := ImmediatePost;
      //TcxdateEdit(obje).Properties.MaxDate := strtodate('01.01.2500');
      //TcxdateEdit(obje).Properties.MinDate := strtodate('01.01.1900');
      TcxdateEdit(obje).Properties.OnValidate := PropertiesValidate;
    end;
    if obje.ClassName <> 'TImage'
    Then begin
     TcxCustomEdit(obje).Style.Color := clWhite;
     TcxCustomEdit(obje).OnEnter := cxEditEnter;
     TcxCustomEdit(obje).OnExit := cxEditExit;
     TcxCustomEdit(obje).OnKeyDown := cxTextEditBKeyDown;
     TcxImageComboBox(obje).Properties.ImmediatePost := ImmediatePost;
     TcxImageComboBox(obje).Properties.ImmediateUpdateText := True;
     TcxImageComboBox(obje).Properties.OnEditValueChanged := PropertiesEditValueChanged;
    end;
  end;


end;




procedure TGirisForm.TopPanelPropertiesChange(Sender: TObject);
begin
  try
   if txtDonemTopPanel.Visible
   then begin
      if TcxCustomEdit(sender).Name = 'txtDonemTopPanel'
      then begin
         txtTopPanelTarih1.Date := txtDonemTopPanel.ilkTarih;
         txtTopPanelTarih2.Date := txtDonemTopPanel.sonTarih;
      end;
   end;
  except
  end;
  if ChangeButtonListClick = True
  then
    btnListTopPanel.Click;
end;

procedure TGirisForm.addButtonTopPanel(sender : Tform ; Name,caption: string ; uzunluk,Tag : integer; Event : TNotifyEvent = nil);
var
  Buton : TcxButtonKadir;
begin
  Buton := TcxButtonKadir.Create(sender);
  Buton.Parent := TopPanel;
  Buton.Align := alLeft;
  Buton.Caption := caption;
  Buton.Width := uzunluk;
  Buton.Tag := Tag;
  Buton.OnClick := Event;
end;


function TGirisForm.PostSQL(sp_Sql : string) : Boolean;
var
 i : integer;
 sql,s,value: string;
 ado : TADOQuery;
begin
  Result := False;
  for i := 0 to self.ComponentCount - 1 do
  begin
    if IsPostSQLControl(Components [i])
       and (TcxTextEdit(self.Components[i]).Properties.ReadOnly = False)
    then begin
     if (self.Components[i].ClassName = 'TcxCurrencyEdit')
     then
      value :=  TcxCurrencyEdit(self.Components[i]).Text
     else
      value :=  #39+TcxCustomEdit(self.Components[i]).EditingValue+#39;
      s :=  s +  ','+self.Components[i].Name + '=' + value;
    end;
  end;

  sql :=  Format(sp_Sql,[copy(s,2,5000),indexFieldValue]);

  ado := TADOQuery.Create(nil);
  try
    try
      ado.Connection := datalar.ADOConnection2;
      datalar.QueryExec(ado,sql);
      Result := True;
      ado.SQL.Text := 'select SCOPE_IDENTITY() as id';
      ado.Open;
      F_IDENTITY := ado.Fields [0].AsInteger;
    except on e : Exception do
      ShowMessageSkin(e.Message,'','','info');
    end;
  finally
    ado.Free;
  end;

end;


function TGirisForm.Post : Boolean;
var
 i : integer;
 _Obje_ : TcxCustomEdit;
 jp : TJPEGImage;
begin
// formdaki kontrollerin de�erleri kontrollerin tipi ve ismine g�re tabloya kay�t ediliyor
  Result := False;
  if FormInputZorunluKontrol(self) then exit;

  try
    if sqlRun.State <> dsNewValue then sqlRun.Edit;
    for i := 0 to self.ComponentCount - 1 do
    begin
      if IsPostControl (self.Components[i])
      then begin
        //_obje_ := nil;

        _obje_ := TcxCustomEdit(self.Components[i]);

      //hash
      (*
        if (self.Components[i].Name = 'password') and (self.Name = 'frmUsers')
        then begin
           sqlRun.FieldByName(_Obje_.Name).AsVariant :=
           md5(TcxTextEditKadir(FindComponent ('password')).Text)
        end
        else
        *)

        if (self.Components[i].ClassName = 'TcxCheckGroupKadir')
        then begin
          sqlRun.FieldByName(_Obje_.Name).AsVariant := TcxCheckGroupKadir(_Obje_).getItemCheckString;
        end
        else
        if ((self.Components[i].ClassName = 'TcxImageComboKadir') or
           (self.Components[i].ClassName = 'TcxImageComboBox'))
           and (TcxImageComboBox(_obje_).Text = '')
        Then Begin
        //  TcxImageComboKadir(_obje_).EditValue := Null;
     //     sqlRun.FieldByName(_Obje_.Name).DataType = ftInteger
     //     Then
       //     sqlRun.FieldByName(_Obje_.Name).AsVariant
          sqlRun.FieldByName(_Obje_.Name).AsVariant := Null;

        //  Continue;
        End
        Else
        if (self.Components[i].ClassName = 'TcxImage')
        Then Begin
          if TcxImage(self.Components[i]).Picture.Graphic <> nil
          Then begin
            jp := TJpegimage.Create;
            try
              jp.Assign(TcxImage(self.Components[i]).Picture.Bitmap);
              sqlRun.FieldByName(_Obje_.Name).Assign(jp);
            finally
              jp.Free;
            end;
          end
          else
           sqlRun.FieldByName(_Obje_.Name).AsVariant := Null;
        End
        else
        if (self.Components[i].ClassName = 'TcxButtonEditKadir') and
           (TcxButtonEditKadir(self.Components[i]).indexField = True) and
           (sqlRun.State in [dsNewValue,dsInsert])
        Then begin
          sqlRun.FieldByName(_Obje_.Name).AsString := _Obje_.EditingValue;
          if (sqlRun.FieldByName(_Obje_.Name) is TStringField)
            and IsNull (sqlRun.FieldByName(_Obje_.Name).AsString) then sqlRun.FieldByName(_Obje_.Name).Clear;

        end
        else
        if (self.Components[i].ClassName = 'TcxButtonEditKadir') and
           (TcxButtonEditKadir(self.Components[i]).indexField = True) and
           (sqlRun.State in [dsEdit])
        Then begin

        end
        else
        if (self.Components[i].ClassName = 'TcxDateEditKadir')  or
           (self.Components[i].ClassName = 'TcxDateEdit')
        Then Begin
           if (TcxDateEditKadir(_Obje_).BosOlamaz = True) and (TcxDateEdit(_Obje_).Text = '')
           then begin
           //  self.ActiveControl := TcxDateEditKadir(_obje_);
           //  ShowMessageSkin(TcxTextEditKadir(_obje_).Name,'Zorunlu Alan','','info');
           //  exit;
           end
           else
           if TcxDateEdit(_Obje_).EditValue <> Null
           then
             if TcxDateEditKadir(_Obje_).ValueTip = tvTime
             then
               sqlRun.FieldByName(_Obje_.Name).AsVariant :=  FormatDateTime('hh:mm', TcxDateEditKadir(_Obje_).EditValue)
             else
             if TcxDateEditKadir(_Obje_).ValueTip = tvDate
             then
               sqlRun.FieldByName(_Obje_.Name).AsVariant :=  TcxDateEditKadir(_Obje_).GetValue('YYYY-MM-DD hh:mm') //tarihal(TcxDateEdit(_Obje_).Date)
             else
             if TcxDateEditKadir(_Obje_).ValueTip = tvDateTime
             then
               sqlRun.FieldByName(_Obje_.Name).AsVariant :=  TcxDateEditKadir(_Obje_).EditValue // GetValue('YYYY-MM-DD hh:mm') //tarihal(TcxDateEdit(_Obje_).Date)
               else
                sqlRun.FieldByName(_Obje_.Name).AsVariant :=  TcxDateEditKadir(_Obje_).GetValue('YYYYMMDD') //tarihal(TcxDateEdit(_Obje_).Date)

           else
            sqlRun.FieldByName(_Obje_.Name).AsVariant := null;
        End
        else
       //  if (TcxTextEditKadir(_obje_).BosOlamaz = True) and (TcxTextEditKadir(_obje_).Text = '')
       //   Then begin
            // self.ActiveControl := TcxTextEditKadir(_obje_);
            // ShowMessageSkin(TcxTextEditKadir(_obje_).Name,'Zorunlu Alan','','info');
            // exit;
       //   end
      //   else
         begin
           sqlRun.FieldByName(_Obje_.Name).AsVariant := _Obje_.EditingValue;
           if (sqlRun.FieldByName(_Obje_.Name) is TStringField)
             and IsNull (sqlRun.FieldByName(_Obje_.Name).AsString) then sqlRun.FieldByName(_Obje_.Name).Clear;
         end;

      end;
    end;
    sqlRun.Post;
    F_IDENTITY := -1;
    for i := 0 to sqlRun.FieldCount - 1 do
      if sqlRun.Fields [i] is TAutoIncField then
        F_IDENTITY := sqlRun.Fields [i].AsInteger;

    // TcxButtonEditKadir class nesnesi Identity true ise F_IDENTITY de�eri nesneye atan�yor
    for i := 0 to self.ComponentCount - 1 do
    begin
      _obje_ := TcxCustomEdit(self.Components[i]);
       if (self.Components[i].ClassName = 'TcxButtonEditKadir')
       then
         if TcxButtonEditKadir(_obje_).Identity = True
         then TcxButtonEditKadir(_obje_).EditValue := F_IDENTITY;
    end;

    Result := True;
  except on e : Exception do
    begin
     Result := false;
     ShowMessageSkin(e.Message,'','','info');
    end;
  end;
end;




procedure TGirisForm.Olustur(sender : TObject;Table,Tabbaslik : string;imageindex : integer;
                           sqlInsert : string = '';sqlUpdate : string = '';sqlDelete : string = '';indexField : string = '');
begin
//formdan g�nderilen tablo ismi atan�yor
// pagekontrole ba�l��� ve image index atan�yor

  TableName := Table;
  _sqlInsert_ := sqlInsert;
  _sqlUpdate_ := sqlUpdate;
  _sqlDelete_ := sqlDelete;
 // cxTab.Tabs[0].ImageIndex := FormTabImageIndex(self.Tag);
end;

procedure TGirisForm.tableColumnDescCreate;
var
 sql,col,desc : string;
 prm : TStringList;
 IC : TStringList;
 grup : TdxLayoutGroup;
 ado : TADOQuery;
begin
// tablonun kolonlar�nda description �zelli�i tan�mlanm�� kolonlar� bulup burdaki
// tan�mlamaya g�re forma kontrol koyar.
// Caption,kolon,grup,uzunluk,tablename;kod;value

  sql := Format(selectTableDescColumn,[#39+TableName+#39]);
  ado := TADOQuery.Create(nil);
  try
    prm := TStringList.Create;
    try
      ado.Connection := DATALAR.ADOConnection2;
      datalar.QuerySelect(ado,sql);
      while not ado.eof do
      begin
        col := ado.FieldByName('Column').AsString;
        desc := ado.FieldByName('Description').AsString;
        Split(',',desc,prm);

        grup := TdxLayoutGroup(FindComponent(prm[1]));

        if prm[4] <> ''
        then begin
          IC := TStringList.Create;
          try
            ExtractStrings([';'],[],PWideChar(prm[4]),IC);
            setDataStringIC(self,col,prm[0],grup, prm[2],strtoint(prm[3]),IC[0],IC[1],IC[2]);
          finally
            IC.free;
          end;
        end
        else
        begin

          setDataString(self,col,prm[0], grup, prm[2],strtoint(prm[3]));
          TcxTextEdit(FindComponent(col)).Enabled := _FormDiseabled;

        end;



        ado.Next;
      end;
    finally
      prm.Free;
    end;
  finally
    ado.Free;
  end;
end;


procedure TGirisForm.ButonClick(sender : TObject ; key : char);
begin

 // ShowMessage(key);
end;



procedure TGirisForm.cxButtonCClick(Sender: TObject);
begin
  if KontrolUsers(inttostr(self.Tag),inttostr(TControl(sender).Tag),datalar.username) = False
  Then begin
    datalar.KontrolUserSet := True;
    ShowMessageSkin('Bu kontrol� kullan�m�n�z k�s�tland�r�m��','Sistem y�neticinizle g�r���n','','info');
    exit;
  end;

   if TObject(sender).ClassType = TToolButtonKadir
   then
   if TToolButtonKadir(sender).Modul <> ''
   then
   if UserRight(TToolButtonKadir(sender).Modul, TToolButtonKadir(sender).Islem) = False
   then begin
       datalar.KontrolUserSet := True;
       ShowMessageSkin('Bu ��lem ��in Yetkiniz Bulunmamaktad�r !','','','info');
       exit;
   end;

   if TObject(sender).ClassType = TMenuItem
   then
   if TMenuItem(sender).Hint <> ''
   then
   if UserRight(copy(TMenuItem(sender).Hint,1,pos(',',TMenuItem(sender).Hint)-1),
                copy(TMenuItem(sender).Hint,pos(',',TMenuItem(sender).Hint)+1,100)) = False
   then begin
       datalar.KontrolUserSet := True;
       ShowMessageSkin('Bu ��lem ��in Yetkiniz Bulunmamaktad�r !','','','info');
       exit;
   end;

   case TcxButton(sender).Tag of
    9999 : begin
            close;
          end;
    9997 : begin
             ExceleGonder;
           end;

   end;
end;

procedure TGirisForm.cxListeleClick(Sender : TObject);
begin
 datalar.ZorunluAlanVar := FormInputZorunluKontrol(self);
end;

procedure TGirisForm.cxKaydetClick(Sender: TObject);
var
  dosyaNo : string;
  sonuc : Boolean;
  i : integer;
 _Obje_ : TcxCustomEdit;
begin
  F_cxKaydetResult := False;
  if KontrolUsers(inttostr(self.Tag),inttostr(TControl(sender).Tag),datalar.username) = False
  Then begin
    datalar.KontrolUserSet := True;
    ShowMessageSkin('Bu kontrol� kullan�m�n�z k�s�tland�r�m��','Sistem y�neticinizle g�r���n','','info');
    Abort;
  end;
  DurumGoster();
  try
    case TControl(sender).Tag  of
 Kaydet : begin
           try
             if FormInputZorunluKontrol(self) Then Abort;
             if sqlTip = sql_Select
             then begin
               sonuc := post;
               newButonVisible(false);
               cxPanelButtonEnabled(true,false,true);
             end
             else
             begin
               sonuc := PostSQL(_SqlUpdate_);
               newButonVisible(false);
               cxPanelButtonEnabled(false,True,false);
             end;

             if sonuc = True Then begin
              newButonVisible(false);
              F_cxKaydetResult := True;
              ShowMessageskin('Kay�t Yap�ld�','','','info');
             end;
           except on e: Exception do
            begin
              ShowMessage(e.Message,'','','info');
              Abort;
            end;
           end;

          end;
    Sil : begin
           if MrYes = ShowMessageSkin('Silmek �stedi�inizden Emin misiniz ?','','','msg')
           then begin
               try
                sqlRun.Delete;
                F_cxKaydetResult := True;
               except on e : Exception do
                begin
                  ShowMessage('Silmek iste�iniz kay�t ili�kisel veri olabilir mi?'#13#10+e.Message,'','','info');
                  Abort;
                end;
               end;
               try
                indexKaydiBul('');
                sqlRunLoad;
               except on e : exception do
                begin
                  ShowMessageSkin(e.Message,'','Bo� Kay�t y�klenirken hata olu�tu','info');
                  Abort;
                end;
               end;
               cxPanelButtonEnabled(true,false,false);
           end;


         end;

  Yeni : begin
           Enabled;
           _SQLRUN_ := _SqlInsert_;
           indexKaydiBul(dosyaNo,'');
         //  KontrolEditValueClear;
           sqlRunLoad;

           sqlRun.Append;
           F_IDENTITY := -1;
           cxPanelButtonEnabled(false,true,false);
           newButonVisible(true);

           // Identity Buttonedit kutusu bo�alt�l�yor
           for i := 0 to self.ComponentCount - 1 do
           begin
              _obje_ := TcxCustomEdit(self.Components[i]);
               if (self.Components[i].ClassName = 'TcxButtonEditKadir')
               then
                 if TcxButtonEditKadir(_obje_).Identity = True
                 then TcxButtonEditKadir(_obje_).Clear;
           end;

           //sirketKod.Text := datalar.AktifSirket;
           F_cxKaydetResult := True;
        end;
      3 : begin
           sqlRun.Next;
           indexKaydiBul('');
           F_cxKaydetResult := True;
          end;

      9999 : begin
              sqlRun.Close;
              close;
            end;

      9998 : begin
               ShellExecute(0, 'open', PChar('Chrome.exe'), PChar('https://www.noktayazilim.net/KlinikKlavuz/'+ Tform(self).Name + '.html'),
               nil, SW_SHOWNORMAL);

               //ShowMessage(Tform(self).Name + ' Yard�m','','','info'); // formun kullan�m� ile igili yard�m
             end;
     end;
  finally
    DurumGoster(False);
  end;
end;

procedure TGirisForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := caFree;
end;

procedure TGirisForm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
var
  aModalResult : TModalResult;
begin
  CanClose := True;//�
  if (sqlRun.State in [dsEdit, dsInsert]) and (_SaveKontrol = True) then
  begin
    aModalResult := dialogs.MessageDlg ('Kaydedilmemi� Bilgiler var, kaydedilsin mi ?', mtConfirmation, [mbYes, mbNo, mbCancel], 0);
    case aModalResult of
      mrYes : begin
        sqlRun.Post;
        cxKaydetClick(cxKaydet);
        Canclose := cxKaydetResult;
      end;
      mrNo : sqlRun.Cancel;
    else
      Canclose := False;
    end;
  end;
end;

procedure TGirisForm.FormCreate(Sender: TObject);
begin
//    Application.OnException := AppException;
    Application.OnIdle := PrintScreenDetect;
   _Dataset := TADOQuery.Create(self);
   _DataSource := TDataSource.Create(self);
   _DataSource.DataSet := _Dataset;
end;

procedure TGirisForm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  image1 : TImage;
begin

  if key = 13 then
  begin
  //   if GetParentForm(Self) <> nil then
  //    TWinControlAccess(GetParentForm(Self)).SelectNext(GetParentForm(Self).ActiveControl,
  //      not(ssShift in Shift), True);

    //  if HandleAllocated and HasInnerEdit and (GetFocus = Handle) then
    //   InnerEdit.SafelySetFocus;

  end;


  if (key = vk_f12) and (Shift = [ssCtrl,ssShift])
  then begin
    ShowMessageSkin('Form Tag :' + inttostr(TGirisForm(self).tag), 'Form Name : ' + TGirisForm(self).name + ' - ' + ' Unit Name : ' + TGirisForm(self).UnitName,
                       'Class Name : ' + TGirisForm(self).ClassName + #13 +
                       'Form Size : ' + intTostr(TGirisForm(self). ClientHeight) + 'x' +intTostr(TGirisForm(self). ClientWidth)
                       ,

                       'info');
  end;

  if (key = vk_f11) and (Shift = [ssCtrl,ssShift])
  then begin

    datalar.SQLQueryGoster := not datalar.SQLQueryGoster;


  end;

  if (key = VK_ESCAPE) //and (Shift = [ssShift])
  then begin
     if TGirisForm(self).Parent = nil then close;
  end;



end;

procedure TGirisForm.FormResize(Sender: TObject);
var
 Fr : Double;
 W,H : Double;
begin
 // W := ScreenWidth;
 // H := ScreenWidth;

  W := ClientWidth;
 H := ClientHeight;

  Fr := min(W/Sayfalar.Width,H/Sayfalar.Height);
 // pnlDurum.Left := round((Self.Width/2) - (pnlDurum.Width/2));
 // pnlDurum.Top := round((Self.ClientHeight/2) - (pnlDurum.Height/2));
  sayfalar.ScaleBy(Trunc(FR*100),100);
end;

procedure TGirisForm.FormShow(Sender: TObject);
var
 i , r : integer;
 ClassName : string;
 FF : TGirisForm;
begin
 // if not _HastaBilgileriniCaptionGoster_
 // then Caption := 'Mavi Nokta Bilgi Tek.';

  ToolBar1.Width := cxTopPanelAltOrta.Width;
  if Menu.Items.Count > 0 then
  PopupMenuToToolBar(self,ToolBar1,Menu)
  else ToolBar1.Visible := false;
  ToolBar1.Width := (Menu.Items.Count * 32) + 50;
  dxStatusBar1.Panels[1].Text := datalar.username;
  //USER_ID.Text := datalar.username;

  cxPanelButtonEnabled(True,false,false);
  if _HastaBilgileriniCaptionGoster_ then
   cxTab.Tabs[0].Caption := self._HastaAdSoyad_;// datalar.HastaBil.Adi + ' ' + datalar.HastaBil.SoyAdi;

 // cxTab.Tabs[0].ImageIndex := -1;
  for i := 0 to self.ComponentCount - 1 do
   begin
     if (self.Components[i] is TdxLayoutControl)
     then
       for r := 0 to TdxLayoutControl(self.Components[i]).ControlCount - 1 do
       if (TdxLayoutControl(self.Components[i]).Controls[r] is TcxGrid)
       Then begin
         if TcxGrid(TdxLayoutControl(self.Components[i]).Controls[r]).Align = alClient then
          GridToSayfaClient(TcxGrid(TdxLayoutControl(self.Components[i]).Controls[r]).Name,self);
       end;
  end;



  if _pasifSebeb_ = '5'
  Then begin
      cxTab.Tabs[0].ImageIndex := 52;
   // Disabled(self,True);
    for i := 0 to self.ComponentCount - 1 do
     begin
       if (self.Components[i] is TPopupMenu)
       then begin
         PopupMenuEnabled(Self,TPopupMenu(self.Components[i]),False);
         try
           if TPopupMenu(self.Components[i]).Tag = 0
           then
             PopupMenuToToolBarEnabled(self,ToolBar1,TPopupMenu(self.Components[i]));
         except
         end;
       end;
     end;

  end
  else
  begin
     cxTab.Tabs[0].ImageIndex := -1;
  end;



 // StringReplace(cxTab.Tabs[0].Caption,'Y�kleniyor...','',[rfReplaceAll]);

//  GridToSayfaClient('YillikPlanGrid',self);
end;

procedure TGirisForm.Image1Click(Sender: TObject);
begin
   ShellExecute(0, 'open', PChar('Chrome.exe'), PChar('https://www.noktayazilim.net/KlinikKlavuz/'+ Tform(self).Name + '.html'),
   nil, SW_SHOWNORMAL);
end;

procedure TGirisForm.Image2Click(Sender: TObject);
begin
  if UserRight('Kullan�c� ��lemleri', 'KontrolUserSet') = False
  then begin
    ShowMessageSkin('Bu ��lem ��in Yetkiniz Bulunmamaktad�r !','Kullan�c� ��lemleri','KontrolUserSet','info');
    exit;
  end;
  Application.CreateForm(TfrmKontrolUserSet, frmKontrolUserSet);
  try
    frmKontrolUserSet.formName := self;
    frmKontrolUserSet.Kontroller.SmallImages := menu.Images;
    frmKontrolUserSet.Init(nil);
    frmKontrolUserSet.ShowModal;
  finally
    freeAndNil(frmKontrolUserSet);
  end;
  datalar.KontrolZorunlu.Active := False;
  datalar.KontrolZorunlu.Active := True;
end;

end.
