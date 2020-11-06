unit HastaRecete;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, TedaviKart,
  KadirLabel,GirisUnit,KadirType,Kadir,GetFormClass,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinsDefaultPainters, dxSkinscxPCPainter,Adodb,
  cxPCdxBarPopupMenu, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxPC, cxGroupBox, cxImageComboBox,strUtils,Registry,
  cxDBLookupComboBox, cxLabel, cxMemo, cxLookupEdit, cxDBLookupEdit,
  cxCurrencyEdit, Vcl.StdCtrls, Vcl.Buttons, cxCheckBox,jpeg,
  Vcl.ExtCtrls, sButton, sBitBtn, cxButtons, Menus, cxSplitter, cxListBox,
  cxCalendar, dxSkinBlack, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue;

type
  TfrmHastaRecete = class(TfrmTedaviBilgisi)
    PopupMenu1: TPopupMenu;
    YeniReete1: TMenuItem;
    Dzenle1: TMenuItem;
    Reeteptal1: TMenuItem;
    Yazdr1: TMenuItem;
    ReeteTakipFormu1: TMenuItem;
    N61: TMenuItem;
    lemler1: TMenuItem;
    SMSGnder1: TMenuItem;
    MedulyaGnder1: TMenuItem;
    N101: TMenuItem;
    ReeteSorgula1: TMenuItem;
    ReeteOnay1: TMenuItem;
    HastannReeteleri1: TMenuItem;
    MedEczaneUygulamas1: TMenuItem;
    ReeteifremiDeitir1: TMenuItem;
    HastaRaporlar1: TMenuItem;
    ReeteyiablonOlarakKaydet1: TMenuItem;
    N1: TMenuItem;
    DataSource12: TDataSource;
    ADO_ReceteIlacAciklama_: TADOTable;
    DataSource11: TDataSource;
    ADO_receteAcikla: TADOTable;
    DataSource5: TDataSource;
    ADO_RECETE_DETAY_: TADOTable;
    DataSource10: TDataSource;
    ADO_receteTani_: TADOTable;
    DataSource4: TDataSource;
    ADO_Recete: TADOQuery;
    PopupMenuEkleSil: TPopupMenu;
    E1: TMenuItem;
    S1: TMenuItem;
    GridIlaclarPopup: TPopupMenu;
    N3: TMenuItem;
    N4: TMenuItem;
    A1: TMenuItem;
    A2: TMenuItem;
    T1: TMenuItem;
    L1: TMenuItem;
    K1: TMenuItem;
    TaniListe: TListeAc;
    Oku: TTimer;
    ReceteSablonAc: TListeAc;
    R1: TMenuItem;
    S2: TMenuItem;
    PopupMenu2: TPopupMenu;
    ilacR2: TMenuItem;
    TaniR3: TMenuItem;
    TaniR4: TMenuItem;
    ilacR3: TMenuItem;
    R2: TMenuItem;
    M1: TMenuItem;
    ADO_RECETE_DETAY: TADOQuery;
    ADO_receteTani: TADOQuery;
    ADO_ReceteIlacAciklama: TADOQuery;
    O1: TMenuItem;
    O2: TMenuItem;
    N2: TMenuItem;
    Recete_PageControl: TcxPageControl;
    Recete_Recete: TcxTabSheet;
    Recete_TedaviOrder: TcxTabSheet;
    cxRecetePanel: TcxGroupBox;
    cxRecete: TcxGroupBox;
    cxPanelReceteBaslik: TcxGroupBox;
    chkTum: TcxCheckBox;
    cxPanelReceteDetay: TcxGroupBox;
    cxGrid4: TcxGrid;
    gridIlaclar: TcxGridDBTableView;
    gridIlaclarilacKodu: TcxGridDBColumn;
    gridIlaclarilacAdi: TcxGridDBColumn;
    gridIlaclarColumn2: TcxGridDBColumn;
    gridIlaclarkullanZamanUnit: TcxGridDBColumn;
    gridIlaclarkullanimZaman: TcxGridDBColumn;
    gridIlaclarColumn1: TcxGridDBColumn;
    gridIlaclarkullanimAdet: TcxGridDBColumn;
    gridIlaclarkullanimSekli: TcxGridDBColumn;
    gridIlaclarkullanimYolu: TcxGridDBColumn;
    cxGridLevel4: TcxGridLevel;
    pnlReceteDetaySag: TcxGroupBox;
    btnIlacSil: TcxButtonKadir;
    btnIlacEkle: TcxButtonKadir;
    ilacList: TcxImageComboKadir;
    chkSIK: TcxCheckBox;
    atc_kod_Tur: TcxImageComboKadir;
    btnEkle: TcxButtonKadir;
    chkEnson: TcxCheckBox;
    cxGrid10: TcxGrid;
    cxGridRecete: TcxGridDBTableView;
    cxGridDBColumn14: TcxGridDBColumn;
    cxGridDBColumn15: TcxGridDBColumn;
    cxGridReceteColumn1: TcxGridDBColumn;
    cxGridDBColumn16: TcxGridDBColumn;
    cxGridReceteColumn2: TcxGridDBColumn;
    cxGridDBColumn18: TcxGridDBColumn;
    cxGridReceteColumn3: TcxGridDBColumn;
    cxGridDBColumn19: TcxGridDBColumn;
    cxGridReceteColumn4: TcxGridDBColumn;
    cxGridLevel10: TcxGridLevel;
    cxSplitter1: TcxSplitter;
    cxPanelReceteTanilar: TcxGroupBox;
    cxGrid11: TcxGrid;
    cxGridReceteTani: TcxGridDBTableView;
    cxGridDBColumn20: TcxGridDBColumn;
    cxGridDBColumn21: TcxGridDBColumn;
    cxGridLevel11: TcxGridLevel;
    cxTaniBaslikPanel: TcxGroupBox;
    cxChkSIK: TcxCheckBox;
    cxButtonKadirTaniEkle: TcxButtonKadir;
    cxButtonKadirTaniSil: TcxButtonKadir;
    cxPanelReceteAciklama: TcxGroupBox;
    cxGrid9: TcxGrid;
    cxGridReceteAciklama: TcxGridDBTableView;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridLevel9: TcxGridLevel;
    pnlRaceAckSag: TcxGroupBox;
    cxButtonKadirAckEkle: TcxButtonKadir;
    cxButtonKadirAckSil: TcxButtonKadir;
    cxSplitter3: TcxSplitter;
    pnlIlacAck: TcxGroupBox;
    cxGrid8: TcxGrid;
    cxGridReceteIlacAciklama: TcxGridDBTableView;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridLevel8: TcxGridLevel;
    pnlReceteIlacAckSag: TcxGroupBox;
    cxButtonKadirIlacAckEkle: TcxButtonKadir;
    cxButtonKadirIlacAckSil: TcxButtonKadir;
    cxSplitter4: TcxSplitter;
    DataSource6: TDataSource;
    ADO_GecmisIlacTedavi: TADOQuery;
    DataSource8: TDataSource;
    ADO_IlacTedavi: TADOQuery;
    DataSource7: TDataSource;
    ADO_IlacGelis: TADOQuery;
    DataSource15: TDataSource;
    ADO_Tetkikler: TADOQuery;
    frmHastaIlacTedavi_cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxGrid15: TcxGrid;
    cxGridIlacTedaviPlani: TcxGridDBTableView;
    cxGridIlacTedaviPlanigk: TcxGridDBColumn;
    cxGridIlacTedaviPlaniust: TcxGridDBColumn;
    cxGridIlacTedaviPlaniilac: TcxGridDBColumn;
    cxGridIlacTedaviPlaniname1: TcxGridDBColumn;
    cxGridIlacTedaviPlanigrup: TcxGridDBColumn;
    cxGridIlacTedaviPlaniname2: TcxGridDBColumn;
    cxGridIlacTedaviPlaniperyot: TcxGridDBColumn;
    cxGridIlacTedaviPlanimiktar: TcxGridDBColumn;
    cxGridIlacTedaviPlanidoz: TcxGridDBColumn;
    cxGridIlacTedaviPlanidozperyotmiktar: TcxGridDBColumn;
    cxGridIlacTedaviPlanidonem: TcxGridDBColumn;
    cxGridIlacTedaviPlaniid: TcxGridDBColumn;
    cxGridIlacTedaviPlanigelisNo: TcxGridDBColumn;
    cxGridIlacTedaviPlaniColumn1: TcxGridDBColumn;
    cxGridIlacTedaviPlaniColumn2: TcxGridDBColumn;
    cxGridIlacTedaviPlaniColumn3: TcxGridDBColumn;
    cxGridIlacTedaviPlaniColumn4: TcxGridDBColumn;
    cxGridIlacTedaviPlaniColumn5: TcxGridDBColumn;
    cxGridIlacTedaviPlaniColumn6: TcxGridDBColumn;
    cxGridIlacTedaviPlaniColumn7: TcxGridDBColumn;
    cxGridLevel15: TcxGridLevel;
    cxGrid3: TcxGrid;
    gridTetkikList: TcxGridDBTableView;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    ARALIK: TcxGridDBColumn;
    KASIM: TcxGridDBColumn;
    EKIM: TcxGridDBColumn;
    EYLUL: TcxGridDBColumn;
    AGUSTOS: TcxGridDBColumn;
    TEMMUZ: TcxGridDBColumn;
    HAZIRAN: TcxGridDBColumn;
    MAYIS: TcxGridDBColumn;
    NISAN: TcxGridDBColumn;
    MART: TcxGridDBColumn;
    SUBAT: TcxGridDBColumn;
    OCAK: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    cxSplitter2: TcxSplitter;
    Tetkik: TcxTabSheet;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    K: TcxStyle;
    Yesil_siyah: TcxStyle;
    Sari_Siyah: TcxStyle;
    PopupMenu3: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    y1: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    Son6AylikTetkikSonu1: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    D1: TMenuItem;
    MenuItem9: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure Yukle;override;
    procedure ReceteGetir(_dosyaNo , gelisNo : string);
    procedure E1Click(Sender: TObject);
    procedure ilacEkle(islem : integer);
    procedure TaniEkle;
    procedure AckEkle(islem : integer);
    procedure Yazdir(Tip : string = '');
    procedure ReceteIptal;
    procedure MedulaSend(islem : integer);
    procedure YeniRecete(islem : integer);
    procedure cxButtonKadirAckSilClick(Sender: TObject);
    procedure cxButtonKadirTaniEkleClick(Sender: TObject);
    procedure cxButtonKadirAckEkleClick(Sender: TObject);
    procedure gridIlaclarDblClick(Sender: TObject);
    procedure cxButtonCClick(Sender: TObject);
    procedure cxGridReceteAciklamaDblClick(Sender: TObject);
    procedure cxGridReceteIlacAciklamaDblClick(Sender: TObject);
    procedure cxButtonKadirIlacAckSilClick(Sender: TObject);
    procedure cxButtonKadirIlacAckEkleClick(Sender: TObject);
    procedure OkuTimer(Sender: TObject);
    procedure EreceteNoSmsSend;
    procedure MedEczane;
    procedure SablondanYeniRecete;
    procedure ReceteyiSablonOlarakKaydet;
    procedure PopupMenu2Popup(Sender: TObject);
    procedure cxGridReceteDblClick(Sender: TObject);
    function ReceteImzalaGonder : string;
    function ReceteIlacAckImzalaGonder : string;
    function ReceteAckImzalaGonder : string;
    function ReceteTaniImzalaGonder : string;
    function ReceteGonder : string;
    function ReceteImzalaSil : string;
    function ReceteImzalaOnay(tip : string = 'ReceteImzalaOnay') : string;
    function ReceteSil : string;
    procedure Listele;
    procedure ReceteyeEkle;
    procedure TetkikSonucGridKolonGizle;
    procedure TedaviYukle;
    procedure btnIlacEkleClick(Sender: TObject);
    procedure btnIlacSilClick(Sender: TObject);
    procedure Duzenle;
    procedure chkTumPropertiesEditValueChanged(Sender: TObject);
    procedure ADO_ReceteAfterScroll(DataSet: TDataSet);
    procedure SIKKullanimaEkle(count : integer = 0);
    procedure chkSIKClick(Sender: TObject);
    procedure atc_kod_TurPropertiesEditValueChanged(Sender: TObject);
    procedure ADO_RECETE_DETAYAfterPost(DataSet: TDataSet);
    procedure gridIlaclarEditValueChanged(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem);
    procedure cxGridReceteFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure ilacListPropertiesEditValueChanged(Sender: TObject);
    procedure Ekle(tip : string = 'I');
    procedure btnEkleClick(Sender: TObject);
    procedure ADO_RECETE_DETAYBeforePost(DataSet: TDataSet);
    procedure ADO_receteTaniBeforePost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure gridIlaclarFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure ADO_ReceteIlacAciklamaNewRecord(DataSet: TDataSet);
    procedure Recete_PageControlPageChanging(Sender: TObject;
      NewPage: TcxTabSheet; var AllowChange: Boolean);
    procedure cxGridIlacTedaviPlaniStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure gridTetkikListStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure MenuItem3Click(Sender: TObject);
    procedure Recete_PageControlChange(Sender: TObject);
  private
    { Private declarations }
    FReg : TRegistry;
    function findMethod(dllHandle: Cardinal; methodName: string): FARPROC;
  protected
    function CheckReceteStatus (const pCheckExists, pCheckSent, pCheckUnSent,
      pCheckDr, pAllowDiffDr : Boolean; pMsg : Boolean = True) : Boolean;
  public
    function Init(Sender: TObject) : Boolean; override;
    { Public declarations }
  end;


const
      formGenislik = 1340;
      formYukseklik = 700;

const
 LIB_DLL = 'NoktaDLL.dll';
 //LIB_DLL = 'D:\Projeler\VS\c#\ListeDLL_Cades\ListeDLL\bin\x86\Debug\NoktaDLL.dll';


var
  frmHastaRecete: TfrmHastaRecete;
  AdoHastaGelis : TADOQuery;
  AdoHastaGelisDataSource : TDataSource;
  AdoHastaListe : TADOQuery;
  Pm : TComponent;
  db ,ReceteWhereGelis: string;
  _TableName_ : string = 'Recete';
  _TableNameDetay_ : string = 'ReceteDetay';
  _p_ : string;
  barkod , ilacAdi: string;
  _tani_, keys , doz1,doz2 , peryot,peryotAdet , kulYol : string;

implementation

uses Data_Modul,AnaUnit,Rapor,receteSablonlari,IlacSarfListesi, TransUtils ,
     MedEczane,HastaiLacTedavi;
{$R *.dfm}

function TfrmHastaRecete.findMethod(dllHandle: Cardinal;  methodName: string): FARPROC;
begin
  Result := GetProcAddress(dllHandle, pchar(methodName));
end;

function TfrmHastaRecete.ReceteImzalaGonder : string;
var
  imzala : TReceteImzala;
  dllHandle  : Cardinal;
  receteId,TesisKodu: integer;
  recete,doktorKullanici,doktorsifre,pin,url,cardType : string;
  doktorTc : string;
  ss : PWideChar;
  sql , yol , yol1: string;
begin



  url := (datalar.receteURL);
  if not CheckReceteStatus (True, False, True, True, True) then Exit;

  if Tag = TagfrmPersonelRecete
  then
   sql := 'sp_PersonelReceteToXML ' + ADO_Recete.FieldByName('id').AsString
  else
  sql := 'sp_HastaReceteToXML ' + ADO_Recete.FieldByName('id').AsString;

  QuerySelect(sql);


  ss := 'Yok';
  receteId := (ADO_Recete.FieldByName('id').AsInteger);
  recete := (SelectAdo.FieldByName('recete').AsString);
  doktorKullanici := (SelectAdo.FieldByName('doktorKullanici').AsString);
  doktorsifre :=  (SelectAdo.FieldByName('doktorsifre').AsString);
  pin :=  (SelectAdo.FieldByName('pin').AsString);
  doktorTc :=  (SelectAdo.FieldByName('doktorTc').AsString);
  TesisKodu :=  (SelectAdo.FieldByName('TesisKodu').AsInteger);
  cardType :=  SelectAdo.FieldByName('cardType').AsString;


  dllHandle := LoadLibrary(LIB_DLL);
  try
    if dllHandle = 0 then exit;

    @imzala := findMethod(dllHandle, 'ReceteImzalaGonder');
    if addr(imzala) <> nil then
    imzala(receteId,PWidechar(recete),PWidechar(doktorKullanici),PWidechar(doktorsifre),PWidechar(pin),PWidechar(doktorTc),PWidechar(TesisKodu),PWidechar(ss),PWidechar(url),PWidechar(cardType),1);

    ReceteImzalaGonder := ss;

    if not Assigned(imzala) then
      raise Exception.Create(LIB_DLL + ' içersinde ReceteImzalaGonder bulunamadý!');

  finally
    FreeLibrary(dllHandle);
  end;
end;

procedure TfrmHastaRecete.ReceteyeEkle;
var
 x ,j,y : integer;
 barkod ,ilac, ilacadi,peryot,adet,peryotadet,doz,kyol,kutuAdet,miktar : string;
 gelisNo,id ,sql,_tani_,keys: string;
 unite : real;
 ack : TStringList;
 ado : TADOQuery;
begin
   for x := 0 to cxGridIlacTedaviPlani.Controller.SelectedRowCount - 1 do
   begin
             Application.ProcessMessages;
             ilac := cxGridIlacTedaviPlani.DataController.GetValue(
                                            cxGridIlacTedaviPlani.Controller.SelectedRows[x].RecordIndex,
                                            cxGridIlacTedaviPlani.DataController.GetItemByFieldName('ilac').Index);

             ilacadi := trimleft(cxGridIlacTedaviPlani.DataController.GetValue(
                                            cxGridIlacTedaviPlani.Controller.SelectedRows[x].RecordIndex,
                                            cxGridIlacTedaviPlani.DataController.GetItemByFieldName('ilacname').Index));

             doz := cxGridIlacTedaviPlani.DataController.GetValue(
                                            cxGridIlacTedaviPlani.Controller.SelectedRows[x].RecordIndex,
                                            cxGridIlacTedaviPlani.DataController.GetItemByFieldName('doz').Index);

             miktar := cxGridIlacTedaviPlani.DataController.GetValue(
                                            cxGridIlacTedaviPlani.Controller.SelectedRows[x].RecordIndex,
                                            cxGridIlacTedaviPlani.DataController.GetItemByFieldName('miktar').Index);

             peryot := cxGridIlacTedaviPlani.DataController.GetValue(
                                            cxGridIlacTedaviPlani.Controller.SelectedRows[x].RecordIndex,
                                            cxGridIlacTedaviPlani.DataController.GetItemByFieldName('peryot').Index);

             gelisno := cxGridIlacTedaviPlani.DataController.GetValue(cxGridIlacTedaviPlani.Controller.SelectedRows[x].RecordIndex,
                                            cxGridIlacTedaviPlani.DataController.GetItemByFieldName('gelisNo').Index);

             kyol := cxGridIlacTedaviPlani.DataController.GetValue(cxGridIlacTedaviPlani.Controller.SelectedRows[x].RecordIndex,
                           cxGridIlacTedaviPlani.DataController.GetItemByFieldName('kyol').Index);

             kutuAdet := '1';



             if ADO_RECETE_DETAY.Locate('ilacKodu;receteId',VarArrayOf([ilac,ADO_Recete.fieldbyname('id').AsString]),[]) = false
             Then Begin
                ADO_RECETE_DETAY.Append;
                ADO_RECETE_DETAY.FieldByName('ilacKodu').AsString := ilac;
                ADO_RECETE_DETAY.FieldByName('ilacAdi').AsString := ilacadi;
                ADO_RECETE_DETAY.FieldByName('kullanZamanUnit').AsString := peryot;
                ADO_RECETE_DETAY.FieldByName('kullanimZaman').AsString := '1';
                ADO_RECETE_DETAY.FieldByName('adet').AsString := kutuadet;
                ADO_RECETE_DETAY.FieldByName('kullanimAdet2').ASstring := miktar;
                ADO_RECETE_DETAY.FieldByName('kullanimAdet').AsString := doz;
                ADO_RECETE_DETAY.FieldByName('kullanimYolu').AsString := ifThen(kyol = '' ,'1',kyol);

                try
                   unite := IlacKoduToUnite(ilac,_dosyaNo_,_gelisNo_,peryot,miktar) * strtofloat(kutuadet);
                   ADO_RECETE_DETAY.FieldByName('kullanZamanUnit').AsString := peryot;
                //   ADO_RECETE_DETAY.FieldByName('kullanimZaman').AsString := miktar;
                except
                end;
                  ADO_RECETE_DETAY.FieldByName('kullanimAdet').AsString := floattostr(unite);
                  ADO_RECETE_DETAY.Post;


                ack := IlacReceteAciklama(_dosyaNo_,_gelisNo_,ilac,
                                        floattostr(unite*strtofloat(kutuadet)));


                 sql := 'delete from ReceteIlacAciklama where receteDetayId = ' + frmHastaRecete.ADO_RECETE_DETAY.fieldbyname('id').AsString;
                 datalar.QueryExec(sql);

                 ADO_ReceteIlacAciklama.Active := false;
                 ADO_ReceteIlacAciklama.Active := true;

                 for j := 0 to ack.Count-1 do
                 begin
                    ADO_ReceteIlacAciklama.Append;
                    ADO_ReceteIlacAciklama.FieldByName('aciklama').AsString := copy(ack[j],3,500);
                    ADO_ReceteIlacAciklama.FieldByName('aciklamaTip').AsString := trim(copy(ack[j],1,2));
                    ADO_ReceteIlacAciklama.Post;
                    if copy(ADO_ReceteIlacAciklama.FieldByName('aciklama').AsString,1,4) = 'Hata'
                    Then ShowMessageSkin('Dikkat , Doz Bilgisini Kontrol Ediniz','','','info');
                 end;

                 _tani_ := IlacReceteTaniEkle(ilac);
                 y := pos(';',_tani_)-1;
                 keys := copy(_tani_,1,y);
                 if copy(_tani_,1,y) <> ''
                 Then Begin
                   if ADO_receteTani.Locate('taniKodu;receteId',VarArrayOf([keys,ADO_Recete.fieldbyname('id').AsString]) ,[]) = False
                   Then Begin
                     ADO_receteTani.Append;
                     ADO_receteTani.fieldbyname('taniKodu').AsString := copy(_tani_,1,pos(';',_tani_)-1);
                     ADO_receteTani.fieldbyname('tani').AsString := copy(_tani_,pos(';',_tani_)+1,100);
                     ADO_receteTani.Post;
                   End;
                 End;
             End; //locate end

   End; // for end
End;




function TfrmHastaRecete.ReceteIlacAckImzalaGonder : string;
var
  imzala : TReceteImzala;
  dllHandle: Cardinal;
  receteDetayId: integer;
  recete,doktorKullanici,doktorsifre,pin,url,cardType ,TesisKodu: string;
  doktorTc : string;
  ss : PWideChar;
  sql ,yol , yol1: string;
begin
  url := (datalar.receteURL);
//  if not CheckReceteStatus (True, False, True, True, True) then Exit;
  sql := 'sp_HastaReceteIlacAckEkleToXML ' + ADO_RECETE_DETAY.FieldByName('id').AsString;
  QuerySelect(sql);


  ss := 'Yok';
  receteDetayId := (ADO_RECETE_DETAY.FieldByName('id').AsInteger);
  recete := (SelectAdo.FieldByName('ReceteIlacAck').AsString);
  doktorKullanici := (SelectAdo.FieldByName('doktorKullanici').AsString);
  doktorsifre :=  (SelectAdo.FieldByName('doktorsifre').AsString);
  pin :=  (SelectAdo.FieldByName('pin').AsString);
  doktorTc :=  (SelectAdo.FieldByName('doktorTc').AsString);
  TesisKodu :=  (SelectAdo.FieldByName('TesisKodu').AsString);
  cardType :=  SelectAdo.FieldByName('cardType').AsString;

  dllHandle := LoadLibrary(LIB_DLL);
  try
    if dllHandle = 0 then exit;

    @imzala := findMethod(dllHandle, 'ReceteImzalaIlacAckEkle');
    if addr(imzala) <> nil then
    imzala(receteDetayId,PWidechar(recete),PWidechar(doktorKullanici),PWidechar(doktorsifre),PWidechar(pin),PWidechar(doktorTc),PWidechar(TesisKodu),PWidechar(ss),PWidechar(url),PWidechar(cardType),1);

    ReceteIlacAckImzalaGonder := ss;

    if not Assigned(imzala) then
      raise Exception.Create(LIB_DLL + ' içersinde ReceteImzalaIlacAckEkle bulunamadý!');

  finally
    FreeLibrary(dllHandle);
  end;
end;



function TfrmHastaRecete.ReceteAckImzalaGonder : string;
var
  imzala : TReceteImzala;
  dllHandle: Cardinal;
  receteId: integer;
  recete,doktorKullanici,doktorsifre,pin,url,cardType,TesisKodu : string;
  doktorTc : string;
  ss : PWideChar;
  sql ,yol , yol1: string;
begin

  url := (datalar.receteURL);
//  if not CheckReceteStatus (True, False, True, True, True) then Exit;
  sql := 'sp_HastaReceteAckEkleToXML ' + ADO_receteAcikla.FieldByName('id').AsString;
  QuerySelect(sql);


  ss := 'Yok';
  receteId := (ADO_RECETE.FieldByName('id').AsInteger);
  recete := (SelectAdo.FieldByName('ReceteAck').AsString);
  doktorKullanici := (SelectAdo.FieldByName('doktorKullanici').AsString);
  doktorsifre :=  (SelectAdo.FieldByName('doktorsifre').AsString);
  pin :=  (SelectAdo.FieldByName('pin').AsString);
  doktorTc :=  (SelectAdo.FieldByName('doktorTc').AsString);
  TesisKodu :=  (SelectAdo.FieldByName('TesisKodu').AsString);
  cardType :=  SelectAdo.FieldByName('cardType').AsString;

  dllHandle := LoadLibrary(LIB_DLL);
  try
    if dllHandle = 0 then exit;

    @imzala := findMethod(dllHandle, 'ReceteImzalaAckEkle');
    if addr(imzala) <> nil then
    imzala(receteId,PWidechar(recete),PWidechar(doktorKullanici),PWidechar(doktorsifre),PWidechar(pin),PWidechar(doktorTc),PWidechar(TesisKodu),PWidechar(ss),PWidechar(url),PWidechar(cardType),1);

    ReceteAckImzalaGonder := ss;

    if not Assigned(imzala) then
      raise Exception.Create(LIB_DLL + ' içersinde ReceteImzalaAckEkle bulunamadý!');

  finally
    FreeLibrary(dllHandle);
  end;
end;



function TfrmHastaRecete.ReceteTaniImzalaGonder : string;
var
  imzala : TReceteImzala;
  dllHandle: Cardinal;
  receteId: integer;
  recete,doktorKullanici,doktorsifre,pin,url,cardType ,TesisKodu: string;
  doktorTc : string;
  ss : PWideChar;
  sql ,yol , yol1: string;
begin

  url := (datalar.receteURL);
 // if not CheckReceteStatus (True, False, True, True, True) then Exit;
  sql := 'sp_HastaReceteTaniEkleToXML ' + ADO_RECETE.FieldByName('id').AsString + ',' +
         QuotedStr(ADO_receteTani.FieldByName('taniKodu').AsString);
  QuerySelect(sql);


  ss := 'Yok';
  receteId := (ADO_RECETE.FieldByName('id').AsInteger);
  recete := (SelectAdo.FieldByName('ReceteTani').AsString);
  doktorKullanici := (SelectAdo.FieldByName('doktorKullanici').AsString);
  doktorsifre :=  (SelectAdo.FieldByName('doktorsifre').AsString);
  pin :=  (SelectAdo.FieldByName('pin').AsString);
  doktorTc :=  (SelectAdo.FieldByName('doktorTc').AsString);
  TesisKodu :=  (SelectAdo.FieldByName('TesisKodu').AsString);
  cardType :=  SelectAdo.FieldByName('cardType').AsString;

  dllHandle := LoadLibrary(LIB_DLL);
  try
    if dllHandle = 0 then exit;

    @imzala := findMethod(dllHandle, 'ReceteImzalaTaniEkle');
    if addr(imzala) <> nil then
    imzala(receteId,PWidechar(recete),PWidechar(doktorKullanici),PWidechar(doktorsifre),PWidechar(pin),PWidechar(doktorTc),PWidechar(TesisKodu),PWidechar(ss),PWidechar(url),PWidechar(cardType),1);

    ReceteTaniImzalaGonder := ss;

    if not Assigned(imzala) then
      raise Exception.Create(LIB_DLL + ' içersinde ReceteImzalaTaniEkle bulunamadý!');

  finally
    FreeLibrary(dllHandle);
  end;
end;



function TfrmHastaRecete.ReceteGonder : string;
var
  imzala : TReceteGonder;
  dllHandle: Cardinal;
  receteId,TesisKodu: integer;
  recete,doktorKullanici,doktorsifre,url: string;
  doktorTc : string;
  ss : PWideChar;
  sql : string;
begin
  url := (datalar.receteURL);
  if not CheckReceteStatus (True, False, True, True, True) then Exit;
  sql := 'exec sp_HastaReceteToXML_Imzasiz ' + ADO_Recete.FieldByName('id').AsString;
  QuerySelect(sql);


  ss := 'Yok';
  receteId := (ADO_Recete.FieldByName('id').AsInteger);
  recete := (SelectAdo.FieldByName('recete').AsString);
  doktorKullanici := (SelectAdo.FieldByName('doktorKullanici').AsString);
  doktorsifre :=  (SelectAdo.FieldByName('doktorsifre').AsString);
  doktorTc :=  (SelectAdo.FieldByName('doktorTc').AsString);
  TesisKodu :=  (SelectAdo.FieldByName('TesisKodu').AsInteger);

  dllHandle := LoadLibrary(LIB_DLL);
  try
    if dllHandle = 0 then exit;

    @imzala := findMethod(dllHandle, 'ReceteGonder');
    if addr(imzala) <> nil then
    imzala(receteId,recete,doktorKullanici,doktorsifre,doktorTc,TesisKodu,ss,url);

    ReceteGonder := ss;

    if not Assigned(imzala) then
      raise Exception.Create(LIB_DLL + ' içersinde ReceteGonder bulunamadý!');
  finally
    FreeLibrary(dllHandle);
  end;
end;


function TfrmHastaRecete.ReceteImzalaSil : string;
var
  imzala : TReceteImzalaDelete;
  dllHandle: Cardinal;
  recete,doktorKullanici,doktorsifre,pin,doktorTc,TesisKodu,receteId,url,cardType: WideString;
  ss : PWideChar;
  sql ,yol , yol1: string;
begin

  url := datalar.receteURL;
  if not CheckReceteStatus (True, True, False, True, True) then Exit;

  if Tag = TagfrmPersonelRecete
  then
      sql := 'sp_PersonelReceteSilToXML ' + ADO_Recete.FieldByName('id').AsString
  else
      sql := 'sp_HastaReceteSilToXML ' + ADO_Recete.FieldByName('id').AsString;

  QuerySelect(sql);

  ss := '';
  receteId := ADO_Recete.FieldByName('id').AsString;
  recete := SelectAdo.FieldByName('ReceteSil').AsString;
  doktorKullanici :=  SelectAdo.FieldByName('doktorKullanici').AsString;
  doktorsifre :=  SelectAdo.FieldByName('doktorsifre').AsString;
  pin :=  SelectAdo.FieldByName('pin').AsString;
  doktorTc :=  SelectAdo.FieldByName('doktorTc').AsString;
  TesisKodu :=  SelectAdo.FieldByName('TesisKodu').AsString;
  cardType :=  SelectAdo.FieldByName('cardType').AsString;

  dllHandle := LoadLibrary(LIB_DLL);
  try
    if dllHandle = 0 then exit;


    @imzala := findMethod(dllHandle, 'ReceteImzalaSil');
    if addr(imzala) <> nil then
    imzala(PWideChar(receteId),PWideChar(recete),
                                  PWideChar(doktorKullanici),PWideChar(doktorsifre),
                                  PWideChar(pin),PWideChar(doktorTc),PWideChar(TesisKodu),ss,
                                  PWideChar(datalar.receteURL),
                                  PWideChar(cardType));

    ReceteImzalaSil := ss;

    if not Assigned(imzala) then
      raise Exception.Create(LIB_DLL + ' içersinde ReceteImzalaSil bulunamadý!');
  finally
    FreeLibrary(dllHandle);
  end;
end;


function TfrmHastaRecete.ReceteImzalaOnay(tip : string = 'ReceteImzalaOnay') : string;
var
  imzala : TReceteImzalaDelete;
  dllHandle: Cardinal;
  recete,doktorKullanici,doktorsifre,pin,doktorTc,TesisKodu,receteId,url,cardType: WideString;
  ss : PWideChar;
  sql ,yol , yol1: string;
begin

  url := datalar.receteURL;
  if not CheckReceteStatus (True, True, False, True, True) then Exit;

  sql := 'sp_HastaReceteOnayToXML ' + ADO_Recete.FieldByName('id').AsString + ',' + QuotedStr(tip);

  QuerySelect(sql);

  ss := '';
  receteId := ADO_Recete.FieldByName('id').AsString;
  recete := SelectAdo.FieldByName('ReceteOnay').AsString;
  doktorKullanici :=  SelectAdo.FieldByName('doktorKullanici').AsString;
  doktorsifre :=  SelectAdo.FieldByName('doktorsifre').AsString;
  pin :=  SelectAdo.FieldByName('pin').AsString;
  doktorTc :=  SelectAdo.FieldByName('doktorTc').AsString;
  TesisKodu :=  SelectAdo.FieldByName('TesisKodu').AsString;
  cardType :=  SelectAdo.FieldByName('cardType').AsString;

  dllHandle := LoadLibrary(LIB_DLL);
  try
    if dllHandle = 0 then exit;


    @imzala := findMethod(dllHandle, tip);
    if addr(imzala) <> nil then
    imzala(PWideChar(receteId),PWideChar(recete),
                                  PWideChar(doktorKullanici),PWideChar(doktorsifre),
                                  PWideChar(pin),PWideChar(doktorTc),PWideChar(TesisKodu),ss,
                                  PWideChar(datalar.receteURL),
                                  PWideChar(cardType));

    ReceteImzalaOnay := ss;

    if not Assigned(imzala) then
      raise Exception.Create(LIB_DLL + ' içersinde ' + Tip + ' bulunamadý!');
  finally
    FreeLibrary(dllHandle);
  end;
end;

function TfrmHastaRecete.ReceteSil : string;
var
  imzala : TReceteDelete;
  dllHandle: Cardinal;
  recete,doktorKullanici,doktorsifre,doktorTc,receteId,url: WideString;
  TesisKodu : integer;
  ss : PWideChar;
  sql : string;
begin
  url := datalar.receteURL;
  if not CheckReceteStatus (True, True, False, True, True) then Exit;
  sql := 'sp_HastaReceteSil_Imzasiz ' + ADO_Recete.FieldByName('id').AsString;
  QuerySelect(sql);

  ss := '';
  receteId := ADO_Recete.FieldByName('id').AsString;
  recete := SelectAdo.FieldByName('ReceteSil').AsString;
  doktorKullanici :=  SelectAdo.FieldByName('doktorKullanici').AsString;
  doktorsifre :=  SelectAdo.FieldByName('doktorsifre').AsString;
  doktorTc :=  SelectAdo.FieldByName('doktorTc').AsString;
  TesisKodu :=  SelectAdo.FieldByName('TesisKodu').AsInteger;

  dllHandle := LoadLibrary(LIB_DLL);
  try
    if dllHandle = 0 then exit;


    @imzala := findMethod(dllHandle, 'ReceteSil');
    if addr(imzala) <> nil then
    imzala(PWideChar(receteId),PWideChar(recete),
                                  PWideChar(doktorKullanici),PWideChar(doktorsifre),
                                  PWideChar(doktorTc),TesisKodu,ss,
                                  PWideChar(datalar.receteURL));

    ReceteSil := ss;

    if not Assigned(imzala) then
      raise Exception.Create(LIB_DLL + ' içersinde ReceteSil bulunamadý!');
  finally
    FreeLibrary(dllHandle);
  end;
end;

procedure TfrmHastaRecete.MedEczane;
var
  d , tc : string;
  F : TGirisForm;
  GirisFormRecord : TGirisFormRecord;
begin
  d := copy(ADO_Recete.FieldByName('doktor').asstring,1,4);

//  MedEczaneGit(datalar._doktorReceteUser,datalar._doktorRecetePas,_TC_);

         GirisFormRecord.F_TC_ := _TC_;
         GirisFormRecord.F_HastaAdSoyad_ := _HastaAdSoyad_;
         try
          F := FormINIT(TagfrmMedEczane,GirisFormRecord,ikHayir,'');
          TfrmMedEczane(F).receteForm := self;
          TfrmMedEczane(F)._user := datalar._doktorReceteUser;
          TfrmMedEczane(F)._pas := datalar._doktorRecetePas;
          if F <> nil then F.ShowModal;

         finally
           F.Free;
         end;

         (*
         if FindTab(AnaForm.sayfalar,TagfrmMedEczane)
         Then begin
           F := TGirisForm(FormClassType(TagfrmMedEczane));
           TGirisForm(FormClassType(TagfrmMedEczane))._dosyaNO_ := '';
           TGirisForm(FormClassType(TagfrmMedEczane))._value_ := 'MedEczane';
           TGirisForm(FormClassType(TagfrmMedEczane))._TC_ := _TC_;
           TGirisForm(FormClassType(TagfrmMedEczane))._HastaAdSoyad_ := _HastaAdSoyad_;

           TGirisForm(FormClassType(TagfrmMedEczane)).Init(F);
         end
         Else begin
          F := FormINIT(TagfrmMedEczane,self,GirisFormRecord,'',NewTab(AnaForm.sayfalar,TagfrmMedEczane),ikEvet,'Giriþ');
          if F <> nil then F.show;
         end;
         *)

end;

procedure TfrmHastaRecete.ReceteyiSablonOlarakKaydet;
var
  sql , sablon , id, idd : string;
  ado : TADOQuery;
begin
   // sablon := InputBox('Reçete Þablon','Þablon Tanýmý Giriniz','Sablon1');

    if cxGridRecete.Controller.SelectedRowCount = 0 Then exit;

    datalar.YeniRecete.sablonAdi := '';
    if mrYes = ShowPopupForm('Reçete Þablon',ReceteyiSablonKaydet)
    then begin
         if datalar.YeniRecete.sablonAdi <> ''
         then begin
           datalar.ADOConnection2.BeginTrans;
           try
             ado := TADOQuery.Create(nil);
             try
               sql := 'insert into ReceteSablon (sablonAdi,receteTur,receteAltTur,doktor) ' +
                      ' values ( ' + QuotedStr(datalar.YeniRecete.sablonAdi) + ',' +
                                     QuotedStr(ADO_Recete.fieldbyname('receteTur').AsString) + ',' +
                                     QuotedStr(ADO_Recete.fieldbyname('receteAltTur').AsString) + ',' +
                                     QuotedStr(ADO_Recete.fieldbyname('doktor').AsString) + ') select SCOPE_IDENTITY() as id ';

               datalar.QuerySelect(ado,sql);
               id := ado.fieldbyname('id').AsString;


               ADO_RECETE_DETAY.First;
               while not ADO_RECETE_DETAY.Eof do
               begin

                sql := 'insert into ReceteDetaySablon (ReceteSablonID,ilacKodu,ilacAdi,EtkenMadde,kullanimZaman,kullanimAdet,kullanZamanUnit '+
                                                      ' ,kullanimSekli,kullanimYolu,kullanimAdet2,adet) ' +
                                    ' values(' + id + ',' +
                                                 QuotedStr(ADO_RECETE_DETAY.fieldbyname('ilacKodu').AsString) + ',' +
                                                 QuotedStr(ADO_RECETE_DETAY.fieldbyname('ilacAdi').AsString) + ',' +
                                                 QuotedStr(ADO_RECETE_DETAY.fieldbyname('EtkenMadde').AsString) + ',' +
                                                 QuotedStr(ADO_RECETE_DETAY.fieldbyname('kullanimZaman').AsString) + ',' +
                                                 ADO_RECETE_DETAY.fieldbyname('kullanimAdet').AsString + ',' +
                                                 QuotedStr(ADO_RECETE_DETAY.fieldbyname('kullanZamanUnit').AsString) + ',' +
                                                 QuotedStr(ADO_RECETE_DETAY.fieldbyname('kullanimSekli').AsString) + ',' +
                                                 QuotedStr(ADO_RECETE_DETAY.fieldbyname('kullanimYolu').AsString) + ',' +
                                                 ADO_RECETE_DETAY.fieldbyname('kullanimAdet2').DisplayText + ',' +
                                                 ADO_RECETE_DETAY.fieldbyname('adet').AsString + ') select SCOPE_IDENTITY() as id' ;

                 datalar.QuerySelect(ado,sql);
                 idd := ado.fieldbyname('id').AsString;

                 ADO_ReceteIlacAciklama.First;
                 while not ADO_ReceteIlacAciklama.Eof do
                 begin
                    sql := ' insert into ReceteIlacAciklamaSablon (ReceteDetaySablonId,aciklamaTip,aciklama) ' +
                                        ' values ( ' + idd + ',' +
                                        QuotedStr(ADO_ReceteIlacAciklama.fieldbyname('aciklamaTip').AsString) + ',' +
                                        QuotedStr(ADO_ReceteIlacAciklama.fieldbyname('aciklama').AsString) + ')';
                    datalar.QueryExec(ado,sql);
                    ADO_ReceteIlacAciklama.Next;
                 end;


                 ADO_RECETE_DETAY.Next;
               end;

               ADO_receteAcikla.First;
               while not ADO_receteAcikla.Eof do
               begin
                 sql := 'insert into ReceteAciklamaSablon (receteSablonId,aciklamaTip,aciklama) ' +
                             'values ( ' + id + ',' +
                             QuotedStr(ADO_receteAcikla.fieldbyname('aciklamaTip').AsString) + ',' +
                             QuotedStr(ADO_receteAcikla.fieldbyname('aciklama').AsString) + ')';
                 datalar.QueryExec(ado,sql);
                 ADO_receteAcikla.Next;
               end;


               ADO_receteTani.First;
               while not ADO_receteTani.Eof do
               begin
                 sql := 'insert into ReceteTaniSablon (ReceteSablonId,taniKodu,tani) ' +
                             'values ( ' + id + ',' +
                             QuotedStr(ADO_receteTani.fieldbyname('taniKodu').AsString) + ',' +
                             QuotedStr(ADO_receteTani.fieldbyname('tani').AsString) + ')';
                 datalar.QueryExec(ado,sql);
                 ADO_receteTani.Next;
               end;

               ShowMessageSkin('Þablon Kayýt Edildi','','','info');
             finally
               ado.Free;
             end;
             datalar.ADOConnection2.CommitTrans;
           except on e : Exception do
            begin
              datalar.ADOConnection2.RollbackTrans;
              ShowMessageSkin(e.Message,'','','info');
            end;
           end;
         end;

   end;
end;


procedure TfrmHastaRecete.Listele;
var
  sql ,_Tarih: string;
  i : integer;
  ado : TADOQuery;
begin
  _Tarih := NoktasizTarih(_provizyonTarihi_);
  try
    sql := 'exec sp_HastaTetkikTakipPIVOT ' + QuotedStr(_dosyaNo_) + ',' + QuotedStr(_Tarih) + ',' + '1,''H'',' + QuotedStr(datalar.AktifSirket);
    datalar.QuerySelect(ADO_Tetkikler,sql);

    TetkikSonucGridKolonGizle;

    sql := 'exec sp_HastaTetkikTakipPIVOT ' + QuotedStr(_dosyaNo_) + ',' + QuotedStr(_Tarih) + ',' + '0,''H'',' + QuotedStr(datalar.AktifSirket);
    ado := TADOQuery.Create(nil);
    try
      datalar.QuerySelect(ado,sql);

      while not ado.Eof do
      begin
        i := gridTetkikList.GetColumnByFieldName(ado.fieldbyname('ad').AsString).Index;
        gridTetkikList.Columns[i].Visible := True;
        gridTetkikList.Columns[i].Width := 50;
        gridTetkikList.Columns[i].Index := ado.RecNo + 2;
        ado.Next;
      end;
    finally
      ado.Free;
    end;
  except
  end;
end;




procedure TfrmHastaRecete.Recete_PageControlChange(Sender: TObject);
var
  Form : TGirisForm;
  GirisFormRecord : TGirisFormRecord;
  msj , tokenParams ,path , jsonText : string;
begin

  if Recete_PageControl.ActivePage = Recete_TedaviOrder
  then
  begin
   if ADO_GecmisIlacTedavi.Active = False
   then begin
    TedaviYukle;
    Listele;
   end;
  end;
end;

procedure TfrmHastaRecete.Recete_PageControlPageChanging(Sender: TObject;
  NewPage: TcxTabSheet; var AllowChange: Boolean);

begin



(*
  datalar.KontrolUserSet := False;
  inherited;
  if datalar.KontrolUserSet = True then exit;

  GirisFormRecord.F_dosyaNO_ := _dosyaNO_;
  GirisFormRecord.F_gelisNo_ := _gelisNo_;

  GirisFormRecord.F_HastaAdSoyad_ := _HastaAdSoyad_;
  GirisFormRecord.F_dosyaNO_ := _dosyaNO_;
  GirisFormRecord.F_ResourceID_ := ADO_Recete.FieldByName('id').AsString;
  Form := FormINIT(TagfrmHastaIlacTedavi,GirisFormRecord,ikEvet,'');
  TfrmHastaIlacTedavi(Form).receteForm := self;
  Form._foto_ := _foto_;
  if Form <> nil then Form.ShowModal;
  *)


end;

procedure TfrmHastaRecete.SablondanYeniRecete;
var
  sql : string;
  ado , adod : TADOQuery;
  L : ArrayListeSecimler;
begin
   L := ReceteSablonAc.ListeGetir;
   if High (L) < 0 then Exit;
   if L[0].kolon1 <> ''
   Then Begin
     ado := TADOQuery.Create(nil);
     try
       adod := TADOQuery.Create(nil);
       try
         sql := 'select * from ReceteDetaySablon where ReceteSablonId = ' + L[0].kolon1;
         datalar.QuerySelect(ado,sql);

         while not ado.Eof do
         begin
           if not ADO_RECETE_DETAY.Locate('ilacKodu',ado.FieldByName('ilacKodu').AsString,[])
           then begin
               ADO_RECETE_DETAY.Append;
               ADO_RECETE_DETAY.FieldByName('ilacKodu').AsString := ado.FieldByName('ilacKodu').AsString;
               ADO_RECETE_DETAY.FieldByName('ilacAdi').AsString := ado.FieldByName('ilacAdi').AsString;
               ADO_RECETE_DETAY.FieldByName('adet').AsInteger := ado.FieldByName('adet').AsInteger;
               ADO_RECETE_DETAY.FieldByName('kullanZamanUnit').AsString := ado.FieldByName('kullanZamanUnit').AsString;
               ADO_RECETE_DETAY.FieldByName('kullanimZaman').AsString := ado.FieldByName('kullanimZaman').AsString;
               ADO_RECETE_DETAY.FieldByName('kullanimAdet2').AsInteger := ado.FieldByName('kullanimAdet2').AsInteger;
               ADO_RECETE_DETAY.FieldByName('kullanimAdet').AsFloat := ado.FieldByName('kullanimAdet').AsFloat;
               ADO_RECETE_DETAY.FieldByName('kullanimYolu').AsString := ado.FieldByName('kullanimYolu').AsString;
               ADO_RECETE_DETAY.post;

               sql := 'select * from ReceteIlacAciklamaSablon where ReceteDetaySablonId = ' + ado.fieldbyname('id').AsString;
               datalar.QuerySelect(adod,sql);
               while not adod.Eof do
               begin
                 ADO_ReceteIlacAciklama.Append;
                 ADO_ReceteIlacAciklama.FieldByName('aciklamaTip').AsString := adod.FieldByName('aciklamaTip').AsString;
                 ADO_ReceteIlacAciklama.FieldByName('aciklama').AsString := adod.FieldByName('aciklama').AsString;
                 ADO_ReceteIlacAciklama.post;
                 adod.Next;
               end;
               //ado.Next;
             end;

             sql := 'select * from ReceteTaniSablon where ReceteSablonId = ' + L[0].kolon1;
             datalar.QuerySelect(adod,sql);

             while not adod.Eof do
             begin
               try
                 ADO_receteTani.Append;
                 ADO_receteTani.FieldByName('taniKodu').AsString := ado.FieldByName('taniKodu').AsString;
                 ADO_receteTani.FieldByName('tani').AsString := ado.FieldByName('tani').AsString;
                 ADO_receteTani.post;
               except
                  ADO_receteTani.Cancel;
               end;
               adod.Next;
             end;


             sql := 'select * from ReceteAciklamaSablon where ReceteSablonId = ' + L[0].kolon1;
             datalar.QuerySelect(adod,sql);
             while not adod.Eof do
             begin
                 ADO_receteAcikla.Append;
                 ADO_receteAcikla.FieldByName('aciklamaTip').AsString := ado.FieldByName('aciklamaTip').AsString;
                 ADO_receteAcikla.FieldByName('aciklama').AsString := ado.FieldByName('aciklama').AsString;
                 ADO_receteAcikla.post;
                 adod.Next;
             end;
             ado.Next;
         end;
       finally
         adod.Free;
       end;
     finally
       ado.Free;
     end;
   End;
end;


procedure TfrmHastaRecete.EreceteNoSmsSend;
var
 tel,msj : string;
begin
  if not CheckReceteStatus (True, False, False, False, False) then Exit;

  if mrYes = ShowMessageSkin('E-Reçete Numaranýz SMS ile Bildirilecek','','','msg')
  then begin
      //datalar.Login;
      tel := dosyaNoHastaTel(_dosyaNO_,_mobilTel_);
      tel := trim(StringReplace(StringReplace(StringReplace(tel,'(','',[rfReplaceAll]),')','',[rfReplaceAll]),'-','',[rfReplaceAll]));
      msj := 'E-Reçete Numaranýz : ' + ADO_Recete.FieldByName('EreceteNo').AsString + #13 +
             ' Saðlýklý Günler Dileriz';

      if tel = ''
      then begin
        ShowMessageSkin('Mobil Telefon boþ olmamalýdýr','','','info');
        exit;
      end;

      if (Length(tel) > 0) and (Length(tel) < 10)
      then begin
       ShowMessageSkin(tel,'Mobil Tel Hatalý','10 Haneli Geçerli Bir Numara Deðildir','info');
       exit;
      end;


      SMSSend(tel,msj,_HastaAdSoyad_,_dosyaNO_);

  end;
end;

procedure TfrmHastaRecete.OkuTimer(Sender: TObject);
var
  okuS : string;
begin
  inherited;
    okuS := FReg.ReadString('oku');
    if okuS = '1'
    Then Begin
      ADO_Recete.Refresh;
      FReg.WriteString('oku','0');
      TTimer(sender).Enabled := false;
      FReg.Free;
    End;
end;



procedure TfrmHastaRecete.PopupMenu2Popup(Sender: TObject);
begin
  inherited;
  case TcxGrid(TPopupMenu(sender).PopupComponent).Tag of
  0 : begin
        TaniR4.Visible := true;
        TaniR3.Visible := true;
        ilacR2.Visible := false;
        ilacR3.Visible := false;
      end;

  1 : begin
        TaniR4.Visible := false;
        TaniR3.Visible := false;
        ilacR3.Visible := True;
        ilacR2.Visible := false;
      end;

  2 : begin
        TaniR4.Visible := false;
        TaniR3.Visible := false;
        ilacR2.Visible := True;
        ilacR3.Visible := false;
      end;
  end;
end;

procedure TfrmHastaRecete.MedulaSend(islem : integer);
var
 // receteCvp : SaglikTesisiReceteIslemleri1.EreceteGirisCevapDVO;
  Sonuc : string;
  _dn_ ,_gn_ , _id_ , _d_ , _erNo_  : string;
  _exe : PAnsiChar;
  fark : double;
    yol , yol1: string;
begin
  FReg := Tregistry.Create;
  FReg.RootKey := HKEY_CURRENT_USER;
  FReg.OpenKey('SOFTWARE\NOKTA\Eimza',True);
  Oku.Enabled := true;
  db := Decode64(RegOku('OSGB_db_name'));
  if not CheckReceteStatus (True, False, False, True, True) then Exit;
  _dn_ := ADO_Recete.FieldByName('dosyaNo').AsString;
  _gn_ := ADO_Recete.FieldByName('gelisNo').AsString;
  _id_ := ADO_Recete.FieldByName('id').AsString;
  _d_ := copy(ADO_Recete.FieldByName('doktor').AsString,1,4);
  _erNo_ := ADO_Recete.FieldByName('eReceteNo').AsString;



  case islem of
   ReceteMedulaKaydet :  begin
                           if not CheckReceteStatus (True, False, True, True, True) then Exit;
                           if LisansKontrol(fark) = True
                           Then Begin
                              case DoktorReceteMedulaGonderimTip(_d_) of
                               imzali :  DurumGoster(True,False,'Reçeteniz Kayýt Ýçin Ýmzalanýyor...Lütfen Bekleyiniz...',1);
                               imzasiz :   DurumGoster(True,False,'Reçeteniz Medula Sistemine Gönderiliyor...Lütfen Bekleyiniz...',1);
                              end;

                              try
                                case DoktorReceteMedulaGonderimTip(_d_) of
                                 imzali :  Sonuc := ReceteImzalaGonder;
                                 imzasiz : Sonuc := ReceteGonder;
                                end;

                                if Copy(Sonuc,1,4) = '0000'

                                then begin
                                  ADO_Recete.edit;
                                  ADO_Recete.FieldByName('eReceteNo').AsString := Copy(Sonuc,6,10);
                                  ADO_Recete.post;
                                //  ShowMessageSkin(Sonuc,'Reçete Medulaya Gönderildi','','info');
                                end;

                              finally
                                DurumGoster(False,False,'');
                                if Copy(Sonuc,1,4) <> '0000' then
                                ShowMessageSkin(Sonuc,'','','info');
                              end;
                           end
                           Else
                            ShowMessageSkin('Lütfen Lisans Bilgilerinizi Kontrol Ediniz...','Kalan Lisans Süreniz : ' + floattoStr(fark),'Detaylý Bilgi Ýçin Sistem Yöneticisine Baþvurunuz','info');
                         end;

     // _exe :=  PAnsiChar(AnsiString('C:\NoktaV3\E-imza\imza.exe ' + 'I' + ' '+ _dn_ + ' ' + _gn_ + ' ' + _id_ + ' ' + _d_  + ' ' + datalar.AktifSirket));
   ReceteMedulaSil : begin
                           if not CheckReceteStatus (True, True, False, True, True) then Exit;
                            DurumGoster(True,False,'Reçete Siliniyor...Lütfen Bekleyiniz...',1);
                            try
                                case DoktorReceteMedulaGonderimTip(_d_) of
                                 imzali : Sonuc := ReceteImzalaSil;
                                 imzasiz : Sonuc := ReceteSil;
                                end;
                                if Sonuc = '0000'
                                then begin
                                  ADO_Recete.edit;
                                  ADO_Recete.FieldByName('eReceteNo').AsString := '0000';
                                  ADO_Recete.post;
                                  ShowMessageSkin(Sonuc,'Reçete Ýptal Edildi','','info');
                                end
                                else
                                  ShowMessageSkin(Sonuc,'Reçete Ýptal Edilemedi','','info');

                            finally
                              DurumGoster(False,False,'');
                            end;
                      end;

     // _exe :=  PAnsiChar(AnsiString('C:\NoktaV3\E-imza\imza.exe ' + 'D' + ' '+ _id_ + ' ' + _erNo_ + ' ' + _d_ + ' ' + datalar.AktifSirket));

   ReceteIlacAckEkle :
                    begin
                           //if not CheckReceteStatus (True, False, False, True, True)  then Exit;
                            DurumGoster(True,False,'Ýlaç Açýklama Ekleniyor...Lütfen Bekleyiniz...',1);
                            try
                                case DoktorReceteMedulaGonderimTip(_d_) of
                                 imzali : Sonuc := ReceteIlacAckImzalaGonder;
                                 //imzasiz : Sonuc := ReceteSil;
                                end;
                                if Sonuc = '0000'
                                then begin
                                  ShowMessageSkin(Sonuc,'Reçete Ýlaç Açýklama Eklendi','','info');
                                end
                                else
                                  ShowMessageSkin(Sonuc,'Reçete Ýlaç Açýklama  Eklenemedi','','info');

                            finally
                              DurumGoster(False,False,'');
                            end;

                    end;

   ReceteAckEkle :
                    begin
                           //if not CheckReceteStatus (True, False, False, True, True)  then Exit;
                            DurumGoster(True,False,'Açýklama Ekleniyor..Lütfen Bekleyiniz...',1);
                            try
                                case DoktorReceteMedulaGonderimTip(_d_) of
                                 imzali : Sonuc := ReceteAckImzalaGonder;
                                 //imzasiz : Sonuc := ReceteSil;
                                end;
                                if Sonuc = '0000'
                                then begin
                                  ShowMessageSkin(Sonuc,'Reçete Açýklama Eklendi','','info');
                                end
                                else
                                  ShowMessageSkin(Sonuc,'Reçete Açýklama  Eklenemedi','','info');

                            finally
                              DurumGoster(False,False,'');
                            end;

                    end;

   ReceteTaniEkleMedula :
                    begin
                           //if not CheckReceteStatus (True, False, False, True, True)  then Exit;
                            DurumGoster(True,False,'Reçete Taný Ekleniyor...Lütfen Bekleyiniz...',1);
                            try
                                case DoktorReceteMedulaGonderimTip(_d_) of
                                 imzali : Sonuc := ReceteTaniImzalaGonder;
                                 //imzasiz : Sonuc := ReceteSil;
                                end;
                                if Sonuc = '0000'
                                then begin
                                  ShowMessageSkin(Sonuc,'Reçete Taný Eklendi','','info');
                                end
                                else
                                  ShowMessageSkin(Sonuc,'Reçete Taný  Eklenemedi','','info');

                            finally
                              DurumGoster(False,False,'');
                            end;

                    end;

   ReceteMedulaOnay : begin
                            if not CheckReceteStatus (True, True, False, True, True) then Exit;
                            DurumGoster(True,False,'Reçete Onaylanýyor...Lütfen Bekleyiniz...',1);
                            try
                                case DoktorReceteMedulaGonderimTip(_d_) of
                                 imzali : Sonuc := ReceteImzalaOnay('ReceteImzalaOnay');
                                 //imzasiz : Sonuc := ReceteSil;
                                end;
                                if Sonuc = '0000'
                                then begin
                                 // ADO_Recete.edit;
                                 // ADO_Recete.FieldByName('eReceteNo').AsString := '0000';
                                 // ADO_Recete.post;
                                  ShowMessageSkin(Sonuc,'Reçete Onaylandý','','info');
                                end
                                else
                                  ShowMessageSkin(Sonuc,'Reçete Onaylanamadý','','info');

                            finally
                              DurumGoster(False,False,'');
                            end;
                      end;
   ReceteMedulaOnayIptal : begin
                            if not CheckReceteStatus (True, True, False, True, True) then Exit;
                            DurumGoster(True,False,'Reçete Onaylaný Ýptal Ediliyor...Lütfen Bekleyiniz...',1);
                            try
                                case DoktorReceteMedulaGonderimTip(_d_) of
                                 imzali : Sonuc := ReceteImzalaOnay('ReceteImzalaOnayIptal');
                                 //imzasiz : Sonuc := ReceteSil;
                                end;
                                if Sonuc = '0000'
                                then begin
                                 // ADO_Recete.edit;
                                 // ADO_Recete.FieldByName('eReceteNo').AsString := '0000';
                                 // ADO_Recete.post;
                                  ShowMessageSkin(Sonuc,'Reçete Onayý Ýptal Edildi','','info');
                                end
                                else
                                  ShowMessageSkin(Sonuc,'Reçete Onayý Ýptal Edilemedi','','info');

                            finally
                              DurumGoster(False,False,'');
                            end;
                      end;

  end;


end;

procedure TfrmHastaRecete.MenuItem3Click(Sender: TObject);
begin
  inherited;
   ReceteyeEkle;
end;

procedure TfrmHastaRecete.ReceteIptal;
var
  sql , Sil : string;
  ado : TADOQuery;
  b: Boolean;
begin
   if not CheckReceteStatus (True, False, True, True, True) then Exit;

   sil := ADO_Recete.FieldByName('ereceteNo').AsString;

   if sil = 'Recetem'
   then begin
      if mrYes = ShowMessageSkin('Reçetem Üzerinde Ýþlem Görmüþ Reçeteyi Ýptal Ediyorsunuz?',
                                 '','','msg')
      then
        sil := ''
      else
        sil := 'RecetemIptalVazgec';
   end;


   if (sil = '') or
      (sil= '0000') Then
   Begin
       if MrYes = ShowMessageSkin('Reçete Ýptal Ediliyor Emin misiniz ?','','','msg') Then
       Begin
         ado := TADOQuery.Create(nil);
         try
           ado.Connection := DATALAR.ADOConnection2;
           try
             b := False;
             BeginTrans (ado.Connection);
             try
               sql := 'delete ria from ReceteIlacAciklama' + _p_ + ' ria inner join ReceteDetay' + _p_ + '  rd on rd.id = ria.ReceteDetayID where rd.ReceteId = ' + ADO_Recete.fieldbyname('Id').AsString;
               datalar.QueryExec(ado,sql);
               sql := 'delete from ReceteTani' + _p_ + ' where ReceteID = ' + ADO_Recete.fieldbyname('Id').AsString;
               datalar.QueryExec(ado,sql);
               sql := 'delete from ReceteDetay' + _p_ + ' where ReceteID = ' + ADO_Recete.fieldbyname('Id').AsString;
               datalar.QueryExec(ado,sql);
               sql := 'delete from ReceteAciklama' + _p_ + ' where ReceteID = ' + ADO_Recete.fieldbyname('Id').AsString;
               datalar.QueryExec(ado,sql);
               sql := 'delete from recete' + _p_ + ' where id = ' + ADO_Recete.fieldbyname('Id').AsString;
               datalar.QueryExec(ado,sql);
               b := True;
             finally
               if b then CommitTrans (ado.Connection)
                    else RollbackTrans (ado.Connection);
             end;
             ShowMessageSkin('Reçete Ýptal Edildi','','','info');
             ADO_Recete.Active := false;
             ado_recete.Active := true;
           except on e : Exception do
           begin
              ShowMessageSkin(e.Message,'','','info');
           end;
           end;
         finally
           ado.Free;
         end;
       End;

   End
   Else
    if sil = 'RecetemIptalVazgec'
      Then
        ShowMessageSkin('Reçetem Sistemine Yönlendirdiðiniz Reçeteyi Silme Ýþlemi Ýptal Edildi','','','info')
      Else
      ShowMessageSkin('E-Reçete Kayýt No silmeden Reçete Silinemez','','','info');
end;

procedure TfrmHastaRecete.YeniRecete(islem: Integer);
var
    sql : string;
    ado , adoD : TADOQuery;
    receteNo , songel : string;
    ack : TStringList;
    j , rc : integer;
begin
    datalar.YeniRecete.doktor := datalar.doktorKodu;
    datalar.YeniRecete.doktorAdi := doktorAdi(datalar.doktorKodu);
    datalar.YeniRecete.protokolNo := EnsonSeansProtokolNo(datalar.AktifSirket,'','Reçete');
    datalar.YeniRecete.Tarih := datetostr(date);
    datalar.YeniRecete.ReceteTuru := '1';
    datalar.YeniRecete.ReceteAltTuru := '1';

    rc := datalar.QuerySelect('select dosyaNo from kurumFatura where dosyaNo = ' + QuotedStr(_dosyaNO_) +
                             ' and gelisNo = ' + _gelisNo_).RecordCount;

    if islem = ReceteYeni
    then

    if (rc > 0) and (self.Tag = TagfrmHastaRecete)
    Then begin
         ShowMessageSkin('Faturadaki Döneme Reçete Düzenlenemez','','','info');
         exit;
    End
    else
    begin
          if mrYes = ShowPopupForm('Yeni Reçete',islem)
          then begin
             if islem = ReceteYeni
             then begin
                   ADO_Recete.Append;
                   try
                     ADO_Recete.FieldByName('dosyaNo').AsString := _dosyaNO_;
                     ADO_Recete.FieldByName('gelisNo').AsString := _gelisNo_;
                     ADO_Recete.FieldByName('gelisNo').AsString := AdoHastaGelis.FieldByName('gelisNo').AsString;
                     ADO_Recete.FieldByName('tarih').AsString := datalar.YeniRecete.Tarih;
                     ADO_Recete.FieldByName('ReceteTur').AsString := datalar.YeniRecete.ReceteTuru;
                     ADO_Recete.FieldByName('ReceteAltTur').AsString := datalar.YeniRecete.ReceteAltTuru;
                     ADO_Recete.FieldByName('doktor').AsString := datalar.YeniRecete.doktor;//+'-'+datalar.YeniRecete.doktorAdi;
                     ADO_Recete.FieldByName('ProtokolNo').AsString := datalar.YeniRecete.protokolNo;
                     ADO_Recete.FieldByName('ereceteNo').AsString := '0000';
                     ADO_Recete.FieldByName('WanIP').AsString := datalar.WanIp;
                     ADO_Recete.Post;

                     if self.Tag = TagfrmHastaRecete
                     Then
                     if ADO_receteTani.Locate('taniKodu','N18',[loCaseInsensitive]) = False
                     then begin
                       ADO_receteTani.Append;
                       ADO_ReceteTani.FieldByName('taniKodu').AsString := 'N18';
                       ADO_Recetetani.FieldByName('tani').AsString := 'Kronik Böbrek Yetmezliði';
                       ADO_receteTani.Post;
                     end;

                   except
                     ADO_Recete.Cancel;
                     raise;
                   end;
                   ADO_receteAcikla.Close;
                   ADO_receteAcikla.Open;
               end
          end;


    end;



    if islem = ReceteYeniRecete
    then begin
        receteNo := ADO_Recete.fieldbyname('id').AsString;
        try
          songel := Songelis(_dosyaNo_);
        except
          songel := _gelisNo_;
        end;

        if mrYes = ShowMessageSkin('Reçeteden Reçete Üretilecek , Emin misiniz?','','','msg')
        then begin
          try
           ado := TADOQuery.Create(nil);
           try
             adoD := TADOQuery.Create(nil);
             try
               sql := 'select * from Recete where id = ' + receteNo;
               datalar.QuerySelect(ado,sql);
               if not ado.Eof
               then begin
                  ADO_Recete.Append;
                  ADO_Recete.FieldByName('dosyaNo').AsString := _dosyaNo_;
                  ADO_Recete.FieldByName('gelisNo').AsString := songel;
                  ADO_Recete.FieldByName('recetetur').AsString := ado.fieldbyname('receteTur').AsString;
                  ADO_Recete.FieldByName('protokolNo').AsString := EnsonSeansProtokolNo(_firmaKod_,_sube_,'Reçete');
                  ADO_Recete.FieldByName('doktor').AsString := datalar.YeniRecete.doktor;
                  ADO_Recete.FieldByName('receteAltTur').AsString := ado.fieldbyname('receteAltTur').AsString;
             //   ADO_Recete.FieldByName('Tani').AsString := txtTani.Text;
                  ADO_Recete.FieldByName('Tarih').AsDateTime := date();
                  ADO_Recete.FieldByName('eReceteNo').AsString := '0000';
                  ADO_Recete.FieldByName('WanIP').AsString := datalar.WanIp;
                  ADO_Recete.Post;

                  sql := 'select * from ReceteDetay' + _p_ + ' where ReceteId = ' + receteNo;
                  datalar.QuerySelect(adoD,sql);
                  while not adoD.Eof do
                  begin
                     ADO_RECETE_DETAY.Append;
                     ADO_RECETE_DETAY.FieldByName('ilacKodu').AsString := adoD.FieldByName('ilacKodu').AsString;
                     ADO_RECETE_DETAY.FieldByName('ilacAdi').AsString := adoD.FieldByName('ilacAdi').AsString;
                     ADO_RECETE_DETAY.FieldByName('adet').AsInteger := adoD.FieldByName('adet').AsInteger;
                     ADO_RECETE_DETAY.FieldByName('kullanZamanUnit').AsString := adoD.FieldByName('kullanZamanUnit').AsString;
                     ADO_RECETE_DETAY.FieldByName('kullanimZaman').AsString := adoD.FieldByName('kullanimZaman').AsString;
                     ADO_RECETE_DETAY.FieldByName('kullanimAdet2').AsInteger := adoD.FieldByName('kullanimAdet2').AsInteger;
                     ADO_RECETE_DETAY.FieldByName('kullanimAdet').AsFloat := adoD.FieldByName('kullanimAdet').AsFloat;
                     ADO_RECETE_DETAY.FieldByName('kullanimYolu').AsString := adoD.FieldByName('kullanimYolu').AsString;
                     ADO_RECETE_DETAY.post;

                     (*
                     ack := IlacReceteAciklama(_dosyaNo_,songel,adoD.FieldByName('ilacKodu').AsString,
                                                inttostr(adoD.FieldByName('kullanimAdet2').AsInteger *
                                                         adoD.FieldByName('kullanimAdet').AsInteger));


                     sql := 'delete from ReceteIlacAciklama where receteDetayId = ' + ADO_RECETE_DETAY.fieldbyname('id').AsString;
                     datalar.QueryExec(ado,sql);

                     ADO_ReceteIlacAciklama.Active := false;
                     ADO_ReceteIlacAciklama.Active := true;

                    for j := 0 to ack.Count-1 do
                    begin
                        ADO_ReceteIlacAciklama.Append;
                        ADO_ReceteIlacAciklama.FieldByName('aciklama').AsString := copy(ack[j],3,500);
                        ADO_ReceteIlacAciklama.FieldByName('aciklamaTip').AsString := trim(copy(ack[j],1,2));
                        ADO_ReceteIlacAciklama.Post;
                        if copy(ADO_ReceteIlacAciklama.FieldByName('aciklama').AsString,1,4) = 'Hata'
                        Then ShowMessageSkin('Dikkat , Doz Bilgisini Kontrol Ediniz','','','info');
                    end;
                              *)
                     adoD.Next;
                  end;

                  sql := 'select * from ReceteTani where ReceteId = ' + receteNo;
                  datalar.QuerySelect(adoD,sql);
                  while not adoD.Eof do
                  begin
                    ADO_receteTani.Append;
                    ADO_receteTani.FieldByName('taniKodu').AsString := adoD.FieldByName('taniKodu').AsString;
                    ADO_receteTani.FieldByName('tani').AsString := adoD.FieldByName('tani').AsString;
                    ADO_receteTani.post;
                    adoD.Next;
                  end;
               end;
             finally
               adoD.Free;
             end;
           finally
             ado.Free;
           end;
          except on e : Exception do
           begin
             ShowMessageSkin(e.Message,'','','info');
           end;
          end;
        end;
    end; // ReceteYeniRecete


    if islem = ReceteYeniSablon
    then begin
        if CheckReceteStatus(True, False, True, False, True)
        then begin
          SablondanYeniRecete;
        end;
    end;


end;



procedure TfrmHastaRecete.Yazdir(Tip : string = '');
var
  sql , id : string;
  ado,ado1,ado2,ado3 : TADOQuery;
  TopluDataset : TDataSetKadir;
begin
  if not CheckReceteStatus (True, False, False, False, False) then Exit;
   id := ADO_Recete.fieldbyname('id').AsString;
   ado := TADOQuery.Create(nil);
   try
     ado.close;
     ado.SQL.Clear;
     sql := 'exec sp_epikriz ' + QuotedStr(_dosyaNo_) + ',' + QuotedStr('Kurum');
     datalar.QuerySelect(ado,sql);
     TopluDataset.Dataset1 := ado;

     ado1 := TADOQuery.Create(nil);
     try
       ado1.close;
       ado1.SQL.Clear;

       ado2 := TADOQuery.Create(nil);
       try
         ado3 := TADOQuery.Create(nil);
         try

          if Tip = ''
          then begin
           sql := ' select R.*,D.*,g.*,I.*,H.*,dr.tanimi doktorAdi,S.tanimi,rky.tanimi KulllanimyolTanimi from Recete R ' +
                    'left join receteDetay D on R.id = D.ReceteId ' +
                    'left join hasta_gelisler g on g.dosyaNO = R.dosyaNo and g.gelisNo = R.gelisNo ' +
                    'left join OSGB_MASTER.DBO.ilacListesi I on I.barkod = D.ilacKodu ' +
                    'left join HastaKart H on H.dosyaNo = R.dosyaNo ' +
                    'left join SIRKETLER_TNM S on S.sirketKod = H.sirketKod ' +
                    'left join doktorlarT dr on dr.kod = r.doktor ' +
                    'left join ReceteKullanimYol rky on rky.kod = d.kullanimYolu ' +
                    'where R.id = ' + id +
                    ' order by R.id';

           datalar.QuerySelect(ado1,sql);
           TopluDataset.Dataset2 := ado1;


           sql := 'select rd.ilacAdi,ria.aciklama from recete r ' +
                  ' left join receteDetay rd on rd.receteId = r.id ' +
                  ' left join ReceteIlacAciklama ria on ria.receteDetayId = rd.id ' +
                  ' where r.id = ' + id;

           datalar.QuerySelect(ado2,sql);
           TopluDataset.Dataset3 := ado2;


           sql := 'select taniKodu,rt.tani from recete r ' +
                  ' left join receteTani rt on rt.receteId = r.id ' +
                  ' where r.id = ' + id;

           datalar.QuerySelect(ado3,sql);
           TopluDataset.Dataset4 := ado3;
           PrintYap('050','\Reçete',inttoStr(TagfrmHastaRecete) ,TopluDataset,pTNone);
          end
          else
          begin
             sql := ' select R.*,D.*,g.*,I.*,H.*,dr.tanimi doktorAdi,S.tanimi from Recete_Personel R ' +
                      'left join receteDetay_Personel D on R.id = D.ReceteId ' +
                      'left join gelisler g on g.dosyaNO = R.dosyaNo and g.gelisNo = R.gelisNo ' +
                      'left join OSGB_MASTER.DBO.ilacListesi I on I.barkod = D.ilacKodu ' +
                      'left join PersonelKart H on H.dosyaNo = R.dosyaNo ' +
                      'left join SIRKETLER_TNM S on S.sirketKod = H.sirketKod ' +
                      'left join doktorlarT dr on dr.kod = r.doktor ' +
                      'where R.id = ' + id +
                      ' order by R.id';

             datalar.QuerySelect(ado1,sql);
             TopluDataset.Dataset2 := ado1;


             sql := 'select rd.ilacAdi,ria.aciklama from recete_Personel r ' +
                    ' left join receteDetay_Personel rd on rd.receteId = r.id ' +
                    ' left join ReceteIlacAciklama_Personel ria on ria.receteDetayId = rd.id ' +
                    ' where r.id = ' + id;

             datalar.QuerySelect(ado2,sql);
             TopluDataset.Dataset3 := ado2;


             sql := 'select taniKodu,rt.tani from recete_Personel r ' +
                    ' left join receteTani_Personel rt on rt.receteId = r.id ' +
                    ' where r.id = ' + id;

             datalar.QuerySelect(ado3,sql);
             TopluDataset.Dataset4 := ado3;
             PrintYap('050','\Reçete',inttoStr(TagfrmPersonelRecete) ,TopluDataset,pTNone);
          end;

         finally
           ado3.free;
         end;
       finally
         ado2.free;
       end;
     finally
       ado1.Free;
     end;
   finally
     ado.Free;
   end;

end;



procedure TfrmHastaRecete.TaniEkle;
var
  List : ArrayListeSecimler;
  I : integer;
  sql, id : string;
  ado : TADOQuery;
begin
   TaniListe.Where := ifThen(cxChkSIK.Checked,'Sikkullan > 0','');
   TaniListe.SkinName := AnaForm.dxSkinController1.SkinName;
   TaniListe.SiralamaKolonu := ifThen(cxChkSIK.Checked,'Sikkullan Desc,TANI','TANI');
   List := TaniListe.ListeGetir;

   id := ADO_Recete.FieldByName('id').AsString;

//   if frmhastarecete.sender is TcxButtonKadir.tag=1515 then ShowMessageSkin('Þablon Kayýt Edildi','','','info');

   for I := 0 to length(List) - 1 do
   begin
    try
       if not ADO_receteTani.Locate('receteId;taniKodu',VarArrayOf([id, List[I].kolon1]),[])
       then begin
         ADO_receteTani.Append;
         ADO_receteTani.FieldByName('taniKodu').AsString := List[I].kolon1;
         ADO_receteTani.FieldByName('tani').AsString := List[I].kolon2;
         ADO_receteTani.post;

         sql := 'update icd_teshisleri set Sikkullan = Sikkullan + 1 where ICDKODU = ' + QuotedStr(List[I].kolon1);
         ado := TADOQuery.Create(nil);
         try
           ado.Connection := DATALAR.ADOConnection2;
           datalar.QueryExec(ado,sql);
         finally
           ado.Free;
         end;
       end;
    except
     exit;
    end;
   end;




end;

procedure TfrmHastaRecete.TedaviYukle;
begin
    sql :=  ' exec sp_GecmisDonemIlacTedavi ' + QuotedStr(_dosyaNo_) + ',' +QuotedStr(NoktasizTarih(_provizyonTarihi_));
   datalar.QuerySelect(ADO_GecmisIlacTedavi,sql);
  // GecmisIlacTree.FullExpand;

   Listele;

 //  sql :=  ' exec sp_GecmisDonemIlacTedavi ' + QuotedStr(_dosyaNo_) + ',' +QuotedStr(NoktasizTarih(_provizyonTarihi_)) + ',0';
 //  datalar.QuerySelect(ADO_IlacGelis,sql);
end;

procedure TfrmHastaRecete.TetkikSonucGridKolonGizle;
begin
  OCAK.Visible := False;
  SUBAt.Visible := False;
  MART.Visible := False;
  NISAN.Visible := False;
  MAYIS.Visible := False;
  HAZIRAN.Visible := False;
  TEMMUZ.Visible := False;
  AGUSTOS.Visible := False;
  EYLUL.Visible := False;
  EKIM.Visible := False;
  KASIM.Visible := False;
  ARALIK.Visible := False;
end;

procedure TfrmHastaRecete.AckEkle(islem : integer);
begin

     if mrYes = ShowPopupForm('Reçete Açýklama Ekle',islem)
    then begin
       if islem in [ReceteAckEkle,ReceteAckDuzenle]
       then begin
         if datalar.ReceteAciklama.ackKod <> ''
         then begin
             if islem = ReceteAckEkle then ADO_receteAcikla.Append else ADO_receteAcikla.Edit;
             ADO_receteAcikla.FieldByName('aciklamaTip').AsString := datalar.ReceteAciklama.ackKod;
             ADO_receteAcikla.FieldByName('aciklama').AsString := datalar.ReceteAciklama.ack;
             ADO_receteAcikla.Post;
             ADO_receteAcikla.close;
             ADO_receteAcikla.Open;
         end;
       end;

       if islem in [ReceteIlacAckEkle,ReceteIlacAckDuzenle]
       then begin
         if islem = ReceteIlacAckEkle
         then begin
           if ADO_receteIlacAciklama.Locate('aciklamaTip',datalar.ReceteAciklama.ackKod,[]) = True
           then begin
             ShowMessageSkin('Eklemek Ýstediðiniz Tipte Bir Açýklama Var','','','info');
             exit;
           end;
         end;

         if datalar.ReceteAciklama.ackKod <> ''
         then begin
           if islem = ReceteIlacAckEkle then ADO_ReceteIlacAciklama.Append else ADO_ReceteIlacAciklama.Edit;
           ADO_receteIlacAciklama.FieldByName('aciklamaTip').AsString := datalar.ReceteAciklama.ackKod;
           ADO_receteIlacAciklama.FieldByName('aciklama').AsString := datalar.ReceteAciklama.ack;
           ADO_receteIlacAciklama.Post;
         end;
       end;
    end;
end;

procedure TfrmHastaRecete.ilacEkle(islem : integer);
begin
  if not CheckReceteStatus (True, False, True, True, True) then Exit;
   if islem = ReceteIlacEkle
   then
   if (ADO_Recete.FieldByName('ereceteNo').AsString = '0000') or
      (ADO_Recete.FieldByName('ereceteNo').AsString = 'Recetem')
   Then Begin
     try
      Application.CreateForm(TfrmIlacSarf, frmIlacSarf);
      try

     //   GorselAyar(frmIlacSarf,datalar.global_img_list4);
    //    frmIlacSarf.GonForm('frmHastaRecete',_dosyaNo_,_gelisNo_);
        frmIlacSarf._dosyaNO_ := _dosyaNo_;
        frmIlacSarf._gelisNO_ := _gelisNo_;
        frmilacsarf._islem_:=islem;
        frmIlacSarf.Tanilar (False);
        frmIlacSarf.Tag := TagfrmIlacSarf;
        frmIlacSarf.cxTab.Tabs[0].Caption := 'Ýlaçlar';
        frmIlacSarf.cxTab.Tabs[0].ImageIndex := 50;
        frmIlacSarf.ShowModal;
      finally
        FreeAndNil(frmIlacSarf);
      end;
     except
     end;
   End
   Else ShowMessageSkin('E-ReçeteNo su Olan Reçeteye Ýlaç Eklenemez','','','info');

   if islem = ReceteIlacDuzenle
   then
    if mrYes = ShowPopupForm('Reçete Ýlaç Duzenle',islem)
    then begin
       ADO_RECETE_DETAY.Edit;
       ADO_RECETE_DETAY.FieldByName('ilacKodu').AsString := datalar.ReceteSatir.barkod;
       ADO_RECETE_DETAY.FieldByName('ilacAdi').AsString := datalar.ReceteSatir.barkodadi;
       ADO_RECETE_DETAY.FieldByName('adet').AsInteger := datalar.ReceteSatir.kutuadet;
       ADO_RECETE_DETAY.FieldByName('kullanZamanUnit').AsString := inttostr(datalar.ReceteSatir.peryot);
       ADO_RECETE_DETAY.FieldByName('kullanimZaman').AsString := inttostr(datalar.ReceteSatir.peryotAdet);
       ADO_RECETE_DETAY.FieldByName('kullanimAdet2').AsInteger := datalar.ReceteSatir.doz1;
       ADO_RECETE_DETAY.FieldByName('kullanimAdet').AsFloat := datalar.ReceteSatir.doz2;
       ADO_RECETE_DETAY.FieldByName('kullanimYolu').AsString := datalar.ReceteSatir.kulyol;
       ADO_RECETE_DETAY.post;
       Ekle('U');

       ADO_RECETE_DETAY.Active := false;
       ADO_RECETE_DETAY.Active := True;
       ADO_receteTani.Active := false;
       ADO_ReceteIlacAciklama.Active := false;
       ADO_receteTani.Active := True;
       ADO_ReceteIlacAciklama.Active := True;
    end;


   if islem = ReceteIlacEkleIlacTedavi
   then
     IlacTedaviKarti(_dosyaNo_,_gelisNo_,NoktasizTarih(AdoHastaGelis.FieldByName('Tarih').AsString),ReceteIlacEkleIlacTedavi);


end;


procedure TfrmHastaRecete.ilacListPropertiesEditValueChanged(Sender: TObject);
var
   i,x,j: integer;
   ado : TADOQuery;
   unite : real;
   ack : TStringList;
   sql , SIKPeryot: string;
begin
   if chkSIK.Checked
   then
     Ekle
   else
    if btnEkle.Enabled
    then
     btnEkle.SetFocus;

end;

procedure TfrmHastaRecete.SIKKullanimaEkle(count : integer = 0);
var
  sql , barkod , doz ,kulYol , peryot : string;
begin
       barkod := ADO_RECETE_DETAY.FieldByName('ilacKodu').AsString;
       doz := ADO_RECETE_DETAY.FieldByName('kullanimAdet2').AsString + 'x'+
              ADO_RECETE_DETAY.FieldByName('kullanimAdet').AsString;
       kulYol := ADO_RECETE_DETAY.FieldByName('kullanimYolu').AsString;
       peryot := ADO_RECETE_DETAY.FieldByName('kullanZamanUnit').AsString;

       sql := 'if not Exists(select * from OSGB_MASTER.dbo.doktorSIKKullanim where drTC = ' + QuotedStr(datalar.doktorTC) +
            ' and  ' +
            ' barkod = ' + QuotedStr(barkod)+ ')' +
            ' and  '  +
            ' (select count(*) from receteDetay where ilacKodu = ' + QuotedStr(barkod)+ ')> ' + intToStr(count) +
            ' begin ' +
              'insert into OSGB_MASTER.dbo.doktorSIKKullanim (drTC,barkod,drKod,tip,doz,kulYol,peryot) ' +
              'values(' + QuotedStr(datalar.doktorTC) + ',' +
                          QuotedStr(barkod) + ',' +
                          QuotedStr(datalar.doktorKodu) + ',' +
                          QuotedStr('ILAC') + ',' +
                          QuotedStr(doz) + ',' +
                          QuotedStr(kulYol) + ',' +
                          QuotedStr(peryot) +
                     ')' +
            ' end ' +
            ' else ' +
            ' begin ' +
             ' update OSGB_MASTER.dbo.doktorSIKKullanim ' +
             ' set ' +
             ' kulYol = ' + QuotedStr(kulYol) + ',' +
             ' doz = ' +  QuotedStr(doz) + ',' +
             ' peryot = ' +  QuotedStr(peryot) +
             ' where drTC = ' + QuotedStr(datalar.doktorTC) +
             ' and barkod = ' + QuotedStr(barkod) +
            ' end';
   datalar.QueryExec(sql);
end;


procedure TfrmHastaRecete.Yukle;
begin
 _fields_ := '* ';
 indexFieldName := ' dosyaNo = ' + QuotedStr(_dosyaNo_) + ' and gelisNo = ' + _gelisNo_;

 inherited;


  if chkTum.Checked = True
  then
    ReceteWhereGelis := ''
  else
    ReceteWhereGelis := ' and r.gelisNo = ' + _gelisNo_;


 if (_dosyaNo_ <> '') and (_gelisNo_ <> '')
 then begin
    sql := 'select r.*,d.tanimi ADI from ' + _TableName_ + ' r' +
           ' left join doktorlarT d on d.kod = substring(r.doktor,1,4) ' +
           ' where r.dosyaNo = ' + QuotedStr(_dosyaNo_) +
           ReceteWhereGelis +
           ' order by r.tarih desc';
    datalar.QuerySelect(ADO_Recete,sql);

 //   Ado_Recete.last;
 //   Ado_Recete.First;
    if _ResourceID <> '' then
    begin
      ADO_Recete.Locate('id',_ResourceID,[]);
    end;

 //  ADO_RECETE_DETAY.Open;
    ADO_receteTani.Open;
    ADO_receteAcikla.Open;
    ADO_ReceteIlacAciklama.Open;

    ADO_GecmisIlacTedavi.Active := False;
    ADO_Tetkikler.Active := False;

    ilacList.EditValue := Null;

 end;

end;


procedure TfrmHastaRecete.ReceteGetir(_dosyaNo , gelisNo : string);
var
  sql : string;
  _P_ : string;
begin

 yukle;
 _fields_ := '* ';
 indexFieldName := ' dosyaNo = ' + QuotedStr(_dosyaNo) + ' and gelisNo = ' + gelisNo;

 if (_dosyaNo <> '') and (gelisNo <> '')
 then begin

    sql := 'select *,d.tanimi ADI from ' + _TableName_ + ' r' +
           ' left join doktorlarT d on d.kod = substring(r.doktor,1,4) ' +
           ' where r.dosyaNo = ' + QuotedStr(_dosyaNo) +
           ' and r.gelisNo = ' + gelisNo +
             ' order by r.tarih desc';
    datalar.QuerySelect(ADO_Recete,sql);


 //   datalar.QuerySelect(ADO_RECETE_DETAY,'select * from ' + _TableNameDetay_ + ' where receteID = ' + ADO_Recete.FieldByName('id').AsString);


 //   Ado_Recete.last;
 //   Ado_Recete.First;


 //   ADO_RECETE_DETAY.Open;
 //   ADO_receteTani.Open;
 //   ADO_receteAcikla.Open;
 //   ADO_ReceteIlacAciklama.Open;

 end;
end;


procedure TfrmHastaRecete.ADO_ReceteAfterScroll(DataSet: TDataSet);
var
  sql : string;
begin
  inherited;

  sql := 'select * from ReceteDetay' + _p_ +
         ' where receteId =:@id ';

  ADO_RECETE_DETAY.Close;
  ADO_RECETE_DETAY.SQL.Text := sql;
  ADO_RECETE_DETAY.Parameters[0].Value := ADO_Recete.FieldByName('id').AsInteger;
  ADO_RECETE_DETAY.Open;


  sql := 'select * from ReceteTani' + _p_ +
         ' where receteId =:@id ';
  ADO_RECETETani.Close;
  ADO_RECETETani.SQL.Text := sql;
  ADO_RECETETani.Parameters[0].Value := ADO_Recete.FieldByName('id').AsInteger;
  ADO_RECETETani.Open;


end;

procedure TfrmHastaRecete.ADO_ReceteIlacAciklamaNewRecord(DataSet: TDataSet);
begin
  inherited;

  ADO_ReceteIlacAciklama.FieldByName('receteDetayId').AsInteger := ADO_RECETE_DETAY.FieldByName('id').AsInteger;
end;

procedure TfrmHastaRecete.ADO_receteTaniBeforePost(DataSet: TDataSet);
begin
  inherited;

      ADO_RECETETani.FieldByName('ReceteID').AsInteger := ADO_Recete.FieldByName('id').AsInteger;



end;

procedure TfrmHastaRecete.ADO_RECETE_DETAYAfterPost(DataSet: TDataSet);
begin
  inherited;
  SIKKullanimaEkle(0);
end;

procedure TfrmHastaRecete.ADO_RECETE_DETAYBeforePost(DataSet: TDataSet);
begin
  inherited;
      ADO_RECETE_DETAY.FieldByName('ReceteID').AsInteger := ADO_Recete.FieldByName('id').AsInteger;

end;

procedure TfrmHastaRecete.atc_kod_TurPropertiesEditValueChanged(
  Sender: TObject);
var
  turKod : string;
begin
  inherited;
   if varToStr(atc_kod_Tur.EditValue) = '' then exit;

   if varToStr(atc_kod_Tur.EditValue) <> '0'
   then begin
       turKod := atc_kod_Tur.EditValue;

       ilacList.TableName :=
                       '(select I.barkod,I.ilacAdi ' +
                       //I.*,D.*,D.ICD TANI,D.kulYOL YOL,ATC.Tanimi EtkenMaddeAdi,D.Doz SIKDoz,D.peryot SIKPeryot,' +
                      // 'case when ITU.dosyaNO is null then 0 else 1 end AlerjiVar' +
                       ' from OSGB_MASTER.DBO.ilacListesi I ' +
                     //  ' join OSGB_MASTER.DBO.doktorSIKKullanim D on D.barkod = I.barkod' +
                       ' left join OSGB_MASTER.DBO.ATC_Kodlari ATC on ATC.kod = I.EtkenMadde ' +
                       ' where ATC.TurKodu = ' + QuotedStr(turKod) +
                       ') tt';

       ilacList.DisplayField := 'ilacAdi';
       ilacList.ValueField := 'barkod';
       ilacList.Filter := '';
   end
   else
   begin
       ilacList.TableName :=
                       '(select I.barkod,I.ilacAdi ' +
                       //I.*,D.*,D.ICD TANI,D.kulYOL YOL,ATC.Tanimi EtkenMaddeAdi,D.Doz SIKDoz,D.peryot SIKPeryot,' +
                      // 'case when ITU.dosyaNO is null then 0 else 1 end AlerjiVar' +
                       ' from OSGB_MASTER.DBO.ilacListesi I ' +
                       ' join OSGB_MASTER.DBO.doktorSIKKullanim D on D.barkod = I.barkod' +
                       ' left join OSGB_MASTER.DBO.ATC_Kodlari ATC on ATC.kod = I.EtkenMadde ' +
                       ' left join Hasta_Ilac_Uyari ITU on ITU.atc_kodu = I.EtkenMAdde and ITU.dosyano = ' + QuotedStr(_dosyaNO_) +
                       ' where drTC = ' + QuotedStr(datalar.doktorTC) +
                       ' and D.tip = ''ILAC'') tt';
       ilacList.DisplayField := 'ilacAdi';
       ilacList.ValueField := 'barkod';
       ilacList.Filter := '';

   end;
end;

procedure TfrmHastaRecete.btnEkleClick(Sender: TObject);
begin
  inherited;
  Ekle;
  ilacList.SetFocus;

end;

procedure TfrmHastaRecete.btnIlacEkleClick(Sender: TObject);
begin
  inherited;
  if not CheckReceteStatus (True, False, True, True, True) then Exit;
  ilacEkle(ReceteIlacEkle);

end;

procedure TfrmHastaRecete.btnIlacSilClick(Sender: TObject);
var
  ado : TADOQuery;
  sql : string;
begin
  inherited;
  if not CheckReceteStatus (True, False, True, True, True) then Exit;
   if (ADO_Recete.FieldByName('ereceteNo').AsString = '0000') or
      (ADO_Recete.FieldByName('ereceteNo').AsString = '') or
      (ADO_Recete.FieldByName('ereceteNo').AsString = 'Recetem')
   Then
     if MrYes = ShowMessageSkin('Ýlaç Reçeteden Çýkartýlýyor Emin misiniz ?','','','msg')
     Then Begin
        try
          try
            sql := 'delete from ReceteDetay' + _p_ + ' where id = ' + ADO_RECETE_DETAY.fieldbyname('id').AsString;
            datalar.QueryExec(sql);
            ADO_RECETE_DETAY.Requery();
          except on e : exception do
            begin
              ShowMessageSkin('Ýlaç Açýklamasý Silinmeden Ýlaç Silinmez','','','info');
            end;
          end;
        finally
        end;
     End Else Begin end
   Else ShowMessageSkin('E-ReçeteNo su olan Reçeteden Ýlaç Çýkartýlamaz','','','info');
 end;

function TfrmHastaRecete.CheckReceteStatus(const pCheckExists, pCheckSent,
  pCheckUnSent, pCheckDr, pAllowDiffDr : Boolean; pMsg: Boolean): Boolean;
var
  bazDoktor : String;
begin
  Result := True;
  if pCheckExists or pCheckSent or pCheckUnSent then
    Result := Result and (ADO_Recete.RecordCount > 0);
  if not result then
  begin
    if pMsg then ShowMessageSkin ('Bu iþlemi yapabilmeniz için kayýtlý bir reçete baþlýðý olmalýdýr.'#13#10'Reçete oluþturmak için Menü''den [Yeni Reçete]''yi seçiniz', '', '', 'info');
    Exit;
  end;
  if pCheckSent then
    Result := Result
      and (ADO_Recete.FieldByName('eReceteNo').AsString <> '0000')
      and (Trim (ADO_Recete.FieldByName('eReceteNo').AsString) <> '')
      and (Trim (ADO_Recete.FieldByName('eReceteNo').AsString) <> 'Recetem');
  if not result then
  begin
    if pMsg then ShowMessageSkin ('Bu Reçete Medula Sistemine Gönderilmemiþ.', '', '', 'info');
    Exit;
  end;
  if pCheckUnSent then
    Result := Result
      and (ADO_Recete.FieldByName('eReceteNo').AsString = '0000')
      or (ADO_Recete.FieldByName('eReceteNo').AsString = 'Recetem')
      ;
  if not result then
  begin
    if pMsg then ShowMessageSkin ('Bu Reçete Medula Sistemine Gönderilmiþ.', '', '', 'info');
    Exit;
  end;
 // if IsNull (DATALAR.SonReceteDoktorKodu) then bazDoktor := DATALAR.doktorKodu else bazDoktor := DATALAR.SonReceteDoktorKodu;


  if pCheckDr then
    Result := Result
      and SameText (ADO_Recete.FieldByName('doktor').AsString, DATALAR.doktorKodu);
  if not result then
  begin
    if not pAllowDiffDr then
    begin
      if pMsg then ShowMessageSkin ('Ýþlem yapmak istediðiniz reçete baþka doktora ait', '', '', 'info');
      Exit;
    end
    else begin
      Result := ShowMessageSkin ('Ýþlem yapmak istediðiniz reçete baþka doktora ait, devam etmek istiyor musunuz ?', '', '', 'conf') = mrYes;
      if not Result then Exit;
      //DATALAR.doktorKodu := ADO_Recete.FieldByName('doktor').AsString;
    end;
  end;
end;

procedure TfrmHastaRecete.chkSIKClick(Sender: TObject);
begin
  inherited;
(*
  if chkSIK.Checked
  then begin
     ilacList.TableName :=
                     '(select I.barkod,I.ilacAdi ' +
                     //I.*,D.*,D.ICD TANI,D.kulYOL YOL,ATC.Tanimi EtkenMaddeAdi,D.Doz SIKDoz,D.peryot SIKPeryot,' +
                    // 'case when ITU.dosyaNO is null then 0 else 1 end AlerjiVar' +
                     ' from OSGB_MASTER.DBO.ilacListesi I ' +
                     ' join OSGB_MASTER.DBO.doktorSIKKullanim D on D.barkod = I.barkod' +
                     ' left join OSGB_MASTER.DBO.ATC_Kodlari ATC on ATC.kod = I.EtkenMadde ' +
                     ' left join Hasta_Ilac_Uyari ITU on ITU.atc_kodu = I.EtkenMAdde and ITU.dosyano = ' + QuotedStr(_dosyaNO_) +
                     ' where drTC = ' + QuotedStr(datalar.doktorTC) +
                     ' and D.tip = ''ILAC'') tt';

     ilacList.DisplayField := 'ilacAdi';
     ilacList.ValueField := 'barkod';
     ilacList.Filter := '';
  end
  else
  begin
      ilacList.Properties.Items :=  AnaForm.ilacList.Properties.Items;

  (*
     ilacList.TableName :=
                     '(select I.barkod,I.ilacAdi ' +
                     //I.*,D.*,D.ICD TANI,D.kulYOL YOL,ATC.Tanimi EtkenMaddeAdi,D.Doz SIKDoz,D.peryot SIKPeryot,' +
                    // 'case when ITU.dosyaNO is null then 0 else 1 end AlerjiVar' +
                     ' from OSGB_MASTER.DBO.ilacListesi I ' +
                     //' join OSGB_MASTER.DBO.doktorSIKKullanim D on D.barkod = I.barkod' +
                     ' left join OSGB_MASTER.DBO.ATC_Kodlari ATC on ATC.kod = I.EtkenMadde ' +
                     ' left join Hasta_Ilac_Uyari ITU on ITU.atc_kodu = I.EtkenMAdde and ITU.dosyano = ' + QuotedStr(_dosyaNO_) +
                     ') tt';
                   //  ' where
                     //drTC = ' + QuotedStr(datalar.doktorTC) +
                   //  ' D.tip = ''ILAC'') tt';

     ilacList.DisplayField := 'ilacAdi';
     ilacList.ValueField := 'barkod';
     ilacList.Filter := '';

    *)
 // end;



end;

procedure TfrmHastaRecete.chkTumPropertiesEditValueChanged(Sender: TObject);
begin
  inherited;
  if chkTum.Checked = True
  then
    ReceteWhereGelis := ''
  else
    ReceteWhereGelis := ' and r.gelisNo = ' + _gelisNo_;

  DurumGoster(True,False,'Reçeteler Yükleniyor , Bekleyiniz');
  try
    yukle;
  finally
    DurumGoster(False);
  end;

end;

procedure TfrmHastaRecete.cxButtonCClick(Sender: TObject);
var
 Form : TGirisForm;
 GirisFormRecord : TGirisFormRecord;
  msj , tokenParams ,path , jsonText : string;
begin
  datalar.KontrolUserSet := False;
  inherited;
  if datalar.KontrolUserSet = True then exit;

  GirisFormRecord.F_dosyaNO_ := _dosyaNO_;
  GirisFormRecord.F_gelisNo_ := _gelisNo_;


  case Tcontrol(sender).Tag of
  -4 : begin
         if self.Tag = TagfrmPersonelRecete
         Then Yazdir('Personel')
         Else Yazdir;
       end;

  -1 : begin
        YeniRecete(ReceteYeni);
       end;
  -2 : begin
         Duzenle;
       end;

  -6 : begin
        YeniRecete(ReceteYeniRecete);
       end;
 -19 : begin
         YeniRecete(ReceteYeniSablon);
       end;
 -18 : begin
         ReceteyiSablonOlarakKaydet;
       end;
  -3 : begin
         ReceteIptal;
       end;

  -52 : begin
            GirisFormRecord.F_HastaAdSoyad_ := _HastaAdSoyad_;
            GirisFormRecord.F_dosyaNO_ := _dosyaNO_;
            GirisFormRecord.F_ResourceID_ := ADO_Recete.FieldByName('id').AsString;
            Form := FormINIT(TagfrmHastaIlacTedavi,GirisFormRecord,ikEvet,'');
            TfrmHastaIlacTedavi(Form).receteForm := self;
            Form._foto_ := _foto_;
            if Form <> nil then Form.ShowModal;
        end;
  -9,-40,-50,-60 :
       begin
            if ADO_Recete.FieldByName('receteTur').AsString[1] in ['2','3','4','5']
            then begin
           //   path := 'D:\Projeler\VS\c#\RenkliReceteToken2\ReceteToken\WindowsFormsApplication1\bin\Debug\ReceteToken.exe';
              path := 'C:\NoktaV3\ReceteToken2.exe';
              tokenParams := receteToken(ADO_Recete.FieldByName('id').AsString);
             // ShowMessageSkin(tokenParams,'','','info');
              StrToFile('C:\NoktaV3\ReceteToken2.txt',tokenParams);
              WinExec(PAnsiChar(AnsiString(path + ' ' + tokenParams +' 0 G')),SW_SHOW);
              exit;
            end
            else
            begin

                case Tcontrol(sender).Tag of
                  -9 : MedulaSend(ReceteMedulaKaydet);
                 -40 : MedulaSend(ReceteIlacAckEkle);
                 -50 : MedulaSend(ReceteTaniEkleMedula);
                 -60 : MedulaSend(ReceteAckEkle);
                end;

            end;


       end;
  -10 : begin
          MedulaSend(ReceteMedulaSil);
        end;
  -12 : begin
            if varToStr(ADO_Recete.FieldByName('receteAltTur').AsString) = '4'
            then MedulaSend(ReceteMedulaOnay);
        end;

  -13 : begin
           if varToStr(ADO_Recete.FieldByName('receteAltTur').AsString) = '4'
           Then MedulaSend(ReceteMedulaOnayIptal);
        end;

 -8 : begin
        EReceteNoSmsSend;
       end;
 -14 : begin
         MedEczane;
       end;
 -15 : begin
         SifreDegistir('',ReceteSifre);
       end;
 -16 : begin

             RaporAra(_TC_,'',_dosyaNO_);
           // Form := FormINIT(TagfrmRaporDetay,GirisFormRecord,ikHayir,'');
           // if Form <> nil then Form.ShowModal;
       end;
 -30 : begin
          Form := FormINIT(TagfrmReceteSablon,GirisFormRecord);
          if Form <> nil then Form.showModal;

       end;
 -31 : begin
          GirisFormRecord.F_HastaAdSoyad_ := _HastaAdSoyad_;
          GirisFormRecord.F_dosyaNO_ := _dosyaNO_;
          GirisFormRecord.F_provizyonTarihi_ := _provizyonTarihi_;

          Form := FormINIT(TagfrmSon6AylikTetkikSonuc,GirisFormRecord);
          if Form <> nil then Form.showModal;
        //  Son6AylikTetkikSonuc(_dosyaNO_,_provizyonTarihi_);

       end;


 -51 : begin
         TaniIlaciliskilendir(ADO_receteTani.FieldByName('taniKodu').AsString,
                              ADO_RECETE_DETAY.FieldByName('kullanimYolu').AsString,
                              QuotedStr(ADO_RECETE_DETAY.FieldByName('kullanimAdet2').AsString +'x'+ADO_RECETE_DETAY.FieldByName('kullanimAdet').AsString),
                              ADO_RECETE_DETAY.FieldByName('adet').AsString,
                              ADO_RECETE_DETAY.FieldByName('ilacKodu').AsString);
       end;

-100 : begin
          jsonText := datalar.QuerySelect('RenkliReceteJson ' + ADO_Recete.FieldByName('id').AsString + ',1').Fields[0].AsString;
          if Recetem(jsonText) = 'Recetem'
          Then begin
            datalar.QueryExec('Update recete set ereceteNo = ' + QuotedStr('Recetem') +
                              ' where id = ' + QuotedStr(ADO_Recete.FieldByName('id').AsString));

             //  if sqlRun.State in [dsEdit, dsInsert] then sqlRun.Post;

          End;
       end;

  end;
end;

procedure TfrmHastaRecete.cxButtonKadirAckEkleClick(Sender: TObject);
begin
  inherited;
  if not CheckReceteStatus (True, False, False, True, True) then Exit;
   AckEkle(ReceteAckEkle);
end;

procedure TfrmHastaRecete.cxButtonKadirAckSilClick(Sender: TObject);
begin
  if cxGridReceteAciklama.Controller.SelectedRowCount > 0
  Then begin
       if MrYes = ShowMessageSkin('Açýklama Reçeteden Çýkartýlýyor Emin misiniz ?','','','msg')
       Then Begin
            inherited;
            if not CheckReceteStatus (True, False, True, True, True) then Exit;
            ADO_receteAcikla.Delete;
            ADO_receteAcikla.Close;
            ADO_receteAcikla.Open;
       End;
  end;
end;

procedure TfrmHastaRecete.cxButtonKadirIlacAckEkleClick(Sender: TObject);
begin
  inherited;
  if gridIlaclar.Controller.SelectedRowCount > 0
  Then begin
    if not CheckReceteStatus (True, False, False, True, True)  then Exit;
    AckEkle(ReceteIlacAckEkle);
  end;
end;

procedure TfrmHastaRecete.cxButtonKadirIlacAckSilClick(Sender: TObject);
begin
   inherited;
  if gridIlaclar.Controller.SelectedRowCount > 0
  Then begin
    if not CheckReceteStatus (True, False, True, True, True) then Exit;
    if ADO_ReceteIlacAciklama.RecordCount > 0
    Then
      ADO_ReceteIlacAciklama.Delete;
  end;
end;

procedure TfrmHastaRecete.cxButtonKadirTaniEkleClick(Sender: TObject);
begin
  inherited;
   if not CheckReceteStatus (True, False, False, True, True) then Exit;


    case TcxButtonKadir(Sender).Tag of
     0 :TaniEkle;
     1 : if cxGridReceteTani.Controller.SelectedRowCount > 0
          Then
          if MrYes = ShowMessageSkin('Taný Reçeteden Çýkartýlýyor Emin misiniz ?','','','msg')
          Then Begin
            ADO_receteTani.Delete;
          End;
    end;
    ADO_receteTani.Active := False;
    ADO_receteTani.Active := True;
end;

procedure TfrmHastaRecete.cxGridIlacTedaviPlaniStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  inherited;
   if (ARecord.Values[1] = '0')
   Then begin
    AStyle := K;
   end;

   if (ARecord.Values[13] = '0')
   Then begin
    AStyle := Sari_Siyah;
   end;

   if (ARecord.Values[13] = '1')
   Then begin
    AStyle := Yesil_Siyah;
   end;
end;

procedure TfrmHastaRecete.cxGridReceteAciklamaDblClick(Sender: TObject);
begin
  inherited;
  if ADO_receteAcikla.RecordCount <= 0 then Exit;
  if not CheckReceteStatus (True, False, True, True, True) then Exit;
  datalar.ReceteAciklama.ackKod := ADO_receteAcikla.FieldByName('aciklamaTip').AsString;
  datalar.ReceteAciklama.ack := ADO_receteAcikla.FieldByName('aciklama').AsString;
  AckEkle(ReceteAckDuzenle);
end;

procedure TfrmHastaRecete.cxGridReceteDblClick(Sender: TObject);
begin
  Duzenle;
end;

procedure TfrmHastaRecete.cxGridReceteFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;

  (*
   if varToStr(ADO_Recete.FieldByName('receteAltTur').AsString) = '4'
   then begin
      ReeteOnay1.Visible := True;
   end
   else
     ReeteOnay1.Visible := False;

   PopupMenuToToolBar(self,ToolBar1,PopupMenu1);
    *)

  if not ADO_Recete.Eof
  then
   if ADO_Recete.FieldByName('ereceteNo').AsString = '0000'
   then begin
      atc_kod_Tur.Enabled := True;
      ilacList.Enabled := True;
//      cxGrid4.Enabled := True;
      gridIlaclar.OptionsData.Editing := True;
      btnIlacEkle.Enabled := True;
      btnIlacSil.Enabled := True;
      btnEkle.Enabled := True;
      cxButtonKadirIlacAckSil.Enabled := True;
      cxButtonKadirIlacAckEkle.Enabled := True;
      cxButtonKadirAckEkle.Enabled := True;
      cxButtonKadirAckSil.Enabled := True;
      cxButtonKadirTaniEkle.Enabled := True;
      cxButtonKadirTaniSil.Enabled := True;
      chkSIK.Enabled := True;
      chkEnson.Enabled := True;
   end
   else
   begin
      atc_kod_Tur.Enabled := False;
      ilacList.Enabled := False;
//      cxGrid4.Enabled := False;
      gridIlaclar.OptionsData.Editing := False;
      btnIlacEkle.Enabled := False;
      btnIlacSil.Enabled := False;
      btnEkle.Enabled := False;
      cxButtonKadirIlacAckSil.Enabled := False;
     // cxButtonKadirIlacAckEkle.Enabled := False;
    //  cxButtonKadirAckEkle.Enabled := False;
      cxButtonKadirAckSil.Enabled := False;
     // cxButtonKadirTaniEkle.Enabled := False;
      cxButtonKadirTaniSil.Enabled := False;
      chkSIK.Enabled := False;
      chkEnson.Enabled := False;

   end;


end;

procedure TfrmHastaRecete.cxGridReceteIlacAciklamaDblClick(Sender: TObject);
begin
  inherited;
  if ADO_ReceteIlacAciklama.RecordCount <= 0 then Exit;
  if not CheckReceteStatus (True, False, True, True, True) then Exit;
  datalar.ReceteAciklama.ackKod := ADO_receteIlacAciklama.FieldByName('aciklamaTip').AsString;
  datalar.ReceteAciklama.ack := ADO_receteIlacAciklama.FieldByName('aciklama').AsString;
  AckEkle(ReceteIlacAckDuzenle);
end;

procedure TfrmHastaRecete.Duzenle;
var
 B : TBookmark;
begin
  inherited;
  if not CheckReceteStatus (True, False, True, True, True) then Exit;
  datalar.YeniRecete.doktor := copy(ADO_Recete.FieldByName('doktor').AsString,1,4);
  datalar.YeniRecete.doktorAdi := copy(ADO_Recete.FieldByName('doktor').AsString,6,100);
  datalar.YeniRecete.protokolNo := ADO_Recete.FieldByName('ProtokolNo').AsString;
  datalar.YeniRecete.Tarih := ADO_Recete.FieldByName('tarih').AsString;
  datalar.YeniRecete.ReceteTuru := ADO_Recete.FieldByName('ReceteTur').AsString;
  datalar.YeniRecete.ReceteAltTuru := ADO_Recete.FieldByName('ReceteAltTur').AsString;
  datalar.YeniRecete.takipNo := ADO_Recete.FieldByName('eReceteNo').AsString;

  if mrYes = ShowPopupForm('Reçete Düzenle',ReceteDuzenle)
  then begin
    B := ADO_Recete.Bookmark;
    ADO_Recete.Edit;
    ADO_Recete.FieldByName('tarih').AsString := datalar.YeniRecete.Tarih;
    ADO_Recete.FieldByName('ReceteTur').AsString := datalar.YeniRecete.ReceteTuru;
    ADO_Recete.FieldByName('ReceteAltTur').AsString := datalar.YeniRecete.ReceteAltTuru;
    ADO_Recete.FieldByName('doktor').AsString := datalar.YeniRecete.doktor;//+'-'+datalar.YeniRecete.doktorAdi;
    ADO_Recete.FieldByName('protokolNo').AsString := datalar.YeniRecete.protokolNo;//+'-'+datalar.YeniRecete.doktorAdi;
    ADO_Recete.FieldByName('eReceteNo').AsString := datalar.YeniRecete.takipNo;

    ADO_Recete.Post;
    ADO_Recete.Active := false;
    ADO_Recete.Active := True;
    ADO_Recete.GotoBookmark(B);
  end;
end;
procedure TfrmHastaRecete.E1Click(Sender: TObject);
var
  ado : TADOQuery;
  sql : string;
begin

    case TMenuItem(sender).Tag of
    -1 : begin
          if PopupMenuEkleSil.PopupComponent = cxGrid11
          Then Begin
             ShowMessageSkin('Tani','','','info');
          End;
          if PopupMenuEkleSil.PopupComponent = cxGridReceteAciklama
          Then Begin
             ShowMessageSkin('Açýklama','','','info');
          End;

         end;
    -2 : begin

         end;

   -21 : begin
           ilacEkle(ReceteIlacEkle);
         end;
   -22 : begin
           ilacEkle(ReceteIlacEkleIlacTedavi);
         end;

   -23 : begin
           if not CheckReceteStatus (True, False, True, True, True) then Exit;

           if (ADO_Recete.FieldByName('ereceteNo').AsString = '0000') or
              (ADO_Recete.FieldByName('ereceteNo').AsString = '')
           Then
             if MrYes = ShowMessageSkin('Ýlaç Reçeteden Çýkartýlýyor Emin misiniz ?','','','msg')
             Then Begin
                ado := TADOQuery.Create(nil);
                try
                  sql := 'delete from ReceteDetay' + _p_ + ' where id = ' + ADO_RECETE_DETAY.fieldbyname('id').AsString;
                  datalar.QueryExec(ado,sql);
                  ADO_RECETE_DETAY.Active := false;
                  ADO_RECETE_DETAY.Active := True;
                finally
                  ado.Free;
                end;
             End Else Begin end
           Else ShowMessageSkin('E-ReçeteNo su olan Reçeteden Ýlaç Çýkartýlamaz','','','info');
         end;
   end;
end;

procedure TfrmHastaRecete.Ekle(tip : string = 'I');
var
   i,x,j: integer;
   ado : TADOQuery;
   unite : real;
   ack : TStringList;
   sql , SIKPeryot: string;
begin
     if not CheckReceteStatus (True, False, True, True, True) then Exit;

     if tip = 'I'
     then begin
     if varToStr(ilacList.EditingValue) = '' then exit;
       barkod := ilacList.EditingValue;
       ilacAdi := ilacList.Text;
     end
     else
     begin
       barkod := ADO_RECETE_DETAY.FieldByName('ilacKodu').AsString;
       ilacAdi := ADO_RECETE_DETAY.FieldByName('ilacAdi').AsString;
     end;

     ado := TADOQuery.Create(nil);

     try

       sql := 'select * from OSGB_MASTER.DBO.doktorSIKKullanim '  +
       ' where barkod = ' + QuotedStr(barkod) + ' and drTC = ' + QuotedStr(datalar.doktorTC);
       datalar.QuerySelect(ado,sql);

       if chkEnson.Checked
       then begin
           doz1 := copy(ado.fieldbyname('doz').AsString,1,pos('x',ado.fieldbyname('doz').AsString)-1);
           doz2 := copy(ado.fieldbyname('doz').AsString,pos('x',ado.fieldbyname('doz').AsString)+1,5);
           SIKPeryot :=  ado.fieldbyname('peryot').AsString;
           kulYol :=  ado.fieldbyname('kulYol').AsString;
       end
       else
       begin
         if tip = 'I'
           then begin
            doz1 := '1';
            doz2 := floatToStr(IlacKoduToUnite(barkod,_dosyaNo_,_gelisNo_,peryot,peryotAdet));
            SIKPeryot := peryot;
            kulYol :=  ado.fieldbyname('kulYol').AsString;
           end;
       end;


     finally
       ado.free;
     end;


     if tip = 'I'
     then
       if ADO_RECETE_DETAY.Locate('ilacKodu;receteId',VarArrayOf([barkod,ADO_Recete.fieldbyname('id').AsString]),[]) = True
       Then begin
        // ShowMessageSkin(barkod + ' ilaç reçeteye eklenmiþ','','','info');
         exit;
       End;

     if tip = 'I'
     then begin
      ADO_RECETE_DETAY.Append;
      ADO_RECETE_DETAY.FieldByName('ReceteID').AsInteger := ADO_Recete.FieldByName('id').AsInteger;
      ADO_RECETE_DETAY.FieldByName('ilacKodu').AsString := barkod;
      ADO_RECETE_DETAY.FieldByName('ilacAdi').AsString := ilacAdi;
      ADO_RECETE_DETAY.FieldByName('adet').AsString := '1';
      ADO_RECETE_DETAY.FieldByName('kullanimYolu').AsString := kulYol;
      ADO_RECETE_DETAY.FieldByName('kullanimAdet2').AsString := ifThen(doz1='','1',doz1);
      unite :=  //strtofloat(ifThen(doz2='','1',doz2)) *
              IlacKoduToUnite(barkod,_dosyaNo_,_gelisNo_,peryot,peryotAdet);
      ADO_RECETE_DETAY.FieldByName('kullanZamanUnit').AsString := SIKPeryot;
      ADO_RECETE_DETAY.FieldByName('kullanimZaman').AsString := peryotAdet;
      ADO_RECETE_DETAY.FieldByName('kullanimAdet').AsString := floattostr(unite);
      ADO_RECETE_DETAY.Post;
     end
     else
     begin
      ADO_RECETE_DETAY.Edit;
      (*
      ADO_RECETE_DETAY.FieldByName('ReceteID').AsInteger := ADO_Recete.FieldByName('id').AsInteger;
      ADO_RECETE_DETAY.FieldByName('ilacKodu').AsString := barkod;
      ADO_RECETE_DETAY.FieldByName('ilacAdi').AsString := ilacAdi;
      ADO_RECETE_DETAY.FieldByName('adet').AsString := '1';
      ADO_RECETE_DETAY.FieldByName('kullanimYolu').AsString := kulYol;
      ADO_RECETE_DETAY.FieldByName('kullanimAdet2').AsString := ifThen(doz1='','1',doz1);

      unite := ADO_RECETE_DETAY.FieldByName('kullanimAdet').AsFloat;
      ADO_RECETE_DETAY.FieldByName('kullanZamanUnit').AsString := SIKPeryot;
      ADO_RECETE_DETAY.FieldByName('kullanimZaman').AsString := peryotAdet;
      ADO_RECETE_DETAY.FieldByName('kullanimAdet').AsString := floattostr(unite);
        *)
      ADO_RECETE_DETAY.Post;

     end;



      ado := TADOQuery.Create(nil);
      try

       //  SIKKullanimaEkle(3);

         ack := IlacReceteAciklama(_dosyaNo_,_gelisNo_,barkod,
                                    inttostr(ADO_RECETE_DETAY.FieldByName('kullanimAdet2').AsInteger *
                                             ADO_RECETE_DETAY.FieldByName('kullanimAdet').AsInteger)
                                    );
         sql := 'delete from ReceteIlacAciklama where receteDetayId = ' + ADO_RECETE_DETAY.fieldbyname('id').AsString;
         datalar.QueryExec(ado,sql);
      finally
         ado.Free;
      end;

      ADO_ReceteIlacAciklama.Active := false;
      ADO_ReceteIlacAciklama.Active := true;


      for j := 0 to ack.Count-1 do
      begin
          ADO_ReceteIlacAciklama.Append;
          ADO_ReceteIlacAciklama.FieldByName('aciklama').AsString := copy(ack[j],3,500);
          ADO_ReceteIlacAciklama.FieldByName('aciklamaTip').AsString := trim(copy(ack[j],1,2));
          ADO_ReceteIlacAciklama.Post;
          if copy(ADO_ReceteIlacAciklama.FieldByName('aciklama').AsString,1,4) = 'Hata'
          Then ShowMessageSkin('Dikkat , Doz Bilgisini Kontrol Ediniz','','','info');
      end;


      ADO_receteTani.Active := false;
      ADO_receteTani.Active := True;

      _tani_ := IlacReceteTaniEkle(barkod);
      x := pos(';',_tani_)-1;
      keys := copy(_tani_,1,x);
      if copy(_tani_,1,x) <> ''
      Then Begin
       if frmHastaRecete.ADO_receteTani.Locate('taniKodu;receteId',VarArrayOf([keys,frmHastaRecete.ADO_Recete.fieldbyname('id').AsString]) ,[]) = False
       Then Begin
         ADO_receteTani.Append;
         ADO_receteTani.fieldbyname('taniKodu').AsString := copy(_tani_,1,pos(';',_tani_)-1);
         ADO_receteTani.fieldbyname('tani').AsString := copy(_tani_,pos(';',_tani_)+1,100);
         ADO_receteTani.Post;
       End;
      End;
      if '' <> ''
      Then Begin
      keys := '';
       if ADO_receteTani.Locate('taniKodu;receteId',VarArrayOf([keys,ADO_Recete.fieldbyname('id').AsString]) ,[]) = False
       Then Begin
         ADO_receteTani.Append;
         ADO_receteTani.fieldbyname('taniKodu').AsString := keys;
         ADO_receteTani.fieldbyname('tani').AsString := TaniKodToTaniAd(keys);
         ADO_receteTani.Post;
       End;
      End;

end;

function TfrmHastaRecete.Init(Sender : TObject) : Boolean;
begin
  Result := False;
  if not inherited Init(Sender) then exit;

    db := Decode64(RegOku('OSGB_db_name'));
    _TableName_ := ifThen(TfrmHastaRecete(self).Tag = TagfrmPersonelRecete,'Recete_Personel','Recete');
    TableName := _TableName_;
    _p_ := ifThen(pos('Personel',_TableName_)>0,'_Personel','');

    _TableNameDetay_ := 'ReceteDetay' + _p_;
 //   ADO_RECETE_DETAY.TableName := 'ReceteDetay' + _p_;
  //  ADO_RECETE_DETAY.Open;
  //  ADO_receteTani.TableName := 'ReceteTani' + _p_;
  //  ADO_receteTani.Open;
    ADO_receteAcikla.TableName := 'ReceteAciklama' + _p_;
 //   ADO_receteAcikla.Open;
 //   ADO_ReceteIlacAciklama.TableName := 'ReceteIlacAciklama' + _p_;
  //  ADO_ReceteIlacAciklama.Open;

   // ReceteGetir(_dosyaNO_,_gelisNO_);

    ReceteWhereGelis := ' and r.gelisNo = ' + _gelisNo_;


    Result := True;
end;


procedure TfrmHastaRecete.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 // sqlRun.Cancel;
  inherited;

end;

procedure TfrmHastaRecete.FormCreate(Sender: TObject);
var
  Doktors : TcxImageComboKadir;
begin
 //cxYeni.Visible := false;
  inherited;
  ClientHeight := formYukseklik;
  ClientWidth := formGenislik;

  indexFieldName := '1 = 1';
  TableName := _TableName_;
  cxPanel.Visible := false;
  cxTab.Width := 200;

  Olustur(self,_TableName_,'Reçete',23);
  Menu := PopupMenu1;


   TcxImageComboBoxProperties(cxGridReceteColumn3.Properties).Items :=
   AnaForm.Doktors.Properties.Items;

   ilacList.Conn := datalar.ADOConnection2;
   ilacList.TableName :=
                   '(select I.barkod,I.ilacAdi ' +
                   //I.*,D.*,D.ICD TANI,D.kulYOL YOL,ATC.Tanimi EtkenMaddeAdi,D.Doz SIKDoz,D.peryot SIKPeryot,' +
                  // 'case when ITU.dosyaNO is null then 0 else 1 end AlerjiVar' +
                   ' from OSGB_MASTER.DBO.ilacListesi I ' +
                   ' join OSGB_MASTER.DBO.doktorSIKKullanim D on D.barkod = I.barkod' +
                   ' left join OSGB_MASTER.DBO.ATC_Kodlari ATC on ATC.kod = I.EtkenMadde ' +
                   ' left join Hasta_Ilac_Uyari ITU on ITU.atc_kodu = I.EtkenMAdde and ITU.dosyano = ' + QuotedStr(_dosyaNO_) +
                   ' where drTC = ' + QuotedStr(datalar.doktorTC) +
                   ' and D.tip = ''ILAC'') tt';

   ilacList.DisplayField := 'ilacAdi';
   ilacList.ValueField := 'barkod';
   ilacList.Filter := '';

   atc_kod_Tur.Conn := datalar.ADOConnection2;
   atc_kod_Tur.TableName := 'OSGB_MASTER.dbo.ATC_Kodlari_Tur';
   atc_kod_Tur.DisplayField := 'tanimi';
   atc_kod_Tur.ValueField := 'kod';
   atc_kod_Tur.Filter := '';




  _HastaBilgileriniCaptionGoster_ := True;

//  setDataStringKontrol(self,cxRecetePanel, 'cxRecetePanel','',Kolon1,'',1090,696);

 // cxGridReceteTani.PopupMenu := PopupMenuEkleSil;
 // cxGridReceteAciklama.PopupMenu := PopupMenuEkleSil;
    SayfaCaption('Reçete','','','','');
end;

procedure TfrmHastaRecete.gridIlaclarDblClick(Sender: TObject);
begin
  inherited;

  case TcxGrid(Sender).tag  of
    0 : begin
      if ADO_RECETE_DETAY.RecordCount < 1 then Exit;
      datalar.ReceteSatir.barkod := ADO_RECETE_DETAY.FieldByName('ilacKodu').AsString;
      datalar.ReceteSatir.barkodadi := ADO_RECETE_DETAY.FieldByName('ilacAdi').AsString;
      datalar.ReceteSatir.kutuadet := ADO_RECETE_DETAY.FieldByName('adet').AsInteger;
      datalar.ReceteSatir.peryot := ADO_RECETE_DETAY.FieldByName('kullanZamanUnit').AsInteger;
      datalar.ReceteSatir.peryotAdet := ADO_RECETE_DETAY.FieldByName('kullanimZaman').AsInteger;
      datalar.ReceteSatir.doz1 := ADO_RECETE_DETAY.FieldByName('kullanimAdet2').AsInteger;
      datalar.ReceteSatir.doz2 := ADO_RECETE_DETAY.FieldByName('kullanimAdet').AsInteger;
      datalar.ReceteSatir.kulyol := ADO_RECETE_DETAY.FieldByName('kullanimYolu').AsString;
      ilacEkle(ReceteIlacDuzenle);
    end;
    1 : begin

    end;
  end;

end;

procedure TfrmHastaRecete.gridIlaclarEditValueChanged(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem);
begin
  inherited;

  Sender.Controller.EditingController.Edit.PostEditValue;

  if (TcxGridDBColumn(AItem).DataBinding.FieldName = 'kullanimAdet') or
  (TcxGridDBColumn(AItem).DataBinding.FieldName = 'kullanimAdet2')
  then begin

    Ekle('U');
  end;
end;

procedure TfrmHastaRecete.gridIlaclarFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;
   datalar.QuerySelect(ADO_ReceteIlacAciklama,'select * from ReceteIlacAciklama where receteDetayId = ' + QuotedStr(ADO_RECETE_DETAY.FieldByName('id').AsString));

end;

procedure TfrmHastaRecete.gridTetkikListStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  inherited;
   if ((upperCase(ARecord.Values[1]) = 'HGB') or
      (ARecord.Values[1] = 'CaxP') or
      (ARecord.Values[1] = 'Ca') or
      (ARecord.Values[1] = 'P') or
      (ARecord.Values[1] = 'PTH') or
      (ARecord.Values[1] = 'KTV') or
      (ARecord.Values[1] = 'URR') or
      (ARecord.Values[1] = 'Albumin') or
      (ARecord.Values[1] = 'Ferritin') or
      (ARecord.Values[1] = 'Transferrin Sat.'))

   Then AStyle := cxStyle2;
end;

end.
