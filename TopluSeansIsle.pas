unit TopluSeansIsle;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, BaseGrid, AdvGrid, Buttons, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinsDefaultPainters, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, DB, cxDBData, cxImageComboBox, cxCurrencyEdit,
  cxTextEdit, cxCheckBox, cxCalendar, cxDBLookupComboBox, cxButtonEdit, cxImage,
  cxDropDownEdit, cxPCdxBarPopupMenu, Menus, Soap.InvokeRegistry, KadirLabel,
  cxClasses, Data.Win.ADODB, tmsAdvGridExcel, Soap.Rio, Soap.SOAPHTTPClient,
  cxGroupBox, cxRadioGroup, cxMemo, dxGDIPlusClasses, cxButtons, AdvObj, cxPC,
  cxGridLevel, cxGridBandedTableView, cxGridDBBandedTableView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridCustomView,
  cxGrid, cxLabel, cxMaskEdit, Vcl.ExtCtrls,dateUtils,kadir,GirisUnit,
  kadirType,  StrUtils ,ComObj,cxGridExportlink,pngimage,
  ComCtrls, (*OdemeBilgisiIslemleriTEST*)
  kadirmedula3, dxLayoutContainer,
  HizmetKayitIslemleriws,SOAPHTTPTrans,WinInet, GetFormClass,
  rxAnimate, rxGIFCtrl, datelbl, cxDataUtils, cxLookupEdit, cxDBLookupEdit,
  dxSkinBlack, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinValentine, dxSkinXmas2008Blue, cxSplitter;


type
  TfrmTopluSeans = class(TGirisForm)
    pnlTitle: TPanel;
    pnlOnay: TPanel;
    txtinfo: TLabel;
    HTTP1: THTTPRIO;
    PopupMenu1: TPopupMenu;
    SeansMEdulayaKaydet1: TMenuItem;
    Seansptal1: TMenuItem;
    RaporOku1: TMenuItem;
    ahlilSonular1: TMenuItem;
    N1: TMenuItem;
    SeansGzlem1: TMenuItem;
    edaviKart1: TMenuItem;
    HTTPRIO1: THTTPRIO;
    cxGroupBox1: TcxGroupBox;

    cxGroupBox2: TcxGroupBox;
    HizmetPage: TcxPageControl;
    SeanslarPage: TcxTabSheet;
    gridHastalar: TAdvStringGrid;
    LogPage: TcxTabSheet;
    txtLog: TcxMemo;

    Panel1: TPanel;
    chkBiyo: TcxCheckBox;
    D1: TMenuItem;
    SaveDialog1: TSaveDialog;
    chkGeldi: TcxCheckBox;
    chkGelmeyen: TcxCheckBox;
    T1: TMenuItem;
    ListeAc1: TListeAc;
    H1: TMenuItem;
    N3: TMenuItem;
    K1: TMenuItem;
    H2: TMenuItem;
    txtSeansSayi: TcxTextEdit;
    cxLabel8: TcxLabel;
    txtGirilenSeans: TcxTextEdit;
    txtGirilenSeanslabel: TcxLabel;
    txtGonderilmeyen: TcxTextEdit;
    cxLabel9: TcxLabel;
    txt230: TcxTextEdit;
    cxLabel10: TcxLabel;
    txt234: TcxTextEdit;
    cxLabel11: TcxLabel;
    txtDonemSeans: TcxTextEdit;
    cxLabel12: TcxLabel;
    txtDonemGirilen: TcxTextEdit;
    cxLabel13: TcxLabel;
    txt230Donem: TcxTextEdit;
    cxLabel14: TcxLabel;
    txt234Donem: TcxTextEdit;
    cxLabel15: TcxLabel;
    txt233Donem: TcxTextEdit;
    cxLabel16: TcxLabel;
    cxGridButToplam: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBBandedTableView1: TcxGridDBBandedTableView;
    cxGridDBBandedColumn1: TcxGridDBBandedColumn;
    cxGridDBBandedColumn2: TcxGridDBBandedColumn;
    cxGridDBBandedColumn3: TcxGridDBBandedColumn;
    cxGridDBBandedColumn4: TcxGridDBBandedColumn;
    cxGridDBBandedColumn5: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2: TcxGridDBBandedTableView;
    cxGridDBBandedColumn6: TcxGridDBBandedColumn;
    cxGridDBBandedColumn7: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3: TcxGridDBBandedTableView;
    cxGridDBBandedTableView4: TcxGridDBBandedTableView;
    cxGridDBBandedColumn8: TcxGridDBBandedColumn;
    cxGridDBBandedColumn9: TcxGridDBBandedColumn;
    cxGridDBBandedColumn10: TcxGridDBBandedColumn;
    cxGridDBBandedColumn11: TcxGridDBBandedColumn;
    cxGridDBBandedColumn12: TcxGridDBBandedColumn;
    cxGridDBBandedColumn13: TcxGridDBBandedColumn;
    cxGridLevel1: TcxGridLevel;
    ADO_Detay_toplam: TADOQuery;
    DataSource3: TDataSource;
    cxGridDBTableView1KURUMTIPI: TcxGridDBColumn;
    cxGridDBTableView1Toplam: TcxGridDBColumn;
    cxGridDBTableView1P704230: TcxGridDBColumn;
    cxGridDBTableView1P704230Girilen: TcxGridDBColumn;
    cxGridDBTableView1P704234: TcxGridDBColumn;
    cxGridDBTableView1P704234Girilen: TcxGridDBColumn;
    cxGridDBTableView1P704233: TcxGridDBColumn;
    cxGridDBTableView1P704233Girilen: TcxGridDBColumn;
    cxGridDBTableView1Kodsuz: TcxGridDBColumn;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxGridDBTableView1Column2: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    cxGrid_SeansLevel1: TcxGridLevel;
    cxGrid_Seans: TcxGridKadir;
    cxGridDBTableView1Column3: TcxGridDBColumn;
    Liste: TcxGridDBBandedTableView;
    ListeSiraNumarasi: TcxGridDBBandedColumn;
    ListedosyaNo: TcxGridDBBandedColumn;
    ListeGelisNo: TcxGridDBBandedColumn;
    ListehastaAdi: TcxGridDBBandedColumn;
    Listesirano: TcxGridDBBandedColumn;
    Listedurum: TcxGridDBBandedColumn;
    ListeDiyalizorTipi: TcxGridDBBandedColumn;
    ListeDoktorKod: TcxGridDBBandedColumn;
    ListeTalepSira: TcxGridDBBandedColumn;
    ListeislemSiraNoYatak: TcxGridDBBandedColumn;
    ListesiranoYatis: TcxGridDBBandedColumn;
    ListeTakpNo: TcxGridDBBandedColumn;
    ListeSERVIS: TcxGridDBBandedColumn;
    ListemakinaNo: TcxGridDBBandedColumn;
    ListebasvuruNo: TcxGridDBBandedColumn;
    ListeraporTakipNo: TcxGridDBBandedColumn;
    ListeraporNo: TcxGridDBBandedColumn;
    ListeraporTarihi: TcxGridDBBandedColumn;
    ListeverenTesisKodu: TcxGridDBBandedColumn;
    ListeseansGun: TcxGridDBBandedColumn;
    ListeseansSayi: TcxGridDBBandedColumn;
    ListebaslangicTarihi: TcxGridDBBandedColumn;
    ListeBitisTarihi: TcxGridDBBandedColumn;
    ListeADI: TcxGridDBBandedColumn;
    Listefoto: TcxGridDBBandedColumn;
    ListeSeans: TcxGridDBBandedColumn;
    ListeTCKIMLIKNO: TcxGridDBBandedColumn;
    ListeSNProtokolNo: TcxGridDBBandedColumn;
    ListeGIRISKILO: TcxGridDBBandedColumn;
    ListeCIKISKILO: TcxGridDBBandedColumn;
    ListeIdealKilo: TcxGridDBBandedColumn;
    ListeseansKontrol: TcxGridDBBandedColumn;
    ListeGIRISYOLU: TcxGridDBBandedColumn;
    ListeDC: TcxGridDBBandedColumn;
    ListeD: TcxGridDBBandedColumn;
    ListeYA: TcxGridDBBandedColumn;
    ListeAPH: TcxGridDBBandedColumn;
    ListeKanAlindimi: TcxGridDBBandedColumn;
    ListeVatandasTip: TcxGridDBBandedColumn;
    Listebhdat: TcxGridDBBandedColumn;
    Listesebeb: TcxGridDBBandedColumn;
    ListeTanG: TcxGridDBBandedColumn;
    ListeTanC: TcxGridDBBandedColumn;
    ListeNabizG: TcxGridDBBandedColumn;
    ListeNabizC: TcxGridDBBandedColumn;
    ListeTanGK: TcxGridDBBandedColumn;
    ListeTanCK: TcxGridDBBandedColumn;
    ListeHemodiyalizTip: TcxGridDBBandedColumn;
    ListeCins: TcxGridDBBandedColumn;
    ListeseansRaporKontrol: TcxGridDBBandedColumn;
    Listekod: TcxGridDBBandedColumn;
    ListeMedulaDonenKod: TcxGridDBBandedColumn;
    cxStyleRepository2: TcxStyleRepository;
    cxStyleRepository3: TcxStyleRepository;
    cxStyle3: TcxStyle;
    ListeColumn1: TcxGridDBBandedColumn;
    S1: TMenuItem;
    ListeColumn3: TcxGridDBBandedColumn;
    cxStyleRepository4: TcxStyleRepository;
    cxStyle4: TcxStyle;
    cxStyleRepository5: TcxStyleRepository;
    cxStyle5: TcxStyle;
    cxStyleRepository6: TcxStyleRepository;
    cxStyle6: TcxStyle;
    cxStyle7: TcxStyle;
    E1: TMenuItem;
    ListeAc2: TListeAc;
    ado: TADOQuery;
    N4: TMenuItem;
    N5: TMenuItem;
    U1: TMenuItem;
    H3: TMenuItem;
    P1: TMenuItem;
    P2: TMenuItem;
    N6: TMenuItem;
    D2: TMenuItem;
    ListeColumn6: TcxGridDBBandedColumn;
    N7: TMenuItem;
    SeansDetayToplamlarnGster1: TMenuItem;
    s2: TMenuItem;
    S3: TMenuItem;
    TetkiklerPage: TcxTabSheet;
    PopupMenu4: TPopupMenu;
    MenuItem1: TMenuItem;
    DataSource5: TDataSource;
    ADO_Malzeme: TADOQuery;
    DataSource2: TDataSource;
    ADO_Tetkikler: TADOQuery;
    PopupMenu3: TPopupMenu;
    etkikleriENabzdanSil1: TMenuItem;
    DataSource4: TDataSource;
    ADO_List: TADOQuery;
    PopupMenu2: TPopupMenu;
    T2: TMenuItem;
    T3: TMenuItem;
    M1: TMenuItem;
    M2: TMenuItem;
    s4: TMenuItem;
    S5: TMenuItem;
    E2: TMenuItem;
    M3: TMenuItem;
    T4: TMenuItem;
    ListeColumn2: TcxGridDBBandedColumn;
    E3: TMenuItem;
    E4: TMenuItem;
    E5: TMenuItem;
    S6: TMenuItem;
    ListeColumn4: TcxGridDBBandedColumn;
    ListeColumn5: TcxGridDBBandedColumn;
    E6: TMenuItem;
    S7: TMenuItem;
    S8: TMenuItem;
    ListeColumn7: TcxGridDBBandedColumn;
    ListeDevKurum: TcxGridDBBandedColumn;
    cxStyle8: TcxStyle;
    S9: TMenuItem;
    D3: TMenuItem;
    H4: TMenuItem;
    cxRadioGroup1: TcxRadioGroup;
    chkIzýn: TCheckBox;
    T5: TMenuItem;
    ListeColumn8: TcxGridDBBandedColumn;
    PageTetkikMalzeme: TcxPageControl;
    TetkikTab: TcxTabSheet;
    MalzemeTab: TcxTabSheet;
    cxGrid4: TcxGrid;
    GridTetkikler: TcxGridDBBandedTableView;
    cxGridDBBandedColumn29: TcxGridDBBandedColumn;
    cxGridDBBandedColumn30: TcxGridDBBandedColumn;
    cxGridDBBandedColumn41: TcxGridDBBandedColumn;
    cxGridDBBandedColumn44: TcxGridDBBandedColumn;
    cxGridDBBandedColumn56: TcxGridDBBandedColumn;
    cxGridDBBandedColumn83: TcxGridDBBandedColumn;
    cxGridDBBandedColumn86: TcxGridDBBandedColumn;
    cxGridDBBandedColumn87: TcxGridDBBandedColumn;
    cxGridDBBandedColumn88: TcxGridDBBandedColumn;
    GridTetkiklerColumn1: TcxGridDBBandedColumn;
    GridTetkiklerColumn7: TcxGridDBBandedColumn;
    GridTetkiklerColumn2: TcxGridDBBandedColumn;
    GridTetkiklerColumn3: TcxGridDBBandedColumn;
    GridTetkiklerColumn4: TcxGridDBBandedColumn;
    GridTetkiklerColumn5: TcxGridDBBandedColumn;
    GridTetkiklerColumn6: TcxGridDBBandedColumn;
    GridTetkiklerColumn8: TcxGridDBBandedColumn;
    cxGridLevel3: TcxGridLevel;
    cxGrid6: TcxGrid;
    GridMalzeme: TcxGridDBBandedTableView;
    cxGridDBBandedColumn27: TcxGridDBBandedColumn;
    cxGridDBBandedColumn28: TcxGridDBBandedColumn;
    cxGridDBBandedColumn31: TcxGridDBBandedColumn;
    cxGridDBBandedColumn32: TcxGridDBBandedColumn;
    cxGridDBBandedColumn33: TcxGridDBBandedColumn;
    cxGridDBBandedColumn34: TcxGridDBBandedColumn;
    cxGridDBBandedColumn45: TcxGridDBBandedColumn;
    cxGridDBBandedColumn35: TcxGridDBBandedColumn;
    cxGridDBBandedColumn36: TcxGridDBBandedColumn;
    cxGridDBBandedColumn37: TcxGridDBBandedColumn;
    cxGridDBBandedColumn38: TcxGridDBBandedColumn;
    cxGridDBBandedColumn39: TcxGridDBBandedColumn;
    cxGridDBBandedColumn40: TcxGridDBBandedColumn;
    cxGridDBBandedColumn42: TcxGridDBBandedColumn;
    cxGridDBBandedColumn43: TcxGridDBBandedColumn;
    cxGridDBBandedColumn46: TcxGridDBBandedColumn;
    cxGridDBBandedColumn47: TcxGridDBBandedColumn;
    cxGridLevel5: TcxGridLevel;
    cxSplitter1: TcxSplitter;
    GridTetkikListPanel: TcxGroupBox;
    GridTetkikList: TcxGrid;
    GridList: TcxGridDBBandedTableView;
    GridListColumn1: TcxGridDBBandedColumn;
    GridListColumn2: TcxGridDBBandedColumn;
    GridListColumn3: TcxGridDBBandedColumn;
    GridListColumn4: TcxGridDBBandedColumn;
    GridListColumn5: TcxGridDBBandedColumn;
    GridListColumn6: TcxGridDBBandedColumn;
    GridListColumn7: TcxGridDBBandedColumn;
    GridListColumn8: TcxGridDBBandedColumn;
    GridListColumn9: TcxGridDBBandedColumn;
    GridListColumn10: TcxGridDBBandedColumn;
    GridListColumn11: TcxGridDBBandedColumn;
    cxGridLevel4: TcxGridLevel;
    ListeColumn9: TcxGridDBBandedColumn;
    GridListColumn12: TcxGridDBBandedColumn;
    P3: TMenuItem;
    T6: TMenuItem;
    procedure hastalar(durum : string);
    procedure btnListClick(Sender: TObject);
    procedure btnYazdirClick(Sender: TObject);
    procedure btnExcelClick(Sender: TObject);
    procedure btnSendClick(Sender: TObject);
    procedure gridHastalarCheckBoxClick(Sender: TObject; ACol,
      ARow: Integer; State: Boolean);
    procedure gridHastalarGetEditorType(Sender: TObject; ACol,
      ARow: Integer; var AEditor: TEditorType);
    procedure GununTarihi;
    procedure digerIslemTalepdoldur(satir : integer);
    procedure SeansKaydet;
    procedure SeansIptal;
    procedure gridHastalarGridHint(Sender: TObject; ARow, ACol: Integer;
      var hintstr: String);
    procedure FormShow(Sender: TObject);
    procedure HTTP1HTTPWebNode1BeforePost(const HTTPReqResp: THTTPReqResp;
      Data: Pointer);
    procedure sBitBtn9Click(Sender: TObject);
    procedure RaporOku;
    procedure TahlilSonulari;
    procedure SeansGozlem;
    procedure TedaviKarti;
    procedure btnUzmanYazdirClick(Sender: TObject);
    procedure haksahibi(x : integer);
    procedure haksahibiBosalt(x : integer);
    procedure sBitBtn7Click(Sender: TObject);
    procedure sBitBtn2Click(Sender: TObject);
    procedure txtHastaPropertiesChange(Sender: TObject);
    procedure sBitBtn3Click(Sender: TObject);
    procedure gridHastalarDblClick(Sender: TObject);
    procedure sBitBtn4Click(Sender: TObject);
    procedure btnOnlineProtokolClick(Sender: TObject);
    procedure btnOnlineProtokolIptalClick(Sender: TObject);
    procedure gridHastalarClick(Sender: TObject);
    procedure gridHastalarFixedCellClick(Sender: TObject; ACol, ARow: Integer);
    procedure DamarIziDogrula;
    procedure chkGeldiClick(Sender: TObject);
    procedure gridHastalarEditCellDone(Sender: TObject; ACol, ARow: Integer);
    procedure chkGelmeyenClick(Sender: TObject);
    procedure cxRadioGroup1PropertiesChange(Sender: TObject);
    procedure TakipBilgisiOku;
    procedure txtMakinaNoPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure gridHastalarButtonClick(Sender: TObject; ACol, ARow: Integer);
    procedure HastaTakipleri;
    procedure KanAlinanSeansYap;
    procedure HastaKarti;
    procedure cxCheckBox1Click(Sender: TObject);
    procedure cxGridDBTableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure ADOQuery1AfterPost(DataSet: TDataSet);
    procedure SeansDuzenle;
    procedure txtTPropertiesValidate(Sender: TObject; var DisplayValue: Variant;
      var ErrorText: TCaption; var Error: Boolean);
    procedure ListedurumPropertiesEditValueChanged(Sender: TObject);
    procedure ListeDoktorKodPropertiesEditValueChanged(Sender: TObject);
    procedure ListemakinaNoPropertiesEditValueChanged(Sender: TObject);
    procedure ListeSeansPropertiesEditValueChanged(Sender: TObject);
    procedure ExceleGonder;
    procedure ListeGIRISKILOPropertiesEditValueChanged(Sender: TObject);
    procedure ListeCIKISKILOPropertiesEditValueChanged(Sender: TObject);
    procedure GridComboDoldur;
    procedure ListeraporTakipNoPropertiesEditValueChanged(Sender: TObject);
    procedure ListeraporTakipNoPropertiesPopup(Sender: TObject);
    procedure ListeraporTakipNoPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure ADOQuery1BeforePost(DataSet: TDataSet);
    procedure UzmanFormYazdir;
    procedure UzmanGozlemYazdir;
    procedure P704230_to_704230(Butkod : string);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ListeCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure DoktorBilgisiDegis;
    procedure pnlDurumHata(msj : string);
    procedure pnlDurumOk;
    procedure FormCreate(Sender: TObject);
    procedure SeansDetayToplamlarnGster1Click(Sender: TObject);
    procedure SeansDetayToplamlarnGizle1Click(Sender: TObject);
    procedure PopupMenu1Popup(Sender: TObject);
    procedure ImageClick(Sender: TObject);
    procedure cxButtonCClick(Sender: TObject);
    procedure TopPanelPropertiesChange(Sender: TObject);
    procedure SeansOnay(sec : integer);
    procedure TopPanelButonClick(Sender: TObject);
    procedure T2Click(Sender: TObject);

    procedure protokolDefteri;

    procedure MalzemeMedulaKaydetSil(_tag_ : integer);
    procedure TetkikleriMedulaKaydetSil(_tag_ : integer);
    procedure TanilariMedulaKaydetSil(_tag_ : integer);
    procedure TetkikleriENabizaKaydetSil(_tag_ : integer);
    procedure ADO_ListAfterScroll(DataSet: TDataSet);
    procedure E4Click(Sender: TObject);
    procedure HizmetPagePageChanging(Sender: TObject; NewPage: TcxTabSheet;
      var AllowChange: Boolean);
    procedure ListeFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure GridListStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      out AStyle: TcxStyle);
    procedure ListeDoktorKodPropertiesPopup(Sender: TObject);
    procedure ListeFocusedItemChanged(Sender: TcxCustomGridTableView;
      APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);

  private
    { Private declarations }
  public
    { Public declarations }
       function Init(Sender: TObject) : Boolean; override;
  end;


  const
    MedulaKaydet = 0;
    MedulaSil = 1;
    SysTakipSorgula = 2;
    SysTakipSgkBildirimSorgula = 3;
    ENabizKaydet = 4;
    ENabizSil = 5;
    MedulaKaydetMalzeme = 6;
    MedulaSilMAlzeme = 7;
    ENabizKaydetMalzeme = 8;
    ENabizSilMalzeme = 9;
    MedulaTaniKaydet = 10;

var
  frmTopluSeans: TfrmTopluSeans;
  DDurum : boolean;
  dosyaNo,gelisNo : string;

implementation

uses data_modul, AnaUnit,HastaListe,rapor,TahlilSonucGir;
 // raporDetay, TahlilSonucGir,HastaKarti,
 // frmHemsireTakip, TedaviBilgisi, takipOkuBilgisi, HastaTakipleri;

{$R *.dfm}

procedure TfrmTopluSeans.SeansOnay(sec : integer);
var
   x ,sirano , satir , durum ,DamarIziKontrol: integer;
   secim : boolean;
   _secim ,sql , kod , talepSira ,ktip,takipno,makineNo,seans,
    Hst,RTarih,d ,raporTakipNo , yeniSiraNo : string;
begin

          DurumGoster(True);
          try
            for x := 0 to Liste.Controller.SelectedRowCount - 1 do
            begin
               Application.ProcessMessages;
               satir := Liste.Controller.SelectedRows[x].RecordIndex;
               Liste.DataController.FocusedRecordIndex := satir;
               sirano := Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('islemRefNo').Index);
               yeniSiraNo := Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('yeniSiraNo').Index);

           //    kod := Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('HemodiyalizTip').Index);
           //    durum := Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('Durum').Index);
               talepSira := vartoStr(Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('islemSiraNo').Index));
               raporTakipNo := varToSTr(Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('RaporTakipNo').Index));
                DamarIziKontrol := StrToint(varToStr(Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('DamarIziKontrol').Index)));
               _yas_ := Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('Yas').Index);

               RTarih := Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('Tarih').Index);
               makineNo := varToStr(Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('makinaNo').Index));
               seans := Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('Seans').Index);
               d := Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('dosyaNo').Index);
               takipno := varToStr(Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('TakipNo').Index));

               Datalar.SeansBilgi.hizmetSunucuRefNo := cxGrid_Seans.Dataset.FieldByName('islemRefNo').AsString;


               if ((ktip = '1') or (ktip = '99')) and (raporTakipNo = '')
               then begin
                   txtLog.Lines.Add('SGK Hastalarýna RaporTakipNo Almadan Seans Onaylayamazsýnýz');
                   Continue;
               end;

               if ((ktip = '1') or (ktip = '99')) and (takipno = '')
               then begin
                   txtLog.Lines.Add('SGK Hastalarýna Takip Almadan Seans Onaylayamazsýnýz');
                   Continue;
               end;

              if (talepSira = '')
              then begin
                   if makineNo <> ''
                   then begin
                     Hst := SeansKontrol(seans,makineNo,RTarih,d);
                     if Hst <> ''
                     then begin
                       ShowMessageSkin('Makina No Kontrol Ediniz,','Ayný Seansta ' + Hst ,' Seans Görmüþ' ,'info');
                     end;
                   end;


                   if (datalar.KimlikDogrulamaOlmadanSeansOnayla = 'Hayýr') and (_yas_ <= 75)
                   Then begin
                       if DamarIziKontrol = 1
                       then begin
                           sql := 'update hareketler set ' +
                                  'Durum = ' + inttoStr(sec) +
                                  ' where SiraNo = ' + yeniSiraNo;
                           datalar.QueryExec(sql);
                           Liste.DataController.SetValue(satir,Liste.DataController.GetItemByFieldName('Durum').Index,inttoStr(sec));
                           cxGrid_Seans.Dataset.Next;
                       end
                         else
                           txtLog.Lines.Add('Damar Ýzi Kontrol Yapýlmadan Seans Onaylayamazsýnýz');
                   end
                   else begin
                           sql := 'update hareketler set ' +
                                  'Durum = ' + inttoStr(sec) +
                                  ' where SiraNo = ' + yeniSiraNo;
                           datalar.QueryExec(sql);
                           Liste.DataController.SetValue(satir,Liste.DataController.GetItemByFieldName('Durum').Index,inttoStr(sec));
                           cxGrid_Seans.Dataset.Next;
                   end;


              end else
              begin
                   txtLog.Lines.Add('Seans Medulaya Kayýtlý Ýken Onay Deðiþikliði Yapýlamaz');
                   Continue;
              end;


              if ((ktip = '1') or (ktip = '99')) and (raporTakipNo = '')
              then begin
                   txtLog.Lines.Add('SGK Hastalarýna RaporTakipNo Almadan Seans Onaylayamazsýnýz');
                   Continue;
              end;

               if ((ktip = '1') or (ktip = '99')) and (takipno = '')
               then begin
                   txtLog.Lines.Add('SGK Hastalarýna Takip Almadan Seans Onaylayamazsýnýz');
                   Continue;
               end;

            end; // for end

          finally
            DurumGoster(False);
          end;
          ADO_Detay_toplam.Requery();

end;

procedure TfrmTopluSeans.TopPanelButonClick(Sender: TObject);
var
  sql : string;
begin
 //inherited;

 //  TcxImageComboBoxProperties(ListeDoktorKod.Properties).Items :=
  // AnaForm.Doktors.Properties.Items;

 if HizmetPage.ActivePage = SeanslarPage
 then begin
      DurumGoster();
      try
        sql := 'exec sp_TopluSeansGetir ' +
                                        '@tarih1 = ' +  txtTopPanelTarih1.GetSQLValue   + ',' +
                                        '@tarih2 = ' +  txtTopPanelTarih2.GetSQLValue + ',' +
                                        '@s = ' + QuotedStr(txtSeansTopPanel.Text) + ',' +
                                        '@ad = ' + QuotedStr(SeansKriter.Text) + ',' +
                                        '@sirketKod = ' + QuotedStr(datalar.AktifSirket) + ',' +
                                        '@durum = ' + cxRadioGroup1.EditValue;

        datalar.QuerySelect(cxGrid_Seans.Dataset,sql);


        ADO_Detay_toplam.Close;
        ADO_Detay_toplam.Parameters[0].Value :=  copy(txtTopPanelTarih1.GetValue,1,6);
        ADO_Detay_toplam.Parameters[1].Value :=  datalar.AktifSirket;
        ADO_Detay_toplam.Active := True;
      finally
        DurumGoster(False);
      end;
 end;

 if HizmetPage.ActivePage = TetkiklerPage
 then begin
       DatasetOpen := False;
       DurumGoster();
       try
         try
            sql := 'exec sp_TopluTetkikGetir @tarih1 = ' + txtTopPanelTarih1.GetSQLValue + ',' +
                                            '@tarih2 = ' + txtTopPanelTarih2.GetSQLValue + ',' +
                                            '@sirketKod = ' + QuotedStr(datalar.AktifSirket);
            datalar.QuerySelect(ADO_List,sql);
            DatasetOpen := True;
         except on e : exception do
          begin
            pnlDurumHata(e.Message);
            DatasetOpen := False;
          end;
         end;
       finally
         DurumGoster(False);
       end;

 end;


end;

procedure TfrmTopluSeans.TopPanelPropertiesChange(Sender: TObject);
begin
  inherited;
//  GridComboDoldur;
//
end;


function TfrmTopluSeans.Init(Sender: TObject) : Boolean;
begin
 Result := True;
end;

procedure TfrmTopluSeans.cxButtonCClick(Sender: TObject);
var
  F : TGirisForm;
  GirisFormRecord : TGirisFormRecord;
  satir ,islemRefNo,DamarIziKontrol,_yas_ ,yeniSiraNo: integer;
  SeansKapaTC  : string;
begin
  datalar.KontrolUserSet := False;
  inherited;
  if datalar.KontrolUserSet = True then exit;

  satir := Liste.Controller.SelectedRows[0].RecordIndex;
  GirisFormRecord.F_TakipNo_ :=  varTostr(Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('takipno').Index)) ;
  GirisFormRecord.F_dosyaNo_ :=  varTostr(Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('dosyaNo').Index)) ;
  GirisFormRecord.F_gelisNo_ := varTostr(Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('gelisNo').Index)) ;
  islemRefNo := Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('islemRefNo').Index);
  yeniSiraNo := Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('yeniSiraNo').Index);
  DamarIziKontrol := Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('DamarIziKontrol').Index);
   _yas_ := Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('Yas').Index);


  case TControl(sender).Tag of
  -1 : begin
         SeansKaydet;
       end;
  -2 : begin
         SeansIptal;
       end;
  -3 : begin
         RaporOku;
       end;
  -4 : begin
         TahlilSonulari;
       end;
  -5 : begin
         SeansGozlem;
       end;
  -6 : begin
         TedaviKarti;
       end;
  -7 : begin
           if FindTab(AnaForm.sayfalar,TagfrmHastaKart)
           Then begin
             F := TGirisForm(FormClassType(TagfrmHastaKart));
             TGirisForm(FormClassType(TagfrmHastaKart))._dosyaNO_ := GirisFormRecord.F_dosyaNo_;
             TGirisForm(FormClassType(TagfrmHastaKart))._TC_ := '';
             TGirisForm(FormClassType(TagfrmHastaKart)).Init(F);
           end
           Else begin
            F := FormINIT(TagfrmHastaKart,self,GirisFormRecord.F_dosyaNo_,NewTab(AnaForm.sayfalar,TagfrmHastaKart),ikEvet,'Giriþ');
            if F <> nil then F.show;
           end;
       end;
  -8 : begin
         DamarIziDogrula;
       end;
  -9 : begin
          F := FormINIT(TagfrmTakipBilgisiOku,GirisFormRecord);
          if F <> nil then F.ShowModal;
       end;
 -10 : begin
         HastaTakipleri;
       end;
 -11 : begin
         KanAlinanSeansYap;
       end;
 -12 : begin
         SeansDuzenle;
       end;
 -13 : begin
         DoktorBilgisiDegis;
       end;
 -14 : begin
         UzmanFormYazdir;
       end;
 -15 : begin
         UzmanGozlemYazdir;
       end;
 -16 : begin
     //    ExceleGonder;
       end;
 -20,-21 : begin
                if datalar.SeansOnayDoktorHemsireYapar <> 'Evet'
               then
                 SeansOnay(strtoint(ifThen(TControl(sender).Tag = -20,'1','0')))
               else
                ShowMessageSkin('Seans Onaylarýný Doktor ve Hemþire Seansý Kapatarak Yapmalýdýr','','','info');
          end;
 -50 : begin
         SeansKapat(yeniSiraNo,'doktorImza');
       end;
 -51 : begin
         SeansKapat(yeniSiraNo,'hemsireImza');
       end;

 100 : begin
        protokolDefteri;


       end;

 -704234,-704230 : begin
             P704230_to_704230(inttostr(TMenuItem(sender).Tag));
           end;


  end;

end;

procedure TfrmTopluSeans.ImageClick(Sender: TObject);
begin
  // TImage(sender).Tag

end;

procedure TfrmTopluSeans.pnlDurumHata(msj : string);
begin
   pnlDurum.Visible := True;
   pnlDurum.Caption := 'Hata Oluþtu';
 //  pnlAnimator.Visible := false;

end;

procedure TfrmTopluSeans.pnlDurumOk;
begin
   pnlDurum.Visible := True;
 //  pnlAnimator.Visible := True;
   pnlDurum.Caption := 'Ýþlem Durumu';
end;

procedure TfrmTopluSeans.PopupMenu1Popup(Sender: TObject);
begin
 if pnlOnay.Visible = True
 then
    SeansDetayToplamlarnGster1.Caption := 'Seans Detay Toplamlarýný Gizle'
 else
    SeansDetayToplamlarnGster1.Caption := 'Seans Detay Toplamlarýný Göster';

end;

procedure TfrmTopluSeans.protokolDefteri;
var
  sql : string;
  TopluDataset : TDataSetKadir;
begin

          TopluDataset.Dataset0 := datalar.ADO_AktifSirket;
          TopluDataset.Dataset1 := datalar.ADO_aktifSirketLogo;
          TopluDataset.Dataset2 := cxGrid_Seans.Dataset;
          PrintYap('PRD','Protokol Defteri','',TopluDataset,KAdirType.pTNone, frmTopluSeans);

end;

procedure TfrmTopluSeans.GridComboDoldur;
var
  st : Tstrings;
begin
(*
   st := TStringList.Create;
   ItemsDoldurName('txtDamarGiris',st);
   TcxComboBoxProperties(ListeGIRISYOLU.Properties).Items.Clear;
   TcxComboBoxProperties(ListeGIRISYOLU.Properties).Items.AddStrings(st);
   ItemsDoldurName('txtYA',st);
   TcxComboBoxProperties(ListeYA.Properties).Items.Clear;
   TcxComboBoxProperties(ListeYA.Properties).Items.AddStrings(st);
   ItemsDoldurName('txtDializat',st);
   TcxComboBoxProperties(ListeD.Properties).Items.Clear;
   TcxComboBoxProperties(ListeD.Properties).Items.AddStrings(st);
   ItemsDoldurName('txtAPH',st);
   TcxComboBoxProperties(ListeAPH.Properties).Items.Clear;
   TcxComboBoxProperties(ListeAPH.Properties).Items.AddStrings(st);
   ItemsDoldurName('txtDializorCinsi',st);
   TcxComboBoxProperties(ListeDC.Properties).Items.Clear;
   TcxComboBoxProperties(ListeDC.Properties).Items.AddStrings(st);

   st.Free;
  *)
end;

procedure TfrmTopluSeans.haksahibi(x : integer);
begin
     datalar.Bilgi.tckimlikNo := gridHastalar.Cells[56,x];
   //  datalar.Bilgi.sosyalGuvenlikNo := gridAktif.Cells[8,x];
   //  datalar.Bilgi.karneNo := gridAktif.Cells[9,x];
   //  datalar.Bilgi.Durum := gridAktif.Cells[10,x];
   //  datalar.Bilgi.devredilenKurum := gridAktif.Cells[11,x];
     datalar.Bilgi.provizyonTuru := 'N';
  //   datalar.Bilgi.DTarihi := gridAktif.Cells[6,x];
     datalar.Bilgi.ProvizyonTarihi := gridHastalar.Cells[4,x];
 //    datalar.Bilgi.yakinlikKodu := gridAktif.Cells[12,x];
 //    datalar.Bilgi.Adi := gridAktif.Cells[3,x];
     datalar.Bilgi.tedaviTuru := 'G';
     datalar.Bilgi.TakipTuru := 'N';
     datalar.Bilgi.tedaviTipi := '1';
     datalar.Bilgi.BransKodu := KurumBransi;
     datalar.Bilgi.ilkTakip := trim(gridHastalar.Cells[18,x]);

end;


procedure TfrmTopluSeans.haksahibiBosalt(x : integer);
begin
     datalar.Bilgi.tckimlikNo := '';
     datalar.Bilgi.sosyalGuvenlikNo := '';
     datalar.Bilgi.karneNo := '';
     datalar.Bilgi.Durum := '';
     datalar.Bilgi.devredilenKurum := '';
     datalar.Bilgi.provizyonTuru := 'N';
     datalar.Bilgi.DTarihi := '';
     datalar.Bilgi.yakinlikKodu := '';
     datalar.Bilgi.Adi := '';
     datalar.Bilgi.tedaviTuru := 'G';
     datalar.Bilgi.TakipTuru := 'N';
     datalar.Bilgi.tedaviTipi := '1';
     datalar.Bilgi.BransKodu := KurumBransi;
     datalar.Bilgi.ilkTakip := '';

end;


procedure TfrmTopluSeans.digerIslemTalepDoldur(satir : integer);
var
  talep : string;
begin

    talep := Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('TalepSira').Index);

    if talep = ''
    Then Begin
      datalar.DigerIslemTalebi.hizmetSunucuRefNo := Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('sirano').Index);
      datalar.DigerIslemTalebi.takipNo := Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('TakýpNo').Index);
      datalar.DigerIslemTalebi.basvuruNo := Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('basvuruNo').Index);
      datalar.DigerIslemTalebi.drTescilNo := doktorTescil(Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('DoktorKod').Index));
      datalar.DigerIslemTalebi.adet := 1;
      datalar.DigerIslemTalebi.islemDurum := '';
      datalar.DigerIslemTalebi.islemTarihi := Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('UTarihDateTime').Index);
      datalar.DigerIslemTalebi.saglikTesisKodu := Datalar._kurumKod;
      datalar.DigerIslemTalebi.bransKodu := doktorBrans(Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('DoktorKod').Index));
      //gridHastalar.Cells[11,satir];//'1062';//datalar.DigerIslemTalebi.bransKodu;

      if Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('HemodiyalizTip').Index) = 'E'
      then
       datalar.DigerIslemTalebi.sutKodu := 'P704233'
      else
       datalar.DigerIslemTalebi.sutKodu := sutkodu(Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('HemodiyalizTip').Index));

      datalar.DigerIslemTalebi.raporTakipNo := Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('raporTakipNo').Index);
      //raporTakipNobul(gridHastalar.Cells[7,satir]);

    txtLog.Lines.Add(datalar.DigerIslemTalebi.hizmetSunucuRefNo+','+datalar.DigerIslemTalebi.takipNo+','+
               datalar.DigerIslemTalebi.drTescilNo+','+datalar.DigerIslemTalebi.islemTarihi+' ,'+
               datalar.DigerIslemTalebi.sutKodu + ',' + datalar.DigerIslemTalebi.raporTakipNo);

    End;



(*
    if gridHastalar.Cells[5,satir] = ''
    Then Begin
      datalar.DigerIslemTalebi.hizmetSunucuRefNo := gridHastalar.Cells[6,satir];
      datalar.DigerIslemTalebi.takipNo := gridHastalar.Cells[55,satir];
      datalar.DigerIslemTalebi.basvuruNo := gridHastalar.Cells[54,satir];
      datalar.DigerIslemTalebi.drTescilNo := doktorTescil(copy(gridHastalar.Cells[9,satir],1,4));
      datalar.DigerIslemTalebi.adet := 1;
      datalar.DigerIslemTalebi.islemDurum := '';
      datalar.DigerIslemTalebi.islemTarihi := gridHastalar.Cells[4,satir];
      datalar.DigerIslemTalebi.saglikTesisKodu := frmAna._kurumKod;
      datalar.DigerIslemTalebi.bransKodu := doktorBrans(copy(gridHastalar.Cells[9,satir],1,4));
      //gridHastalar.Cells[11,satir];//'1062';//datalar.DigerIslemTalebi.bransKodu;

      if gridHastalar.Cells[44,satir] = 'E'
      then
       datalar.DigerIslemTalebi.sutKodu := 'P704233'
      else
       datalar.DigerIslemTalebi.sutKodu := sutkodu(gridHastalar.Cells[19,satir]);

      datalar.DigerIslemTalebi.raporTakipNo := raporTakipNobul(gridHastalar.Cells[7,satir]);
    End;
  *)
end;

procedure TfrmTopluSeans.E4Click(Sender: TObject);
var
  islemRefNo,HastaneRefNo,eNabizSonuc,mesajTipi,sysTakipNo : string;
  x , satir : integer;
begin
  inherited;

  DurumGoster(True,True);
  pBar.Properties.Max := Liste.Controller.SelectedRowCount;
  pBar.Position := 0;
  try
   for x := 0 to Liste.Controller.SelectedRowCount - 1 do
   begin
           Application.ProcessMessages;
           satir := Liste.Controller.SelectedRows[x].RecordIndex;
           dosyaNo := Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('dosyaNo').Index);
           gelisNo := Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('gelisNo').Index);
           HastaneRefNo := Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('hastaneRefNo').Index);
           islemRefNo := Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('islemRefNo').Index);
           sysTakipNo := varTostr(Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('sysTakipNo').Index)) ;


           case TMenuItem(Sender).tag of
             0 : begin
                      mesajTipi := 'Hizmet Kayýt';
                      ENabizHizmetKayit(HastaneRefNo,sysTakipNo,eNabizSonuc,islemRefNo);
                      txtLog.Lines.Add(eNabizSonuc);
                 end;

             1 : begin
                     //Enabýzdan Sil
                    mesajTipi := 'Hizmet Sil';
                    ENabizHizmetSil(HastaneRefNo,sysTakipNo,eNabizSonuc,islemRefNo);
                    txtLog.Lines.Add(eNabizSonuc);

                 end;
             2 : begin
                  //  SysTakipNoSorgula(sysTakipNo,eNabizSonuc);
                 end;

           end;
           pBar.Position := pBar.Position + 1;
   end;
  finally
    DurumGoster(false);
  end;
end;

procedure TfrmTopluSeans.ExceleGonder;
begin
  //  cxExceleGonder(cxGrid2,'topluSeans.xls');
end;
procedure TfrmTopluSeans.GridListStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  inherited;
  if (ARecord.Values[10] = 1)
  Then
       AStyle := cxStyle1
  Else
  if (ARecord.Values[10] = 2)
  Then
    AStyle := cxStyle8
  Else
    AStyle := cxStyle5;
end;

procedure TfrmTopluSeans.GununTarihi;
begin
   //txtDonem.Date := date();
   //txtDonem2.Date := date();
end;


procedure TfrmTopluSeans.HastaTakipleri;
var
  satir : integer;
  tc,dosyaNo,hasta : string;
  GirisFormRecord : TGirisFormRecord;
begin
    satir := Liste.Controller.SelectedRows[0].RecordIndex;
    GirisFormRecord.F_dosyaNO_ := vartoStr(Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('dosyaNo').Index));
    GirisFormRecord.F_TC_  := vartoStr(Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('TCKIMLIKNO').Index));
    GirisFormRecord.F_HastaAdSoyad_ := Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('hastaAdi').Index);

     if mrYes = ShowPopupForm('Hasta Takipleri Bul',hastaTakipleriGetir,GirisFormRecord.F_TC_)
     Then Begin
       //HastaTakipleriBul('66190086354','01.03.2019','30.03.2019');
     End;
end;

procedure TfrmTopluSeans.HizmetPagePageChanging(Sender: TObject;
  NewPage: TcxTabSheet; var AllowChange: Boolean);
begin
  inherited;

  if NewPage = SeanslarPage
  then begin
    Menu := PopupMenu1;
    PopupMenuToToolBar(self,ToolBar1,Menu);
  end
  else
  begin
    Menu := PopupMenu2;
    PopupMenuToToolBar(self,ToolBar1,Menu)
  end;



end;

procedure TfrmTopluSeans.HastaKarti;
var
 satir : integer;
 dosyaNo : string;
 Form : TGirisForm;
begin
     satir := Liste.Controller.SelectedRows[0].RecordIndex;
     dosyaNo := Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('dosyaNo').Index);
     TGirisForm(FormClassType(TagfrmHastaKart))._TC_ := '';
     if FindTab(AnaForm.sayfalar,TagfrmHastaKart)
     Then begin
       Form := TGirisForm(FormClassType(TagfrmHastaKart));
       TGirisForm(FormClassType(TagfrmHastaKart))._dosyaNO_ := dosyaNo;
       TGirisForm(FormClassType(TagfrmHastaKart)).Init(Form);
     end
     Else begin
      Form := FormINIT(TagfrmHastaKart,self,dosyaNo,NewTab(AnaForm.sayfalar,TagfrmHastaKart),ikEvet,'Giriþ');
      if Form <> nil then Form.show;
     end;
end;

procedure TfrmTopluSeans.hastalar(durum : string);
var
  sql ,txtTarih1 , txtTarih2 ,ay1 , ay2 : string;
  x , j , _SeanTop : integer;
  eskiRenk : Tcolor;
begin
 (*
   pnlDurumOk;
   Application.ProcessMessages;

   txtTarih1 := tarihal(txtTopPanelTarih1.Date);
   txtTarih2 := tarihal(txtTopPanelTarih2.Date);
   try
     sql := 'exec sp_TopluSeansGetir ' + #39 + txtTarih1 + #39 + ',' + #39 + txtTarih2 + #39  + ',' + QuotedStr(KurumTipTopPanel.EditValue) + ',' +
                                       QuotedStr(txtSeansTopPanel.Text) + ',' + QuotedStr(txtHasta.Text) + ',0,' + durum + ',0,' + QuotedStr(copy(txtkodTopPanel.Text,1,1));

     datalar.QuerySelect(ADOQuery1,sql);

     ADO_Detay_toplam.Close;
     ADO_Detay_toplam.Parameters[0].Value :=  copy(tarihal(txtDonem.Date),1,6);
     ADO_Detay_toplam.Active := True;

     pnlDurum.Visible := false;

     cxPageControl1.Pages[1].ImageIndex := 1;

   except on e : exception do
    begin
      pnlDurumHata(e.Message);
    end;
   end;
          *)
end;

procedure TfrmTopluSeans.FormCreate(Sender: TObject);
var
  mi : TMenuItem;
  TB : TToolBar;
  TBB : TToolButton;
  DevKurum : TcxImageComboKadir;
begin
  inherited;
  top := 1;
  left := 1;
//  Tag := TagfrmTopluSeans;
  cxPanel.Visible := false;
  dxStatusBar1.Visible := false;
  cxTab.Tabs[0].Caption := 'Toplu Seans Onaylama';
  Menu:= PopupMenu1;

  HizmetPage.ActivePage := SeanslarPage;

 // pnlToolBar.Parent := cxTabSheet1; //cxTopPanelAltOrta;
//  ActiveControl := txtDonem;

   TcxImageComboBoxProperties(ListeDoktorKod.Properties).Items :=
   AnaForm.Doktors.Properties.Items;


   DevKurum := TcxImageComboKadir.Create(nil);
   DevKurum.Conn := Datalar.ADOConnection2;
   DevKurum.TableName := 'Medula_DevredilenKurumlar';
   DevKurum.DisplayField := 'tanimi';
   DevKurum.ValueField := 'kod';
   DevKurum.Filter := '';
   TcxImageComboBoxProperties(ListeDevKurum.Properties).Items :=
   DevKurum.Properties.Items;


   setDataStringIC(self,'DoktorCombo','DoktorCombo',Kolon1,'BB',150,'DoktorlarT','Kod','Tanimi',DoktorlarFilter);
   TdxLayoutGroup(FindComponent('dxLaDoktorCombo')).Visible := false;
   TcxImageComboBoxProperties(ListeDoktorKod.Properties).Items :=
   TcxImageComboKadir(FindComponent('DoktorCombo')).Properties.Items;


   TopPanel.Visible := True;
   TapPanelElemanVisible(True,True,True,False,True,False,False,False,False,False,False,False);
   Liste.DataController.DataSource := DataSource;
   SeansKriter.EditValue := '';

end;

procedure TfrmTopluSeans.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key = 72) and (shift = [ssCtrl,ssShift])
  then H3.Visible := True;

end;

procedure TfrmTopluSeans.btnListClick(Sender: TObject);
var
 durum : string;
begin
  inherited;
   //  GridComboDoldur;
  //   durum := cxRadioGroup1.EditingValue;
     hastalar(durum);
end;

procedure TfrmTopluSeans.btnYazdirClick(Sender: TObject);
var
  sql , secili , _SiraNo_ , _dosyaNo_ , _gelisNo_ : string;
  ado0,ado1,ado2,ado3,ado4 : TADOQuery;
  x : integer;
begin
   ado0 := TADOQuery.Create(nil);
   ado0.Connection := datalar.ADOConnection2;

   ado1 := TADOQuery.Create(nil);
   ado1.Connection := datalar.ADOConnection2;

   ado2 := TADOQuery.Create(nil);
   ado2.Connection := datalar.ADOConnection2;

   ado3 := TADOQuery.Create(nil);
   ado3.Connection := datalar.ADOConnection2;

   ado4 := TADOQuery.Create(nil);
   ado4.Connection := datalar.ADOConnection2;

   secili := secilisatirbilgisi(gridHastalar,25,6);

   (*
   sql := 'exec sp_SeansIzlemFormu ' + QuotedStr('') + ',' + '1' + ',' + QuotedStr('TT') + ',' + QuotedStr(secili);
   datalar.QuerySelect(ado1,sql);

   sql := 'exec sp_SeansIzlemFormu ' + QuotedStr('') + ',' + '1' + ',' + QuotedStr('T') + ',' + QuotedStr(secili);
     *)

    for x := 1 to gridHastalar.RowCount - 1  do
    begin
      try
       if  gridHastalar.Cells[25,x] = 'T'
       then begin
         _SiraNo_ := gridHastalar.Cells[6,x];
         _dosyaNo_ := gridHastalar.Cells[7,x];
         _gelisNo_ := gridHastalar.Cells[8,x];

         sql := 'exec sp_SeansIzlemFormu ' + QuotedStr(_dosyaNo_) + ',' + _SiraNo_;
         datalar.QuerySelect(ado0,sql);

         sql := 'exec sp_SeansIzlemFormu ' + QuotedStr(_dosyaNo_) + ',' + _SiraNo_ + ',' + QuotedStr('S');
         datalar.QuerySelect(ado1,sql);


         sql := 'exec sp_SeansIzlemFormu ' + QuotedStr(_dosyaNo_) + ',' + _SiraNo_ + ',' + QuotedStr('I');
         datalar.QuerySelect(ado2,sql);

         sql := 'exec sp_SeansIzlemFormu ' + QuotedStr(_dosyaNo_) + ',' + _SiraNo_ + ',' + QuotedStr('X1');
         datalar.QuerySelect(ado3,sql);

         sql := 'exec sp_SeansIzlemFormu ' + QuotedStr(_dosyaNo_) + ',' + _SiraNo_ + ',' + QuotedStr('X2');
         datalar.QuerySelect(ado4,sql);



         frmRapor.topluset.Dataset0 := ado0;
         frmRapor.topluset.Dataset1 := ado1;
         frmRapor.topluset.Dataset2 := ado2;
         frmRapor.topluset.Dataset3 := ado3;
         frmRapor.topluset.Dataset4 := ado4;


         frmRapor.raporData1(frmRapor.topluset ,'054','\Seans Izlem');
        (*
         if chkSor.Checked
         then
           frmRapor.ShowModal
         else
           frmRapor.btnYazdir.Click;
          *)


       end;
      except
      end;

  End;

  ado0.Free;
  ado1.Free;
  ado2.free;
  ado3.free;
  ado4.free;
   
end;

procedure TfrmTopluSeans.btnExcelClick(Sender: TObject);
var
  FStream: TFileStream;
  I, J: Integer;
  xls, xlw: Variant;
begin
  FStream := TFileStream.Create('c:\NoktaDiyaliz\SeansGostergesi.xls', fmCreate);
  try
    XlsBeginStream(FStream, 0);
    for J := 0 to gridHastalar.RowCount -1 do
    for I := 0 to gridHastalar.ColCount -1 do
        XlsWriteCellLabel(FStream, I, J, gridHastalar.Cells[I,J]);

           //case Query1.Fields[I].DataType of
           // ftFloat :XlsWriteCellNumber(FStream, I, J, Query1.Fields[I].asFloat); //float
           // ftInteger :XlsWriteCellRk(FStream, I, J, Query1.Fields[I].asInteger);  //integer
           // else XlsWriteCellLabel(FStream, I, J, Query1.Fields[I].asString); //String ve diðer
           //end; //end of case
    XlsEndStream(FStream);
  finally
    FStream.Free;
    if mrYES = Showmessage('SeansGostergesi.xls adlý Excel Dosyasý kaydedildi.','SeansGostergesi.xls Açýlsýnmý ?','','msg')
    then begin
       xls := CreateOLEObject('Excel.Application');
       xls.
       xlw := xls.WorkBooks.Open(FileName := 'c:\NoktaDiyaliz\SeansGostergesi.xls', Password := '', ReadOnly := True);

    end;

  end;

end;

procedure TfrmTopluSeans.btnOnlineProtokolClick(Sender: TObject);
var
 // pro : Protokol;
 // cvp : Cevap;
  OP , dosyaNo , gelisNo , doktor , msj : string;
  satirs,satirlar ,satir , I : integer;
begin
(*
    pro := Protokol.Create;
    cvp := Cevap.Create;

    if TsBitBtn(sender).Tag = -1
    Then Begin
      satirs := 1;
      satirlar := gridHastalar.RowCount - 1;
    End
    Else
    Begin
    //  gridHastalar.SelectedRow[gridHastalar.row];

      satirs := gridHastalar.row;
      satirlar := satirs + gridHastalar.SelectedRowCount;
    End;

    if mrYes = ShowMessageSkin('Ýþaretlenen Seanslar Ýçin Protokol Alma Ýþlemi Baþlayacak','Onaylýyormusunuz ?','','msg')
    then begin
             pnlDurum.Visible := True;
             pnlAnimator.Animate := True;
             pnlDurum.Caption := 'Protokol Al';
             for satir := satirs to satirlar - 1 do
             begin
                  Application.ProcessMessages;
                  if (gridHastalar.Cells[25,satir] = 'T') and
                     (copy(gridHastalar.Cells[18,satir],1,2) <> 'OP')
                  then begin
                      pro.VatandasTCK := gridHastalar.Cells[56,satir];
                      pro.islemTarihi := gridHastalar.Cells[4,satir] + ' 00:00';
                      pro.OtomasyonKayitid := gridHastalar.Cells[6,satir];

                      pro.HastaTipi := 1;

                      dosyaNo := gridHastalar.Cells[7,satir];
                      gelisNo := gridHastalar.Cells[8,satir];
                      doktor := copy(gridHastalar.Cells[9,satir],1,4);

                      pro.KlinikKodu := strtoint(doktorKlinikKoduSaglikNet(doktor));
                      pro.HekimTCK := doktorTC(doktor);

                      for I := 0 to 9 do
                      begin

                          try
                           cvp := onlineProtokolAl(pro,datalar.servis_,'D');
                          except on e : Exception do
                            begin
                               msj := e.Message;
                               txtLog.Lines.Add(msj);

                            end;
                          end;

                          if (cvp.CevapKodu in [0,7]) or (cvp.cevapKodu = 1270)
                          Then Begin
                            OP := cvp.ProtokolNo;
                            protokolGuncelle(gridHastalar.Cells[6,satir],OP,doktor);
                            gridHastalar.Cells[99,satir] := 'U';
                            gridHastalar.Cells[18,satir] := OP;
                            txtLog.Lines.Add(inttostr(cvp.CevapKodu)+'-'+cvp.CevapAciklama+'-'+cvp.ProtokolNo);
                            break;
                          End
                          Else
                           txtLog.Lines.Add(inttostr(cvp.CevapKodu)+'-'+cvp.CevapAciklama+'-'+cvp.ProtokolNo);


                      end;


                  end;
             end;
    end;

    pnlDurum.Visible := False;

   *)

end;

procedure TfrmTopluSeans.btnOnlineProtokolIptalClick(Sender: TObject);
var
 OP : string;
 //Cvp : cevap;
begin
 (*
  datalar.protokolIslemTip := 'S';
  Cvp := Cevap.Create;

  OP := gridHastalar.Cells[18,gridHastalar.Row];
  Cvp := onlineProtokolIptal(OP,datalar.servis_,'D');

  if cvp.CevapKodu in [0,7]
  Then Begin
    protokolGuncelle(gridHastalar.Cells[6,gridHastalar.Row],'','');
    gridHastalar.Cells[99,gridHastalar.Row] := 'U';
    gridHastalar.Cells[18,gridHastalar.Row] := '';
    txtLog.Lines.Add(inttostr(cvp.CevapKodu)+'-'+cvp.CevapAciklama+'-'+cvp.ProtokolNo);
  End
  Else
   txtLog.Lines.Add(inttostr(cvp.CevapKodu)+'-'+cvp.CevapAciklama+'-'+cvp.ProtokolNo);

   *)



end;

procedure TfrmTopluSeans.btnSendClick(Sender: TObject);
var
  sql : string;
  x : integer;
  ado : TADOQuery;
begin
 // ado := TADOQuery.Create(nil);
 // ado.Connection := datalar.ADOConnection2;

 // datalar.ADOConnection2.BeginTrans;
  try

      pnlDurum.Visible := True;
      //pnlAnimator.Animate := True;
      pnlDurum.Caption := 'Kaydet';

      for x := 1  to gridHastalar.RowCount - 1 do
      begin
       if gridHastalar.Cells[6,x] = ''
       Then Continue
       Else
         if gridHastalar.Cells[99,x] <> 'U'
          Then Continue;
          //Else ShowMessage(inttostr(x)+gridHastalar.Cells[100,x],'','','info');

          sql := 'if dbo.doktorSeansOnayKontrol(' + QuotedStr(copy(gridHastalar.Cells[9,x],1,4)) +
                                                   ',' + gridHastalar.Cells[11,x] + ',' +
                                                   QuotedStr(noktasiztarih(gridHastalar.Cells[4,x])) +  ',' +
                                                   QuotedStr(BoolToStr(chkIzýn.Checked)) +
                                                   ') = ' +
                    QuotedStr('0') +
                    ' Begin ' +



                 'update GelisDetay set Durum = ' +  ifthen(gridHastalar.Cells[25,x] = 'T', '1','0')  +
                 ',sebeb = ' + #39 + gridHastalar.Cells[3,x] + #39 +
                 ',UTarih = ' + #39 + tarih(gridHastalar.Cells[4,x]) + #39 +
                 ',TalepSira = ' + QuotedStr(gridHastalar.Cells[5,x]) +
                 ',makinaNo = ' + QuotedStr(gridHastalar.Cells[10,x]) +
                 ',Seans = '  + QuotedStr(gridHastalar.Cells[11,x]) +
                 ',doktor = ' + QuotedStr(copy(gridHastalar.Cells[9,x],1,4)) +
               //  ',TakipNo = ' + QuotedStr(gridHastalar.Cells[17,x]) +
                 ', seansKontrol = ' + QuotedStr('0') +
                 ' where sirano = ' + gridHastalar.Cells[6,x] +
                 ' end else begin ' +
                 ' update GelisDetay set seansKontrol = ' + QuotedStr('2 - Seans Doktor Çalýþma Dilimi Dýþýndadýr') + ',' +
                 ' durum = ' + '0' +
                 ' where sirano = ' + gridHastalar.Cells[6,x] +

                 ' end ';




          datalar.QueryExec(ado,sql);

          sql := 'select dosyaNo,GelisNo,sum(durum)Toplam from gelisDetay  ' +
                 ' where dosyaNo = ' + #39 + gridHastalar.Cells[7,x] + #39 +
                 ' and gelisNo = ' + gridHastalar.Cells[8,x] +
                 ' group by dosyaNo,GelisNo';
          datalar.QuerySelect(ado,sql);


          sql := 'update Gelisler set GelinenSeans = ' + ado.Fieldbyname('toplam').AsString +
                 ' where dosyaNo = ' + #39 + gridHastalar.Cells[7,x] + #39 +
                 ' and gelisNo = ' + gridHastalar.Cells[8,x];
          datalar.QueryExec(ado,sql);

          Application.ProcessMessages;
      end;

      pnlDurum.Visible := false;
      //pnlAnimator.Animate := false;
  //    pnlDurum.Caption := 'Kaydet';

  except on e : Exception do
     begin
  //      datalar.ADOConnection2.RollbackTrans;
        ShowMessageSkin('Hata Oluþtu : '+e.Message,'','','info');
        exit;
     end;
  end;

//  datalar.ADOConnection2.CommitTrans;
 // ado.Free;
  ShowMessageSkin('Kayýt Tamamlandý','','','info');
  //btnList.Click;
end;

procedure TfrmTopluSeans.gridHastalarButtonClick(Sender: TObject; ACol,
  ARow: Integer);
var
  List : ArrayListeSecimler;
begin
  inherited;
  if ACol = 10
  then begin
    List := ListeAc1.ListeGetir;

    gridHastalar.Cells[acol,arow] := List[0].kolon1;
    gridHastalar.BtnEdit.Text := List[0].kolon1;
  end;

end;

procedure TfrmTopluSeans.gridHastalarCheckBoxClick(Sender: TObject; ACol,
  ARow: Integer; State: Boolean);
begin

   if
   DoktorSeansHastaSayiKontrol(gridHastalar.Cells[9,Arow],gridHastalar.Cells[11,Arow],
                               NoktasizTarih(gridHastalar.Cells[4,Arow])) = False
   Then Begin
     state := False;
     gridHastalar.Cells[25,Arow] := 'F';
     txtLog.Lines.Add('Doktor Gün , Seans , Hasta Sayýsý [30] Aþýlmýþtýr.');
   End;



   if gridHastalar.Cells[25,Arow] = 'T'
   Then
    DDurum := True
   Else
    DDurum := False;

   if gridHastalar.Cells[5,ARow] <> ''
   Then Begin
     State := DDurum;
     gridHastalar.SetCheckBoxState(Acol,Arow,DDurum);
   End;

   if state = true
   then begin
        gridHastalar.Cells[25,arow] := 'T';
      //  gridHastalar.Dates[4,arow] := txtDonem.Date;
      //  doktorkod := doktorkod +  Grd_doktorlar.Cells[1,arow] + ',' ;
       gridHastalar.Cells[99,Arow] := 'U';
   end;

   if state = false
   then begin
      gridHastalar.Cells[25,arow] := 'F';
        gridHastalar.Cells[99,Arow] := 'U';
  //    doktorkod := StringReplace(doktorkod,Grd_doktorlar.Cells[1,arow]+',','',[rfReplaceAll]);
   end;


end;

procedure TfrmTopluSeans.gridHastalarClick(Sender: TObject);
begin

  if (gridHastalar.Cells[5,gridHastalar.row] <> '')
  Then Begin
    gridHastalar.Options :=
    [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect,
    goDrawFocusSelected, goColSizing, goRowSelect];
  End
  Else
  Begin
    gridHastalar.Options :=
    [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect,
    goDrawFocusSelected, goColSizing, goEditing];
  End;


end;

procedure TfrmTopluSeans.gridHastalarGetEditorType(Sender: TObject; ACol,
  ARow: Integer; var AEditor: TEditorType);
var
  sql : string;
  x : integer;
begin
  datalar.ADO_SQL.close;
  datalar.ADO_SQL.SQL.Clear;
  sql := 'select * from diyalizorler';
  datalar.QuerySelect(datalar.ADO_SQL,sql);

  if Acol = 3
  then begin
    AEditor := edComboList;
    gridHastalar.ClearComboString;
    for x := 1 to datalar.ADO_SQL.RecordCount do
    begin
        gridHastalar.AddComboString(datalar.ADO_SQL.Fields[0].asstring);
        DATALAR.ADO_SQL.Next;

    end;

  end;

  if (acol = 4)
  then aEditor := edDateEdit;


  if acol = 9
  then begin
            AEditor := edComboList;
            datalar.ADO_SQL.close;
            datalar.ADO_SQL.SQL.Clear;
            sql := 'select * from Doktorlar';
            datalar.QuerySelect(datalar.ADO_SQL,sql);
            gridHastalar.Combobox.Clear;
            for x := 1 to datalar.ADO_SQL.RecordCount do
            begin
                 gridHastalar.AddComboString(datalar.ADO_SQL.Fields[0].asstring + '-' + datalar.ADO_SQL.Fields[1].asstring);
                 datalar.ADO_SQL.Next;
            end;

  end;

  if (acol = 3)
  then begin
            AEditor := edComboList;
            gridHastalar.Combobox.Clear;

            gridHastalar.AddComboString('0 - Baþka Merkeze Geçici Gitme');
       //     gridHastalar.AddComboString('1 - Transplantasyona Gitme');
      //      gridHastalar.AddComboString('2 - Periton Diyalize Geçme');
    //        gridHastalar.AddComboString('3 - Baþka Tedavi Modeli');
   //         gridHastalar.AddComboString('4 - Ýzlemden Çýkma');
  //          gridHastalar.AddComboString('5 - Ölüm');
            gridHastalar.AddComboString('9 - Hastaneye Yatma');
            gridHastalar.AddComboString('10 - Kendi Ýsteði Ýle Girmedi');
            gridHastalar.AddComboString('11 - Týbbi Sebeb');

       //     gridHastalar.AddComboString('---------------------------');

        //    gridHastalar.AddComboString('6 - Hemodiyaliz Yeni Baþlama');
        //    gridHastalar.AddComboString('7 - Baþka Merkezenden Gelme');
        //    gridHastalar.AddComboString('8 - Transplantasyondan Gelme');


            gridHastalar.Combobox.DropDownCount := 10;
            gridHastalar.Combobox.SizeDropDownWidth;

  end;

  if (acol = 10)
  then begin

            AEditor := edComboList;
            sql := 'select makinaNo from Makinalar';
            datalar.QuerySelect(datalar.ADO_SQL,sql);
            gridHastalar.Combobox.Clear;
            for x := 1 to datalar.ADO_SQL.RecordCount do
            begin
                 gridHastalar.AddComboString(datalar.ADO_SQL.Fields[0].asstring);
                 datalar.ADO_SQL.Next;
            end;
  end;

  if (acol = 11)
  then begin
            AEditor := edComboList;
            gridHastalar.Combobox.Clear;
            gridHastalar.AddComboString('1');
            gridHastalar.AddComboString('2');
            gridHastalar.AddComboString('3');
            gridHastalar.AddComboString('4');
  end;

end;

procedure TfrmTopluSeans.SeansKaydet;
var
   satir,satirs,x ,durum: integer;
   oncekiTalepBilgisi , sonuc , sql , talepSira : string;
   _msg_ : integer;
      fark : double;
   satirlar : integer;
   takipNo,BasvuruNo : string;
   sysTakipNo,islemRefNo,mesajTipi,HastaneRefNo,eNabizSonuc,yeniSiraNo : string;

begin

   if UserRight('MEDULA ÝÞLEMLERÝ', 'Ödeme Yolla') = False
   then begin
       ShowMessageSkin('Bu Ýþlem Ýçin Yetkiniz Bulunmamaktadýr !','','','info');
       exit;
   end;

   if LisansKontrol(fark) = False
   Then Begin
      ShowMessageSkin('Lisans Yenileyin','','','info');
      exit;
   End;

   DurumGoster(True,True,'',0,Liste.Controller.SelectedRowCount);
   try
       for x := 0 to Liste.Controller.SelectedRowCount - 1 do
       begin
           Application.ProcessMessages;
           satir := Liste.Controller.SelectedRows[x].RecordIndex;
           pnlDurumDurum.Caption := varTostr(Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('hastaAdi').Index)) ;
           durum := Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('Durum').Index);
           takipno := varTostr(Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('takipno').Index)) ;
           BasvuruNo := varTostr(Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('BasvuruNo').Index)) ;
           sysTakipNo := varTostr(Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('sysTakipNo').Index)) ;
           islemRefNo := varTostr(Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('islemRefNo').Index));
           yeniSiraNo := varTostr(Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('yeniSiraNo').Index));

           HastaneRefNo := varTostr(Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('HastaneRefNo').Index));
           pBar.Position := pBar.Position + 1;

           if durum = 1
           then begin
            if datalar.eNabizKayit = 'Evet'
            then begin
                mesajTipi := 'Hizmet Kayýt';
                ENabizHizmetKayit(HastaneRefNo,sysTakipNo,eNabizSonuc,islemRefNo);
               // eNabizSonuc := 'S0000';
                sleep(500);
                txtLog.Lines.Add('ENabýz Hizmet Kayýt : ' + sysTakipNo + '-' + eNabizSonuc);
                if copy(eNabizSonuc,1,5) = 'S0000'
                then begin
                  HizmetKayitVeriSeti(takipNo,BasvuruNo, 'D','G','S',islemRefNo,sonuc);
                  txtLog.Lines.Add('Medula Hizmet Kayýt : ' + takipno + '-' + sonuc);
                  Liste.DataController.SetValue(satir,Liste.DataController.GetItemByFieldName('islemSiraNo').Index,
                                                datalar.RxKayitliIslem.fieldbyname('islemSiraNo').AsString);
                 // cxGrid_Seans.Dataset.Requery();
                end;
            end
                else
                begin
                  HizmetKayitVeriSeti(takipNo,BasvuruNo, 'D','G','S',islemRefNo,sonuc);
                  txtLog.Lines.Add('Medula Hizmet Kayýt : ' + takipno + '-' + sonuc);
                  Liste.DataController.SetValue(satir,Liste.DataController.GetItemByFieldName('islemSiraNo').Index,
                                                datalar.RxKayitliIslem.fieldbyname('islemSiraNo').AsString);

                //  cxGrid_Seans.Dataset.Requery();
                end;
           end;

           //sleep(1500);
        end;
   finally
    DurumGoster(False);
   end;
end;

procedure TfrmTopluSeans.SeansIptal;
var
  _sonuc , msg , sql , talep , takip  : string;
  x , satir , satirs , satirlar : integer;
  bm : TBookmark;
  sysTakipNo,islemRefNo,mesajTipi,HastaneRefNo,eNabizSonuc : string;
begin

   if UserRight('MEDULA ÝÞLEMLERÝ', 'Hizmet Ýptal') = False
   then begin
       ShowMessageSkin('Bu Ýþlem Ýçin Yetkiniz Bulunmamaktadýr !','','','info');
       exit;
   end;

   DurumGoster(True,True,'',0,Liste.Controller.SelectedRowCount);
   try
     for x := 0 to Liste.Controller.SelectedRowCount - 1 do
     begin
         Application.ProcessMessages;
         satir := Liste.Controller.SelectedRows[x].RecordIndex;
         talep := varTostr(Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('islemSiraNo').Index));
         takip := Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('TakipNo').Index);
         dosyaNo := Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('dosyaNo').Index);
         gelisNo := Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('gelisNo').Index);
         HastaneRefNo := Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('HastaneRefNo').Index);
         islemRefNo := Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('islemRefNo').Index);
         sysTakipNo := varTostr(Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('sysTakipNo').Index));

         pnlDurumDurum.Caption := varTostr(Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('hastaAdi').Index)) ;
         pBar.Position := pBar.Position + 1;

         if talep <> ''
         Then begin
                 setlength(datalar.islemSiralari,1);
                 datalar.islemSiralari[0] :=  talep;

                 msg := HizmetKaydiIptal(takip);
                 if msg = '0000'
                 Then Begin
                    HizmetIptalSonucDBYaz;
                    txtLog.Lines.Add(takip + ' Takip Nolu ; ' + talep + ' Ýþlem Meduladan iptal edildi');
                   //Enabýzdan Sil
                    mesajTipi := 'Hizmet Sil';
                    ENabizHizmetSil(HastaneRefNo,sysTakipNo,eNabizSonuc,islemRefNo);
                    txtLog.Lines.Add(takip + ' Takip Nolu ; ' + talep + ' Ýþlem E-Nabýz Ýptal Sonuc :' + eNabizSonuc);
                    Liste.DataController.SetValue(satir,Liste.DataController.GetItemByFieldName('islemSiraNo').Index,'');

                  //  cxGrid_Seans.Dataset.Requery();
                    setlength(datalar.islemSiralari,0);
                 End
                 Else
                  txtLog.Lines.Add('Hata : ' + takip+ ' Takip Nolu ; '+ talep+ ' iþlem No iptal edilemedi ' + msg);
         End;

     end; // for end

   finally
     DurumGoster(False);
   end;

end;

procedure TfrmTopluSeans.gridHastalarGridHint(Sender: TObject; ARow,
  ACol: Integer; var hintstr: String);
begin
    hintstr := 'Takip No : ' + gridHastalar.Cells[15,arow] + ',' +
               'Branþ : ' + gridHastalar.Cells[11,arow] + ',' +
               'Doktor : ' + gridHastalar.Cells[9,arow] + ',' +
               ' Tc : ' +  gridHastalar.Cells[56,arow];

end;

procedure TfrmTopluSeans.FormShow(Sender: TObject);
begin
   inherited;
   gridHastalar.ColWidths[6] := 0;
   gridHastalar.ColWidths[7] := 0;
   gridHastalar.ColWidths[8] := 0;
   //txtDonem.Date := date;
  // txtDonem2.Date := date;
end;

procedure TfrmTopluSeans.HTTP1HTTPWebNode1BeforePost(
  const HTTPReqResp: THTTPReqResp; Data: Pointer);
var
  TimeOut : integer;
begin

      TimeOut := 20000; // in milleseconds.

      InternetSetOption(Data,
      INTERNET_OPTION_RECEIVE_TIMEOUT,
      Pointer(@TimeOut),
      SizeOf(TimeOut));

      InternetSetOption(Data,
      INTERNET_OPTION_SEND_TIMEOUT,
      Pointer(@TimeOut),
      SizeOf(TimeOut));

end;

procedure TfrmTopluSeans.KanAlinanSeansYap;
var
 sql , id , d,g , _Tarih_,doktor , yeniSiraNo : string;
// ado : TADOQuery;
 satir : integer;
begin
 satir := Liste.Controller.SelectedRows[0].RecordIndex;

// ado := TADOQuery.Create(nil);
// ado.Connection := datalar.ADOConnection2;

 yeniSiraNo := Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('yeniSiraNo').Index);

 id := Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('sirano').Index);
 d :=  Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('dosyaNo').Index);
 g := Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('gelisNo').Index);
 _Tarih_ := Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('Tarih').Index);
 doktor := Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('doktor').Index);


 try
   sql := 'exec sp_KanAlimSeansIsaretle @siraNo = ' + yeniSiraNo;

   (*
   sql := ' update hareketler set KanAlindimi = 0 where dosyaNo = ' + QuotedStr(d) +
          ' and gelisNo = ' + g +
          ' update hasta_gelisler set KanAlimZamani =  NULL ' +
          ' where dosyaNo = ' + QuotedStr(d) + ' and gelisNo = ' + g +
          ' update hareketler set kanAlindimi = 1 where siraNo = ' + yeniSiraNo +

          ' update hareketler set Tarih = ' + QuotedStr(tarih(_Tarih_)) +
          ',doktor = ' + QuotedStr(Doktor) +
          ' where dosyaNO = ' + QuotedStr(d) + ' and gelisNo = ' + g + ' and Tip = ''L'' ' +

          ' update hasta_gelisler set KanAlimZamani =  ' +  QuotedStr(tarih(_Tarih_)) +
          ' where dosyaNo = ' + QuotedStr(d) + ' and gelisNo = ' + g;
     *)

   datalar.QueryExec(sql);

   ShowMessageSkin('Kan Alýnan Seans Yapýldý','','','info');
 except on e : exception do
  begin
    ShowMessageSkin(e.Message,'','','info');
  end;
 end;

 //ado.Free;

end;

procedure TfrmTopluSeans.sBitBtn9Click(Sender: TObject);
var
  dosya : string;
begin

    SaveDialog1.FileName := 'topluSeans.xls';
    if SaveDialog1.Execute = True
    Then
      ExportGridToExcel(SaveDialog1.FileName,cxGrid_Seans ,False,True);


 // SaveDialog1.FileName := 'topluSeans.xls';
  //if SaveDialog1.Execute = True
  //Then
  //  AdvGridExcelIO1.XLSExport(SaveDialog1.FileName,'Seans Listesi');

end;

procedure TfrmTopluSeans.RaporOku;
var
 satir : integer;
begin
     {
    satir := Liste.Controller.SelectedRows[0].RecordIndex;

     dosyaNo := Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('dosyaNo').Index);
     gelisNo := Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('gelisNo').Index);

     Application.CreateForm(TfrmRaporDetay, frmRaporDetay);
     GorselAyar(frmRaporDetay,frmAna.global_img_list4);
     frmRaporDetay.Raporlar(dosyaNo,gelisNo,HastaBilgileri);

    (*
     if frmRaporDetay.ADO_RAPORLAR.Locate('raporNo',txtRaporNo.Text,[]) = False
     then begin
               frmRaporDetay.ADO_RAPORLAR.Append;
               frmRaporDetay.ADO_RAPORLAR.FieldByName('raporNo').AsString := txtRaporNo.Text;
               frmRaporDetay.ADO_RAPORLAR.FieldByName('verenTesisKodu').AsString := txtSevkEdenTesisKodu.Text;
               frmRaporDetay.ADO_RAPORLAR.FieldByName('raporTarihi').AsString := txtRaporTarihi.Text;
     end;
     *)

     frmRaporDetay.Showmodal;
     frmRaporDetay.Release;
     frmRaporDetay := nil;
     }
end;

procedure TfrmTopluSeans.SeansDuzenle;
var
  satir,durum : integer;
  Tarih , Talep,sql : string;
  Year, Month, Day: Word;
begin
  inherited;
  Datalar.SeansBilgi.dosyaNo := Liste.DataController.Dataset.FieldByName('dosyaNo').AsString;
  Datalar.SeansBilgi.gelisNo :=  Liste.DataController.Dataset.FieldByName('gelisNo').AsString;
 // Datalar.SeansBilgi.hizmetSunucuRefNo := Liste.DataController.Dataset.FieldByName('siraNo').AsString;
  Datalar.SeansBilgi.yeniSiraNo := Liste.DataController.Dataset.FieldByName('yeniSiraNo').AsString;

  Datalar.SeansBilgi.hizmetSunucuRefNo := Liste.DataController.Dataset.FieldByName('islemRefNo').AsString;
  Datalar.SeansBilgi.islemTarihi := Liste.DataController.Dataset.FieldByName('Tarih').AsString;
  Datalar.SeansBilgi.doktor := Liste.DataController.Dataset.FieldByName('Doktor').AsString;
  Datalar.SeansBilgi.hemsire := Liste.DataController.Dataset.FieldByName('hemsire').AsString;
  Datalar.SeansBilgi.raporTakipNo := Liste.DataController.Dataset.FieldByName('raporTakipNo').AsString;
  Datalar.SeansBilgi.DiyalizorCinsi := Liste.DataController.Dataset.FieldByName('DiyalizorCinsi').AsString;
  Datalar.SeansBilgi.DiyalizorTipi := Liste.DataController.Dataset.FieldByName('DiyalizorTipi').AsString;
  Datalar.SeansBilgi.Diyalizor := Liste.DataController.Dataset.FieldByName('DIYALIZOR').AsString;
  Datalar.SeansBilgi.Diyalizat := Liste.DataController.Dataset.FieldByName('D').AsString;
  Datalar.SeansBilgi.HeparinTip := Liste.DataController.Dataset.FieldByName('HEPARINTIP').AsString;
  Datalar.SeansBilgi.Heparin := Liste.DataController.Dataset.FieldByName('HEPARIN').AsString;
  Datalar.SeansBilgi.HeparinUyg := Liste.DataController.Dataset.FieldByName('HEPARINUYG').AsString;
  Datalar.SeansBilgi.YA := Liste.DataController.Dataset.FieldByName('YA').AsString;
  Datalar.SeansBilgi.APH := Liste.DataController.Dataset.FieldByName('APH').AsString;
  Datalar.SeansBilgi.MakinaNo := Liste.DataController.Dataset.FieldByName('MakinaNo').AsString;
  Datalar.SeansBilgi.Seans := Liste.DataController.Dataset.FieldByName('Seans').AsString;
  Datalar.SeansBilgi.SeansSure := Liste.DataController.Dataset.FieldByName('DIYALIZSURESI').AsString;
  Datalar.SeansBilgi.KanAlimi := Liste.DataController.Dataset.FieldByName('KanAlindimi').AsInteger;
  Datalar.SeansBilgi.GirisYolu := Liste.DataController.Dataset.FieldByName('GIRISYOLU').AsString;
  datalar.SeansBilgi.Enfeksiyon := Liste.DataController.Dataset.FieldByName('GIRISYOLU_ENF').AsString;

  Datalar.SeansBilgi.HCOOO := Liste.DataController.Dataset.FieldByName('HCOOO').AsString;
  Datalar.SeansBilgi.Na := Liste.DataController.Dataset.FieldByName('Na').AsString;
  Datalar.SeansBilgi.Igne := Liste.DataController.Dataset.FieldByName('Igne').AsString;
  Datalar.SeansBilgi.IgneV := Liste.DataController.Dataset.FieldByName('IgneV').AsString;
  Datalar.SeansBilgi.Kilo := Liste.DataController.Dataset.FieldByName('IdealKilo').AsString;
  Datalar.SeansBilgi.girisKilo := Liste.DataController.Dataset.FieldByName('GIRISKILO').AsString;
  Datalar.SeansBilgi.cikisKilo := Liste.DataController.Dataset.FieldByName('CIKISKILO').AsString;
  Datalar.SeansBilgi.OncekiCikisKilo := Liste.DataController.Dataset.FieldByName('OncekiCikisKilo').AsString;
  Datalar.SeansBilgi.CekilecekSivi := Liste.DataController.Dataset.FieldByName('CEKILECEKSIVI').AsString;
  Datalar.SeansBilgi.VerilecekSivi := Liste.DataController.Dataset.FieldByName('verilecekSivi').AsString;
  Datalar.SeansBilgi.AldigiKilo := Liste.DataController.Dataset.FieldByName('aldigiKilo').AsString;
  Datalar.SeansBilgi.UF := Liste.DataController.Dataset.FieldByName('UF').AsString;
  Datalar.SeansBilgi.Durum := Liste.DataController.Dataset.FieldByName('Durum').AsInteger;
  Datalar.SeansBilgi.hemsireNot := Liste.DataController.Dataset.FieldByName('hekimGozlemDdiger').AsString;
  Datalar.SeansBilgi.doktorNot := Liste.DataController.Dataset.FieldByName('hekimGozlemD').AsString;

  Datalar.SeansBilgi.islemSiraNo := Liste.DataController.Dataset.FieldByName('islemSiraNo').AsString;
  Datalar.SeansBilgi.yas := Liste.DataController.Dataset.FieldByName('YAs').AsInteger;

  datalar.SeansBilgi.SeansCaption := Liste.DataController.Dataset.FieldByName('hastaAdi').AsString +
                                    ' - [' + Datalar.SeansBilgi.hizmetSunucuRefNo + ']' ;

  if (durum = 0) and (Talep = '')
  then begin
    if mrYes = ShowPopupForm('Seans Duzenle',SeansTarihiUpdate,Datalar.SeansBilgi.dosyaNo)
    Then BEgin
       Application.ProcessMessages;
       if  talep = ''
       then begin
          sql := 'update Hareketler set ' +
                 'Tarih = ' +  QuotedStr(NoktasizTarih(Datalar.SeansBilgi.islemTarihi)) +
                 ',Doktor = ' +  QuotedStr(Datalar.SeansBilgi.doktor) +
                 ',hemsire = ' + QuotedStr(Datalar.SeansBilgi.hemsire) +
                 ',raporTakipNo = ' + QuotedStr(Datalar.SeansBilgi.raporTakipNo) +
                 ',DiyalizorCinsi = ' +  QuotedStr(Datalar.SeansBilgi.DiyalizorCinsi) +
                 ',DiyalizorTipi = ' +  QuotedStr(Datalar.SeansBilgi.DiyalizorTipi) +
                 ',DIYALIZOR = ' +  QuotedStr(Datalar.SeansBilgi.Diyalizor) +
                 ',D = ' +  QuotedStr(Datalar.SeansBilgi.Diyalizat) +
                 ',HEPARINTIP = ' +  QuotedStr(Datalar.SeansBilgi.HeparinTip) +
                 ',HEPARIN = ' +  QuotedStr(Datalar.SeansBilgi.Heparin) +
                 ',HEPARINUYG = ' +  QuotedStr(Datalar.SeansBilgi.HeparinUyg) +
                 ',YA = ' +  QuotedStr(Datalar.SeansBilgi.YA) +
                 ',APH = ' +  QuotedStr(Datalar.SeansBilgi.APH) +
                 ',MakinaNo = ' +  QuotedStr(Datalar.SeansBilgi.MakinaNo) +
                 ',Seans = ' +  QuotedStr(Datalar.SeansBilgi.Seans) +
                 ',DIYALIZSURESI = ' +  QuotedStr(Datalar.SeansBilgi.SeansSure) +
                 ',KanAlindimi = ' +  intToStr(Datalar.SeansBilgi.KanAlimi) +
                 ',IdealKilo = ' +  QuotedStr(Datalar.SeansBilgi.Kilo) +
                 ',GIRISKILO = ' +  QuotedStr(Datalar.SeansBilgi.girisKilo) +
                 ',CIKISKILO = ' +  QuotedStr(Datalar.SeansBilgi.cikisKilo) +
                 ',GIRISYOLU = ' +  QuotedStr(Datalar.SeansBilgi.GirisYolu) +
                 ',GIRISYOLU_ENF = ' +  QuotedStr(Datalar.SeansBilgi.Enfeksiyon) +
                 ',aldigiKilo = ' +  QuotedStr(Datalar.SeansBilgi.AldigiKilo) +
                 ',CEKILECEKSIVI = ' +  QuotedStr(Datalar.SeansBilgi.CekilecekSivi) +
                 ',verilecekSivi = ' +  QuotedStr(Datalar.SeansBilgi.VerilecekSivi) +
                 ',UF = ' +  QuotedStr(Datalar.SeansBilgi.UF) +
                 ',HCOOO = ' +  QuotedStr(Datalar.SeansBilgi.HCOOO) +
                 ',Na = ' +  QuotedStr(Datalar.SeansBilgi.Na) +
                 ',Igne = ' +  QuotedStr(Datalar.SeansBilgi.Igne) +
                 ',IgneV = ' +  QuotedStr(Datalar.SeansBilgi.IgneV) +
                 ',Durum = ' +  intToStr(Datalar.SeansBilgi.Durum) +
                 ',hekimgozlemDdiger = ' + QuotedStr(datalar.SeansBilgi.hemsireNot) +
                 ' where siraNo = ' + Datalar.SeansBilgi.yeniSiraNo;

          datalar.QueryExec(sql);

                 if MrYes = ShowMessageSkin('Deðiþiklikler Gelecek Seanslara da uygulansýn mý?','','','msg')
                 then begin

            sql:=  ' update Hareketler set raporTakipNo = ' + QuotedStr(Datalar.SeansBilgi.raporTakipNo) +
                   ',DiyalizorCinsi = ' +  QuotedStr(Datalar.SeansBilgi.DiyalizorCinsi) +
                   ',DiyalizorTipi = ' +  QuotedStr(Datalar.SeansBilgi.DiyalizorTipi) +
                   ',DIYALIZOR = ' +  QuotedStr(Datalar.SeansBilgi.Diyalizor) +
                   ',YA = ' +  QuotedStr(Datalar.SeansBilgi.YA) +
                   ',APH = ' +  QuotedStr(Datalar.SeansBilgi.APH) +
                   ',Igne = ' +  QuotedStr(Datalar.SeansBilgi.Igne) +
                   ',IgneV = ' +  QuotedStr(Datalar.SeansBilgi.IgneV) +
                   ',D = ' +  QuotedStr(Datalar.SeansBilgi.Diyalizat) +
                   ',HEPARINTIP = ' +  QuotedStr(Datalar.SeansBilgi.HeparinTip) +
                   ',HEPARIN = ' +  QuotedStr(Datalar.SeansBilgi.Heparin) +
                   ',HEPARINUYG = ' +  QuotedStr(Datalar.SeansBilgi.HeparinUyg) +
                   ',Doktor = ' +  QuotedStr(Datalar.SeansBilgi.doktor) +
                   ',MakinaNo = ' +  QuotedStr(Datalar.SeansBilgi.MakinaNo) +
                   ',UF = ' +  QuotedStr(Datalar.SeansBilgi.UF) +
                   ',HCOOO = ' +  QuotedStr(Datalar.SeansBilgi.HCOOO) +
                   ',Na = ' +  QuotedStr(Datalar.SeansBilgi.Na) +
                   ',GIRISYOLU = ' +  QuotedStr(Datalar.SeansBilgi.GirisYolu) +
                   ',IdealKilo = ' +  QuotedStr(Datalar.SeansBilgi.Kilo) +
                   ' where dosyaNo = ' + QuotedStr(Datalar.SeansBilgi.dosyaNo) +
                   ' and gelisNo = ' + Datalar.SeansBilgi.gelisNo + ' and Durum = 0 and Tip = ''S''';

                     datalar.QueryExec(sql);
                 end;

          TADODataSet(Liste.DataController.Dataset).Requery();
          ADO_Detay_toplam.Requery();
       end;
    End;
  end;
end;


procedure TfrmTopluSeans.ADOQuery1AfterPost(DataSet: TDataSet);
var
  ado : TADOQuery;
  sql : string;
  bk : Tbookmark;
begin

//  if Datalar.AdoConnection2.InTransaction
 // Then Datalar.AdoConnection2.CommitTrans;

//  bk := ADOQuery1.Bookmark;
//  ADOQuery1.Requery();
//  ADOQuery1.GotoBookmark(bk);
end;

procedure TfrmTopluSeans.ADOQuery1BeforePost(DataSet: TDataSet);
var
  sql : string;
  satir : integer;
begin
  inherited;

  //  satir := Liste.Controller.SelectedRows[0].RecordIndex;
(*
    ADOQuery1.FieldByName('obje').AsString := 'Toplu_seans_isle_Adoquery1';

    sql := 'select dbo.fn_P704230Count(' + QuotedStr(tarihal(txtDonem.Date)) + ') t';
    datalar.QuerySelect(ado,sql);

    if not ado.Eof
    then
      if ADOQuery1.FieldByName('HemodiyalizTip').AsString <> 'E'
      Then
        if ado.Fields[0].AsInteger >= 700
        then begin
          ADOQuery1.FieldByName('HemodiyalizTip').AsString := '7';
        //  Liste.DataController.SetValue(satir,Liste.DataController.GetItemByFieldName('HemodiyalizTip').Index,'7');
        end
        else begin
          ADOQuery1.FieldByName('HemodiyalizTip').AsString := 'M';
         // Liste.DataController.SetValue(satir,Liste.DataController.GetItemByFieldName('HemodiyalizTip').Index,'M');
        end;
  *)

end;

procedure TfrmTopluSeans.ADO_ListAfterScroll(DataSet: TDataSet);
var
 HastaneRefNo : string;
begin
 if DatasetOpen = True
 then begin
     HastaneRefNo := ADO_List.FieldByName('SIRANO').AsString;
     try
      datalar.QuerySelect(ADO_Tetkikler,
                          'exec sp_TopluTetkikGetir ' + txtTopPanelTarih1.GetSQLValue  + ',' +
                                                        txtTopPanelTarih1.GetSQLValue  + ',' +
                                                        QuotedStr('') + ',' +
                                                        QuotedStr('1') + ',' +
                                                        QuotedStr(HastaneRefNo));

      datalar.QuerySelect(ADO_Malzeme,
                          'exec sp_TopluTetkikGetir ' + txtTopPanelTarih1.GetSQLValue  + ',' +
                                                        txtTopPanelTarih1.GetSQLValue  + ',' +
                                                        QuotedStr('') + ',' +
                                                        QuotedStr('2') + ',' +
                                                        QuotedStr(HastaneRefNo));
     except on e : Exception do
      begin
        ShowMessageSkin(e.Message,'','','info');
      end;

     end;
 end;
end;

procedure TfrmTopluSeans.T2Click(Sender: TObject);
var
  mesajTipi,HastaneRefNo,eNabizSonuc,islemRefNo,islemRefNos,sysTakipNo,_d_,_g_ : string;
  _row_ ,satir ,adet : integer;
  F : TGirisForm;
  GirisFormRecord : TGirisFormRecord;
begin
  satir := GridList.Controller.SelectedRows[0].RecordIndex;
  _d_ := GridList.DataController.GetValue(satir,GridList.DataController.GetItemByFieldName('dosyaNo').Index);
  _g_ := GridList.DataController.GetValue(satir,GridList.DataController.GetItemByFieldName('gelisNo').Index);
  HastaneRefNo := varToStr(GridList.DataController.GetValue(satir,GridList.DataController.GetItemByFieldName('HastaneRefNo').Index));
  sysTakipNo :=  varToStr(GridList.DataController.GetValue(satir,GridList.DataController.GetItemByFieldName('SYSTakipNo').Index));

  GirisFormRecord.F_TakipNo_ := varToStr(GridList.DataController.GetValue(satir,GridList.DataController.GetItemByFieldName('TakipNo').Index));

  if TmenuItem(sender).Tag = -9
  then begin
     F := FormINIT(TagfrmTakipBilgisiOku,GirisFormRecord);
     if F <> nil then F.ShowModal;

  end;

   if TmenuItem(sender).Tag = MedulaSil
   then
   for _row_ := 0 to GridTetkikler.Controller.SelectedRowCount - 1 do
   begin
       Application.ProcessMessages;
       satir := GridTetkikler.Controller.SelectedRows[_row_].RecordIndex;
       adet :=  GridTetkikler.DataController.GetValue(satir,GridTetkikler.DataController.GetItemByFieldName('adet').Index);
       islemRefNo := GridTetkikler.DataController.GetValue(satir,GridTetkikler.DataController.GetItemByFieldName('SIRANO').Index);
       islemRefNos :=  islemRefNos + ifThen(islemRefNos = '','',',') + islemRefNo;
   end;

   if TmenuItem(sender).Tag = MedulaSilMAlzeme
   then
   for _row_ := 0 to GridMalzeme.Controller.SelectedRowCount - 1 do
   begin
       Application.ProcessMessages;
       satir := GridMalzeme.Controller.SelectedRows[_row_].RecordIndex;
       adet :=  GridMalzeme.DataController.GetValue(satir,GridMalzeme.DataController.GetItemByFieldName('adet').Index);
       islemRefNo := GridMalzeme.DataController.GetValue(satir,GridMalzeme.DataController.GetItemByFieldName('SIRANO').Index);
       islemRefNos :=  islemRefNos + ifThen(islemRefNos = '','',',') + islemRefNo;
   end;

  pnlDurumOk;

  try
  case TmenuItem(sender).Tag of
   MedulaKaydet :
     begin
       TetkikleriMedulaKaydetSil(MedulaKaydet);
     end;
   MedulaKaydetMalzeme :
     begin
       MalzemeMedulaKaydetSil(MedulaKaydetMalzeme);
     end;
   MedulaSil :
     begin
       TetkikleriMedulaKaydetSil(MedulaSil);
     end;
   MedulaSilMalzeme :
     begin
       MalzemeMedulaKaydetSil(MedulaSilMalzeme);
     end;
  MedulaTaniKaydet :
     begin
       TanilariMedulaKaydetSil(0);
     end;

  SysTakipSorgula :
     begin
       SysTakipNoSorgula(sysTakipNo,eNabizSonuc);
     end;
  SysTakipSgkBildirimSorgula :
     begin
         datalar.Login;
         ShowMessageSkin(
           SGKHizmetSorgulama(datalar._userSaglikNet2_,DATALAR._passSaglikNet2_,sysTakipNo,'',ktsHbysKodu),
         '','','info');
     end;
  ENabizKaydet :
     begin
        TetkikleriENabizaKaydetSil(ENabizKaydet);

     end;
  ENabizKaydetMalzeme :
     begin
        TetkikleriENabizaKaydetSil(ENabizKaydetMalzeme);
     end;

   ENabizSil :
     begin
         mesajTipi := 'Hizmet Sil';
         for _row_ := 0 to GridTetkikler.Controller.SelectedRowCount - 1 do
         begin
             Application.ProcessMessages;
             satir := GridTetkikler.Controller.SelectedRows[_row_].RecordIndex;
             islemRefNo := varToStr(GridTetkikler.DataController.GetValue(satir,GridTetkikler.DataController.GetItemByFieldName('SIRANO').Index));
           //  islemRefNos :=  islemRefNos + ifThen(islemRefNos = '','',',') + islemRefNo;

             ENabizHizmetSil(HastaneRefNo,sysTakipNo,eNabizSonuc,islemRefNo);
             txtLog.Lines.Add(islemRefNo + ' : ' + eNabizSonuc);
         end;
     end;

   ENabizSilMalzeme :
   begin
       mesajTipi := 'Hizmet Sil';
       for _row_ := 0 to GridMalzeme.Controller.SelectedRowCount - 1 do
       begin
           Application.ProcessMessages;
           satir := GridMalzeme.Controller.SelectedRows[_row_].RecordIndex;
           islemRefNo := GridMalzeme.DataController.GetValue(satir,GridMalzeme.DataController.GetItemByFieldName('SIRANO').Index);
           //islemRefNos :=  islemRefNos + ifThen(islemRefNos = '','',',') + islemRefNo;

           ENabizHizmetSil(HastaneRefNo,sysTakipNo,eNabizSonuc,islemRefNo);
           txtLog.Lines.Add(islemRefNo + ' : ' + eNabizSonuc);
       end;

   end;

  end;

  finally
    pnlDurum.Visible := false;
  end;

end;



procedure TfrmTopluSeans.TetkikleriENabizaKaydetSil(_tag_ : integer);
var
   sql : string;
   mesajTipi,HastaneRefNo,eNabizSonuc,islemRefNo,islemRefNos,sysTakipNo : string;
   _d_,_g_,sonuc,TakipNo,BasvuruNo,islemSiraNo,msg : string;
   _row_ ,satir ,adet,_msg_ ,i: integer;
begin
   DurumGoster(True,True);
   pBar.Properties.Max := GridList.Controller.SelectedRowCount;
   pBar.Position := 0;

   try
     for _row_ := 0 to GridList.Controller.SelectedRowCount - 1 do
     begin
           satir := GridList.Controller.SelectedRows[_row_].RecordIndex;
           dosyaNo := GridList.DataController.GetValue(satir,GridList.DataController.GetItemByFieldName('dosyaNo').Index);
           gelisNo := GridList.DataController.GetValue(satir,GridList.DataController.GetItemByFieldName('gelisNo').Index);
           HastaneRefNo := GridList.DataController.GetValue(satir,GridList.DataController.GetItemByFieldName('hastaneRefNo').Index);
           TakipNo := GridList.DataController.GetValue(satir,GridList.DataController.GetItemByFieldName('TakipNo').Index);
           BasvuruNo := GridList.DataController.GetValue(satir,GridList.DataController.GetItemByFieldName('basvuruNo').Index);
           sysTakipNo := GridList.DataController.GetValue(satir,GridList.DataController.GetItemByFieldName('sysTakipNo').Index);

           if _tag_ = ENabizKaydet then
           begin
               mesajTipi := 'Hizmet Kayýt';
               ENabizHizmetKayit(HastaneRefNo,sysTakipNo,eNabizSonuc,'','T');
               txtLog.Lines.Add(eNabizSonuc);
            End;

           if _tag_ = ENabizKaydetMalzeme then
           begin
               mesajTipi := 'Hizmet Kayýt';
               ENabizHizmetKayit(HastaneRefNo,sysTakipNo,eNabizSonuc,'','I');
               txtLog.Lines.Add(eNabizSonuc);
            End;

            sleep(2000);
            pBar.Position := pBar.Position + 1;
     end; // for end

   finally
     DurumGoster(False);
   end;
end;



procedure TfrmTopluSeans.TetkikleriMedulaKaydetSil(_tag_ : integer);
var
   sql : string;
   ameliyatveGirisim : Array_Of_AmeliyatveGirisimBilgisiDVO;
   digerIslemBilgileri : Array_Of_DigerIslemBilgisiDVO;
   disBilgileri : Array_Of_DisBilgisiDVO;
   IlacBilgileri : Array_Of_IlacBilgisiDVO;
   KonsiltasyonBilgisi :  Array_Of_KonsultasyonBilgisiDVO;
   malzemeBilgisi : Array_Of_MalzemeBilgisiDVO;
   muayeneBilgisi : MuayeneBilgisiDVO;
   tahlilBilgileri : Array_Of_TahlilBilgisiDVO;
   tanilar : Array_Of_TaniBilgisiDVO;
   tetkikveRadyoloji : Array_Of_TetkikveRadyolojiBilgisiDVO;
   yatisBilgisi : Array_Of_HastaYatisBilgisiDVO;
   KayitliIslem : Array_Of_KayitliIslemBilgisiDVO;
   HataliIslem : TStringList;
   hatali : TStringList;
   mesajTipi,HastaneRefNo,eNabizSonuc,islemRefNo,islemRefNos,sysTakipNo : string;
   _d_,_g_,sonuc,TakipNo,BasvuruNo,islemSiraNo,msg,islemSiraNos : string;
   _row_ ,satir ,adet,_msg_ ,i , hizmetOk,tetkikOk,radOk: integer;
   kanalindimi : string;
begin

   DurumGoster(True,True);
   pBar.Properties.Max := GridList.Controller.SelectedRowCount;
   pBar.Position := 0;
   kanalindimi := '0';
   try
     for _row_ := 0 to GridList.Controller.SelectedRowCount - 1 do
     begin
           satir := GridList.Controller.SelectedRows[_row_].RecordIndex;
           dosyaNo := GridList.DataController.GetValue(satir,GridList.DataController.GetItemByFieldName('dosyaNo').Index);
           gelisNo := GridList.DataController.GetValue(satir,GridList.DataController.GetItemByFieldName('gelisNo').Index);
           HastaneRefNo := varToStr(GridList.DataController.GetValue(satir,GridList.DataController.GetItemByFieldName('hastaneRefNo').Index));
           TakipNo := varToStr(GridList.DataController.GetValue(satir,GridList.DataController.GetItemByFieldName('TakipNo').Index));
           BasvuruNo := varToStr(GridList.DataController.GetValue(satir,GridList.DataController.GetItemByFieldName('basvuruNo').Index));
           sysTakipNo := varToStr(GridList.DataController.GetValue(satir,GridList.DataController.GetItemByFieldName('sysTakipNo').Index));
           islemSiraNo := varToStr(GridList.DataController.GetValue(satir,GridList.DataController.GetItemByFieldName('sysTakipNo').Index));
           kanalindimi := varToStr(GridList.DataController.GetValue(satir,GridList.DataController.GetItemByFieldName('KanAlindimi').Index));
           hizmetOk := 0; tetkikOk := 0; radOk := 0;

           if kanalindimi = '0'
           then begin
             txtLog.Lines.Add('Medula Hizmet Kayýt : ' + takipno + ' - Kan Alým Zamaný Bulunamadý , Kan alýnan seans belirtilmemiþ');
             Continue;
           end;


           if _tag_ = MedulaKaydet then
           begin
                 if datalar.eNabizKayit = 'Evet'
                 then begin
                        mesajTipi := 'Hizmet Kayýt';
                        ENabizHizmetKayit(HastaneRefNo,sysTakipNo,eNabizSonuc,islemRefNo,'L');
                        txtLog.Lines.Add('ENabýz Hizmet Kayýt : ' + sysTakipNo + '-' + eNabizSonuc);
                        if copy(eNabizSonuc,1,5) = 'S0000' then hizmetOk := 1;

                        ENabizTetkikKayit(HastaneRefNo,sysTakipNo,eNabizSonuc,'');
                        txtLog.Lines.Add('ENabýz TetkikSonuc : ' + sysTakipNo + '-' + eNabizSonuc);
                        if copy(eNabizSonuc,1,5) = 'S0000' then tetkikOk := 1;

                        ENabizRadyolojiKayit(HastaneRefNo,sysTakipNo,eNabizSonuc);
                        txtLog.Lines.Add('ENabýz RadyolojiSonuc : ' + sysTakipNo + '-' + eNabizSonuc);
                        if copy(eNabizSonuc,1,5) = 'S0000' then radOk := 1;

                        if (hizmetOk * tetkikOk * radOk) = 1
                        then begin
                          HizmetKayitVeriSeti(takipNo,BasvuruNo, 'D','G','LR','',sonuc);
                         // HizmetKayitVeriSeti(takipNo,BasvuruNo, 'D','G','R','',sonuc);
                        end;
                 end
                 else begin
                    HizmetKayitVeriSeti(takipNo,BasvuruNo, 'D','G','LR','',sonuc);
                  //  HizmetKayitVeriSeti(takipNo,BasvuruNo, 'D','G','R','',sonuc);
                 end;
                 txtLog.Lines.Add('Medula Hizmet Kayýt : ' + takipno + '-' + sonuc);
            End; // if MedulaKaydet



           if _tag_ = MedulaSil then
           begin
               TakipNoHizmetIslemSiraNo(TakipNo,'L');
               if Length(datalar.islemSiralari) > 0
               then begin
                   msg := HizmetKaydiIptal(TakipNo);
                   txtLog.Lines.Add('Medula Ýptal : ' + msg);
                   if msg = '0000'
                   Then Begin
                      HizmetIptalSonucDBYaz;
                      setlength(datalar.islemSiralari,0);
                     ///// -- ENabiz Sil -- ////
                      islemSiraNos :=  TakipNoTetkikIslemRefNo(TakipNo,'L');
                      mesajTipi := 'Hizmet Sil';
                      ENabizHizmetSil(HastaneRefNo,sysTakipNo,eNabizSonuc,islemSiraNos);
                      txtLog.Lines.Add(eNabizSonuc + ' Silinen Hizmetler : ' + islemSiraNos);
                   End
                   Else
                    txtLog.Lines.Add('Tetkikler Meduladan Ýptal edilemedi : ' + msg);
               end
               else
                  txtLog.Lines.Add('islemSiraNo Boþ');
           end;

           // sleep(1000);
            pBar.Position := pBar.Position  + 1;
     end; // for end


   finally
     DurumGoster(False);
   end;

end;



procedure TfrmTopluSeans.TanilariMedulaKaydetSil(_tag_ : integer);
var
   sql : string;
   ameliyatveGirisim : Array_Of_AmeliyatveGirisimBilgisiDVO;
   digerIslemBilgileri : Array_Of_DigerIslemBilgisiDVO;
   disBilgileri : Array_Of_DisBilgisiDVO;
   IlacBilgileri : Array_Of_IlacBilgisiDVO;
   KonsiltasyonBilgisi :  Array_Of_KonsultasyonBilgisiDVO;
   malzemeBilgisi : Array_Of_MalzemeBilgisiDVO;
   muayeneBilgisi : MuayeneBilgisiDVO;
   tahlilBilgileri : Array_Of_TahlilBilgisiDVO;
   tanilar : Array_Of_TaniBilgisiDVO;
   tetkikveRadyoloji : Array_Of_TetkikveRadyolojiBilgisiDVO;
   yatisBilgisi : Array_Of_HastaYatisBilgisiDVO;
   KayitliIslem : Array_Of_KayitliIslemBilgisiDVO;
   HataliIslem : TStringList;
   hatali : TStringList;
   mesajTipi,HastaneRefNo,eNabizSonuc,islemRefNo,islemRefNos,sysTakipNo : string;
   _d_,_g_,sonuc,TakipNo,BasvuruNo,islemSiraNo,msg,islemSiraNos : string;
   _row_ ,satir ,adet,_msg_ ,i , hizmetOk,tetkikOk,radOk: integer;
begin

   DurumGoster(True,True);
   pBar.Properties.Max := GridList.Controller.SelectedRowCount;
   pBar.Position := 0;

   try
     for _row_ := 0 to GridList.Controller.SelectedRowCount - 1 do
     begin
           satir := GridList.Controller.SelectedRows[_row_].RecordIndex;
           dosyaNo := GridList.DataController.GetValue(satir,GridList.DataController.GetItemByFieldName('dosyaNo').Index);
           gelisNo := GridList.DataController.GetValue(satir,GridList.DataController.GetItemByFieldName('gelisNo').Index);
           HastaneRefNo := varToStr(GridList.DataController.GetValue(satir,GridList.DataController.GetItemByFieldName('hastaneRefNo').Index));
           TakipNo := varToStr(GridList.DataController.GetValue(satir,GridList.DataController.GetItemByFieldName('TakipNo').Index));
           BasvuruNo := varToStr(GridList.DataController.GetValue(satir,GridList.DataController.GetItemByFieldName('basvuruNo').Index));
           sysTakipNo := varToStr(GridList.DataController.GetValue(satir,GridList.DataController.GetItemByFieldName('sysTakipNo').Index));
           islemSiraNo := varToStr(GridList.DataController.GetValue(satir,GridList.DataController.GetItemByFieldName('sysTakipNo').Index));
           hizmetOk := 0; tetkikOk := 0; radOk := 0;
           if _tag_ = MedulaKaydet then
           begin
                 HizmetKayitVeriSeti(takipNo,BasvuruNo, 'D','G','T','',sonuc);
                 txtLog.Lines.Add('Medula Hizmet Kayýt : ' + takipno + '-' + sonuc);
            End; // if MedulaKaydet

          (*

           if _tag_ = MedulaSil then
           begin
               TakipNoHizmetIslemSiraNo(TakipNo,'L');
               if Length(datalar.islemSiralari) > 0
               then begin
                   msg := HizmetKaydiIptal(TakipNo);
                   txtLog.Lines.Add('Medula Ýptal : ' + msg);
                   if msg = '0000'
                   Then Begin
                      HizmetIptalSonucDBYaz;
                      setlength(datalar.islemSiralari,0);
                     ///// -- ENabiz Sil -- ////
                      islemSiraNos :=  TakipNoTetkikIslemRefNo(TakipNo,'L');
                      mesajTipi := 'Hizmet Sil';
                      ENabizHizmetSil(HastaneRefNo,sysTakipNo,eNabizSonuc,islemSiraNos);
                      txtLog.Lines.Add(eNabizSonuc + ' Silinen Hizmetler : ' + islemSiraNos);
                   End
                   Else
                    txtLog.Lines.Add('Tetkikler Meduladan Ýptal edilemedi : ' + msg);
               end
               else
                  txtLog.Lines.Add('islemSiraNo Boþ');
           end;
          *)
            sleep(1000);
            pBar.Position := pBar.Position  + 1;
     end; // for end


   finally
     DurumGoster(False);
   end;

end;


procedure TfrmTopluSeans.MalzemeMedulaKaydetSil(_tag_ : integer);
var
   sql : string;
   hatali : TStringList;
   mesajTipi,HastaneRefNo,eNabizSonuc,islemRefNo,islemRefNos,sysTakipNo : string;
   _d_,_g_,sonuc,TakipNo,BasvuruNo,islemSiraNo,msg,islemSiraNos : string;
   _row_ ,satir ,adet,_msg_ ,i: integer;
begin

   for _row_ := 0 to GridList.Controller.SelectedRowCount - 1 do
   begin
         satir := GridList.Controller.SelectedRows[_row_].RecordIndex;
         dosyaNo := GridList.DataController.GetValue(satir,GridList.DataController.GetItemByFieldName('dosyaNo').Index);
         gelisNo := GridList.DataController.GetValue(satir,GridList.DataController.GetItemByFieldName('gelisNo').Index);
         HastaneRefNo := GridList.DataController.GetValue(satir,GridList.DataController.GetItemByFieldName('hastaneRefNo').Index);
         TakipNo := GridList.DataController.GetValue(satir,GridList.DataController.GetItemByFieldName('TakipNo').Index);
         BasvuruNo := GridList.DataController.GetValue(satir,GridList.DataController.GetItemByFieldName('basvuruNo').Index);
         sysTakipNo := GridList.DataController.GetValue(satir,GridList.DataController.GetItemByFieldName('sysTakipNo').Index);

         if _tag_ = MedulaKaydetMalzeme then
         begin
            //   if eNabizKayit = 1
            //   then begin
                 mesajTipi := 'Hizmet Kayýt';
                 ENabizHizmetKayit(HastaneRefNo,sysTakipNo ,eNabizSonuc,'','I');
                 txtLog.Lines.Add(eNabizSonuc);
                      if copy(eNabizSonuc,1,5) = 'S0000'
                      then begin
                         HizmetKayitVeriSeti(takipNo,BasvuruNo, 'D','G','MLZM','',sonuc);
                         txtLog.Lines.Add(takipNo + ' - ' + sonuc);
                      end;


           //    end;




                     sleep(2000);


          End; // if MedulaKaydet


         if _tag_ = MedulaSilMalzeme then
         begin
             TakipNoHizmetIslemSiraNo(TakipNo,'I');

             if Length(datalar.islemSiralari) > 0
             then begin
                 msg := HizmetKaydiIptal(TakipNo);
                 if msg = '0000'
                 Then Begin
                    for islemSiraNo in datalar.islemSiralari do
                    begin
                      sql := 'update hareketler set islemSiraNo = ' + QuotedStr('') +
                             ' where islemSiraNo = ' + islemSiraNo;
                       datalar.QueryExec(ado,sql);
                    end;
                    txtLog.Lines.Add('Malzeme Meduladan Ýptal edildi');
                    setlength(datalar.islemSiralari,0);

                 //  if eNabizKayit = 1
                 //  then begin
                     ///// -- ENabiz Sil -- ////
                     islemSiraNos :=  TakipNoTetkikIslemRefNo(TakipNo,'M');
                     mesajTipi := 'Hizmet Sil';
                     ENabizHizmetSil(HastaneRefNo,sysTakipNo,eNabizSonuc,islemSiraNos);
                     txtLog.Lines.Add(eNabizSonuc + ' Silinen Malzeme : ' + islemSiraNos);
                //   end;

                 End
                 Else
                  txtLog.Lines.Add('Malzeme Meduladan Ýptal edilemedi : ' + msg);
             end
             else
               txtLog.Lines.Add('islemSiraNo Boþ');

         end;

          sleep(2000);
   end; // for end


end;





procedure TfrmTopluSeans.TahlilSonulari;
var
  hasta,dosyaNo,gelisNo : string;
  satir : integer;
begin
     satir := Liste.Controller.SelectedRows[0].RecordIndex;

     hasta := Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('hastaAdi').Index);
     dosyaNo := Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('dosyaNo').Index);
     gelisNo := Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('gelisNo').Index);

     Application.CreateForm(TfrmTahlilsonucGir, frmTahlilsonucGir);
     frmTahlilsonucGir.HastaSonuc(dosyaNo,gelisNo,hasta);
     frmTahlilsonucGir.ShowModal;
     frmTahlilsonucGir := nil;
end;

procedure TfrmTopluSeans.SeansDetayToplamlarnGizle1Click(Sender: TObject);
begin
 pnlOnay.Visible := false;
end;

procedure TfrmTopluSeans.SeansDetayToplamlarnGster1Click(Sender: TObject);
begin
  if pnlOnay.Visible = True
  then begin
    pnlOnay.Visible := False;
    exit;
  end
  else
  begin
     pnlOnay.Visible := True;
     exit;
  end;


  pnlOnay.Visible := True;
end;

procedure TfrmTopluSeans.SeansGozlem;
var
  satir   : integer;
  _tarih_ , doktor , sira : string;
begin
     (*
       satir := Liste.Controller.SelectedRows[0].RecordIndex;

       sira := Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('sirano').Index);
       dosyaNo := Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('dosyaNo').Index);
       gelisNo := Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('gelisNo').Index);
       _tarih_ := Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('UTarihDateTime').Index);
       doktor := Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('doktorKod').Index);

   //    dosyaNo := gridHastalar.Cells[7,gridHastalar.row];
  //     gelisNo := gridHastalar.Cells[8,gridHastalar.row];

       Application.CreateForm(TfrmHemsireTkp, frmHemsireTkp);
       frmHemsireTkp.FormAc(sira,dosyaNo , gelisNO , _tarih_,doktor);
       GorselAyar(frmHemsireTkp,datalar.global_img_list4);
       frmHemsireTkp.ShowModal;
       //SeansGetir(dosyaNo,gelisNO);
       frmHemsireTkp := nil;
       *)
end;

procedure TfrmTopluSeans.TakipBilgisiOku;
var
   HastaBil : TTakipBilgisi;
   satir : integer;
   dosyaNo,gelisNo,doktor,takip,basvuru : string;
begin
     (*
      satir := Liste.Controller.SelectedRows[0].RecordIndex;

      dosyaNo := Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('dosyaNo').Index);
      gelisNo := Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('gelisNo').Index);
      doktor :=  Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('doktorKod').Index);
      takip :=   Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('TakýpNo').Index);
      basvuru := Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('basvuruNo').Index);

      datalar.RxTaniBilgisi.Active := False;
      datalar.RxTaniBilgisi.Active := True;
      datalar.RxDigerIslem.Active := False;
      datalar.RxDigerIslem.Active := True;
      datalar.RxTahlilIslem.Active := False;
      datalar.RxTahlilIslem.Active := True;

      datalar.Bilgi.gelisNo := gelisNo;//gridHastalar.Cells[8,gridHastalar.row];
      datalar.Bilgi.Doktor := doktor;//gridHastalar.Cells[9,gridHastalar.row];
      datalar.Bilgi.TakipNo := takip;//gridHastalar.Cells[17,gridHastalar.row];
 //     datalar.Bilgi.ProvizyonTarihi := gridGelisler.Cells[3,gridGelisler.row];
 //     datalar.Bilgi.diyalizTedaviTipi := gridGelisler.ints[21,gridGelisler.row];

     datalar.Bilgi.BasvuruNo := basvuru;//gridHastalar.Cells[54,gridHastalar.row];
     datalar.bilgi.dosyaNo := dosyaNo;//gridHastalar.Cells[7,gridHastalar.row];



      txtinfo.Caption := 'Takip Bilgisi Okunuyor , Lütfen Bekleyiniz !';
      Application.ProcessMessages;


      if KabulOku(takip,HastaBil , datalar.HastaKabul,1) = '0000'
      Then Begin
          Application.CreateForm(TfrmTakipBilgisiOku, frmTakipBilgisiOku);
          GorselAyar(frmTakipBilgisiOku,datalar.global_img_list4);

          frmTakipBilgisiOku.txtTakipBilgisi.Lines.Add('Takip No       :  ' + HastaBil.Takip);
          frmTakipBilgisiOku.txtTakipBilgisi.Lines.Add('Ýlk Takip No   :  ' + HastaBil.ilkTakip);
          frmTakipBilgisiOku.txtTakipBilgisi.Lines.Add('Takip Tarihi   :  ' + HastaBil.MuayeneTarihi);
          frmTakipBilgisiOku.txtTakipBilgisi.Lines.Add('Kayýt Tarihi   :  ' + HastaBil.KayitTarihi);
          frmTakipBilgisiOku.txtTakipBilgisi.Lines.Add('Hasta Adý      :  ' + HastaBil.HastaAdi);
          frmTakipBilgisiOku.txtTakipBilgisi.Lines.Add('Hasta Kimlik No:  ' + HastaBil.TcKimlik);
          frmTakipBilgisiOku.txtTakipBilgisi.Lines.Add('Baþvuru No     :  ' + HastaBil.BasvuruNo);
          frmTakipBilgisiOku.txtTakipBilgisi.Lines.Add('Takip Tipi     :  ' + HastaBil.TakipTipi);
          frmTakipBilgisiOku.txtTakipBilgisi.Lines.Add('Tedavi Türü    :  ' + HastaBil.tedaviTuru);
          frmTakipBilgisiOku.txtTakipBilgisi.Lines.Add('Tedavi Tipi    :  ' + HastaBil.tedaviTipi);
          frmTakipBilgisiOku.txtTakipBilgisi.Lines.Add('ProvizYon Tipi :  ' + HastaBil.provizyonTipi);
          frmTakipBilgisiOku.txtTakipBilgisi.Lines.Add('Branþ          :  ' + HastaBil.bransKodu);


       //   datalar.Bilgi.TakipNo := gridHastalar.Cells[55,gridHastalar.row];
   //       datalar.Bilgi.BasvuruNo := gridHastalar.Cells[54,gridHastalar.row];
   //       datalar.Bilgi.dosyaNo := gridHastalar.Cells[7,gridHastalar.row];
   //       datalar.Bilgi.gelisNo := gridHastalar.Cells[8,gridHastalar.row];

          frmTakipBilgisiOku.ShowModal;
          frmTakipBilgisiOku := nil;

      End;

      txtinfo.Caption := '';

        *)

end;

procedure TfrmTopluSeans.TedaviKarti;
var
  satir : integer;
  tarih , ad : string;
begin
(*

   if UserRight('Hasta Kartý', 'Tedavi Kartý') = False
   then begin
       ShowMessageSkin('Bu Ýþlem Ýçin Yetkiniz Bulunmamaktadýr !','','','info');
       exit;
   end;

       satir := Liste.Controller.SelectedRows[0].RecordIndex;

       ad := Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('hastaAdi').Index);
       dosyaNo := Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('dosyaNo').Index);
       gelisNo := Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('gelisNo').Index);
       tarih := Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('UTarihDateTime').Index);

       Application.CreateForm(TfrmTedaviBilgisi, frmTedaviBilgisi);

       frmTedaviBilgisi.TedaviFormDosyaNo := dosyaNo;
       frmTedaviBilgisi.TedaviFormGelisNo := gelisNo;

       GorselAyar(frmTedaviBilgisi,datalar.global_img_list4);
       frmTedaviBilgisi.TedaviBilgi(gelisNO,dosyaNo,tarih,'',ad,'');
       frmTedaviBilgisi.ShowModal;
       *)
end;

procedure TfrmTopluSeans.btnUzmanYazdirClick(Sender: TObject);
var
  dosyaNo,gelisNo,hasta , secili , tarih : string;
  sql : string;
  ado0 ,ado1 : TADOQuery;
  x : integer;
begin
   secili := secilisatirbilgisi(gridHastalar,25,6);

    for x := 1 to gridHastalar.RowCount - 1  do
    begin
      try
       if  gridHastalar.Cells[25,x] = 'T'
       then begin

          dosyaNo := gridHastalar.Cells[7,x];
          gelisNo := gridHastalar.Cells[8,x];
          tarih :=   gridHastalar.Cells[4,x];

          ado0 := TADOQuery.Create(nil);
          ado0.Connection := datalar.ADOConnection2;

          ado1 := TADOQuery.Create(nil);
          ado1.Connection := datalar.ADOConnection2;


          sql := 'DECLARE @d VARCHAR(4) SELECT top 1 @d = kod FROM doktorlar WHERE Tip = ''Uzman'' '+
                 'IF not EXISTS(SELECT * FROM UzmanGozlem WHERE dosyaNO = ' + QuotedStr(dosyaNo) + ' AND gelisNo = ' + gelisNo + ' ) ' +
                 ' BEGIN  ' +
                 ' INSERT INTO UzmanGozlem (dosyaNo,gelisNo,Tarih,doktor) ' +
                 ' VALUES(' + QuotedStr(dosyaNo) + ',' + gelisNo + ',' +
                             QuotedStr(NoktasizTarih(tarih)) + ',@d)' +
                 ' END ';

          datalar.QueryExec(ado0,sql);

          sql := 'select *,(select ruhsatNo from merkezBilgisi) ruhsatNo, (select MerkezAdi from merkezbilgisi) merkezAd ' +
                 ' from Hastakart where dosyaNo = ' + QuotedStr(dosyaNo);
          datalar.QuerySelect(ado0,sql);


          sql := 'select * from uzmanGozlem ug left join doktorlar d on d.kod = substring(ug.doktor,1,4) ' +
                ' where dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNo = ' + gelisNo;
          datalar.QuerySelect(Ado1,sql);


          frmRapor.topluset.Dataset0 := ado0;
          frmRapor.topluset.Dataset1 := Ado1;


          frmRapor.raporData1(frmRapor.topluset ,'200','\Uzman Muayene Form');
       (*
          if chkSor.Checked
          then
           frmRapor.ShowModal
          else
           frmRapor.btnYazdir.Click;
         *)
       end;

      except
      end
    end;

          ado0.Free;
          ado1.Free;



end;

procedure TfrmTopluSeans.sBitBtn7Click(Sender: TObject);
var
  sql , sonuc : string;
  x ,satir , satirs , satirlar : integer;
  ado : TADOQuery;
begin

 d1.Click;

(*
   satirs := 1;
   satirlar := gridHastalar.RowCount - 1;

   for satir := satirs to satirlar do
   begin
        Application.ProcessMessages;
        if gridHastalar.Cells[25,satir] = 'T'
        then begin
            if trim(gridHastalar.Cells[17,satir]) = ''
            Then begin
                gridHastalar.Row := satir;
                haksahibiBosalt(satir);
                haksahibi(satir);

                if chkBiyo.Checked
                Then
                 sonuc := TakipAl_3KimlikDorulama(datalar.Bilgi,HTTPRIO1,False)
                Else
                 sonuc := TakipAl_3(datalar.Bilgi,HTTPRIO1,False);

                if sonuc = '0000'
                Then begin

                      gridHastalar.Cells[55,satir] := datalar.Bilgi.TakipNo;
                    //  gridHastalar.Cells[17,satir] := datalar.Bilgi.TakipNo;
                      gridHastalar.Cells[54,satir] := datalar.Bilgi.BasvuruNo;

                      sql := 'update gelisDetay ' +
                             ' set TakipNo = ' + QuotedStr(datalar.Bilgi.TakipNo) + ',BasvuruNo = ' + QuotedStr(datalar.Bilgi.BasvuruNo) +
                             'where siraNo = ' + gridHastalar.Cells[6,satir];

                      ado := TADOQuery.Create(nil);
                      ado.Connection := datalar.ADOConnection2;
                      datalar.QueryExec(ado,sql);
                      ado.Free;
                End
                Else
                  txtLog.Lines.Add(sonuc);

            End;
        End;

   End;

   *)

end;

procedure TfrmTopluSeans.sBitBtn2Click(Sender: TObject);
var
  sql , sonuc , _takipNo_: string;
  x ,satir , satirs , satirlar : integer;
 // ado : TADOQuery;
begin
  (*
   if mrYEs = ShowMessageSkin('Seçili Takipler ve Hizmetler Ýptal Edilecek eminmisiniz ?','','','msg')
   Then Begin

   satirs := 1;
   satirlar := gridHastalar.RowCount - 1;

   for satir := satirs to satirlar do
   begin
        gridHastalar.Row := satir;

        Application.ProcessMessages;
        if gridHastalar.Cells[25,satir] = 'T'
        then begin

            if trim(gridHastalar.Cells[17,satir]) <> ''
            Then begin
                  _takipNo_ := trim(gridHastalar.Cells[17,satir]);
                  sonuc := TakipSil_3(_takipNo_ ,HTTPRIO1);

                if (sonuc = '0000') or (copy(sonuc,1,4) = '0001')
                Then Begin
                      gridHastalar.Cells[55,satir] := '';
                      gridHastalar.Cells[54,satir] := '';
                    //  gridHastalar.Cells[16,satir] := '';
                      gridHastalar.Cells[5,satir] := '';

                      sql := 'update gelisDetay ' +
                             ' set TakipNo = ' + QuotedStr('') + ',BasvuruNo = ' + QuotedStr('') +
                             ',TalepSira = ' + QuotedStr('') +
                             ' where siraNo = ' + gridHastalar.Cells[6,satir];
                    //  ado := TADOQuery.Create(nil);
                    //  ado.Connection := datalar.ADOConnection2;
                      datalar.QueryExec(ado,sql);
                    //  ado.Free;
                End
                Else txtLog.Lines.Add(sonuc);



            End;
        End;
   End;

   End;
       *)
end;

procedure TfrmTopluSeans.txtHastaPropertiesChange(Sender: TObject);
begin
  hastalar('-1');
end;

procedure TfrmTopluSeans.txtMakinaNoPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
 List : ArrayListeSecimler;
begin
  inherited;
   List := ListeAc1.ListeGetir;
   if length(List) > 0
   Then Begin
   //  txtMakinaNo.Text := List[0].kolon1;
   End;

end;

procedure TfrmTopluSeans.txtTPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  if Error = True
  then ShowMessageSkin(DisplayValue + ' ' + ErrorText,'','','info');

end;

procedure TfrmTopluSeans.UzmanGozlemYazdir;
var
  dosyaNo,gelisNo,hasta , secili , tarih : string;
  sql : string;
  ado0 ,ado1 : TADOQuery;
  x , satir , durum : integer;
  TopluDataset : TDataSetKadir;
begin

  ado0 := TADOQuery.Create(nil);
  ado0.Connection := datalar.ADOConnection2;
  ado1 := TADOQuery.Create(nil);
  ado1.Connection := datalar.ADOConnection2;
  try
   for x := 0 to Liste.Controller.SelectedRowCount - 1 do
   begin
       Application.ProcessMessages;
       satir := Liste.Controller.SelectedRows[x].RecordIndex;
  //    _SiraNo_ := Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('sirano').Index);
       dosyaNo := Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('dosyaNo').Index);
       gelisNo := Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('gelisNo').Index);
       durum := Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('durum').Index);
       tarih := Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('Tarih').Index);

      try
       if  durum = 1
       then begin

         sql := 'select g.*,d.*,ug.*,h.*,s.tanimi merkezAd,s.ruhsatNo from uzmanGozlem ug ' +
                ' left join Hasta_gelisler g on g.dosyaNo = ug.dosyaNo and g.gelisNo = ug.gelisNo ' +
                ' left join DoktorlarT d on d.kod = ug.doktor ' +
                ' join HastaKart h on h.dosyaNo = ug.dosyaNo ' +
                ' left join SIRKETLER_TNM S on S.sirketKod = h.sirketKod ' +
                ' where ug.dosyaNo = ' + QuotedStr(dosyaNo) + ' and ug.gelisNo = ' + QuotedStr(gelisNo);
         datalar.QuerySelect(ado,sql);

          sql := 'select ug.Tarih,h.*, ' + QuotedStr(datalar.AktifSirketAdi) + ' merkezAd' +
                 ' from Hastakart h ' +
                 ' left JOIN UzmanGozlem ug ON ug.dosyaNo = h.dosyaNo AND ug.gelisNo = ' + gelisNo +
                 ' where h.dosyaNo = ' + QuotedStr(dosyaNo);
         datalar.QuerySelect(ado1,sql);

          TopluDataset.Dataset0 := ado;
          TopluDataset.Dataset1 := Ado1;

          PrintYap('200','Uzman Muayene Form','',TopluDataset,KAdirType.pTNone, frmTopluSeans);



       end;
      except
      end
    end;

  finally
          ado0.Free;
          ado1.Free;
  end;




end;

procedure TfrmTopluSeans.sBitBtn3Click(Sender: TObject);
var
   HastaBil : TTakipBilgisi;
begin

   SeansGzlem1.Click;

(*
      datalar.RxTaniBilgisi.Active := False;
      datalar.RxTaniBilgisi.Active := true;
      datalar.RxDigerIslem.Active := False;
      datalar.RxDigerIslem.Active := True;
      datalar.RxTahlilIslem.Active := False;
      datalar.RxTahlilIslem.Active := True;


      txtinfo.Caption := 'Takip Bilgisi Okunuyor , Lütfen Bekleyiniz !';
      Application.ProcessMessages;


      if KabulOku(trim(gridHastalar.Cells[55,gridHastalar.row]),
               HastaBil , datalar.takip,1) = '0000'
      Then Begin
          Application.CreateForm(TfrmTakipBilgisiOku, frmTakipBilgisiOku);
          GorselAyar(frmTakipBilgisiOku,datalar.global_img_list4);

          frmTakipBilgisiOku.txtTakipBilgisi.Lines.Add('Takip No       :  ' + HastaBil.Takip);
          frmTakipBilgisiOku.txtTakipBilgisi.Lines.Add('Ýlk Takip No   :  ' + HastaBil.ilkTakip);
          frmTakipBilgisiOku.txtTakipBilgisi.Lines.Add('Takip Tarihi   :  ' + HastaBil.MuayeneTarihi);
          frmTakipBilgisiOku.txtTakipBilgisi.Lines.Add('Kayýt Tarihi   :  ' + HastaBil.KayitTarihi);
          frmTakipBilgisiOku.txtTakipBilgisi.Lines.Add('Hasta Adý      :  ' + HastaBil.HastaAdi);
          frmTakipBilgisiOku.txtTakipBilgisi.Lines.Add('Hasta Kimlik No:  ' + HastaBil.TcKimlik);
          frmTakipBilgisiOku.txtTakipBilgisi.Lines.Add('Baþvuru No     :  ' + HastaBil.BasvuruNo);
          frmTakipBilgisiOku.txtTakipBilgisi.Lines.Add('Takip Tipi     :  ' + HastaBil.TakipTipi);
          frmTakipBilgisiOku.txtTakipBilgisi.Lines.Add('Tedavi Türü    :  ' + HastaBil.tedaviTuru);
          frmTakipBilgisiOku.txtTakipBilgisi.Lines.Add('Tedavi Tipi    :  ' + HastaBil.tedaviTipi);
          frmTakipBilgisiOku.txtTakipBilgisi.Lines.Add('ProvizYon Tipi :  ' + HastaBil.provizyonTipi);

          datalar.Bilgi.TakipNo := HastaBil.Takip;
          datalar.Bilgi.BasvuruNo := HastaBil.BasvuruNo;
          datalar.Bilgi.dosyaNo := gridHastalar.Cells[7,gridHastalar.row];
          datalar.Bilgi.gelisNo := gridHastalar.Cells[8,gridHastalar.row];

          frmTakipBilgisiOku.ShowModal;
          frmTakipBilgisiOku := nil;

      End;

      txtinfo.Caption := '';

  *)

end;

procedure TfrmTopluSeans.gridHastalarDblClick(Sender: TObject);
var
  satir : integer;
begin

  panel1.Visible := True;
 /// ComboDoldur3('select * from Doktorlar where durum = ''Aktif''',txtDoktorlar, 0,1);
  try
  // txtDoktorlar.Text := gridHastalar.Cells[9,gridHastalar.Row];
 //  txtMakinaNo.Text := gridHastalar.Cells[10,gridHastalar.Row];
 //  txtT.Date :=  strtodate(gridHastalar.Cells[4,gridHastalar.Row]);
 //  txtSeansD.Text := gridHastalar.Cells[11,gridHastalar.Row];
 //  txtSebeb.Text := gridHastalar.Cells[3,gridHastalar.Row];
 //  txtilkTakip.Text := gridHastalar.Cells[18,gridHastalar.Row];
  except
  end;

  if gridHastalar.Cells[5,gridHastalar.Row] <> ''
  Then Begin
 //  txtDoktorlar.Enabled := False;
 //  txtMakinaNo.Enabled := True;
 //  txtT.Enabled := False;
 //  txtSeansD.Enabled := False;
 //  txtSebeb.Enabled := False;
 //  txtilkTakip.Enabled := False;
  End
  else
  Begin
   //txtDoktorlar.Enabled := True;
  // txtMakinaNo.Enabled := True;
  // txtT.Enabled := True;
  // txtSeansD.Enabled := True;
  // txtSebeb.Enabled := True;
  // txtilkTakip.Enabled := True;
  End;



end;

procedure TfrmTopluSeans.gridHastalarEditCellDone(Sender: TObject; ACol,
  ARow: Integer);
begin
  inherited;
//  gridHastalar.Cells[99,Arow] := 'U';
end;

procedure TfrmTopluSeans.gridHastalarFixedCellClick(Sender: TObject; ACol,
  ARow: Integer);
begin
  gridHastalar.SortByColumn(Acol);
  gridHastalar.QSort;

end;

procedure TfrmTopluSeans.cxCheckBox1Click(Sender: TObject);
var
  durum : string;
begin
  inherited;
   durum := cxRadioGroup1.EditingValue;
   Hastalar(durum);
end;

procedure TfrmTopluSeans.ListeCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
  satir : integer;
begin
  satir := Liste.Controller.SelectedRows[0].RecordIndex;
  if ACellViewInfo.Item.Index = 5
  then
    if ACellViewInfo.GridView.DataController.Values[satir,5] = 0
    then
     s2.Click
    else
     s3.Click;
end;

procedure TfrmTopluSeans.ListeCIKISKILOPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  ADOQuery1.Post;
end;

procedure TfrmTopluSeans.ListeDoktorKodPropertiesEditValueChanged(
  Sender: TObject);
var
  satir , sirano  : integer;
  talepSira , doktor ,sql: string;
begin
  inherited;

  cxGrid_Seans.Dataset.Post;

  //ADOQuery1.Post;
    (*
       satir := Liste.Controller.SelectedRows[0].RecordIndex;
       sirano := Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('sirano').Index);
       talepSira := Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('TalepSira').Index);
       doktor := Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('Doktor').Index);

       if  talepSira = ''
       then begin
       //    Liste.DataController.SetValue(satir,Liste.DataController.GetItemByFieldName('Durum').Index,TMenuItem(sender).Tag);

           sql := 'update gelisdetay set doktor = ' + QuotedStr(doktor)  + ' where sirano = ' + inttostr(sirano);
           datalar.QueryExec(ado,sql);

       end;
      *)
end;

procedure TfrmTopluSeans.ListeDoktorKodPropertiesPopup(Sender: TObject);
var
  Doktorlar : TcxImageComboKadir;
begin
   inherited;
   (*
   Doktorlar := TcxImageComboKadir.Create(nil);
   try
     Doktorlar.Conn := Datalar.ADOConnection2;
     Doktorlar.TableName := 'DoktorlarT';
     Doktorlar.DisplayField := 'tanimi';
     Doktorlar.ValueField := 'kod';
     Doktorlar.Filter := ' durum = ''Aktif'' and sirketKod = ' + QuotedStr(datalar.AktifSirket);
     TcxImageComboBoxProperties(ListeDoktorKod.Properties).Items.Clear;
     TcxImageComboBoxProperties(ListeDoktorKod.Properties).Items :=
     Doktorlar.Properties.Items;
   finally
      FreeAndNil(Doktorlar);
   end;
     *)
end;

procedure TfrmTopluSeans.ListedurumPropertiesEditValueChanged(Sender: TObject);
var
 bm : TBookmark;
begin
  inherited;

  ADO_Detay_toplam.Close;
  ADO_Detay_toplam.Parameters[0].Value :=  copy(txtTopPanelTarih1.GetValue,1,6);
  ADO_Detay_toplam.Active := True;


end;

procedure TfrmTopluSeans.ListeFocusedItemChanged(Sender: TcxCustomGridTableView;
  APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
var
  Doktorlar : TcxImageComboKadir;
begin
  inherited;

   if AFocusedItem = ListeDoktorKod
   then begin
     Doktorlar := TcxImageComboKadir.Create(nil);
     try
       Doktorlar.Conn := Datalar.ADOConnection2;
       Doktorlar.TableName := 'DoktorlarT';
       Doktorlar.DisplayField := 'tanimi';
       Doktorlar.ValueField := 'kod';
       Doktorlar.Filter := DoktorlarFilter;
       TcxImageComboBoxProperties(ListeDoktorKod.Properties).Items :=
       Doktorlar.Properties.Items;
     finally
        FreeAndNil(Doktorlar);
     end;
   end
   else
   begin
      TcxImageComboBoxProperties(ListeDoktorKod.Properties).Items :=
      AnaForm.Doktors.Properties.Items;
   end;

end;

procedure TfrmTopluSeans.ListeFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
   if cxGrid_Seans.dataset.FieldByName('islemSiraNo').AsString <> ''
   then Sender.OptionsData.Editing := False
   else Sender.OptionsData.Editing := True;
end;

procedure TfrmTopluSeans.ListeGIRISKILOPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
   cxGrid_Seans.Dataset.Post;
end;

procedure TfrmTopluSeans.ListemakinaNoPropertiesEditValueChanged(
  Sender: TObject);
var
   makineNo,seans,RTarih,Hst,d : string;
   satir : integer;
begin

       Liste.DataController.Post;

       satir := Liste.Controller.SelectedRows[0].RecordIndex;
       RTarih := Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('Tarih').Index);
       makineNo := Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('makinaNo').Index);
       seans := Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('Seans').Index);
       d := Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('dosyaNo').Index);

       if makineNo <> ''
       then begin
       Hst := SeansKontrol(seans,makineNo,RTarih,d);
       if Hst <> ''
       then begin

         ShowMessageSkin('Makina No Kontrol Ediniz,','Ayný Seansta ' + Hst ,' Seans Görmüþ' ,'info');
       end;
       end;

end;

procedure TfrmTopluSeans.ListeraporTakipNoPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  List : ArrayListeSecimler;
begin
  ListeAc2.Where := 'dosyaNo = ' + QuotedStr(cxGrid_Seans.Dataset.FieldByName('dosyaNo').AsString);
  List := ListeAc2.ListeGetir;
  cxGrid_Seans.Dataset.Edit;
  cxGrid_Seans.Dataset.FieldByName('raporTakipNo').AsString := List[0].kolon1;
  cxGrid_Seans.Dataset.Post;
end;

procedure TfrmTopluSeans.ListeraporTakipNoPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
    cxGrid_Seans.Dataset.Post;
end;

procedure TfrmTopluSeans.ListeraporTakipNoPropertiesPopup(Sender: TObject);
begin
  inherited;
   datalar.ado_HastaRaporlar.Close;
   datalar.ado_HastaRaporlar.Parameters[0].Value := cxGrid_Seans.Dataset.FieldByName('dosyaNo').AsString;
   datalar.ado_HastaRaporlar.Open;
end;

procedure TfrmTopluSeans.ListeSeansPropertiesEditValueChanged(Sender: TObject);
var
   makineNo,seans,RTarih,Hst,d : string;
   satir : integer;
begin

       Liste.DataController.Post;

       satir := Liste.Controller.SelectedRows[0].RecordIndex;
       RTarih := Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('Tarih').Index);
       makineNo := Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('makinaNo').Index);
       seans := Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('Seans').Index);
       d := Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('dosyaNo').Index);

       if makineNo <> ''
       then begin
       Hst := SeansKontrol(seans,makineNo,RTarih,d);
       if Hst <> ''
       then begin

         ShowMessageSkin('Makina No Kontrol Ediniz,','Ayný Seansta ' + Hst ,' Seans Görmüþ' ,'info');
       end;
       end;

end;

procedure TfrmTopluSeans.UzmanFormYazdir;
var
  sql , secili , _SiraNo_ , _dosyaNo_ , _gelisNo_ , yeniSiraNo : string;
  ado0,ado1,ado2,ado3,ado4 : TADOQuery;
  x ,satir,durum : integer;
  TopluDataset : TDataSetKadir;
begin
   ado0 := TADOQuery.Create(nil);
   ado0.Connection := datalar.ADOConnection2;
   ado1 := TADOQuery.Create(nil);
   ado1.Connection := datalar.ADOConnection2;
   ado2 := TADOQuery.Create(nil);
   ado2.Connection := datalar.ADOConnection2;
   ado3 := TADOQuery.Create(nil);
   ado3.Connection := datalar.ADOConnection2;
   ado4 := TADOQuery.Create(nil);
   ado4.Connection := datalar.ADOConnection2;



   (*
   sql := 'exec sp_SeansIzlemFormu ' + QuotedStr('') + ',' + '1' + ',' + QuotedStr('TT') + ',' + QuotedStr(secili);
   datalar.QuerySelect(ado1,sql);

   sql := 'exec sp_SeansIzlemFormu ' + QuotedStr('') + ',' + '1' + ',' + QuotedStr('T') + ',' + QuotedStr(secili);
     *)
  try
     for x := 0 to Liste.Controller.SelectedRowCount - 1 do
     begin
         Application.ProcessMessages;
         satir := Liste.Controller.SelectedRows[x].RecordIndex;
         _SiraNo_ := Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('islemRefNo').Index);
         yeniSiraNo := Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('yeniSiraNo').Index);

         _dosyaNo_ := Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('dosyaNo').Index);
         _gelisNo_ := Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('gelisNo').Index);
         durum := Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('durum').Index);
        try
         if  durum = 1
         then begin

           sql := 'exec sp_SeansIzlemFormu ' + QuotedStr(_dosyaNo_) + ',' + yeniSiraNo;
           datalar.QuerySelect(ado0,sql);

           sql := 'exec sp_SeansIzlemFormu ' + QuotedStr(_dosyaNo_) + ',' + yeniSiraNo + ',' + QuotedStr('S');
           datalar.QuerySelect(ado1,sql);


           sql := 'exec sp_SeansIzlemFormu ' + QuotedStr(_dosyaNo_) + ',' + yeniSiraNo + ',' + QuotedStr('I');
           datalar.QuerySelect(ado2,sql);

           sql := 'exec sp_SeansIzlemFormu ' + QuotedStr(_dosyaNo_) + ',' + yeniSiraNo + ',' + QuotedStr('X1');
           datalar.QuerySelect(ado3,sql);

           sql := 'exec sp_SeansIzlemFormu ' + QuotedStr(_dosyaNo_) + ',' + yeniSiraNo + ',' + QuotedStr('X2');
           datalar.QuerySelect(ado4,sql);

           TopluDataset.Dataset0 := ado0;
           TopluDataset.Dataset1 := ado1;
           TopluDataset.Dataset2 := ado2;
           TopluDataset.Dataset3 := ado3;
           TopluDataset.Dataset4 := ado4;

           if Liste.Controller.SelectedRowCount = 1
           then
            PrintYap('054','Seans Izlem',intTostr(TagfrmTopluSeans),TopluDataset,KadirType.pTNone)
           else
            PrintYap('054','Seans Izlem',intTostr(TagfrmTopluSeans),TopluDataset,KadirType.pTYazdir);

         end;
        except
        end;

     End;

  finally
    ado0.Free;
    ado1.Free;
    ado2.free;
    ado3.free;
    ado4.free;
  end;


end;

procedure TfrmTopluSeans.P704230_to_704230(Butkod : string);
var
   satir,satirs,x ,durum: integer;
   oncekiTalepBilgisi , sonuc , sql , talepSira , takip ,kod: string;
   ameliyatveGirisim : Array_Of_AmeliyatveGirisimBilgisiDVO;
   digerIslemBilgileri : Array_Of_DigerIslemBilgisiDVO;
   disBilgileri : Array_Of_DisBilgisiDVO;
   IlacBilgileri : Array_Of_IlacBilgisiDVO;
   KonsiltasyonBilgisi :  Array_Of_KonsultasyonBilgisiDVO;
   malzemeBilgisi : Array_Of_MalzemeBilgisiDVO;
   muayeneBilgisi : MuayeneBilgisiDVO;
   tahlilBilgileri : Array_Of_TahlilBilgisiDVO;
   tanilar : Array_Of_TaniBilgisiDVO;
   tetkikveRadyoloji : Array_Of_TetkikveRadyolojiBilgisiDVO;
   yatisBilgisi : Array_Of_HastaYatisBilgisiDVO;
   KayitliIslem : Array_Of_KayitliIslemBilgisiDVO;
   HataliIslem : TStringList;
   hatali : TStringList;
   _msg_ ,sirano : integer;
      fark : double;
   satirlar : integer;


begin
   ShowMessageSkin(Butkod,'','','info');

  (*
   if UserRight('MEDULA ÝÞLEMLERÝ', 'Ödeme Yolla') = False
   then begin
       ShowMessageSkin('Bu Ýþlem Ýçin Yetkiniz Bulunmamaktadýr !','','','info');
       exit;
   end;

    if LisansKontrol(fark) = False
    Then Begin
      ShowMessageSkin('Lisans Yenileyin','','','info');
      exit;
    End;

    hatali := TStringList.Create;

    if abs(TMenuItem(sender).Tag) = 704230
    Then begin
     sql := 'select dbo.fn_P704230Count(' + QuotedStr(tarihal(txtDonem.Date)) + ') t';
     datalar.QuerySelect(ado,sql);
     if ado.Fields[0].AsInteger >= 700
     then begin
        ShowMessageSkin('P704230 kodlu seans için 700 aþýmý yapýlmýþtýr','','','info');
        exit;
     end;
    end;


    if mrYes = ShowMessageSkin('Ýþaretlenen Seanslar Ýçin Kod Deðiþim Ýþlemi Baþlayacak','Onaylýyormusunuz ?','','msg')
    then begin
          pnlDurum.Visible := True;
          //pnlAnimator.Animate := True;
          pnlDurum.Caption := 'Hizmet Kod Deðiþtir';

          for x := 0 to Liste.Controller.SelectedRowCount - 1 do
          begin
             if abs(TMenuItem(sender).Tag) = 704230
             Then begin
               sql := 'select dbo.fn_P704230Count(' + QuotedStr(tarihal(txtDonem.Date)) + ') t';
               datalar.QuerySelect(ado,sql);
               if ado.Fields[0].AsInteger >= 700
               then begin
                  ShowMessageSkin('P704230 kodlu seans için 700 aþýmý yapýlmýþtýr','','','info');
                  Break;
               end;
             end;

             Application.ProcessMessages;
             satir := Liste.Controller.SelectedRows[x].RecordIndex;
             talepSira := Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('TalepSira').Index) ;
             takip := Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('TakýpNo').Index);
             sirano := Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('sirano').Index);

              if length(talepSira) > 0
              then begin
                 setlength(datalar.islemSiralari,1);
                 datalar.islemSiralari[0] :=  talepSira;

                 sonuc := HizmetKaydiIptal(takip ,datalar.HizmetKayit);
                 if sonuc = '0000'
                 Then Begin
                    setlength(datalar.islemSiralari,0);
                    sql := 'update gelisDetay set TalepSira = '''' ' +
                           ',obje = ' + QuotedStr('Toplu_seans_isle_medula_Ýptal_Deðiþim') +
                           ' where TalepSira = ' + QuotedStr(talepSira);
                    datalar.QueryExec(ado,sql);
                    Liste.DataController.SetValue(satir,Liste.DataController.GetItemByFieldName('TalepSira').Index,'');
                    Application.ProcessMessages;

                    txtLog.Lines.Add('Hasta Adý :' + Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('hastaAdi').Index));
                    txtLog.Lines.Add('Hizmet Ýptal Edildi. HizmetSunucuRefNo : ' + inttostr(sirano));

                    digerIslemTalepdoldur(satir);
                    digerIslemBilgileri := DigerIslemBilgileriM3_Satir(datalar.DigerIslemTalebi);
                    digerIslemBilgileri[0].sutKodu := 'P'+inttostr(TMenuItem(sender).Tag);

                    if abs(TMenuItem(sender).Tag) = 704230 then kod := 'M' else kod := '7';

                    sql := 'update gelisDetay set HemodiyalizTip =  ' + QuotedStr(kod) +
                           ',obje = ' + QuotedStr('Toplu_seans_isle_medula_Ýptal_Deðiþim') +
                           ' where sirano = ' + inttostr(sirano);
                    datalar.QueryExec(ado,sql);
                    Liste.DataController.SetValue(satir,Liste.DataController.GetItemByFieldName('HemodiyalizTip').Index,kod);

                    sleep(2000);

                    sonuc := HizmetKayit_3(datalar.DigerIslemTalebi.basvuruNo,
                                            datalar.DigerIslemTalebi.TakipNo,
                                            datalar.HizmetKayit,
                                            ameliyatveGirisim,
                                            digerIslemBilgileri,
                                            disBilgileri,
                                            ilacBilgileri,
                                            KonsiltasyonBilgisi,
                                            malzemeBilgisi,
                                            muayeneBilgisi,
                                            tahlilBilgileri,
                                            tanilar,
                                            tetkikveRadyoloji,
                                            yatisBilgisi,
                                           // DigerIslemBilgileriYatisM3_Satir(datalar.DigerIslemTalebi),
                                            //YatisM3(''),
                                            //KayitliIslem,
                                            Hatali,_msg_,'');


                     if sonuc = '0000'
                     Then Begin
                           datalar.RxKayitliIslem.First;
                           while not datalar.RxKayitliIslem.Eof do
                           Begin
                               sql := 'update gelisDetay set TalepSira = ' + QuotedStr(datalar.RxKayitliIslem.fieldbyname('islemSiraNo').AsString) +
                                      ',obje = ' + QuotedStr('Toplu_seans_isle_medula_Kaydet') +
                                      ' where siraNo = ' + trim(datalar.RxKayitliIslem.fieldbyname('hizmetSunucuRefNo').AsString);
                               datalar.QueryExec(ado,sql);

                               txtLog.Lines.Add('Hizmet Tekrar Alýndý' + ' - ' +
                               'Talep Sira : ' + datalar.RxKayitliIslem.fieldbyname('islemSiraNo').AsString + ' - ' +
                               'HizmetSunucuRefNo : ' + trim(datalar.RxKayitliIslem.fieldbyname('hizmetSunucuRefNo').AsString));

                               Liste.DataController.SetValue(satir,Liste.DataController.GetItemByFieldName('TalepSira').Index,datalar.RxKayitliIslem.fieldbyname('islemSiraNo').AsString);

                               datalar.RxKayitliIslem.Next;
                           End;

                           txtLog.Lines.Add('TakipNo :' + datalar.DigerIslemTalebi.TakipNo + ' Hata Mesajý : ' + sonuc);
                           txtLog.Lines.Add('--------------------------------------------------------------------------------------------');
                     End
                     Else
                     Begin
                         txtLog.Lines.Add(datalar.DigerIslemTalebi.TakipNo + ' ' + sonuc + ' ' +
                         Hatali.Text);
                     End;  // HizmetKayýt Sonuc end
                 end
                 else
                 begin
                    txtLog.Lines.Add('TakipNo : ' + takip + ' TalepSira : ' + talepSira + ' Hata Mesaj :' + sonuc);
                    txtLog.Lines.Add('--------------------------------------------------------------------------------------------');
                 end; // Hizmet Ýptal sonuc end

                 txtLog.Lines.SaveToFile('c:\NoktaV3\txtLog\' + FormatDateTime('DDMMYYYY_HHMMSS',now)+'.txt');

              end; // talep sira length end

              sleep(2000);
          end; // for end

    end;

    if Liste.Controller.SelectedRowCount > 1
    Then btnList.Click;

    pnlDurum.Visible := false;
    hatali.free;
    *)
end;

procedure TfrmTopluSeans.cxGridDBTableView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  inherited;
 try
  if (ARecord.Values[5] > 0) or (ARecord.Values[8] > 0)
  Then
    if (AItem = cxGridDBTableView1Column1) or (AItem = cxGridDBTableView1Column2) then
    AStyle := cxStyle2;

 except end;

end;

procedure TfrmTopluSeans.cxRadioGroup1PropertiesChange(Sender: TObject);
var
  durum , islemSiraNo : string;
  index : integer;
begin
  inherited;
(*
   durum := cxRadioGroup1.EditingValue;
   Hastalar(durum);
  *)
   case cxRadioGroup1.EditingValue of

   -1 : begin
             Liste.DataController.Filter.Root.Clear;
        end;
  0,1 : begin
           index := Liste.DataController.GetItemByFieldName('durum').Index;
           Liste.DataController.Filter.Active := False;
           Liste.DataController.Filter.Active := True;
           Liste.DataController.Filter.Root.Clear;
         //  sender.DataController.Filter.Options := [fcoCaseInsensitive];
           Liste.DataController.Filter.Root.AddItem(Liste.Columns[index],
           foEqual, cxRadioGroup1.EditingValue , cxRadioGroup1.EditingValue);
           Liste.DataController.Filter.Refresh;
        end;
  2,3 : begin
           index := Liste.DataController.GetItemByFieldName('islemSiraNo').Index;
           Liste.DataController.Filter.Active := False;
           Liste.DataController.Filter.Active := True;
           Liste.DataController.Filter.Root.Clear;

           if cxRadioGroup1.EditingValue = 2
           then begin
             Liste.DataController.Filter.Root.AddItem(Liste.Columns[index],
             foEqual, '' , '');
           end
           else
           begin
             Liste.DataController.Filter.Root.AddItem(Liste.Columns[index],
             foNotEqual, '' , '');
           end;

           Liste.DataController.Filter.Refresh;
        end;
   end;


end;

procedure TfrmTopluSeans.chkGelmeyenClick(Sender: TObject);
begin
  inherited;
   if chkGelmeyen.Checked
   Then Hastalar('-1')
   Else Hastalar('0');
end;

procedure TfrmTopluSeans.DamarIziDogrula;
var
  tc , _tarih , tesis , cvp ,msj , yas ,ad ,doktor,seans,kod,sql,refId , yeniSiraNo : string;
  satir , x , _yas_ , kimlikDogrulama : integer;
  bmp : Tbitmap;
begin
   DurumGoster(True,True,'Kimlik Doðrulamasý Yapýlýyor , Lütfen Bekleyiniz.',0,Liste.Controller.SelectedRowCount);
   Pbar.Position := 0;
   txtLog.Lines.Clear;

   for x := 0 to Liste.Controller.SelectedRowCount - 1 do
   begin
        satir := Liste.Controller.SelectedRows[x].RecordIndex;
        _yas_ := Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('Yas').Index);
        doktor := Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('Doktor').Index);
        seans :=  Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('seans').Index);
        _tarih := Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('Tarih').Index);
        kod := Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('code').Index);
        refId := varToStr(Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('islemRefNo').Index));
        yeniSiraNo := varToStr(Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('yeniSiraNo').Index));
        Application.ProcessMessages;
        if (_yas_ <= 75)
        then begin
            cvp := '';
            tc := Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('TCKIMLIKNO').Index);
            ad := Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('hastaAdi').Index);
            try yas := 'Yaþ : ' + inttostr(_yas_); except end;
            cvp := DamarIziDogrulamaSorgula(tc,_tarih,tesis,yas,msj,ad);
            txtLog.Lines.Add(msj);

            kimlikDogrulama := 0;

            if cvp <> ''
            then begin
              kimlikDogrulama := 1;
              datalar.QueryExec('update hareketler set DamarIziKontrol = ' + intTostr(kimlikDogrulama)+ ' where siraNo = ' + yeniSiraNo);

            end;
            cxGrid_Seans.Dataset.Requery();

            Pbar.Position := pBar.Position + 1;
          //  Liste.DataController.SetValue(satir,Liste.DataController.GetItemByFieldName('DamarIziKontrol').Index,kimlikDogrulama);


            (*
            if length(Cvp) > 0
            then begin
               if DoktorSeansHastaSayiKontrol(doktor,seans,_tarih) = True
               Then Begin
                Liste.DataController.SetValue(satir,Liste.DataController.GetItemByFieldName('Durum').Index,1);
           //      Liste.DataController.SetEditValue(Liste.DataController.GetItemByFieldName('Durum').Index,TMenuItem(sender).Tag,evsValue);
              //   SetValue(satir,Liste.DataController.GetItemByFieldName('Durum').Index,TMenuItem(sender).Tag);

                 Liste.DataController.post;
              //   ADO_Detay_toplam.Close;
            //     ADO_Detay_toplam.Parameters[0].Value :=  copy(tarihal(txtDonem.Date),1,6);
              //   ADO_Detay_toplam.Active := True;
               End
               else txtLog.Lines.Add('Doktor Gün , Seans , Hasta Sayýsý [30] Aþýlmýþtýr.');
            end
            else
              if _yas_ <75
              then begin
                 if DoktorSeansHastaSayiKontrol(doktor,seans,_tarih) = True
                 Then Begin
                  Liste.DataController.SetValue(satir,Liste.DataController.GetItemByFieldName('Durum').Index,0);
                  Liste.DataController.post;
                 End else txtLog.Lines.Add('Doktor Gün , Seans , Hasta Sayýsý [30] Aþýlmýþtýr.');
              end;
              *)
        end;

  sleep(1000);
  end;
  DurumGoster(False);

end;

procedure TfrmTopluSeans.DoktorBilgisiDegis;
var
   x ,sirano , satir , durum : integer;
   secim : boolean;
   _secim ,sql , kod , talepSira: string;
begin
  inherited;

    if mrYes = ShowPopupForm('Seans Doktor Bilgisi Deðiþtir',SeansDoktorUpdate)
    Then Begin
        for x := 0 to Liste.Controller.SelectedRowCount - 1 do
        begin
           Application.ProcessMessages;
           satir := Liste.Controller.SelectedRows[x].RecordIndex;
           Liste.DataController.FocusedRecordIndex := satir;
           sirano := Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('islemRefNo').Index);
   //        kod := Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('HemodiyalizTip').Index);
     //      durum := Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('Durum').Index);
           talepSira := Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('islemSiraNo').Index);

           if  talepSira = ''
           then begin
               Liste.DataController.SetEditValue(Liste.DataController.GetItemByFieldName('Doktor').Index,datalar.SeansBilgi.doktor,evsValue);
               Liste.DataController.post;
           end; // talep end

        end; // for end
    End;

end;

procedure TfrmTopluSeans.chkGeldiClick(Sender: TObject);
begin
   if chkGeldi.Checked
   Then Hastalar('0')
   Else Hastalar('-1');

end;

procedure TfrmTopluSeans.sBitBtn4Click(Sender: TObject);
begin
  edaviKart1.Click;
end;

end.
