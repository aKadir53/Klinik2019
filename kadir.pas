unit kadir;

interface

uses Windows, Messages, system.SysUtils, Variants, Classes, Graphics, Vcl.Controls, Consts,
  Dialogs, ADODB, registry, ComCtrls, StdCtrls, db, ExtCtrls,comObj ,cxProgressBar,
  ShellApi, forms, data_modul, Grids,  Rio, SOAPHTTPClient,cxGridExportLink,
  xsbuiltIns,  Mask, Math, Printers,   zlib, StrUtils, Menus, SHDocVw,
  ActiveX, Buttons,  WinSvc, ImgList,wininet, types, kadirType, KadirLabel,jpeg, AdvGrid,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP,IdFtp,IdGlobal,
  cxDBLookupComboBox,winsock,  DBCtrlsEh, EncdDecd,cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDropDownEdit,JclGraphics, MedulaHizmetKayit,MedulaYardimciIslem,
  IdCoderMIME, cxDataStorage, cxEdit, cxControls, cxGridCustomView, cxGridDBTableView,
  cxCheckListBox,cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,cxGridDBBandedTableView, cxClasses,
  cxGroupBox, cxRadioGroup,cxGridLevel, cxGrid, cxCheckBox, cxImageComboBox, cxTextEdit, cxButtonEdit,
  cxCalendar,dxLayoutContainer, dxLayoutControl,cxPC, cxImage,superobject,DISWS,ekrtf,ekbasereport,
  frxExportPDF ,CSGBService,IOUtils,DelphiZXingQRCode,cxMaskEdit,cxMemo,idHash,IdHashMessageDigest,
  frxClass;


 type
    TArrayOfString = array of String;



function SMSGonder(tel,mesaj : string) : string;
procedure SMSSend(tel : string; Msj : string = '';Kisi : string ='';dosyaNo : string = '');
procedure WhatsappSend(token :string ; tel : string; Msj : string = '';Kisi : string ='';dosyaNo : string = '');

function SendMesajGonderWhatsapp(token ,tel,mesaj : string) : string;

function findMethod(dllHandle : Cardinal; methodname : string) : FARPROC;

function WanIp(url : string = 'http://bot.whatismyipaddress.com') : string;
procedure RegYaz(dizi , diziDegeri : string ; openKey : string = '');
function RegOku(dizi : string ; openKey : string = '') : Variant;
procedure RegSil(dizi : string ; openKey : string = '');

function Songelis(DosyaNo: string): string;
// function HGBal : string;
// function MesajKontrol(id : string) : mesajBilgi;
function dosyaNoToSGKBilgi(DosyaNo: string): TSGKBilgileri;
function TcdenYasHesapla(tc: string): TYas;
procedure DateToXsdate(var xsDate: Txsdate; date: Tdatetime);
procedure DateToXsdateTime(var xsDate: Txsdatetime; date: Tdatetime);

function tarihFarki(tarih1, tarih2: Tdate): TYas;
function HareketSiraNoHizmetAdi(siraNo, Tip: string): string;
function KurumBransi: string;
function KurumKodu: string;
function KurumBilgi: TDataset;
function TakipSistemdeVarmi(Takip: string): string;
function TakipTuruAdi(turu: string): string;
function NoktasizTarih(t: string): string;
function ProgramKontrol(_Tarih: string): Boolean;
function TarihKayit: Boolean;
function REV: string;
function TesisTuruAdi(deger: string): string;
function ZorunluTel(Tel: string): Boolean;
function IcmalBlok(Tel: string): integer;
function StringKarakterSurusuTemizle (const sHamString, sTemizlenecekKarakterler: String): String;
function AktarimTelefonNoTemizle (const sHamTelefon: String): String;
function AktarimUyrukDuzelt (const sHamUyruk: String): String;

procedure Login;


// procedure TakipOku(_Takip : string;var Hasta : TTakipBilgisi);
function kullanici: string;
function GetDataForMuavin: string;
function AnaHesapAdi(AnaNo: string): string;
function Bugun: string;
procedure StartWork;
procedure EndWork;
function ListResult: string;
procedure Grid_Temizle(grid_adi: TStringGrid);
procedure Grid_TemizleRowNotDelete(grid_adi: TStringGrid);
function NextKontrol(frm_: TForm; var Key: Char): Boolean;
procedure SetListResult(s: string);
function AddSpaceLeft(s: string; l: integer): string;
function AddSpaceRight(s: string; l: integer): string;
function Tarih(t: string): string;
function FormattedTarih(t: string): string;
function FormattedTarihYYMMGG(t, s: string): string;
function numTOtxt_M(d: extended; p: integer): string;
function ShowMessage(msg1, msg2, msg3: string; t: string): word;
function ShowMessageSkin(msg1, msg2, msg3: string; t: string): word;

function ShowPopupForm(Caption : string ; Tag : integer ; value : string = '' ;imageindex : integer = -1): word; overload;
function ShowPopupForm(Caption : string ; Tag : integer ; Form : TForm ; imageindex : integer = -1): word;overload;
function ShowPopupForm(Caption : string; Tag : integer ; value : string ; FormName : string ; imageindex : integer = -1): word ; overload;



function tarihyap(t: string): Tdate;
function tarihal(t: Tdate): string;
function SayisalVeri(alan: Tlabelededit; var Key: Char): Boolean;
function BuyukHarf(var Key: Char): Boolean;
Function yaz(islem: string; Tarih: Tdate; hesapkodu: string; tutarb: real;
  tutara: real; conn: string): string;
Function bakim(b: TADOConnection; donem: string): string;
Function serverismi(katalog: string): string; overload;
Function serverismi(Adres, katalog: string): string; overload;

Function servertip(): string;
function Zorunlu(_frm: TForm; var myhint: string): Boolean; overload;
function Zorunlu(_pnl: TPanel; var myhint: string): Boolean; overload;

procedure ItemsDoldurName(name: string; var c: TStrings);
procedure ItemsDoldurDoktorlar(name: string; var c: TStrings);

procedure ComboDoldurName(sql: string; c: TComboBox); overload;
procedure ComboDoldurName(sql: string; c: TcxComboBox); overload;

procedure ComboDoldur(Q: TADOQuery; sql: string; c: TComboBox); overload;



procedure ComboDoldur2(Q: TADOQuery; sql: string; c: TComboBox; alan: integer;
  alan2: integer); overload;


procedure ComboDoldur3(sql: string; c: TcxComboBox; alan: integer;
  alan2: integer);



function tariharalikkontrol(Tarih: Tdate; donem: string): string;
function aktifdonem: string;


function DonemSeansSayisi(kod, donem, durum: string): integer;
function TakipKontrolDonemSeansSayisi(donem: string; var P704230, P704233,
  P704234: integer): integer;

function secilisatirbilgisi(Grid: TAdvStringGrid; col: integer;
  col1: integer): string;
function notsecilisatirbilgisi(Grid: TAdvStringGrid; col: integer;
  col1: integer): string;

function secilisatirsayisiCx(Grid: TcxGridTableView; col: integer): integer;
function seciliSatirlarColumData(Grid: TcxGridTableView; col: integer): string;

procedure GorselAyar(_frm: TForm; image: TImageList);
function KucukHarfTRK(str: string): string;



function ControlTarih(t: string): integer;
procedure XlsBeginStream(XlsStream: TStream; const BuildNumber: word);
procedure XlsEndStream(XlsStream: TStream);
procedure XlsWriteCellRk(XlsStream: TStream; const ACol, ARow: word;
  const AValue: Integer);
procedure XlsWriteCellNumber(XlsStream: TStream; const ACol, ARow: word;
  const AValue: double);
procedure XlsWriteCellLabel(XlsStream: TStream; const ACol, ARow: word;
  const AValue: string);
function txtTOtxt_M(txt: string): string;
function AllignRight(s: string): string;
function hesapbakiye(hesap: string): real;
function _HesapAdi(hesapkodu: string): string;
function ayliktarih(Tarih: Tdate): Tdate; overload;
function ayliktarih(Tarih: Tdate; var t1: Tdate): Tdate; overload;
function ayliktarih(Tarih: Tdate; t1: TcxCustomDateEdit): Tdate; overload;
function ayliktarih2(ayadi: string; _yil_: string = ''): Tdate;
function ayaditoay(ayadi: string; yil: string = ''): Tdate;
function aytoayadi(_ay: Tdate): String;
function sirket(donem: string): string;
function HesapTanimGetir(_kod: string): string;
function PosHesapGetir(_kod: string): string;
function AktifYil(donem: string): string;
function CheckModulIslem (const pModul, pIslem: String):Boolean;
function UserRight(M, Islem: string): Boolean;
procedure UserRightInsert(M, Islem , User: string);
function Sifrele(s: string): string;
function bransAdi(_kod: string): string;
function tesisAdi(_kod: string): string;
procedure Disabled(_form: TForm);

procedure EnabledEdit(_form: TForm);
procedure ReadOnlyd(_form: TForm);
procedure ReadOnlydFalse(_form: TForm);
function Kurumadi(_kurum: string): string;
function merkezAdi(_kurum: string): string;
function CariAd(_cariKod: string): string;
procedure ilComboDoldur(combo: TComboBox);
function TarihKontrolu(_Tarih: String): Boolean;
Function DosyaKopyala(sSrc: string; sDest: string): integer;
procedure tarihata(tarih1, tarih2: TcxDateEditKadir; ayadlari: TcxComboBox);overload;
procedure tarihata(tarih1, tarih2: TDateTimePicker; ayadlari: TComboBox);
  overload;
procedure tarihata(tarih1, tarih2: TEdit; ayadlari: TComboBox);
  overload;

function GuncelKontrol: string;
function sorguTuruAdi(_kod: string): string;
function taburcuKoduAdi(_kod: string): string;
// procedure TakipBilgiOku(_Takip : string;var Hasta : TTakipBilgisi);

function TakiplerToHint(DosyaNo: string): String;
function gelisToTakip(DosyaNo, GelisNo: string): String;
// function TeyitNoBul(_Takip : string) : string;

function doktorTescil(kod: string): string;
function doktorTesciltokod(Tescil: string): string;
function doktorSertifika(kod: string): string;
function doktorSertifikaNo(kod: string): string;
function TescildoktorBul(doktor: string): string;
function doktorTescilToTC(kod: string): string;
function doktorSertifikaTescil(Tescil: string): string;
function doktorTCtoKod(tc: string): string;
function TaniKodToTaniAd(kod: string): string;
function doktorTC(kod: string): string;
function doktorAdi(kod: string): string;
function doktorKodToReceteUser(kod: string ; var Tc : string ; var Ad : string;
                                             var user : string ; var sifre : string): string;

function doktorEReceteUser(kod: string; var user: string;
  var pass: string): string;



function raporTakipNobul(DosyaNo: string): string;
function raporTakipNoToraporNo(raporTakipNo: string): string;
function doktorBrans(kod: string): string;
function doktorReceteBrans(kod: string): string;
function LocalIP(var IP: string): Boolean;
function GetLocalHostName(var pHostName: string): Boolean;
procedure HTTPbaglan(HTTP: THTTPRIO);
// procedure HastaTakipBulP(Bilgi : THastaKabul;tarih1,tarih2 : string);
procedure datasetiDoldur(_takipNo, tedaviTuru, _basvuru: string ; var TopluDataset : TDatasetKadir);
procedure datasetiDoldurHD(dosyaNo,gelisNo : string ; var TopluDataset : TDatasetKadir);
function StringMaskele(pass: string; Mode: Boolean): String;
function InternetVarmi: Boolean;
function seansgun(_dosyaNo: string): string;
function seansgunTo(seans: string): string;
function EnSonRunTarih: Boolean;
function LisansBilgileri(var Tarih, basla, bitis, kurum , LisansTip ,LisansTipDeger: string;
  var limit : integer): Boolean;
function LisansKontrol(var fark: double): Boolean;
procedure EditTemizle(_form: TForm);
function ResimVarMi(DosyaNo, gonderenForm: string): Boolean;
function HizmetKoduToHizmetAdi(kod: string): string;
function HizmetFiyat(kod: string): real;
function EK10C(code: string): Boolean;
procedure Split(const Delimiter: Char; Input: string; const Strings: TStrings);
function medulaHataCozumBul(hatakodu: string): string;
function gunAdi(_gun: integer): string;

function idealKilo(_dosyaNo: string): double;
function SonSeansGCKilo(_dosyaNo, GelisNo: string; var g, c: double): double;
function BirOncekiSeansGCKilo(_dosyaNo, GelisNo, id: string;
  var g, c: double): double;
function HastaBilgiProtokolCaptionYaz(DosyaNo, GelisNo: string): string;

function KodEslestir(kod: string; var Tip: string; turId: string = ''): string;
// function KodEslestir(kod : string ; var tip : string ; turId : string ; test : string ; parametre : string) : string;overload;

function KodEslestirNormalDeger(kod: string; turId: string;
  var minD, maxD, Tip: string): string;
function KodEslestirKod(kod: string; var ckod, turId: string): string;
function KodEslestirLabKodu(kod: string; var ckod: string): string;
procedure comboList(_form: TForm);
procedure ComboEkle(Tip, ifade: string);
procedure ComboSil(Tip, ifade: string);
procedure SeperatorDegis;
procedure YetkinizYok;

procedure KeyPressGrid(Sender: TcxGridDBTableView; var Key: Char;
  var arama: string; colum: integer);
function SaticiFirmaBul(cariKod: string): string;

function MuhasebeKayitTipi(cariKod: string): integer;
function HizmetFaturaBul(Id: string): Boolean;
function stokFaturaBul(Id: string): Boolean;

function kareBarkodOku(Kb: string; Gsindex: integer): TKareBarkod;
function TestKodToNormalDeger(kod, yas, cins: string; deger: double): Boolean;
function TestKodToNormalDegerYukle : Boolean;
function TestKodToNormalmi(kod : string ; deger : double): Boolean;
function SgKTipEslestirKod(kod: string): string;
function DiyalizPaketiUygula(DosyaNo, GelisNo, sablonId: string): integer;
procedure EpikrizYaz(DosyaNo, GelisNo : string ; DataSet : Tdataset = nil);overload;
Procedure EpikrizYaz(DosyaNo, GelisNo: string; QR: Boolean ; QRText : string = '');overload;
Procedure TedaviKartiYaz(DosyaNo, GelisNo: string; QR: Boolean ; QRText : string = '');
procedure ImzaFoyleriYaz;
procedure MenuIDRun(MenuId : integer);
function sureKontrol: Boolean;
function RaporGecerlimi(_dosyaNo: string): double;
function IlacReceteAciklama(_dosyaNo, GelisNo, kod, doz: string ; dozAsimiDikkateAlma : string = '0'): tstringlist;
function IlacReceteTaniEkle(kod: string): String;
function IlacKoduToUnite(code, dosya, gelis: string;
  var peryot, peryotAdet: string): real;
function IlacAdiToBarkod(ilacAdi : string) : string;
function SeansKontrol(s, mn, t: string; DosyaNo: string = ''): string;
function StokBul(_kodu: string; var Birim: string; var kdv: integer): string;
function DosyaNoTC(DosyaNo: string): string; overload;
function DosyaNoTC(DosyaNo: string; var idealKilo: string): string; overload;
function DosyaNoHastaAd(DosyaNo: string): string;
function DosyaNoHastaTel(DosyaNo: string; Telefon : string = ''): string;
function DosyaNoPersonelTel(DosyaNo: string; Telefon : string = ''): string;
function receteIlacBilgisiGetir(barkod: string): TReceteIlacBilgisi;
function provizyonTakipTiptoReceteTip(Tip: string): integer;
function HastaBilgiProtokolCaptionYazSeans(DosyaNo, GelisNo, SeansNo: string)
  : string;
procedure KeyPressGridF(Sender: TcxGridDBTableView; var Key: Char;
  var arama: string; colum: integer; F: Boolean);
procedure FilterGrid(Sender: TcxGridDBTableView; var Key: string;
  var arama: string; colum: integer; F: Boolean);

function cxCheckListSecili(c: TcxCheckListBox): string;
procedure cxCheckListSec(cL: TcxCheckListBox; c: string);
function cxCheckListSecili01(c: TcxCheckListBox): string;
procedure cxCheckListSec01(cL: TcxCheckListBox; c: string);
function protokolGuncelle(Id, protokolNo, doktor: string): Boolean;
function doktorKlinikKoduSaglikNet(doktor: string): string;
function EnsonRaporProtokolNo: integer;
function EnsonSeansProtokolNo(SirketKod,SubeKod: string ; Tip : string = 'Re�ete'): string;
function InputBoxM(const ACaption, APrompt, ADefault: string): string;
function InputQueryM(const ACaption, APrompt: string;
  var Value: string): Boolean;
function TCKontrol(const tcId: string): Boolean;
function MernisUserPass(var userid: string; var pasword: string): Boolean;
procedure strtostrings(ayirac: string; text: string; const Strings: TStrings);
function YedeklemeUyari: integer;
procedure Sonucyaz(s, Takip: string; x: integer; hatalar: tstringlist);overload;
procedure Sonucyaz(Http : THizmetKayit);overload;
procedure Sonucyaz(Http : TYardimciIslem);overload;
procedure HastaKayitSonucYaz(S0,S1,S2 , HastaneRefNo : string);


function TCtoAd(tc: string): string;
function dosyaNOIslemGormusmu(dosyaNo: string): integer;
function TCtoDosyaNo(tc: string ; var firma : string): string;
function KanAlimTarihi(DosyaNo, GelisNo: string): string;
procedure GonderimMesaj(msj, filename: string);
function TCdenDosyaNoGelisNo(tc, tarih1, tarih2: string;
  var DosyaNo, GelisNo, id: string): integer;
function EncodeFile(const filename: string): AnsiString;
function FIleToByteArray(const filename: string): TByteDynArray;
function TrtoEng(str: string): string;
function Encode64(s: string): string;
function Decode64(s: string): string;
function sutKodu(Tip: string = '0'): string;
procedure GssOkuBilgisiTemizle(Takip: string);
procedure ScreenShot(DestBitmap: TBitmap);
procedure ScreenShotFTP;
procedure ScreenShotActiveWindow(Bild: TBitMap);
function BMPtoJPG(var BMPpic, JPGpic: string): Boolean;
function SQL_Host(var server: string; var user: string; var password: string;
  var db: string): Boolean;
procedure SQL_Host_Baglan;
function ayinSonGunu(_now_: Tdate): Tdate;
procedure CompressFiles(Files: TStrings; const filename: String);
procedure DecompressFiles(const filename, DestDirectory: String);
procedure DosyaKopyalaAP(_from_, _to_: string);
procedure DosyaCopy(_from_, _to_: string);
function ServiceStart(sMachine, sService: string): Boolean;
function ServiceStop(sMachine, sService: string): Boolean;
function HastaKabul0543HatasiTakipAl(SonucMesaj: string): string;
function DoktorSeansHastaSayiKontrol(doktor, seans, Tarih: string): Boolean;
function HastaOlmusmu(DosyaNo: string): Boolean;
function TakipFaturadami(_Takip: string): Boolean;
function TurkCharKontrol(Text : string) : Boolean;
procedure GirisZamanYaz(KullaniciAdi : string);
function ListeAcCreate(TableName,kolonlar,kolonBasliklar,kolonGenislik,name,baslik,where : string;colcount : integer ; grup : boolean = false;Owner : TComponent = nil ; filterCol : integer = 0) : TListeAc;
procedure PopupMenuToToolBar(AOwner : TForm; TB : TToolBar ; Menu : TPopupMenu);
procedure PopupMenuToToolBarEnabled(AOwner : TComponent ; TB : TToolbar ; Menu : TPopupMenu);
procedure PopupMenuEnabled(AOwner : TComponent ; Menu : TPopupMenu ; Enableded : Boolean = True);

function KontrolUsers(FormTag,KontrolTag : string; kullanici : string) : Boolean;
function dosyaNoYeniNumaraAl(tip : string) : string;
function TakipMeduladanSil(TakipNo : string) : string;
function HastaKontrol(_dosyaNo : string) : boolean;
procedure BasvuruNoSistemeYaz(TakipNo,BasvuruNo : string);
procedure IlacTedaviKarti(dosyaNo,gelisNo,Tarih : string ; islem : integer = 99999);
//function HastaGelis(dosyaNo : string ; var ado : TDataset) : integer;overload;
function HastaGelis(dosyaNo : string ; var ado : TADOQuery) : integer;
function HastaGelisSelect(dosyaNo : string ; var ado : TADOQuery ; Tip : string = 'Hasta_gelisler') : integer;
procedure ReceteForm(dosyaNo,gelisNo : string);
procedure ImageComboItemAdd(value,Description : string;ImageCombo : TcxImageComboBox);
procedure GetBuildInfo(const AppName: string; var V1, V2, V3,V4: Word);
procedure MedEczaneGit(user,pasword,Tc : string);
procedure cxExceleGonder(grid : TcxGrid ; dosyaName : string);
procedure SifreDegistir(newSifre : string ; sifreTip : integer);  overload;
function SifreDegistir (const bMevcutSifreyiKutuyaDoldur: Boolean): Boolean;overload;
procedure HastaBilgiRecordSet(Adi,Soyadi,Tc,Yas : string);
procedure HastaRapor(dosyaNo,gelisNo : string);
procedure Son6AylikTetkikSonuc(dosyaNo,Tarih : string);
procedure TetkikEkle(dosyaNo,gelisNo,Tarih : string);
procedure AdoQueryActiveYenile(ado : TADOQuery);
procedure PrintYap(raporKodu,caption,formId : string; Data: TDataSetKadir; yazdirmaTipi : TprintTip = pTNone ; Form : TForm = nil);
procedure PrintYapDokuman(raporKodu,caption,formId : string; Data: TDataSetKadir; yazdirmaTipi : TprintTip = pTNone ; Form : TForm = nil ;SayfaGizle : string = '');

procedure PrintIcerik(raporKodu : string);
procedure PrintLogo(raporKodu : string);
procedure RTFToIcerik(raporKodu : string);
procedure KanTetkikleri(dosyaNo,Tarih : string);
procedure KanTetkikleriDegerlendir(dosyaNo,gelisNo : string);
procedure ReceteIlacAckTaniEkleMedula(islem : integer ; dosyaNo,gelisNo,ereceteNo,id,doktor,taniKodu,ackId : string);
procedure TaniIlaciliskilendir(TaniKodu,kulyol,doz,adet,barkod : string);
procedure SendQueryString(QueryString: string);
function KontrolZorunlumu(formTag : integer;KontrolName : string) : Boolean;

function FormInputZorunluKontrolPaint(form : Tform ; Renk : TColor) : Boolean;
function NewTab(Page : TcxPageControl ; Name : string) : TcxTabSheet;overload;
function NewTab(Page : TcxPageControl;Tag : integer) : TcxTabSheet;overload;
function FindTab(Page : TcxPageControl ; Name : string) : Boolean;overload;
function FindTab(Page : TcxPageControl ; Tag : integer) : Boolean;overload;
function FindTabSheet(Page : TcxPageControl ; Name : string) : TcxTabSheet;
function GetOwningForm(Control: TComponent): TForm;
function GelisDuzenle(GelisBilgisi : TGelisDuzenle ; var Hata : string) : Boolean;overload;
function GelisDuzenle(GelisBilgisi : TGelisDuzenleK ; var Hata : string) : Boolean;overload;

procedure AdoGelisEnabledMenuItem(Bar : TToolBar;Item : TMenuItem;Enabled : Boolean = True);
function FindToolButton(Bar : TToolBar ; ButtonName : String) : TToolButtonKadir;
procedure SatiriRenklendir(Grid: TAdvStringGrid; Satir, ColonSayisi: integer;  renk: tcolor);
procedure TDISDoktorIDGetir(Tc : string ; var ID : integer);
function GridCellToString(Grid : TcxGridDBBandedTableView; ColonName : string ; Row : integer) : Variant;overload;
function GridCellToString(Grid : TcxGridDBTableView; ColonName : string ; Row : integer) : Variant;overload;
function GridCellToDouble(Grid : TcxGridDBTableView; ColonName : string ; Row : integer) : Variant;
function GridCellToBoolean(Grid : TcxGridDBTableView; ColonName : string ; Row : integer) : Boolean;
function GridCellToVariant(Grid : TcxGridDBTableView; ColonName : string ; Row : integer) : Variant;

procedure GridCellSetValue(Grid : TcxGridDBTableView; ColonName : string ; Row : integer ; Value : Variant);
function SQLSelectToDataSet(Columns,Table,Where : string) : TADOQuery;
procedure ExceldenPersonelYukle;
procedure ExceldenUTSAlmaBildirimYukle;
procedure OnlineDestekOpen;
procedure DestekTalep;
function IsNull (const s: String): Boolean;
procedure LisansUzat;
function SahaSaglikGozlemSil(const GozlemID: integer): Boolean;
function KaliteYonetimPlanSil(const GozlemID: integer): Boolean;
function ElHijyenSil(const GozlemID: integer): Boolean;
function AnketSil(const ID: integer): Boolean;
function VeritabaniAlaninaFotografYukle(const sTableName, sKeyField, sImageField, sKeyValue: String): Boolean;
function VeritabaniAlanindanFotografYukle(const sTableName, sKeyField, sImageField, sKeyValue: String; var aImage: TcxImage): Boolean;
function FotografGoruntule (const aPicture: TPicture) : TModalResult;
function CombodanSectir (const sFormCaption, sComboCaption, sItemsList: String; var iItemIndex : Integer): Boolean;
procedure AdSoyadAyir (const pAdSoyad: String; var pAd, pSoyad : String);
function WebErisimBilgileriFirma(sirketKod : string) : string;
function WebErisimBilgiFirma(slk,slb : string) : string;
function WebErisimBilgi(slk,slb : string) : string;
function WebErisimBilgiOrtak(slk,slb : string) : string;

function DoktorReceteMedulaGonderimTip(doktor : string) : integer;
procedure DBUpdate;
function SirketSubeTehlikeSinifi(Sirket,Sube : string) : string;
function DBGridDialog (const pCaption: String; const aDataset: TDataset; aButtons : TMsgDlgButtons; aDefaultButton : TMsgDlgBtn) : TModalResult;
function GetUserDoktorFilter (pFieldName : String = ''): String;
function GetUserIGUFilter (pFieldName : String = ''): String;
function GetUserDSPFilter (pFieldName : String = ''): String;
function HakikiAktifSube: String;
function PersonelTopluPasifYap (const bPasif : boolean; const pSirketKod, pSubeKod : String) : Boolean;
procedure KademeliStoredProcCalistir (const pSPName : String; const pParameters : String);
function SQLValue (const sValue: String): String;
function PersonelPeriyodikTetkikIstemleri(grup : string) : string;
procedure PersonelTetkikIstemleri(tarih,tarih2 : string);
procedure YeniRecete(islem: Integer ; _dosyaNo_,_gelisNo_,_MuayeneProtokolNo_ : string);
function FirmaBilgileri(sirketKodu : string ; subeKodu  : string = '00') : TFirmaBilgi;
function isgKurulEkibiMailBilgileri(id : string) : string;
function isgKurulEkibiTelBilgileri(id : string) : string;
function isgRDSEkibiMailBilgileri(id : string) : string;

function mailGonder (alici , konu , mesaj : string ;  filename : string = '' ; displayName : string = ''): string;
procedure UyumSoftPortalGit(user,pasword,url : string ;  uygulama : string = 'Uyum');
function FaturaSilIptal(FID : string) : Boolean;
function SonYayinlananGuncellemeNumarasi : Integer;
procedure StretchImage(var Image1: TImage; StretchType: Byte; NewWidth, NewHeight: Word);overload;
procedure StretchImage(var Image1: TcxImage; StretchType: Byte; NewWidth, NewHeight: Word);overload;
procedure HesapIsle(BorcHesap,AlacakHesap,Aciklama : string ; Tutar : Double ; Tarih ,cek,vadeTarihi,evrakTipi,evrakNo,cekdurum,cekId: string);
procedure HesapIsleOdeme(BorcHesap,AlacakHesap,Aciklama : string ; Tutar : Double ; Tarih ,cek,vadeTarihi,evrakTipi,evrakNo,cekdurum,cekId: string);
function SifreGecerliMi (const sSifre: String; const pMinKarakter, pMinHarf, pMinKucukHarf, pMinBuyukHarf, pMinRakam : Integer; pMsgGostrt : Boolean = True) : Boolean;


procedure DokumanOku(DokumanID,rev,DokumanNo : string ; Open : Boolean = True);
function OkunmayanDokumanVar(user : string) : Boolean;
function OkunmayanOlayBildirimVar(user : string) : Boolean;

procedure DokumanAc(Dataset : Tdataset;fieldName : string;fileName : string; Open : Boolean = True ; DokumanTip : string = 'rtf');


procedure DokumanYukle(Dataset : Tdataset;field : string;fielName : string;maxSize : longint = 60000000 ; DT : Boolean = True);
procedure DokumanYuklePDF(Dataset : Tdataset;field : string;fielName : string;maxSize : longint = 60000000);
function RTFSablonDataset(RTFKodu : string) : TDataset;
function SirketIGUToSQLStr(sirketKodu : string) : string;
function SirketDoktorToSQLStr(sirketKodu : string) : string;
procedure GridToSayfaClient(Grid : string ; Form : TForm);
function GuncellemeTakipScriptPush: Boolean;
procedure YeniOSGBFirmaVeritabani;
function SubeIGUDoktorAtanmismi(sirketKod : string) : integer;
function FindComponentButtonName(const AName: string ; Form : TForm): TComponent;
function FirmaSorgulaCSGB(firmaSGK , iguTC : string) : isyeriCevapDVO;
//function EgitimKaydetCSGB(egitim : egitimBilgisi ; pin,cardType,_xml_ : string) : egitimBilgisiCevap;overload;
//function EgitimKaydetCSGB(egitim : cokluEgitimBilgisi ; pin,cardType,_xml_ : string) : cokluEgitimCevapDVO;overload;
//function EgitimKaydetCSGBImzager(egitim : egitimBilgisi) : egitimBilgisiCevap;
function EgitimVerisi(id : string ; var pin,cardType : string; var xml : string;var xmlSOAP : string) : egitimBilgisi;
function EgitimVerisiXML(egitim : egitimBilgisi) : string;
//function EgitimImzala(pin,egitim,cardType : string): string;
function EgitimImzali : string;
function EgitimHash(egitim : string): string;
Function EgitimKodlari : String;
procedure SetAnaFormFoto;
Function myFileSize(filename : string) : integer;
function FolderSize(Dir : string) : Double;


procedure ChangeFAttrib(dsy:  String);
procedure DelTree(StartDir: string);

Procedure EgitimSorgulaCSGBCvpBilgiGuncelle(cvp : ArrayOfEgitimBilgisiCevap);
Procedure EgitimKaydetCSGBCvpBilgiGuncelle(egitimId,msg,sorguNo : string);
Procedure FirmaSorgulCSGBCvpFirmaBilgiGuncelle(firmaSgk : string ; Cvp : isyeriCevapDVO);

function DetaySil(Tag : integer ; Tablaname,WhereField,Where : string) : Boolean;
procedure FirmaBilgiRecordToNull;
function Download(URL, User, Pass, FileName :  string ; FullURL : string = '443'): Boolean;
procedure DatasetRefresh(DataSet : TDataset ; BookMark : Boolean = False);
procedure RevOnay(item : string ; Dataset : TDataset);

function CreateGrid(name : string; Form : TForm ; NavigatorButtons : Boolean = True ; DS : TDataSource = nil ; DataEditing : Boolean = True  ; CreatAllCol : Boolean = False ; PopupMenu : TPopupMenu = nil)  : TcxGridKadir; overload;
function CreateGrid(name: string ; Parent : TWinControl ; DS : TDataSource ; GroupFooter : Boolean = False ; PopupMenu : TPopupMenu = nil): TcxGridKadir; overload;
procedure SetGrid(cxGrid : TcxGrid ; Colums,ColumnsPropertiesClassName,
                  ColumsCaption,ColumnsWidth,ColumsPropertiesItems,ColumsReadOnly : String ; ColumsMaskItems : String = '');
function SGKHizmetSorgulama(kullaniciAdi,sifre,sysTakipNo,islemReferansNo,uygulamaKodu : string) : String;
function SYSOnlineCvpDBDurumYaz(SiraNo,SysTakipNo,MesajTipi,SONUCKODU,SONUCMESAJ,user : string) : integer;
procedure MesajGonder(mesaj , islemTipi , HastaneRefNo: string ; var _Sonuc_ : string);
function SendMesajGonder(m,t : PWideChar ; var sonuc : PWideChar ; HastaneRefNo : string) : integer;
procedure SysTakipNoSorgula(sysTakipNo  : string ; var _Sonuc_ : string);
procedure TakipListGetir(kullaniciAdi,sifre,sksrs,Tarih,uygulamaKodu : string);

procedure ENabizMuayeneKayit(HastaneRefNo,sysTakipNo: string ; var _Sonuc_ : string ; islemReferansNo : string = '' ; Tip : string = '');
procedure ENabizHizmetKayit(HastaneRefNo,sysTakipNo : string ; var _Sonuc_ : string ; islemReferansNo : string = '' ; Tip : string = '');
procedure ENabizHizmetSil(HastaneRefNo,sysTakipNo: string ; var _Sonuc_ : string ; islemReferansNo : string = '');
procedure ENabizVeriPaketiSil(HastaneRefNo,sysTakipNo: string ; var _Sonuc_ : string ; VeriPaketi : string = '');
procedure ENabizTetkikKayit(HastaneRefNo,sysTakipNo: string ; var _Sonuc_ : string ; islemReferansNo : string = '' ; Tip : string = '');
procedure ENabizRadyolojiKayit(HastaneRefNo,sysTakipNo: string ; var _Sonuc_ : string);
procedure ENabizSgkBildir(HastaneRefNo,sysTakipNo: string ; var _Sonuc_ : string ; islemReferansNo : string = '' ; Tip : string = '');

procedure ENabizDoktorErisim(username,sifre,hastaTc,doktorTc : string);


procedure GunlereGoreHastaDagilimCizelgesi;

procedure RaporAra(_TC_,_Yupass_,_dosyaNo_ : string);

procedure StrToFile(const FileName, SourceString : string);
function FileToString(const AFileName: string): AnsiString;
function ImzaliGirisYap : PWideChar;
function ImzaileSeansKapat(refNo : integer ; imzalayan : string = 'Dr') : PWideChar;

function TakipNoMalzemeIslemRefNo(TakipNo : string) : string;
procedure TakipNoTetkikIslemSiraNo(TakipNo : string);
procedure TakipNoMalzemeIslemSiraNo(TakipNo : string);
function TakipNoTetkikIslemRefNo(TakipNo ,Tip : string) : string;
procedure TakipNoHizmetIslemSiraNo(TakipNo , Tip : string);
procedure IslemNumaralariniAl(_TakipNo : string);

procedure XMLGoster(filename: string);

function FotoGetir( dosyaNo : string) : TcxImage;
function receteToken(receteId : string) : string;
procedure QRBarkod(Text , JpgFilename : string);
procedure QRYukle(Dataset : Tdataset;field : string;fielName : string;maxSize : longint = 60000000);
function SaatRangeToSeans(Saat : string) : string;
procedure SeansKapat(islemRefNo : integer ; uygulayan : string);
procedure SeansDuzenle(id : integer);
function RaporIslemGonder(RaporID,islem,etkenID,teshisID,ack: string) : string;
procedure EkRTFBlobToinFile(Templates : TDataset ; Field : string ; var EkRtf1 : TEkRtf);
function EArsivFaturalarOku(t1,t2 : string)  : string;
function Recetem(jsonText : string)  : string;
procedure FotoEkle(islem : string = 'Ekle' ; dosyaNo : string = '' ; Foto : TcxImage = nil);

function EtkinMaddeKodToAdi(kod : string) : string;

function firmaKodDecode(code : string) : string;
function SplitString(const aSeparator, aString: String; aMax: Integer = 0): TArrayOfString;

function ByteArrayToString(const ByteArray: TByteDynArray): string;
procedure ByteArrayToFile( const ByteArray : TByteDynArray;
                            const FileName : string );
function ByteArrayFromStream( inStream : TMemoryStream ) : TByteDynArray;
var pTemp : pointer;
procedure CopyToStream( const InArray : TByteDynArray ; outStream :
TStream );

procedure FindFiles(FilesList: TStringList; StartDir, FileMask: string);

function ProgramStartMesaj: string;

function DoktorlarFilter(TumDoktor : string = 'H')  : string;
procedure SistemAyarlariniDuzenle;

function HastaKayitUniqKontrol(DosyaNo,TC,sirketKod : string) : string;

procedure TetkikIlacTedaviYazdir(_dosyaNo_ , _Tarih_ : string);


procedure ExceldenLabSonucYukle(t1,t2 : String ; progres : TcxProgressBar ; txtLog : Tcxmemo);

function ComboYil(yil : integer = 2020 ; index : integer = 10) : TStringList;

procedure MemoBosSatirSil(Memo : TcxMemo);

function MD5(const fileName : string) : string;
function PDKSCihazlar : string;
function GibFaturaNoUret(sirketKod : string ; tarih : string ; faturaId : string = '-1') : string;
function GetDosOutput(CommandLine: string; Work: string = 'C:\'): string;
function ArrayListeSecimlerToSTR(list : ArrayListeSecimler) : string;


const
//  LIB_DLL = 'D:\Projeler\VS\c#\EFatura\EFaturaDLL\ClassLibrary1\bin\Debug\EFaturaDLL.dll';
 // NoktaDll = 'D:\Projeler\VS\c#\ListeDLL_Cades\ListeDLL\bin\x86\Debug\NoktaDLL.dll';
  NoktaDll = 'NoktaDLL.dll';
  LIB_DLL = 'EFaturaDLL.dll';
  RecetemDLL = 'C:\NoktaV3\Recetem\Recetem.dll';

  _YTL_ = 'YTL';
  _OTL_ = 'TRL';
  harfler = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGGHIJKLMNOPQRSTUVWXYZXW';
  SirketC = clMoneyGreen;
  SirketRC = clSilver;
  SirketR = clGray;
  _Modul = '';
  htCaptionBtn = htSizeLast + 1;
  WherePCSettingsKey = 'Software\MicroSoft\Windows\CurrentVersion\Explorer';
  WhereIESettingsKey = 'Software\MicroSoft\Internet Explorer';
  WhereControlPanel = 'Control Panel';
  IEPageSetup = 'PageSetup';

  SettingsSection = 'Shell Folders';
  Key_Personal = 'Personal';
  _SqlSelect_ = 'Select %s from %s where %s';
  {_insertPersonel_ = 'sp_YeniPersonelHastaKarti ' +
                     '@SirketKod = %0:s,' +
                     '@TCKIMLIKNO = %1:s,'+
                     '@HASTAADI = %2:s,'+
                     '@HASTASOYADI = %3:s,'+
                     '@CINSIYETI = %4:s,'+
                     '@MEDENI = %5:s,'+
                     '@BABAADI = %6:s,'+
                     '@ANAADI = %7:s,'+
                     '@EV_SEHIR = %8:s,'+
                     '@EV_TEL1 = %9:s,'+
                     '@EV_TEL2 = %10:s,'+
                 //    '@EMAIL = %s,'+
                     '@DOGUMYERI = %11:s,'+
                     '@DOGUMTARIHI = %12:s,'+
                     '@UYRUGU = %13:s,'+
                     '@baslangic = %14:s,'+
                     '@kanGrubu = %15:s,'+
                     '@USER_ID = %16:s,'+
                     '@Aktif = %17:s';{}


  // Image Stretch Tipleri
  stAyniKalsin = 0;
  stBuyukseKucult = 1;
  stKucukseBuyult = 2;
  stHerDurumdaStretch = 3;


var
  strList: string;
  AktifRenk: tcolor = clYellow;
  ZorunluRenk: tcolor = clSkyBlue;
  OpsiyonRenk: tcolor = clWhite;
  KapaliRenk: tcolor = clSilver;
  _pnlUst: tcolor = clBtnFace;
  _pnlBaslik: tcolor = clSilver; // clBlack;
  _pnlBaslikYazi: tcolor = clBlack; // clWhite;
  _pnlOnay: tcolor = $00BA7E5A; // 12222042; //$00A56E3A;//clBackground;
  _pnlOnayYazi: tcolor = clWhite;
  gridrenk: tcolor = clBtnFace;
  gridYaziRenk: tcolor = clBlack;
  gridAktif: tcolor = clSkyBlue; // 12222042;//$00A56E3A;//clBackground;
  gridAktifYaziRenk: tcolor = clRed;
  sec: integer;
  DataForMuavin: string;
  MAX_NUM_LENGTH: integer;
  _kurumKod: integer;
  _username, _sifre: string;
  AramaText: string;
  v,sayfa : Variant;



implementation

uses message,AnaUnit,message_y,popupForm,rapor,TedaviKart,Son6AylikTetkikSonuc,DestekSorunBildir,
             HastaRecete,sifreDegis,HastaTetkikEkle,GirisUnit,SMS,LisansUzat,Update_G, DBGrids,
             UyumSoftPortal,NThermo, TransUtils;

function findMethod(dllHandle : Cardinal; methodname : string) : FARPROC;
begin
 Result := GetProcAddress(dllHandle,pchar(methodname));
end;


function GetDosOutput(CommandLine: string; Work: string = 'C:\'): string;
var
  SecAtrrs: TSecurityAttributes;
  StartupInfo: TStartupInfo;
  ProcessInfo: TProcessInformation;
  StdOutPipeRead, StdOutPipeWrite: THandle;
  WasOK: Boolean;
  pCommandLine: array[0..255] of AnsiChar;
  BytesRead: Cardinal;
  WorkDir: string;
  Handle: Boolean;
begin
  Result := '';
  with SecAtrrs do begin
    nLength := SizeOf(SecAtrrs);
    bInheritHandle := True;
    lpSecurityDescriptor := nil;
  end;
  CreatePipe(StdOutPipeRead, StdOutPipeWrite, @SecAtrrs, 0);
  try
    with StartupInfo do
    begin
      FillChar(StartupInfo, SizeOf(StartupInfo), 0);
      cb := SizeOf(StartupInfo);
      dwFlags := STARTF_USESHOWWINDOW or STARTF_USESTDHANDLES;
      wShowWindow := SW_HIDE;
      hStdInput := GetStdHandle(STD_INPUT_HANDLE); // don't redirect stdin
      hStdOutput := StdOutPipeWrite;
      hStdError := StdOutPipeWrite;
    end;
    WorkDir := Work;
    Handle := CreateProcess(nil, PChar('cmd.exe /C ' + CommandLine),
                            nil, nil, True, 0, nil,
                            PChar(WorkDir), StartupInfo, ProcessInfo);
    CloseHandle(StdOutPipeWrite);
    if Handle then
      try
        repeat
          WasOK := windows.ReadFile(StdOutPipeRead, pCommandLine, 255, BytesRead, nil);
          if BytesRead > 0 then
          begin
            pCommandLine[BytesRead] := #0;
            Result := Result + pCommandLine;
          end;
        until not WasOK or (BytesRead = 0);
        WaitForSingleObject(ProcessInfo.hProcess, INFINITE);
      finally
        CloseHandle(ProcessInfo.hThread);
        CloseHandle(ProcessInfo.hProcess);
      end;
  finally
    CloseHandle(StdOutPipeRead);
  end;
end;

function GibFaturaNoUret(sirketKod : string ; tarih : string ; faturaId : string = '-1') : string;
var
  sql : string;
begin
  sql := 'exec sp_FaturaNoUret ' + faturaId + ',' + QuotedStr(tarih) + ',' + QuotedStr(sirketKod) ;

  GibFaturaNoUret := datalar.QuerySelect(sql).FieldByName('faturaNo').AsString;
end;


function ArrayListeSecimlerToSTR(list : ArrayListeSecimler) : string;
var
 str : string;
 ss :ListeSecimler;
begin
     for ss in list do
     begin
         str := ifThen(str='',str+'',str+',') + ss.kolon1;
     end;
     ArrayListeSecimlerToSTR := str;
end;


function SendMesajGonderWhatsapp(token ,tel,mesaj : string) : string;
var
  SendMesaj : TSendWhatsappText;
  dllHandle: Cardinal;
  _sonuc_ : pwidechar;
  _mesaj_ : pwidechar;
begin
  _mesaj_ := '';
  SendMesajGonderWhatsapp := '';
  dllHandle := LoadLibrary(NoktaDll);
  try
    if dllHandle = 0 then exit;
    @SendMesaj := findMethod(dllHandle, 'Mhatshapp');

    if addr(SendMesaj) <> nil
    then begin
      _mesaj_ := pwidechar(ifThen(datalar.WhatsappMesajTagEkle = 'Evet',
      'G�nderen :' + #13#10 + ' *'+datalar.AktifSirketAdi+'* ' + #13#10,'') + mesaj);

      SendMesaj(token,tel,_mesaj_,_sonuc_);

    SendMesajGonderWhatsapp := _sonuc_;
    end
    else

    if not Assigned(SendMesaj)
    then
      raise Exception.Create(LIB_DLL + ' i�ersinde Mhatshapp Method bulunamad�!');
  finally
    FreeLibrary(dllHandle);
  end;
end;



function MD5(const fileName : string) : string;
 var
   idmd5 : TIdHashMessageDigest5;
   fs : TFileStream;
   hash : T4x4LongWordRecord;

 begin
   idmd5 := TIdHashMessageDigest5.Create;
   //fs := TFileStream.Create(fileName, fmOpenRead OR fmShareDenyWrite) ;
   try
     result := idmd5.HashStringAsHex ( fileName );

     //idmd5.HashString(fileName);// AsHex(idmd5.HashValue(fs)) ;
   finally
   //  fs.Free;
     idmd5.Free;
   end;
 end;

function PDKSCihazlar : string;
begin
   PDKSCihazlar := datalar.QuerySelect('select  cihazIP from PDKS_Cihazlar').FieldByName('cihazIP').AsString;
end;



procedure MemoBosSatirSil(Memo : TcxMemo);
var
 x : integer;
begin
    for x := 0 to Memo.Lines.Count - 1
     do begin
          Memo.Lines[x] :=
           StringReplace(Memo.Lines[x],#13#10,'',[rfReplaceAll]);
          if
           TrimRight(Memo.Lines[x]) = ''
          Then
            Memo.Lines.Delete(x);
     end;
end;


function ComboYil(yil : integer = 2020 ; index : integer = 10) : TStringList;
var
 I : integer;
 List : TStringList;
begin
  List := TStringList.Create;
  try
    inc(yil);
    for I := 0 to index do
    begin
     yil := yil - 1;
     List.Add(intTostr(yil));
    end;
    ComboYil := List;
  finally
  end;
end;



function HastaKayitUniqKontrol(DosyaNo,TC,sirketKod : string) : string;
var
  sql : string;
begin
    sql := 'exec sp_HastaUniqKontrol ' + QuotedStr(DosyaNo) + ',' +
                                         QuotedStr(TC) + ',' +
                                         QuotedStr(sirketKod);

    HastaKayitUniqKontrol := datalar.QuerySelect(sql).Fields[0].AsString;


end;


procedure SistemAyarlariniDuzenle;
var
 Locale  : LongInt;
 PResult : Pointer;
 dwData : Dword;
begin
  Try
      FormatSettings.CurrencyFormat := 3;
      FormatSettings.NegCurrFormat := 8;
      FormatSettings.ThousandSeparator := ',';
      FormatSettings.DecimalSeparator := '.';
      FormatSettings.CurrencyDecimals := 2;
      FormatSettings.DateSeparator := '.';
      FormatSettings.ShortDateFormat := 'dd.MM.yyyy';
      FormatSettings.TimeSeparator:= ':';
      FormatSettings.ShortTimeFormat := 'hh:mm';
      Locale := 1055;
      SetLocaleInfo(Locale, LOCALE_SSHORTDATE,        PChar(FormatSettings.ShortDateFormat));
      SetLocaleInfo(Locale, LOCALE_SDECIMAL,          PChar('.'+chr(0)));
      SetLocaleInfo(Locale, LOCALE_STHOUSAND,         PChar(','+chr(0)));
      SetLocaleInfo(Locale, LOCALE_SMONDECIMALSEP,    PChar('.'+chr(0)));
      SetLocaleInfo(Locale, LOCALE_SMONTHOUSANDSEP,   PChar(','+chr(0)));
      SetLocaleInfo(Locale, LOCALE_ICURRENCY,        PChar('2'+chr(0)));
      SetLocaleInfo(Locale, LOCALE_INEGCURR,          PChar('8'+chr(0)));

      SendMessageCallback(HWND_BROADCAST,WM_WININICHANGE,0,0,@PResult,dwData);

  except on e : exception do
     ;
{
   on E: Exception do
   begin
     Raise(E);
   end;
}
  End;
end;



function DoktorlarFilter(TumDoktor : string = 'H') : string;
begin
    if
    TumDoktor = 'E'
    Then
       DoktorlarFilter := ' replace(isnull(sirketKods,sirketKod),''0'','''') like ' + QuotedStr('%'+StringReplace(datalar.AktifSirket,'0','',[rfReplaceAll])+'%')  +
                       '  and durum = ''Aktif'''
    else
      DoktorlarFilter := ' replace(isnull(sirketKods,sirketKod),''0'','''') like ' + QuotedStr('%'+StringReplace(datalar.AktifSirket,'0','',[rfReplaceAll])+'%')  +
                       '  and durum = ''Aktif'' ' + ifThen(datalar.doktorKodu <> '',' and kod = ' + QuotedStr(datalar.doktorKodu),'');
end;




function ProgramStartMesaj: string;
var
  sql, _mesaj, dosya: string;
  _sonSQLID: integer;
begin

  if not DirectoryExists('C:\NoktaV3\ProgramStartMesaj')
  then
    MkDir('C:\NoktaV3\ProgramStartMesaj');


  Download('https://www.noktayazilim.net/Mesaj/mesaj_' + tarihal(date()) + '.txt','mavinokta','nokta53Nokta','C:\NoktaV3\ProgramStartMesaj\mesaj_' + tarihal(date()) + '.txt');

  _mesaj := FileToString('C:\NoktaV3\ProgramStartMesaj\mesaj_' + tarihal(date()) + '.txt');

  if pos('404',_mesaj) > 0 then _mesaj := '';

//  dosya := 'http://www.noktayazilim.net/mesaj_' + tarihal(date()) + '.txt';
 // datalar.http2.ConnectTimeout := 10000;

    if _mesaj <> '' then
    begin
      Result := _mesaj;
    end
    else Result := '';
end;




function ByteArrayToString(const ByteArray: TByteDynArray): string;
var
  MStream: TMemoryStream;
begin
  MStream := TMemoryStream.Create;
  CopyToStream(ByteArray, MStream);
  MStream.Position := 0;
  try
    MStream.Read(result,MStream.Size);
  finally
    MStream.Free;
  end;
end;


procedure ByteArrayToFile( const ByteArray : TByteDynArray;
                            const FileName : string );
var Count : integer;
    F : FIle of Byte;
    pTemp : Pointer;
begin
  AssignFile( F, FileName );
  Rewrite(F);
  try
    Count := Length( ByteArray );
    pTemp := @ByteArray[0];
    BlockWrite(F, pTemp^, Count );
  finally
    CloseFile( F );
  end;
end;


function ByteArrayFromStream( inStream : TMemoryStream ) : TByteDynArray;
var pTemp : pointer;
begin
  SetLength(Result, inStream.Size );
  pTemp := @Result[0];
  inStream.Position := 0;
  inStream.Read(pTemp^, inStream.Size);
end;

procedure CopyToStream( const InArray : TByteDynArray ; outStream :
TStream );
var pTemp : Pointer;
begin
  pTemp := @InArray[0];
  outStream.Write( pTemp^, Length(InArray));
end;


procedure FindFiles(FilesList: TStringList; StartDir, FileMask: string);
var
  SR: TSearchRec;
  DirList: TStringList;
  IsFound: Boolean;
  i: integer;
begin
  if StartDir[length(StartDir)] <> '\' then
    StartDir := StartDir + '\';

  { Build a list of the files in directory StartDir
     (not the directories!)                         }

  IsFound :=
    FindFirst(StartDir+FileMask, faAnyFile-faDirectory, SR) = 0;
  while IsFound do begin
    FilesList.Add(StartDir + SR.Name);
    IsFound := FindNext(SR) = 0;
  end;
  FindClose(SR);

  // Build a list of subdirectories
  DirList := TStringList.Create;
  IsFound := FindFirst(StartDir+'*.*', faAnyFile, SR) = 0;
  while IsFound do begin
    if ((SR.Attr and faDirectory) <> 0) and
         (SR.Name[1] <> '.') then
      DirList.Add(StartDir + SR.Name);
    IsFound := FindNext(SR) = 0;
  end;
  FindClose(SR);

  // Scan the list of subdirectories
  for i := 0 to DirList.Count - 1 do
    FindFiles(FilesList, DirList[i], FileMask);

  DirList.Free;
end;

function SplitString(const aSeparator, aString: String; aMax: Integer = 0): TArrayOfString;
  var
    i, strt, cnt: Integer;
    sepLen: Integer;

    procedure AddString(aEnd: Integer = -1);
    var
      endPos: Integer;
    begin
      if (aEnd = -1) then
        endPos := i
      else
        endPos := aEnd + 1;

      if (strt < endPos) then
        result[cnt] := Copy(aString, strt, endPos - strt)
      else
        result[cnt] := '';

      Inc(cnt);
    end;

  begin
    if (aString = '') or (aMax < 0) then
    begin
      SetLength(result, 0);
      EXIT;
    end;

    if (aSeparator = '') then
    begin
      SetLength(result, 1);
      result[0] := aString;
      EXIT;
    end;

    sepLen := Length(aSeparator);
    SetLength(result, (Length(aString) div sepLen) + 1);

    i     := 1;
    strt  := i;
    cnt   := 0;
    while (i <= (Length(aString)- sepLen + 1)) do
    begin
      if (aString[i] = aSeparator[1]) then
        if (Copy(aString, i, sepLen) = aSeparator) then
        begin
          AddString;

          if (cnt = aMax) then
          begin
            SetLength(result, cnt);
            EXIT;
          end;

          Inc(i, sepLen - 1);
          strt := i + 1;
        end;

      Inc(i);
    end;

    AddString(Length(aString));

    SetLength(result, cnt);
  end;



function firmaKodDecode(code : string) : string;
Const
  a = 'YlhadWEzUT0='+#29;
  b = #29+'V1dWTg==';
var
 _code_ : string;
begin
     _code_ :=  DecodeString(code);
     _code_ := StringReplace(_code_,a,'',[rfReplaceAll]);
     _code_ := StringReplace(_code_,b,'',[rfReplaceAll]);
    // ExtractStrings(['|'], [], PChar(txtOrd.Text),List);
     firmaKodDecode := DecodeString(DecodeString(_code_));
end;




procedure EkRTFBlobToinFile(Templates : TDataset ; Field : string ; var EkRtf1 : TEkRtf);
var BF:TBlobField;
    BS:TStream;
    TemplateBuffer : ByteArray;
    Ln:longint;
begin
    BF := TBlobField(Templates.FieldByName(Field));
    BS := Templates.CreateBlobStream(BF,bmRead);
    try
      Ln := BF.BlobSize;
      SetLength(TemplateBuffer, Ln);
      BS.Read(TemplateBuffer[0],Ln);
      EkRtf1.SetTemplateBuffer(TemplateBuffer,Ln);
    finally
      BS.Free;
    end;
end;


function Recetem(jsonText : string)  : string;
var
  fatura : TRecetem;
  dllHandle  : Cardinal;
  ss : PWideChar;
  _exe : PAnsiChar;
begin

    try
     _exe :=  PAnsiChar(AnsiString('C:\NoktaV3\Recetem\Recetem.exe ' + jsonText + ' 1 G'));
     WinExec(_exe,SW_SHOW);
    // datalar.KillTask('Diyaliz.exe');
    except on e : exception do
      begin
        ShowMessageSkin(e.Message,'','','info');
      end;
    end;

(*

  dllHandle := LoadLibrary(RecetemDLL);
  try
    if dllHandle = 0 then exit;

    @fatura := findMethod(dllHandle, 'RecetemToken');
    if addr(fatura) <> nil then
    fatura(PWideChar(jsonText),ss);

    Result := ss;

    if not Assigned(fatura) then
      raise Exception.Create(RecetemDLL + ' i�ersinde RecetemToken bulunamad�!');
  finally
    FreeLibrary(dllHandle);
   // FreeLibraryAndExitThread(dllHandle,0);
  end;
  *)
end;

function EArsivFaturalarOku(t1,t2 : string)  : string;
var
  fatura : TFaturalariOku;
  dllHandle: Cardinal;
  TesisKodu: integer;
  faturaXML,doktorKullanici,doktorsifre,pin,url,cardType: string;
  doktorTc : string;
  ss : PWideChar;
  sql : string;
begin

  dllHandle := LoadLibrary(LIB_DLL);
  try
    if dllHandle = 0 then exit;

    @fatura := findMethod(dllHandle, 'EArsivFaturalariOku');
    if addr(fatura) <> nil then
    fatura(PWideChar(datalar.efaturaUsername),PWideChar(datalar.efaturaSifre),ss,
           PWideChar(datalar.eFaturaUrl),PWideChar(t1),PWideChar(t2));
  //  ShowMessage(ss,'','','info');
    Result := ss;

    if not Assigned(fatura) then
      raise Exception.Create(LIB_DLL + ' i�ersinde EArsivFaturalariOku bulunamad�!');
  finally
    FreeLibrary(dllHandle);
  end;
end;


procedure TetkikIlacTedaviYazdir(_dosyaNo_ , _Tarih_ : string);
var
  sql : string;
 // ado,ado0,ado00,ado1,ado2,ado3,ado4,ado5,ado6,ado7,ado8,ado9,ado10,ado11,ado12 : TADOQuery;
  Datasets : TDataSetKadir;
begin
      sql := 'select * from hastakart where dosyaNo = ' + QuotedStr(_dosyaNo_);
      Datasets.Dataset0 := datalar.QuerySelect(sql);

      sql := 'exec sp_HastaTetkikTakipPIVOT ' + QuotedStr(_dosyaNo_) + ',' + QuotedStr(_Tarih_) + ',@f=-1,@sirketKod = ' + QuotedStr(datalar.AktifSirket) ;
      Datasets.Dataset1 := datalar.QuerySelect(sql);


      sql := 'exec sp_HastaIlacTedavi ' + QuotedStr(_dosyaNo_) + ',' + QuotedStr(_tarih_) + ',@f=1,@ay=' + QuotedStr('OCAK');
      Datasets.Dataset00 := datalar.QuerySelect(sql);

      sql := 'exec sp_HastaIlacTedavi ' + QuotedStr(_dosyaNo_) + ',' + QuotedStr(_tarih_) + ',@f=1,@ay=' + QuotedStr('SUBAT');
      Datasets.Dataset2 := datalar.QuerySelect(sql);

      sql := 'exec sp_HastaIlacTedavi ' + QuotedStr(_dosyaNo_) + ',' + QuotedStr(_tarih_) + ',@f=1,@ay=' + QuotedStr('MART');
      Datasets.Dataset3 := datalar.QuerySelect(sql);

      sql := 'exec sp_HastaIlacTedavi ' + QuotedStr(_dosyaNo_) + ',' + QuotedStr(_tarih_) + ',@f=1,@ay=' + QuotedStr('NISAN');
      Datasets.Dataset4 := datalar.QuerySelect(sql);

      sql := 'exec sp_HastaIlacTedavi ' + QuotedStr(_dosyaNo_) + ',' + QuotedStr(_tarih_) + ',@f=1,@ay=' + QuotedStr('MAYIS');
      Datasets.Dataset5 := datalar.QuerySelect(sql);

      sql := 'exec sp_HastaIlacTedavi ' + QuotedStr(_dosyaNo_) + ',' + QuotedStr(_tarih_) + ',@f=1,@ay=' + QuotedStr('HAZIRAN');
      Datasets.Dataset6 := datalar.QuerySelect(sql);

      sql := 'exec sp_HastaIlacTedavi ' + QuotedStr(_dosyaNo_) + ',' + QuotedStr(_tarih_) + ',@f=1,@ay=' + QuotedStr('TEMMUZ');
      Datasets.Dataset7 := datalar.QuerySelect(sql);

      sql := 'exec sp_HastaIlacTedavi ' + QuotedStr(_dosyaNo_) + ',' + QuotedStr(_tarih_) + ',@f=1,@ay=' + QuotedStr('AGUSTOS');
      Datasets.Dataset8 := datalar.QuerySelect(sql);

      sql := 'exec sp_HastaIlacTedavi ' + QuotedStr(_dosyaNo_) + ',' + QuotedStr(_tarih_) + ',@f=1,@ay=' + QuotedStr('EYLUL');
      Datasets.Dataset9 := datalar.QuerySelect(sql);

      sql := 'exec sp_HastaIlacTedavi ' + QuotedStr(_dosyaNo_) + ',' + QuotedStr(_tarih_) + ',@f=1,@ay=' + QuotedStr('EKIM');
      Datasets.Dataset10 := datalar.QuerySelect(sql);

      sql := 'exec sp_HastaIlacTedavi ' + QuotedStr(_dosyaNo_) + ',' + QuotedStr(_tarih_) + ',@f=1,@ay=' + QuotedStr('KASIM');
      Datasets.Dataset11 := datalar.QuerySelect(sql);

      sql := 'exec sp_HastaIlacTedavi ' + QuotedStr(_dosyaNo_) + ',' + QuotedStr(_tarih_) + ',@f=1,@ay=' + QuotedStr('ARALIK');
      Datasets.Dataset12 := datalar.QuerySelect(sql);

      PrintYap('202','Hasta Tetkik �la� Formu',inttostr(TagfrmHastaIlacTedavi),Datasets);

end;


function EtkinMaddeKodToAdi(kod : string) : string;
var
  sql: string;
  ado: TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  ado.Connection := datalar.ADOConnection2;
  try
    sql :=
      'select ETKIN_MADDE_ADI from EtkinMaddeler where ETKIN_MADDE_KODU = ' + QuotedStr(kod);
    datalar.QuerySelect(ado, sql);
    Result := ado.Fields[0].AsString;
  finally
   ado.Free;
  end;
end;


procedure FotoEkle(islem : string = 'Ekle' ; dosyaNo : string = '' ; Foto : TcxImage = nil);
var
 Fo : TFileOpenDialog;
 filename,dosyaTip : string;
 jp : TJPEGImage;
 image : TcxImage;
begin
  datalar.ADO_Foto.SQL.Text := Format(FotoTable,[#39+dosyaNo+#39]);
  datalar.ADO_FOTO.Open;

  if not datalar.ADO_FOTO.eof
  then
    datalar.ADO_FOTO.Edit
  else
  begin
    datalar.ADO_FOTO.Append;
    datalar.ADO_FOTO.FieldByName('dosyaNo').AsString := dosyaNo;
    datalar.ADO_FOTO.FieldByName('tip').AsString := 'H';
  end;

  if Assigned(Foto)
  then
    if islem = 'Sil'
    then begin
      Foto.Clear;
      datalar.ADO_FOTO.FieldByName('Foto').value := Null;
      datalar.ADO_FOTO.Post;
    end
    else
    if islem = 'Ekle'
    then begin
        Fo := TFileOpenDialog.Create(nil);
        try
          if not fo.Execute then Exit;
          filename := fo.FileName;
          dosyaTip := ExtractFileExt(filename);
          dosyaTip := StringReplace(dosyaTip,'.','',[rfReplaceAll]);
        finally
          fo.Free;
        end;

        if (dosyaTip = 'JPG') or
           (dosyaTip = 'jpg') or
           (dosyaTip = 'jpeg') or
           (dosyaTip = 'JPEG')
        then begin
            image := TcxImage.Create(nil);
            try
              image.Picture.LoadFromFile(filename);
              StretchImage(image,stHerDurumdaStretch,110,220);
              Foto.Picture := image.Picture;
              //Foto.Picture.LoadFromFile(filename);
              jp := TJpegimage.Create;
              try
                jp.Assign(Foto.Picture.Bitmap);
                jp.CompressionQuality := 80;
                jp.Compress;
               // jp.SaveToFile('C:\noktav3\xx.jpg');
                datalar.ADO_FOTO.FieldByName('Foto').Assign(jp);
                datalar.ADO_FOTO.Post;
              finally
                jp.Free;
              end;
            finally
              image.free;
            end;
        end
        else begin
         ShowMessageSkin('Sadece JPG formatlar� Y�klenebilir','','','info');
         datalar.ADO_FOTO.Cancel;
        end;
    end;
end;


function RaporIslemGonder(RaporID,islem,etkenID,teshisID,ack : string) : string;
var
  imzala : TRaporImzala;
  dllHandle: Cardinal;
  TesisKodu: integer;
  rapor,doktorKullanici,doktorsifre,pin,url,cardType : string;
  doktorTc : string;
  ss : PWideChar;
  sql , yol , yol1 : string;
  SelectAdo : TADOQuery;
  _raporId_ : integer;
begin
  RaporIslemGonder := '';

  url := raporIlacURL;
  sql := 'sp_HastaRaporIslemToXML ' + RaporID + ',' +
                                      QuotedStr(islem) + ',' +
                                      QuotedStr(etkenID) + ',' +
                                      QuotedStr(teshisID) + ',' +
                                      QuotedStr(ack) + ',' +
                                      QuotedStr(datalar.doktorKodu);

  SelectAdo := TADOQuery.Create(nil);
  SelectAdo.Connection := datalar.ADOConnection2;
  datalar.QuerySelect(SelectAdo,sql);

  try
    ss := 'Yok';
    _raporId_ := strToint(RaporID);
    rapor := (SelectAdo.FieldByName('rapor').AsString);
    doktorKullanici := (SelectAdo.FieldByName('doktorKullanici').AsString);
    doktorsifre :=  (SelectAdo.FieldByName('doktorsifre').AsString);
    pin :=  (SelectAdo.FieldByName('pin').AsString);
    doktorTc :=  (SelectAdo.FieldByName('doktorTc').AsString);
    TesisKodu :=  (datalar._kurumKod);
    cardType :=  SelectAdo.FieldByName('cardType').AsString;


    try
      dllHandle := LoadLibrary(NoktaDll);
      try
        if dllHandle = 0 then exit;

        @imzala := findMethod(dllHandle, 'RaporIslemGonder');
        if addr(imzala) <> nil then
        imzala(_raporId_,PWidechar(rapor),PWidechar(doktorKullanici),PWidechar(doktorsifre),PWidechar(pin),PWidechar(doktorTc),TesisKodu,ss,url,PWidechar(cardType));
        RaporIslemGonder := ss;

        if not Assigned(imzala) then
          raise Exception.Create(NoktaDll + ' i�ersinde RaporIslemGonder bulunamad�!');

      finally
        FreeLibrary(dllHandle);
      end;
    except on e : exception  do
        begin
          RaporIslemGonder := e.Message;
        end;
    end;

  finally
     SelectAdo.free;
  end;
end;


function SMSGonder(tel,mesaj : string) : string;
var
  SendMesaj : TSendMesaj;
  dllHandle: Cardinal;
  _sonuc_ : string;
begin
  SMSGonder := '';
  dllHandle := LoadLibrary(NoktaDll);
  try
    if dllHandle = 0 then exit;
    @SendMesaj := findMethod(dllHandle, 'SmsGonder');

    if addr(SendMesaj) <> nil
    then
      SendMesaj(datalar.SMSHesapUser,datalar.SMSHesapSifre,datalar.SMSHesapFrom,tel,mesaj,_sonuc_);

    SMSGonder := _sonuc_;

    if not Assigned(SendMesaj)
    then
      raise Exception.Create(NoktaDll + ' i�ersinde SmsGonder Method bulunamad�!');
  finally
    FreeLibrary(dllHandle);
  end;
end;


procedure SeansDuzenle(id : integer);
var
  satir,durum : integer;
  Tarih , Talep,sql : string;
  Year, Month, Day: Word;
  ado : TADOQuery;
begin

  ado := datalar.QuerySelect('exec sp_HastaSeans @sirano = ' + intToStr(id));
  try
    Datalar.SeansBilgi.dosyaNo := ado.FieldByName('dosyaNo').AsString;
    Datalar.SeansBilgi.gelisNo :=  ado.FieldByName('gelisNo').AsString;
   // Datalar.SeansBilgi.hizmetSunucuRefNo := Liste.DataController.Dataset.FieldByName('siraNo').AsString;
    Datalar.SeansBilgi.hizmetSunucuRefNo := ado.FieldByName('islemRefNo').AsString;
    Datalar.SeansBilgi.islemTarihi := ado.FieldByName('Tarih').AsString;
    Datalar.SeansBilgi.doktor := ado.FieldByName('Doktor').AsString;
    Datalar.SeansBilgi.hemsire := ado.FieldByName('hemsire').AsString;
    Datalar.SeansBilgi.raporTakipNo := ado.FieldByName('raporTakipNo').AsString;
    Datalar.SeansBilgi.DiyalizorCinsi := ado.FieldByName('DiyalizorCinsi').AsString;
    Datalar.SeansBilgi.DiyalizorTipi := ado.FieldByName('DiyalizorTipi').AsString;
    Datalar.SeansBilgi.Diyalizor := ado.FieldByName('DIYALIZOR').AsString;
    Datalar.SeansBilgi.Diyalizat := ado.FieldByName('D').AsString;
    Datalar.SeansBilgi.HeparinTip := ado.FieldByName('HEPARINTIP').AsString;
    Datalar.SeansBilgi.Heparin := ado.FieldByName('HEPARIN').AsString;
    Datalar.SeansBilgi.HeparinUyg := ado.FieldByName('HEPARINUYG').AsString;
    Datalar.SeansBilgi.YA := ado.FieldByName('YA').AsString;
    Datalar.SeansBilgi.APH := ado.FieldByName('APH').AsString;
    Datalar.SeansBilgi.MakinaNo := ado.FieldByName('MakinaNo').AsString;
    Datalar.SeansBilgi.Seans := ado.FieldByName('Seans').AsString;
    Datalar.SeansBilgi.SeansSure := ado.FieldByName('DIYALIZSURESI').AsString;
    Datalar.SeansBilgi.KanAlimi := ado.FieldByName('KanAlindimi').AsInteger;
    Datalar.SeansBilgi.GirisYolu := ado.FieldByName('GIRISYOLU').AsString;
    Datalar.SeansBilgi.HCOOO := ado.FieldByName('HCOOO').AsString;
    Datalar.SeansBilgi.Na := ado.FieldByName('Na').AsString;
    Datalar.SeansBilgi.Igne := ado.FieldByName('Igne').AsString;
    Datalar.SeansBilgi.IgneV := ado.FieldByName('IgneV').AsString;
    Datalar.SeansBilgi.Kilo := ado.FieldByName('IdealKilo').AsString;
    Datalar.SeansBilgi.girisKilo := ado.FieldByName('GIRISKILO').AsString;
    Datalar.SeansBilgi.cikisKilo := ado.FieldByName('CIKISKILO').AsString;
    Datalar.SeansBilgi.OncekiCikisKilo := ado.FieldByName('OncekiCikisKilo').AsString;
    Datalar.SeansBilgi.CekilecekSivi := ado.FieldByName('CEKILECEKSIVI').AsString;
    Datalar.SeansBilgi.VerilecekSivi := ado.FieldByName('verilecekSivi').AsString;
    Datalar.SeansBilgi.AldigiKilo := ado.FieldByName('aldigiKilo').AsString;
    Datalar.SeansBilgi.UF := ado.FieldByName('UF').AsString;
    Datalar.SeansBilgi.Durum := ado.FieldByName('Durum').AsInteger;
    Datalar.SeansBilgi.hemsireNot := ado.FieldByName('hekimGozlemDdiger').AsString;
    Datalar.SeansBilgi.islemSiraNo := ado.FieldByName('islemSiraNo').AsString;
    Datalar.SeansBilgi.yas := ado.FieldByName('YAs').AsInteger;

    datalar.SeansBilgi.SeansCaption := ado.FieldByName('hastaAdi').AsString +
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
                   ' where siraNo = ' + Datalar.SeansBilgi.hizmetSunucuRefNo +

                   ' update Hareketler set raporTakipNo = ' + QuotedStr(Datalar.SeansBilgi.raporTakipNo) +
                   ' where dosyaNo = ' + QuotedStr(Datalar.SeansBilgi.dosyaNo) +
                   ' and gelisNo = ' + Datalar.SeansBilgi.gelisNo + ' and Durum = 0 and Tip = ''S''';

            datalar.QueryExec(sql);
         end;
      End;
    end;
  finally
    ado.Free;
  end;
end;



function SaatRangeToSeans(Saat : string) : string;
begin
   SaatRangeToSeans := datalar.QuerySelect('select seansNo from SeansZaman where ' + QuotedStr(Saat) + ' between seansBSaati and seansBitis ').FieldByName('seansNo').AsString;
end;

procedure SeansKapat(islemRefNo : integer ; uygulayan : string);
var
  ado : TADOQuery;
  SeansKapaTC ,KapatField : string;
begin
     SeansKapaTC := ImzaileSeansKapat(islemRefNo,uygulayan);

     if SeansKapaTC <> datalar.userTC
     then begin
       ShowMessageSkin('�mza Sahibinin TC si ile Sisteme Giren Kullan�c� TC si Uyu�muyor','','','info');
     end
     else
     if SeansKapaTC <> ''
     then begin
      try
        datalar.ADOConnection2.BeginTrans;
        try
          if uygulayan = 'doktorImza' then  KapatField := 'doktorKapat' else KapatField := 'hemsireKapat';

          datalar.QueryExec(
          'if not exists(select * from SeansKapamaOnayi where islemRefNo = ' + intTostr(islemRefNo) + ')' +
          ' begin ' +
          ' insert into SeansKapamaOnayi(islemRefNo,' +  KapatField + ') values(' + intTostr(islemRefNo)+ ',1) ' +
          ' end ' +
          ' else begin ' +
          ' update SeansKapamaOnayi set ' + KapatField + ' = 1 ' +
          ' where islemRefNo = ' + intTostr(islemRefNo) +
          ' end');

          ado := datalar.QuerySelect('select * from SeansKapamaOnayi where islemRefNo = ' + intTostr(islemRefNo));
          DokumanYukle(ado,uygulayan,'ImzalaSeansKapat_'+intTostr(islemRefNo)+'.xml',20,False);
          datalar.ADOConnection2.CommitTrans;
          ShowMessageSkin('�mzalama ��lemi Ba�ar�l�','','','info');
        except on e : Exception do
          begin
            ShowMessageSkin('�mzalama ��lemi Ba�ar�s�z',e.Message,'','info');
            datalar.ADOConnection2.RollbackTrans;
          end;
        end;
      finally
        ado.free;
      end;
     end;
end;


procedure QRYukle(Dataset : Tdataset;field : string;fielName : string;maxSize : longint = 60000000);
var
  Blob : TADOBlobStream;
  dosyaTip : string;
  dosyaBoyutu : integer;
  myFile : File of Word;
begin
    Dataset.Edit;
    try
      Blob := TADOBlobStream.Create(TBlobField(Dataset.FieldByName(field)),bmwrite);
      try
        Blob.LoadFromFile(fielName);
        Blob.Position := 0;
        TBlobField(Dataset.FieldByName(field)).LoadFromStream(Blob);
        Blob.Free;
        Dataset.Post;
      except
        Dataset.Cancel;
      end;
    except
      Dataset.Cancel;
      raise;
    end;
end;


procedure QRBarkod(Text , JpgFilename : string);
var
  QRCodeBitmap: TBitmap;
  QRCode: TDelphiZXingQRCode;
  Row, Column: Integer;
begin
  QRCodeBitmap := TBitmap.Create;
  QRCode := TDelphiZXingQRCode.Create;

  try
    QRCode.Data := Text;
    QRCode.Encoding := qrISO88591; //TQRCodeEncoding(cmbEncoding.ItemIndex);
    QRCode.QuietZone := 2;//StrToIntDef(edtQuietZone.Text, 4);
    QRCodeBitmap.SetSize(QRCode.Rows, QRCode.Columns);

    for Row := 0 to QRCode.Rows - 1 do
    begin
      for Column := 0 to QRCode.Columns - 1 do
      begin
        if (QRCode.IsBlack[Row, Column]) then
        begin
          QRCodeBitmap.Canvas.Pixels[Column, Row] := clBlack;
        end else
        begin
          QRCodeBitmap.Canvas.Pixels[Column, Row] := clWhite;
        end;
      end;
    end;
    QRCodeBitmap.SaveToFile(JpgFilename);
  finally
    QRCode.Free;
    QRCodeBitmap.Free;
  end;

end;


function receteToken(receteId : string) : string;
var
  sql : string;
  ado : TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
  //  sql := 'exec ReceteTokenParams ' + receteId;
    sql := 'exec RenkliReceteJson ' + receteId;
    DATALAR.QuerySelect(ado,sql);
    receteToken :=  ado.Fields[0].AsString;
  finally
   ado.Free;
  end;


end;


function FotoGetir( dosyaNo : string) : TcxImage;
var
  g : TGraphic;
  foto : TcxImage;
begin
   datalar.ADO_Foto.SQL.Text := Format(FotoTable,[#39+dosyaNo+#39]);
   datalar.ADO_FOTO.Open;

   g := TJpegimage.Create;
   foto := TcxImage.Create(nil);
   try
    if not datalar.ADO_FOTO.Eof
    then
      if datalar.ADO_FOTO.FieldByName('foto').AsVariant <> Null
      Then begin
        g.Assign(datalar.ADO_FOTO.FieldByName('foto'));
        foto.Picture.Assign(g);
        FotoGetir := foto;
      end
      else begin
       FOTO.Picture.Assign(nil);
       FotoGetir := foto;
      end
    else
    begin
       FOTO.Picture.Assign(nil);
       FotoGetir := foto;
    end;

   finally
     g.Free;
   end;
end;

procedure XMLGoster(filename: string);
begin
    ShellExecute(0, 'open', PChar('Chrome.exe'), PChar(filename + '.xml'),
    nil, SW_SHOWNORMAL);
end;


procedure IslemNumaralariniAl(_TakipNo : string);
var
  msg , islemSiraNo , siraNo , sql : string;
  ado : TADOQuery;
  i , j : integer;
begin
         if mrYes = ShowMessageSkin('Hizmet �slem Numaralar� D�zeltilecek Eminmisiniz ?','','','msg')
         then begin
            datalar.ADOConnection2.BeginTrans;
            try
               sql := 'update hareketler set islemSiraNo = '''' ' +
                        'from hareketler h join Hasta_gelisler g on g.dosyaNo = h.dosyaNo and g.gelisNo = h.gelisNo ' +
                        ' where g.takipNo = ' + QuotedStr(_takipNo);
               datalar.QueryExec(ado,sql);

               datalar.RxTahlilIslem.First;
               while not datalar.RxTahlilIslem.Eof do
               Begin
                   islemSiraNo := datalar.RxTahlilIslem.fieldbyname('islemSiraNo').AsString;
                   siraNo := datalar.RxTahlilIslem.fieldbyname('HizmetSunucuRefNo').AsString;
                   sql := 'update hareketler set islemSiraNo = ' + QuotedStr(islemSiraNo) +
                          ' where isnull(Eski_sirano,sirano) = ' + siraNo;
                   datalar.QueryExec(ado,sql);
                   datalar.RxTahlilIslem.Next;
               End;

              (*
               sql := 'update hareketler set islemSiraNo = '''' ' +
                        'from hareketler h join hasta_gelisler g on g.dosyaNo = h.dosyaNo and g.gelisNo = h.gelisNo  ' +
                        ' where g.takipNo = ' + QuotedStr(_takipNo) + ' and h.Tip = ''S''';
               datalar.QueryExec(ado,sql);
                *)

               datalar.RxDigerIslem.First;
               while not datalar.RxDigerIslem.Eof do
               Begin
                   islemSiraNO := datalar.RxDigerIslem.fieldbyname('islemSiraNo').AsString;
                   siraNO := datalar.RxDigerIslem.fieldbyname('HizmetSunucuRefNo').AsString;
                   sql := 'update hareketler set islemSiraNo = ' + QuotedStr(islemSiraNo) +
                          ' where isnull(Eski_sirano,sirano)  = ' + siraNO;
                   datalar.QueryExec(ado,sql);
                   datalar.RxDigerIslem.Next;
               End;

               datalar.RxMalzemeBilgisi.First;
               while not datalar.RxMalzemeBilgisi.Eof do
               Begin
                   islemSiraNO := datalar.RxMalzemeBilgisi.fieldbyname('islemSiraNo').AsString;
                   siraNO := datalar.RxMalzemeBilgisi.fieldbyname('HizmetSunucuRefNo').AsString;
                   sql := 'update hareketlerIS set islemSiraNo = ' + QuotedStr(islemSiraNo) +
                          ' where sirano  = ' + QuotedStr(StringReplace(siraNo,'MLZM','',[rfReplaceAll]));
                   datalar.QueryExec(ado,sql);
                   datalar.RxMalzemeBilgisi.Next;
               End;

               (*
               sql := 'update hareketler set islemSiraNo = '''' ' +
                        'from hareketler h join hasta_gelisler g on g.dosyaNo = h.dosyaNo and g.gelisNo = h.gelisNo ' +
                        ' where g.takipNo = ' + QuotedStr(_takipNo) + ' and Tip = ''T''';
               datalar.QueryExec(ado,sql);
                 *)

               datalar.RxTaniBilgisi.First;
               while not datalar.RxTaniBilgisi.Eof do
               Begin
                   islemSiraNO := datalar.RxTaniBilgisi.fieldbyname('islemSiraNo').AsString;
                   siraNO := datalar.RxTaniBilgisi.fieldbyname('HizmetSunucuRefNo').AsString;
                   sql := 'update hareketler set islemSiraNo = ' + QuotedStr(islemSiraNo) +
                          ' where isnull(Eski_sirano,sirano)  = ' + siraNO;
                   datalar.QueryExec(ado,sql);
                   datalar.RxTaniBilgisi.Next;
               End;

              ShowMessageSkin('��lem S�ra Numaralar� D�zeltildi','','','info');
              datalar.ADOConnection2.CommitTrans;
            except on e : exception do
              begin
               ShowMessageSkin('��lem S�ra Numaralar� D�zeltilemedi',e.Message,'','info');
               datalar.ADOConnection2.RollbackTrans;
              end;
            end;


         End;


End;


procedure TakipNoHizmetIslemSiraNo(TakipNo , Tip : string);
var
  sql : string;
  ado : TADOQuery;
  i : integer;
begin
   ado := TADOQuery.Create(nil);
   ado.Connection := datalar.ADOConnection2;
   try
     sql := 'select islemSiraNo from hareketler h ' +
            ' join Hasta_gelisler g on g.dosyaNo = h.dosyaNo and g.gelisNo = h.gelisNo ' +
            ' where g.TakipNo = ' + QuotedStr(TakipNo) + ' and Tip = ' + QuotedStr(Tip) +
            ' and isnull(islemSiraNo,'''') <> ''''' ;
     datalar.QuerySelect(ado,sql);
     setlength(datalar.islemSiralari,ado.RecordCount);
     i := 0;
     while not ado.Eof do
     begin
       datalar.islemSiralari[i] := ado.Fields[0].AsString;
       inc(i);
       ado.Next;
     end;
   finally
     ado.free;
   end;

end;

procedure TakipNoTetkikIslemSiraNo(TakipNo : string);
var
  sql : string;
  ado : TADOQuery;
  i : integer;
begin
   ado := TADOQuery.Create(nil);
   ado.Connection := datalar.ADOConnection2;
   try
     sql := 'select islemSiraNo from hareketler h ' +
            ' join gelisler g on g.dosyaNo = h.dosyaNo and g.gelisNo = h.gelisNo ' +
            ' where g.Tak�pNo = ' + QuotedStr(TakipNo) + ' and Tip = ''L''' +
            ' and isnull(islemSiraNo,'''') <> ''''' ;
     datalar.QuerySelect(ado,sql);
     setlength(datalar.islemSiralari,ado.RecordCount);
     i := 0;
     while not ado.Eof do
     begin
       datalar.islemSiralari[i] := ado.Fields[0].AsString;
       inc(i);
       ado.Next;
     end;
   finally
     ado.free;
   end;

end;


procedure TakipNoMalzemeIslemSiraNo(TakipNo : string);
var
  sql : string;
  ado : TADOQuery;
  i : integer;
begin
   ado := TADOQuery.Create(nil);
   ado.Connection := datalar.ADOConnection2;
   try
     sql := 'select islemSiraNo from hareketlerIS h ' +
            ' join gelisler g on g.dosyaNo = h.dosyaNo and g.gelisNo = h.gelisNo ' +
            ' where g.Tak�pNo = ' + QuotedStr(TakipNo) + ' and Tip = ''M''' +
            ' and isnull(islemSiraNo,'''') <> ''''' ;
     datalar.QuerySelect(ado,sql);
     setlength(datalar.islemSiralari,ado.RecordCount);
     i := 0;
     while not ado.Eof do
     begin
       datalar.islemSiralari[i] := ado.Fields[0].AsString;
       inc(i);
       ado.Next;
     end;
   finally
     ado.free;
   end;

end;



function TakipNoTetkikIslemRefNo(TakipNo ,Tip : string) : string;
var
  sql ,islemSiraNos ,islemSiraNo : string;
  ado : TADOQuery;
  i : integer;
begin
   ado := TADOQuery.Create(nil);
   ado.Connection := datalar.ADOConnection2;
   try
     sql := 'select isnull(h.Eski_sirano,h.sirano) from hareketler h ' +
            ' join hasta_gelisler g on g.dosyaNo = h.dosyaNo and g.gelisNo = h.gelisNo ' +
            ' where g.TakipNo = ' + QuotedStr(TakipNo) + ' and h.Tip = ' + QuotedStr(Tip);
     datalar.QuerySelect(ado,sql);
     i := 0;
     while not ado.Eof do
     begin
       islemSiraNo := ado.Fields[0].AsString;
       islemSiraNos :=  islemSiraNos + ifThen(islemSiraNos = '','',',') + islemSiraNo;
       inc(i);
       ado.Next;
     end;
     TakipNoTetkikIslemRefNo := islemSiraNos;
   finally
     ado.free;
   end;

end;


function TakipNoMalzemeIslemRefNo(TakipNo : string) : string;
var
  sql ,islemSiraNos ,islemSiraNo : string;
  ado : TADOQuery;
  i : integer;
begin
   ado := TADOQuery.Create(nil);
   ado.Connection := datalar.ADOConnection2;
   try
     sql := 'select h.sirano from hareketlerIS h ' +
            ' join gelisler g on g.dosyaNo = h.dosyaNo and g.gelisNo = h.gelisNo ' +
            ' where g.Tak�pNo = ' + QuotedStr(TakipNo);
     datalar.QuerySelect(ado,sql);
     i := 0;
     while not ado.Eof do
     begin
       islemSiraNo := ado.Fields[0].AsString;
       islemSiraNos :=  islemSiraNos + ifThen(islemSiraNos = '','',',') + 'T'+islemSiraNo;
       inc(i);
       ado.Next;
     end;
   finally
     ado.free;
   end;

end;



function eNabizKayit : integer;
var
  sql : string;
begin
  eNabizKayit := 0;
  try
    sql := 'select SLX from parametreler where SLK = ''33'' and SLB = ''ENABIZ''';
    eNabizKayit := datalar.QuerySelect(sql).FieldByName('SLX').AsInteger;
  finally
  end;
end;

procedure SysTakipNoSorgula(sysTakipNo  : string ; var _Sonuc_ : string);
var
  sql : string;
  ado : TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  ado.Connection := datalar.ADOConnection2;
  try
  if sysTakipNo <> '' then
  begin
     sql := 'select dbo.fn_sysTakipSorgula(' + QuotedStr(sysTakipNo)+ ')';
     datalar.QuerySelect(ado,sql);
     if ado.Fields[0].AsString <> '' then
     begin
        MesajGonder(ado.Fields[0].AsString,'SysTakipNoSorgula','',_Sonuc_);
     end
     else
     _Sonuc_ := 'Mesaj Olu�turulamad�';
  end
  else
  _Sonuc_ := 'SysTakipNo Bo� Olmaz';
  finally
    ado.Free;
  end;
end;


procedure ENabizHizmetSil(HastaneRefNo,sysTakipNo: string ; var _Sonuc_ : string ; islemReferansNo : string = '');
var
  sql ,msj : string;
  ado : TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  ado.Connection := datalar.ADOConnection2;
  try
    if sysTakipNo <> '' then
    begin
       sql := 'select dbo.fn_HIZMET_SIL(' + QuotedStr(sysTakipNo) + ',' + QuotedStr(islemReferansNo) + ')';
       datalar.QuerySelect(ado,sql);
       msj := ado.Fields[0].AsString;
       if msj <> '' then
       begin
          MesajGonder(ado.Fields[0].AsString,'Hizmet Sil',HastaneRefNo,_Sonuc_);
       end
       else
       _Sonuc_ := 'Mesaj Olu�turulamad�';
    end
  else
  _Sonuc_ := 'SysTakipNo Bo� Olmaz';
  finally
    ado.Free;
  end;
end;


procedure ENabizVeriPaketiSil(HastaneRefNo,sysTakipNo: string ; var _Sonuc_ : string ; VeriPaketi : string = '');
var
  sql ,msj : string;
  ado : TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  ado.Connection := datalar.ADOConnection2;
  try
    if sysTakipNo <> '' then
    begin
       sql := 'select dbo.fn_VERIPKAETI_SIL(' + QuotedStr(sysTakipNo) + ',' + QuotedStr(VeriPaketi) + ')';
       datalar.QuerySelect(ado,sql);
       msj := ado.Fields[0].AsString;
       if msj <> '' then
       begin
          MesajGonder(ado.Fields[0].AsString,'VeriPaketi Sil',HastaneRefNo,_Sonuc_);
       end
       else
       _Sonuc_ := 'Mesaj Olu�turulamad�';
    end
  else
  _Sonuc_ := 'SysTakipNo Bo� Olmaz';
  finally
    ado.Free;
  end;
end;


procedure ENabizSgkBildir(HastaneRefNo,sysTakipNo: string ; var _Sonuc_ : string ; islemReferansNo : string = '' ; Tip : string = '');
var
  sql,msj : string;
  ado : TADOQuery;
begin

  ado := TADOQuery.Create(nil);
  ado.Connection := datalar.ADOConnection2;
  try
  if sysTakipNo <> '' then
  begin
     sql := 'select dbo.fn_HIZMET_BILGISI_SGK_BILDIR(' + QuotedStr(sysTakipNo) + ',' + QuotedStr(islemReferansNo) + ',' + QuotedStr(Tip) + ')';
     datalar.QuerySelect(ado,sql);
     msj := ado.Fields[0].AsString;
     if msj <> '' then
     begin
        MesajGonder(msj,'SGK ISLEM BILDIR',HastaneRefNo,_Sonuc_);
     end
     else
     _Sonuc_ := 'Mesaj Olu�turulamad�';
  end
  else
  _Sonuc_ := 'SysTakipNo Bo� Olmaz,E-Nab�z Hasta Kay�t Yap�n�z';
  finally
    ado.Free;
  end;
end;

procedure ENabizDoktorErisim(username,sifre,hastaTc,doktorTc : string);
var
  doktorGiris : TENabizDoktorErisim;
  dllHandle: Cardinal;
  tc : PWideChar;
begin
  dllHandle := LoadLibrary(NoktaDll);
  try
    if dllHandle = 0 then exit;

    @doktorGiris:= findMethod(dllHandle, 'DoktorEHRErisimiTalep');
    if addr(doktorGiris) <> nil then
    doktorGiris(pwideChar(username),pwideChar(sifre),pwideChar(hastaTc),pwideChar(doktorTc),pwideChar(ktsHbysKodu));

    if not Assigned(doktorGiris) then
      raise Exception.Create(NoktaDll + ' i�ersinde DoktorEHRErisimiTalep bulunamad�!');

  finally
    FreeLibrary(dllHandle);
  end;
end;



function ImzaliGirisYap : PWideChar;
var
  imzaliGiris : TImzaliGiris;
  dllHandle: Cardinal;
  tc : PWideChar;
begin
  dllHandle := LoadLibrary(NoktaDll);
  try
    if dllHandle = 0 then exit;

    @imzaliGiris:= findMethod(dllHandle, 'ImzalaileSistemeGiris');
    if addr(imzaliGiris) <> nil then
    imzaliGiris(tc);

    Result := tc;

    if not Assigned(imzaliGiris) then
      raise Exception.Create(NoktaDll + ' i�ersinde ImzalaileSistemeGiris bulunamad�!');

  finally
    FreeLibrary(dllHandle);
  end;

end;


function ImzaileSeansKapat(refNo : integer ; imzalayan : string = 'Dr') : PWideChar;
var
  SeansKapat : TImzaliSeansKapatKapat;
  dllHandle: Cardinal;
  tc  : PWideChar;
begin
  dllHandle := LoadLibrary(NoktaDll);
  try
    if dllHandle = 0 then exit;

    @SeansKapat:= findMethod(dllHandle, 'ImzalaileSeansKapat');
    if addr(SeansKapat) <> nil then
    SeansKapat(refNo,tc);

    Result := tc;

    if not Assigned(SeansKapat) then
      raise Exception.Create(NoktaDll + ' i�ersinde ImzalaileSeansKapat bulunamad�!');

  finally
    FreeLibrary(dllHandle);
  end;

end;
procedure StrToFile(const FileName, SourceString : string);
var
  Stream : TFileStream;
begin
  Stream:= TFileStream.Create(FileName, fmCreate);
  try
    Stream.WriteBuffer(Pointer(SourceString)^, Length(SourceString));
  finally
    Stream.Free;
  end;
end;

function FileToString(const AFileName: string): AnsiString;
 var f: TFileStream; l_onexite: Integer;
begin
    Result := '';
    f := TFileStream.Create(AFileName, fmOpenRead or fmShareDenyWrite);
    try
      l_onexite := f.Size;
      if l_onexite > 0
      then begin
       SetLength(Result, l_onexite);
       F.ReadBuffer(Result[1], l_onexite);
      end;
    finally
      F.Free;
    end;
end;



procedure MesajGonder(mesaj , islemTipi , HastaneRefNo: string  ; var _Sonuc_ : string);
var
  msg,sql : string;
  sonuc : pwidechar;
  SS : TStringList;
  ado : TADOQuery;
  c : char;
  i,s : integer;
  takip : string;
  TSonuc : TStringList;

  procedure sonucYaz(Basarili : integer);
  begin
   (*
   TSonuc := TStringList.Create;
   TSonuc.LoadFromFile('C:\NoktaV3\Cvp.txt');
   sonuc := TSonuc.Text;
   TSonuc.Free;
     *)

   if Basarili = -1
   then
    _Sonuc_ := sonuc;

   if Basarili >= 0
   then
      if Length(sonuc) > 0
      then begin
         SS := TStringList.Create;
         ExtractStrings(['|'], [], PChar(sonuc), SS);

         if pos('Hasta Kay�t',islemTipi) > 0
         Then Begin
             if pos('Sorgula TakipNoListeleme',islemTipi) > 0 then
             begin
               sql := 'update KurumsysTakipNoList set sorguCvp = ' + QuotedStr(sonuc) +
                      ' where isnull(Eski_SIRANO,SIRANO)  = ' + HastaneRefNo;
               datalar.QueryExec(sql);
               exit;
             end;
             if pos('Sil TakipNoListeleme',islemTipi) > 0 then
             begin
               sql := 'update KurumsysTakipNoList set silCvp = ' + QuotedStr(sonuc) +
                      ' where isnull(Eski_SIRANO,SIRANO)  = ' + HastaneRefNo;
               datalar.QueryExec(sql);
               //exit;
             end;

             if SS[0] = 'S0000'
             then begin
                if pos('Sil',islemTipi) > 0 then
                takip := '' else takip := SS[2];

             //   ado := TADOQuery.Create(nil);
             //   ado.Connection := datalar.ADOConnection2;
                sql := 'update Hasta_gelisler set SYSTakipNo = ' + QuotedStr(takip) +
                       ' where isnull(Eski_SIRANO,SIRANO)  = ' + HastaneRefNo;
                datalar.QueryExec(sql);
                _Sonuc_ := SS[1] + ' - ' + SS[2];
             //   ado.Free;

                SYSOnlineCvpDBDurumYaz(HastaneRefNo,SS[2],islemTipi,SS[0],SS[1],datalar.username);
             end
             else
             begin
               _Sonuc_ := SS[1];
               SYSOnlineCvpDBDurumYaz(HastaneRefNo,'',islemTipi,SS[0],SS[1],datalar.username);
               if SS[0] = 'E2033'
               then begin
                takip := copy(SS[1],pos('=',SS[1])+1,50);
             //   ado := TADOQuery.Create(nil);
             //   ado.Connection := datalar.ADOConnection2;
                sql := 'update Hasta_gelisler set SYSTakipNo = ' + QuotedStr(takip) +
                       ' where isnull(Eski_SIRANO,SIRANO)  = ' + HastaneRefNo;
                datalar.QueryExec(sql);
               // ado.Free;
               end;
             end;
         End
         else
         if pos('SGK ISLEM BILDIR',islemTipi) > 0
         Then Begin
            if SS[0] = 'S0000'
            then begin
               datalar.QueryExec('update KurumFatura ' +
                                  ' set SGKBildir = 1 ' +
                                  ' from KurumFatura KF ' +
                                  ' join Hasta_Gelisler G on G.TakipNo = KF.takipNo ' +
                                  ' where isnull(g.Eski_SIRANO,g.SIRANO) = ' + QuotedStr(HastaneRefNo)
                                 );

            end;
         end
         else
         begin
            if SS[0] = 'S0000'
            then begin
               _Sonuc_ := SS[0] + ' - ' + SS[1];
               SYSOnlineCvpDBDurumYaz(HastaneRefNo,SS[2],islemTipi,SS[0],SS[1],datalar.username);

               if islemTipi = 'TetkikSonuc'
               then
                 sql := 'update Hasta_gelisler set eNabizTetkikGonder = 0 where SIRANO = ' + HastaneRefNo
               else
               if islemTipi = 'Hizmet'
               then
                 sql := 'update Hasta_gelisler set eNabizHizmetGonder = 0 where SIRANO = ' + HastaneRefNo
               else
               if islemTipi = 'Muayene'
               then
                 sql := 'update Hasta_gelisler set eNabizGonder = 0 where SIRANO = ' + HastaneRefNo
               else
               if islemTipi = 'RadyolojiSonuc'
               then
                 sql := 'update Hasta_gelisler set eNabizTetkikGonder = 0 where SIRANO = ' + HastaneRefNo;

                datalar.QueryExec(sql);

            end
            else begin
               _Sonuc_ := SS[0] + ' - ' + SS[1];
               SYSOnlineCvpDBDurumYaz(HastaneRefNo,'',islemTipi,SS[0],SS[1],datalar.username);
            end;
         end;
         SS.Free;

      end;
  end;

begin
  try
   sonuc := '';
   s := SendMesajGonder(pwidechar(mesaj),pwidechar(islemTipi),sonuc,HastaneRefNo);
   if islemTipi = 'SysTakipNoSorgula'
   then begin
     xmlGoster('C:\NoktaV3\Message\' +  islemTipi + 'CvpDetay');
   end
   else
   sonucYaz(s);
   _Sonuc_ := sonuc;
  except on e : Exception do
   begin
    ShowMessageSkin(e.Message,'','','info');
   end;
  end;

end;

function SendMesajGonder(m,t : PWideChar ; var sonuc : PWideChar ; HastaneRefNo : string) : integer;
var
  SendMesaj : TENabizSendMesaj;
  dllHandle: Cardinal;
  msj,Basarili : integer;
  TS : TStringList;
  _sonuc_ : PWideChar;
begin

  Basarili := 1;
  dllHandle := LoadLibrary(NoktaDll);
  if dllHandle = 0 then
    exit;
  @SendMesaj := findMethod(dllHandle, 'SendMesajMethod');
   if addr(SendMesaj) <> nil then
   SendMesaj(m,t,Basarili,_sonuc_,pwideChar(datalar._userSaglikNet2_),pwidechar(datalar._passSaglikNet2_),
             pwidechar('https://sys.sagliknet.saglik.gov.tr/SYS/SYSWS.svc'),pwidechar('Hay�r'),pwidechar(HastaneRefNo));
   sonuc := _sonuc_;
   SendMesajGonder := Basarili;

  if not Assigned(SendMesaj) then
    raise Exception.Create(NoktaDll + ' i�ersinde SendMesajMethod bulunamad�!');
  FreeLibrary(dllHandle);

end;

function SYSOnlineCvpDBDurumYaz(SiraNo,SysTakipNo,MesajTipi,SONUCKODU,SONUCMESAJ,user : string) : integer;
var
  ado : TADOQuery;
  sql : string;
begin
  //ado := TADOQuery.Create(nil);
 // ado.Connection := datalar.ADOConnection2;

  try
    sql := 'insert into SaglikNetGonderimSonuc (siraNo,SYSTakipNo,MESAJTIPI,SONUCKODU,SONUCMESAJ,USER_ID,DATE_CREATE) ' +
           ' values(' + SiraNo + ',' +
                        QuotedStr(SysTakipNo) + ',' +
                        QuotedStr(MesajTipi) + ',' +
                        QuotedStr(SONUCKODU) + ',' +
                        QuotedStr(SONUCMESAJ) + ',' +
                        QuotedStr(user) + ',' +
                        QuotedStr(FormatDateTime('yyyy-MM-dd HH:mm',now())) + ')';

    datalar.QueryExec(sql);

    if MesajTipi = 'Hasta Kay�t Silme'
    Then Begin

      sql := 'insert into SaglikNetGonderimSonuc (siraNo,SYSTakipNo,MESAJTIPI,SONUCKODU,SONUCMESAJ,USER_ID,DATE_CREATE) ' +
             ' values(' + SiraNo + ',' +
                          QuotedStr(SysTakipNo) + ',' +
                          QuotedStr('Hasta Kay�t Sil') + ',' +
                          QuotedStr(SONUCKODU) + ',' +
                          QuotedStr(SONUCMESAJ) + ',' +
                          QuotedStr(user) + ',' +
                          QuotedStr(FormatDateTime('yyyy-MM-dd HH:mm',now())) + ')';

      datalar.QueryExec(sql);

      sql := 'insert into SaglikNetGonderimSonuc (siraNo,SYSTakipNo,MESAJTIPI,SONUCKODU,SONUCMESAJ,USER_ID,DATE_CREATE) ' +
             ' values(' + SiraNo + ',' +
                          QuotedStr(SysTakipNo) + ',' +
                          QuotedStr('Muayene Sil') + ',' +
                          QuotedStr(SONUCKODU) + ',' +
                          QuotedStr(SONUCMESAJ) + ',' +
                          QuotedStr(user) + ',' +
                          QuotedStr(FormatDateTime('yyyy-MM-dd HH:mm',now())) + ')';

      datalar.QueryExec(sql);

      sql := 'insert into SaglikNetGonderimSonuc (siraNo,SYSTakipNo,MESAJTIPI,SONUCKODU,SONUCMESAJ,USER_ID,DATE_CREATE) ' +
             ' values(' + SiraNo + ',' +
                          QuotedStr(SysTakipNo) + ',' +
                          QuotedStr('Hizmet Sil') + ',' +
                          QuotedStr(SONUCKODU) + ',' +
                          QuotedStr(SONUCMESAJ) + ',' +
                          QuotedStr(user) + ',' +
                          QuotedStr(FormatDateTime('yyyy-MM-dd HH:mm',now())) + ')';

      datalar.QueryExec(sql);

       sql := 'insert into SaglikNetGonderimSonuc (siraNo,SYSTakipNo,MESAJTIPI,SONUCKODU,SONUCMESAJ,USER_ID,DATE_CREATE) ' +
             ' values(' + SiraNo + ',' +
                          QuotedStr(SysTakipNo) + ',' +
                          QuotedStr('Diyaliz �zlem Sil') + ',' +
                          QuotedStr(SONUCKODU) + ',' +
                          QuotedStr(SONUCMESAJ) + ',' +
                          QuotedStr(user) + ',' +
                          QuotedStr(FormatDateTime('yyyy-MM-dd HH:mm',now())) + ')';

      datalar.QueryExec(sql);

       sql := 'insert into SaglikNetGonderimSonuc (siraNo,SYSTakipNo,MESAJTIPI,SONUCKODU,SONUCMESAJ,USER_ID,DATE_CREATE) ' +
             ' values(' + SiraNo + ',' +
                          QuotedStr(SysTakipNo) + ',' +
                          QuotedStr('TetkikSonuc Sil') + ',' +
                          QuotedStr(SONUCKODU) + ',' +
                          QuotedStr(SONUCMESAJ) + ',' +
                          QuotedStr(user) + ',' +
                          QuotedStr(FormatDateTime('yyyy-MM-dd HH:mm',now())) + ')';

      datalar.QueryExec(sql);

    End;


    SYSOnlineCvpDBDurumYaz := 0;
  finally
    SYSOnlineCvpDBDurumYaz := 1;
   // ado.Free;
  end;



end;



procedure ENabizHizmetKayit(HastaneRefNo,sysTakipNo : string ; var _Sonuc_ : string ; islemReferansNo : string = '' ; Tip : string = '');
var
  sql,msj : string;
  ado : TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  ado.Connection := datalar.ADOConnection2;
  try
  if sysTakipNo <> '' then
  begin
     sql := 'select dbo.fn_HIZMET_BILGISI(' + QuotedStr(sysTakipNo) + ',' + QuotedStr(islemReferansNo) + ',' + QuotedStr(Tip) + ')';
     datalar.QuerySelect(ado,sql);
     msj := ado.Fields[0].AsString;
     if msj <> '' then
     begin
        MesajGonder(msj,'Hizmet Kay�t',HastaneRefNo,_Sonuc_);
     end
     else
     _Sonuc_ := 'Mesaj Olu�turulamad�';
  end
  else
  _Sonuc_ := 'SysTakipNo Bo� Olmaz,E-Nab�z Hasta Kay�t Yap�n�z';
  finally
    ado.Free;
  end;
end;

procedure ENabizMuayeneKayit(HastaneRefNo,sysTakipNo: string ; var _Sonuc_ : string ; islemReferansNo : string = '' ; Tip : string = '');
var
  sql,msj : string;
  ado : TADOQuery;
begin

  ado := TADOQuery.Create(nil);
  ado.Connection := datalar.ADOConnection2;
  try
  if sysTakipNo <> '' then
  begin
     sql := 'select dbo.fn_SaglikNetOnlineMuayene(' + QuotedStr(sysTakipNo) +')';
     datalar.QuerySelect(ado,sql);
     msj := ado.Fields[0].AsString;
     if msj <> '' then
     begin
        MesajGonder(msj,'Muayene Kay�t',HastaneRefNo,_Sonuc_);
     end
     else
     _Sonuc_ := 'Mesaj Olu�turulamad�';
  end
  else
  _Sonuc_ := 'SysTakipNo Bo� Olmaz,E-Nab�z Hasta Kay�t Yap�n�z';
  finally
    ado.Free;
  end;
end;


procedure ENabizTetkikKayit(HastaneRefNo,sysTakipNo: string ; var _Sonuc_ : string ; islemReferansNo : string = '' ; Tip : string = '');
var
  sql,msj : string;
  ado : TADOQuery;
begin

  ado := TADOQuery.Create(nil);
  ado.Connection := datalar.ADOConnection2;
  try
  if sysTakipNo <> '' then
  begin
     sql := 'select dbo.fn_TETKIK_BILGISI(' + QuotedStr(sysTakipNo) + ')';
     datalar.QuerySelect(ado,sql);
     msj := ado.Fields[0].AsString;

     if (msj <> '') and (msj <> 'YOK') and (msj <> 'SYSTakipNo Bulunamad�')
     then
     begin
        MesajGonder(msj,'Tetkik Bilgisi',HastaneRefNo,_Sonuc_);
     end
     else
     _Sonuc_ := 'S0000-Mesaj Olu�turulamad� - ' + msj;

  end
  else
  _Sonuc_ := 'SysTakipNo Bo� Olmaz,E-Nab�z Hasta Kay�t Yap�n�z';
  finally
    ado.Free;
  end;
end;


procedure ENabizRadyolojiKayit(HastaneRefNo,sysTakipNo: string ; var _Sonuc_ : string);
var
  sql,msj : string;
  ado : TADOQuery;
begin

  ado := TADOQuery.Create(nil);
  ado.Connection := datalar.ADOConnection2;
  try
  if sysTakipNo <> '' then
  begin
     sql := 'select dbo.fn_RADYOLOJI_SONUC_KAYIT(' + QuotedStr(sysTakipNo) + ')';
     datalar.QuerySelect(ado,sql);
     msj := ado.Fields[0].AsString;
     if (msj <> '') and (msj <> 'YOK') and (msj <> 'SYSTakipNo Bulunamad�')
     Then begin
        MesajGonder(msj,'RadyolojiSonuc',HastaneRefNo,_Sonuc_);
     end
     else
     _Sonuc_ := 'S0000-Mesaj Olu�turulamad� - ' + msj;
  end
  else
  _Sonuc_ := 'SysTakipNo Bo� Olmaz,E-Nab�z Hasta Kay�t Yap�n�z';
  finally
    ado.Free;
  end;
end;

function SGKHizmetSorgulama(kullaniciAdi,sifre,sysTakipNo,islemReferansNo,uygulamaKodu : string) : String;
var
  SendMesaj : TSGKHizmetSorgulama;
  dllHandle: Cardinal;
  msj,Basarili : integer;
  TS : TStringList;
  _sonuc_ : PWideChar;
  r,_durum_ : integer;
   Json,SutSon,sonuc : ISuperObject;
   JArr: TSuperArray;
   sql,Seans,Tetkik ,Muayene : string;
begin

 if sysTakipNo = ''
 then begin
   ShowMessageSkin('SysTakipNo Bo� Olamaz','','','info');
   exit;
 end;

  Basarili := 1;
  dllHandle := LoadLibrary(NoktaDll);
  if dllHandle = 0 then
    exit;
  @SendMesaj := findMethod(dllHandle, 'SGKHizmetSorgulama');
   if addr(SendMesaj) <> nil then
   SendMesaj(pwideChar(kullaniciAdi),pwideChar(sifre),pwideChar(sysTakipNo),pwideChar(islemReferansNo),_sonuc_,_durum_,pwideChar(uygulamaKodu));

  if not Assigned(SendMesaj) then
    raise Exception.Create(NoktaDll + ' i�ersinde SGKHizmetSorgulama bulunamad�!');
  FreeLibrary(dllHandle);


    try
      Json := superobject.SO(_sonuc_)
    except on e : exception do
      begin
       ShowMessageSkin(e.Message,'','','info');
      end;
    end;

    Tetkik := '';
    Seans := '';
    Muayene := '';

    if Json.I['durum'] = 1
    then begin
        Jarr := Json.A['sonuc'];

        if islemReferansNo = '' then
        begin
            for r := 0 to JArr.LengtH - 1 do
            begin
                 sonuc := Jarr.O[r];

                 if sonuc.S['islemReferansNo'][1] = 'T'
                 then
                  Tetkik := Tetkik +
                              sonuc.S['sysTakipNo'] + ' - ' + sonuc.S['islemReferansNo'] + ' - ' +
                              sonuc.S['islemTuru'] + ' - ' +  sonuc.S['islemKodu'] + ' - ' +
                              sonuc.S['islemTarihi'] + ' - ' +  sonuc.S['sgkTakipNo'] + ' - ' +
                              sonuc.S['sgkHizmetReferansNo'] + ' - ' +  sonuc.S['olusturulmaZamani'] +' - ' +
                              ' SgkG�derimZaman� : ' + sonuc.S['sgkGonderimZamani'] + ' - ' +  sonuc.S['sgkSonucMesaji'] + ' - ' +
                              sonuc.S['sgkSonucKodu']
                              + #13

                 else
                 if sonuc.S['islemReferansNo'][1] = 'M'
                 then
                   Muayene := Muayene +
                               sonuc.S['sysTakipNo'] + ' - ' + sonuc.S['islemReferansNo'] + ' - ' +
                              sonuc.S['islemTuru'] + ' - ' +  sonuc.S['islemKodu'] + ' - ' +
                              sonuc.S['islemTarihi'] + ' - ' +  sonuc.S['sgkTakipNo'] + ' - ' +
                              sonuc.S['sgkHizmetReferansNo'] + ' - ' +  sonuc.S['olusturulmaZamani'] +' - ' +
                              ' SgkG�derimZaman� : ' + sonuc.S['sgkGonderimZamani'] + ' - ' +  sonuc.S['sgkSonucMesaji'] + ' - ' +
                              sonuc.S['sgkSonucKodu']
                              + #13
                 else
                   Seans := Seans +
                              sonuc.S['sysTakipNo'] + ' - ' + sonuc.S['islemReferansNo'] + ' - ' +
                              sonuc.S['islemTuru'] + ' - ' +  sonuc.S['islemKodu'] + ' - ' +
                              sonuc.S['islemTarihi'] + ' - ' +  sonuc.S['sgkTakipNo'] + ' - ' +
                              sonuc.S['sgkHizmetReferansNo'] + ' - ' +  sonuc.S['olusturulmaZamani'] +' - ' +
                              ' SgkG�derimZaman� : ' + sonuc.S['sgkGonderimZamani'] + ' - ' +  sonuc.S['sgkSonucMesaji'] + ' - ' +
                              sonuc.S['sgkSonucKodu']
                              + #13

            end;
            Result := 'Muayene ' + #13 + Muayene + #13 + 'Seans ' + #13 + Seans + #13 + #13 + 'Tetkik ' + #13 + Tetkik;

        end
        else
        begin
          sonuc := Jarr.O[r];
          if sonuc <> nil
          then begin
            if sonuc.S['sgkSonucKodu'] = '0000'
            Then
             Result := '0000'
            Else
             Result := sonuc.S['sgkSonucMesaji'];
          end
          else
            Result := _sonuc_;

        end;


    end
    else
    begin
      ShowMessageSkin(Json.S['mesaj'],'','','info');
    end;
end;



procedure TakipListGetir(kullaniciAdi,sifre,sksrs,Tarih,uygulamaKodu : string);
var
  SendMesaj : TTakipList;
  dllHandle: Cardinal;
  msj,Basarili : integer;
  TS : TStringList;
  _sonuc_ : string;
  r,_durum_ : integer;
   Json,SutSon,sonuc : ISuperObject;
   JArr: TSuperArray;
   sql : string;
begin

  Basarili := 1;
  dllHandle := LoadLibrary(NoktaDll);
  if dllHandle = 0 then
    exit;
  @SendMesaj := findMethod(dllHandle, 'UssServisMethodTakipListele');
   if addr(SendMesaj) <> nil then
   SendMesaj(pwideChar(kullaniciAdi),pwideChar(sifre),pwideChar(sksrs),pwideChar(Tarih),_sonuc_,_durum_,pwideChar(uygulamaKodu));

  if not Assigned(SendMesaj) then
    raise Exception.Create(NoktaDll + ' i�ersinde UssServisMethodTakipListele bulunamad�!');
  FreeLibrary(dllHandle);


  //StrToFile('UssServisMethodTakipListele.txt',pchar(_sonuc_));


    try
      Json := SO(_sonuc_);
    except on e : exception do
      begin
        ShowMessageSkin(e.Message,'','','info');
        exit;
      end;
    end;

 // {"durum":1,"sonuc":[{"sysTakipNo":"67QJ1CHBE649ERJM","hastaneReferansNum
    if Json.I['durum'] = 1
    then begin
        Jarr := Json.A['sonuc'];
        for r := 0 to JArr.LengtH - 1 do
        begin
             sonuc := Jarr.O[r];

             sql := 'insert into KurumsysTakipNoList(SIRANO,sysTakipNo,islemTarihi) ' +
                    'values(' + sonuc.A['hastaneReferansNumarasi'].S[0] + ',' +
                                QuotedStr(sonuc.S['sysTakipNo']) + ',' +
                                QuotedStr(Tarih) + ')';
             datalar.QueryExec(sql);
        end;
    end
    else
    ShowMessageSkin(Json.S['mesaj'],'','','info');

end;



function CreateGrid(name: string ; Form : TForm ; NavigatorButtons : Boolean = True ; DS : TDataSource = nil  ; DataEditing : Boolean = True ; CreatAllCol : Boolean = False ; PopupMenu : TPopupMenu = nil): TcxGridKadir;
var
  Grid: TcxGridKadir;
  Level: TcxGridLevel;
  View: TcxGridDBTableView;
begin
  Grid := TcxGridKadir.Create(Form);
  Grid.Parent := Form;

  Level := Grid.Levels.Add;
  Level.Name := name+'Level';
  View := Grid.CreateView(TcxGridDBTableView) as TcxGridDBTableView;
  View.Name := name+'View';

  View.OptionsData.Editing := DataEditing;
  View.OptionsData.Deleting := DataEditing;
  View.OptionsData.Inserting := DataEditing;
  View.OptionsView.Footer := True;

  if Assigned(PopupMenu) then View.PopupMenu := PopupMenu;

  View.DataController.DataSource := DS;
  if CreatAllCol
  then begin
    View.DataController.CreateAllItems(true);
    View.OptionsView.ColumnAutoWidth := true;
  end;
  Level.GridView := View;

  View.Navigator.Buttons.First.Visible := False;
  View.Navigator.Buttons.PriorPage.Visible := False;
  View.Navigator.Buttons.Prior.Visible := False;
  View.Navigator.Buttons.Next.Visible := False;
  View.Navigator.Buttons.NextPage.Visible := False;
  View.Navigator.Buttons.Last.Visible := False;
 // View.Navigator.Buttons.Cancel.Visible := False;
  View.Navigator.Buttons.Refresh.Visible := False;
  View.Navigator.Buttons.SaveBookmark.Visible := False ;
  View.Navigator.Buttons.GotoBookmark.Visible := False;
  View.Navigator.Buttons.Filter.Visible := False;
  View.Navigator.Visible := NavigatorButtons;
  View.Navigator.Buttons.Insert.Hint := name+'ViewInsert';
  View.Navigator.Buttons.Delete.Hint := name+'ViewDelete';
  View.Navigator.Buttons.Post.Hint := name+'ViewPost';
  View.Navigator.Buttons.Edit.Hint := name+'ViewEdit';

  View.OptionsView.GroupByBox := False;

  Grid.Name := name;

  Result := Grid;
end;


function CreateGrid(name: string ; Parent : TWinControl ; DS: TDataSource ; GroupFooter : Boolean = False ; PopupMenu : TPopupMenu = nil): TcxGridKadir;
var
  Grid: TcxGridKadir;
  Level: TcxGridLevel;
  View: TcxGridDBTableView;
  ASummaryGroup: TcxDataSummaryGroup;
begin
  Grid := TcxGridKadir.Create(Parent);
  Grid.Parent := Parent;
  Level := Grid.Levels.Add;
  Level.Name := name+'Level';
  View := Grid.CreateView(TcxGridDBTableView) as TcxGridDBTableView;
  View.Name := name+'View';

  View.DataController.DataSource := DS;


  View.DataController.CreateAllItems(true);
  View.OptionsView.ColumnAutoWidth := False;
  View.OptionsData.Editing := False;
  View.OptionsData.Inserting := False;
  View.OptionsData.Appending := False;
  View.OptionsData.Deleting := False;
  View.OptionsView.Indicator := True;
  View.OptionsView.Footer := True;

  View.FilterRow.Visible := True;
  View.FilterRow.InfoText := 'Filitre Sat�r�';

  View.OptionsCustomize.ColumnHiding := True;
  View.OptionsCustomize.ColumnFiltering := True;
  View.OptionsCustomize.ColumnsQuickCustomization := True;

  if Assigned(PopupMenu) then View.PopupMenu := PopupMenu;

  Level.GridView := View;

  View.Navigator.Visible := False;

  View.OptionsView.GroupByBox := True;

  Grid.Name := name;

  if GroupFooter = True
  then begin
    View.OptionsView.GroupFooters := gfAlwaysVisible;
    with TcxGridTableSummaryItem(View.DataController.Summary.DefaultGroupSummaryItems.Add) do
    begin
      Column := View.Columns[0];
      Kind := skCount;
      Position := spFooter;
      Format := '#### Adet Kay�t';
    end;
  end;


  Result := Grid;
end;



procedure SetGrid(cxGrid : TcxGrid ; Colums,ColumnsPropertiesClassName,
                  ColumsCaption,ColumnsWidth,ColumsPropertiesItems,ColumsReadOnly : String ; ColumsMaskItems : String = '');
var
 Kolonlar : TStringList;
 KolonProperties : TStringList;
 KolonBasliklar : TStringList;
 KolonGenislik : TStringList;
 KolonReadOnly : TStringList;
 KolonItems : TStringList;
 KolonMasks : TStringList;
 items : TStringList;
 item : String;
 i,r,j : integer;
 Grid : TcxGridDBTableView;
 ic : TcxImageComboKadir;
 msk : TcxMaskEdit;
begin

   Grid := TcxGridDBTableView(cxGrid.Levels[0].GridView);
   Grid.OptionsView.DataRowHeight := 25;
   try
       Kolonlar := TStringList.Create;
       ExtractStrings([','],[],PChar(Colums),Kolonlar);
       KolonProperties := TStringList.Create;
       ExtractStrings([','],[],PChar(ColumnsPropertiesClassName),KolonProperties);
       KolonBasliklar := TStringList.Create;
       ExtractStrings([','],[],PChar(ColumsCaption),KolonBasliklar);
       KolonGenislik := TStringList.Create;
       ExtractStrings([','],[],PChar(ColumnsWidth),KolonGenislik);
       KolonReadOnly := TStringList.Create;
       ExtractStrings([','],[],PChar(ColumsReadOnly),KolonReadOnly);
       KolonItems := TStringList.Create;
       ExtractStrings([','],[],PChar(ColumsPropertiesItems),KolonItems);
       KolonMasks := TStringList.Create;
       ExtractStrings([','],[],PChar(ColumsMaskItems),KolonMasks);

       Grid.ClearItems;
       for i := 0 to Kolonlar.Count - 1 do
       begin
            with Grid.CreateColumn do
            begin
              DataBinding.FieldName := Kolonlar[i];
              Caption := KolonBasliklar[i];
              Width := strToint(KolonGenislik[i]);

              HeaderAlignmentHorz := taCenter;
              HeaderAlignmentVert := TcxAlignmentVert.vaCenter;
              PropertiesClassName := ifThen(KolonProperties[i]='nil','',KolonProperties[i]) ;
            //  Properties.Alignment.Horz := taCenter;

              Properties.ReadOnly := StrToBool(KolonReadOnly[i]);
              Options.Editing := not StrToBool(KolonReadOnly[i]);

            //  Properties.Alignment.Vert := taVCenter;

             if (KolonProperties[i] = 'nil')
             Then Begin

             end;

             if (KolonProperties[i] = 'TcxMaskEditProperties')
             Then Begin
               TcxMaskEditProperties(Properties).EditMask := KolonMasks[i];
             end;

             if (KolonProperties[i] = 'TcxMemoProperties')
             Then Begin
              // TcxMemoProperties(Properties).ScrollBars := ssBoth;
               TcxMemoProperties(Properties).WordWrap := True;

             end;

             if (KolonProperties[i] = 'TcxTextProperties') or
             (KolonProperties[i] = 'TcxTextEditProperties')
             Then Begin
                TcxTextEditProperties(Properties).Alignment.Horz := taLeftJustify;
                TcxTextEditProperties(Properties).Alignment.Vert := TcxEditVertAlignment.taVCenter;
             End;



             if (KolonProperties[i] = 'TcxImageComboBoxProperties')
             Then Begin
                 ic := TcxImageComboKadir.Create(nil);
                 TcxImageComboBoxProperties(Properties).Alignment.Horz := taCenter;
                 TcxImageComboBoxProperties(Properties).ReadOnly := StrToBool(KolonReadOnly[i]);
                 try
                 if pos('|',KolonItems[i]) > 0
                 Then Begin
                        item := KolonItems[i];
                        item := StringReplace(item,'|',',',[rfReplaceAll]);
                        ic.Conn := nil;
                        ic.ItemList := item;
                        ic.Filter := '';
                        TcxImageComboBoxProperties(Properties).Items := TcxImageComboBoxProperties(ic.Properties).Items;
                 End
                 else
                 begin
                    items := TStringList.Create;
                    try
                      ExtractStrings([';'],[],PChar(KolonItems[i]),items);
                      ic.Conn := datalar.ADOConnection2;
                      ic.TableName := items[0];
                      ic.ValueField := items[1];
                      ic.DisplayField := items[2];
                      ic.Filter := '';
                       TcxImageComboBoxProperties(Properties).Items := TcxImageComboBoxProperties(ic.Properties).Items;
                    finally
                     items.free;
                    end;
                 end;
                 finally
                   ic.Free;
                 end;

             End
             else
             begin
             end;



            end;

       end;

   finally
       Kolonlar.Free;
       KolonProperties.Free;
       KolonBasliklar.Free;
       KolonGenislik.Free;
   end;




end;



function Download(URL, User, Pass, FileName :  string ; FullURL : string = '443'): Boolean;
const
  BufferSize = 1024;
var
  hSession, hURL: HInternet;
  Buffer: array[1..BufferSize] of Byte;
  BufferLen: DWORD;
  F: File;
begin
   Result := False;
   hSession := InternetOpen('', INTERNET_OPEN_TYPE_PRECONFIG, nil, nil, 0) ;

   // Establish the secure connection
   InternetConnect (
     hSession,
     PChar(FullURL),
     INTERNET_DEFAULT_HTTPS_PORT,
     PChar(User),
     PChar(Pass),
     INTERNET_SERVICE_HTTP,
     0,
     0
   );

  try
    hURL := InternetOpenURL(hSession, PChar(URL), nil, 0, 0, 0) ;
    try
      AssignFile(f, FileName);
      Rewrite(f,1);
      try
        repeat
          InternetReadFile(hURL, @Buffer, SizeOf(Buffer), BufferLen) ;
          BlockWrite(f, Buffer, BufferLen)
        until BufferLen = 0;
      finally
        CloseFile(f) ;
        Result := True;


      end;
    finally
      InternetCloseHandle(hURL)
    end
  finally
    InternetCloseHandle(hSession)
  end;
end;




Function myFileSize(filename : string) : integer;
var
  dSize: Integer;
  dFile: THandle;
  strSize: String;
begin
    dFile := CreateFile (PChar (filename),0, FILE_SHARE_READ, nil, OPEN_EXISTING, 0, 0);
    dSize := GetFileSize (dFile, nil);
    CloseHandle (dFile);

    if (dsize div 1024) > 0 then
      begin
        strSize := ' Kb';
        dsize := dsize div 1024;
      end;
    (*
    if (dsize div 1024) > 0 then
      begin
        strSize := ' Mb';
        dsize := dsize div 1024;
      end;
    if (dsize div 1024) > 0 then
      begin
        strSize := ' Gb';
        dsize := dsize div 1024;
      end;
       *)
  if dsize = -1 then
  RESULT := -1
  else
  RESULT := dsize;//floattostr(dsize) + strsize;
end;


function FolderSize(Dir : string) : Double;
var
  SearchRec : TSearchRec;
  Separator : string;
  DirBytes : Double;
begin
 Result := 0;
 if Copy(Dir,Length(Dir),1) = '\' then
 Separator := ''
  else
   Separator := '\';

  if FindFirst(Dir + Separator + '*.*',faAnyFile,SearchRec) = 0
  then begin
   if FileExists(Dir + Separator + SearchRec.Name)
    then begin
      DirBytes := DirBytes + SearchRec.Size;
    end
    else
    if DirectoryExists(Dir + Separator+SearchRec.Name)
    then begin
      if (SearchRec.Name<> '.') and (SearchRec.Name <> '..')
      then begin
         FolderSize(Dir + Separator + SearchRec.Name) ;
      end;
    end;
    while FindNext(SearchRec) = 0 do
    begin
     if FileExists(Dir + Separator + SearchRec.Name)
     then begin
       DirBytes := DirBytes + SearchRec.Size;
     end
     else if DirectoryExists(Dir + Separator + SearchRec.Name)
     then begin
        if (SearchRec.Name <> '.') and (SearchRec.Name <> '..')
        then begin
         FolderSize(Dir + Separator + SearchRec.Name) ;
        end;
     end;
    end;
  end;
  FindClose(SearchRec) ;
  Result := DirBytes;
end;

procedure ChangeFAttrib(dsy:  String);
begin
 FileSetAttr(dsy, system.SysUtils.faReadOnly or system.SysUtils.faSysFile);
end;

procedure DelTree(StartDir: string);
var
  Search : TSearchRec;
begin
if Startdir[Length(Startdir)] <> '\' then
  startdir := startdir + '\';
  if FindFirst(startdir + '*.*', faAnyFile, Search) = 0 then
  repeat
    if (Search.Name[1] <> '.' ) then
      if ((Search.Attr and faDirectory) > 0) then
      begin
        RmDir(StartDir + Search.Name);
        ChangeFAttrib(StartDir + Search.Name);
      end else
      begin
        DeleteFile(StartDir + Search.Name);
        Application.ProcessMessages;
      end;
  until FindNext(Search) <> 0;
  FindClose(Search);
end;


procedure SetAnaFormFoto;
var
  g : TBitmap;
  Dataset : TDataset;
  Table ,where : String;
begin
      if (datalar.UserGroup = '1') or
         (datalar.UserGroup = '4') or
         (datalar.UserGroup = '9')
       then
      begin
         Table := 'Foto';
         datalar.Foto := TJpegImage.Create;
         try
           try
              Dataset := datalar.QuerySelect('select Adi,Foto,isnull(CINSIYETI,3) cinsiyet '  +
                                             'from PersonelFoto  F ' +
                                             ' join PersonelKartView P on P.dosyaNo = F.dosyaNo ' +
                                             ' where P.dosyaNo = ' + QuotedStr(datalar.Personel));
              datalar.userTanimi := Dataset.FieldByName('Adi').AsString;
              datalar.Cinsiyet := Dataset.FieldByName('cinsiyet').AsInteger;
              if not Dataset.FieldByName('foto').IsNull
              then
               datalar.Foto.Assign(Dataset.FieldByName('foto'))
              else
               datalar.Foto := nil;

               if datalar.Foto = nil
               then begin
                try
                   datalar.Foto := TJpegImage.Create;
                   g := TBitmap.Create;
                   if datalar.Cinsiyet = 0 then datalar.FotoImage.GetBitmap(2,g) else datalar.FotoImage.GetBitmap(4,g);
                   datalar.Foto.Assign(g);
                finally
                 g.free;
                end;
               end;
           except
            datalar.Foto := nil;
           end;
         finally
         end;
      end;

      if (datalar.IGU <> '') or (datalar.doktorKodu <> '') or (datalar.DSPers <> '')
      then begin
         if datalar.doktorKodu <> ''
         then begin
           Table := 'DoktorlarT';
           where := datalar.doktorKodu;
         end
         else
         if datalar.IGU <> ''
         then begin
           Table := 'IGU';
           where := datalar.IGU;
         end
         else begin
           Table := 'HemsirelerT';
           where := datalar.DSPers;
         end;

          datalar.Foto := TJpegImage.Create;
         try
           try
              Dataset := datalar.QuerySelect('select tanimi,Foto,cinsiyet from ' + Table + ' where kod = ' + QuotedStr(where));
              datalar.userTanimi := Dataset.FieldByName('tanimi').AsString;
              datalar.Cinsiyet := Dataset.FieldByName('cinsiyet').AsVariant;

              if not Dataset.FieldByName('foto').IsNull
              then
               datalar.Foto.Assign(Dataset.FieldByName('foto'))
              else
               datalar.Foto := nil;
           except
            datalar.Foto := nil;
           end;
         finally
         end;

         if datalar.Foto = nil
         then begin
          try
           //datalar.Foto := TPngImage.Create;
           datalar.Foto := TJpegImage.Create;
           g := TBitmap.Create;

           //bayan igu 4 erkek 0
           //bayan doktor 3 erkek 1
           if datalar.IGU <> '' then
            if datalar.Cinsiyet = 0 then datalar.FotoImage.GetBitmap(0,g) else datalar.FotoImage.GetBitmap(4,g);
           if datalar.doktorKodu <> '' then
            if datalar.Cinsiyet = 0 then datalar.FotoImage.GetBitmap(1,g) else datalar.FotoImage.GetBitmap(3,g);


            datalar.Foto.Assign(g);
          finally
           g.free;
          end;
         end;

      end;


end;


procedure DatasetRefresh(DataSet : TDataset ; BookMark : Boolean = False);
var
  BM : TBookmark;
begin
  if BookMark then
  begin
    BM := Dataset.Bookmark;
    Dataset.Active := False;
    Dataset.Active := True;
    Dataset.GotoBookmark(BM);
  end
  else
  begin
    Dataset.Active := False;
    Dataset.Active := True;
  end;

end;


procedure RevOnay(item : string ; Dataset : TDataset);
var
  sql , userField,dateField : string;
begin

//  if UserRight('SKS', TControl(sender).Hint) = True
//  then begin

     item := StringReplace(StringReplace(item,'DropMenu','',[rfReplaceAll]),'ToolButton','',[rfReplaceAll]);


     userField :=
     StringReplace(StringReplace(item,'Durum','User',[rfReplaceAll]),'Onay','User',[rfReplaceAll]);
     dateField :=
     StringReplace(StringReplace(item,'Durum','Date',[rfReplaceAll]),'Onay','Date',[rfReplaceAll]);


     sql := 'update SKS_DokumanlarRev set ' + item + ' = 1 ,' +
            userField + ' = ' + QuotedStr(datalar.username) + ',' +
            dateField + ' = getdate() ' +
            ' where dokumanid = ' + Dataset.FieldByName('dokumanid').AsString +
            ' and rev = ' + Dataset.FieldByName('rev').AsString +
            ' and ' + item + ' = 0';
     datalar.QueryExec(sql);
     DatasetRefresh(Dataset);

 // end
//  else
//    ShowMessageSkin('Bu ��lem ��in Yetkiniz Bulunmamaktad�r !',TToolButton(sender).Hint,'','info');

end;



procedure FirmaBilgiRecordToNull;
begin
   datalar.FirmaSubeBilgi.SirketKodu := '';
   datalar.FirmaSubeBilgi.SubeKodu := '';
   datalar.FirmaSubeBilgi.SirketAdi := '';
   datalar.FirmaSubeBilgi.Yetkili :=  '';
   datalar.FirmaSubeBilgi.YetkiliMail := '';
   datalar.FirmaSubeBilgi.YetkiliMobil := '';
   datalar.FirmaSubeBilgi.IGU := Null;
   datalar.FirmaSubeBilgi.IGUMail := '';
   datalar.FirmaSubeBilgi.doktor := Null;
   datalar.FirmaSubeBilgi.doktorMail := '';
   datalar.FirmaSubeBilgi.calisanTemsilci := '';
   datalar.FirmaSubeBilgi.calisanTemsilciMail := '';
   datalar.FirmaSubeBilgi.BascalisanTemsilci := '';
   datalar.FirmaSubeBilgi.BascalisanTemsilciMail := '';
   datalar.FirmaSubeBilgi.destekElemani := '';
   datalar.FirmaSubeBilgi.destekElemaniMail := '';
   datalar.FirmaSubeBilgi.isveren := '';
   datalar.FirmaSubeBilgi.ilgiliMailBilgileri := '';
   datalar.FirmaSubeBilgi.firmaYetkiliMailBilgileri := '';
   datalar.FirmaSubeBilgi.isgKurulEkibiMailBilgileri := '';
   datalar.FirmaSubeBilgi.subeSiciNo := '';
   datalar.FirmaSubeBilgi.DigerSaglikPers := Null;
   datalar.FirmaSubeBilgi.BolgeMudurlukSicilNo := '';
   datalar.FirmaSubeBilgi.MuayeneProtokolNo := '';
   datalar.FirmaSubeBilgi.DoktorCalismaDakika := '';
   datalar.FirmaSubeBilgi.IGUCalismaDakika := '';
   datalar.FirmaSubeBilgi.DigerSaglikPersCalismaDakika := '';
   datalar.FirmaSubeBilgi.NaceKod := '';
   datalar.FirmaSubeBilgi.tehlikeSinifi := '';
   datalar.FirmaSubeBilgi.Pasif := '';
   datalar.FirmaSubeBilgi.SemtLokasyon := '';
   datalar.FirmaSubeBilgi.calisanSayi := '';
   datalar.FirmaSubeBilgi.Adres := '';
   datalar.FirmaSubeBilgi.AcikAlan := '';
   datalar.FirmaSubeBilgi.KapaliAlan := v;
end;



function DetaySil(Tag : integer ; Tablaname,WhereField,Where : string) : Boolean;
begin
  DetaySil := False;
  case Tag  of
    Sil :
      begin
        try
           datalar.QueryExec('delete from ' + Tablaname  + ' where ' + WhereField + ' = ' + QuotedStr(where));
           DetaySil := True;
        except on e : exception do
          begin
           ShowMessageSkin(e.Message,'','','info');
           DetaySil := False;
          end;
        end;

      end
      Else DetaySil := True;
  end;
end;



Function EgitimKodlari : String;
var
  Cvp : egitimListesiBilgisi;
  Egitim : egitimKodu;
  EgitimListString : String;
begin
    Cvp := egitimListesiBilgisi.Create;
    try
      Application.ProcessMessages;
      datalar.CSGBsoap.URL := 'http://213.159.30.6/CSGBservice.asmx';
      Cvp := (datalar.CSGBsoap as CSGBServiceSoap).egitimKodlariGetir('');

      if Cvp.status = 200
      then begin
       for Egitim in Cvp.egitimListesi do
         begin
            EgitimListString := EgitimListString + intTostr(Egitim.kodu) + ' : ' + Egitim.aciklama + ' - ' + intTostr(Egitim.aktif) + #13;
         end;

       ShowMessageSkin('��lem Ba�ar�l�',EgitimListString,'','info');
       EgitimKodlari := EgitimListString;
      end;


    except
      on E : Exception do
      begin
        ShowmessageSkin(E.Message,'','','info');
      end;
    end;
end;


function EgitimHash(egitim : string): string;
var
  hash : TEgitimHash;
  dllHandle: Cardinal;
  receteId,TesisKodu: integer;
  recete,doktorKullanici,doktorsifre : string;
  doktorTc : string;
  ss,imzali : PWideChar;
  sql : string;
begin
  ss := '';
  imzali := '';
  dllHandle := LoadLibrary(NoktaDll);
  try
    if dllHandle = 0 then exit;

    @hash := findMethod(dllHandle, 'EgitimXMLHash');
    if addr(hash) <> nil then
    hash(pwidechar(egitim),imzali,ss);

    EgitimHash := imzali;

    if not Assigned(hash) then
      raise Exception.Create(NoktaDll + ' i�ersinde EgitimXMLHash bulunamad�!');

  finally
    FreeLibrary(dllHandle);
  end;
end;


function EgitimImzali : string;
var
  imzala : TEgitimImzali;
  dllHandle: Cardinal;
  receteId,TesisKodu: integer;
  recete,doktorKullanici,doktorsifre : string;
  doktorTc : string;
  ss,imzali : PWideChar;
  sql : string;
begin
  ss := '';
  imzali := '';
  dllHandle := LoadLibrary(NoktaDll);
  try
    if dllHandle = 0 then exit;

    @imzala := findMethod(dllHandle, 'EgitimImzali');
    if addr(imzala) <> nil then
    imzala(imzali,ss);

    EgitimImzali := imzali;

    if not Assigned(imzala) then
      raise Exception.Create(NoktaDll + ' i�ersinde EgitimImzali bulunamad�!');

  finally
    FreeLibrary(dllHandle);
  end;
end;

(*
function EgitimImzala(pin,egitim,cardType : string): string;
var
  imzala : TEgitimImzala;
  dllHandle: Cardinal;
  receteId,TesisKodu: integer;
  recete,doktorKullanici,doktorsifre : string;
  doktorTc : string;
  ss,imzali : PWideChar;
  sql : string;
begin
  ss := '';
  imzali := '';
  dllHandle := LoadLibrary(LIB_DLL2);
  try
    if dllHandle = 0 then exit;

    @imzala := findMethod(dllHandle, 'EgitimImzala');
    if addr(imzala) <> nil then
    imzala(pwidechar(egitim),imzali,pin,cardType,ss);

    EgitimImzala := imzali;

    if not Assigned(imzala) then
      raise Exception.Create(LIB_DLL + ' i�ersinde EgitimImzala bulunamad�!');

  finally
    FreeLibrary(dllHandle);
  end;
end;
          *)
function EgitimVerisiXML(egitim : egitimBilgisi) : string;
var
  Cvp : string;
begin
    EgitimVerisiXML := '';
    try
      Application.ProcessMessages;
      datalar.CSGBsoap.URL := 'http://213.159.30.6/CSGBservice.asmx';
      Cvp := (datalar.CSGBsoap as CSGBServiceSoap).egitimBilgisiDVOToXML(egitim);
      EgitimVerisiXML := Cvp;
    except
      on E : Exception do
      begin
        ShowmessageSkin(E.Message,'','','info');
      end;
    end;
end;
function EgitimVerisi(id : string ; var pin,cardType : string; var xml : string;var xmlSOAP : string) : egitimBilgisi;
var
  sql : string;
  ado : TADOQuery;
  Veri : egitimBilgisi;
//  VeriCoklu : cokluEgitimBilgisi;
  calisanlar : Array_Of_calisanObject;
  calisan : calisanObject;
  egitimler : Array_Of_egitimObject;
  egitim : egitimObject;
  i : integer;
begin
   ado := TADOQuery.Create(nil);
   ado.Connection := datalar.ADOConnection2;

   try
      sql := 'sp_EgitimVerisi ' + id;
      datalar.QuerySelect(ado,sql);

      pin := ado.FieldByName('pin').AsString;
      cardType := ado.FieldByName('cardType').AsString;
      xml :=  ado.FieldByName('EgitimXML').AsString;
      xmlSOAP :=  ado.FieldByName('EgitimSOAP').AsString;


      Veri := egitimBilgisi.Create;
      Veri.sorguNo := strToint(id);
      Veri.belgeTipi := ado.FieldByName('belgeTipi').AsInteger;
      Veri.egiticiTckNo := ado.FieldByName('egitimciTC').AsLargeInt;
      Veri.egitimTarihi := ado.FieldByName('EgitimTarihi').AsString;
      Veri.egitimTur := ado.FieldByName('EgitimYontem').AsInteger;
      Veri.egitimYer := ado.FieldByName('EgitimTip').AsInteger;
      Veri.firmaKodu := ado.FieldByName('FirmaKodu').AsString;
      Veri.isgProfTckNo :=  ado.FieldByName('isgProf').AsLargeInt;
      Veri.sgkTescilNo := ado.FieldByName('sgkSicil').AsString;

      sql := 'select * from Personel_Egitim E ' +
             ' join PersonelKart P on P.dosyaNo = E.PersonelDosyaNo ' +
             ' where EgitimID = ' + id +
             ' order by P.TCKIMLIKNO ';
      datalar.QuerySelect(ado,sql);

      if ado.eof
      then begin
         ShowMessageSkin('E�itime Kat�lan Personel Bilgisi Tan�ml� De�il','','','info');
         Veri := nil;
         exit;
      end;


      i := 0;
      SetLength(calisanlar ,ado.RecordCount);
      while not ado.eof do
      begin
        calisan := calisanObject.Create;
        calisan.calisanTckNo := ado.FieldByName('TCKIMLIKNO').AsLargeInt;
        calisanlar[i] := calisan;
        inc(i);
        ado.next;
      end;
      Veri.calisan := calisanlar;

      sql := 'select isnull(ET.EntagrasyonKodu,0) EntagrasyonKodu,isnull(E.sure,0) sure from EgitimAltDetay E ' +
             '   join Egitim_Tnm ET on ET.Kod = E.kod ' +
             ' where EgitimID = ' + id +
             ' order by ET.EntagrasyonKodu ';
      datalar.QuerySelect(ado,sql);

      if ado.eof
      then begin
         ShowMessageSkin('E�itim Bilgisi Tan�ml� De�il','','','info');
         Veri := nil;
         exit;
      end;

      i := 0;
      SetLength(egitimler,ado.RecordCount);
      while not ado.eof do
      begin
        if (ado.FieldByName('EntagrasyonKodu').AsInteger = 0) or
           (ado.FieldByName('sure').AsInteger = 0)
        then
        begin
          ShowMessageSkin('E�itim Detay Bilgisi Tan�m� Hatal�','Kod yada S�re Bilgisi bo� olamaz','','info');
          Veri := nil;
          exit;
        end;
        egitim := egitimObject.Create;
        egitim.egitimKoduId := ado.FieldByName('EntagrasyonKodu').AsInteger;
        egitim.egitimSuresi := ado.FieldByName('sure').AsInteger;
        egitimler[i] := egitim;
        inc(i);
        ado.Next;
      end;
      Veri.egitim := egitimler;
   finally
      EgitimVerisi := Veri;
      ado.Free;
   end;

end;


Procedure FirmaSorgulCSGBCvpFirmaBilgiGuncelle(firmaSgk : string ; Cvp : isyeriCevapDVO);
var
  sql : string;
begin
  sql := ' set nocount on ' +
         ' update SIRKET_SUBE_TNM set calisanSayi = ' + inttoStr(Cvp.calisanSayisi) +
         ' where subeSiciNo = ' +
         '(select subeSiciNo from SIRKETLER_TNM_view where subeSicilNo = ' + QuotedStr(firmaSgk) + ')' +
         ' set nocount off ';
  datalar.QueryExec(sql);
end;


Procedure EgitimKaydetCSGBCvpBilgiGuncelle(egitimId,msg,sorguNo : string);
var
  sql : string;
begin
  sql := ' set nocount on ' +
         ' update Egitimler set EgitimCSGBGonderimSonuc = ' + QuotedStr(msg) +
         ',sorguNo = ' + QuotedStr(sorguNo) +
         ' where id = ' + QuotedStr(egitimId) +
         ' set nocount off';
  datalar.QueryExec(sql);
end;

Procedure EgitimSorgulaCSGBCvpBilgiGuncelle(cvp : ArrayOfEgitimBilgisiCevap);
var
  sql : string;
  e : egitimBilgisiCevap;
begin
  for e in cvp do
  begin
    sql := ' set nocount on ' +
           ' update Egitimler set sorguSonuc = ' + QuotedStr(e.message_) +
           ' ,sorguSonucKodu = ' + inttoStr(e.status) +
           ' where sorguNo = ' + QuotedStr(e.sorguNo) +
           ' set nocount off';
    datalar.QueryExec(sql);
  end;

end;


(*
function EgitimKaydetCSGB(egitim : egitimBilgisi ; pin,cardType,_xml_ : string) : egitimBilgisiCevap;
var
  sayi,EgitimString : string;
  Cvp : egitimBilgisiCevap;
begin
    Cvp := egitimBilgisiCevap.Create;
  //  EgitimString := EgitimVerisiXML(egitim);

    EgitimString := EgitimImzala(pin,_xml_,cardType);
    try
      Application.ProcessMessages;
      datalar.CSGBsoap.URL := 'http://213.159.30.6/CSGBservice.asmx';
      Cvp := (datalar.CSGBsoap as CSGBServiceSoap).egitimKaydet(egitim,EgitimString);
      EgitimKaydetCSGB := Cvp;
      if Cvp.status = 200
      Then begin
        ShowMessageSkin('Sorgu No:' + intTostr(Cvp.sorguNo),'','','info');
      end
      else begin
        ShowMessageSkin(Cvp.message_,'','','info');
        Cvp.sorguNo := egitim.sorguNo;
      end;

      EgitimKaydetCSGBCvpBilgiGuncelle(Cvp.message_,inttostr(Cvp.sorguNo));

    except
      on E : Exception do
      begin
        ShowmessageSkin(E.Message,'','','info');
      end;
    end;
end;
 *)
 (*
function EgitimKaydetCSGB(egitim : cokluEgitimBilgisi ; pin,cardType,_xml_ : string) : cokluEgitimCevapDVO;
var
  sayi,EgitimString : string;
  Cvp : cokluEgitimCevapDVO;
begin
    Cvp := cokluEgitimCevapDVO.Create;
  //  EgitimString := EgitimVerisiXML(egitim);

    EgitimString := EgitimImzala(pin,_xml_,cardType);
    try
      Application.ProcessMessages;
      datalar.CSGBsoap.URL := 'http://213.159.30.6/CSGBservice.asmx';
      Cvp := (datalar.CSGBsoap as CSGBServiceSoap).egitimKaydetCoklu(egitim,EgitimString);
      EgitimKaydetCSGB := Cvp;
      if Cvp.status = 200
      Then begin
        ShowMessageSkin('Sorgu No:' + intTostr(Cvp.sorguNo),'','','info');
      end
      else begin
        ShowMessageSkin(Cvp.message_,'','','info');
        Cvp.sorguNo := egitim.sorguNo;
      end;

      EgitimKaydetCSGBCvpBilgiGuncelle(Cvp.message_,inttostr(Cvp.sorguNo));

    except
      on E : Exception do
      begin
        ShowmessageSkin(E.Message,'','','info');
      end;
    end;
end;
       *)

(*
function EgitimKaydetCSGBImzager(egitim : egitimBilgisi) : egitimBilgisiCevap;
var
  sayi,EgitimString : string;
  Cvp : egitimBilgisiCevap;
begin
    Cvp := egitimBilgisiCevap.Create;
  //  EgitimString := EgitimVerisiXML(egitim);

    EgitimString := EgitimImzali;
    try
      Application.ProcessMessages;
      datalar.CSGBsoap.URL := 'http://213.159.30.6/CSGBservice.asmx';
    //  Cvp := (datalar.CSGBsoap as CSGBServiceSoap).egitimKaydet(egitim,_xmlSOAP_,EgitimString);
      EgitimKaydetCSGBImzager := Cvp;
      if Cvp.status = 200
      Then begin
        ShowMessageSkin('Sorgu No:' + intTostr(Cvp.sorguNo),'','','info');
      end
      else begin
        ShowMessageSkin(Cvp.message_,'','','info');
        Cvp.sorguNo := egitim.sorguNo;
      end;

      EgitimKaydetCSGBCvpBilgiGuncelle('0',Cvp.message_,Cvp.sorguNo);

    except
      on E : Exception do
      begin
        ShowmessageSkin(E.Message,'','','info');
      end;
    end;
end;

  *)


function FirmaSorgulaCSGB(firmaSGK , iguTC : string) : isyeriCevapDVO;
var
  sayi,url : string;
  Cvp : isyeriCevapDVO;
begin
    url := datalar.CSGBUrl;
    Cvp := isyeriCevapDVO.Create;
    try
      Application.ProcessMessages;
      datalar.CSGBsoap.URL := 'http://213.159.30.6/CSGBservice.asmx';
      Cvp := (datalar.CSGBsoap as CSGBServiceSoap).isyeriBilgisiSOAP(firmaSGK,iguTC,url);
      FirmaSorgulaCSGB := Cvp;
      if Cvp.status = 200
      Then begin
        ShowMessageSkin('�al��an Say�s�:' + intTostr(Cvp.calisanSayisi) + #13 +
                        'Nace : ' + Cvp.naceKodu + #13 +
                        'Tehlike S�n�f� : ' + Cvp.tehlikeSinifi,'','','info');
        FirmaSorgulCSGBCvpFirmaBilgiGuncelle(firmaSGK,Cvp);
      end
      else ShowMessageSkin(Cvp.message_,'','','info');
    except
      on E : Exception do
      begin
        ShowmessageSkin(E.Message,'','','info');
      end;
    end;
end;


function FindComponentButtonName(const AName: string ; Form : TForm): TComponent;
var
  I: Integer;
begin
  Result := nil;
  for I := 0 to Form.ComponentCount - 1 do
    if Form.Components[I] is TcxButtonKadir 
    then    
     if TcxButtonKadir(Form.Components[I]).ButtonName = AName 
     then begin
      Result := Form.Components[I];     
      break;
     end; 
end;


function RTFSablonDataset(RTFKodu : string) : TDataset;
begin
 try
  Result := datalar.QuerySelect('select RTFFile,RTFSablonTanim from RTFSablonlari where RTFKodu = ' + RTFKodu);
 except
   FreeAndNil (Result);
 end;
end;

procedure GridToSayfaClient(Grid : string ; Form : TForm);
var
 H : integer;
begin
   H := TcxGrid(TGirisForm(Form).FindComponent(Grid)).Height;
   TcxGrid(TGirisForm(Form).FindComponent(Grid)).Width := TGirisForm(Form).sayfa1.Width - 20;
   TcxGrid(TGirisForm(Form).FindComponent(Grid)).Height := TGirisForm(Form).sayfa1.Height - (45 * abs(H));
end;

function SubeIGUDoktorAtanmismi(sirketKod : string) : integer;
var
  sql : string;
begin
  SubeIGUDoktorAtanmismi := 1;
  sql := 'if exists (select * from SIRKET_SUBE_TNM ' +
         ' where (isnull(subeDoktor,'''') = '''' or isnull(IGU,'''') = '''') and sirketKod = ' + QuotedStr(sirketKod) +
         ') select 0 durum else select 1 durum ';

  SubeIGUDoktorAtanmismi := datalar.QuerySelect(sql).FieldByName('durum').AsInteger;
end;

function SirketIGUToSQLStr(sirketKodu : string) : string;
var
 sql : string;
begin
   SirketIGUToSQLStr := '';
   sql := '(select distinct I.kod,I.tanimi from SIRKET_SUBE_TNM S ' +
          ' join IGU I on I.kod = S.IGU ' +
          ' where sirketKod = ' + QuotedStr(sirketKodu) + ') IGU';
   SirketIGUToSQLStr := sql;
end;

function SirketDoktorToSQLStr(sirketKodu : string) : string;
var
 sql : string;
begin
   SirketDoktorToSQLStr := '';
   sql := '(select distinct D.kod,D.tanimi from SIRKET_SUBE_TNM S ' +
          ' join DoktorlarT D on D.kod = S.subeDoktor ' +
          ' where sirketKod = ' + QuotedStr(sirketKodu) + ') Doktor';
   SirketDoktorToSQLStr := sql;
end;

function OkunmayanDokumanVar(user : string) : Boolean;
var
  ado : TADOQuery;
  _List_ : TStringList;
begin
 OkunmayanDokumanVar := False;
 _List_ := TStringList.Create;
 try
    ado := datalar.QuerySelect(
        'select D.adi, D.id,Okundu,S.rev,D.dokumanNo from SKS_DokumanlarRevStatuDurum S ' +
        'left join SKS_Dokumanlar D on D.id = S.dokumanid ' +
        'where kullanici = ' + QuotedStr(user) + ' and Okundu = ''0''');

    if not ado.Eof
    Then
    begin
      OkunmayanDokumanVar := True;
      datalar.MemDataKullaniciDokumanOku.Active := False;
      datalar.MemDataKullaniciDokumanOku.Active := True;
      while not ado.Eof do
      begin
         datalar.MemDataKullaniciDokumanOku.Append;
         datalar.MemDataKullaniciDokumanOku.FieldByName('id').AsString := ado.FieldByName('id').AsString;
         datalar.MemDataKullaniciDokumanOku.FieldByName('adi').AsString := ado.FieldByName('adi').AsString;
         datalar.MemDataKullaniciDokumanOku.FieldByName('rev').AsString := ado.FieldByName('rev').AsString;
         datalar.MemDataKullaniciDokumanOku.FieldByName('dokumanNo').AsString := ado.FieldByName('dokumanNo').AsString;
         datalar.MemDataKullaniciDokumanOku.FieldByName('sirketKod').AsString := datalar.AktifSirket;
         datalar.MemDataKullaniciDokumanOku.post;
         ado.next;
      end;
    end;
  finally
    ado.free;
  end;

end;


function OkunmayanOlayBildirimVar(user : string) : Boolean;
var
  ado : TADOQuery;
  _List_ : TStringList;
begin
 OkunmayanOlayBildirimVar := False;
 _List_ := TStringList.Create;
 try
    ado := datalar.QuerySelect(
                        'select s.tanimi, o.* from OlayBildirim o ' +
                        ' join SIRKETLER_TNM s on s.SirketKod = o.sirketKod ' +
                        ' where gorulmeTarihi is null ');

    if not ado.Eof
    Then
    begin
      OkunmayanOlayBildirimVar := True;
      datalar.MemDataOlayBildirimOku.Active := False;
      datalar.MemDataOlayBildirimOku.Active := True;
      while not ado.Eof do
      begin
         datalar.MemDataOlayBildirimOku.Append;
         datalar.MemDataOlayBildirimOku.FieldByName('id').AsString := ado.FieldByName('id').AsString;
         datalar.MemDataOlayBildirimOku.FieldByName('sirketKod').AsString := ado.FieldByName('tanimi').AsString;
         datalar.MemDataOlayBildirimOku.FieldByName('aciklama').AsString := ado.FieldByName('aciklama').AsString;
         datalar.MemDataOlayBildirimOku.FieldByName('Tarih').AsDateTime := ado.FieldByName('Tarih').AsDateTime;
         datalar.MemDataOlayBildirimOku.post;
         ado.next;
      end;
    end;
  finally
    ado.free;
  end;

end;

procedure DokumanOku(DokumanID,rev,DokumanNo : string ; Open : Boolean = True);
var
  Blob : TAdoBlobStream;
  TopluDataset : TDataSetKadir;
 // Dataset : TADOQuery;
begin
    // DurumGoster(True,False,'D�k�man  Y�kleniyor , L�tfen Bekleyiniz');

     try

     //  Dataset := datalar.QuerySelect('select * from SKS_Dokumanlar where sirketKod = ' + QuotedStr('000005') +
      //                                ' and id = ' + QuotedStr(DokumanID));



       if //Dataset.FieldByName('PDFVar').AsInteger
          2= 1
       then begin
         sql := 'select isnull(DR.PDF,D.PDF) PDF from SKS_Dokumanlar D ' +
                                       ' left join (Select top 1 dokumanid,PDF from SKS_DokumanlarRev where dokumanid = ' + DokumanID +
                                       ' order by rev desc) DR on DR.dokumanid = D.id ' +
                                       ' where id = ' + QuotedStr(DokumanID);
         DokumanAc(
                   datalar.QuerySelect(sql),
                                       'PDF',
                   DokumanNo+'_PDF',True,'PDF')

       end
       else
       begin

           TopluDataset.Dataset0 := datalar.ADO_aktifSirketLogo;
           TopluDataset.Dataset1 := datalar.ADO_AktifSirket;
           sql := 'select *,DK.tanimi KapsamAdi,DT.tanimi TurAdi from SKS_Dokumanlar D' +
                ' join SKS_DokumanKapsamlari DK on DK.kod = D.Kapsam ' +
                ' join SKS_DokumanTurleri DT on DT.kod = D.tur ' +
                ' left join SKS_DokumanlarRev DR on DR.dokumanid = D.id'+ // and DR.aktif = 1' +
                ' where D.id = ' + QuotedStr(DokumanID) + ' and DR.rev = ' + QuotedStr(rev) +
                ' and sirketKod = ' + QuotedStr(datalar.AktifSirket);

           TopluDataset.Dataset2 := datalar.QuerySelect(sql);


           PrintYapDokuman(DokumanNo +
            ifThen(DokumanID <> '',
            '_' + rev,''),
                    DokumanID ,
                    inttoStr(TagfrmSKS_YeniDokuman) ,TopluDataset,pTReadOnly);

     end;
     finally
       //Dataset.Free;
      //  DurumGoster(False,False,'D�k�man  Y�kleniyor , L�tfen Bekleyiniz');
     end;
end;



procedure DokumanAc(Dataset : Tdataset;fieldName : string;fileName : string; Open : Boolean = True ; DokumanTip : string = 'rtf');
var
  Blob : TAdoBlobStream;
begin
    if DokumanTip = ''
    then
    try
    // id := Dataset.FieldByName('id').AsString;
     DokumanTip := Dataset.FieldByName('DokumanTip').AsString;
    except
    end;

    if Dataset.FieldByName(fieldName).AsVariant <> null
    then  begin
         Blob := TADOBlobStream.Create((Dataset.FieldByName(fieldName) as TBlobField), bmRead);
        try
         // filename := filename;
         try
          if FileExists(filename+'.'+DokumanTip) then DeleteFile(filename+'.'+DokumanTip);
         except
         end;

          Blob.SaveToFile(filename+'.'+DokumanTip);
        finally
          Blob.Free;
        end;

        sleep(1000);

        if open
        then
         ShellExecute(0, 'open', PChar(filename+'.'+DokumanTip), nil, nil, SW_SHOWNORMAL);
    end;
end;

procedure DokumanYukle(Dataset : Tdataset;field : string;fielName : string;maxSize : longint = 60000000 ; DT : Boolean = True);
var
  Blob : TADOBlobStream;
  dosyaTip : string;
  dosyaBoyutu : integer;
  myFile : File of Word;
begin

    if dataset.Eof then exit;
    
      dosyaBoyutu := myFileSize(fielName);
      if dosyaBoyutu > maxSize then
      begin
        ShowMessageSkin('Dosya Y�kleme Hatas�','Y�klenebilecek Max Dosya Boyutu : ' + floattostr(maxSize) + ' Kb',
                        inttostr(dosyaBoyutu) + ' Kb Boyutlu Dosya Y�klenemez','info');
        exit;
      end;

      dosyaTip := ExtractFileExt(fielName);
      dosyaTip := UpperCase(StringReplace(dosyaTip,'.','',[rfReplaceAll]));
      Dataset.Edit;
    try
      Blob := TADOBlobStream.Create(TBlobField(Dataset.FieldByName(field)),bmwrite);
      try
        Blob.LoadFromFile(fielName);
        Blob.Position := 0;
        TBlobField(Dataset.FieldByName(field)).LoadFromStream(Blob);
        if DT = True
        then
         Dataset.FieldByName('DokumanTip').AsString := dosyaTip;
        Blob.Free;
        Dataset.Post;
      except
        Dataset.Cancel;
      end;
    except
      Dataset.Cancel;
      raise;
    end;
end;

procedure DokumanYuklePDF(Dataset : Tdataset;field : string;fielName : string;maxSize : longint = 60000000);
var
  Blob : TADOBlobStream;
  dosyaTip : string;
  dosyaBoyutu : integer;
  myFile : File of Word;
begin

      if dataset.Eof then exit;

      dosyaTip := ExtractFileExt(fielName);
      dosyaTip := UpperCase(StringReplace(dosyaTip,'.','',[rfReplaceAll]));
    //  if dosyaTip <> 'PDF' then exit;

      dosyaBoyutu := myFileSize(fielName);

      if dosyaBoyutu > maxSize then
      begin
        ShowMessageSkin('Dosya Y�kleme Hatas�','Y�klenebilecek Max Dosya Boyutu : ' + floattostr(maxSize) + ' Kb',
                        inttostr(dosyaBoyutu) + ' Kb Boyutlu Dosya Y�klenemez','info');
        exit;
      end;

      Dataset.Edit;
    try
      Blob := TADOBlobStream.Create(TBlobField(Dataset.FieldByName(field)),bmwrite);
      try
        Blob.LoadFromFile(fielName);
        Blob.Position := 0;
        TBlobField(Dataset.FieldByName(field)).LoadFromStream(Blob);
        Dataset.FieldByName('DosyaTip').AsString := dosyaTip;
        Blob.Free;
        Dataset.Post;
        ShowMessageSkin('Dosya Y�klendi','','','info');
      except on e : exception do
        begin
          Dataset.Cancel;
          ShowMessageSkin('Dosya Y�kleme Hatas�',e.Message,'','info');
        end;
      end;
      except on e : exception do
        begin
          Dataset.Cancel;
          ShowMessageSkin('Dosya Y�kleme Hatas�',e.Message,'','info');
          raise;
        end;
    end;
end;


procedure HesapIsle(BorcHesap,AlacakHesap,Aciklama : string ; Tutar : Double ; Tarih,cek,vadeTarihi,evrakTipi,evrakNo,cekdurum,cekId : string );
var
 Sql : string;
begin
   BeginTrans (datalar.ADOConnection2);
   try
     sql := 'exec sp_FaturaTahsilat ' +
                       QuotedStr(BorcHesap) + ',' +
                       QuotedStr(AlacakHesap) + ',' +
                       floattostr(Tutar) + ',' +
                       QuotedStr(Aciklama) + ',' +
                       Tarih + ',' +
                       QuotedStr(cek) + ',' +
                       ifThen(vadeTarihi='',QuotedStr(vadeTarihi),vadeTarihi)  + ',' +
                       ifThen(cek = 'E','2',ifThen(AlacakHesap = '1','5','3')) + ',' +
                       QuotedStr(evrakNo) + ',' +
                       QuotedStr(cekdurum) + ',' +
                       QuotedStr(cekId) + ',' +
                       QuotedStr(datalar.AktifSirket);

     datalar.QueryExec('set nocount on ' +  Sql + ' set nocount off ');

     CommitTrans (datalar.ADOConnection2);
   except on e : Exception do
    begin
     RollbackTrans (datalar.ADOConnection2);
     ShowMessageSkin(e.Message,'','','info');
    end;
   end;

end;

procedure HesapIsleOdeme(BorcHesap,AlacakHesap,Aciklama : string ; Tutar : Double ; Tarih,cek,vadeTarihi,evrakTipi,evrakNo,cekdurum,cekId : string );
var
 Sql : string;
begin
   BeginTrans (datalar.ADOConnection2);
   try
     sql := 'exec sp_FaturaOdeme ' +
                       QuotedStr(BorcHesap) + ',' +
                       QuotedStr(AlacakHesap) + ',' +
                       floattostr(Tutar) + ',' +
                       QuotedStr(Aciklama) + ',' +
                       Tarih + ',' +
                       QuotedStr(cek) + ',' +
                       ifThen(vadeTarihi='',QuotedStr(vadeTarihi),vadeTarihi)  + ',' +
                       ifThen(cek = 'E','2',ifThen(AlacakHesap = '1','5','3')) + ',' +
                       QuotedStr(evrakNo) + ',' +
                       QuotedStr(cekdurum) + ',' +
                       QuotedStr(cekId) + ',' +
                       QuotedStr(datalar.AktifSirket);

     datalar.QueryExec('set nocount on ' +  Sql + ' set nocount off ');

     CommitTrans (datalar.ADOConnection2);
   except on e : Exception do
    begin
     RollbackTrans (datalar.ADOConnection2);
     ShowMessageSkin(e.Message,'','','info');
    end;
   end;

end;

procedure StretchImage(var Image1: TImage; StretchType: Byte; NewWidth, NewHeight: Word);
var
  CompressedImage: TImage;
  Oran, OranW, OranH: Real;
begin
  if Image1.Picture.Graphic<>nil then
  begin
    if (Image1.Picture.Graphic.Width >300) or (Image1.Picture.Graphic.Height>300) then
    begin
    //    ShowMessage('Geni�lik: '+IntToStr(Image1.Picture.Graphic.Width)+'  Y�kseklik: '+IntToStr(Image1.Picture.Graphic.Height));
      CompressedImage := TImage.Create(nil);
      try
        if StretchType = stBuyukseKucult then
        begin
          if (Image1.Picture.Graphic.Width>newWidth) or
             (Image1.Picture.Graphic.Height>NewHeight) then
          begin
            OranW:=NewWidth/Image1.Picture.Graphic.Width;
            OranH:=NewHeight/Image1.Picture.Graphic.Height;
            if OranW>OranH then Oran:=OranH else Oran:=OranW;
            //\\ JCL Graphics ten dolay� iptal
            Stretch(Round(Image1.Picture.Graphic.Width*Oran),
                    Round(Image1.Picture.Graphic.Height*Oran),
                    rfBell, 1, Image1.Picture.Graphic, CompressedImage.Picture.Bitmap);
            Image1.Picture.Bitmap.Assign(CompressedImage.Picture.Bitmap);
          end;
        end else
        begin
          if StretchType=stKucukseBuyult then
          begin
            if (Image1.Picture.Graphic.Width<NewWidth) or
               (Image1.Picture.Graphic.Height<NewHeight) then
            begin
              OranW:=NewWidth/Image1.Picture.Graphic.Width;
              OranH:=NewHeight/Image1.Picture.Graphic.Height;
              if OranW>OranH then Oran:=OranH else Oran:=OranW;
              Stretch(Round(Image1.Picture.Graphic.Width*Oran),
                      Round(Image1.Picture.Graphic.Height*Oran),
                      rfBell, 1, Image1.Picture.Graphic, CompressedImage.Picture.Bitmap);
              Image1.Picture.Bitmap.Assign(CompressedImage.Picture.Bitmap);
            end;
          end else
          begin
            if StretchType=stHerDurumdaStretch then
            begin
              OranW:=NewWidth/Image1.Picture.Graphic.Width;
              OranH:=NewHeight/Image1.Picture.Graphic.Height;
              if OranW>OranH then Oran:=OranH else Oran:=OranW;
              Stretch(Round(Image1.Picture.Graphic.Width*Oran),
                      Round(Image1.Picture.Graphic.Height*Oran),
                      rfBell, 1, Image1.Picture.Graphic, CompressedImage.Picture.Bitmap);
              Image1.Picture.Bitmap.Assign(CompressedImage.Picture.Bitmap);

            end;
          end;
        end;
      finally
        CompressedImage.Free;
      end;
      // ShowMessage('K���lt�ld� Geni�lik: '+IntToStr(Image1.Picture.Bitmap.Width)+'  Y�kseklik: '+IntToStr(Image1.Picture.Bitmap.Height));
    end;
  end;
end;

procedure StretchImage(var Image1: TcxImage; StretchType: Byte; NewWidth, NewHeight: Word);
var
  CompressedImage: TImage;
  CompressedcxImage : TcxImage;
  Oran, OranW, OranH: Real;
begin
  if Image1.Picture.Graphic<>nil then
  begin
    if (Image1.Picture.Graphic.Width >300) or (Image1.Picture.Graphic.Height>300) then
    begin
    //    ShowMessage('Geni�lik: '+IntToStr(Image1.Picture.Graphic.Width)+'  Y�kseklik: '+IntToStr(Image1.Picture.Graphic.Height));
      CompressedImage := TImage.Create(nil);

      try
        if StretchType = stBuyukseKucult then
        begin
          if (Image1.Picture.Graphic.Width>newWidth) or
             (Image1.Picture.Graphic.Height>NewHeight) then
          begin
            OranW:=NewWidth/Image1.Picture.Graphic.Width;
            OranH:=NewHeight/Image1.Picture.Graphic.Height;
            if OranW>OranH then Oran:=OranH else Oran:=OranW;
            //\\ JCL Graphics ten dolay� iptal
            Stretch(Round(Image1.Picture.Graphic.Width*Oran),
                    Round(Image1.Picture.Graphic.Height*Oran),
                    rfBell, 1, Image1.Picture.Graphic, CompressedImage.Picture.Bitmap);
            Image1.Picture.Bitmap.Assign(CompressedImage.Picture.Bitmap);
          end;
        end else
        begin
          if StretchType=stKucukseBuyult then
          begin
            if (Image1.Picture.Graphic.Width<NewWidth) or
               (Image1.Picture.Graphic.Height<NewHeight) then
            begin
              OranW:=NewWidth/Image1.Picture.Graphic.Width;
              OranH:=NewHeight/Image1.Picture.Graphic.Height;
              if OranW>OranH then Oran:=OranH else Oran:=OranW;
              Stretch(Round(Image1.Picture.Graphic.Width*Oran),
                      Round(Image1.Picture.Graphic.Height*Oran),
                      rfBell, 1, Image1.Picture.Graphic, CompressedImage.Picture.Bitmap);
              Image1.Picture.Bitmap.Assign(CompressedImage.Picture.Bitmap);
            end;
          end else
          begin
            if StretchType=stHerDurumdaStretch then
            begin
              OranW:=NewWidth/Image1.Picture.Graphic.Width;
              OranH:=NewHeight/Image1.Picture.Graphic.Height;
              if OranW>OranH then Oran:=OranH else Oran:=OranW;
              Stretch(Round(Image1.Picture.Graphic.Width*Oran),
                      Round(Image1.Picture.Graphic.Height*Oran),
                      rfBell, 1, Image1.Picture.Graphic, CompressedImage.Picture.Bitmap);
              Image1.Picture.Bitmap.Assign(CompressedImage.Picture.Bitmap);

            end;
          end;
        end;
      finally
        CompressedImage.Free;
      end;
      // ShowMessage('K���lt�ld� Geni�lik: '+IntToStr(Image1.Picture.Bitmap.Width)+'  Y�kseklik: '+IntToStr(Image1.Picture.Bitmap.Height));
    end
    else
    begin
             CompressedImage := TImage.Create(nil);
             try
                OranW:=NewWidth/Image1.Picture.Graphic.Width;
                OranH:=NewHeight/Image1.Picture.Graphic.Height;
                if OranW>OranH then Oran:=OranH else Oran:=OranW;
                Stretch(Round(Image1.Picture.Graphic.Width*Oran),
                        Round(Image1.Picture.Graphic.Height*Oran),
                        rfBell, 1, Image1.Picture.Graphic, CompressedImage.Picture.Bitmap);
                Image1.Picture.Bitmap.Assign(CompressedImage.Picture.Bitmap);
              finally
                CompressedImage.Free;
              end

    end;
  end;
end;


function FaturaSilIptal(FID : string) : Boolean;
var
  sql : string;
begin
  BeginTrans (datalar.ADOConnection2);
  try
   sql := 'update faturaHareket set iptal = 1 where faturaId = ' + FID;
   datalar.QueryExec(sql);
   sql := 'update faturalar set iptal = 1 where sira = ' + FID;
   datalar.QueryExec(sql);
   CommitTrans (datalar.ADOConnection2);
   ShowMessageSkin('Fatura �ptal Edildi','','','info');
   FaturaSilIptal := True;
  except on e : Exception do
   begin
    RollbackTrans (datalar.ADOConnection2);
    ShowMessageSkin(E.Message,'','','info');
    FaturaSilIptal := False;
   end;
  end;
end;



function mailGonder (alici , konu , mesaj : string ; filename : string = '' ; displayName : string = ''): string;
var
  Mail : TEmailSend;
  dllHandle: Cardinal;
  username,password,mailserver,SendTip,SSL : string;
  port : integer;
  ss : PWideChar;
  sonucStr : string;
  Sonuc : TStringList;
begin
  mailserver := datalar.SMTPSunucu;
  username := datalar.SMTPUserName;
  password := datalar.SMTPPassword;
  port := strToint(ifThen(datalar.SMTPPort = '','25',datalar.SMTPPort));
  SendTip := ifThen(datalar.SMTPSEndTip = '','SMTP',datalar.SMTPSEndTip);
  SSL := datalar.SMTPSSL;

  ss := '';
  dllHandle := LoadLibrary(LIB_DLL);
  try
    if dllHandle = 0 then
      exit;

    @Mail := findMethod(dllHandle, 'EMailSend');
    if addr(Mail) <> nil then

    Mail(ss,PWideChar(mailserver),PWideChar(username),PWideChar(password),
         PWideChar(alici),PWideChar(konu),
         PWideChar(mesaj),PWideChar(filename),PWideChar(displayName),port,
         PWideChar(SSL),PWideChar(SendTip));

    mailGonder := ss;

    sonucStr := ss;
    Sonuc := TStringList.Create;
    try
      ExtractStrings(['|'],[],PWideChar(sonucStr),Sonuc);

      if sonuc[0] = '0000' then
      begin
        mailGonder := '0000';

      end
      else
        ShowMessageSkin(Sonuc[0],Sonuc[1],'','info');


      if not Assigned(Mail) then
        raise Exception.Create(LIB_DLL + ' i�ersinde EMailSend bulunamad�!');
    finally
      sonuc.Free;
    end;
  finally
    FreeLibrary(dllHandle);
  end;
end;

function isgKurulEkibiMailBilgileri(id : string) : string;
var
  sql: string;
  ado: TADOQuery;
  Dataset : TDataset;
begin
  isgKurulEkibiMailBilgileri := '';
//  ado := TADOQuery.Create(nil);
  try
//    ado.Connection := datalar.ADOConnection2;
    sql := 'sp_isgKurulEkibiMailBilgileri ' +  QuotedStr(id);
    isgKurulEkibiMailBilgileri := datalar.QuerySelect(sql).Fields[0].AsString;
  finally
//   ado.free;
  end;

end;

function isgKurulEkibiTelBilgileri(id : string) : string;
var
  sql: string;
  ado: TADOQuery;
  Dataset : TDataset;
begin
  isgKurulEkibiTelBilgileri := '';
//  ado := TADOQuery.Create(nil);
  try
//    ado.Connection := datalar.ADOConnection2;
    sql := 'sp_isgKurulEkibiMailBilgileri ' +  QuotedStr(id);
    isgKurulEkibiTelBilgileri := datalar.QuerySelect(sql).Fields[1].AsString;
  finally
//   ado.free;
  end;

end;


function isgRDSEkibiMailBilgileri(id : string) : string;
var
  sql: string;
  ado: TADOQuery;
  Dataset : TDataset;
begin
  isgRDSEkibiMailBilgileri := '';
//  ado := TADOQuery.Create(nil);
  try
//    ado.Connection := datalar.ADOConnection2;
    sql := 'sp_isgRDSEkibiMailBilgileri ' +  QuotedStr(id);
    isgRDSEkibiMailBilgileri := datalar.QuerySelect(sql).Fields[0].AsString;
  finally
//   ado.free;
  end;

end;



function FirmaBilgileri(sirketKodu : string ; subeKodu  : string = '00') : TFirmaBilgi;
var
  sql: string;
  ado: TADOQuery;
  Dataset : TDataset;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;
    sql :=
      'select yetkili,yetkilimail,yetkiliTel from SIRKETLER_TNM ' +
      ' where SirketKod = ' + QuotedStr(sirketKodu);
    datalar.QuerySelect(ado, sql);
    FirmaBilgileri.Yetkili := ado.Fields[0].AsString;
    FirmaBilgileri.YetkiliMail := ado.Fields[1].AsString;
    FirmaBilgileri.YetkiliMobil := ado.Fields[2].AsString;


    sql := 'declare @mail varchar(max) ' +
           ' set @mail = ''''' +
           'select @mail = case when isnull(eMail,'''') <> '''' then  @mail + case when  @mail = '''' then '''' else '','' end  + eMail else @mail end  from SIRKET_SUBE_EKIP SE ' +
           ' where SE.SirketKod = '+ QuotedStr(sirketKodu) +
           ' and SubeKod = ' + QuotedStr(subeKodu) + ' and SE.ISGEkipId = 1 ' +
           ' select @mail ' ;

    datalar.QuerySelect(ado,sql);
    FirmaBilgileri.ilgiliMailBilgileri := ado.Fields[0].AsString;


    sql := 'declare @mail varchar(max) ' +
           ' set @mail = ''''' +
           'select @mail = case when isnull(eMail,'''') <> '''' then  @mail + case when  @mail = '''' then '''' else '','' end  + eMail else @mail end  from ISGFirmaYetkilileri SE ' +
           ' where SE.SirketKod = '+ QuotedStr(sirketKodu)+
           ' select @mail ' ;
    datalar.QuerySelect(ado,sql);
    FirmaBilgileri.firmaYetkiliMailBilgileri := ado.Fields[0].AsString;

    sql := 'declare @mail varchar(max) ' +
           ' set @mail = ''''' +
           'select distinct @mail = case when isnull(ePosta,'''') <> '''' then  @mail + case when  @mail = '''' then '''' else '','' end  + ePosta else @mail end  from SIRKET_SUBE_TNM  SE ' +
           ' join IGU I on I.kod = SE.IGU ' +
           ' where SE.SirketKod = '+ QuotedStr(sirketKodu)+
           ' select @mail ' ;
    datalar.QuerySelect(ado,sql);
    FirmaBilgileri.IGUMail := ado.Fields[0].AsString;


    sql := 'declare @mail varchar(max) ' +
           ' set @mail = ''''' +
           'select distinct @mail = case when isnull(ePosta,'''') <> '''' then  @mail + case when  @mail = '''' then '''' else '','' end  + ePosta else @mail end  from SIRKET_SUBE_TNM  SE ' +
           ' join DoktorlarT DR on Dr.kod = SE.subeDoktor ' +
           ' where SE.SirketKod = '+ QuotedStr(sirketKodu)+
           ' select @mail ' ;
    datalar.QuerySelect(ado,sql);
    FirmaBilgileri.doktorMail := ado.Fields[0].AsString;




  finally
    ado.Free;
  end;
end;

procedure DBUpdate;
begin
   Application.CreateForm(TfrmUpdate, frmUpdate);
   try
     frmUpdate.ShowModal;
   finally
     FreeAndNil (frmUpdate);
   end;
end;

procedure PersonelTetkikIstemleri(tarih,tarih2 : string);
var
  sql : string;
  ado : TADOQuery;
  Dataset : TDataSetKadir;
begin
  if mrYes = ShowPopupForm('Personel Tetkik �stemler',ptPersonelTetkikleri,'')
  Then Begin
    ado := TADOQuery.Create(nil);
    try
      ado.Connection := datalar.ADOConnection2;
      sql :=
            'select p.*,h.code,h.name1,h.TARIH,p.sirketKod,t.tanimi from hareketler h  ' +
            ' join personelKart p on p.dosyaNo = h.dosyaNo ' +
            ' join SIRKETLER_TNM t on p.sirketKod = t.sirketKod ' +
            ' where h.TARIH >= ' + QuotedStr(tarihal(datalar.TarihAralik.ilkTarih)) +
            ' and h.TARIH <= ' + QuotedStr(tarihal(datalar.TarihAralik.sonTarih)) +
            ' and h.Tip in (''02'',''03'') ' +
            ' order by p.sirketKod,dosyaNo,h.tip,TARIH ';

      datalar.QuerySelect(ado,sql);
      Dataset.Dataset0 := ado;

      PrintYap('051','\Personel �stemleri',inttoStr(TagfrmPopup) ,Dataset,pTNone);

    finally
      ado.Free;
    end;


  End;

end;


procedure YeniRecete(islem: Integer ; _dosyaNo_,_gelisNo_,_MuayeneProtokolNo_ : string);
var
    sql : string;
    ado : TADOQuery;
    bBasari : Boolean;
begin
  datalar.YeniRecete.doktor := datalar.doktorKodu;
  datalar.YeniRecete.doktorAdi := doktorAdi(datalar.doktorKodu);
  datalar.YeniRecete.protokolNo := _MuayeneProtokolNo_; //EnsonSeansProtokolNo(_firmaKod_,_sube_);
  datalar.YeniRecete.Tarih := datetostr(date);
  datalar.YeniRecete.ReceteTuru := '1';
  datalar.YeniRecete.ReceteAltTuru := '1';

  if mrYes <> ShowPopupForm('Yeni Re�ete',islem) then Exit;
  if islem <> ReceteYeni then Exit;
  bBasari := False;
  BeginTrans (datalar.ADOConnection2);
  try
    ado := TADOQuery.Create(nil);
    try
      ado.Connection := datalar.ADOConnection2;
      sql := 'insert into Recete (dosyaNo,gelisNo,tarih,ReceteTur,ReceteAltTur,doktor,ProtokolNo,ereceteNo,WanIP) ' +
             ' values ( ' + QuotedStr(_dosyaNo_) + ',' +
                            _gelisNo_ + ',' +
                            QuotedStr(NoktasizTarih(datalar.YeniRecete.Tarih)) + ',' +
                            QuotedStr(datalar.YeniRecete.ReceteTuru) + ',' +
                            QuotedStr(datalar.YeniRecete.ReceteAltTuru) + ',' +
                            QuotedStr(datalar.YeniRecete.doktor) + ',' +
                            QuotedStr(datalar.YeniRecete.protokolNo) + ',' +
                            QuotedStr('0000') + ',' +
                            QuotedStr(datalar.WanIp) + ') select @@IDENTITY id';
      datalar.QuerySelect(ado,sql);

      sql := 'insert into ReceteTani (receteId,TaniKodu,Tani) ' +
             'select '+ ado.Fields[0].AsString +' ,ICD_KODU,ICD_NAME from anamnez_ICD where dosyaNO = ' + QuotedStr(_dosyaNo_) + ' and gelisNo = ' + _gelisNo_;
      datalar.QueryExec(sql);
      bBasari := True;
    finally
      ado.free;
    end;
  finally
    if bBasari then
      CommitTrans (datalar.ADOConnection2)
     else
      RollbackTrans (datalar.ADOConnection2);
  end;
end;



function PersonelPeriyodikTetkikIstemleri(grup : string) : string;
var
  txtTetkikIstem : TcxCheckGroupKadir;
  tetkikler : string;
begin
  txtTetkikIstem := TcxCheckGroupKadir.Create(nil);
  try
    PersonelPeriyodikTetkikIstemleri := '';
    txtTetkikIstem.Properties.EditValueFormat := cvfStatesString;
    txtTetkikIstem.Alignment := alCenterCenter;
    txtTetkikIstem.Conn := Datalar.ADOConnection2;
    txtTetkikIstem.TableName := 'TetkikIstemSablonItem';
    txtTetkikIstem.ValueField := 'id';
    txtTetkikIstem.DisplayField := 'tanimi';
    txtTetkikIstem.Filter := ' SablonGrupKod = ' + grup;
    txtTetkikIstem.SelectAll;

    tetkikler := txtTetkikIstem.getItemString;

    PersonelPeriyodikTetkikIstemleri := tetkikler;

  finally
   txtTetkikIstem.Free;
  end;
end;

function DoktorReceteMedulaGonderimTip(doktor : string) : integer;
var
  sql : string;
  ado : TADOQuery;
begin
   DoktorReceteMedulaGonderimTip := 0;
   ado := TADOQuery.Create(nil);
   try
     ado.Connection := datalar.ADOConnection2;
     sql := 'select medulaGonderimTipi from doktorlarT '  +
            'where kod = ' + QuotedStr(doktor);
     datalar.QuerySelect(ado,sql);
     DoktorReceteMedulaGonderimTip := ado.Fields[0].AsInteger;
   finally
     ado.Free;
   end;
end;

function SirketSubeTehlikeSinifi(Sirket,Sube : string) : string;
var
  sql : string;
  ado : TADOQuery;
begin
   SirketSubeTehlikeSinifi := '';
   ado := TADOQuery.Create(nil);
   try
     ado.Connection := datalar.ADOConnection2;
     sql := 'select tehlikeSinifi from SIRKET_SUBE_TNM where sirketKod = ' + QuotedStr(Sirket) +
            ' and SubeKod = ' + QuotedStr(Sube);
     datalar.QuerySelect(ado,sql);
     SirketSubeTehlikeSinifi := ado.Fields[0].AsString;
   finally
     ado.Free;
   end;
end;


function WebErisimBilgileriFirma(sirketKod : string) : string;
var
  sql : string;
begin
   sql := 'select  WF.id,WF.Value,W.Erisim_Tanimi,W.SLK,W.SLB,W.Sira,W.SLB_Tanimi,W.ValueTip,W.ValueObje,W.ValueObjeValues ' +
          'from WebServisErisimBilgileri_Firma WF ' +
          'join WebServisErisimBilgileri W on W.id = WF.id ' +
          'where WF.sirketKod = ' + QuotedStr(sirketKod);

    Datalar.ServisErisimBilgileriFirma.Active := False;
    Datalar.ServisErisimBilgileriFirma.Active := True;
    Datalar.ServisErisimBilgileriFirma.LoadFromDataSet(datalar.QuerySelect(sql));
end;

function WebErisimBilgiFirma(slk,slb : string) : string;
begin
   WebErisimBilgiFirma := '';
   if Datalar.ServisErisimBilgileriFirma.Locate('slk;slb',VarArrayOf([slk,slb]),[]) = True
   Then
     WebErisimBilgiFirma := Datalar.ServisErisimBilgileriFirma.Fieldbyname('Value').AsString
   Else
     WebErisimBilgiFirma := '';
end;

function WebErisimBilgi(slk,slb : string) : string;
begin
   WebErisimBilgi := '';
   if Datalar.ServisErisimBilgileri.Locate('slk;slb',VarArrayOf([slk,slb]),[]) = True
   Then
     WebErisimBilgi := Datalar.ServisErisimBilgileri.Fieldbyname('Value').AsString
   Else
     WebErisimBilgi := '';
end;

function WebErisimBilgiOrtak(slk,slb : string) : string;
begin
   WebErisimBilgiOrtak := '';
   if Datalar.ServisErisimBilgileriOrtak.Locate('SLK;SLB',VarArrayOf([slk,slb]),[]) = True
   Then
    WebErisimBilgiOrtak := Datalar.ServisErisimBilgileriOrtak.Fieldbyname('Value').AsString;
end;


procedure LisansUzat;
begin
  Application.CreateForm(TfrmLisansBilgisi, frmLisansBilgisi);
  try
    frmLisansBilgisi.LisansBilgisi;
    frmLisansBilgisi.ShowModal;
  finally
    FreeAndNil (frmLisansBilgisi);
  end;
end;

procedure OnlineDestekOpen;
var
 filename : string;
 par : string;
 Handle : HWND;
begin
  filename := 'C:\NoktaV3\AlpemixCMX.exe';
  par :=  'Mavinoktabilgitek ' + datalar.AlpemixGrupAdi + ' ' + datalar.AlpemixGrupParola  + ' ' +  StringReplace((copy(datalar.AktifSirketAdi,1,15) + ' - ' + datalar.username),' ','_',[rfReplaceAll]);
  ShellExecute(Handle,'open', pwidechar(filename),
                pwidechar(par), nil, SW_SHOWNORMAL);
end;

procedure DestekTalep;
begin
  Application.CreateForm(TfrmDestekSorunBildir, frmDestekSorunBildir);
  try
    frmDestekSorunBildir.ShowModal;
  finally
    FreeAndNil (frmDestekSorunBildir);
  end;
end;


procedure ExceldenLabSonucYukle(t1,t2 : String ; progres : TcxProgressBar ; txtLog : Tcxmemo);
var
  dosya, min, max : string;
  sonsatir , x : integer;
  liste ,sql : string;
  ad,soyadi,tc , testid , itemid , sonuc , sonucTitre , _F_  , testKod,testad ,dosyaNo,gelisNo,id ,tip : string;
  ado : TADOQuery;
  openDialog1 : TOpenDialog;
  v ,sayfa : variant;
begin
  ado := TADOQuery.Create(nil);
  ado.Connection := datalar.ADOConnection2;
  openDialog1 := TOpenDialog.Create(nil);
  try
  openDialog1.execute;
  dosya := opendialog1.filename;

  v := CreateOleObject('Excel.Application');
  try
    v.Workbooks.Open(dosya);
    v.visible := true;//Exceli acip verileri goster
    sayfa := v.workbooks[1].worksheets[1];
  except
    v.DisplayAlerts := False;  //Excel mesajlar�n� g�r�nteleme
    v.Quit;
    v := Unassigned;
  end;

 try
   sonsatir := v.Range[Char(96 + 1) + IntToStr(65536)].end[3].Rows.Row;
   liste := sayfa.cells[1,2];

   progres.Properties.Max := sonsatir-1;
   progres.Position := 0;

   for x := 2 to sonsatir do
   begin
       tc := sayfa.cells[x,1];
       itemid := sayfa.cells[x,4];
       testid := sayfa.cells[x,11];
       sonuc := sayfa.cells[x,6];
       sonucTitre := sayfa.cells[x,6];

       ad := sayfa.cells[x,2];
       soyadi := sayfa.cells[x,3];
       testad := sayfa.cells[x,10];
       tip := sayfa.cells[x,12];
       tip := StringReplace(tip,'�','C',[rfReplaceAll]);

       Application.ProcessMessages;
       dosyaNo := '0';
       gelisNo := '0';
       TCdenDosyaNoGelisNo(tc,t1,t2,dosyaNo,gelisNo,id);

       testKod := KodEslestirNormalDeger(testid,'0',min,max, _F_);
       _F_ := tip;

       txtLog.Lines.Add(tc + ' ' +
                       ad +' '+soyadi + '/ ' +
                       dosyaNO + ' ' + gelisNo + ' - /  ' +
                       testKod + ' ' + testid +' '+
                       testad + ' - ' +
                       sonuc);


      if testKod <> ''
      Then Begin
         if (testKod = '907440') or
            (testKod = '906610') or
            (testKod = '906630') or
            (testKod = '906660')
         Then Begin
             Sonuc := StringReplace(Sonuc,'Poz','POZ',[rfReplaceAll]);
             Sonuc := StringReplace(Sonuc,'Neg','NEG',[rfReplaceAll]);
             Sonuc := StringReplace(Sonuc,'>','',[rfReplaceAll]);
             Sonuc := StringReplace(Sonuc,'<','',[rfReplaceAll]);
             Sonuc := StringReplace(Sonuc,',','.',[rfReplaceAll]);

             if (pos('NEG',Sonuc) > 0)
             Then sonuc := '-1'
             Else
             if (pos('POZ',Sonuc) > 0)
             Then sonuc := '1'
             Else
             sonuc := Sonuc;

             sql := 'update hareketler set Gd = ' + QuotedStr(Sonuc)  +
                      ' where onay = 1 and code = ' + QuotedStr(testKod) +  ' and tip1 = ' + QuotedStr(_F_) +
                      ' and dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNO = ' + gelisNo ;

             datalar.QueryExec(ado,sql);

             sql := 'update hareketler set islemAciklamasi = ' + QuotedStr(sonucTitre) +
                          ' where onay = 1 and code = ' + QuotedStr(testKod) + ' and dosyaNo = ' + QuotedStr(dosyaNo) +
                          ' and gelisNO = ' + gelisNo + ' and tip1 = ' + QuotedStr(_F_);
             datalar.QueryExec(ado,sql);


         end
         else begin
           Sonuc := StringReplace(Sonuc,',','.',[rfReplaceAll]);
         end;

        try
         sql := 'update hareketler set Gd = ' + QuotedStr(Sonuc)  +
                  ' where onay = 1 and code = ' + QuotedStr(testKod) +  ' and tip1 = ' + QuotedStr(_F_) +
                  ' and dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNO = ' + gelisNo ;

         datalar.QueryExec(ado,sql);

        except on e : exception do
          begin
             sql := 'update hareketler set islemAciklamasi = ' + QuotedStr(Sonuc) +
                      ' where onay = 1 and code = ' + QuotedStr(testKod) + ' and dosyaNo = ' + QuotedStr(dosyaNo) +
                      ' and gelisNO = ' + gelisNo + ' and tip1 = ' + QuotedStr(_F_);
           datalar.QueryExec(ado,sql);
           //ShowMessage(e.Message);
          end;
        end;
      end;
     progres.Position := Progres.Position + 1;
   end;

 except on e : exception do
   begin
     ShowMessageSkin(e.Message,'','','info');
   end;
 end;

 finally
   ado.free;
   openDialog1.free;
 end;



end;



procedure ExceldenUTSAlmaBildirimYukle;
var
  openD : TOpenDialog;
  dosya : string;
  sonsatir , x : integer;
begin
  openD := TOpenDialog.Create(nil);
  try
    if not openD.execute then Exit;
    dosya := openD.filename;
  finally
    openD.Free;
  end;

  v := CreateOleObject('Excel.Application');
  try
    v.Workbooks.Open(dosya);
    v.visible := true;//Exceli acip verileri goster
    sayfa := v.workbooks[1].worksheets[1];
  except
    v.DisplayAlerts := False;  //Excel mesajlar�n� g�r�nteleme
    v.Quit;
    v := Unassigned;
  end;

  sonsatir := v.Range[Char(96 + 1) + IntToStr(65536)].end[3].Rows.Row;
   (*
  for x := 2 to sonsatir do
  begin

      sql := sql + ' ' + #13 + Format(_insertPersonel_,
                                       [datalar.AktifSirket,
                                       sayfa.cells[x,1],
                                       sayfa.cells[x,2],
                                       sayfa.cells[x,3],
                                       sayfa.cells[x,4],
                                       sayfa.cells[x,5],
                                       sayfa.cells[x,6],
                                       sayfa.cells[x,7],
                                       sayfa.cells[x,8],
                                       sayfa.cells[x,9],
                                       sayfa.cells[x,10],
                                       sayfa.cells[x,11],
                                       sayfa.cells[x,12],
                                       sayfa.cells[x,13],
                                       sayfa.cells[x,15],
                                       sayfa.cells[x,16],
                                       datalar.username,
                                       sayfa.cells[x,14]]);


  end;

  *)
end;



procedure ExceldenPersonelYukle;
var
  openD : TOpenDialog;
  dosya : string;
  sonsatir : integer;
begin
  openD := TOpenDialog.Create(nil);
  try
    if not openD.execute then Exit;
    dosya := openD.filename;
  finally
    openD.Free;
  end;

  v := CreateOleObject('Excel.Application');
  try
    v.Workbooks.Open(dosya);
    v.visible := true;//Exceli acip verileri goster
    sayfa := v.workbooks[1].worksheets[1];
  except
    v.DisplayAlerts := False;  //Excel mesajlar�n� g�r�nteleme
    v.Quit;
    v := Unassigned;
  end;

  sonsatir := v.Range[Char(96 + 1) + IntToStr(65536)].end[3].Rows.Row;

  {for x := 2 to sonsatir do
  begin

      sql := sql + ' ' + #13 + Format(_insertPersonel_,
                                       [datalar.AktifSirket,
                                       sayfa.cells[x,1],
                                       sayfa.cells[x,2],
                                       sayfa.cells[x,3],
                                       sayfa.cells[x,4],
                                       sayfa.cells[x,5],
                                       sayfa.cells[x,6],
                                       sayfa.cells[x,7],
                                       sayfa.cells[x,8],
                                       sayfa.cells[x,9],
                                       sayfa.cells[x,10],
                                       sayfa.cells[x,11],
                                       sayfa.cells[x,12],
                                       sayfa.cells[x,13],
                                       sayfa.cells[x,15],
                                       sayfa.cells[x,16],
                                       datalar.username,
                                       sayfa.cells[x,14]]);


  end;{}
end;

function RegOku(dizi : string ; openKey : string = '') : Variant;
var
   reg : tregistry;
   value : Variant;
begin
   reg := Tregistry.Create;
   try
     if isnull (openKey) then openkey := 'Software\NOKTA\NOKTA';

     reg.OpenKey(openKey,True);
     try
       value := reg.ReadString(dizi);
     finally
       reg.CloseKey;
     end;
   finally
     reg.Free;
   end;
   Result := value;
end;

procedure RegYaz(dizi , diziDegeri : string ; openKey : string = '');
var
  reg : tregistry;
begin
  reg := Tregistry.Create;
  try
    if IsNull (OpenKey) then OpenKey := 'Software\NOKTA\NOKTA';
    reg.OpenKey(openKey,True);
    try
      reg.WriteString(dizi,diziDegeri);
    finally
      reg.CloseKey;
    end;
  finally
    reg.Free;
  end;
end;

procedure RegSil(dizi  : string ; openKey : string = '');
var
  reg : tregistry;
begin
  reg := Tregistry.Create;
  try
    if IsNull (OpenKey) then OpenKey := 'Software\NOKTA\NOKTA';
    reg.OpenKey(openKey,True);
    try
      reg.deletevalue(dizi);
    finally
      reg.CloseKey;
    end;
  finally
    reg.Free;
  end;
end;


function WanIp(url : string = 'http://bot.whatismyipaddress.com') : string;
begin
    try
    datalar.WanIp := (datalar.HTTP1.Get(url));
  except
    datalar.WanIp := '';
  end;
  WanIp := datalar.WanIp;
end;

procedure SMSSend(tel : string; Msj : string = '';Kisi : string ='';dosyaNo : string = '');
begin
  Application.CreateForm(TfrmSMS, frmSMS);
  try
    frmSMS.mesaj := Msj;
    frmSMS.MobilTel := tel;
    frmSMS.hasta := Kisi;
    frmSMS.dosyaNo := dosyaNo;
    frmSMS.ShowModal;
  finally
    freeandnil (frmSMS);
  end;
end;


procedure WhatsappSend(token :string ; tel : string; Msj : string = '';Kisi : string ='';dosyaNo : string = '');
begin
  Application.CreateForm(TfrmSMS, frmSMS);
  try
    frmSMS.token := token;
    frmSMS.tip := 'Whatsapp';
    frmSMS.mesaj := Msj;
    frmSMS.MobilTel := tel;
    frmSMS.hasta := Kisi;
    frmSMS.dosyaNo := dosyaNo;
    frmSMS.ShowModal;
  finally
    freeandnil (frmSMS);
  end;
end;

function SQLSelectToDataSet(Columns,Table,Where : string) : TADOQuery;
var
  sql : string;
begin
  Result := TADOQuery.Create(nil);
  try
    Result.Connection := datalar.ADOConnection2;
    sql := Format(_SqlSelect_,[Columns,Table,Where]);
    datalar.QuerySelect(Result,sql);
  except
    FreeAndNil (Result);
    raise;
  end;
end;



function GridCellToString(Grid : TcxGridDBBandedTableView; ColonName : string ; Row : integer) : Variant;
begin
  GridCellToString := '';
  if Grid.Controller.SelectedRowCount > 0
  Then Begin
    GridCellToString := vartoStr(Grid.DataController.GetValue(
      Grid.Controller.SelectedRows[Row].RecordIndex,
        Grid.DataController.GetItemByFieldName(ColonName).Index));
  End;
end;

function GridCellToString(Grid : TcxGridDBTableView; ColonName : string ; Row : integer) : Variant;
begin
  GridCellToString := '';
  if Grid.Controller.SelectedRowCount > 0
  Then Begin
    GridCellToString := vartoStr(Grid.DataController.GetValue(
      Grid.Controller.SelectedRows[Row].RecordIndex,
        Grid.DataController.GetItemByFieldName(ColonName).Index));
  End;
end;

function GridCellToDouble(Grid : TcxGridDBTableView; ColonName : string ; Row : integer) : Variant;
begin
  GridCellToDouble := null;
    GridCellToDouble := Grid.DataController.GetValue(
      Grid.Controller.SelectedRows[Row].RecordIndex,
        Grid.DataController.GetItemByFieldName(ColonName).Index);
end;


function GridCellToVariant(Grid : TcxGridDBTableView; ColonName : string ; Row : integer) : Variant;
begin
  GridCellToVariant := NUll;
  if Grid.Controller.SelectedRowCount > 0
  Then Begin
    GridCellToVariant := Grid.DataController.GetValue(
      Grid.Controller.SelectedRows[Row].RecordIndex,
        Grid.DataController.GetItemByFieldName(ColonName).Index);
  End;
end;

function GridCellToBoolean(Grid : TcxGridDBTableView; ColonName : string ; Row : integer) : Boolean;
var
  Value : String;
begin
  GridCellToBoolean := False;
  Value := VarToStr(Grid.DataController.GetValue(
      Grid.Controller.SelectedRows[Row].RecordIndex,
        Grid.DataController.GetItemByFieldName(ColonName).Index));
  if ifThen(Value = '','False',ifThen(Value = 'False','False','True')) = 'True' then GridCellToBoolean := True else GridCellToBoolean := False;
end;

procedure GridCellSetValue(Grid : TcxGridDBTableView; ColonName : string ; Row : integer ; Value : Variant);
begin
 Grid.DataController.SetValue(
        Grid.Controller.SelectedRows[Row].RecordIndex,
          Grid.DataController.GetItemByFieldName(ColonName).Index,Value);
end;

procedure TDISDoktorIDGetir(Tc : string ; var ID : integer);
var
  Cvp : DISWS.HEKIMSONUC;
  H : DISWS.HEKIM;
  sql : string;
  ado : TADOQuery;
begin
     //datalar.Login;
     ID := 0;
     datalar.DYOB.URL := DyopURL;
     try
         Cvp := (datalar.DYOB as KRIZMA_DIS_TREATMENTSERVICESoap).GETHEKIMLIST(datalar._DyobKurumKodu_,datalar._DyobSifre_,datalar._DyobServiceKodu_);
     except on e : Exception do
       begin
          ShowMessageSkin(e.Message,'','','info');
          exit;
       end;
     end;

     if Cvp.HATAVAR = True then
        ShowMessageSkin(Cvp.HATAMESAJI,'','','info');

     for H in Cvp.HEKIMLIST do
     begin
       if Tc = H.TCKIMLIK then ID := H.ID;
     end;
end;


procedure SatiriRenklendir(Grid: TAdvStringGrid; Satir, ColonSayisi: integer;
  renk: tcolor);
var
  x: integer;
begin
  for x := 0 to ColonSayisi do
  begin
    Grid.Colors[x, Satir] := renk;
  end;

end;

procedure AdoGelisEnabledMenuItem(Bar : TToolBar;Item : TMenuItem;Enabled : Boolean = True);
begin
   Item.Enabled := Enabled;
   TToolButton(Bar.FindComponent('ToolButton'+Item.Name)).Enabled := Enabled;
end;

function FindToolButton(Bar : TToolBar ; ButtonName : String) : TToolButtonKadir;
var
 I : integer;
begin
  FindToolButton := nil;
  for I := 0 to Bar.ButtonCount - 1 do
  begin
     if Bar.Buttons[I].Name = ButtonName
     then begin
       FindToolButton := TToolButtonKadir(Bar.Buttons[I]);
       Break;
     end;
  end;

end;

function GelisDuzenle(GelisBilgisi : TGelisDuzenle ; var Hata : string) : Boolean;
var
  ado : TADOQuery;
  sql : string;
begin
  ado := nil;
  try
   sql := 'update Gelisler set Tak�pNo = ' + QuotedStr (GelisBilgisi.TakipNo) + ',' +
          'BHDAT = ' + QuotedStr (tarihal(GelisBilgisi.GirisTarihi)) + ',' +
          'Doktor = ' + QuotedStr (gelisBilgisi.doktor) + ',' +
          'SERVIS = ' + QuotedStr(gelisBilgisi.BransKodu) + ',' +
          'PROTOKOLNO = ' + QuotedStr(gelisBilgisi.ProtokolNo) + ',' +
          'TEDAVITURU = ' + QuotedStr(gelisBilgisi.TedaviTuru) +
          ' where dosyaNo = ' + QuotedStr (gelisBilgisi.dosyaNo) +
          ' and gelisNo = ' + gelisBilgisi.gelisNo;
   datalar.QueryExec(ado,sql);
   Result := True;
  Except on e : Exception do
   begin
    Hata := e.Message;
    Result := false;
   end;
  end;
end;


function GelisDuzenle(GelisBilgisi : TGelisDuzenleK ; var Hata : string) : Boolean;
var
  ado : TADOQuery;
  sql , code  : string;
begin
  try
   sql := 'update Hasta_Gelisler set ' +
          'TakipNo = ' + QuotedStr (GelisBilgisi.TakipNo) + ',' +
          'BasvuruNo = ' + QuotedStr(GelisBilgisi.basvuruNo) + ',' +
          'BHDAT = ' + QuotedStr (tarihal(GelisBilgisi.GirisTarihi)) + ',' +
          'Doktor = ' + QuotedStr (gelisBilgisi.doktor) + ',' +
          'SERVIS = ' + QuotedStr(gelisBilgisi.BransKodu) + ',' +
          'PROTOKOLNO = ' + QuotedStr(gelisBilgisi.ProtokolNo) + ',' +
          'TEDAVITURU = ' + QuotedStr(gelisBilgisi.TedaviTuru) + ',' +
          'diyalizTedaviYontemi = ' + QuotedStr(gelisBilgisi.TedaviYontemi) + ',' +
         // 'Yupass = ' + QuotedStr(GelisBilgisi.Yupass) + ',' +
          'sysTakipNo = ' + QuotedStr(GelisBilgisi.sysTakipNo) + ',' +
          'Taburcu = ' + QuotedStr(GelisBilgisi.TaburcuKodu) + ',' +
          'KabulDurum = ' + GelisBilgisi.KabulDurum +
          ' where dosyaNo = ' + QuotedStr (gelisBilgisi.dosyaNo) +
          ' and gelisNo = ' + gelisBilgisi.gelisNo;
   datalar.QueryExec(sql);


   if GelisBilgisi.DiyalizTedaviYonetimiDegisti = True
   then begin
     if mrYEs = ShowMessageSkin('Diyaliz Tedavi Y�ntemini De�i�tirdiniz','Medulaya Kay�tl� Olmayan Seanslar De�i�sin mi?','','msg')
     then begin
         code := datalar.QuerySelect('select butKodu from Diyaliz_Tipleri where kod = ' + QuotedStr(gelisBilgisi.TedaviYontemi)).Fieldbyname('butKodu').asstring;

         sql := 'update hareketler set code = ' + QuotedStr(code) +
                ' where dosyaNo = ' + QuotedStr (gelisBilgisi.dosyaNo) +
                ' and gelisNo = ' + gelisBilgisi.gelisNo +
                ' and Tip = ''S'' ' +
                ' and isnull(islemSiraNo,'''') = '''' ' ;
         datalar.QueryExec(sql);
     end;
   end;



   Result := True;
  Except on e : Exception do
   begin
    Hata := e.Message;
    Result := false;
   end;
  end;
end;



function GetOwningForm(Control: TComponent): TForm;
var
  LOwner: TComponent;
begin
  LOwner:= Control.Owner;
  while Assigned(LOwner) and not(LOwner is TCustomForm) do begin
    LOwner:= LOwner.Owner;
  end; {while}
  Result:= TForm(LOwner);
end;

function FindTab(Page : TcxPageControl ; Name : string) : Boolean;
var
  I: Integer;
begin
  FindTab := False;
  for I := 0 to Page.PageCount-1 do
  begin
    if Name = Page.Pages[I].Name then
    begin
      FindTab := True;
      Page.ActivePage := Page.Pages[I];
      Break;
    end;
  end;
end;

function FindTab(Page : TcxPageControl ; Tag : integer) : Boolean;
var
  I: Integer;
begin
  FindTab := False;
  for I := 0 to Page.PageCount-1 do
  begin
    if Tag = Page.Pages[I].Tag then
    begin
      FindTab := True;
      Page.ActivePage := Page.Pages[I];
      Break;
    end;
  end;
end;

function FindTabSheet(Page : TcxPageControl ; Name : string) : TcxTabSheet;
var
  I: Integer;
begin
  FindTabSheet := nil;
  for I := 0 to Page.PageCount-1 do
  begin
    if Name = Page.Pages[I].Name then
    begin
      FindTabSheet := Page.Pages[I];
      Page.ActivePage := Page.Pages[I];
      Break;
    end;
  end;
end;

function NewTab(Page : TcxPageControl;Name : string) : TcxTabSheet;
begin
  Result := TcxTabSheet.Create(Page);
  try
    if Name <> '' Then Result.Name := Name;
    Result.Parent := Page;
    Page.ActivePage := Result;
  except
    FreeAndNil(Result);
    raise;
  end;
end;

function NewTab(Page : TcxPageControl;Tag : integer) : TcxTabSheet;
begin
  Result := TcxTabSheet.Create(Page);
  try
    if Tag <> 0 Then Result.Tag := Tag;
    Result.Parent := Page;
    Page.ActivePage := Result;
  except
    FreeAndNil (Result);
    raise;
  end;
end;


function KontrolZorunlumu(formTag : integer;KontrolName : string) : Boolean;
var
  sql : string;
begin
   KontrolZorunlumu := False;
  // ado := TADOQuery.Create(nil);
  // ado.Connection := datalar.ADOConnection2;


   sql := 'select * from KontrolZorunlu where formTag = ' + inttostr(formTag) +
          ' and kontrolName = ' + QuotedStr(KontrolName);
   datalar.KontrolZorunlu.Filter := 'formTag = ' + inttostr(formTag) +
                                    ' and kontrolName = ' + QuotedStr(KontrolName);

 // KontrolZorunlumu := datalar.KontrolZorunlu.Eof;

  // datalar.QuerySelect(ado,sql);

   if not datalar.KontrolZorunlu.Eof
   then KontrolZorunlumu := True;

//   ado.Free;
end;




function FormInputZorunluKontrolPaint(form : Tform ; Renk : TColor) : Boolean;
var
 i : integer;
 _Obje_ : TcxCustomEdit;
begin
  for i := 0 to form.ComponentCount - 1 do
  begin
    if
       (form.Components[i].ClassName = 'TcxTextEdit') or
       (form.Components[i].ClassName = 'TcxTextEditKadir') or
       (form.Components[i].ClassName = 'TcxButtonEdit') or
       (form.Components[i].ClassName = 'TcxButtonEditKadir') or
       (form.Components[i].ClassName = 'TcxComboBox') or
       (form.Components[i].ClassName = 'TcxMemo') or
       (form.Components[i].ClassName = 'TcxImageComboBox') or
       (form.Components[i].ClassName = 'TcxImageComboKadir') or
       (form.Components[i].ClassName = 'TcxCheckBox') or
       (form.Components[i].ClassName = 'TcxCurrencyEdit') or
       (form.Components[i].ClassName = 'TcxDateEdit') or
       (form.Components[i].ClassName = 'TcxDateEditKadir') or
       (form.Components[i].ClassName = 'TcxCheckGroup')
    then Begin
        _obje_ := TcxCustomEdit(form.Components[i]);
        if KontrolZorunlumu(TForm(form).Tag,_Obje_.Name)
        then begin
          TcxCustomEdit(_Obje_).Style.Color := Renk;
        end;
    End;
   End; // for end

end;



procedure SendQueryString(QueryString: string);
var
  CopyDataStruct : TCopyDataStruct;
  receiverHandle: HWND;
  iTmpHandle : Integer;
begin
  receiverHandle := FindWindow(nil, 'NOKTA SQL MONITOR');
  if IsWindow(receiverHandle) then
  begin
    CopyDataStruct.dwData := 0;
    CopyDataStruct.cbData := 1 + Length(QueryString) ;
    CopyDataStruct.lpData := PChar(QueryString) ;
    iTmpHandle := 0;

    SendMessage(receiverHandle, WM_COPYDATA, Integer(Application.Handle) + iTmpHandle, Integer(@CopyDataStruct));
  end;
end;





procedure TaniIlaciliskilendir(TaniKodu,kulyol,doz,adet,barkod : string);
var
  sql : string;
  ado : TADOQuery;
begin
  try
    ado := TADOQuery.Create(nil);
    try
      sql := 'update OSGB_MASTER.dbo.ilacListesi set ICD = ' + SQLValue(TaniKodu) +
             ',kulYol = ' + SQLValue(kulYol) +
             ',doz = ' +  doz +
             ',adet = ' + adet +
             ' where barkod = ' + QuotedStr(barkod);
      datalar.QueryExec(ado,sql);
      ShowMessageSkin('�la� Tan� �li�kilendirildi','','','info');
    finally
      ado.Free;
    end;
  except on e : exception do
   begin
     ShowMessageSkin(e.Message,'','','info');
   end;
  end;
end;

procedure ReceteIlacAckTaniEkleMedula(islem : integer ; dosyaNo,gelisNo,ereceteNo,id,doktor,taniKodu,ackId : string);
var
  _dn_ ,_gn_ , _id_ , _d_ , _s , icd , _ackId_ : string;
  _exe : PAnsiChar;

begin
    _dn_ := dosyaNo;
    _gn_ := gelisNo;
    _s :=   ereceteNo;
    _id_ := id;
    _d_ := doktor;
    icd := taniKodu;
    _ackId_ := ackId;

    case islem of
    ReceteTaniEkleMedula :
       _exe :=  PAnsiChar(AnsiString('C:\NoktaV3\E-imza\imza.exe ' + 'EICD' + ' ' + _id_ + ' ' + _s + ' ' + _d_  + ' ' + datalar.AktifSirket + ' ' + icd));
    ReceteIlacAckEkleMedula :
       _exe :=  PAnsiChar(AnsiString('C:\NoktaV3\E-imza\imza.exe ' + 'EIACK' + ' ' + _id_ + ' ' + _s + ' ' + _d_  + ' ' + datalar.AktifSirket + ' ' + ackId));
    end;

    WinExec(_exe,SW_SHOW);

end;


procedure PrintYap(raporKodu,caption,formId : string; Data: TDataSetKadir; yazdirmaTipi : TprintTip = pTNone ; Form : TForm = nil);
//var
  //i : integer;
  //oExportfilter : TfrxCustomExportFilter;
begin
  Application.CreateForm(TfrmRapor, frmRapor);
  try
    frmRapor.raporData1(Data ,raporKodu,caption,formId,yazdirmaTipi);
    if yazdirmaTipi = pTNone
    then begin
      if Form <> nil then TGirisForm(Form).DurumGoster(False);
      frmRapor.ShowModal;
    end;





    if (yazdirmaTipi = pTPDF) or
       (yazdirmaTipi = pTRTFPDF)
    then begin
     if not DirectoryExists('C:\NoktaV3\Temp')
     then
      MkDir('C:\NoktaV3\Temp');
      frmRapor.frxReport1.PrepareReport(true);
      frmRapor.frxPDFExport1.ShowDialog := False;
      frmRapor.frxPDFExport1.FileName := 'C:\NoktaV3\Temp\' + caption + '.PDF';
      frmRapor.frxPDFExport1.ExportObject(frmRapor.frxReport1);
      frmRapor.frxReport1.Export(frmRapor.frxPDFExport1);
     //     frmRapor.frxPDFExport1.Finish;
      if Form <> nil then TGirisForm(Form).DurumGoster(False);
    end;

    if (yazdirmaTipi = pTRTF) or
       (yazdirmaTipi = pTRTFPDF)
    then begin
     if not DirectoryExists('C:\NoktaV3\Temp')
     then
      MkDir('C:\NoktaV3\Temp');
      frmRapor.frxReport1.PrepareReport(true);
      frmRapor.frxRTFExport1.ShowDialog := False;
      frmRapor.frxRTFExport1.FileName := 'C:\NoktaV3\Temp\' + caption + '.RTF';
      frmRapor.frxRTFExport1.ExportObject(frmRapor.frxReport1);
      frmRapor.frxReport1.Export(frmRapor.frxRTFExport1);
     //     frmRapor.frxPDFExport1.Finish;
      if Form <> nil then TGirisForm(Form).DurumGoster(False);
    end;

  finally
    FreeAndNil(frmRapor);
  end;
end;


procedure PrintYapDokuman(raporKodu,caption,formId : string; Data: TDataSetKadir; yazdirmaTipi : TprintTip = pTNone ; Form : TForm = nil; SayfaGizle : string = '');
//var
  //i : integer;
  //oExportfilter : TfrxCustomExportFilter;
begin
  Application.CreateForm(TfrmRapor, frmRapor);
  try
   // frmRapor.frxReport1.PreviewOptions.Buttons := [pbPrint, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbNavigator];

    frmRapor.raporDataDokuman(Data ,raporKodu,caption,formId,yazdirmaTipi,'',SayfaGizle);

    if yazdirmaTipi = pTNone
    then begin
      if Form <> nil then TGirisForm(Form).DurumGoster(False);
//      frmRapor.frxReport1.PreviewOptions.Buttons := [pbPrint, pbLoad, pbSave, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbNavigator];
      frmRapor.ShowModal;
    end;


    if yazdirmaTipi = pTReadOnly
    then begin
      if Form <> nil then TGirisForm(Form).DurumGoster(False);
      frmRapor.frxReport1.PreviewOptions.Buttons := [];
      frmRapor.frxReport1.PrintOptions.ShowDialog := True;
      frmRapor.frxReport1.ShowReport;
    end;


    if yazdirmaTipi = pTPDF
    then begin
      frmRapor.frxReport1.PrepareReport(true);
      frmRapor.frxPDFExport1.ShowDialog := False;
      frmRapor.frxPDFExport1.FileName := caption + '.PDF';
      frmRapor.frxPDFExport1.ExportObject(frmRapor.frxReport1);
      frmRapor.frxReport1.Export(frmRapor.frxPDFExport1);

      if Form <> nil then TGirisForm(Form).DurumGoster(False);
    end;




  finally
    FreeAndNil(frmRapor);
  end;
end;


procedure PrintIcerik(raporKodu : string);
begin
  Application.CreateForm(TfrmRapor, frmRapor);
  try
    frmRapor.raporDataIcerikYukle(raporKodu);
  finally
    FreeAndNil(frmRapor);
  end;
end;

procedure PrintLogo(raporKodu : string);
begin
  Application.CreateForm(TfrmRapor, frmRapor);
  try
    frmRapor.raporDataLogoYukle(raporKodu);
  finally
    FreeAndNil(frmRapor);
  end;
end;


procedure PrintIcerikFontDegis(raporKodu : string);
begin
  Application.CreateForm(TfrmRapor, frmRapor);
  try
    frmRapor.raporDataIcerikFontDegistir(raporKodu);
  finally
    FreeAndNil(frmRapor);
  end;
end;


procedure RTFToIcerik(raporKodu : string);
//var
  //i : integer;
  //oExportfilter : TfrxCustomExportFilter;
begin
  Application.CreateForm(TfrmRapor, frmRapor);
  try
  //  frmRapor.IcerikAl(raporKodu);
  finally
    FreeAndNil(frmRapor);
  end;
end;




procedure AdoQueryActiveYenile(ado : TADOQuery);
begin
 // bm := ado.Bookmark;
  ado.Active := false;
  ado.Active := True;
  //ado.GotoBookmark(bm);
end;

procedure KanTetkikleriDegerlendir(dosyaNo,gelisNo : string);
begin

end;

procedure KanTetkikleri(dosyaNo,Tarih : string);
begin

end;

procedure TetkikEkle(dosyaNo,gelisNo,Tarih : string);
begin
   (*
   if UserRight('TEDAVI KARTI', 'Tetkik Duzenle') = False
   then begin
       ShowMessageSkin('Bu ��lem ��in Yetkiniz Bulunmamaktad�r !','','','info');
       exit;
   end;
   *)
  Application.CreateForm(TfrmHastaTetkikEkle, frmHastaTetkikEkle);
  try
    frmHastaTetkikEkle._dosyaNo_ := dosyaNo;
    frmHastaTetkikEkle._gelisNO_ := gelisNo;
    frmHastaTetkikEkle.Sonuclar;
    frmHastaTetkikEkle._provizyonTarihi_ := Tarih;
    frmHastaTetkikEkle.ShowModal;
  finally
    freeAndNil(frmHastaTetkikEkle);
  end;
end;


procedure Son6AylikTetkikSonuc(dosyaNo,Tarih : string);
begin
  Application.CreateForm(TfrmSon6AylikTetkikSonuc, frmSon6AylikTetkikSonuc);
  try
    frmSon6AylikTetkikSonuc._dosyaNO_ := dosyaNo;
    frmSon6AylikTetkikSonuc._provizyonTarihi_ := Tarih;
    frmSon6AylikTetkikSonuc.Listele;
    frmSon6AylikTetkikSonuc.ShowModal;
  finally
    FreeAndNil(frmSon6AylikTetkikSonuc);
  end;
end;



procedure HastaBilgiRecordSet(Adi,Soyadi,Tc,Yas : string);
begin
  datalar.HastaBil.Adi := Adi;
  datalar.HastaBil.SoyAdi := Soyadi;
  datalar.HastaBil.TcKimlik := Tc;
  datalar.HastaBil.Yasi := Yas;
  datalar.Bilgi.Adi := Adi;
  datalar.Bilgi.tckimlikNo := Tc;
end;

procedure HastaRapor(dosyaNo,gelisNo : string);
begin
   if UserRight('Hasta Kart�', 'Rapor') = False
   then begin
       ShowMessageSkin('Bu ��lem ��in Yetkiniz Bulunmamaktad�r !','','','info');
       exit;
   end;




end;


procedure SifreDegistir(newSifre : string ; sifreTip : integer);
begin

 (*
  Application.CreateForm(TfrmSifreDegis, frmSifreDegis);
  try
    frmSifreDegis.doktorKullanici := datalar.doktorKodu;
    frmSifreDegis.sifreTip := sifreTip;
    frmSifreDegis.ShowModal;
  finally
    FreeAndNil(frmSifreDegis);
  end;*)

  datalar.SifreDegistir.KullaniciAdi :=  datalar.doktorAdi;


  if mrYes <> ShowPopupForm('Re�ete �ifre De�i�tirme',userSifre) then
  begin
    ShowMessageSkin('��lem iptal edildi','','','info');
    exit;
  end;

  //g�ncellemeleri yap

      try
        sql := 'update DoktorlarT set ereceteSifre = ' + QuotedStr(datalar.SifreDegistir.Sifre)
             + ' where Kod = ' + QuotedStr(datalar.doktorKodu);
        datalar.QueryExec(sql);

        ShowMessageSkin('�ifreniz De�i�tirildi','','','info');

      except on e : exception do
       begin
          ShowMessageskin(e.Message,'','','info');
       end;

      end;




end;

procedure cxExceleGonder(grid : TcxGrid ; dosyaName : string);
var
  SaveDlg : TSaveDialog;
begin
  SaveDlg := TSaveDialog.Create(nil);
  try
    if dosyaname = ''
    then begin
      SaveDlg.FileName := dosyaName;
      if not SaveDlg.Execute Then Exit;
      DosyaName := SaveDlg.FileName;
    end;

    try
      ExportGridToExcel(dosyaName,grid,False,True);
    except on e : Exception do
    begin
      ShowMessageSkin('Hata Olu�tu : ' + e.Message,'','','info');
      exit;
    end;
    end;
    ShowMessageSkin(DosyaName + ' ',' Ba�ar� ile Kaydedildi','','info');
  finally
    SaveDlg.Free;
  end;
end;


procedure MedEczaneGit(user,pasword,Tc : string);
begin
(*
  Application.CreateForm(TfrmMedEczane, frmMedEczane);
  try
    frmMedEczane.yukle(user,pasword,Tc);
    frmMedEczane.ShowModal;
  finally
    freeandNil(frmMedEczane);
  end;
  *)
end;

procedure UyumSoftPortalGit(user,pasword,url : string ; uygulama : string = 'Uyum');
var
 u , s : string;
  F : TGirisForm;
  GirisFormRecord : TGirisFormRecord;
begin



(*
  Application.CreateForm(TfrmPortal, frmPortal);
  try
    frmPortal.yukle(user,pasword,url,uygulama);
    frmPortal.ShowModal;
  finally
    freeandNil(frmPortal);
  end;
  *)
end;

procedure GetBuildInfo(const AppName: string; var V1, V2, V3,V4: Word);
var
  VerInfoSize, VerValueSize, Dummy: DWORD;
  VerInfo: Pointer;
  VerValue: PVSFixedFileInfo;
begin
  VerInfoSize:= GetFileVersionInfoSize(PChar(AppName), Dummy);
  GetMem(VerInfo, VerInfoSize);
  GetFileVersionInfo(PChar(AppName), 0, VerInfoSize, VerInfo);
  VerQueryValue(VerInfo, '', Pointer(VerValue), VerValueSize);
  with VerValue^ do
  begin
  V1:= dwFileVersionMS shr 16;
  V2:= dwFileVersionMS and $FFFF;
  V3:= dwFileVersionLS shr 16;
  V4:= dwFileVersionLS and $FFFF;
  end;
  FreeMem(VerInfo, VerInfoSize);
end;


procedure ImageComboItemAdd(value,Description : string;ImageCombo : TcxImageComboBox);
var
 ImageComboItem : TcxImageComboBoxItem;
begin
    ImageComboItem := ImageCombo.Properties.Items.Add as TcxImageComboBoxItem;
    ImageComboItem.Value := value;
    ImageComboItem.Description := Description;
end;

function HastaGelisSelect(dosyaNo : string ; var ado : TADOQuery; Tip : string = 'Hasta_gelisler') : integer;
var
  sql : string;
begin
   if Tip = 'gelisler'
   then begin
       sql := 'select top 12 g.dosyaNo,g.gelisNo,cast(g.BHDAT as Datetime) Tarih,g.TakipNo TakIpNo,g.TEDAVITURU,g.PROTOKOLNO, ' +
       'mt.AnemnezEkranTipi, mt.Tanimi TEDAVITURUAck,g.SIRANO,g.PROTOKOLNO,dbo.fn_yasTarih(h.DOGUMTARIHI,g.bhdat) yas ,' +
       'h.IdealKilo kilo ' +
       'from gelisler g '+
       'join PersonelKart h on h.dosyaNo = g.dosyaNo ' +
       'inner join MuayeneTipleri mt on mt.Kod = g.TEDAVITURU ' +
       'where g.dosyaNo = ' + QuotedStr(dosyaNo) + ' order by BHDAT desc, g.GelisNo desc';
   end
   else
     sql := 'select top 12 g.dosyaNo,g.gelisNo,g.BHDAT Tarih,g.TakipNo TakIpNo,g.TEDAVITURU,g.PROTOKOLNO,SIRANO, '+
     'dbo.fn_yasTarih(h.DOGUMTARIHI,g.bhdat) yas ,h.IdealKilo kilo ' +
     'from ' + Tip + ' g '+
     'left join Medula_TedaviTurleri mt on mt.Kod = g.TEDAVITURU ' +
     'join HastaKart h on h.dosyaNo = g.dosyaNo ' +
     'where g.dosyaNo = ' + QuotedStr(dosyaNo) + ' order by BHDAT desc, g.GelisNo desc';


   datalar.QuerySelect(ado,sql);

   Result := ado.RecordCount;
end;

(*
procedure PersonelEgitimler;
begin
      IseGirisMuayene.Dataset.Connection := datalar.ADOConnection2;
      IseGirisMuayene.Dataset.SQL.Text := 'sp_frmPersonelIseGirisMuayene ' + QuotedStr(dosyaNo.Text)+ ',' +
                                                                         _gelisNO_ + ',' + QuotedStr('0');
      IseGirisMuayene.Dataset.Open;

end;
  *)

function HastaGelis(dosyaNo : string ; var ado : TADOQuery) : integer;
var
  sql : string;
begin
   sql := sp_HastaGelis + QuotedStr(dosyaNo);
   datalar.QuerySelect(ado,sql);
   HastaGelis := ado.RecordCount;
end;

(*
function HastaGelis(dosyaNo : string ; var ado : TDataset) : integer;
var
  sql : string;
  Q : TADOQuery;
begin
   Q := TADOQuery.Create(nil);
   try
     Q.Connection := Datalar.ADOConnection2;
     sql := sp_HastaGelis + QuotedStr(dosyaNo);
     datalar.QuerySelect(Q,sql);
     HastaGelis := Q.RecordCount;
     ado := Q.DataSource.DataSet;
   finally
     Q.Free;
   end;
end;
  *)


procedure ReceteForm(dosyaNo,gelisNo : string);
begin
  (*
   if UserRight('TEDAVI KARTI', 'Re�ete') = False
   then begin
       ShowMessageSkin('Bu ��lem ��in Yetkiniz Bulunmamaktad�r !','','','info');
       exit;
   end;
   *)
  // FormINIT(TagfrmSaglikNetOnline,OFShowModal);
  Application.CreateForm(TfrmHastaRecete, frmHastaRecete);
  try
    frmHastaRecete._dosyaNO_ := dosyaNo;
    frmHastaRecete._gelisNO_ := gelisNo;
    frmHastaRecete._HastaAdSoyad_ := datalar.Bilgi.Adi;
    frmHastaRecete._provizyonTarihi_ := datalar.Bilgi.ProvizyonTarihi;
    frmHastaRecete.ReceteGetir(dosyaNo,gelisNo);
    frmHastaRecete.ShowModal;
   // frmHastaRecete := nil;
  finally
    FreeAndNil(frmHastaRecete);
  end;
end;

procedure IlacTedaviKarti(dosyaNo,gelisNo,Tarih : string ; islem : integer = 99999);
begin



end;


procedure BasvuruNoSistemeYaz(TakipNo,BasvuruNo : string);
 var
  sql : string;
  ado : TADOQuery;
begin
  sql := 'update hasta_gelisler set basvuruNO = ' + QuotedStr(BasvuruNo) +
         ' where takipNo = ' + QuotedStr(TakipNo);
  datalar.QueryExec(sql);
  ShowMessageSkin('Ba�vuruNo Sisteme Yaz�ld�','','','info');
end;

function HastaKontrol(_dosyaNo : string) : boolean;
var
  sql : string;
begin
   sql := 'select aktif from HastaKart where dosyaNo =  ' + QuotedStr (_dosyaNo);
   datalar.QuerySelect(datalar.ADO_SQL1,sql);
   if datalar.ADO_SQL1.FieldByName('Aktif').AsInteger > 0
   then result := True else result := false;
end;



function TakipMeduladanSil(TakipNo : string) : string;
begin

   if mrYes = ShowMessageSkin('Takip �ptal Edilecek Emin misiniz ?','','','msg')
   then begin
  //       msg := TakipSil_3(TakipNo , datalar.HastaKabul);

   end;

end;

function dosyaNoYeniNumaraAl (tip : string) : string;
var
  ado : TADOQuery;
  sql : string;
begin
  ado := TADOQuery.Create(nil);
  try
    sql := 'declare @Dn varchar(6),@dd varchar(6) set @Dn = DBO.KODAL('+ QuotedStr(tip) +') ' +
           ' set @dd = replace(@Dn,''T'','''')' +
           ' exec sp_DosyaNoYaz @dd,@t = ' + QuotedStr(tip) +
           ' select @dn';
    datalar.QuerySelect(ado,sql);
    if not ado.Eof
    then
      dosyaNoYeniNumaraAl := ado.Fields[0].AsString
    else
      dosyaNoYeniNumaraAl := '0';
  finally
    ado.Free;
  end;
end;

function KontrolUsers(FormTag,KontrolTag : string ; kullanici : string) : Boolean;
var
  ado : TADOQuery;
  sql : string;
begin
  ado := TADOQuery.Create(nil);
  try
    sql := 'select * from KontrolUserSettings where kullanici = ' + QuotedStr(kullanici) +
           ' and formTag = ' + FormTag + ' and kontrolTag = ' + KontrolTag;
    datalar.QuerySelect(ado,sql);
    KontrolUsers := ado.Eof;
  finally
    ado.Free;
  end;
end;


procedure PopupMenuToToolBarEnabled(AOwner : TComponent ; TB : TToolbar ; Menu : TPopupMenu);
var
  mi : TMenuItem;
  TBBDown : TMenuItem;
  TBB : TToolButton;
  i,r : integer;
begin
  try
      for mi in Menu.Items do
      begin
        if (mi.Visible = True) then
        begin
            for i := 0 to TB.ButtonCount - 1 do
            begin
              if mi.Tag = TB.Buttons[i].Tag
              then begin
                TB.Buttons[i].Enabled := mi.Enabled;
                if mi.Count > 0
                Then begin
                  for r := 0 to mi.count - 1 do
                  begin
                    for TBBDown in TB.Buttons[i].DropdownMenu.Items do
                    begin
                       if mi[r].Tag = TBBDown.Tag then TBBDown.Enabled := mi[r].Enabled;
                    end;
                  end;

                end;
              end;
            end;
        end;
      end;
  except on e : exception do
   begin
      Showmessage(mi.Caption,'','','info');
   end;
  end;
end;


procedure PopupMenuEnabled(AOwner : TComponent ; Menu : TPopupMenu ; Enableded : Boolean = True);
var
  mi,misub : TMenuItem;
  r , i: integer;
begin

  for mi in Menu.Items do
  begin
          if mi.count > 0 then mi.Enabled := True
          else
          mi.Enabled := Enableded;

          for i := 0 to mi.count - 1 do
          begin
             mi.Items[i].Enabled := Enableded;

          end;
  end;

 (*
  for mi in Menu.Items do
  begin
    if (mi.Visible = True) then
    begin
       mi.Enabled := Enableded;

   end;
  *)
end;

procedure PopupMenuToToolBar(AOwner : TForm ; TB : TToolbar ; Menu : TPopupMenu);
var
  mi : TMenuItem;
  misub : TMenuItem;
  TBB : TToolButtonKadir;
  pmenu : TPopupMenu;
  i,r : integer;
begin
  for I := TB.ButtonCount - 1 downto 0 do
    TB.Buttons[I].Free;

  TB.Images := Menu.Images;

  for r := 0 to Menu.Items.Count - 1 do
  begin
    mi := TMenuItem(Menu.Items[r]);
    TBB := FindToolButton(TB,'ToolButton'+mi.Name);
    if TBB <> nil
    then begin
     TBB.Enabled := mi.Enabled;
     Continue;
    end;
    if (mi.Visible = True) then
    begin
      TBB := TToolButtonKadir.Create(AOwner);
      if (mi.Caption = '-')
      then begin
        TBB.Style := tbsSeparator;
        TBB.Width := 10;
      end
      else begin
          TBB.Style := tbsButton;
          TBB.Height := 40;
          TBB.Width := 32;
          TBB.Hint := mi.Caption;
          TBB.ShowHint := True;
          TBB.Tag := mi.Tag;
          TBB.Enabled := mi.Enabled;
          TBB.Name := 'ToolButton'+mi.Name;
          TBB.ImageIndex := mi.ImageIndex;
          TBB.Modul := copy(mi.Hint,1,pos(',',mi.Hint)-1); //Modul
          TBB.Islem := copy(mi.Hint,pos(',',mi.Hint)+1,100); //Islem
          TBB.OnClick := mi.OnClick;
          TBB.Parent := TB;
        if mi.Count > 0
        Then begin
          TBB.Style := tbsDropDown;
         try

          pmenu := TPopupMenu.Create(AOwner);
       //   pmenu.Name := 'PopupDropMenu'+mi.Name;
          pmenu.ParentBiDiMode := True;
          pmenu.Images := menu.Images;

       //   AOwner.PopupMenu := pmenu;

          for i := 0 to mi.count - 1 do
          begin
            if (mi.Items[i].Visible = True)
            then begin
                misub := TMenuItem.Create(pmenu);
                misub.Caption := mi.Items[i].Caption;
                misub.Name := 'DropMenu'+mi.Items[i].Name;

                if Assigned(mi.Items[i].Action)
                then begin
                  mi.Items[i].Action.Tag := mi.Items[i].Tag;
                  misub.Action := mi.Items[i].Action;
                end;

                misub.ImageIndex := mi.Items[i].ImageIndex;
                misub.Tag := mi.Items[i].Tag;
                misub.Enabled := mi.Items[i].Enabled;
                //misub.Modul := mi.Items[i]. Modul;
              //  misub.Islem := mi.Islem;
                misub.hint := mi.Items[i].hint; //Modul,Islem
                misub.OnClick := mi.Items[i].OnClick;
                pmenu.Items.Add(misub);
            end;

           end;
          TBB.DropdownMenu := pmenu;
         finally
           //pmenu.Free;
         end;
        end
        else  // if mi.count end
        begin

        end;
      end;
    end;
  end;
end;


function ListeAcCreate(TableName,kolonlar,kolonBasliklar,kolonGenislik,name,baslik,where : string;colcount : integer;Grup : boolean = false;Owner : TComponent = nil ; filterCol : integer = 0) : TListeAc;
var
  I : integer;
  lst : TstringList;
begin
  lst := TStringList.Create;
  try
    Result := TListeAc.Create(Owner);
    try
      Result.Table := TableName;
      Result.ListeBaslik := baslik;
      Result.Kolonlar.Create;
      Split(',',kolonlar,lst);
      for I := 0 to lst.Count - 1 do Result.Kolonlar.Add(lst[I]);
      Result.Kolonlar.Create;
      lst.Clear;
      Split(',',kolonBasliklar,lst);
      for I := 0 to lst.Count - 1 do Result.KolonBasliklari.Add(lst[I]);
      Result.TColsW := kolonGenislik;
      Result.Name := name;
      Result.Where := where;
      Result.TColcount := colcount;
      Result.SkinName := AnaForm.dxSkinController1.SkinName;
      Result.Conn := datalar.ADOConnection2;
      Result.Filtercol := filterCol;
    except
      FreeAndNil (Result);
      raise;
    end;
  finally
    lst.Free;
  end;
end;


procedure GirisZamanYaz(KullaniciAdi : string);
var
  sql : string;
  ADO : TadoQuery;
begin
  ado := TadoQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;
    sql := 'UPDATE Users SET Saat = GETDATE() WHERE Kullanici = ' + QuotedStr(KullaniciAdi);
    datalar.QueryExec(ado,sql);
  finally
    ado.Free;
  end;
end;


function TurkCharKontrol(Text : string) : Boolean;
var
 I : integer;
begin
  for I := 1 to length(Text) do
  begin
    if pos(Text[I],harfler) = 0
    then result := True else result := false;
  end;

end;

function ServiceStart(sMachine, sService: string): Boolean;
var
  //
  // service control
  // manager handle
  schm,
  //
  // service handle
  schs: SC_Handle;
  //
  // service status
  ss: TServiceStatus;
  //
  // temp char pointer
  psTemp: PChar;
  //
  // check point
  dwChkP: DWord;
begin
  ss.dwCurrentState := 0;

  // connect to the service
  // control manager
  schm := OpenSCManager(PChar(sMachine), Nil, SC_MANAGER_CONNECT);

  // if successful...
  if (schm > 0) then
  begin
    // open a handle to
    // the specified service
    schs := OpenService(schm, PChar(sService),
      // we want to
      // start the service and
      SERVICE_START or
      // query service status
        SERVICE_QUERY_STATUS);

    // if successful...
    if (schs > 0) then
    begin
      psTemp := Nil;
      if (StartService(schs, 0, psTemp)) then
      begin
        // check status
        if (QueryServiceStatus(schs, ss)) then
        begin
          while (SERVICE_RUNNING <> ss.dwCurrentState) do
          begin
            //
            // dwCheckPoint contains a
            // value that the service
            // increments periodically
            // to report its progress
            // during a lengthy
            // operation.
            //
            // save current value
            //
            dwChkP := ss.dwCheckPoint;

            //
            // wait a bit before
            // checking status again
            //
            // dwWaitHint is the
            // estimated amount of time
            // the calling program
            // should wait before calling
            // QueryServiceStatus() again
            //
            // idle events should be
            // handled here...
            //
            Sleep(ss.dwWaitHint);

            if (not QueryServiceStatus(schs, ss)) then
            begin
              // couldn't check status
              // break from the loop
              break;
            end;

            if (ss.dwCheckPoint < dwChkP) then
            begin
              // QueryServiceStatus
              // didn't increment
              // dwCheckPoint as it
              // should have.
              // avoid an infinite
              // loop by breaking
              break;
            end;
          end;
        end;
      end;

      // close service handle
      CloseServiceHandle(schs);
    end;

    // close service control
    // manager handle
    CloseServiceHandle(schm);
  end;

  // return TRUE if
  // the service status is running
  Result := SERVICE_RUNNING = ss.dwCurrentState;
end;

function ServiceStop(sMachine, sService: string): Boolean;
var
  //
  // service control
  // manager handle
  schm,
  //
  // service handle
  schs: SC_Handle;
  //
  // service status
  ss: TServiceStatus;
  //
  // check point
  dwChkP: DWord;
begin
  // connect to the service
  // control manager
  schm := OpenSCManager(PChar(sMachine), Nil, SC_MANAGER_CONNECT);

  // if successful...
  if (schm > 0) then
  begin
    // open a handle to
    // the specified service
    schs := OpenService(schm, PChar(sService),
      // we want to
      // stop the service and
      SERVICE_STOP or
      // query service status
        SERVICE_QUERY_STATUS);

    // if successful...
    if (schs > 0) then
    begin
      if (ControlService(schs, SERVICE_CONTROL_STOP, ss)) then
      begin
        // check status
        if (QueryServiceStatus(schs, ss)) then
        begin
          while (SERVICE_STOPPED <> ss.dwCurrentState) do
          begin
            //
            // dwCheckPoint contains a
            // value that the service
            // increments periodically
            // to report its progress
            // during a lengthy
            // operation.
            //
            // save current value
            //
            dwChkP := ss.dwCheckPoint;

            //
            // wait a bit before
            // checking status again
            //
            // dwWaitHint is the
            // estimated amount of time
            // the calling program
            // should wait before calling
            // QueryServiceStatus() again
            //
            // idle events should be
            // handled here...
            //
            Sleep(ss.dwWaitHint);

            if (not QueryServiceStatus(schs, ss)) then
            begin
              // couldn't check status
              // break from the loop
              break;
            end;

            if (ss.dwCheckPoint < dwChkP) then
            begin
              // QueryServiceStatus
              // didn't increment
              // dwCheckPoint as it
              // should have.
              // avoid an infinite
              // loop by breaking
              break;
            end;
          end;
        end;
      end;

      // close service handle
      CloseServiceHandle(schs);
    end;

    // close service control
    // manager handle
    CloseServiceHandle(schm);
  end;

  // return TRUE if
  // the service status is stopped
  Result := SERVICE_STOPPED = ss.dwCurrentState;
end;

procedure DosyaCopy(_from_, _to_: string);
var
  FromF, ToF: File;
  NumRead, NumWritten: Longint;
  Buf: Array [1 .. 2048] of byte;
  //Total: Longint;
begin
  AssignFile(FromF, _from_);
  Reset(FromF, 1); { Record size = 1 }
  AssignFile(ToF, _to_); { Open output file }
  Rewrite(ToF, 1); { Record size = 1 }
  // Canvas.TextOut(10, 10, 'Copying ' + IntToStr(FileSize(FromF))
  // + ' bytes...');
  repeat
    BlockRead(FromF, Buf, SizeOf(Buf), NumRead);
    BlockWrite(ToF, Buf, NumRead, NumWritten);
    //inc(Total, NumWritten);
  until (NumRead = 0) or (NumWritten <> NumRead);
  CloseFile(FromF);
  CloseFile(ToF);

end;

procedure DosyaKopyalaAP(_from_, _to_: string);
Var
  FO: TSHFileOpStruct;
  Aborted: Boolean;
begin
  With FO Do
  Begin
    Wnd := Application.Handle;
    WFunc := FO_COPY;
    PFrom := PChar(_from_);
    pTo := PChar(_to_);
    FFlags := 0;
    fAnyOperationsAborted := Aborted;
  End;

  try
    SHFileOperation(FO);
  finally
  end;

end;

procedure DecompressFiles(const filename, DestDirectory: String);
var
  dest, s: String;
  decompr: TDecompressionStream;
  infile, outfile: TFilestream;
  i, l, c: Integer;
begin
  // IncludeTrailingPathDelimiter (D6/D7 only)
  dest := IncludeTrailingPathDelimiter(DestDirectory);
  infile := TFilestream.Create(filename, fmOpenRead);
  try
    { number of files }
    infile.Read(c, SizeOf(c));
    for i := 1 to c do
    begin
      { read filename }
      infile.Read(l, SizeOf(l));
      SetLength(s, l);
      infile.Read(s[1], l);
      { read filesize }
      infile.Read(l, SizeOf(l));
      { decompress the files and store it }
      s := dest + s; // include the path
      outfile := TFilestream.Create(s, fmCreate);
      try
        decompr := TDecompressionStream.Create(infile);
        try
          outfile.CopyFrom(decompr, l);
        finally
          decompr.Free;
        end;
      finally
        outfile.Free;
      end;
    end;
  finally
    infile.Free;
  end;
end;

procedure CompressFiles(Files: TStrings; const filename: String);
var
  infile, outfile, tmpFile: TFilestream;
  compr: TCompressionStream;
  i, l: Integer;
  s: String;
begin
  if Files.Count > 0 then
  begin
    outfile := TFilestream.Create(filename, fmCreate);
    try
      { the number of files }
      l := Files.Count;
      outfile.Write(l, SizeOf(l));
      for i := 0 to Files.Count - 1 do
      begin
        infile := TFilestream.Create(Files[i], fmOpenRead);
        try
          { the original filename }
          s := ExtractFilename(Files[i]);
          l := Length(s);
          outfile.Write(l, SizeOf(l));
          outfile.Write(s[1], l);
          { the original filesize }
          l := infile.Size;
          outfile.Write(l, SizeOf(l));
          { compress and store the file temporary }
          tmpFile := TFilestream.Create('tmp', fmCreate);
          try
            compr := TCompressionStream.Create(clMax, tmpFile);
            try
              compr.CopyFrom(infile, l);
            finally
              compr.Free;
            end;
          finally
            tmpFile.Free;
          end;
          { append the compressed file to the destination file }
          tmpFile := TFilestream.Create('tmp', fmOpenRead);
          try
            outfile.CopyFrom(tmpFile, 0);
          finally
            tmpFile.Free;
          end;
        finally
          infile.Free;
        end;
      end;
    finally
      outfile.Free;
    end;
    DeleteFile('tmp');
  end;
end;

function ayinSonGunu(_now_: Tdate): Tdate;
var
  y, M, d: word;
begin
  decodedate(_now_, y, M, d);
  M := M + 1;
  if M > 12 then
  begin
    y := y + 1;
    M := 1;
  end;
  Result := encodedate(y, M, 1) - 1;
end;

function BMPtoJPG(var BMPpic, JPGpic: string): Boolean;
var
  Bitmap: TBitmap;
  JpegImg: TJpegImage;
begin
  Result := False;
  if not Result then;;;
  Bitmap := TBitmap.Create;
  try
    Bitmap.LoadFromFile(BMPpic);
    JpegImg := TJpegImage.Create;
    try
      JpegImg.Assign(Bitmap);
      JpegImg.SaveToFile(JPGpic);
      Result := True;
    finally
      JpegImg.Free;
    end;
  finally
    Bitmap.Free;
  end;
end;



procedure ScreenShotActiveWindow(Bild: TBitMap);
var
  c: TCanvas;
  r, t: TRect;
  h: THandle;
begin
  c := TCanvas.Create;
  c.Handle := GetWindowDC(GetDesktopWindow);
  h := GetForeGroundWindow;
  if h <> 0 then
    GetWindowRect(h, t);
  try
    r := Rect(0, 0, t.Right - t.Left, t.Bottom - t.Top);
    Bild.Width  := t.Right - t.Left;
    Bild.Height := t.Bottom - t.Top;
    Bild.Canvas.CopyRect(r, c, t);
  finally
    ReleaseDC(0, c.Handle);
    c.Free;
  end;
end;

procedure ScreenShot(DestBitmap: TBitmap);
var
  DC: HDC;
begin
  DC := GetDC(GetDesktopWindow);
  try
    DestBitmap.Width := GetDeviceCaps(DC, HORZRES);
    DestBitmap.Height := GetDeviceCaps(DC, VERTRES);
    BitBlt(DestBitmap.Canvas.Handle, 0, 0, DestBitmap.Width, DestBitmap.Height,
      DC, 0, 0, SRCCOPY);
  finally
    ReleaseDC(GetDesktopWindow, DC);
  end;
end;

procedure ScreenShotFTP;
var
 b : TBitmap;
 Image1 : TImage;
begin
  b := TBitmap.Create;
  Image1 := TImage.Create(nil);
  try
    ScreenShot(b) ;
    Image1.Picture.Bitmap.Assign(b);
    //b.SaveToFile();
  finally
    b.FreeImage;
    FreeAndNil(b) ;
  end;
end;

function FIleToByteArray(const filename: string): TByteDynArray;
const
  BLOCK_SIZE = 1024;
var
  BytesRead, BytesToWrite, Count: integer;
  F: FIle of byte;
  pTemp: Pointer;
begin
  AssignFile(F, filename);
  Reset(F);
  try
    Count := FileSize(F);
    SetLength(Result, Count);
    pTemp := @Result[0];
    BytesRead := BLOCK_SIZE;
    while (BytesRead = BLOCK_SIZE) do
    begin
      BytesToWrite := Min(Count, BLOCK_SIZE);
      BlockRead(F, pTemp^, BytesToWrite, BytesRead);
      pTemp := Pointer(LongInt(pTemp) + BLOCK_SIZE);
      Count := Count - BytesRead;
    end;
  finally
    CloseFile(F);
  end;
end;

procedure DateToXsdate(var xsDate: Txsdate; date: Tdatetime);
var
  yil: word;
  ay, gun , s , d , sn ,ms: word;
begin
  decodedate(date, yil, ay, gun);
  DecodeTime(date,s,d,sn,ms);
  xsDate.Year := yil;
  xsDate.Month := ay;
  xsDate.Day := gun;
end;


procedure DateToXsdateTime(var xsDate: Txsdatetime; date: Tdatetime);
var
  yil: word;
  ay, gun , s , d , sn ,ms: word;
begin
  decodedate(date, yil, ay, gun);
  DecodeTime(date,s,d,sn,ms);
  xsDate.Year := yil;
  xsDate.Month := ay;
  xsDate.Day := gun;
  xsDate.Hour := s;
  xsDate.Minute := d;
  xsDate.Millisecond := 0;
//  xsDate.AsUTCDateTime;
end;


function EncodeFile(const filename: string): AnsiString;
var
  stream: TMemoryStream;

begin
  stream := TMemoryStream.Create;
  try
    stream.LoadFromFile(filename);

    Result := EncodeBase64(stream.Memory, stream.Size);
  finally
    stream.Free;
  end;
end;

function Encode64(s: string): string;
var
  IdEncoderMIME: TIdEncoderMIME;
begin
  IdEncoderMIME := TIdEncoderMIME.Create(nil);
  try
    Result := IdEncoderMIME.EncodeString(s);
  finally
    IdEncoderMIME.Free;
  end;
end;

function Decode64(s: string): string;
var
  IdDecoderMIME: TIdDecoderMIME;
begin
  IdDecoderMIME := TIdDecoderMIME.Create(nil);
  try
    Result := IdDecoderMIME.DecodeString(s);
  finally
    IdDecoderMIME.Free;
  end;
end;

function TrtoEng(str: string): string;
var
  s: string;
begin
  s := str;

  s := StringReplace(s, '�', 'i', [rfReplaceAll]);
  s := StringReplace(s, '�', 'S', [rfReplaceAll]);
  s := StringReplace(s, '�', 'U', [rfReplaceAll]);
  s := StringReplace(s, '�', 'G', [rfReplaceAll]);
  s := StringReplace(s, '�', 'C', [rfReplaceAll]);
  s := StringReplace(s, '�', 'O', [rfReplaceAll]);

  s := StringReplace(s, '�', 'i', [rfReplaceAll]);
  s := StringReplace(s, '�', 's', [rfReplaceAll]);
  s := StringReplace(s, '�', 'u', [rfReplaceAll]);
  s := StringReplace(s, '�', 'g', [rfReplaceAll]);
  s := StringReplace(s, '�', 'c', [rfReplaceAll]);
  s := StringReplace(s, '�', 'o', [rfReplaceAll]);

  Result := s;
end;

procedure GonderimMesaj(msj, filename: string);
begin
  if mryes = ShowMessageSkin('Hata : ' + msj,
    'Hatal� G�nderim Mesaj�n� G�rmek �ster misiniz', '', 'msg') then
    ShellExecute(0, 'open', PChar('iexplore.exe'), PChar(filename + '.xml'),
      nil, SW_SHOWNORMAL);
end;

function HastaOlmusmu(DosyaNo: string): Boolean;
var
  ado: TADOQuery;
  sql: string;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;
    sql := 'SELECT * FROM hastakart WHERE dosyaNo = ' + QuotedStr(DosyaNo) +
      ' and substring(pasifSebeb,1,1) = ' + QuotedStr ('5');
    datalar.QuerySelect(ado, sql);

    if not ado.eof then
      HastaOlmusmu := True
    else
      HastaOlmusmu := False;
  finally
    ado.Free;
  end;
end;

function DoktorSeansHastaSayiKontrol(doktor, seans, Tarih: string): Boolean;
var
  ado: TADOQuery;
  sql: string;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;

    sql := 'select count(*) from Hareketler where Tarih = ' + QuotedStr(Tarih)
      + ' and doktor = ' + QuotedStr(doktor) + ' and seans = ' + QuotedStr
      (seans) + ' and durum = 1 and Tip = ''S''';
    datalar.QuerySelect(ado, sql);

    if ado.Fields[0].Value >= 30 then
    begin
      DoktorSeansHastaSayiKontrol := False;
    end
    else
      DoktorSeansHastaSayiKontrol := True;
  finally
    ado.Free;
  end;
end;

function HastaKabul0543HatasiTakipAl(SonucMesaj: string): string;
var
  x1, x2: integer;
begin
  x1 := pos('[', SonucMesaj);
  x2 := pos(']', SonucMesaj);
  x1 := x1 + 1;

  HastaKabul0543HatasiTakipAl := copy(SonucMesaj, x1, x2 - x1);

end;

procedure GssOkuBilgisiTemizle(Takip: string);
var
  sql: string;
  ado: TADOQuery;
begin
  try
    ado := TADOQuery.Create(nil);
    try
      ado.Connection := datalar.ADOConnection2;

      sql := 'delete from gssTakipOkuDiger where takipno = ' + QuotedStr(Takip);
      ado.sql.Clear;
      datalar.QueryExec(ado, sql);

      sql := 'delete from gssTakipOkuTahlil where takipno = ' + QuotedStr(Takip);
      ado.sql.Clear;
      datalar.QueryExec(ado, sql);

      sql :=
        'delete from gssTakipOkuTetkikvdRadyoloji where takipno = ' + QuotedStr
        (Takip);
      ado.sql.Clear;
      datalar.QueryExec(ado, sql);

      sql := 'delete from gssTakipOkuTahlilSonuc where takipno = ' + QuotedStr
        (Takip);
      ado.sql.Clear;
      datalar.QueryExec(ado, sql);
    finally
      ado.Free;
    end;
  except
    on e: exception do
    begin
      ShowMessageSkin(e.Message, '', '', 'info');
    end;
  end;
end;

function sutKodu(Tip: string = '0'): string;
var
  ado: TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;

    if (Tip = '0') or (Tip = 'M') then
    begin
      datalar.DigerIslemTalebi.sutKodu := 'P704230';
      sutKodu := 'P704230';
    end
    else if (Tip = '4') or (Tip = '7') then
    begin
      datalar.DigerIslemTalebi.sutKodu := 'P704234';
      sutKodu := 'P704234';
    end
    else if (Tip = '3') or (Tip = 'E') then
    begin
      datalar.DigerIslemTalebi.sutKodu := 'P704233';
      sutKodu := 'P704233';
    end;
  finally
    ado.free;
  end;
  (*
    try
    sql := 'SELECT P704230 FROM GelisDetaySutKoduSayilari';
    datalar.QuerySelect(ado,sql);

    if ado.Fields[0].AsInteger >= 700
    then begin
    datalar.DigerIslemTalebi.sutKodu := 'P704234';
    SUTKODU := 'P704234';
    end
    else
    begin
    datalar.DigerIslemTalebi.sutKodu := 'P704230';
    SUTKODU := 'P704230';
    end;

    except
    ado.Close;
    ado.Free;
    exit;
    end;

    //  sql := 'select SLXX from parametreler where SLB = ''SUT'' and SLK = ''33''';
    //  datalar.QuerySelect(ado,sql);

    //    datalar.DigerIslemTalebi.sutKodu := ado.fieldbyname('SLXX').AsString;
    //    SUTKODU := ado.fieldbyname('SLXX').AsString;
    ado.Close;
    ado.Free;

    *)

end;

function TCdenDosyaNoGelisNo(tc, tarih1, tarih2: string;
  var DosyaNo, GelisNo, id: string): integer;
var
  sql: string;
  ado: TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;

    sql := 'select h.dosyaNo,g.gelisNo,g.SIRANO from hastakart h ' +
      ' join hasta_gelisler g on g.dosyaNo = h.dosyaNo ' + ' where TCKIMLIKNO = ' +
      QuotedStr(tc) + ' and g.bhdat between ' + QuotedStr(tarih1)
      + ' and ' + QuotedStr(tarih2);
    datalar.QuerySelect(ado, sql);

    if not ado.eof then
    begin
      DosyaNo := ado.FieldByName('dosyaNo').AsString;
      GelisNo := ado.FieldByName('gelisNO').AsString;
      id := ado.FieldByName('SIRANO').AsString;
      TCdenDosyaNoGelisNo := 1;
    end
    else
      TCdenDosyaNoGelisNo := 0;
  finally
    ado.Free;
  end;
end;

function KanAlimTarihi(DosyaNo, GelisNo: string): string;
var
  sql: string;
  ado: TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;

    sql :=
      'select UTarih from gelisDetay where KanAlindimi = 1 and dosyaNo = '
      + QuotedStr(DosyaNo) + ' and gelisNo = ' + GelisNo;

    datalar.QuerySelect(ado, sql);

    if not ado.eof then
      KanAlimTarihi := ado.Fields[0].AsString;
  finally
    ado.Free;
  end;
end;



function TCtoAd(tc: string): string;
var
  sql: string;
  ado: TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;
    sql :=
      'select HastaADI+'' '' +HASTASOYADI from hastakart where TCKIMLIKNO = ' + QuotedStr(tc);
    datalar.QuerySelect(ado, sql);

    Result := ado.Fields[0].AsString;
  finally
    ado.Free;
  end;
end;

function dosyaNOIslemGormusmu(dosyaNo: string): integer;
var
  sql: string;
  ado: TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;
    sql :=
      'select dbo.dosyaNoislemGormusmu(' + QuotedStr(dosyaNo) + ')';
    datalar.QuerySelect(ado, sql);

    Result := ado.Fields[0].AsInteger;
  finally
    ado.Free;
  end;
end;


function TCtoDosyaNo(tc: string ; var firma : string): string;
var
  sql: string;
  ado: TADOQuery;
begin
  Result := '';
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;
    sql := 'select dosyaNo,S.tanimi from Personelkart P ' +
           ' left join SIRKETLER_TNM S on S.sirketKod = P.sirketKod ' +
           ' where TCKIMLIKNO = ' + QuotedStr(tc);
    datalar.QuerySelect(ado, sql);
    Result := ado.Fields[0].AsString;
    firma := ado.Fields[1].AsString;
  finally
    ado.Free;
  end;
end;

procedure Sonucyaz(s, Takip: string; x: integer; hatalar: tstringlist);
var
  // hatali : TStringList;
  ado: TADOQuery;
  sql: string;

begin
  if s = '0000' Then
  Begin
    datalar.RxKayitliIslem.First;
    while not datalar.RxKayitliIslem.eof do
    Begin
      if datalar.RxKayitliIslem.FieldByName('hizmetSunucuRefNo')
        .AsString[1] = 'Y' Then
      Begin
        // gridYatak.Cells[8,gridYatak.row] := datalar.RxKayitliIslem.fieldbyname('islemSiraNo').AsString;
        sql := 'update gelisDetay set islemSiraNoYatak = ' + QuotedStr
          (datalar.RxKayitliIslem.FieldByName('islemSiraNo').AsString)
          + ' where siraNoYatis = ' + QuotedStr
          (datalar.RxKayitliIslem.FieldByName('hizmetSunucuRefNo').AsString);
        datalar.QueryExec(ado, sql);
      End
      Else if datalar.RxKayitliIslem.FieldByName('hizmetSunucuRefNo')
        .AsString[1] = 'T' Then
      Begin
        sql := 'update Anamnez_Icd set islemSiraNo = ' + QuotedStr
          (datalar.RxKayitliIslem.FieldByName('islemSiraNo').AsString)
          + ' where ID = ' + copy(datalar.RxKayitliIslem.FieldByName
            ('hizmetSunucuRefNo').AsString, 2, 15);
        datalar.QueryExec(ado, sql);
      End
      Else if datalar.RxKayitliIslem.FieldByName('hizmetSunucuRefNo')
        .AsString[1] = 'L' Then
      Begin
        sql := 'update hareketler set islemSiraNo = ' + QuotedStr
          (datalar.RxKayitliIslem.FieldByName('islemSiraNo').AsString)
          + ' where SIRANO = ' + copy(datalar.RxKayitliIslem.FieldByName
            ('hizmetSunucuRefNo').AsString, 2, 15);
        datalar.QueryExec(ado, sql);
      End
      Else if datalar.RxKayitliIslem.FieldByName('hizmetSunucuRefNo')
        .AsString[1] = 'M' Then
      Begin
        sql := 'update hareketlerIS set islemSiraNo = ' + QuotedStr
          (datalar.RxKayitliIslem.FieldByName('islemSiraNo').AsString)
          + ' where SIRANO = ' + copy(datalar.RxKayitliIslem.FieldByName
            ('hizmetSunucuRefNo').AsString, 2, 15);
        datalar.QueryExec(ado, sql);
      End
      Else if datalar.RxKayitliIslem.FieldByName('hizmetSunucuRefNo')
        .AsString[1] = 'P' Then
      Begin
        // gridGelisler.Cells[8,gridGelisler.row] := datalar.RxKayitliIslem.fieldbyname('islemSiraNo').AsString;
        sql := 'update gelisDetayPeriton set TalepSira = ' + QuotedStr
          (datalar.RxKayitliIslem.FieldByName('islemSiraNo').AsString)
          + ' where siraNo = ' + copy(datalar.RxKayitliIslem.FieldByName
            ('hizmetSunucuRefNo').AsString, 2, 15);
        datalar.QueryExec(ado, sql);
      End
      Else
      Begin
        // gridGelisler.Cells[8,gridGelisler.row] := datalar.RxKayitliIslem.fieldbyname('islemSiraNo').AsString;
        sql := 'update gelisDetay set TalepSira = ' + QuotedStr
          (datalar.RxKayitliIslem.FieldByName('islemSiraNo').AsString)
          + ' where siraNo = ' + datalar.RxKayitliIslem.FieldByName
          ('hizmetSunucuRefNo').AsString;
        datalar.QueryExec(ado, sql);
      End;
      datalar.RxKayitliIslem.Next;
    End;
  End;
end;

procedure Sonucyaz(Http : THizmetKayit);
var
  sql , hizmetSunucuRefNo : string;
  i : integer;
  _islemNo_ , refNo : string;
  j , a,b,c : integer;
begin
  hizmetSunucuRefNo := '';
  if Http.Cevap.sonucKodu = '9999' then exit;
  if Http.Cevap.sonucKodu = '0000'
  Then Begin
    for i := 0 to length(Http.Cevap.islemBilgileri) - 1 do
    Begin
      hizmetSunucuRefNo := Http.Cevap.islemBilgileri[i].hizmetSunucuRefNo;
      if pos('MLZM',hizmetSunucuRefNo) > 0
      Then
        sql := 'update hareketlerIS set islemSiraNo = ' + QuotedStr(Http.Cevap.islemBilgileri[i].islemSiraNo)
          + ' where sirano = ' + QuotedStr(StringReplace(hizmetSunucuRefNo,'MLZM','',[rfReplaceAll]))
      else
        sql := 'update hareketler set islemSiraNo = ' + QuotedStr(Http.Cevap.islemBilgileri[i].islemSiraNo)
          +    ' from hareketler h '
          +    ' join hasta_gelisler hg on hg.SIRANO = h.gelisSIRANO '
          +    ' where isnull(Eski_sirano,sirano) = ' + QuotedStr(Http.Cevap.islemBilgileri[i].hizmetSunucuRefNo)
          +    ' and hg.takipno = ' + QuotedStr(Http.Cevap.takipNo);

        datalar.QueryExec(sql);

    End;
  End
  else
  Begin
    for i := 0 to length(Http.Cevap.hataliKayitlar)-1 do
    Begin
       if Http.Cevap.hataliKayitlar[i].hataKodu = '1229'
       then begin
           a := pos('�nce', string(datalar.HizmetKayitWS.Cevap.hataliKayitlar[i].hataMesaji));
           a := a + 4;
           b := pos('numaral�',string(datalar.HizmetKayitWS.Cevap.hataliKayitlar[i].hataMesaji));
           b := b -1;
           _islemNo_ := trim(copy(datalar.HizmetKayitWS.Cevap.hataliKayitlar[i].hataMesaji,a,b-a));
           refNo := datalar.HizmetKayitWS.Cevap.hataliKayitlar[i].hizmetSunucuRefNo;

          sql := 'update hareketler set islemSiraNo = ' + QuotedStr(_islemNo_)
            +    ' from hareketler h '
            +    ' join hasta_gelisler hg on hg.SIRANO = h.gelisSIRANO '
            +    ' where isnull(Eski_sirano,sirano) = ' + QuotedStr(refNo)
            +    ' and hg.takipno = ' + QuotedStr(Http.Cevap.takipNo);
             datalar.QueryExec(sql);
       end;

      //  sql := 'update hareketler set MedulaGonderimMesaj = ' + QuotedStr(Http.Cevap.hataliKayitlar[i].hataMesaji)
      //    + ' where isnull(Eski_sirano,sirano) = ' + QuotedStr(Http.Cevap.hataliKayitlar[i].hizmetSunucuRefNo);
      //  datalar.QueryExec(sql);
    End;

  End;
end;

procedure Sonucyaz(Http : TYardimciIslem);
var
  sql: string;
  i : integer;
begin
  if Http.DamarIziDogrulamaSorguCevap.sonucKodu = '0000' Then
  Begin
    for i := 0 to length(Http.DamarIziDogrulamaSorguCevap.damarIziSorguDetay)-1 do
    Begin
     //   sql := 'update hareketler set DamarIziKontrol = ' + QuotedStr(Http.DamarIziDogrulamaSorguCevap.damarIziSorguDetay[i].durum)
     //     + ' where sirano = ' + QuotedStr(Http.DamarIziDogrulamaSorguCevap.damarIziSorguDetay[i].islemTarihi);
    //    datalar.QueryExec(sql);
    End;

  End;
end;


procedure HastaKayitSonucYaz(S0,S1,S2, HastaneRefNo : string);
var
   islemTipi , takip : string;
begin
   islemTipi := 'Hasta Kay�t';
     if S0 <> ''
      then begin
         try
             if pos('Hasta Kay�t',islemTipi) > 0
             Then Begin
                 if pos('Sorgula TakipNoListeleme',islemTipi) > 0 then
                 begin
                   sql := 'update KurumsysTakipNoList set sorguCvp = ' + QuotedStr(S1) +
                          ' where SIRANO = ' + HastaneRefNo;
                   datalar.QueryExec(sql);
                   exit;
                 end;
                 if pos('Sil TakipNoListeleme',islemTipi) > 0 then
                 begin
                   sql := 'update KurumsysTakipNoList set silCvp = ' + QuotedStr(S1) +
                          ' where SIRANO = ' + HastaneRefNo;
                   datalar.QueryExec(sql);
                   //exit;
                 end;

                 if S0 = 'S0000'
                 then begin
                    if pos('Sil',islemTipi) > 0 then
                    takip := '' else takip := S2;

                    sql := 'update Hasta_gelisler set SYSTakipNo = ' + QuotedStr(takip) +
                           ' where SIRANO = ' + HastaneRefNo;
                    datalar.QueryExec(sql);
                    //txtLog.Lines.Add(SS[1] + ' - ' + SS[2]);

                    SYSOnlineCvpDBDurumYaz(HastaneRefNo,S2,islemTipi,S0,S1,datalar.username);
                 end
                 else
                 begin
                   //txtLog.Lines.Add(SS[1]);
                   SYSOnlineCvpDBDurumYaz(HastaneRefNo,'',islemTipi,S0,S1,datalar.username);
                   if S0 = 'E2033'
                   then begin
                    takip := copy(S1,pos('=',S1)+1,50);
                    sql := 'update Hasta_gelisler set SYSTakipNo = ' + QuotedStr(takip) +
                           ' where SIRANO = ' + HastaneRefNo;
                    datalar.QueryExec(sql);
                   end
                   else
                   if S0 = 'E2003'
                   then begin
                    takip := '';
                    sql := 'update Hasta_gelisler set SYSTakipNo = ' + QuotedStr('') +
                           ' where SIRANO = ' + HastaneRefNo;
                    datalar.QueryExec(sql);
                   end;
                 end;
             End;
         finally

         end;
      end;
end;



function TcdenYasHesapla(tc: string): TYas;
var
  sql: string;
  ado: TADOQuery;
  Tarih: string;
  tt: Tdate;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;

    try
      sql := 'select DOGUMTARIHI from hastakart where TCKIMLIKNO = ' + QuotedStr
        (tc);
      datalar.QuerySelect(ado, sql);

      Tarih := ado.Fields[0].AsString;
      tt := tarihyap(Tarih);
      TcdenYasHesapla := tarihFarki(date, tt);
    except
    end;
  finally
    ado.Free;
  end;
end;

function tarihFarki(tarih1, tarih2: Tdate): TYas;
var
  aylik, gunluk: double;
  fyil, ay: integer;
  farkGun: double;
begin
  //yil1 := strtoint(copy(tarihal(tarih1), 1, 4));
  //yil2 := strtoint(copy(tarihal(tarih2), 1, 4));
  farkGun := (tarih1 - tarih2);

  fyil := floor((tarih1 - tarih2) / 365.25);
  aylik := (floor(farkGun) mod 365);
  ay := floor(aylik / 30);
  gunluk := (floor(aylik) mod 30);

  tarihFarki.yil := fyil;
  tarihFarki.ay := ay;
  tarihFarki.gun := floor(gunluk);

  // result := tarihFarki;
end;

function YedeklemeUyari: integer;
var
  sql: string;
  ado: TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;
    sql := 'select slx , datediff(d,cast(SLVV as datetime),getdate()), ' +
      ' SLVV from parametreler where slk = ' + QuotedStr ('30') + ' and slb = ' + QuotedStr ('02');

    datalar.QuerySelect(ado, sql);

    if ado.Fields[1].asinteger >= ado.Fields[0].asinteger Then
      YedeklemeUyari := ado.Fields[1].asinteger
    Else
      YedeklemeUyari := 0;
  finally
    ado.Free;
  end;
end;

procedure strtostrings(ayirac: string; text: string; const Strings: TStrings);
var
  sql: string;
  ado: TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;
    sql := 'select datavalue from dbo.strtotable(' + QuotedStr(text)
      + ',' + QuotedStr(ayirac) + ')';
    datalar.QuerySelect(ado, sql);

    Strings.Clear;
    while not ado.eof do
    begin
      if Length(ado.Fields[0].AsString) > 0 then
        Strings.Add(ado.Fields[0].AsString);
      ado.Next;
    end;
  finally
    ado.Free;
  end;
end;

function Songelis(DosyaNo: string): string;
var
  sql: string;
  ado: TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;

    sql := 'select max(gelisNo) from Hasta_gelisler where dosyaNo = ' + QuotedStr
      (DosyaNo);
    datalar.QuerySelect(ado, sql);

    if ado.eof then
      Result := '1'
    else
      Result := ado.Fields[0].AsString;
  finally
    ado.Free;
  end;
end;

function MernisUserPass(var userid: string; var pasword: string): Boolean;
var
  sql: string;
  ado: TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;

    sql := 'select SLB,SLT from parametreler where SLk = ' + QuotedStr ('97');
    datalar.QuerySelect(ado, sql);

    if ado.eof then
    begin
      Result := False;

    end
    else
    begin
      Result := True;
      userid := ado.FieldByName('SLB').AsString;
      pasword := ado.FieldByName('SLT').AsString;
    end;
    ado.close;
  finally
    ado.Free;
  end;
end;

function GetAveCharSize(Canvas: TCanvas): TPoint;
{$IF DEFINED(CLR)}
var
  I: Integer;
  Buffer: string;
  Size: TSize;
begin
  SetLength(Buffer, 52);
  for I := 0 to 25 do
    Buffer[I + 1] := Chr(I + Ord('A'));
  for I := 0 to 25 do
    Buffer[I + 27] := Chr(I + Ord('a'));
  GetTextExtentPoint(Canvas.Handle, Buffer, 52, Size);
  Result.x := Size.cx div 52;
  Result.y := Size.cy;
end;
{$ELSE}

var
  I: Integer;
  Buffer: array [0 .. 51] of Char;
begin
  for I := 0 to 25 do
    Buffer[I] := Chr(I + Ord('A'));
  for I := 0 to 25 do
    Buffer[I + 26] := Chr(I + Ord('a'));
  GetTextExtentPoint(Canvas.Handle, Buffer, 52, TSize(Result));
  Result.x := Result.x div 52;
end;
{$IFEND}

function InputQueryM(const ACaption, APrompt: string;
  var Value: string): Boolean;
var
  Form: TForm;
  Prompt: TLabel;
  Edit: TEdit;
  DialogUnits: TPoint;
  ButtonTop, ButtonWidth, ButtonHeight: Integer;
begin
  Result := False;
  Form := TForm.Create(Application);
  with Form do
    try
      Canvas.Font := Font;
      DialogUnits := GetAveCharSize(Canvas);
      BorderStyle := bsDialog;
      Caption := ACaption;
      ClientWidth := MulDiv(180, DialogUnits.x, 4);
      PopupMode := pmAuto;
      Position := poScreenCenter;
      Prompt := TLabel.Create(Form);
      with Prompt do
      begin
        Parent := Form;
        Caption := APrompt;
        Left := MulDiv(8, DialogUnits.x, 4);
        Top := MulDiv(8, DialogUnits.y, 8);
        Constraints.MaxWidth := MulDiv(164, DialogUnits.x, 4);
        WordWrap := True;

      end;
      Edit := TEdit.Create(Form);
      with Edit do
      begin
        Parent := Form;
        Left := Prompt.Left;
        Top := Prompt.Top + Prompt.Height + 5;
        Width := MulDiv(164, DialogUnits.x, 4);
        MaxLength := 255;
        text := Value;
        PasswordChar := '*';
        SelectAll;
      end;
      ButtonTop := Edit.Top + Edit.Height + 15;
      ButtonWidth := MulDiv(50, DialogUnits.x, 4);
      ButtonHeight := MulDiv(14, DialogUnits.y, 8);
      with TButton.Create(Form) do
      begin
        Parent := Form;
        Caption := SMsgDlgOK;
        ModalResult := mrOk;
        Default := True;
        SetBounds(MulDiv(38, DialogUnits.x, 4), ButtonTop, ButtonWidth,
          ButtonHeight);
      end;
      with TButton.Create(Form) do
      begin
        Parent := Form;
        Caption := SMsgDlgCancel;
        ModalResult := mrCancel;
        Cancel := True;
        SetBounds(MulDiv(92, DialogUnits.x, 4), Edit.Top + Edit.Height + 15,
          ButtonWidth, ButtonHeight);
        Form.ClientHeight := Top + Height + 13;
      end;
      if ShowModal = mrOk then
      begin
        Value := Edit.text;
        Result := True;
      end;
    finally
      Form.Free;
    end;
end;

function InputBoxM(const ACaption, APrompt, ADefault: string): string;
begin
  Result := ADefault;
  InputQueryM(ACaption, APrompt, Result);
end;

function TCKontrol(const tcId: string): Boolean;
var
  l: Int64;
  tmp, tmp1: Int64;
  odd_sum, even_sum: Longint;
  Total: Longint;
  ChkDigit1, ChkDigit2: Longint;
  d: array [0 .. 9] of Longint;
  n: Integer;
begin
  try
    if Length(tcId) <> 11 then
    begin
      Result := False;
      Exit;
    end;

    l := StrToInt64(tcId);
    tmp := l div 100;
    tmp1 := l div 100;
    for n := 1 to 9 do
    begin
      d[n] := tmp1 mod 10;
      tmp1 := tmp1 div 10;
    end;
    odd_sum := d[9] + d[7] + d[5] + d[3] + d[1];
    even_sum := d[8] + d[6] + d[4] + d[2];
    Total := (odd_sum * 3) + even_sum;
    ChkDigit1 := (10 - (Total mod 10)) mod 10;
    odd_sum := ChkDigit1 + d[8] + d[6] + d[4] + d[2];
    even_sum := d[9] + d[7] + d[5] + d[3] + d[1];
    Total := (odd_sum * 3) + even_sum;
    ChkDigit2 := (10 - (Total mod 10)) mod 10;
    tmp := (tmp * 100) + (ChkDigit1 * 10) + ChkDigit2;
    Result := (tmp = l);
  except
    Result := False;
  End;
end;

function EnsonRaporProtokolNo: integer;
var
  sql: string;
  ado: TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;
    sql :=
      'declare @SLX int select @SLX = isnull(SLX,0) from parametreler where SLK = ' + QuotedStr ('00') + ' and SLB = ' + QuotedStr ('21') + ' update parametreler set SLX  = @SLX+1 from parametreler where SLK = ' + QuotedStr ('00') + ' and SLB = ' + QuotedStr ('21') + ' select @SLX+1 ';
    datalar.QuerySelect(ado, sql);
    EnsonRaporProtokolNo := ado.Fields[0].AsInteger;
  finally
    ado.Free;
  end;
end;

function EnsonSeansProtokolNo(SirketKod,SubeKod: string ; Tip : string = 'Re�ete'): string;
var
  sql: string;
  ado: TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;
    sql := 'sp_YeniReceteProtokol ' + QuotedStr(SirketKod) + ',' +   QuotedStr(Tip);
    datalar.QuerySelect(ado, sql);

    if not ado.eof then
      EnsonSeansProtokolNo := ado.Fields[0].AsString
    else
      EnsonSeansProtokolNo := '0';
  finally
    ado.Free;
  end;
end;

function doktorKlinikKoduSaglikNet(doktor: string): string;
var
  sql: string;
  ado: TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;
    sql := 'select isnull(SLZ,0) from doktorlar d ' +
      'join servIsler s on s.kodu = cast(d.Brans as varchar) ' +
      ' where d.kod = ' + QuotedStr(doktor);
    datalar.QuerySelect(ado, sql);
    if not ado.eof then
      doktorKlinikKoduSaglikNet := ado.Fields[0].AsString
    else
      doktorKlinikKoduSaglikNet := '0';
  finally
    ado.Free;
  end;
end;

function protokolGuncelle(Id, protokolNo, doktor: string): Boolean;
var
  sql, yil: string;
  ado: TADOQuery;
begin
  yil := copy(tarihal(date()), 1, 4);

  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;

    sql := 'update gelisDetay set SNPROTOKOLNO = ' + QuotedStr(protokolNo)
      + ' where sirano = ' + Id + ' select @@error ';

    datalar.QuerySelect(ado, sql);

    if ado.Fields[0].AsInteger = 0 then
      Result := True
    Else
      Result := False;
  finally
    ado.Free;
  end;
end;


function IlacAdiToBarkod(ilacAdi : string) : string;
begin
  IlacAdiToBarkod := '';
  IlacAdiToBarkod := datalar.QuerySelect('select barkod from OSGB_MASTER.dbo.ilacListesi where ilacAdi = ' + QuotedStr(ilacAdi)).FieldByName('barkod').AsString;
end;


function IlacKoduToUnite(code, dosya, gelis: string;
  var peryot, peryotAdet: string): real;
var
  sql: string;
  ado: TADOQuery;
begin
  Result := 1;
  peryot := '3';
  peryotAdet := '1';
  try
    ado := TADOQuery.Create(nil);
    try
      ado.Connection := datalar.ADOConnection2;
      sql :=
        'select unite = isnull(UNITE,1),isnull(dbo.IlackoduPeryot(' + QuotedStr
        (code) + ',' + QuotedStr(dosya) + ',' + gelis + '),3)' +
        ' ,isnull(dbo.IlackoduPeryotAdet(' + QuotedStr(code) + ',' + QuotedStr
        (dosya) + ',' + gelis + '),  1)' + ' from OSGB_MASTER.dbo.ilacListesi where barkod = ' +
        QuotedStr(code);
      datalar.QuerySelect(ado, sql);

      if not ado.eof then
      begin
        Result := ado.Fields[0].AsFloat;
        peryot := ado.Fields[1].AsString;
        peryotAdet := ado.Fields[2].AsString;
      end
      else
      begin
        Result := 1;
        peryot := '3';
        peryotAdet := '1';
      end;
    finally
      ado.Free;
    end;
  except

  end;
end;

function cxCheckListSecili01(c: TcxCheckListBox): string;
var
  r: integer;
  cs: string;
begin
  for r := 0 to c.Items.Count - 1 do
  begin
    if c.Items[r].Checked then
      cs := cs + '1'
    else
      cs := cs + '0';
  end;

  Result := cs;

end;

procedure cxCheckListSec01(cL: TcxCheckListBox; c: string);
var
  r: integer;
begin
  for r := 0 to cL.Items.Count - 1 do
  begin
    cL.Items[r].Checked := False;
  end;

  for r := 1 to Length(c) do
  begin
    cL.Items[r - 1].Checked := StrToBool(c[r]);
  end;
end;

function cxCheckListSecili(c: TcxCheckListBox): string;
var
  r: integer;
  cs: string;
begin
  for r := 0 to c.Items.Count - 1 do
  begin
    if c.Items[r].Checked then
      cs := cs + inttostr(r) + ',';
  end;

  Result := cs;

end;

procedure cxCheckListSec(cL: TcxCheckListBox; c: string);
var
  r: integer;
  t: tstringlist;
begin
  for r := 0 to cL.Items.Count - 1 do
  begin
    cL.Items[r].Checked := False;
  end;

  t := tstringlist.Create;
  try
    Split(',', c, t);

    for r := 0 to t.Count - 1 do
    begin
      if t[r] <> '' Then
        cL.Items[strtoint(t[r])].Checked := True;
    end;
  finally
    t.Free;
  end;
end;

function provizyonTakipTiptoReceteTip(Tip: string): integer;
var
  t: integer;
begin

  if Tip = 'N' then
    t := 1
  else if Tip = 'I' then
    t := 5
  else if Tip = 'D' then
    t := 3
  else if Tip = 'V' then
    t := 4
  else if Tip = 'T' then
    t := 2
  else if Tip = 'M' then
    t := 6
  else
    t := 1;

  Result := t;

end;

procedure FilterGrid(Sender: TcxGridDBTableView; var Key: string;
  var arama: string; colum: integer; F: Boolean);
var
  s: string;
begin
  AramaText := AramaText + s;

  if Key = '' then
  begin
    Sender.DataController.Filter.Root.Clear;
    Exit;
  end;

  if F = True Then
  Begin
    Sender.DataController.Filter.Root.AddItem(Sender.Columns[colum], foLike,
      Key + '%', Key);
  End;

end;

procedure KeyPressGridF(Sender: TcxGridDBTableView; var Key: Char;
  var arama: string; colum: integer; F: Boolean);
var
  s: string;
begin

  if Key = '�' Then Key := 'I';
  if Key = 'i' Then Key := '�';

  s := AnsiUpperCase(Key);
  if s[1] in [#13, #10, #9, #14] Then
    Exit;
  // ['A'..'Z', '0'..'9', '�','�','�','�','�','�']

  if (Key in [#27]) Then
  Begin
    AramaText := '';
    arama := '';
    if F = True Then
    Begin
      Sender.DataController.Filter.Root.Clear;
      // sender.DataController.Filter.Root.AddItem(sender.Columns[colum],
      // foLike, aramaText+'%' , aramaText);
    End;
    Exit;
  End;



  if (Key in [#8]) Then
  begin
    if (Length(AramaText) > 0) Then
      AramaText := copy(AramaText, 1, Length(AramaText) - 1)
    else begin
      AramaText := '';
      Sender.DataController.Filter.Root.Clear;
      Exit;
    end;
    if F = True Then
    Begin
      Sender.DataController.Filter.Root.Clear;
      Sender.DataController.Filter.Root.AddItem(Sender.Columns[colum], foLike,
        AramaText + '%', AramaText);
    End;
  end
  else
//  if (s[1] in ['A'..'Z','a'..'z']) or (s[1] in ['�','�','�','�','�','�']) then

  AramaText := AramaText + s[1];

  if F = True
  Then Begin
      Sender.DataController.Filter.Root.Clear;
      Sender.DataController.Filter.Root.AddItem(Sender.Columns[colum], foLike,AramaText + '%', AramaText);
  End;

  arama := AramaText;

end;

function receteIlacBilgisiGetir(barkod: string): TReceteIlacBilgisi;
var
  sql: string;
  ado: TADOQuery;
begin

  try
    ado := TADOQuery.Create(nil);
    try
      ado.Connection := datalar.ADOConnection2;

      sql := 'select * from ilacListesi where barkod = ' + QuotedStr(barkod);
      datalar.QuerySelect(ado, sql);

      if not ado.eof then
      begin
        Result.kodu := ado.FieldByName('barkod').AsString;
        Result.adi := ado.FieldByName('ilacAdi').AsString;
        Result.aktif := ado.FieldByName('aktif').AsInteger;
        Result.adoz := ado.FieldByName('ambalajMiktar').AsFloat;
        Result.tekdoz := ado.FieldByName('tekDozMiktar').AsFloat;
      end;
    finally
      ado.Free;
    end;

  except
  end;
end;

function DosyaNoHastaTel(DosyaNo: string; Telefon : string = ''): string;
var
  sql, Tel: string;
  ado: TADOQuery;

begin
  Tel := '';
  if Telefon = '' then
  begin
    ado := TADOQuery.Create(nil);
    try
      ado.Connection := datalar.ADOConnection2;
      sql := 'select EV_TEL1  from HastaKart where dosyaNO = ' + QuotedStr(DosyaNo);
      datalar.QuerySelect(ado, sql);
      Tel := ado.Fields[0].AsString;
    finally
      ado.Free;
    end;
  end
  Else
   Tel := Telefon;

  Tel := trim(Tel); // telefondan sa� sol bo�luk varsa at
  if copy(Tel, 1, 1) = '0' then
  Tel := copy(Tel, 2, 20); // telefon ilk de�eri 0 sa at
  Tel := StringReplace(Tel, ' ', '', [rfReplaceAll]);
  // telefon iinde bo�luk varsa at
  Tel := '90' + Tel; // tel ba��na 90 ekle

  Result := Tel;


end;


function DosyaNoPersonelTel(DosyaNo: string; Telefon : string = ''): string;
var
  sql, Tel: string;
  ado: TADOQuery;

begin
  Tel := '';
  if Telefon = '' then
  begin
    ado := TADOQuery.Create(nil);
    try
      ado.Connection := datalar.ADOConnection2;
      sql := 'select EV_TEL1  from PersonelKart where dosyaNO = ' + QuotedStr(DosyaNo);
      datalar.QuerySelect(ado, sql);
      Tel := ado.Fields[0].AsString;
    finally
      ado.Free;
    end;
  end
  Else
   Tel := Telefon;

  Tel := trim(Tel); // telefondan sa� sol bo�luk varsa at
  if copy(Tel, 1, 1) = '0' then
  Tel := copy(Tel, 2, 20); // telefon ilk de�eri 0 sa at
  Tel := StringReplace(Tel, ' ', '', [rfReplaceAll]);
  // telefon iinde bo�luk varsa at
  Tel := '90' + Tel; // tel ba��na 90 ekle

  Result := Tel;


end;

function DosyaNoTC(DosyaNo: string): string; overload;
var
  sql: string;
  ado: TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;
    sql := 'select TCKIMLIKNO  from hastakart where dosyaNO = ' + QuotedStr
      (DosyaNo);
    datalar.QuerySelect(ado, sql);

    Result := ado.Fields[0].AsString;
  finally
    ado.Free;
  end;
end;

function DosyaNoTC(DosyaNo: string; var idealKilo: string): string; overload;
var
  sql: string;
  ado: TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;
    sql :=
      'select TCKIMLIKNO ,IDEALKiLO from hastakart where dosyaNO = ' + QuotedStr
      (DosyaNo);
    datalar.QuerySelect(ado, sql);
    idealKilo := ado.Fields[1].AsString;
    Result := ado.Fields[0].AsString;
  finally
    ado.Free;
  end;
end;

function DosyaNoHastaAd(DosyaNo: string): string;
var
  sql: string;
  ado: TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;
    sql :=
      'select HASTAADI + '' '' + HASTASOYADI from hastakart where dosyaNO = ' + QuotedStr(DosyaNo);
    datalar.QuerySelect(ado, sql);

    Result := ado.Fields[0].AsString;
  finally
    ado.Free;
  end;
end;

function StokBul(_kodu: string; var Birim: string; var kdv: integer): string;
var
  sql: string;
  ado : TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;
    sql :=
      'select name1,ALIMBIRIM,TANIM,kdv from ILACSARF Where Code = ' + QuotedStr (_kodu);
    datalar.QuerySelect(ado, sql);

    if not ado.eof Then
    Begin
      Result := ado.Fields[0].AsString;
      Birim := ado.Fields[1].AsString;
      kdv := ado.Fields[3].AsInteger;
      // IlacSarf := datalar.ADO_SQL3.Fields[2].AsString;
    end
    else
      Result := '';
  finally
    ado.Free;
  end;
end;

function SeansKontrol(s, mn, t: string; DosyaNo: string = ''): string;
var
  ado: TADOQuery;
  sql: string;
begin

  if mn = '' then
  begin
    Result := '';
    Exit;
  end;

  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;

    sql :=
      'select * from hareketlerSeans g join hastakart h on h.dosyaNo = g.dosyaNo ' +
      ' where g.dosyaNo <> ' + QuotedStr(DosyaNo) +
      ' and g.seans = ' + QuotedStr(s) +
      ' and Tarih = ' + QuotedStr(tarih(t)) +
      ' and g.makinaNo = ' + QuotedStr(mn) +
      ' and g.durum = 1' +
      ' and sirketKod = ' + QuotedStr(datalar.AktifSirket);
    datalar.QuerySelect(ado, sql);

    if not ado.eof then
    begin
      Result := ado.FieldByName('dosyaNo').AsString + '-' + ado.FieldByName
        ('HASTAADI').AsString + ' ' + ado.FieldByName('HASTASOYADI').AsString;

    end;
  finally
    ado.Free;
  end;
end;

function IlacReceteTaniEkle(kod: string): String;
var
  ado: TADOQuery;
  sql: string;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;

    sql := 'select ICD,icd.TANI from OSGB_MASTER.dbo.ilacListesi I ' +
      ' left join OSGB_MASTER.dbo.icd_teshisleri icd on icd.ICDKODU = I.ICD ' + ' where barkod = ' +
      QuotedStr(kod);
    datalar.QuerySelect(ado, sql);

    Result := ado.Fields[0].AsString + ';' + ado.Fields[1].AsString;
  finally
    ado.Free;
  end;
end;

function IlacReceteAciklama(_dosyaNo, GelisNo, kod, doz: string ; dozAsimiDikkateAlma : string = '0'): tstringlist;
var
  ado: TADOQuery;
  sql, s, d: string;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;

    Result := tstringlist.Create;
    try
      sql := 'select dbo.IlackoduToReceteBilgisi(' + QuotedStr(kod)
        + ',' + QuotedStr(_dosyaNo) + ',' + GelisNo + ',' + doz + ',' +  dozAsimiDikkateAlma + ')';
      datalar.QuerySelect(ado, sql);

      if ado.Fields[0].AsString <> '' then
        Result.Add('2 ' + ado.Fields[0].AsString);

    except
    end;

    sql := 'exec sp_IlackoduToReceteBilgisiTetkikSonuc ' + QuotedStr(kod)
      + ',' + QuotedStr(_dosyaNo) + ',' + GelisNo;
    datalar.QuerySelect(ado, sql);


    d := '';
    s := ado.Fields[0].AsString;
   (*
    while not ado.eof do
    begin
      if ado.Fields[0].AsString = '' Then
        d := ado.Fields[1].AsString
      Else
        d := ado.Fields[0].AsString + ':' + ado.Fields[1]
          .AsString + ' - ' + ado.Fields[2].AsString + ' - ';

      s := s + d;
      ado.Next;
    end;
     *)

    if s <> '' Then
      Result.Add('4 ' + s);

    (*
      s := '';

      sql := 'select isnull(Aciklama,'''') from ETkenMaddeSutKurallari ' +
      ' where EtkenMadde in (select ETKENMADDE from ILACLAR where code = ' + QuotedStr(kod) + ')';
      datalar.QuerySelect(ado,sql);
      s := ado.Fields[0].AsString;
      if s <> '' then
      List.Add('1 ' + s);
      *)


    (*
    s := '';

    sql :=
      'select isnull(Aciklama,'''') from OSGB_MASTER.dbo.ilacListesi '
      + '  where barkod = ' + QuotedStr(kod);
    datalar.QuerySelect(ado, sql);
    s := ado.Fields[0].AsString;
    if s <> '' then
      Result.Add('1 ' + s);
      *)

  finally
    ado.Free;
  end;
end;

function RaporGecerlimi(_dosyaNo: string): double;
var
  sql, _Tarih: string;
  gun, _kalangun: double;
  ado: TADOQuery;
begin
  Result := -2;
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;

    sql := 'select convert(varchar,BitisTarihi,112) from Raporlar where Aktif = ' + QuotedStr ('1') + ' and dosyaNo = ' + QuotedStr (_dosyaNo);
    datalar.QuerySelect(ado, sql);

    if ado.Fields[0].AsString = '' then
    begin
      Result := -2;
      Exit;
    end;
    _Tarih := FormattedTarih(ado.Fields[0].AsString);

    sql := 'select SLX from Parametreler  where SLK = ' + QuotedStr ('30') + ' and SLB = ' + QuotedStr ('01');
    datalar.QuerySelect(ado, sql);
    gun := ado.Fields[0].AsInteger;

    _kalangun := strtodate(_Tarih) - date();

    if _kalangun <= 0 then
    begin
      Result := 0;
      Exit;
    end;

    if _kalangun < gun then
    begin
      Result := _kalangun;
      Exit;
    end;

    if _kalangun >= gun then
      Result := -1;
  finally
    ado.Free;
  end;
end;

function sureKontrol: Boolean;
var
  sql: string;
  ado: TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;
    sql := 'select SLY from Parametreler  where SLK = ' + QuotedStr ('30') + ' and SLB = ' + QuotedStr ('01');
    datalar.QuerySelect(ado, sql);
    if ado.Fields[0].AsFloat = 1 then
      Result := True
    else
      Result := False;
  finally
    ado.Free;
  end;
end;

(*
  function Hgbal : string;
  var
  Test : TestTotal;
  sonuc : SonucDurum;
  Testler : ArrayOfTestTotal;
  ado : TADOQuery;
  sql  , s : string;
  x : integer;
  begin


  ado := TADOQuery.Create(nil);
  ado.Connection := datalar.ADOConnection2;

  sql := 'exec sp_HGB_Gonder';
  datalar.QuerySelect(ado,sql);

  SetLength(Testler,ado.RecordCount);
  x := 0;
  while not ado.Eof do
  begin
  Test := TestTotal.Create;
  Test.Test := ado.fieldbyname('NAME1').AsString;
  Test.ay := ado.fieldbyname('ay').AsString;
  Test.t := ado.fieldbyname('t').AsString;
  test.A := ado.fieldbyname('A').AsString;
  test.B := ado.fieldbyname('B').AsString;
  test.C := ado.fieldbyname('C').AsString;
  test.Kurum := ado.fieldbyname('Kurum').AsString;
  Testler[x] := test;
  ado.Next;
  x := x + 1;
  end;



  Sonuc := SonucDurum.Create;

  try
  Sonuc := (datalar.LisansAl as Service1Soap_).TestTotalCvp(Testler);
  except on e : Exception do
  begin
  ShowMessageSkin(e.Message,'','','info');
  end;

  end;

  Result := sonuc.SonucMsj;

  end;

  function MesajKontrol(id : string) : mesajBilgi;
  var
  msg : mesajBilgi;
  begin
  msg := mesajBilgi.Create;
  datalar.LisansAl.URL := 'http://www.noktayazilim.net/noktaservice.asmx';
  try
  msg := (datalar.LisansAl as Service1Soap_).MesajOku(id);
  except on e : Exception do
  begin
  ShowMessageSkin(e.Message,'','','info');
  msg.id := '0';
  end;

  end;

  Result := msg;

  end;
  *)


procedure MenuIDRun(MenuId : integer);
begin
  case MenuId of
   5 : ImzaFoyleriYaz;

  end;
end;

procedure ImzaFoyleriYaz;
var
  sql : string;
  TopluDataset : TDataSetKadir;
begin
  sql := 'exec sp_hastaListesi ' + QuotedStr ('1') + ','''', ' + QuotedStr(tarihal(date));
  TopluDataset.Dataset1 := datalar.QuerySelect(sql);
  TopluDataset.Dataset2 := kadir.KurumBilgi;
  PrintYap('039','\ImzaFoyu','',TopluDataset,pTNone);
end;


Procedure EpikrizYaz(DosyaNo, GelisNo: string; QR: Boolean ; QRText : string = '');
var
  sql , text : string;
  printT : TprintTip;
  TopluDataset : TDataSetKadir;
begin

  TopluDataset.Dataset0 := datalar.ADO_aktifSirketLogo;

  sql := 'exec sp_epikriz ' + QuotedStr(DosyaNo) + ',' + QuotedStr('Basl�k')
    + ',' + GelisNo;
  TopluDataset.Dataset1 := datalar.QuerySelect(sql);

  sql := 'exec sp_epikriz ' + QuotedStr(DosyaNo) + ',' + QuotedStr('Tahlil')
    + ',' + GelisNo;
  TopluDataset.Dataset2 :=  datalar.QuerySelect(sql);


  sql := 'exec sp_epikriz ' + QuotedStr(DosyaNo) + ',' + QuotedStr('Radyoloji')
    + ',' + GelisNo;
  TopluDataset.Dataset6 :=   datalar.QuerySelect(sql);


  sql := 'exec sp_epikriz ' + QuotedStr(DosyaNo) + ',' + QuotedStr('Ilac')
    + ',' + GelisNo;
  TopluDataset.Dataset3 := datalar.QuerySelect(sql);


  sql := 'exec sp_epikriz ' + QuotedStr(DosyaNo) + ',' + QuotedStr('Kurum');
  TopluDataset.Dataset4 :=   datalar.QuerySelect(sql);


  sql := 'exec sp_epikriz ' + QuotedStr(DosyaNo) + ',' + QuotedStr
    ('TahlilHesap') + ',' + GelisNo;
  TopluDataset.Dataset5 :=   datalar.QuerySelect(sql);


  sql := 'exec sp_epikriz ' + QuotedStr(DosyaNo) + ',' + QuotedStr('Asi')
    + ',' + GelisNo;
  TopluDataset.Dataset7 :=   datalar.QuerySelect(sql);;


  sql := 'exec sp_epikriz ' + QuotedStr(DosyaNo) + ',' + QuotedStr('Kons')
    + ',' + GelisNo;
  TopluDataset.Dataset8 :=   datalar.QuerySelect(sql);

  try
    if DirectoryExists('C:\NoktaV3\MobilQR') = False
    then
      MkDir('C:\NoktaV3\MobilQR');
    FotoEkle('');
    text := 'http://mavinokta-store.net:8080/m?token='+
    EncodeString(EncodeString(EncodeString('mvnkt'))+#29+EncodeString(EncodeString(QRText))+#29+EncodeString(EncodeString('YeM')));
    text := StringReplace(text ,#$D#$A,'',[rfReplaceAll]);
    QRBarkod(text,'C:\NoktaV3\MobilQR\' + DosyaNo +'.jpg');
    QRYukle(datalar.ADO_FOTO ,'QR','C:\NoktaV3\MobilQR\' + DosyaNo+'.jpg');
    TopluDataset.Dataset10 := datalar.ADO_FOTO;
  except
  end;

  if QR = True then
  begin
    PrintYap('030B','\Bo� Epikriz','',TopluDataset,pTNone);
  end
  else
  begin
    PrintYap('030','\Epikriz','',TopluDataset,pTNone);
  end;


end;



Procedure TedaviKartiYaz(DosyaNo, GelisNo: string; QR: Boolean ; QRText : string = '');
var
  sql , text : string;
  printT : TprintTip;
  TopluDataset : TDataSetKadir;
begin

  TopluDataset.Dataset0 := datalar.ADO_aktifSirketLogo;

  sql := 'exec sp_epikriz ' + QuotedStr(DosyaNo) + ',' + QuotedStr('Basl�k')
    + ',' + GelisNo;
  TopluDataset.Dataset1 := datalar.QuerySelect(sql);

  sql := 'exec sp_epikriz ' + QuotedStr(DosyaNo) + ',' + QuotedStr('Tahlil')
    + ',' + GelisNo;
  TopluDataset.Dataset2 :=  datalar.QuerySelect(sql);


  sql := 'exec sp_epikriz ' + QuotedStr(DosyaNo) + ',' + QuotedStr('Radyoloji')
    + ',' + GelisNo;
  TopluDataset.Dataset6 :=   datalar.QuerySelect(sql);


  sql := 'exec sp_epikriz ' + QuotedStr(DosyaNo) + ',' + QuotedStr('Ilac')
    + ',' + GelisNo;
  TopluDataset.Dataset3 := datalar.QuerySelect(sql);


  sql := 'exec sp_epikriz ' + QuotedStr(DosyaNo) + ',' + QuotedStr('Kurum');
  TopluDataset.Dataset4 :=   datalar.QuerySelect(sql);


  sql := 'exec sp_epikriz ' + QuotedStr(DosyaNo) + ',' + QuotedStr
    ('TahlilHesap') + ',' + GelisNo;
  TopluDataset.Dataset5 :=   datalar.QuerySelect(sql);


  sql := 'exec sp_epikriz ' + QuotedStr(DosyaNo) + ',' + QuotedStr('Asi')
    + ',' + GelisNo;
  TopluDataset.Dataset7 :=   datalar.QuerySelect(sql);;


  sql := 'exec sp_epikriz ' + QuotedStr(DosyaNo) + ',' + QuotedStr('Kons')
    + ',' + GelisNo;
  TopluDataset.Dataset8 :=   datalar.QuerySelect(sql);

  try
    if DirectoryExists('C:\NoktaV3\MobilQR') = False
    then
      MkDir('C:\NoktaV3\MobilQR');
    FotoEkle('');
    text := 'http://mavinokta-store.net:8080/m?token='+
    EncodeString(EncodeString(EncodeString('mvnkt'))+#29+EncodeString(EncodeString(QRText))+#29+EncodeString(EncodeString('YeM')));
    text := StringReplace(text ,#$D#$A,'',[rfReplaceAll]);
    QRBarkod(text,'C:\NoktaV3\MobilQR\' + DosyaNo +'.jpg');
    QRYukle(datalar.ADO_FOTO ,'QR','C:\NoktaV3\MobilQR\' + DosyaNo+'.jpg');
    TopluDataset.Dataset10 := datalar.ADO_FOTO;
  except
  end;


    PrintYap('030TK','\Tedavi Kart�','',TopluDataset,pTNone);



end;



Procedure EpikrizYaz(DosyaNo, GelisNo : string ; DataSet : Tdataset = nil);
var
  sql: string;
  ado, ado1 , ado2 , ado3 , ado4 , ado5 , ado6 , ado7 , ado8 , ado9 : TADOQuery;
  TopluDataset : TDataSetKadir;
begin
(*
if DataSet = nil then
 begin
  ado := TADOQuery.Create(nil);
  ado.Connection := datalar.ADOConnection2;
  sql := 'sp_frmPersonelIseGirisMuayene  ' + QuotedStr(DosyaNo) + ',' + gelisNo;
  datalar.QuerySelect(ado, sql);
  TopluDataset.Dataset1 := ado;
 end
 else
 *)
//  TopluDataset.Dataset1 := DataSet;


  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;
    sql := 'sp_frmPersonelIseGirisMuayene ' + QuotedStr(DosyaNo) + ',' + gelisNo + ',' + QuotedStr('PK');
    datalar.QuerySelect(ado, sql);
    TopluDataset.Dataset0 := ado;
    TopluDataset.Dataset0.name := 'IsyeriIsciBilgisi';

    ado1 := TADOQuery.Create(nil);
    try
      ado1.Connection := datalar.ADOConnection2;
      sql := 'sp_frmPersonelIseGirisMuayene ' + QuotedStr(DosyaNo) + ',' + gelisNo + ',' + QuotedStr('TA12');
      datalar.QuerySelect(ado1, sql);
      TopluDataset.Dataset1 := ado1;
      TopluDataset.Dataset1.name := 'TIBBIANAMNEZ12';

      ado2 := TADOQuery.Create(nil);
      try
        ado2.Connection := datalar.ADOConnection2;
        sql := 'sp_frmPersonelIseGirisMuayene ' + QuotedStr(DosyaNo) + ',' + gelisNo + ',' + QuotedStr('TA345678');
        datalar.QuerySelect(ado2, sql);
        TopluDataset.Dataset2 := ado2;
        TopluDataset.Dataset2.name := 'TIBBIANAMNEZ345678';

        ado3:= TADOQuery.Create(nil);
        try
          ado3.Connection := datalar.ADOConnection2;
          sql := 'sp_frmPersonelIseGirisMuayene ' + QuotedStr(DosyaNo) + ',' + gelisNo + ',' + QuotedStr('TA9');
          datalar.QuerySelect(ado3, sql);
          TopluDataset.Dataset3 := ado3;

          ado4:= TADOQuery.Create(nil);
          try
            ado4.Connection := datalar.ADOConnection2;
            sql := 'sp_frmPersonelIseGirisMuayene ' + QuotedStr(DosyaNo) + ',' + gelisNo + ',' + QuotedStr('TA10');
            datalar.QuerySelect(ado4, sql);
            TopluDataset.Dataset5 := ado4;

            ado5:= TADOQuery.Create(nil);
            try
              ado5.Connection := datalar.ADOConnection2;
              sql := 'sp_frmPersonelIseGirisMuayene ' + QuotedStr(DosyaNo) + ',' + gelisNo + ',' + QuotedStr('FM1-8');
              datalar.QuerySelect(ado5, sql);
              TopluDataset.Dataset6 := ado5;

              ado6:= TADOQuery.Create(nil);
              try
                ado6.Connection := datalar.ADOConnection2;
                sql := 'sp_frmPersonelIseGirisMuayene ' + QuotedStr(DosyaNo) + ',' + gelisNo + ',' + QuotedStr('FM9');
                datalar.QuerySelect(ado6, sql);
                TopluDataset.Dataset7 := ado6;

                ado7:= TADOQuery.Create(nil);
                try
                  ado7.Connection := datalar.ADOConnection2;
                  sql := 'sp_frmPersonelIseGirisMuayene ' + QuotedStr(DosyaNo) + ',' + gelisNo + ',' + QuotedStr('LB');
                  datalar.QuerySelect(ado7, sql);
                  TopluDataset.Dataset8 := ado7;

                  ado8:= TADOQuery.Create(nil);
                  try
                    ado8.Connection := datalar.ADOConnection2;
                    sql := 'sp_frmPersonelIseGirisMuayene ' + QuotedStr(DosyaNo) + ',' + gelisNo + ',' + QuotedStr('KS');
                    datalar.QuerySelect(ado8, sql);
                    TopluDataset.Dataset9 := ado8;


                    ado9 := TADOQuery.Create(nil);
                    try
                      ado9.Connection := datalar.ADOConnection2;
                      sql := 'select * from PersonelFoto where dosyaNo = ' + QuotedStr(DosyaNo);
                      datalar.QuerySelect(ado9, sql);
                      TopluDataset.Dataset4 := ado9;

                      PrintYap('001','��e Giri� Muayene Formu','',TopluDataset,pTNone);

                    //  if Assigned(ado) then ado.Free;
                    finally
                      ado9.free;
                    end;
                  finally
                    ado8.Free;
                  end;
                finally
                  ado7.Free;
                end;
              finally
                ado6.Free;
              end;
            finally
              ado5.Free;
            end;
          finally
            ado4.Free;
          end;
        finally
          ado3.Free;
        end;
      finally
        ado2.Free;
      end;
    finally
      ado1.Free;
    end;
  finally
    ado.Free;
  end;
end;

function DiyalizPaketiUygula(DosyaNo, GelisNo, sablonId: string): integer;
var
  sql: string;
  ado, ADO_ILACKULLANIM: TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;

    ADO_ILACKULLANIM := TADOQuery.Create(nil);
    try
      ADO_ILACKULLANIM.Connection := datalar.ADOConnection2;

      sql := 'select distinct stokkodu,stokadi,DS.grup,miktar,I.medulaGitsin, ' +
        ' firmaTanimliyiciDef,ensonAlisTarihi from DiyalizPaketSablon DS ' +
        ' join ILACSARF I on I.code = DS.stokkodu ' + ' where sablonId = ' +
        sablonId;
      datalar.QuerySelect(ado, sql);

      sql := 'select * from hareketlerIS where dosyaNo = ' + QuotedStr(DosyaNo)
        + ' and gelisNO = ' + GelisNo;
      datalar.QuerySelect(ADO_ILACKULLANIM, sql);

      try
        while not ado.eof do
        begin

          ADO_ILACKULLANIM.Append;
          ADO_ILACKULLANIM.FieldByName('dosyaNo').AsString := DosyaNo;
          ADO_ILACKULLANIM.FieldByName('gelisNo').AsString := GelisNo;
          ADO_ILACKULLANIM.FieldByName('gelisDetayNo').AsString := GelisNo;

          ADO_ILACKULLANIM.FieldByName('Icode').AsString := ado.FieldByName
            ('stokkodu').AsString;
          ADO_ILACKULLANIM.FieldByName('code').AsString := ado.FieldByName
            ('stokkodu').AsString;

          ADO_ILACKULLANIM.FieldByName('name1').AsString := ado.FieldByName
            ('stokadi').AsString;
          ADO_ILACKULLANIM.FieldByName('TANIM').AsString := ado.FieldByName('grup')
            .AsString;
          ADO_ILACKULLANIM.FieldByName('AKOD').AsString := '00';
          ADO_ILACKULLANIM.FieldByName('Grup').AsString := '0';
          ADO_ILACKULLANIM.FieldByName('KDV').AsString := '8';
          ADO_ILACKULLANIM.FieldByName('Kurum').AsString := '0000';
          ADO_ILACKULLANIM.FieldByName('USER_ID').AsString := datalar.username;

          ADO_ILACKULLANIM.FieldByName('isteyenDoktor').AsString := '0000';
          ADO_ILACKULLANIM.FieldByName('yapandoktor').AsString := '0000';
          ADO_ILACKULLANIM.FieldByName('adet').AsFloat := ado.FieldByName('miktar')
            .AsFloat;
          ADO_ILACKULLANIM.FieldByName('partiKodu').AsString := '000000';
          ADO_ILACKULLANIM.FieldByName('seriNo').AsString := '0';
          ADO_ILACKULLANIM.FieldByName('firmaTanimlayiciNo')
            .AsString := ado.FieldByName('firmaTanimliyiciDef').AsString;
          ADO_ILACKULLANIM.FieldByName('malzemeSatinAlisTarihi').AsDateTime :=
            ado.FieldByName('ensonAlisTarihi').AsDateTime;
          ADO_ILACKULLANIM.FieldByName('TARIH').AsDateTime := date;
          ADO_ILACKULLANIM.FieldByName('ISLENDIMI').AsString := ifThen
            (ado.FieldByName('medulaGitsin').AsBoolean = False, 'E', 'H');

          ADO_ILACKULLANIM.post;
          ado.Next;
        end;

        Result := 0;

      except
        on e: exception do
        begin
          ShowMessage(e.Message, '', '', 'info');
          Result := 1;
        end;
      end;
    finally
      ADO_ILACKULLANIM.Free;
    end;
  finally
    ado.Free;
  end;
end;


function TestKodToNormalDegerYukle : Boolean;
var
  sql : string;
  ado: TADOQuery;
  adoC: TADOQuery;
begin
  TestKodToNormalDegerYukle := False;
  try
   sql := 'select butKodu,minD,maxD from labtestler where uygulamaAdet = ''G''';
   ado := datalar.QuerySelect(sql);

  // sql := 'select code,min,max from labtestler where uygulamaAdet = ''C''';
 //  adoC := datalar.QuerySelect(sql);

   ado.locate('butKodu','901940',[]);
   datalar.LabNormal.min901940 := ado.fieldbyname('minD').asvariant;
   datalar.LabNormal.max901940 := ado.fieldbyname('maxD').asvariant;

   ado.locate('butKodu','902210',[]);
   datalar.LabNormal.min902210 := ado.fieldbyname('minD').asvariant;
   datalar.LabNormal.max902210 := ado.fieldbyname('maxD').asvariant;

   ado.locate('butKodu','903130',[]);
   datalar.LabNormal.min903130 := ado.fieldbyname('minD').asvariant;
   datalar.LabNormal.max903130 := ado.fieldbyname('maxD').asvariant;

   ado.locate('butKodu','901260',[]);
   datalar.LabNormal.min901260 := ado.fieldbyname('minD').asvariant;
   datalar.LabNormal.max901260 := ado.fieldbyname('maxD').asvariant;

  finally
    ado.free;
    adoC.free;
  end;

  TestKodToNormalDegerYukle := True;
end;


function TestKodToNormalmi(kod : string ; deger : double): Boolean;
begin
  TestKodToNormalmi := False;

  case AnsiIndexStr(kod, ['901940', '902210', '903130','901260']) of
    0 : begin
                if (datalar.LabNormal.min901940 < deger) and
                   (datalar.LabNormal.max901940 > deger)
                 then TestKodToNormalmi := True;
             end;
    1 : begin
                if (datalar.LabNormal.min902210 < deger) and
                   (datalar.LabNormal.max902210 > deger)
                 then TestKodToNormalmi := True;
             end;
    2 : begin
                if (datalar.LabNormal.min903130 < deger) and
                   (datalar.LabNormal.max903130 > deger)
                 then TestKodToNormalmi := True;
             end;
    3 : begin
                if (datalar.LabNormal.min901260 < deger) and
                   (datalar.LabNormal.max901260 > deger)
                 then TestKodToNormalmi := True;
             end;

  end;

end;

function TestKodToNormalDeger(kod, yas, cins: string; deger: double): Boolean;
var
  sql: string;
  ado: TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;

    sql := 'select mind,maxd from Labtestler ' + ' where butkodu = ' + QuotedStr
      (kod) + ' and ( ' + floattostr(deger) + ' between mind and maxd)';

    datalar.QuerySelect(ado, sql);
    if not ado.eof Then
      Result := True
    Else
      Result := False;
  finally
    ado.Free;
  end;
end;

function kareBarkodOku(Kb: string; Gsindex: integer): TKareBarkod;
var
  //b: integer;
  KbO: TKareBarkod;
begin
  //b := Length(Kb);
  KbO.barkodNo := copy(Kb, 3, 14);

  KbO.seriNo := copy(Kb, 19, Gsindex - 19);

  KbO.SKT := copy(Kb, Gsindex + 2, 6);

  KbO.partiNo := copy(Kb, Gsindex + 10, 20);

  Result := KbO;

end;

function HizmetFaturaBul(Id: string): Boolean;
var
  sql: string;
  ado : TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;
    sql := 'select * from HizmetFaturalari where sira = ' + ifThen(Id = '', '0',
      Id);
    datalar.QuerySelect(ado, sql);
    if not ado.eof Then
      Result := True
    Else
      Result := False;
  finally
    ado.Free;
  end;
end;

function stokFaturaBul(Id: string): Boolean;
var
  sql: string;
  ado : TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;
    sql := 'select * from stokFaturalari where sira = ' + ifThen(Id = '', '0',
      Id);
    datalar.QuerySelect(ado, sql);
    if not ado.eof Then
      Result := True
    Else
      Result := False;
  finally
   ado.Free;
  end;
end;

function MuhasebeKayitTipi(cariKod: string): integer;
var
  sql: string;
  ado : TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;
    sql := 'select muhSorgu from carikartlar where carihesapKodu = ' + QuotedStr
      (cariKod);

    datalar.QuerySelect(ado, sql);
    Result := ado.Fields[0].AsInteger;
  finally
    ado.free;
  end;
end;

function SaticiFirmaBul(cariKod: string): string;
var
  sql: string;
  ado : TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;
    sql := 'select cariAd from saticilar where carikod = ' + QuotedStr(cariKod);
    datalar.QuerySelect(ado, sql);
    if not ado.eof Then
      Result := ado.Fields[0].AsString
    Else
      Result := '';
  finally
    ado.Free;
  end;
end;

procedure KeyPressGrid(Sender: TcxGridDBTableView; var Key: Char;
  var arama: string; colum: integer);
var
  s: string;
begin

  if Key = '�' Then
    Key := 'I';
  if Key = 'i' Then
    Key := '�';

  s := AnsiUpperCase(Key);
  if s[1] in [#13, #10, #9, #14] Then
    Exit;
  // ['A'..'Z', '0'..'9', '�','�','�','�','�','�']

  if (Key in [#27, #13]) Then
  Begin
    AramaText := '';
    Sender.DataController.Filter.Root.Clear;
    // sender.DataController.Filter.Root.AddItem(sender.Columns[colum],
    // foLike, aramaText+'%' , aramaText);
    Exit;
  End;

  if (Key in [#8]) Then
  begin

    if (Length(AramaText) > 0) Then
      AramaText := copy(AramaText, 1, Length(AramaText) - 1)
    else
      AramaText := '';
    // arama := arama + s;
    Sender.DataController.Filter.Root.Clear;
    Sender.DataController.Filter.Root.AddItem(Sender.Columns[colum], foLike,
      AramaText + '%', AramaText);

  end
  else

    AramaText := AramaText + s;
  // sender.DataController.Filter.Root.Clear;
  Sender.DataController.Filter.Root.AddItem(Sender.Columns[colum], foLike,
    AramaText + '%', AramaText);

  s := arama + '*' + ';*' + arama + '*';

end;

procedure YetkinizYok;
begin
  ShowMessageSkin('Bu ��lem ��in Yetkiniz Bulunmamaktad�r', '', '', 'info');
end;

procedure ComboEkle(Tip, ifade: string);
var
  sql: string;
  ado : TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;
    sql :=
      'insert into parametreler (SLK,SLB,SLT) values (' + QuotedStr ('40') +
      ',' + QuotedStr (Tip) + ',' + QuotedStr (ifade) + ')';
    datalar.QueryExec(ado, sql);
  finally
    ado.Free;
  end;
  // Combo;
end;


procedure ComboSil(Tip, ifade: string);
var
  sql: string;
  ado : TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;
    sql := 'delete from parametreler where SLK = ' + QuotedStr ('40') +
      ' and SLB = ' + QuotedStr (Tip) + ' and SLT = ' + QuotedStr (ifade);
    datalar.QueryExec(ado, sql);
  finally
    ado.Free;
  end;
  // Combo;
end;

procedure comboList(_form: TForm);
var
  _say, x, y: integer;
  sql, deger: string;
  ado : TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;
    _say := _form.ComponentCount - 1;

    for x := 0 to _say do
    begin
      if (_form.Components[x].ClassType = TComboBox) then
      begin
        sql :=
          'select SLT from Parametreler where SLK = ' + QuotedStr ('40') + ' and SLB = ' +
          QuotedStr(TComboBox(_form.Components[x]).Name);
        ado.close;
        ado.sql.Clear;
        datalar.QuerySelect(ado, sql);
        deger := TComboBox(_form.Components[x]).text;
        TComboBox(_form.Components[x]).Clear;
        for y := 1 to ado.RecordCount do
        Begin
          TComboBox(_form.Components[x]).Items.Add
            (ado.Fields[0].AsString);
          ado.Next;
        End;
        TComboBox(_form.Components[x]).text := deger;
      end;

      if (_form.Components[x].ClassType = TcxComboBox) then
      begin
        sql :=
          'select SLT from Parametreler where SLK = ' + QuotedStr ('40') + ' and SLB = ' +
          QuotedStr(TcxComboBox(_form.Components[x]).Name);
        ado.close;
        ado.sql.Clear;
        datalar.QuerySelect(ado, sql);
        deger := TcxComboBox(_form.Components[x]).text;
        TcxComboBox(_form.Components[x]).Properties.Items.Clear;
        for y := 1 to ado.RecordCount do
        Begin
          TcxComboBox(_form.Components[x]).Properties.Items.Add
            (ado.Fields[0].AsString);
          ado.Next;
        End;
        TcxComboBox(_form.Components[x]).text := deger;
      end;

    end;
  finally
    ado.Free;
  end;
end;

function KodEslestir(kod: string; var Tip: string; turId: string = ''): string;
var
  sql: string;
  ado: TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;
    sql :=
      'select butKodu,minD,maxD from Labtestler where islemkoduC = ' + QuotedStr
      (kod) + ifThen(turId <> '' , ' and TurId = ' + turId , '');
    datalar.QuerySelect(ado, sql);

    Result := ado.Fields[0].AsString;
  finally
    ado.Free;
  end;
end;

(*
  function KodEslestir(kod : string ; var tip : string ; turId : string ; test,parametre : string) : string;
  var
  sql : string;
  ado : TADOQuery;
  begin
  if turId = '147' then turId := '0';


  ado := TADOQuery.Create(nil);
  ado.Connection := datalar.ADOConnection2;
  sql := 'select butKodu,minD,maxD from Labtestler where islemkodu = ' + QuotedStr(kod+parametre) + ' and TurId = ' + turId;
  datalar.QuerySelect(ado,sql);

  if ado.Eof
  Then Begin
  sql := 'select butKodu,minD,maxD from Labtestler where islemkoduC = ' + QuotedStr(kod+parametre) + ' and TurId = ' + turId;
  datalar.QuerySelect(ado,sql);
  if not ado.Eof
  Then Begin
  result := ado.Fields[0].AsString;
  if tip = '' then tip := 'Cd';
  End
  Else
  result := '';

  End
  Else
  Begin
  result := ado.Fields[0].AsString;
  if tip = '' then tip := 'Gd';
  End;
  ado.Free;

  end;
*)

function KodEslestirNormalDeger(kod: string; turId: string;
                                 var minD, maxD, Tip: string): string;
var
  sql , where : string;
  ado: TADOQuery;
begin
  if turId = '147' then turId := '0';

  where := ' and L.labID = ' + QuotedStr(datalar._labID);

  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;
    sql := 'select TurId from Labtestler_Firma L ' +
           ' join Labtestler T on T.butKodu = L.butKodu ' +
           'where L.islemkoduC = ' + QuotedStr(kod) + where;

    if datalar.QuerySelect(sql).FieldByName('TurId').AsString <> '' then
    begin
      sql :=
        'select L.butKodu,minD,maxD,uygulamaAdet from Labtestler_Firma  L ' +
        ' join Labtestler T on T.butKodu = L.butKodu ' +
        ' where L.islemkoduC = ' + QuotedStr(kod) + ' and T.TurId = ' + turId + where;
        datalar.QuerySelect(ado, sql);
        Result := ado.Fields[0].AsString;
        minD := ado.Fields[1].AsString;
        maxD := ado.Fields[2].AsString;
        Tip := ado.Fields[3].AsString;
    end
    else
    begin
      sql :=
        'select L.butKodu,minD,maxD,uygulamaAdet from Labtestler_Firma L ' +
        ' join Labtestler T on T.butKodu = L.butKodu and T.uygulamaAdet = L.Tip ' +
        ' where L.islemkoduC = ' + QuotedStr(kod) + where;
        datalar.QuerySelect(ado, sql);
        Result := ado.Fields[0].AsString;
        minD := ado.Fields[1].AsString;
        maxD := ado.Fields[2].AsString;
        Tip := ado.Fields[3].AsString;
    end;

  finally
    ado.Free;
  end;

end;

function KodEslestirKod(kod: string; var ckod, turId: string): string;
var
  sql: string;
  ado: TADOQuery;
  x: integer;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;
    sql :=
      'select islemKodu,islemKoduC,isnull(TurId,0) from Labtestler where butKodu = ' + QuotedStr(kod);

    datalar.QuerySelect(ado, sql);

    turId := ado.Fields[2].AsString;

    x := pos('.', ado.Fields[1].AsString);
    if x > 0 Then
      ckod := copy(ado.Fields[1].AsString, x + 1, 20)
    else
      ckod := ado.Fields[1].AsString;

    x := pos('.', ado.Fields[0].AsString);
    if x > 0 Then
      Result := copy(ado.Fields[0].AsString, x + 1, 20)
    else
      Result := ado.Fields[0].AsString;
  finally
    ado.Free;
  end;
end;

function KodEslestirLabKodu(kod: string; var ckod: string): string;
var
  sql: string;
  ado: TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;
    sql := 'select butkodu from Labtestler where islemKodu = ' + QuotedStr(kod);

    datalar.QuerySelect(ado, sql);
    Result := ado.Fields[0].AsString;
  finally
    ado.Free;
  end;
end;

function SgKTipEslestirKod(kod: string): string;
var
  sql: string;
  ado: TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;
    sql := 'select butKodu  from Labtestler where SGKTip = ' + QuotedStr(kod);

    datalar.QuerySelect(ado, sql);
    Result := ado.Fields[0].AsString;
  finally
    ado.Free;
  end;
end;

function idealKilo(_dosyaNo: string): double;
var
  sql: string;
  ado: TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;

    sql := ' select IdealKilo from hastaKart where dosyaNo = ' + QuotedStr
      (_dosyaNo);
    datalar.QuerySelect(ado, sql);

    Result := ado.Fields[0].AsFloat;
  finally
    ado.Free;
  end;
end;

function SonSeansGCKilo(_dosyaNo, GelisNo: string; var g, c: double): double;
var
  sql: string;
  ado: TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;

    sql :=
      'select GIRISKILO,CIKISKILO from gelisdetay where dosyaNo = ' + QuotedStr
      (_dosyaNo) + ' and gelisNo = ' + GelisNo + ' and KanAlindimi = 1';
    datalar.QuerySelect(ado, sql);

    g := ado.Fields[0].AsFloat;
    c := ado.Fields[1].AsFloat;

    Result := (g - c);
  finally
    ado.Free;
  end;
end;

function BirOncekiSeansGCKilo(_dosyaNo, GelisNo, id: string;
  var g, c: double): double;
var
  sql: string;
  ado: TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;

    sql := 'select top 1 GIRISKILO,CIKISKILO from gelisdetay ' +
      ' where sirano < ' + id + ' and GIRISKILO > 0 and dosyaNO = ' + QuotedStr
      (_dosyaNo) + // ' and gelisNO = ' + gelisNo +
      ' order by sirano desc ';

    datalar.QuerySelect(ado, sql);

    g := ado.Fields[0].AsFloat;
    c := ado.Fields[1].AsFloat;

    Result := (g - c);
  finally
    ado.Free;
  end;
end;

function HastaBilgiProtokolCaptionYazSeans(DosyaNo, GelisNo, SeansNo: string)
  : string;
var
  sql: string;
  ado: TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;

    sql :=
      'select HASTAADI + '' '' +HASTASOYADI + '' '' + ''  Dosya A��l�� Tarihi : '' + dbo.formattedTarih(BHDAT)  ad ' + ' from Hastakart H ' + ' join gelisler g on g.dosyaNo = H.dosyaNo ' +
    // ' left join Kurumlar K on k.kurum = h.kurum  ' +
      ' where h.dosyaNo = ' + QuotedStr(DosyaNo) + ' and g.gelisNo = ' + GelisNo;

    datalar.QuerySelect(ado, sql);

    Result := ado.Fields[0].AsString;
  finally
    ado.Free;
  end;
end;

function HastaBilgiProtokolCaptionYaz(DosyaNo, GelisNo: string): string;
var
  sql: string;
  ado: TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;

    sql :=
      'select HASTAADI + '' '' +HASTASOYADI ad, PROTOKOLNO,K.AdI1 '
      + ' from Hastakart H ' +
      ' join gelisler g on g.dosyaNo = H.dosyaNo ' +
      ' left join Kurumlar K on k.kurum = h.kurum  ' + ' where h.dosyaNo = ' +
      QuotedStr(DosyaNo) + ' and g.gelisNo = ' + GelisNo;

    datalar.QuerySelect(ado, sql);

    Result := ado.Fields[0].AsString;
  finally
    ado.Free;
  end;
end;

function medulaHataCozumBul(hatakodu: string): string;
var
  ado: TADOQuery;
  sql: string;
begin
  Result := '';
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;
    sql := 'select hataCozum from medulaHataCozum where hataKodu = ' + QuotedStr
      (hatakodu);
    datalar.QuerySelect(ado, sql);
    if not ado.eof Then
      Result := ado.Fields[0].AsString;
  finally
    ado.Free;
  end;
end;

function HareketSiraNoHizmetAdi(siraNo, Tip: string): string;
var
  sql: string;
  ado: TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;

    if Tip = '0' Then
      sql := 'select tanimi from LabTestler where yeniButKodu = ' + QuotedStr
        (siraNo)
    Else
      sql := 'select (select Tanimi from LabTestler where butkodu = substring(T.butkodu,1,6)) + ''-''+T.tanimi from LabTestler T ' +
      //  ' join LabTestler LT on substring(T.butkodu,1,6) = LT.yeniButKodu ' +
        ' where T.sgkTip = ' + QuotedStr(Tip);

    datalar.QuerySelect(ado, sql);
    if ado.eof Then
    begin
      Result := '';
    End
    Else
      Result := ado.Fields[0].AsString;
  finally
    ado.Free;
  end;
end;

function EK10C(code: string): Boolean;
var
  sql: string;
  ado : TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;
    sql := 'select * from EK10 where code = ' + QuotedStr(code);

    datalar.QuerySelect(ado, sql);
    if not ado.eof Then
      Result := True
    else
      Result := False;
  finally
    ado.free;
  end;
end;

function HizmetFiyat(kod: string): real;
var
  sql: string;
  ado: TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;
    sql := 'select KSATISF00 from HIZMET where code = ' + QuotedStr('704230');
    datalar.QuerySelect(ado, sql);

    Result := ado.FieldByName('KSATISF00').AsFloat;
  finally
    ado.Free;
  end;
end;

function HizmetKoduToHizmetAdi(kod: string): string;
var
  sql: string;
  ado: TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;
    sql := 'select Tanimi from labtestler where yeniButKodu = ' + QuotedStr(kod);
    datalar.QuerySelect(ado, sql);

    Result := ado.FieldByName('Tanimi').AsString;
  finally
    ado.Free;
  end;
end;

function KurumBransi: string;
var
  sql: string;
  ado: TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;
    sql := 'select SLXX as brans from parametreler where slk = ' + QuotedStr ('33') + ' and slb = ' + QuotedStr ('BRANS');
    datalar.QuerySelect(ado, sql);

    Result := ado.FieldByName('brans').AsString;
  finally
    ado.Free;
  end;
end;

function ResimVarMi(DosyaNo, gonderenForm: string): Boolean;
var
  sql, sql1: string;
  ado : TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;

    sql := 'select * from PersonelFoto where dosyaNo = ' + QuotedStr(DosyaNo);

    if gonderenForm = 'frmHastaKarti' Then
    Begin
      sql1 := ' and tip = ' + QuotedStr ('H');
    End;
    if gonderenForm = 'frmPersonelKarti' Then
    Begin
      sql1 := ' and tip = ' + QuotedStr ('P');
    End;

    datalar.QuerySelect(ado, sql);

    if not ado.eof Then
      Result := True
    Else
      Result := False;
  finally
    ado.Free;
  end;
end;

procedure EditTemizle(_form: TForm);
var
  _say, x: integer;

begin
  _say := _form.ComponentCount - 1;

  for x := 0 to _say do
  begin
    if _form.Components[x].ClassType = TEdit then
    begin
      TEdit(_form.Components[x]).Clear;
    end;

    if _form.Components[x].ClassType = TcxTextEdit then
    begin
      TcxTextEdit(_form.Components[x]).Clear;
    end;

    if _form.Components[x].ClassType = TComboBox then
    begin
      TComboBox(_form.Components[x]).ItemIndex := -1;
    end;

    if _form.Components[x].ClassType = TcxComboBox then
    begin
      TcxComboBox(_form.Components[x]).ItemIndex := -1;
    end;

    if _form.Components[x].ClassType = TcxLookupComboBox then
    begin
      TcxLookupComboBox(_form.Components[x]).ItemIndex := -1;
    end;


    if _form.Components[x].ClassType = TMemo then
    begin
      TMemo(_form.Components[x]).Lines.Clear;
    end;

    if _form.Components[x].ClassType = TDBNumberEditEh then
    begin
      TDBNumberEditEh(_form.Components[x]).Value := 0;
    end;

  end;
end;

function KurumKodu: string;
var
  sql: string;
  ado : TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;

    sql := 'select * from parametreler where slk = ' + QuotedStr ('99');
    ado.close;
    ado.sql.Clear;
    datalar.QuerySelect(ado, sql);
    Result := ado.FieldByName('SLB').AsString;
  finally
    ado.free;
  end;
end;

function LisansBilgileri(var Tarih, basla, bitis, kurum ,LisansTip,LisansTipDeger : string;
  var limit  : integer): Boolean;
var
  sql: string;
  Key: real;
  ado : TADOQuery;
begin
  Result := False;
  if not Result then;;;
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;

    sql :=
      'select SLVV,SLXX,SLYY,SLZ,SLZZ,SLXXX,getdate() Tarih from parametreler where SLK = ' + QuotedStr ('GT') + ' and  SLB = ' + QuotedStr ('0004');

    datalar.QuerySelect(ado, sql);
    Result := True;
    Tarih := ado.FieldByName('SLYY').AsString;
    basla := ado.FieldByName('SLXX').AsString;
    bitis := ado.FieldByName('SLXX').AsString;
    limit := ado.FieldByName('SLZ').AsInteger;
    kurum := ado.FieldByName('SLZZ').AsString;
    LisansTip := ado.FieldByName('SLXXX').AsString;
    datalar.ProgTarih := FormatDateTime('DD.MM.YYYY', ado.FieldByName('Tarih').AsDateTime);
    //datalar.Login;
    Key := strtofloat(bitis) - strtofloat(datalar.osgbKodu);
    Key := Key / strtofloat(datalar.osgbKodu);
    bitis := floattostr(Key);

    try
    Key := strtofloat(LisansTip) - strtofloat(datalar.osgbKodu);
    Key := Key / strtofloat(datalar.osgbKodu);
    LisansTipDeger := floattostr(Key);
    except
      LisansTipDeger := '0';
    end;

  finally
    ado.Free;
  end;
end;

function LisansKontrol(var fark: double): Boolean;
var
  _fark: double;
  _bitis: Tdate;
  Tarih, basla, bitis, kurum : string;
  limit : integer;
begin
  //LisansBilgileri(Tarih, basla, bitis, kurum, limit);

  if (datalar.ProgTarih = '') Then
  Begin
    Result := False;
    Exit;
  End;

  _bitis := strtodate(FormattedTarih(Datalar.LisansBitis));

  if _bitis < strtodate(datalar.ProgTarih) Then
  Begin
    Result := False;

    _fark := _bitis - strtodate(datalar.ProgTarih);
    fark := _fark;
    // ShowMessageskin('Kalan Lisans S�reniz : ' + floattostr(fark)+ ' G�n','','','info');

  End
  Else
  Begin

    _fark := _bitis - strtodate(datalar.ProgTarih);
    fark := _fark;
    Result := True;
  End;

end;

function EnSonRunTarih: Boolean;
//var
//  sql, _now, sistemnow, basla, bitis, kurum, s: string;
  //limit: integer;

begin
  (*
    LisansBilgileri(sistemnow , basla , bitis,kurum,limit);

    _now := datalar.ProgTarih;//tarihal(date());
    s :=  formattedtarih(datalar.ProgBitis);

    if strtodate(_now) >= strtodate(formattedtarih(s))
    Then Begin
    datalar.ADO_SQL11.Close;
    datalar.ADO_SQL11.SQL.Clear;
    sql := 'update parametreler set SLYY = ' + QuotedStr(StringMaskele(tarih(datalar.ProgTarih),True)) +
    ' where SLK = ''GT'' and SLB = ''0004''';
    datalar.QueryExec(datalar.ADO_SQL11,sql);
    result := True;
    End
    Else result := False;
    *)
end;

function gunAdi(_gun: integer): string;
begin
  case _gun of
    2:
      Result := 'PAZARTES�';
    3:
      Result := 'SALI';
    4:
      Result := '�AR�AMBA';
    5:
      Result := 'PER�EMBE';
    6:
      Result := 'CUMA';
    7:
      Result := 'CUMARTES�';
    1:
      Result := 'PAZAR';
  end;

end;


function seansgun(_dosyaNo: string): string;
var
  sql, seans, gunler: string;
  ado : TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;
    sql :=
      'select seansgunleri from HastaKart where dosyaNo =  ' + QuotedStr (
      _dosyaNo);
    datalar.QuerySelect(ado, sql);

    seans := ado.FieldByName('seansgunleri').AsString;
    gunler := '';

    if copy(seans, 1, 1) = '1' then
      gunler := gunler + '1';
    if copy(seans, 2, 1) = '1' then
      gunler := gunler + '2';
    if copy(seans, 3, 1) = '1' then
      gunler := gunler + '3';
    if copy(seans, 4, 1) = '1' then
      gunler := gunler + '4';
    if copy(seans, 5, 1) = '1' then
      gunler := gunler + '5';
    if copy(seans, 6, 1) = '1' then
      gunler := gunler + '6';
    if copy(seans, 7, 1) = '1' then
      gunler := gunler + '7';

    // delete(gunler,1,1);

    Result := gunler;
  finally
    ado.Free;
  end;
end;


function seansgunTo(seans: string): string;
var
  gunler: string;
begin
    gunler := '';
    if copy(seans, 1, 1) = '1' then
      gunler := gunler + '1';
    if copy(seans, 2, 1) = '1' then
      gunler := gunler + '2';
    if copy(seans, 3, 1) = '1' then
      gunler := gunler + '3';
    if copy(seans, 4, 1) = '1' then
      gunler := gunler + '4';
    if copy(seans, 5, 1) = '1' then
      gunler := gunler + '5';
    if copy(seans, 6, 1) = '1' then
      gunler := gunler + '6';
    if copy(seans, 7, 1) = '1' then
      gunler := gunler + '7';

    // delete(gunler,1,1);

    Result := gunler;

end;


function KurumBilgi: TDataset;
var
  sql: string;
begin
  Result := TADOQuery.Create(nil);
  try
    TADOQuery (Result).Connection := datalar.ADOConnection2;
    sql := 'select * from merkezBilgisi';
    datalar.QuerySelect(TADOQuery (Result), sql);
  except
    FreeAndNil (Result);
    raise;
  end;
end;

function InternetVarmi: Boolean;
var
  connect_status: DWord;
begin
  try
    connect_status := 2 { lan } + 1 { modem } + 4 { proxy } ;
    Result := InternetGetConnectedState(@connect_status, 0);
  except
    Result := True;

  end;
end;

function StringMaskele(pass: string; Mode: Boolean): String;
Var
  Ch: Char;
  TempPass: String;
  Count: byte;
begin
  If Mode Then { �ifrele }
  Begin
    TempPass := '';
    Count := Length(pass);
    while Count > 0 do
    Begin
      If Count = Length(pass) Then
      Begin
        Ch := pass[Count];
        TempPass := Chr(Ord(Ch) + 31);
      End
    Else
    Begin
      TempPass := Chr(Ord(pass[Count]) + Ord(pass[Count + 1]) + 10) + TempPass;
    End;
    Dec(Count);
  End;
End
Else { De�ifre }
Begin
  TempPass := '';
  Count := Length(pass);
  while Count > 0 do
  Begin
    If Count = Length(pass) Then

    Begin
      Ch := pass[Count];
      TempPass := Chr(Ord(Ch) - 31);
    End
  Else
  Begin
    Ch := pass[Count];
    TempPass := Chr(Ord(Ch) - Ord(TempPass[1]) - 10) + TempPass;
  End;
  Dec(Count);
End;
End;
StringMaskele := TempPass;
end;

function TakipSistemdeVarmi(Takip: string): string;
//var
//  sql: string;
begin
 // datalar.ADO_SQL.close;
//  datalar.ADO_SQL.sql.Clear;
  (*
    sql :=  'select Medula_TakipNo from Poliklinikler_detay where Medula_TakipNo = ' + quatedstr(Takip);
    datalar.queryselect(
    *)
end;

procedure datasetiDoldur(_takipNo, tedaviTuru, _basvuru: string ; var TopluDataset : TDatasetKadir);
var
  sql: string;
begin
 //'S','L','R','T','MLZM','T�m�','LR'


  sql := 'exec sp_meduladataset_kl_m3 ' + QuotedStr(_takipNo) + ' ,''Giris''';
  TopluDataset.Dataset1 := datalar.QuerySelect(sql);

  sql := 'exec sp_meduladataset_kl_m3 ' + QuotedStr(_takipNo) + ',''T'','''',''E''';
  TopluDataset.Dataset2 := datalar.QuerySelect(sql);

  sql := 'exec sp_meduladataset_kl_m3 ' + QuotedStr(_takipNo) + ',''S'','''',''E''';
  TopluDataset.Dataset4 :=   datalar.QuerySelect(sql);

  sql := 'exec sp_meduladataset_kl_m3 ' + QuotedStr(_takipNo) + ',''L'','''',''E''';
  TopluDataset.Dataset5 :=   datalar.QuerySelect(sql);

  sql := 'exec sp_meduladataset_kl_m3 ' + QuotedStr(_takipNo) + ',''MLZM'','''',''E''';
  TopluDataset.Dataset6 :=   datalar.QuerySelect(sql);

  sql := 'exec sp_meduladataset_kl_m3 ' + QuotedStr(_takipNo) + ',''Dosya''';
  TopluDataset.Dataset7 :=   datalar.QuerySelect(sql);

  sql := 'exec sp_meduladataset_kl_m3 ' + QuotedStr(_takipNo) + ',''Rapor''';
  TopluDataset.Dataset11 :=   datalar.QuerySelect(sql);

  sql := 'exec sp_meduladataset_kl_m3 ' + QuotedStr(_basvuru)
    + ',''HizmetDetay''';
  TopluDataset.Dataset8 :=   datalar.QuerySelect(sql);


end;

procedure datasetiDoldurHD(dosyaNo,gelisNo : string ; var TopluDataset : TDatasetKadir);
var
  sql: string;
begin

  sql := 'exec sp_HizmetDetay ' + QuotedStr(dosyaNo) + ',' + gelisNo + ',''Dosya''';
  TopluDataset.Dataset1 :=   datalar.QuerySelect(sql);

  sql := 'exec sp_HizmetDetay ' + QuotedStr(dosyaNo) + ',' + gelisNo + ',''T�m�''';
  TopluDataset.Dataset2 := datalar.QuerySelect(sql);

  sql := 'exec sp_HizmetDetay ' + QuotedStr(dosyaNo) + ',' + gelisNo + ',''T''';
  TopluDataset.Dataset3 := datalar.QuerySelect(sql);
end;



function TakipTuruAdi(turu: string): string;
var
  Sonuc: string;
begin
  if turu = '1' Then
    Sonuc := 'Muayene A��l��'
  Else if turu = '2' Then
    Sonuc := 'Sevk Kabul'
  Else if turu = '5' Then
    Sonuc := 'Sa�l�k Kurulu Raporuna �stanaden'
  Else if turu = '6' Then
    Sonuc := 'Kontrol Muayenesi'
  Else if turu = '7' Then
    Sonuc := ''
  Else if turu = '8' Then
    Sonuc := ''
  Else if turu = '9' Then
    Sonuc := ''
  Else
    Sonuc := 'Diyaliz';

  Result := Sonuc;
end;
(*
  procedure HastaTakipBulP(Bilgi : THastaKabul;tarih1,tarih2 : string);
  var
  PrvGrs1 : TakipAraGirisDVO;
  PrvCvp1 : TakipAraCevapDVO;
  dizi , i: integer;
  ad : string;
  begin

  HTTPbaglan(datalar.yardimciIslemler);

  PrvGrs1 := TakipAraGirisDVO.Create;
  PrvCvp1 := TakipAraCevapDVO.Create;

  PrvGrs1.saglikTesisKodu := datalar._kurumKod;
  PrvGrs1.hastaTCK := Bilgi.tckimlikNo;
  //      PrvGrs1.hastaSosGuvNo := bilgi.sosyalGuvenlikNo;
  //      PrvGrs1.hastaKarne := bilgi.karneNo;
  PrvGrs1.baslangicTarihi := tarih1;
  PrvGrs1.bitisTarihi := tarih2;

  try
  PrvCvp1 := (datalar.YardimciIslemler as YardimciIslemler).takipAra(PrvGrs1);
  except
  on E: Exception do
  begin
  //Showmessage(E.Message,'','','info');
  end;
  end;

  if PrvCvp1.sonucKodu = '0000'
  then begin

  //                datalar.bilgi.Adi :=  PrvCvp1.hastaBilgileri.ad + ' ' + PrvCvp1.hastaBilgileri.soyad;
  //                datalar.bilgi.DTarihi :=  PrvCvp1.hastaBilgileri.dogumTarihi;
  //                datalar.bilgi.Cinsiyet :=  PrvCvp1.hastaBilgileri.cinsiyet;


  if length(PrvCvp1.Takipler) = 0
  then begin
  //showmessage('Bu Hastaya Ait Takip Bulunamad�','','','info');
  //    result := '';
  //  exit;
  end;
  datalar.RxHastaTakipleri.EmptyTable;
  for i := 1 to length(PrvCvp1.Takipler)  do
  begin

  datalar.RxHastaTakipleri.Append;

  datalar.RxHastaTakipleri.FieldByName('TakipNo').AsString :=  PrvCvp1.Takipler[i-1].takipNo;
  datalar.RxHastaTakipleri.FieldByName('TakipTarihi').AsString :=  PrvCvp1.Takipler[i-1].takipTarihi;
  datalar.RxHastaTakipleri.FieldByName('takipTuru').AsString :=
  TakipTuruAdi(PrvCvp1.Takipler[i-1].takipTuru);
  //                datalar.RxHastaTakipleri.FieldByName('Sistemde').AsString := sis



  if PrvCvp1.Takipler[i-1].takipDurumu = '1'
  Then
  datalar.RxHastaTakipleri.FieldByName('takipDurumu').AsString :=  '�deme Sorgusu Yap�lm��'
  Else
  datalar.RxHastaTakipleri.FieldByName('takipDurumu').AsString :=  '�deme Sorgusu Yap�lmam��';


  datalar.RxHastaTakipleri.FieldByName('sevkEdenTesis').AsString :=  PrvCvp1.Takipler[i-1].sevkEdenTesis;


  datalar.RxHastaTakipleri.Post;

  //                result := result + ',' + PrvCvp1.hastaTakipleri[i-1].takipNo;
  //gridDetay.Cells[1,i] := PrvCvp1.hastaTakipleri[i-1].takipNo;
  //gridDetay.Cells[2,i] := PrvCvp1.hastaTakipleri[i-1].sevkEdenTesisKodu;

  end;

  end else
  begin
  //result := '';
  //ShowMessageSkin(PrvCvp1.sonucMesaji,'','','info');
  end;

  end;
*)

procedure HTTPbaglan(HTTP: THTTPRIO);
begin
 //frmAna.Login;
 // HTTP.HTTPWebNode.username := frmAna._username;
 // HTTP.HTTPWebNode.password := frmAna._sifre;
 // datalar._kurumKod := frmAna._kurumKod;
end;

function LocalIP(var IP: string): Boolean;
var
  wsdata: TWSAData;
  hostName: array [0 .. 255] of Char;
  hostEnt: PHostEnt;
  addr: PChar;
begin
  WSAStartup($0101, wsdata);
  try
    gethostname(PAnsiChar(string(hostName)), SizeOf(hostName));
    hostEnt := gethostbyname(PAnsiChar(string(hostName)));
    if Assigned(hostEnt) then
      if Assigned(hostEnt^.h_addr_list) then
      begin
        addr := PChar(hostEnt^.h_addr_list^);
        if Assigned(addr) then
        begin
          IP := Format('%d.%d.%d.%d', [byte(addr[0]), byte(addr[1]),
            byte(addr[2]), byte(addr[3])]);
          Result := True;
        end
        else
          Result := False;
      end
      else
        Result := False
      else
      begin
        Result := False;
      end;
  finally
    WSACleanup;
  end
end;

function GetLocalHostName(var pHostName: string): Boolean;
var
  LocalMachine: PChar;
  Len: DWord;
begin
  Len := MAX_COMPUTERNAME_LENGTH + 1;
  GetMem(LocalMachine,Len);
  try
    result := GetComputerName(LocalMachine,Len);
    if Result then pHostName := LocalMachine;
  finally
    FreeMem(LocalMachine,Len);
  end;
end;

function raporTakipNobul(DosyaNo: string): string;
var
  sql: string;
  ado : TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;

    sql := 'select raporTakipno from raporlar ' +
    // ' inner join raporlar r on r.dosyaNo = h.dosyaNo and r.raporNo = h.raporNo' +
      ' where dosyaNo = ' + QuotedStr(DosyaNo) + ' and aktif = 1';

    datalar.QuerySelect(ado, sql);
    Result := ado.Fields[0].AsString;
  finally
    ado.Free;
  end;
end;

function raporTakipNoToraporNo(raporTakipNo: string): string;
var
  sql: string;
  ado : TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;

    sql := 'select raporNo from raporlar ' +
    // ' inner join raporlar r on r.dosyaNo = h.dosyaNo and r.raporNo = h.raporNo' +
      ' where raporTakipNo = ' + QuotedStr(raporTakipNo);

    ado.close;
    ado.sql.Clear;
    datalar.QuerySelect(ado, sql);
    Result := ado.Fields[0].AsString;
  finally
    ado.Free;
  end;
end;



function doktorSertifika(kod: string): string;
var
  sql: string;
  x: integer;
  ado : TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;

    sql := 'select sertifika from DoktorlarT where kod = ' + QuotedStr(kod);
    datalar.QuerySelect(ado, sql);

    x := pos('-', ado.FieldByName('sertifika').AsString);
    if x = 0 then
      x := 4;

    Result := copy(ado.FieldByName('sertifika').AsString, 1, x - 1);
  finally
    ado.Free;
  end;
end;

function doktorSertifikaNo(kod: string): string;
var
  sql: string;
  x: integer;
  ado : TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;

    sql := 'select sertifikaNo from DoktorlarT where kod = ' + QuotedStr(kod);
    datalar.QuerySelect(ado, sql);

    x := pos('-', ado.FieldByName('sertifika').AsString);
    if x = 0 then
      x := 4;

    Result := copy(ado.FieldByName('sertifika').AsString, 1, x - 1);
  finally
    ado.Free;
  end;
end;

function doktorKodToReceteUser(kod: string ; var Tc : string ; var Ad : string;
                                             var user : string ; var sifre : string): string;
var
  sql: string;
  ado : TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;
    sql := 'select * from DoktorlarT where kod = ' + QuotedStr(kod);
    datalar.QuerySelect(ado, sql);
    Tc := ado.FieldByName('tcKimlikNo').AsString;
    Ad := ado.FieldByName('tanimi').AsString;
    user := ado.FieldByName('eReceteKullanici').AsString;
    sifre := ado.FieldByName('eReceteSifre').AsString;

    Result := ado.FieldByName('kod').AsString;
  finally
    ado.Free;
  end;
end;


function doktorTesciltokod(Tescil: string): string;
var
  sql: string;
  ado : TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;
    sql := 'select kod from DoktorlarT where TescilNo = ' + QuotedStr(Tescil);
    datalar.QuerySelect(ado, sql);

    Result := ado.FieldByName('kod').AsString;
  finally
    ado.Free;
  end;
end;

function doktorTescil(kod: string): string;
var
  sql: string;
  ado: TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;
    sql := 'select TescilNo from DoktorlarT where kod = ' + QuotedStr(kod);
    datalar.QuerySelect(ado, sql);

    Result := ado.FieldByName('TescilNo').AsString;
  finally
    ado.Free;
  end;
end;

function TescildoktorBul(doktor: string): string;
var
  sql: string;
  ado : TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;

    sql := 'select kod from doktorlarT where TescilNo = ' + QuotedStr (doktor);
    datalar.QuerySelect(ado, sql);

    Result := ado.Fields[0].AsString;
  finally
    ado.free;
  end;
end;

function doktorTescilToTC(kod: string): string;
var
  sql: string;
  ado: TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;

    sql := 'select TcKimlikNo from DoktorlarT where TescilNo = ' + QuotedStr(kod);
    datalar.QuerySelect(ado, sql);

    Result := ado.FieldByName('TcKimlik').AsString;
  finally
    ado.Free;
  end;
end;

function doktorSertifikaTescil(Tescil: string): string;
var
  sql: string;
  ado : TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;

    sql := 'select sertifika from DoktorlarT where tescilNo = ' + QuotedStr
      (Tescil);
    datalar.QuerySelect(ado, sql);

    Result := ado.FieldByName('sertifika').AsString;
  finally
    ado.Free;
  end;
end;

function doktorTCtoKod(tc: string): string;
var
  sql: string;
  ado: TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;

    sql := 'select kod from DoktorlarT where TCkimlikNo = ' + QuotedStr(tc);
    datalar.QuerySelect(ado, sql);

    Result := ado.FieldByName('kod').AsString;
  finally
    ado.Free;
  end;
end;

function TaniKodToTaniAd(kod: string): string;
var
  sql: string;
  ado: TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;

    sql := 'select top 1 TANI from icd_teshisleri where ICDKODU = ' + QuotedStr
      (kod);
    datalar.QuerySelect(ado, sql);

    Result := ado.FieldByName('TANI').AsString;
  finally
    ado.Free;
  end;
end;

function doktorTC(kod: string): string;
var
  sql: string;
  ado: TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;

    sql := 'select TcKimlikNo from DoktorlarT where kod = ' + QuotedStr(kod);
    datalar.QuerySelect(ado, sql);

    Result := ado.FieldByName('TcKimlikNo').AsString;
  finally
    ado.Free;
  end;
end;

function doktorAdi(kod: string): string;
var
  sql: string;
  ado: TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;

    sql := 'select tanimi from DoktorlarT where kod = ' + QuotedStr(kod);
    datalar.QuerySelect(ado, sql);

    Result := ado.FieldByName('tanimi').AsString;
  finally
    ado.Free;
  end;
end;

function dosyaNoToSGKBilgi(DosyaNo: string): TSGKBilgileri;
var
  sql: string;
  ado: TADOQuery;
  H: TSGKBilgileri;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;
    sql := 'select k.kod,k.ad,d.kod dkod,d.ad dad from HastaKart h ' +
      'join DevredilenKurum k on h.kurumTip = k.kod ' +
      'join DevredilenKurumDurum d on h.durum = d.kod ' + 'where dosyaNO = ' +
      QuotedStr(DosyaNo);
    datalar.QuerySelect(ado, sql);

    H.devredilenKurumKodu := ado.FieldByName('kod').AsString;
    H.devredilenKurum := ado.FieldByName('ad').AsString;
    H.durum := ado.FieldByName('dad').AsString;
    H.durumKodu := ado.FieldByName('dkod').AsString;

    dosyaNoToSGKBilgi := H;
  finally
    ado.Free;
  end;
end;

function doktorEReceteUser(kod: string; var user: string;
  var pass: string): string;
var
  sql: string;
  ado: TADOQuery;
begin

  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;

    sql := 'select doktorKodu,ereceteKullaniciAdi,ereceteSifre from DoktorEreceteSifre where doktorKodu = ' + QuotedStr(kod);
    datalar.QuerySelect(ado, sql);

    user := ado.FieldByName('ereceteKullaniciAdi').AsString;
    pass := ado.FieldByName('ereceteSifre').AsString;
    Result := ado.FieldByName('doktorKodu').AsString;
  finally
    ado.Free;
  end;
end;

function doktorBrans(kod: string): string;
var
  sql: string;
  ado : TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;
    sql :=
      'select SLY FROM Parametreler WHERE SLK = ' + QuotedStr ('02') + ' and SLB = ' + QuotedStr
      (kod);
    datalar.QuerySelect(ado, sql);

    Result := ado.FieldByName('SLY').AsString;
  finally
    ado.Free;
  end;
end;

function doktorReceteBrans(kod: string): string;
var
  sql: string;
  ado : TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;
    sql :=
      'select SLT1 FROM Parametreler WHERE SLK = ' + QuotedStr ('02') + ' and SLB = ' + QuotedStr
      (kod);
    datalar.QuerySelect(ado, sql);

    Result := ado.FieldByName('SLT1').AsString;
  finally
    ado.Free;
  end;
end;



function TarihKayit: Boolean;
var
  sql, sql1, _Tarih, _okunanTarih, _bitistarih: string;
  ado : TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;
    sql := 'select convert(varchar,getdate(),112) as kontrolTarih';
    datalar.QuerySelect(ado, sql);
    _Tarih := ado.FieldByName('kontrolTarih').AsString;

    sql1 := 'select SLT,SLVV from parametreler where SLK = ' + QuotedStr ('90');
    datalar.QuerySelect(ado, sql1);
    _okunanTarih := ado.FieldByName('SLT').AsString;
    _bitistarih := ado.FieldByName('SLVV').AsString;

    if _okunanTarih < _Tarih then
    begin

      if _bitistarih > _Tarih then
      begin
        sql := 'update parametreler set SLT = ' + QuotedStr (_Tarih) +
          ' where SLK = ' + QuotedStr ('90');
        datalar.QueryExec(ado, sql);
        Result := True;
        Exit;
      end
      else
        Result := False;
    end
    else
      Result := False;
  finally
    ado.Free;
  end;
end;

function ProgramKontrol(_Tarih: string): Boolean;
var
  sql, Tarih, kontrolTarih, bitisTarih: string;
  ado : TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;


    sql := 'select SLB,SLT,SLVV from parametreler where SLK = ' + QuotedStr ('90');
    datalar.QuerySelect(ado, sql);

    Tarih := ado.FieldByName('SLB').AsString;
    kontrolTarih := ado.FieldByName('SLT').AsString;
    bitisTarih := ado.FieldByName('SLVV').AsString;
  finally
    ado.Free;
  end;
end;

(*
  function TeyitNoBul(_Takip : string) : string;
  var
  Ts_Gon1 : TakipOkuGirisDVO;
  Ts_Cvp1 : TakipDVO;
  sql : string;
  begin

  frmAna.Login;

  frmData.Takip.HTTPWebNode.UserName := frmAna._username;
  frmData.Takip.HTTPWebNode.Password := frmAna._sifre;

  Ts_gon1 := TakipOkuGirisDVO.Create;
  Ts_cvp1 := TakipDVO.Create;

  Ts_gon1.saglikTesisKodu := frmAna._Kurumkod;
  Ts_Gon1.takipNo := _Takip;

  try
  Ts_Cvp1 := (frmData.takip as ProvizyonIslemleri).takipOku(Ts_Gon1);
  except
  on E: Exception do Showmessage(E.Message,'','','info');
  end;

  if Ts_Cvp1.sonucKodu = '0000'
  then begin
  result := Ts_Cvp1.sonucMesaji;
  end;


  end;

*)

function TakiplerToHint(DosyaNo: string): String;
var
  sql, text: string;
  i: integer;
  ado : TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;
    sql := 'select Tak�pNo from Gelisler where dosyaNo = ' + QuotedStr (DosyaNo);
    datalar.QuerySelect(ado, sql);
    if ado.eof then
      Exit;

    for i := 1 to ado.RecordCount do
    begin
      text := text + ',' + ado.Fields[0].AsString;
      ado.Next;
    end;

    Result := text;
  finally
    ado.Free;
  end;
end;

function gelisToTakip(DosyaNo, GelisNo: string): String;
var
  sql, text: string;
  ado: TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;
    sql := 'select Tak�pNo from Gelisler where dosyaNo = ' + QuotedStr(DosyaNo)
      + ' and gelisNo = ' + GelisNo;
    datalar.QuerySelect(ado, sql);
    text := ado.Fields[0].AsString;
    Result := text;
  finally
    ado.Free;
  end;
end;



function sorguTuruAdi(_kod: string): string;
begin
  case strtoint(_kod) of
    0:
      Result := 'Normal';
    1:
      Result := 'Diyaliz';
    2:
      Result := 'FTR';
    3:
      Result := 'T�p Bebek';
    4:
      Result := 'Kemeik �li�i Nakli';
    5:
      Result := 'K�k H�cre Nakli';
  else
    Result := '';
  end;

end;

function taburcuKoduAdi(_kod: string): string;
begin
  case strtoint(_kod) of
    1:
      Result := '�ifa ile Taburcu';
    2:
      Result := 'Haliyle Taburcu';
    3:
      Result := 'Tedaviden Vazge�me';
    4:
      Result := 'Eve Geri G�nderme';
    5:
      Result := 'Ayn� Kapsaml� ba�ka bir hastaneye sevk';
    6:
      Result := 'Daha kapsaml� ba�ka bir hastaneye sevk';
    7:
      Result := 'Orata dereceli ba�ka bir bak�m kurumuna sevk';
    8:
      Result := 'Aile hekime bak�m� alt�nda eve geri g�nderme';
    9:
      Result := 'Hastane i�inde ba�ka bir bran�a sevk';
    10:
      Result := 'vefat';
  else
    Result := 'di�er';
  end;

end;

function GuncelKontrol: String;
begin
 Result := WebErisimBilgiOrtak('GT','00');
end;

(*
  procedure TakipBilgiOku(_Takip : string;var Hasta : TTakipBilgisi);
  var
  Ts_Gon1 : TakipOkuGirisDVO;
  Ts_Cvp1 : TakipDVO;
  sql : string;
  begin

  frmAna.Login;

  datalar.Takip.HTTPWebNode.UserName := frmAna._username;
  datalar.Takip.HTTPWebNode.Password := frmAna._sifre;

  Ts_gon1 := TakipOkuGirisDVO.Create;
  Ts_cvp1 := TakipDVO.Create;

  Ts_gon1.saglikTesisKodu := frmAna._kurumKod;
  Ts_Gon1.takipNo := _Takip;

  try
  Ts_Cvp1 := (datalar.takip as ProvizyonIslemleri).takipOku(Ts_Gon1);
  except
  on E: Exception do Showmessage(E.Message,'','','info');
  end;

  if Ts_Cvp1.sonucKodu = '0000'
  then begin

  Application.CreateForm(TfrmTakipBilgisiOku, frmTakipBilgisiOku);
  GorselAyar(frmTakipBilgisiOku,frmana.global_img_list4);


  frmTakipBilgisiOku.write(Ts_Cvp1.takipNo,Ts_Cvp1.takipTarihi,Ts_Cvp1.kayitTarihi,inttostr(Ts_Cvp1.tesisKodu),Ts_Cvp1.gidecegiTesisTuru,
  inttostr(Ts_Cvp1.sevkEdenTesis) ,Ts_Cvp1.sevkEdilenBransKodu,Ts_Cvp1.sevkEdilisTarihi,Ts_Cvp1.sevkEdenDrTescil,
  Ts_Cvp1.takipDurumu,datalar.hastaYas,'','');



  frmTakipBilgisiOku.ShowModal;
  frmTakipBilgisiOku.Release;
  frmTakipBilgisiOku := nil;

  end
  else begin
  ShowMessageSkin(Ts_Cvp1.sonucMesaji , '' ,'' ,'info');

  end;


  end;
*)



function TesisTuruAdi(deger: string): string;
begin
  case strtoint(deger) of
    1:
      Result := '1.Basamak kurum ve kurulu�lara sevk';
    2:
      Result := '2.Basamak kurum ve kurulu�lara sevk';
    3:
      Result := '3.Basamak kurum ve kurulu�lara sevk';
    4:
      Result := 'A��z ve di� sa�l��� merkezleri';
    5:
      Result := 'Eczaneler';
    6:
      Result := 'Optik firmalar�';
    7:
      Result := 'G�r�nt�leme merkezleri';
    8:
      Result := 'Acil hizmet merkezleri';
    9:
      Result := 'Laboratuarlar';
    10:
      Result := 'Tedavi merkezleri';
    11:
      Result := 'T�bbi malzeme tedarik�ileri';
  end;

end;

function REV: string;
var
  sql: string;
  _sonSQLID: integer;
  ado : TADOQuery;
begin
  try
    ado := TADOQuery.Create(nil);
    try
      ado.Connection := datalar.ADOConnection2;
      sql := 'select SLX from parametreler where SLK = ' + QuotedStr ('GT') + ' and SLB = ''0000''';
      datalar.QuerySelect(ado, sql);
      _sonSQLID := SonYayinlananGuncellemeNumarasi;
      if ado.Fields[0].AsInteger < _sonSQLID then
      begin
        Result := 'G';
      end;
    finally
      ado.free;
    end;
  except
    Result := 'Y';
  end;
end;

procedure Split(const Delimiter: Char; Input: string; const Strings: TStrings);
begin
  Assert(Assigned(Strings));
  Strings.Clear;
  Strings.Delimiter := Delimiter;
  Strings.DelimitedText := Input;
end;

function IcmalBlok(Tel: string): integer;
var
  sql: string;
begin
  datalar.ADO_SQL.close;
  datalar.ADO_SQL.sql.Clear;
  sql :=
    'select SLX from parametreler where SLK = ' + QuotedStr ('33') + ' and SLB = ' + QuotedStr (Tel);
  datalar.QuerySelect(datalar.ADO_SQL, sql);

  Result := datalar.ADO_SQL.Fields[0].AsInteger;

end;

function ZorunluTel(Tel: string): Boolean;
var
  sql: string;
begin
  datalar.ADO_SQL.close;
  datalar.ADO_SQL.sql.Clear;
  sql :=
    'select SLX from parametreler where SLK = ' + QuotedStr ('33') + ' and SLB = ' + QuotedStr (Tel);
  datalar.QuerySelect(datalar.ADO_SQL, sql);

  if datalar.ADO_SQL.Fields[0].AsInteger = 1 then
  begin
    Result := True;
  end
  else
    Result := False;

end;

Function DosyaKopyala(sSrc: string; sDest: string): integer;
var
  Sonuc: integer; // 0 Kopyaland� ; 1 Dosya Var ve Kopyaland� ; 2 Dosya Var ve Kopyalanamad�
begin
  if FileExists(sDest) then
  begin
    try
      DeleteFile(sDest);
      CopyFile(PChar(sSrc), PChar(sDest), False);
      // frmMain.txtKurulumGecmisi.Lines.Add(ZamanStr+sSrc + ' = ' +sDest + ' a kopyaland�' + #13);
      Sonuc := 1;
    except
      // frmMain.txtKurulumGecmisi.Lines.Add(ZamanStr+sDest + ' Dosyas� Zaten Var' + #13);
      Sonuc := 2;
    end;
  end
  else
  begin
    CopyFile(PChar(sSrc), PChar(sDest), False);
    // frmMain.txtKurulumGecmisi.Lines.Add(ZamanStr+sSrc + ' = ' +sDest + ' a kopyaland�' + #13);
    Sonuc := 0;
  end;
  Result := Sonuc;
end;

procedure tarihata(tarih1, tarih2: TcxDateEditKadir; ayadlari: TcxComboBox);
begin
  ayadlari.text := aytoayadi(date());
  tarih1.EditValue := ayaditoay(ayadlari.text);
  tarih2.EditValue := ayliktarih2(ayadlari.text);
end;

procedure tarihata(tarih1, tarih2: TDateTimePicker; ayadlari: TComboBox);
begin
  ayadlari.text := aytoayadi(date());
  tarih1.date := ayaditoay(ayadlari.text);
  tarih2.date := ayliktarih2(ayadlari.text);
end;

procedure tarihata(tarih1, tarih2: TEdit; ayadlari: TComboBox);
begin
  ayadlari.text := aytoayadi(date());
  tarih1.text := datetostr(ayaditoay(ayadlari.text));
  tarih2.text := datetostr(ayliktarih2(ayadlari.text));
end;

function TarihKontrolu(_Tarih: String): Boolean;
var
  Tarih: Tdate;
begin
  if _Tarih = '' then
  begin
    Result := False;
    Exit;
  end;

  try
    Tarih := strtodate(_Tarih);
    Result := Tarih > -1000000;
  except
    Result := False;

  end;

end;

procedure ilComboDoldur(combo: TComboBox);
var
  sql: string;
begin
  sql := 'select iladi from iller';
  ComboDoldur(datalar.ADO_SQL1, sql, combo);
end;

function CariAd(_cariKod: string): string;
var
  sql: string;
begin
  sql := 'select cariad from saticilar where carikod = ' + QuotedStr (_cariKod);
  datalar.QuerySelect(datalar.ADO_SQL3, sql);
  Result := datalar.ADO_SQL3.Fields[0].AsString;
end;

function merkezAdi(_kurum: string): string;
var
  sql: string;
begin
  sql := 'select merkezAdi from MerkezBilgisi';
  // where Kurum = ' + #39 + _kurum + #39;
  datalar.QuerySelect(datalar.ADO_SQL, sql);
  if not datalar.ADO_SQL.eof then
    Result := datalar.ADO_SQL.Fields[0].AsString;

end;

function Kurumadi(_kurum: string): string;
var
  sql: string;
begin
  sql := 'select ADI1 from kurumlar where Kurum = ' + QuotedStr (_kurum);
  datalar.QuerySelect(datalar.ADO_SQL, sql);
  if not datalar.ADO_SQL.eof then
    Result := datalar.ADO_SQL.Fields[0].AsString;

end;

procedure SeperatorDegis;
begin
  FormatSettings.DecimalSeparator := '.';
  FormatSettings.ThousandSeparator := ',';
  FormatSettings.DateSeparator := '.';
end;






procedure Disabled(_form: TForm);
var
  _say, x: integer;

begin
  _say := _form.ComponentCount - 1;

  for x := 0 to _say do
  begin
    if _form.Components[x].tag = -999 Then
      Continue;

    if ((_form.Components[x].ClassType = TEdit) or
        (_form.Components[x].ClassType = TKadirEdit)) and
      (_form.Components[x].tag <> 999) then
    begin
      if TEdit(_form.Components[x]).tag > 100 then
        TEdit(_form.Components[x]).Color := clBtnShadow
      else
        TEdit(_form.Components[x]).Color := clBtnFace;
      TEdit(_form.Components[x]).Enabled := False;
    end;

    if _form.Components[x].ClassType = TComboBox then
    begin
      if TComboBox(_form.Components[x]).tag > 100 then
        TComboBox(_form.Components[x]).Color := clBtnShadow
      else
        TComboBox(_form.Components[x]).Color := clBtnFace;
      TComboBox(_form.Components[x]).Enabled := False;
    end;

    if _form.Components[x].ClassType = TcxComboBox then
    begin
      if TcxComboBox(_form.Components[x]).tag > 100 then
        TcxComboBox(_form.Components[x]).Style.Color := clSkyBlue
      else
        TcxComboBox(_form.Components[x]).Style.Color := clWhite;
      TcxComboBox(_form.Components[x]).Enabled := False;
    end;

    if _form.Components[x].ClassType = TcxLookupComboBox then
    begin
      if TcxLookupComboBox(_form.Components[x]).tag > 100 then
        TcxLookupComboBox(_form.Components[x]).Style.Color := clSkyBlue
      else
        TcxLookupComboBox(_form.Components[x]).Style.Color := clWhite;
      TcxLookupComboBox(_form.Components[x]).Enabled := False;
    end;

    if _form.Components[x].ClassType = TcxTextEdit then
    begin
      if TcxComboBox(_form.Components[x]).tag > 100 then
        TcxComboBox(_form.Components[x]).Style.Color := clSkyBlue
      else
        TcxComboBox(_form.Components[x]).Style.Color := clWhite;
      TcxComboBox(_form.Components[x]).Enabled := False;
    end;

    if _form.Components[x].ClassType = TComboBox then
    begin
      if TComboBox(_form.Components[x]).tag > 100 then
        TComboBox(_form.Components[x]).Color := clBtnShadow
      else
        TComboBox(_form.Components[x]).Color := clBtnFace;
      TComboBox(_form.Components[x]).Enabled := False;
    end;

    (*
      if  (_form.Components[x].ClassType = TDateEdit) and (_form.Components[x].tag <> 999)
      then begin
      if TDateEdit(_form.Components[x]).tag > 100
      then TDateEdit(_form.Components[x]).Color := clBtnShadow
      else TDateEdit(_form.Components[x]).Color := clBtnFace;
      TDateEdit(_form.Components[x]).Enabled := False;
      end;
      *)
    if _form.Components[x].ClassType = TDBNumberEditEh then
    begin
      if TDBNumberEditEh(_form.Components[x]).tag > 100 then
        TDBNumberEditEh(_form.Components[x]).Color := clBtnShadow
      else
        TDBNumberEditEh(_form.Components[x]).Color := clBtnFace;
      TDBNumberEditEh(_form.Components[x]).Enabled := False;
    end;

    if _form.Components[x].ClassType = TMemo then
    begin
      if TComboBox(_form.Components[x]).tag > 100 then
        TComboBox(_form.Components[x]).Color := clBtnShadow
      else
        TComboBox(_form.Components[x]).Color := clBtnFace;
      if TComboBox(_form.Components[x]).tag <> 999 Then
        TComboBox(_form.Components[x]).Enabled := False;
    end;

    if _form.Components[x].ClassType = TRadioGroup Then
    Begin
      TRadioGroup(_form.Components[x]).Enabled := False;
    End;

    if _form.Components[x].ClassType = TListBox then
    begin
      if TListBox(_form.Components[x]).tag > 100 then
        TListBox(_form.Components[x]).Color := clBtnShadow
      else
        TListBox(_form.Components[x]).Color := clBtnFace;
      TListBox(_form.Components[x]).Enabled := False;
    end;

  end;
  _form.Refresh;
end;

procedure ReadOnlyd(_form: TForm);
var
  _say, x: integer;

begin
  _say := _form.ComponentCount - 1;

  for x := 0 to _say do
  begin
    if _form.Components[x].tag = -999 Then
      Continue;

    if ((_form.Components[x].ClassType = TEdit) or
        (_form.Components[x].ClassType = TKadirEdit)) and
      (_form.Components[x].tag <> 999)

      then
    begin
      if TEdit(_form.Components[x]).tag > 100 then
        TEdit(_form.Components[x]).Color := clBtnShadow
      else
        TEdit(_form.Components[x]).Color := clBtnFace;
      TEdit(_form.Components[x]).ReadOnly := True;
    end;

    if _form.Components[x].ClassType = TComboBox then
    begin
      if TComboBox(_form.Components[x]).tag > 100 then
        TComboBox(_form.Components[x]).Color := clBtnShadow
      else
        TComboBox(_form.Components[x]).Color := clBtnFace;
      TComboBox(_form.Components[x]).Enabled := False;
    end;

    if _form.Components[x].ClassType = TcxComboBox then
    begin
      if TcxComboBox(_form.Components[x]).tag > 100 then
        TcxComboBox(_form.Components[x]).Style.Color := clSkyBlue
      else
        TcxComboBox(_form.Components[x]).Style.Color := clWhite;
      TcxComboBox(_form.Components[x]).Enabled := False;
    end;

    if _form.Components[x].ClassType = TcxDateEdit then
    begin
      if TcxDateEdit(_form.Components[x]).tag > 100 then
        TcxDateEdit(_form.Components[x]).Style.Color := clSkyBlue
      else
        TcxDateEdit(_form.Components[x]).Style.Color := clWhite;
      if TcxDateEdit(_form.Components[x]).tag < 100 then
        TcxDateEdit(_form.Components[x]).Enabled := False;
    end;

    if _form.Components[x].ClassType = TcxTextEdit then
    begin
      if TcxTextEdit(_form.Components[x]).tag > 100 then
        TcxTextEdit(_form.Components[x]).Style.Color := clSkyBlue
      else
        TcxTextEdit(_form.Components[x]).Style.Color := clWhite;
      TcxTextEdit(_form.Components[x]).Properties.ReadOnly := True;
    end;

    if _form.Components[x].ClassType = TcxButtonEdit then
    begin
      if TcxButtonEdit(_form.Components[x]).tag > 100 then
        TcxButtonEdit(_form.Components[x]).Style.Color := clSkyBlue
      else
        TcxButtonEdit(_form.Components[x]).Style.Color := clWhite;
      TcxButtonEdit(_form.Components[x]).Enabled := True;
    end;

    if _form.Components[x].ClassType = TComboBox then
    begin
      if TComboBox(_form.Components[x]).tag > 100 then
        TComboBox(_form.Components[x]).Color := clBtnShadow
      else
        TComboBox(_form.Components[x]).Color := clBtnFace;
      TComboBox(_form.Components[x]).Enabled := False;
    end;

    (*
      if  (_form.Components[x].ClassType = TDateEdit) and (_form.Components[x].tag <> 999)
      then begin
      if TDateEdit(_form.Components[x]).tag > 100
      then TDateEdit(_form.Components[x]).Color := clBtnShadow
      else TDateEdit(_form.Components[x]).Color := clBtnFace;
      TDateEdit(_form.Components[x]).Enabled := False;
      end;
      *)
    if _form.Components[x].ClassType = TDBNumberEditEh then
    begin
      if TDBNumberEditEh(_form.Components[x]).tag > 100 then
        TDBNumberEditEh(_form.Components[x]).Color := clBtnShadow
      else
        TDBNumberEditEh(_form.Components[x]).Color := clBtnFace;
      TDBNumberEditEh(_form.Components[x]).ReadOnly := True;
    end;

    if _form.Components[x].ClassType = TMemo then
    begin
      if TMemo(_form.Components[x]).tag > 100 then
        TMemo(_form.Components[x]).Color := clBtnShadow
      else
        TMemo(_form.Components[x]).Color := clBtnFace;
      if TMemo(_form.Components[x]).tag <> 999 Then
        TMemo(_form.Components[x]).ReadOnly := True;
    end;

    if _form.Components[x].ClassType = TRadioGroup Then
    Begin
      TRadioGroup(_form.Components[x]).Enabled := False;
    End;

    if _form.Components[x].ClassType = TListBox then
    begin
      if TListBox(_form.Components[x]).tag > 100 then
        TListBox(_form.Components[x]).Color := clBtnShadow
      else
        TListBox(_form.Components[x]).Color := clBtnFace;
      TListBox(_form.Components[x]).Enabled := False;
    end;

  end;
  _form.Refresh;
end;

procedure ReadOnlydFalse(_form: TForm);
var
  _say, x: integer;

begin
  _say := _form.ComponentCount - 1;

  for x := 0 to _say do
  begin
    if (_form.Components[x].ClassType = TEdit) or
      (_form.Components[x].ClassType = TKadirEdit) then
    begin
      if TEdit(_form.Components[x]).tag > 100 then
        TEdit(_form.Components[x]).Color := clSkyBlue
      else
        TEdit(_form.Components[x]).Color := clWhite;
      TEdit(_form.Components[x]).ReadOnly := False;
    end;

    if _form.Components[x].ClassType = TComboBox then
    begin
      if TComboBox(_form.Components[x]).tag > 100 then
        TComboBox(_form.Components[x]).Color := clSkyBlue
      else
        TComboBox(_form.Components[x]).Color := clWhite;
      TComboBox(_form.Components[x]).Enabled := True;
    end;

    if _form.Components[x].ClassType = TcxComboBox then
    begin
      if TcxComboBox(_form.Components[x]).tag > 100 then
        TcxComboBox(_form.Components[x]).Style.Color := clSkyBlue
      else
        TcxComboBox(_form.Components[x]).Style.Color := clWhite;
      TcxComboBox(_form.Components[x]).Enabled := True;
    end;

    if _form.Components[x].ClassType = TcxLookupComboBox then
    begin
      if TcxLookupComboBox(_form.Components[x]).tag > 100 then
        TcxLookupComboBox(_form.Components[x]).Style.Color := clSkyBlue
      else
        TcxLookupComboBox(_form.Components[x]).Style.Color := clWhite;
      TcxLookupComboBox(_form.Components[x]).Enabled := True;
    end;

    if _form.Components[x].ClassType = TcxDateEdit then
    begin
      if TcxDateEdit(_form.Components[x]).tag > 100 then
        TcxDateEdit(_form.Components[x]).Style.Color := clSkyBlue
      else
        TcxDateEdit(_form.Components[x]).Style.Color := clWhite;
      TcxDateEdit(_form.Components[x]).Enabled := True;
    end;

    if _form.Components[x].ClassType = TcxTextEdit then
    begin
      if TcxTextEdit(_form.Components[x]).tag > 100 then
        TcxTextEdit(_form.Components[x]).Style.Color := clSkyBlue
      else
        TcxTextEdit(_form.Components[x]).Style.Color := clWhite;
      TcxTextEdit(_form.Components[x]).Properties.ReadOnly := False;
    end;

    if _form.Components[x].ClassType = TcxButtonEdit then
    begin
      if TcxButtonEdit(_form.Components[x]).tag > 100 then
        TcxButtonEdit(_form.Components[x]).Style.Color := clSkyBlue
      else
        TcxButtonEdit(_form.Components[x]).Style.Color := clWhite;
      TcxButtonEdit(_form.Components[x]).Enabled := True;
    end;

    if _form.Components[x].ClassType = TComboBox then
    begin
      if TComboBox(_form.Components[x]).tag > 100 then
        TComboBox(_form.Components[x]).Color := clSkyBlue
      else
        TComboBox(_form.Components[x]).Color := clWhite;
      TComboBox(_form.Components[x]).Enabled := True;
    end;

    (*
      if  _form.Components[x].ClassType = TDateEdit
      then begin
      if TDateEdit(_form.Components[x]).tag > 100
      then TDateEdit(_form.Components[x]).Color := clSkyBlue
      else TDateEdit(_form.Components[x]).Color := clWhite;;
      TDateEdit(_form.Components[x]).Enabled := True;
      end;
      *)
    if _form.Components[x].ClassType = TMemo then
    begin
      if (TMemo(_form.Components[x]).tag > 100) and
        (TComboBox(_form.Components[x]).tag <> 999) then
        TMemo(_form.Components[x]).Color := clSkyBlue
      else
        TMemo(_form.Components[x]).Color := clWhite;
      TMemo(_form.Components[x]).ReadOnly := False;
    end;

    if _form.Components[x].ClassType = TRadioGroup Then
    Begin
      TRadioGroup(_form.Components[x]).Enabled := True;
    End;

    if _form.Components[x].ClassType = TListBox then
    begin
      if TListBox(_form.Components[x]).tag > 100 then
        TListBox(_form.Components[x]).Color := clSkyBlue
      else
        TListBox(_form.Components[x]).Color := clWhite;
      TListBox(_form.Components[x]).Enabled := True;
    end;

  end;
end;

procedure EnabledEdit(_form: TForm);
var
  _say, x: integer;

begin
  _say := _form.ComponentCount - 1;

  for x := 0 to _say do
  begin
    if (_form.Components[x].ClassType = TEdit) or
      (_form.Components[x].ClassType = TKadirEdit) then
    begin
      if TEdit(_form.Components[x]).tag > 100 then
        TEdit(_form.Components[x]).Color := clSkyBlue
      else
        TEdit(_form.Components[x]).Color := clWhite;
      TEdit(_form.Components[x]).Enabled := True;
    end;

    if _form.Components[x].ClassType = TComboBox then
    begin
      if TComboBox(_form.Components[x]).tag > 100 then
        TComboBox(_form.Components[x]).Color := clSkyBlue
      else
        TComboBox(_form.Components[x]).Color := clWhite;
      TComboBox(_form.Components[x]).Enabled := True;
    end;

    if _form.Components[x].ClassType = TcxComboBox then
    begin
      if TcxComboBox(_form.Components[x]).tag > 100 then
        TcxComboBox(_form.Components[x]).Style.Color := clSkyBlue
      else
        TcxComboBox(_form.Components[x]).Style.Color := clWhite;
      TcxComboBox(_form.Components[x]).Enabled := True;
    end;

    if _form.Components[x].ClassType = TcxLookupComboBox then
    begin
      if TcxLookupComboBox(_form.Components[x]).tag > 100 then
        TcxLookupComboBox(_form.Components[x]).Style.Color := clSkyBlue
      else
        TcxLookupComboBox(_form.Components[x]).Style.Color := clWhite;
      TcxLookupComboBox(_form.Components[x]).Enabled := True;
    end;

    if _form.Components[x].ClassType = TcxTextEdit then
    begin
      if TcxComboBox(_form.Components[x]).tag > 100 then
        TcxComboBox(_form.Components[x]).Style.Color := clSkyBlue
      else
        TcxComboBox(_form.Components[x]).Style.Color := clWhite;
      TcxComboBox(_form.Components[x]).Enabled := True;
    end;

    if _form.Components[x].ClassType = TComboBox then
    begin
      if TComboBox(_form.Components[x]).tag > 100 then
        TComboBox(_form.Components[x]).Color := clSkyBlue
      else
        TComboBox(_form.Components[x]).Color := clWhite;
      TComboBox(_form.Components[x]).Enabled := True;
    end;

    (*
      if  _form.Components[x].ClassType = TDateEdit
      then begin
      if TDateEdit(_form.Components[x]).tag > 100
      then TDateEdit(_form.Components[x]).Color := clSkyBlue
      else TDateEdit(_form.Components[x]).Color := clWhite;;
      TDateEdit(_form.Components[x]).Enabled := True;
      end;
      *)
    if _form.Components[x].ClassType = TMemo then
    begin
      if (TComboBox(_form.Components[x]).tag > 100) and
        (TComboBox(_form.Components[x]).tag <> 999) then
        TComboBox(_form.Components[x]).Color := clSkyBlue
      else
        TComboBox(_form.Components[x]).Color := clWhite;
      TComboBox(_form.Components[x]).Enabled := True;
    end;

    if _form.Components[x].ClassType = TRadioGroup Then
    Begin
      TRadioGroup(_form.Components[x]).Enabled := True;
    End;

    if _form.Components[x].ClassType = TListBox then
    begin
      if TListBox(_form.Components[x]).tag > 100 then
        TListBox(_form.Components[x]).Color := clSkyBlue
      else
        TListBox(_form.Components[x]).Color := clWhite;
      TListBox(_form.Components[x]).Enabled := True;
    end;

  end;
end;

function tesisAdi(_kod: string): string;
var
  sql: string;
begin
  sql := 'select UNVANI from SAGLIKTESIS where kodu = ' + QuotedStr (_kod);
  datalar.QuerySelect(datalar.ADO_SQL, sql);
  Result := datalar.ADO_SQL.FieldByName('UNVANI').AsString;
end;

function bransAdi(_kod: string): string;
var
  sql: string;
begin
  sql := 'select DALI from KLINIKKODLARI where kodu = ' + QuotedStr (_kod);
  datalar.QuerySelect(datalar.ADO_SQL, sql);
  Result := datalar.ADO_SQL.FieldByName('DALI').AsString;
end;



function Sifrele(s: string): string;
var
  i: integer;
  t: string;
begin
  t := s;
  for i := 1 to Length(s) do
    t[i] := Chr((Ord(s[i]) * 11 + 13) mod 256);
  Sifrele := t;
end;

procedure UserRightInsert(M, Islem , User: string);
var
  ado : TADOQuery;
  sql : string;
begin
  if not CheckmodulIslem (M, Islem) then Exit;

  datalar.QueryExec(ado,sql);
  sql := 'if not exists(select 1 from UserSettings where Kullanici = ' +
          QuotedStr(User) + ' and Modul = ' + QuotedStr(M) +
          ' and Islem = ' + QuotedStr(Islem) + ')' +
         ' insert into UserSettings(Kullanici,Modul,Islem,Izin) ' +
         ' values(' + QuotedStr(User) + ',' +
                      QuotedStr(M) + ',' +
                      QuotedStr(Islem) + ',' +
                      '0)';
  datalar.QueryExec(ado,sql);

end;

function CheckModulIslem (const pModul, pIslem: String):Boolean;
var
  ado : TADOQuery;
  sql : string;
begin
  Result := False;
  if IsNull (pModul) or IsNull (pIslem) then
  begin
    showmessageskin ('Modul veya ��lem bilgisi bo� olamaz', '', '', 'info');
    Exit;
  end;

  sql := 'if not exists(select 1 from ModulIslem where Modul = ' + QuotedStr(pModul) +
          ' and Islem = ' + QuotedStr(pIslem) + ')' +
         ' insert into ModulIslem(Modul,Islem) ' +
         ' SELECT ' +
                      QuotedStr(pModul) + ',' +
                      QuotedStr(pIslem);
  datalar.QueryExec(ado,sql);
  Result := True;
end;

function UserRight(M, Islem: string): Boolean;
var
 adoUG : TADOQuery;
 izinUG : Boolean;
begin
  if not CheckModulIslem (M, Islem) then Exit;

  adoUG := TADOQuery.Create(nil);
  try
    datalar.QuerySelect(adoUG,
     'SELECT US.Izin FROM UserGroupSettings US ' +
     'join Users U on U.Grup = US.kullanici ' +
     'WHERE U.Kullanici = ' + QuotedStr (datalar.username) +
     ' AND US.Modul = ' + QuotedStr (M) +
     ' AND US.Islem = ' + QuotedStr (Islem));
    adoUG.First;
    if adoUG.eof Then
      izinUG := False
    Else
      izinUG := adoUG.Fields[0].AsBoolean;


    if izinUG = True then
    begin
      Result := True;
      exit;
    end;

    datalar.QuerySelect(adoUG,
      'SELECT Izin FROM UserSettings WHERE Kullanici = ' + QuotedStr (datalar.username) +
      ' AND Modul = ' + QuotedStr (M) +
      ' AND Islem = ' + QuotedStr (Islem));
    adoUG.First;
    if adoUG.eof Then
      Result := False
    Else
      Result := adoUG.Fields[0].AsBoolean;
  finally
    adoUG.free;
  end;

end;

function AktifYil(donem: string): string;
begin
  // sql := 'select * from muh_donemler where donem = ' + #39 + donem + #39;
  // datalar.QuerySelect(datalar.ADO_SQL2,sql);

  // result := copy(datalar.ADO_SQL2.fieldbyname('tarih1').AsString,1,4);

end;

function HesapTanimGetir(_kod: string): string;
begin
  datalar.QuerySelect(datalar.ADO_SQL3, 'select * from muh_Hesap_tanim');
  datalar.ADO_SQL3.Locate('TANIM', _kod, []);
  Result := datalar.ADO_SQL3.FieldByName('hesapkodu').AsString;
end;

function PosHesapGetir(_kod: string): string;
begin
  datalar.QuerySelect(datalar.ADO_SQL2,
    'select * from Keydat where slk = ' + QuotedStr ('53') + ' and slb = ' + QuotedStr (_kod));
  Result := datalar.ADO_SQL2.FieldByName('SLXX').AsString;
end;

function ayaditoay(ayadi: string; yil: string = ''): Tdate;
var
  Tarih: Tdate;
begin
  Tarih := Encodedate (1900, 1, 1);
  if yil = '' Then
    yil := copy(datetostr(date()), 7, 4);

  if ayadi = 'OCAK' then
    Tarih := strtodate('01.01.' + yil);
  if ayadi = 'SUBAT' then
    Tarih := strtodate('01.02.' + yil);
  if ayadi = 'MART' then
    Tarih := strtodate('01.03.' + yil);
  if ayadi = 'NISAN' then
    Tarih := strtodate('01.04.' + yil);
  if ayadi = 'MAYIS' then
    Tarih := strtodate('01.05.' + yil);
  if ayadi = 'HAZIRAN' then
    Tarih := strtodate('01.06.' + yil);
  if ayadi = 'TEMMUZ' then
    Tarih := strtodate('01.07.' + yil);
  if ayadi = 'AGUSTOS' then
    Tarih := strtodate('01.08.' + yil);
  if ayadi = 'EYLUL' then
    Tarih := strtodate('01.09.' + yil);
  if ayadi = 'EKIM' then
    Tarih := strtodate('01.10.' + yil);
  if ayadi = 'KASIM' then
    Tarih := strtodate('01.11.' + yil);
  if ayadi = 'ARALIK' then
    Tarih := strtodate('01.12.' + yil);

  Result := Tarih;

end;

function aytoayadi(_ay: Tdate): String;
var
  Tarih, ay: string;
begin
  Tarih := tarihal(_ay);
  ay := copy(Tarih, 5, 2);

  if ay = '01' then
    Tarih := 'OCAK';
  if ay = '02' then
    Tarih := '�UBAT';
  if ay = '03' then
    Tarih := 'MART';
  if ay = '04' then
    Tarih := 'N�SAN';
  if ay = '05' then
    Tarih := 'MAYIS';
  if ay = '06' then
    Tarih := 'HAZ�RAN';
  if ay = '07' then
    Tarih := 'TEMMUZ';
  if ay = '08' then
    Tarih := 'A�USTOS';
  if ay = '09' then
    Tarih := 'EYL�L';
  if ay = '10' then
    Tarih := 'EK�M';
  if ay = '11' then
    Tarih := 'KASIM';
  if ay = '12' then
    Tarih := 'ARALIK';

  Result := Tarih;

end;

function ayliktarih(Tarih: Tdate): Tdate;
var
  s: string;
  sp: Char;
  ay, yil, gun: word;

begin

  sp := FormatSettings.DateSeparator;
  s := '01' + sp + copy(tarihal(Tarih), 5, 2) + sp + copy(tarihal(Tarih), 1, 4);
  ay := strtoint(copy(tarihal(Tarih), 5, 2));

  inc(ay);
  if ay > 12 then
    ay := 1;
  yil := strtoint(copy(tarihal(Tarih), 1, 4));
  gun := 1;
  if (ay = 1) and (gun = 1) then
    inc(yil);
  Result := encodedate(yil, ay, gun) - 1;

end;

function ayliktarih(Tarih: Tdate; var t1: Tdate): Tdate; overload;
var
  s: string;
  sp: Char;
  ay, yil, gun: word;

begin

  sp := FormatSettings.DateSeparator;
  s := '01' + sp + copy(tarihal(Tarih), 5, 2) + sp + copy(tarihal(Tarih), 1, 4);

  ay := strtoint(copy(tarihal(Tarih), 5, 2));

  inc(ay);
  if ay > 12 then
    ay := 1;
  yil := strtoint(copy(tarihal(Tarih), 1, 4));
  gun := 1;
  if (ay = 1) and (gun = 1) then
    inc(yil);

  t1 := strtodate(s);
  Result := encodedate(yil, ay, gun) - 1;

end;

function ayliktarih(Tarih: Tdate; t1: TcxCustomDateEdit): Tdate; overload;
var
  s: string;
  sp: Char;
  ay, yil, gun: word;

begin

  sp := FormatSettings.DateSeparator;
  s := '01' + sp + copy(tarihal(Tarih), 5, 2) + sp + copy(tarihal(Tarih), 1, 4);

  ay := strtoint(copy(tarihal(Tarih), 5, 2));

  inc(ay);
  if ay > 12 then
    ay := 1;
  yil := strtoint(copy(tarihal(Tarih), 1, 4));
  gun := 1;
  if (ay = 1) and (gun = 1) then
    inc(yil);

  t1.Date := strtodate(s);
  Result := encodedate(yil, ay, gun) - 1;

end;


function ayliktarih2(ayadi: string; _yil_: string = ''): Tdate;
var
  s: string;
  sp: Char;
  Tarih: Tdate;
  ay, yil, gun: word;

begin
  if _yil_ = '' Then
    _yil_ := copy(datetostr(date()), 7, 4);
  Tarih := ayaditoay(ayadi, _yil_);

  sp := FormatSettings.DateSeparator;
  s := '01' + sp + copy(tarihal(Tarih), 5, 2) + sp + copy(tarihal(Tarih), 1, 4);
  ay := strtoint(copy(tarihal(Tarih), 5, 2));

  inc(ay);
  if ay > 12 then
    ay := 1;
  yil := strtoint(copy(tarihal(Tarih), 1, 4));
  gun := 1;
  if (ay = 1) and (gun = 1) then
    inc(yil);
  Result := encodedate(yil, ay, gun) - 1;

end;

function hesapbakiye(hesap: string): real;
var
  sql: string;
  borc, alacak: real;
begin
  if hesap <> '' then
  begin
    sql := 'exec hesap_bakiye  ' + QuotedStr (trim(hesap));
    datalar.QuerySelect(datalar.ADO_SQL, sql);
    borc := datalar.ADO_SQL.FieldByName('borc').AsFloat;
    alacak := datalar.ADO_SQL.FieldByName('alacak').AsFloat;

    Result := borc - alacak;
  end
  else
    Result := 0;

end;

procedure Grid_TemizleRowNotDelete(grid_adi: TStringGrid);
var
  i, j, k: integer;
begin
  if grid_adi.FixedRows = 0 then
    k := 0
  else
    k := grid_adi.FixedRows;
  for i := k to grid_adi.RowCount - 1 do
    for j := 0 to grid_adi.ColCount - 1 do
      grid_adi.Cells[j, i] := '';
  (*
    if Grid_Adi.FixedRows > 0
    Then Grid_Adi.RowCount := Grid_Adi.FixedRows + 1
    else Grid_Adi.RowCount := 1; *)
end;

procedure Grid_Temizle(grid_adi: TStringGrid);
var
  i, j, k: integer;
begin
  if grid_adi.FixedRows = 0 then
    k := 0
  else
    k := grid_adi.FixedRows;
  for i := k to grid_adi.RowCount - 1 do
    for j := 0 to grid_adi.ColCount - 1 do
      grid_adi.Cells[j, i] := '';
  if grid_adi.FixedRows > 0 Then
    grid_adi.RowCount := grid_adi.FixedRows + 1
  else
    grid_adi.RowCount := 1;
end;

function AllignRight(s: string): string;
var
  i: integer;
begin
  for i := 1 to MAX_NUM_LENGTH - Length(s) do
    if ((i mod 4) <> 0) then
      insert('  ', s, 1)
    else
      insert(' ', s, 1);
  AllignRight := s;
end;

function txtTOtxt_M(txt: string): string;
var
  i: integer;
  sp: Char;
begin
  sp := FormatSettings.ThousandSeparator;
  if (trim(txt) = '') OR (trim(txt) = '0.00') Then
    txt := '0'
  Else
    for i := 1 to Length(txt) do
      if ((txt[i] = sp) OR (txt[i] = ' ')) Then
        delete(txt, i, 1);
  txtTOtxt_M := txt;
end;

procedure XlsBeginStream(XlsStream: TStream; const BuildNumber: word);
begin

end;

procedure XlsEndStream(XlsStream: TStream);
begin

end;

procedure XlsWriteCellRk(XlsStream: TStream; const ACol, ARow: word;
  const AValue: Integer);


begin

end;

procedure XlsWriteCellNumber(XlsStream: TStream; const ACol, ARow: word;
  const AValue: double);
begin

end;

procedure XlsWriteCellLabel(XlsStream: TStream; const ACol, ARow: word;
  const AValue: string);

begin

end;

function kullanici: string;
begin
  Result := datalar.username;
end;

function ControlTarih(t: string): integer;
// tarih is given from the mask edit in the form __/__/____
var
  d, M, y: integer;
  x: string;
begin
  x := t;
  if ((x[1] = ' ') OR (x[2] = ' ') OR (x[4] = ' ') OR (x[5] = ' ') OR
      (x[7] = ' ') OR (x[8] = ' ') OR (x[9] = ' ') OR (x[10] = ' ')) Then
  begin
    ControlTarih := 0;
    Exit;
  end;

  delete(x, 3, 8);
  if (x[1] = '0') Then
    delete(x, 1, 1);
  d := StrToInt(x);
  if (d = 0) Then
  begin
    ControlTarih := 0;
    Exit;
  end;

  x := t;
  delete(x, 1, 3);
  delete(x, 3, 5);
  if (x[1] = '0') Then
    delete(x, 1, 1);
  M := StrToInt(x);
  if (M = 0) Then
  begin
    ControlTarih := 0;
    Exit;
  end;

  x := t;
  delete(x, 1, 6);
  y := StrToInt(x);

  if (y = 0) Then
  begin
    ControlTarih := 0;
    Exit;
  end;

  if (d > 31) Then
  begin
    ControlTarih := 0;
    Exit;
  end;

  if (M > 12) Then
  begin
    ControlTarih := 0;
    Exit;
  end;

  if (((M = 4) OR (M = 6) OR (M = 9) OR (M = 11)) AND (d = 31)) Then
  begin
    ControlTarih := 0;
    Exit
  end;

  if ((M = 2) AND (d > 29)) Then
  begin
    ControlTarih := 0;
    Exit;
  end;
  if ((M = 2) AND (y mod 4 <> 0) AND (d = 29)) Then
  begin
    ControlTarih := 0;
    Exit;
  end;

  ControlTarih := 1;
end;

function GetDataForMuavin: string;
begin
  GetDataForMuavin := DataForMuavin;
end;

function AnaHesapAdi(AnaNo: string): string;
var
  SQLstr: string;
begin
  SQLstr :=
    'SELECT hesap_adi FROM muh_hesap_plani WHERE hesap_kodu = ' + QuotedStr (AnaNo);
  datalar.QuerySelect(datalar.ADO_SQL3, SQLstr);
  AnaHesapAdi := datalar.ADO_SQL3.FieldByName('hesap_adi').AsString;
end;

function _HesapAdi(hesapkodu: string): string;
var
  SQLstr: string;
begin
  SQLstr :=
    'SELECT hesap_adi FROM muh_hesap_plani WHERE hesap_kodu = ' + QuotedStr (
    hesapkodu);
  datalar.QuerySelect(datalar.ADO_SQL3, SQLstr);
  _HesapAdi := datalar.ADO_SQL3.FieldByName('hesap_adi').AsString;
end;

function Bugun: string;
var
  y, M, d: word;
  yil, ay, gun: string;
  ds: Char;
begin
  decodedate(date, y, M, d);
  ds := FormatSettings.DateSeparator;
  yil := IntToStr(y);
  ay := IntToStr(M);
  gun := IntToStr(d);

  if (Length(ay) = 1) Then
    insert('0', ay, 1);
  if (Length(gun) = 1) Then
    insert('0', gun, 1);

  Bugun := gun + ds + ay + ds + yil;
end;

function Zorunlu(_frm: TForm; var myhint: string): Boolean;
var
  i: integer;
  tmp: string;
  TComp_: TComponent;
begin
  Result := False;
  if not Result then;;;

  for i := 0 to _frm.ComponentCount - 1 do
  begin
    TComp_ := _frm.Components[i];
    if TComp_ <> nil Then
    begin
      if TComp_ is TEdit Then
        if (TEdit(TComp_).Color = ZorunluRenk) and
          (TEdit(TComp_).Visible) Then
        begin
          if (trim(TEdit(TComp_).text) = '') Then
          begin
            if myhint = '' Then
              try
                TEdit(TComp_).SetFocus;
              except
              end;
            myhint := myhint + #13#10 + '   * ' + TEdit(TComp_).Hint;
            // exit;
          end;
          // (*
          if (TEdit(TComp_).Visible) Then
          begin
            tmp := TEdit(TComp_).text;
            tmp := StringReplace(tmp, ' ', '', [rfReplaceAll]);
            if (tmp <> TEdit(TComp_).text) or (tmp = '') Then
            begin
              if myhint = '' Then
                try
                  TEdit(TComp_).SetFocus;
                except
                end;
              myhint := myhint + #13#10 + '   * ' + TEdit(TComp_).Hint +
                ' -[G�R�� B���M� HATALI olabilir.]';
              // exit;
            end;
          end;
          // *)
        end;
      if TComp_ is TMemo Then
        if (TMemo(TComp_).Color = ZorunluRenk) and (TMemo(TComp_).Visible) and
          (trim(TMemo(TComp_).text) = '') Then
        begin
          if myhint = '' Then
            try
              TMemo(TComp_).SetFocus;
            except
            end;
          myhint := myhint + #13#10 + '   * ' + TMemo(TComp_).Hint;
          // exit;
        end;

      if TComp_ is TListBox Then
        if (TListBox(TComp_).Color = ZorunluRenk) and
          (TListBox(TComp_).Visible) and (TListBox(TComp_).Items.Count = 0)
          Then
        begin
          if myhint = '' Then
            try
              TListBox(TComp_).SetFocus;
            except
            end;
          myhint := myhint + #13#10 + '   * ' + TListBox(TComp_).Hint;
          // exit;
        end;

      if TComp_ is TComboBox Then
        if (TComboBox(TComp_).Color = ZorunluRenk) and
          (TComboBox(TComp_).Visible) and (TComboBox(TComp_).text = '') Then
        begin
          if myhint = '' Then
            try
              TComboBox(TComp_).SetFocus;
            except
            end;
          myhint := myhint + #13#10 + '   * ' + TComboBox(TComp_).Hint;
          // exit;
        end;

      if TComp_ is TComboBox Then
        if (TComboBox(TComp_).Color = ZorunluRenk) and
          (TComboBox(TComp_).Visible) and (TComboBox(TComp_).text = '') Then
        begin
          if myhint = '' Then
            try
              TComboBox(TComp_).SetFocus;
            except
            end;
          myhint := myhint + #13#10 + '   * ' + TComboBox(TComp_).Hint;
          // exit;
        end;

      if TComp_ is TRadioGroup Then
        if (TRadioGroup(TComp_).ItemIndex = -1) and
          (TRadioGroup(TComp_).Visible) Then
        begin
          if myhint = '' Then
            try
              TRadioGroup(TComp_).SetFocus;
            except
            end;
          myhint := myhint + #13#10 + '   * ' + TRadioGroup(TComp_).Hint;
          // exit;
        end;

    end; // end of nil
  end; // end of for
  Result := True;
end;

function Zorunlu(_pnl: TPanel; var myhint: string): Boolean;
var
  i: integer;
  tmp: string;
  TComp_: TComponent;
begin
  Result := False;
  if not Result then;;;
  for i := 0 to _pnl.ControlCount - 1 do
  begin
    TComp_ := _pnl.Controls[i];
    if TComp_ <> nil Then
    begin
      if TComp_ is TEdit Then
        if (TEdit(TComp_).Color = ZorunluRenk) and
          (TEdit(TComp_).Visible) Then
        begin
          if(trim(TEdit(TComp_).text) = '') Then
          begin
            if myhint = '' Then
              try
                TEdit(TComp_).SetFocus;
              except
              end;
            myhint := myhint + #13#10 + '   * ' + TEdit(TComp_).Hint;
            // exit;
          end;
          // (*
          if (TEdit(TComp_).Visible) Then
          begin
            tmp := TEdit(TComp_).text;
            tmp := StringReplace(tmp, ' ', '', [rfReplaceAll]);
            if (tmp <> TEdit(TComp_).text) or (tmp = '') Then
            begin
              if myhint = '' Then
                try
                  TEdit(TComp_).SetFocus;
                except
                end;
              myhint := myhint + #13#10 + '   * ' + TEdit(TComp_).Hint +
                ' -[G�R�� B���M� HATALI olabilir.]';
              // exit;
            end;
          end;
          // *)
        end;
      if TComp_ is TMemo Then
        if (TMemo(TComp_).Color = ZorunluRenk) and (TMemo(TComp_).Visible) and
          (trim(TMemo(TComp_).text) = '') Then
        begin
          if myhint = '' Then
            try
              TMemo(TComp_).SetFocus;
            except
            end;
          myhint := myhint + #13#10 + '   * ' + TMemo(TComp_).Hint;
          // exit;
        end;

      if TComp_ is TListBox Then
        if (TListBox(TComp_).Color = ZorunluRenk) and
          (TListBox(TComp_).Visible) and (TListBox(TComp_).Items.Count = 0)
          Then
        begin
          if myhint = '' Then
            try
              TListBox(TComp_).SetFocus;
            except
            end;
          myhint := myhint + #13#10 + '   * ' + TListBox(TComp_).Hint;
          // exit;
        end;

      if TComp_ is TComboBox Then
        if (TComboBox(TComp_).Color = ZorunluRenk) and
          (TComboBox(TComp_).Visible) and (TComboBox(TComp_).text = '') Then
        begin
          if myhint = '' Then
            try
              TComboBox(TComp_).SetFocus;
            except
            end;
          myhint := myhint + #13#10 + '   * ' + TComboBox(TComp_).Hint;
          // exit;
        end;

      if TComp_ is TRadioGroup Then
        if (TRadioGroup(TComp_).ItemIndex = -1) and
          (TRadioGroup(TComp_).Visible) Then
        begin
          if myhint = '' Then
            try
              TRadioGroup(TComp_).SetFocus;
            except
            end;
          myhint := myhint + #13#10 + '   * ' + TRadioGroup(TComp_).Hint;
          // exit;
        end;


      (*
        if TComp_ is TDBEditEh
        Then if  (TDBEditEh(TComp_).text = '') and (TDBEditEh(TComp_).Color = ZorunluRenk)
        and (TDBEditEh(TComp_).Visible)
        Then begin
        if myhint = '' Then try TDBEditEh(TComp_).SetFocus; except end;
        myhint := myhint + #13#10 + '   * ' + TDBEditEh(TComp_).Hint;
        //exit;
        end;

        if TComp_ is TDBDateTimeEditEh
        Then if  (TDBDateTimeEditEh(TComp_).text = '  .  .    ') and (TDBDateTimeEditEh(TComp_).Color = ZorunluRenk)
        and (TDBDateTimeEditEh(TComp_).Visible)
        Then begin
        if myhint = '' Then try TDBDateTimeEditEh(TComp_).SetFocus; except end;
        myhint := myhint + #13#10 + '   * ' + TDBDateTimeEditEh(TComp_).Hint;
        //exit;
        end;
        *)
      if TComp_ is TComboBox Then
        if (TComboBox(TComp_).text = '') and
          (TComboBox(TComp_).Color = ZorunluRenk) and
          (TComboBox(TComp_).Visible) Then
        begin
          if myhint = '' Then
            try
              TComboBox(TComp_).SetFocus;
            except
            end;
          myhint := myhint + #13#10 + '   * ' + TComboBox(TComp_).Hint;
          // exit;
        end;

    end; // end of nil
  end; // end of for
  Result := True;
end;





procedure GorselAyar(_frm: TForm; image: TImageList);
var
  say: word;
  _Kontrol: TComponent;
  _bmp: TBitmap;
begin
  // _bmp2 := TBitmap.Create;
  // BitBtn2ATBtn(_frm);

  {
    if _frm.KeyPreview = False
    Then begin
    _frm.OnKeyPress := OnKeyPress;
    if _frm.MethodAddress('FormKeyDown') = nil
    Then _frm.OnKeyDown := OnKeyDown;
    _frm.KeyPreview := True;
    end;
    _frm.OnKeyPress := OnKeyPress;
    if _frm.MethodAddress('FormKeyDown') = nil
    Then _frm.OnKeyDown := OnKeyDown;
    }
  {
    if _frm.FindComponent('_MAVIBTN_') <> nil
    Then begin
    _frm.FindComponent('_MAVIBTN_').KeyDown := frmData.NextKontrol;

    end;
    }
  {
    if APP_NAME = 'MUHASEBE'
    Then begin
    if (_frm.Height + 50 > Screen.Height)
    Then begin
    try
    if not (biMaximize in _frm.BorderIcons)
    Then _frm.BorderIcons := _frm.BorderIcons + [biMaximize];
    except
    end;
    _frm.WindowState := wsMaximized;
    end;
    end;
    }

  _frm.Caption := sirket('');

  for say := 0 to _frm.ComponentCount - 1 do
  begin
    _Kontrol := _frm.Components[say];


    if _Kontrol is TPanel Then
    begin
      if AnsiUpperCase(_Kontrol.Name) = 'PNLUST' Then
      begin
        TPanel(_Kontrol).Color := _pnlUst
      end
      else if AnsiUpperCase(_Kontrol.Name) = 'PNLTITLE' Then
      begin
        TPanel(_Kontrol).Color := _pnlBaslik;
        TPanel(_Kontrol).Font.Color := _pnlBaslikYazi;
        TPanel(_Kontrol).Alignment := taLeftJustify;
        TPanel(_Kontrol).BorderWidth := 5;
        TPanel(_Kontrol).Caption := KucukHarfTRK(TPanel(_Kontrol).Caption);
      end
      else if AnsiUpperCase(_Kontrol.Name) = 'PNLONAY' Then
      begin
        TPanel(_Kontrol).Color := _pnlOnay;
        TPanel(_Kontrol).Font.Color := _pnlOnayYazi;
      end
      else if AnsiUpperCase(_Kontrol.Name) = 'PNLTOOLBAR' Then
        TPanel(_Kontrol).Color := _pnlOnay;
      Continue;
    end;

    if (_Kontrol is TEdit) Then
    begin

      if TEdit(_Kontrol).Color = clSkyBlue Then
        TEdit(_Kontrol).Color := ZorunluRenk
      else if (TEdit(_Kontrol).Color = clWindow) or
        (TEdit(_Kontrol).Color = clWhite) Then
        TEdit(_Kontrol).Color := OpsiyonRenk
      else if (TEdit(_Kontrol).Color = clBtnFace) or
        (TEdit(_Kontrol).Color = clSilver) Then
        TEdit(_Kontrol).Color := KapaliRenk;

      if (TEdit(_Kontrol).ParentFont = False) and
        (TEdit(_Kontrol).Alignment = taLeftJustify) Then
      begin
        TEdit(_Kontrol).Alignment := taCenter;
        TEdit(_Kontrol).Alignment := taLeftJustify;
      end;

      if TEdit(_Kontrol).Width > 0 Then
      begin
        _bmp := TBitmap.Create;
        try
        //  TEdit(_Kontrol).NumGlyphs := 1;
          image.GetBitmap(0, _bmp);
     //     TEdit(_Kontrol).Glyph := _bmp;
        finally
          _bmp.Free;
        end;
        Continue;
      end;
    end;

    if (_Kontrol is TMemo) and (_Kontrol.tag <> 999) Then
    begin
      if TMemo(_Kontrol).Color = clSkyBlue Then
        TMemo(_Kontrol).Color := ZorunluRenk
      else if (TMemo(_Kontrol).Color = clBtnFace) or
        (TMemo(_Kontrol).Color = clSilver) Then
        TMemo(_Kontrol).Color := KapaliRenk
      else if (TMemo(_Kontrol).Color = clWhite) or
        (TMemo(_Kontrol).Color = clWindow) Then
        TMemo(_Kontrol).Color := OpsiyonRenk;
    end;

    {
      if (_Kontrol is TCheckBox)
      Then begin
      TCheckBox(_Kontrol).OnKeyPress :=   frmData.chkKeyPress;
      Continue;
      end;
      }

    if (_Kontrol is TComboBox) Then
    begin
      if TComboBox(_Kontrol).Color = clSkyBlue Then
        TComboBox(_Kontrol).Color := ZorunluRenk
      else if (TComboBox(_Kontrol).Color = clWindow) or
        (TComboBox(_Kontrol).Color = clWhite) Then
        TComboBox(_Kontrol).Color := OpsiyonRenk
      else if (TComboBox(_Kontrol).Color = clBtnFace) or
        (TComboBox(_Kontrol).Color = clSilver) Then
        TComboBox(_Kontrol).Color := KapaliRenk;
      Continue;
    end;



    if (_Kontrol.tag > 0) and (_Kontrol is TBitBtn) and
       (_Kontrol.tag <> 999) Then
    begin
      // {
      TBitBtn(_Kontrol).ShowHint := True;

      { if _Kontrol.Tag < 13
        Then begin
        {
        _comp := FindComponent('_' +  IntToStr(_Kontrol.Tag) );
        _ms.Position := 0;

        TAdvToolButton(_comp).GlyphDisabled.SaveToStream( _ms );
        _ms.Position := 0;
        TAdvToolButton(_Kontrol).GlyphDisabled.LoadFromStream( _ms );

        _ms.Position := 0;
        TAdvToolButton(_comp).Glyph.SaveToStream( _ms );
        _ms.Position := 0;
        TAdvToolButton(_Kontrol).Glyph.LoadFromStream( _ms );

        end
        else begin }
      // }
      _bmp := TBitmap.Create;
      try
        image.GetBitmap(_Kontrol.tag, _bmp);
        TBitBtn(_Kontrol).Glyph := _bmp;
      finally
        _bmp.Free;
      end;
      // end;
      Continue;
    end;

    if (_Kontrol.tag > 0) and (_Kontrol is TBitBtn)
       Then
    begin
      //_bmp := TBitmap.Create;
      //try
      //   global_img_list2.GetBitmap(_Kontrol.Tag, _bmp);
      //   if TBitBtn(_Kontrol).NumGlyphs = 2
      //   Then global_img_list2.GetBitmap(_Kontrol.Tag, _bmp)
      //   else global_img_list.GetBitmap(_Kontrol.Tag, _bmp);
      //   TBitBtn(_Kontrol).Glyph := _bmp;
      //finally
      //   _bmp.Free;
      //end;
      Continue;
    end
    else if (pos('BTNOK', AnsiUpperCase(_Kontrol.Name)) > 0) Then
    begin
      { _bmp := TBitmap.Create;
        global_img_list16.GetBitmap(0, _bmp);
        if _Kontrol is TAdvToolButton
        Then TAdvToolButton(_Kontrol).Glyph := _bmp
        else TBitBtn(_Kontrol).Glyph := _bmp;
        _bmp.Free;
        Continue; }
    end;
  end; // end of for
end;

function KucukHarfTRK(str: string): string;
var
  ln: word;
  str_: string;
begin
  Result := str;
  if Length(str) > 0 Then
  begin
    ln := 1;
    while ln <= Length(str) do
    begin
      str_ := str[ln];
      if (ln > 1) and (str[ln - 1] <> ' ') Then
      begin
        case str[ln] of
          'I':
            str[ln] := '�';
          '�':
            str[ln] := 'i'
          else
          begin
            str_ := AnsiLowerCase(str_);
            str[ln] := str_[1];
          end;
        end; // end of case
      end
      else
      begin
        case str[ln] of
          '�':
            str[ln] := 'I';
          'i':
            str[ln] := '�'
          else
          begin
            str_ := AnsiUpperCase(str_);
            str[ln] := str_[1];
          end;
        end; // end of case
      end;
      Inc(ln);
    end;
  end;
  Result := str;
end;




function DonemSeansSayisi(kod, donem, durum: string): integer;
var
  sql, kodsql, durumsql: string;
  ado: TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;

    if kod = '' then
      kodsql := ''
    else
      kodsql := ' AND HemodiyalizTip = ' + QuotedStr(kod);
    if durum = '' then
      durumsql := ''
    else
      durumsql := 'AND g.durum = ' + durum;

    sql := 'SELECT COUNT(*) FROM GelisDetay g ' +
      ' JOIN hastakart h ON h.dosyaNo = g.dosyaNo ' +
      ' left join Kurumlar k on k.kurum = h.kurum ' +
      ' WHERE substring(RTarih,1,6) = ' + QuotedStr(donem) + kodsql + durumsql +
      ' AND k.KURUMTIPI in (' + QuotedStr ('1') + ',' + QuotedStr ('99') + ')';
    datalar.QuerySelect(ado, sql);

    Result := ado.Fields[0].AsInteger;
  finally
    ado.Free;
  end;
end;

function TakipKontrolDonemSeansSayisi(donem: string; var P704230, P704233,
  P704234: integer): integer;
var
  sql: string;
  ado: TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;

    sql := 'SELECT  sutKodu,count(*) SeansSayi ' +
      ' FROM gssTakipOkuDiger gtod ' +
      ' WHERE substring(dbo.fn_NoktaliTarihTovarchar(islemTarihi),1,6) = ' +
      QuotedStr(donem) +
      ' AND sutKodu IN (' + QuotedStr ('P704230') + ',' + QuotedStr ('P704234') + ',' + QuotedStr ('P704233') + ') ' + ' group BY sutKodu ';
    datalar.QuerySelect(ado, sql);

    while not ado.eof do
    begin
      if ado.FieldByName('sutKodu').AsString = 'P704230' then
        P704230 := ado.FieldByName('SeansSayi').AsInteger
      else if ado.FieldByName('sutKodu').AsString = 'P704233' then
        P704233 := ado.FieldByName('SeansSayi').AsInteger
      else if ado.FieldByName('sutKodu').AsString = 'P704234' then
        P704234 := ado.FieldByName('SeansSayi').AsInteger;
      ado.Next;
    end;

    Result := P704230 + P704233 + P704234;
  finally
    ado.Free;
  end;
end;

function secilisatirsayisiCx(Grid: TcxGridTableView; col: integer): integer;
var
  x, r, seciliadet: integer;
begin
  seciliadet := 0;
  for x := 0 to Grid.DataController.RowCount - 1 do
  begin
    Grid.DataController.FocusedRowIndex := x;
    r := Grid.DataController.GetFocusedRecordIndex;
    if Grid.DataController.Values[r, col] = True then
    begin
      seciliadet := seciliadet + 1;
    end;
  end;
  Result := seciliadet;
end;

function seciliSatirlarColumData(Grid: TcxGridTableView; col: integer): string;
var
  x: integer;
  ss : string;
begin
  seciliSatirlarColumData := '';
 // columName := Grid.Columns[col].DataBinding.
  for x := 0 to Grid.Controller.SelectedRowCount - 1 do
  begin
     ss := ss + ',' + vartostr(Grid.Controller.SelectedRows[x].Values[col]);

 //    GridCellToString(Grid,'sira',Grid.Controller.SelectedRows[x]);
  end;
  seciliSatirlarColumData := ss;
end;


function sirket(donem: string): string;
var
  sql: string;
begin
  sql := 'select merkezAdi from merkezBilgisi';
  datalar.QuerySelect(datalar.ADO_SQL2, sql);
  Result := datalar.ADO_SQL2.FieldByName('merkezAdi').AsString;

end;

function aktifdonem: string;
begin
  Result := RegOku ('DONEM', 'Software\NOKTA');
end;

Function tariharalikkontrol(Tarih: Tdate; donem: string): string;
begin
  datalar.ADO_SQL.close;
  datalar.ADO_SQL.sql.Clear;
  datalar.ADO_SQL.sql.Add('exec dbo.tarih_kilit ' + QuotedStr (tarihal(Tarih)
     ) + ',' + QuotedStr (donem));
  datalar.ADO_SQL.Open;

  if datalar.ADO_SQL.FieldByName('sonuc').AsString = 'ok' then
  begin
    // showmessage('Tarih Kilitli , Bu Tarihli ��lem Yap�lamaz ....','','','info');
    Result := 'ok';
  end;

  if datalar.ADO_SQL.FieldByName('sonuc').AsString = 'DONEMDISI' then
  begin
    // showmessage('Tarih Kilitli , Bu Tarihli ��lem Yap�lamaz ....','','','info');
    Result := 'DONEMDISI';
  end;

end;

function ListResult: string;
begin
  ListResult := strList;
end;

function NextKontrol(frm_: TForm; var Key: Char): Boolean;
begin
  if Key = #13 Then
  begin
    Key := #0;
    frm_.Perform(WM_NEXTDLGCTL, 0, 0);
    if frm_.ActiveControl.Name = '_MAVIBTN_' Then
      frm_.Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure StartWork;
begin
  Screen.Cursor := crHourGlass;
end;

procedure EndWork;
begin
  Screen.Cursor := crDefault;
end;

procedure SetListResult(s: string);
begin
  strList := s;
end;

function AddSpaceLeft(s: string; l: integer): string;
var
  i: integer;
begin
  for i := 1 to l - Length(s) do
    insert(' ', s, 1);
  AddSpaceLeft := s;
end;

function AddSpaceRight(s: string; l: integer): string;
var
  i: integer;
begin
  for i := 1 to l - Length(s) do
    s := s + ' ';
  AddSpaceRight := s;
end;

function Tarih(t: string): string;
var
  d, M, y: string;
  ds: Char;
begin
  ds := FormatSettings.DateSeparator;
  if ((trim(StringReplace(t, ds, '', [rfReplaceAll])) = '') OR
      (t = '  /  /    ') OR (t = '  .  .    ')) Then
  begin
    Tarih := '';
    Exit;
  end;

  d := t;
  delete(d, 3, 8);
  M := t;
  delete(M, 1, 3);
  delete(M, 3, 5);
  y := t;
  delete(y, 1, 6);

  Tarih := y + M + d;
end;

function NoktasizTarih(t: string): string;
var
  d: string;
  ds: Char;
  i : Integer;
begin
  ds := FormatSettings.DateSeparator;
  if ((trim(StringReplace(t, ds, '', [rfReplaceAll])) = '') OR
      (t = '  /  /    ') OR (t = '  .  .    ')) Then
  begin
    Result := '';
    Exit;
  end;

  i := 0;
  Result := '';
  if copy (t, length (t), 1) <> ds then t := t + ds;
  while (Pos (ds, t) > 0) and (t <> '') do
  begin
    d:= Copy (t, 1, Pos (ds, t) - 1);
    while length (d) < 2 do
      d := '0' + d;
    if i = 2 then
      while length (d) < 4 do
        d := '0' + d;
    Result := d + Result;
    Delete (t, 1, Pos (ds, t));
    i := i + 1;
  end;
end;

function FormattedTarih(t: string): string;
var
  d, M, y: string;
  // sysDecimalSeparator :Char;
  ds: Char;
begin
  if trim(t) = '' Then
  begin
    FormattedTarih := '';
    Exit;
  end;
  ds := FormatSettings.DateSeparator;
  // sysDecimalSeparator := DecimalSeparator;
  // DecimalSeparator := '/';
  d := t;
  delete(d, 1, 6);
  M := t;
  delete(M, 1, 4);
  delete(M, 3, 2);
  y := t;
  delete(y, 5, 4);
  FormattedTarih := d + ds + M + ds + y;
  // DecimalSeparator := sysDecimalSeparator;
end;

function FormattedTarihYYMMGG(t, s: string): string;
var
  d, M, y: string;
  // sysDecimalSeparator :Char;
  //_ds: Char;
begin
  if trim(t) = '' Then
  begin
    FormattedTarihYYMMGG := '';
    Exit;
  end;
  //_ds := DateSeparator;
  // sysDecimalSeparator := DecimalSeparator;
  // DecimalSeparator := '/';
  d := t;
  delete(d, 1, 6);
  M := t;
  delete(M, 1, 4);
  delete(M, 3, 2);
  y := t;
  delete(y, 5, 4);
  FormattedTarihYYMMGG := y + s + M + s + d;
  // DecimalSeparator := sysDecimalSeparator;
end;

function numTOtxt_M(d: extended; p: integer): string;
var
  i: integer;
begin
  FormatSettings.DecimalSeparator := '.';
  FormatSettings.ThousandSeparator := ',';
  if (p = -3) Then
  begin
    i := trunc(d / 1000);
    numTOtxt_M := FloatToStrF(i, ffNumber, 18, 0);
  end
  Else
  begin
    if (p < 0) Then
      p := 0;
    numTOtxt_M := FloatToStrF(d, ffNumber, 18 - p, p)
  end;
end;



function ShowMessage(msg1, msg2, msg3: string; t: string): word;
begin
  Result := mrNone;
  if frmMessage = nil Then
  begin
    frmMessage := TfrmMessage.Create(Application);
  end
  else
  begin
    frmMessage.Height := 117;
    frmMessage.txtMsg.Clear;
  end;

  if (t = 'msg') // ask question, hayir is selected
    Then
    frmMessage.tag := 0
  Else if (t = 'info') Then
    frmMessage.tag := 1
  Else if (t = 'conf') // confirmation, ask question, evet is selected
    Then
    frmMessage.tag := 2
  Else if (t = 'chc') // give choice Tamam, vazgec, tamam is selected
    Then
    frmMessage.tag := 3
  Else if (t = 'chc2') // give choice Tamam, vazgec, vazgec is selected
    Then
    frmMessage.tag := 4
  Else if (t = 'ozel1') // give choice inta�/k��at is selected
    Then
    frmMessage.tag := 5
  Else if (t = 'varyok') // give choice Var, Yok, Yok is selected
    Then
    frmMessage.tag := 6
  Else
    Exit;

  frmMessage.txtMsg.Clear;
  msg1 := StringReplace(msg1, '|', #13#10, [rfReplaceAll]);
  msg2 := StringReplace(msg2, '|', #13#10, [rfReplaceAll]);
  msg3 := StringReplace(msg3, '|', #13#10, [rfReplaceAll]);
  // frmMessage.txtMsg.Lines.Add(Trim(msg2));
  // frmMessage.txtMsg.Clear;
  // frmMessage.Height := 116;
  // frmMessage.Width := 479;
  // frmMessage.txtMsg.Height := 59;

  frmMessage.txtMsg.text := msg2;

  frmMessage.txtMsg.text := msg2;

  if trim(msg1) <> '' Then
    frmMessage.txtMsg.Lines.Insert(0, msg1);
  if trim(msg3) <> '' Then
    frmMessage.txtMsg.Lines.Add(msg3);
  // Dialogs.ShowMessage (inttostr(frmMessage.txtMsg.Lines.Count));
  // if frmMessage.txtMsg.Lines.Count > 2
  // Then begin
  frmMessage.txtMsg.Height := frmMessage.txtMsg.Lines.Count * 14 + 18;
  frmMessage.Height := frmMessage.txtMsg.Height + 60;

  if frmMessage.Height > 550 Then
  begin
    frmMessage.Height := 550;
    frmMessage.txtMsg.Height := frmMessage.Height - 60;
  end;

  frmMessage.btnYes.Top := frmMessage.txtMsg.Height + 5;
  frmMessage.btnIptal.Top := frmMessage.txtMsg.Height + 5;
  // end;
  // Dialogs.ShowMessage (inttostr(frmMessage.txtMsg.Height));
  {
    for i:= 1 to length(msg) do
    if (msg[i] = '|')
    Then break;
    if ( i < Length(msg) )
    Then begin
    s := msg;
    delete (s,i,length(s)-i+1);
    frmMessage.lblMessage1.Caption := s;
    s := msg;
    delete (s,1,i);
    frmMessage.lblMessage2.Caption := s;
    end
    Else begin
    frmmessage.lblMessage1.Caption := msg;
    frmMessage.lblMessage2.Caption := '';
    end;
    frmmessage.Caption := frmData.CompanyName; }
  // frmMessage.Position := poDesktopCenter;
  frmMessage.ShowModal;
  Result := frmMessage.ModalResult;
end;

function ShowPopupForm(Caption : string ; Tag : integer ; Form : TForm;imageindex : integer = -1): word;
begin
  Application.CreateForm(TfrmPopup, frmPopup);
  try
    case Tag of
      gdgelisAc,gdPeryodikgelisAc,gdgelisDuzenle,ReceteYeni,
      ReceteDuzenle,ReceteIlacEkle,ReceteIlacDuzenle :
         begin
            if datalar.UserGroup <> '2'
            then begin
               ShowMessageSkin('Bu ��lem Doktor kullan�c� grubuna �zeldir', '', '', 'info');
               exit;
            end;
         end;
    end;
    frmPopup.cxTab.Tabs[0].imageindex := imageindex;
    frmPopup._islem_ := Tag;
    frmPopup.islem_ := Tag;
    frmPopup._caption_ := Caption;
    frmPopup.FGirisForm := TGirisForm(Form);//Application.FindComponent(Form.name) as TGirisForm;
    TGirisForm(frmPopup)._SahaDenetimVeri_ := TGirisForm(Form)._SahaDenetimVeri_;
    frmPopup.ShowModal;
    Result := frmPopup.ModalResult;
  finally
    FreeAndNil (frmPopup);
  end;
end;

function ShowPopupForm(Caption : string; Tag : integer ; value : string = ''; imageindex : integer = -1): word;
begin
  Application.CreateForm(TfrmPopup, frmPopup);
  try

    case Tag of
      gdgelisAc,gdPeryodikgelisAc,gdgelisDuzenle,ReceteYeni,
      ReceteDuzenle,ReceteIlacEkle,ReceteIlacDuzenle :
         begin
            if datalar.UserGroup <> '2'
            then begin
               ShowMessageSkin('Bu ��lem Doktor kullan�c� grubuna �zeldir', '', '', 'info');
               exit;
            end;
         end;
    end;
    frmPopup.cxTab.Tabs[0].imageindex := imageindex;
    frmPopup._islem_ := Tag;
    frmPopup.islem_ := Tag;
    frmPopup._caption_ := Caption;
    frmPopup._value_ := value;
    frmPopup.ShowModal;
    Result := frmPopup.ModalResult;
  finally
    FreeAndNil (frmPopup);
  end;
end;


function ShowPopupForm(Caption : string; Tag : integer ; value : string ; FormName : string;imageindex : integer = -1): word;
var
 F : TfrmPopup;
begin
  Application.CreateForm(TfrmPopup, F);
  try
    F.Name := FormName;
    case Tag of
      gdgelisAc,gdPeryodikgelisAc,gdgelisDuzenle,ReceteYeni,
      ReceteDuzenle,ReceteIlacEkle,ReceteIlacDuzenle :
         begin
            if datalar.UserGroup <> '2'
            then begin
               ShowMessageSkin('Bu ��lem Doktor kullan�c� grubuna �zeldir', '', '', 'info');
               exit;
            end;
         end;
    end;
    F.cxTab.Tabs[0].imageindex := imageindex;
    F._islem_ := Tag;
    F.islem_ := Tag;
    F.caption_ := Caption;
    F._caption_ := Caption;
    F._value_ := value;
    F.ShowModal;
    Result := F.ModalResult;
  finally
    FreeAndNil (F);
  end;
end;



function ShowMessageSkin(msg1, msg2, msg3: string; t: string): word;
var
  bBenActim: Boolean;
begin
  Result := mrNone;
  if frmMessage_y = nil Then
  begin
    frmMessage_y := TfrmMessage_y.Create(Application);
    bBenActim := True;
  end
  else
  begin
    frmMessage_y.Height := 117;
    frmMessage_y.txtMsg.Clear;
    bbenactim := False;
  end;
  try
    if (t = 'msg') // ask question, hayir is selected
      Then
      frmMessage_y.tag := 0
    Else if (t = 'info') Then
      frmMessage_y.tag := 1
    Else if (t = 'conf') // confirmation, ask question, evet is selected
      Then
      frmMessage_y.tag := 2
    Else if (t = 'chc') // give choice Tamam, vazgec, tamam is selected
      Then
      frmMessage_y.tag := 3
    Else if (t = 'chc2') // give choice Tamam, vazgec, vazgec is selected
      Then
      frmMessage_y.tag := 4
    Else if (t = 'ozel1') // give choice inta�/k��at is selected
      Then
      frmMessage_y.tag := 5
    Else if (t = 'varyok') // give choice Var, Yok, Yok is selected
      Then
      frmMessage_y.tag := 6
    Else
      Exit;

    frmMessage_y.txtMsg.Clear;
    msg1 := StringReplace(msg1, '|', #13#10, [rfReplaceAll]);
    msg2 := StringReplace(msg2, '|', #13#10, [rfReplaceAll]);
    msg3 := StringReplace(msg3, '|', #13#10, [rfReplaceAll]);
    // frmMessage.txtMsg.Lines.Add(Trim(msg2));
    // frmMessage.txtMsg.Clear;
    // frmMessage.Height := 116;
    // frmMessage.Width := 479;
    // frmMessage.txtMsg.Height := 59;

    frmMessage_y.txtMsg.text := msg2;

    frmMessage_y.txtMsg.text := msg2;

    if trim(msg1) <> '' Then
      frmMessage_y.txtMsg.Lines.Insert(0, msg1);
    if trim(msg3) <> '' Then
      frmMessage_y.txtMsg.Lines.Add(msg3);
    // Dialogs.ShowMessage (inttostr(frmMessage.txtMsg.Lines.Count));
    // if frmMessage.txtMsg.Lines.Count > 2
    // Then begin
    frmMessage_y.txtMsg.Height := frmMessage_y.txtMsg.Lines.Count * 14 + 18;
    frmMessage_y.Height := frmMessage_y.txtMsg.Height + 60;

    if frmMessage_y.Height > 550 Then
    begin
      frmMessage_y.Height := 550;
      frmMessage_y.txtMsg.Height := frmMessage_y.Height - 60;
    end;

    frmMessage_y.btnYes.Top := frmMessage_y.txtMsg.Height + 5;
    frmMessage_y.btnIptal.Top := frmMessage_y.txtMsg.Height + 5;
    // end;
    // Dialogs.ShowMessage (inttostr(frmMessage.txtMsg.Height));
    {
      for i:= 1 to length(msg) do
      if (msg[i] = '|')
      Then break;
      if ( i < Length(msg) )
      Then begin
      s := msg;
      delete (s,i,length(s)-i+1);
      frmMessage.lblMessage1.Caption := s;
      s := msg;
      delete (s,1,i);
      frmMessage.lblMessage2.Caption := s;
      end
      Else begin
      frmmessage.lblMessage1.Caption := msg;
      frmMessage.lblMessage2.Caption := '';
      end;
      frmmessage.Caption := frmData.CompanyName; }
    // frmMessage.Position := poDesktopCenter;
    frmMessage_y.ShowModal;
    Result := frmMessage_y.ModalResult;
  finally
    datalar.messaboxAcik := False;
    if bBenActim then FreeandNil (frmMessage_y);
  end;
end;


function tarihyap(t: string): Tdate;
var
  ds: Char;
  y, a, g: string;
begin
  ds := FormatSettings.DateSeparator;
  y := copy(t, 1, 4);
  a := copy(t, 5, 2);
  g := copy(t, 7, 2);

  Result := strtodate(g + ds + a + ds + y);

end;

function tarihal(t: Tdate): string;
var
  s: string;
begin
 // s := datetostr(t);
 // s := FormatDateTime('dd.mm.yyyy',t);
  Result := FormatDateTime('YYYYMMDD',t);
  //  copy(s, 7, 4) + copy(s, 4, 2) + copy(s, 1, 2);
end;



function SayisalVeri(alan: Tlabelededit; var Key: Char): Boolean;
begin
  if not(Key in ['0' .. '9', #13, #8, #10]) Then
    Key := #0;
  if (Key = '.') and (pos('.', alan.text) > 0) Then
    Key := #0;
end;

function BuyukHarf(var Key: Char): Boolean;
var
  s: string;
begin

  if Key in [#10, #39, #34] Then
    Key := #0;
  if (Key = '''') or (Key = '"') Then
    Key := #0180;
  if Key in ['a' .. 'z', '�', '�', '�', '�', '�', '�'] Then
  begin
    s := Key;
    if Key = '�' then
      Key := 'I'
    else if Key = 'i' then
      Key := '�'
    else
    begin
      s := AnsiUpperCase(s);
      Key := s[1];
    end;
  end;
end;

procedure ComboDoldur(Q: TADOQuery; sql: string; c: TComboBox);
begin
  Q.sql.text := '';
  Q.sql.Add(sql);
  Q.Open;
  Q.First;
  c.Items.Clear;
  while not Q.eof do
  begin
    c.Items.Add(trim(Q.Fields[0].AsString));
    Q.Next;
  end;
  Q.close;
end;



procedure ComboDoldurName(sql: string; c: TcxComboBox);
var
  Q: TADOQuery;

begin
  if sql = '' then
    sql :=
      'select SLT from Parametreler where SLK = ' + QuotedStr ('40') + ' and SLB = ' + QuotedStr
      (c.Name);

  Q := TADOQuery.Create(nil);
  try
    Q.Connection := datalar.ADOConnection2;

    Q.sql.Add(sql);
    Q.Open;
    try
      Q.First;
      c.Properties.Items.Clear;
      while not Q.eof do
      begin
        c.Properties.Items.Add(trim(Q.Fields[0].AsString));
        Q.Next;
      end;
    finally
      Q.close;
    end;
  finally
    Q.Free;
  end;
end;

procedure ComboDoldurName(sql: string; c: TComboBox);
var
  Q: TADOQuery;

begin
  if sql = '' then
    sql :=
      'select SLT from Parametreler where SLK = ' + QuotedStr ('40') + ' and SLB = ' + QuotedStr
      (c.Name);

  Q := TADOQuery.Create(nil);
  try
    Q.Connection := datalar.ADOConnection2;

    Q.sql.Add(sql);
    Q.Open;
    try
      Q.First;
      c.Items.Clear;
      while not Q.eof do
      begin
        c.Items.Add(trim(Q.Fields[0].AsString));
        Q.Next;
      end;
    finally
      Q.close;
    end;
  finally
    Q.Free;
  end;
end;

procedure ComboDoldur2(Q: TADOQuery; sql: string; c: TComboBox; alan: integer;
  alan2: integer);
begin
  Q.sql.text := '';
  Q.sql.Add(sql);
  Q.Open;
  Q.First;
  c.Items.Clear;
  while not Q.eof do
  begin
    c.Items.Add(trim(Q.Fields[alan].AsString) + '-' + trim
        (Q.Fields[alan2].AsString));
    Q.Next;
  end;
  Q.close;
end;



procedure ComboDoldur3(sql: string; c: TcxComboBox; alan: integer;
  alan2: integer);
var
  ado: TADOQuery;
  item : string;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;
    ado.sql.text := '';
    ado.sql.Add(sql);
    ado.Open;
    ado.First;
    c.Properties.Items.Clear;
    item := '';
    while not ado.eof do
    begin
     if alan2 > 0 then item := trim(ado.Fields[alan].AsString) + ' - ' + trim(ado.Fields[alan2].AsString)
      else item := trim(ado.Fields[alan].AsString);

      c.Properties.Items.Add(item);
      ado.Next;
    end;
    ado.close;
  finally
    ado.Free;
  end;
end;

procedure ItemsDoldurName(name: string; var c: TStrings);
var
  Q: TADOQuery;
  _sql_: string;
begin
  _sql_ :=
    'select SLT from Parametreler where SLK = ' + QuotedStr ('40') + ' and SLB = ' + QuotedStr
    (name);

  Q := TADOQuery.Create(nil);
  try
    Q.Connection := datalar.ADOConnection2;

    Q.sql.Add(_sql_);
    Q.Open;
    Q.First;
    c.Clear;
    while not Q.eof do
    begin
      c.Add(trim(Q.Fields[0].AsString));
      Q.Next;
    end;
    Q.close;
  finally
    Q.Free;
  end;
end;

procedure ItemsDoldurDoktorlar(name: string; var c: TStrings);
var
  Q: TADOQuery;
  _sql_: string;
begin
  _sql_ := 'select * from doktorlar where durum = ' + QuotedStr('Aktif');

  Q := TADOQuery.Create(nil);
  try
    Q.Connection := datalar.ADOConnection2;

    Q.sql.Add(_sql_);
    Q.Open;
    Q.First;
    c.Clear;
    while not Q.eof do
    begin
      c.Add(Q.FieldByName('kod').AsString + '-' + Q.FieldByName('ADI').AsString);
      Q.Next;
    end;
    Q.close;
  finally
    Q.Free;
  end;
end;

Function bakim(b: TADOConnection; donem: string): string;
VAR
  sql: string;
  alan, alan1: string;
  ay1: integer;
  // adoconnection1:tadoconnection1;
  kadir1: TADOCommand;
begin
  // haf�zada bir adocommand olu�turuluyor...
  kadir1 := TADOCommand.Create(kadir1);
  try
    kadir1.Connection := b;
    kadir1.ConnectionString := serverismi(donem);

    // --------
    try

      for ay1 := 1 to 12 do
      begin

        alan := 'ay' + inttostr(ay1) + 'topb';
        alan1 := 'ay' + inttostr(ay1) + 'topa';

        sql := 'update muh_hesap_plani set ' + alan +
          '= (select sum(borc) from muh_fis_hareket where hesapkodu=h.hesap_kodu'
          + ' and month(tarih)=' + inttostr(ay1) + '),' + alan1 +
          '= (select sum(alacak) from muh_fis_hareket where hesapkodu=h.hesap_kodu'
          + ' and month(tarih)=' + inttostr(ay1)
          + ')' + 'from muh_hesap_plani h';
        kadir1.CommandText := sql;

        // showmessage(sql);

        kadir1.Execute;

        sql := 'update muh_hesap_plani set  ' + alan + '=0' + ' where ' + alan +
          ' is null';
        kadir1.CommandText := sql;
        kadir1.Execute;

        sql := 'update muh_hesap_plani set  ' + alan1 + '=0' + ' where ' +
          alan1 + ' is null';
        kadir1.CommandText := sql;
        kadir1.Execute;

      end;
    except
      Result := 'H';
      Exit;
    end;
    Result := 'E';
  finally
    kadir1.Free;
  end;
end;

Function servertip(): string;
VAR
  CN: string;
begin
  CN := RegOku ('CS');
  if CN = 'ODBC' then
  begin
    Result := 'MSDASQL.1';
  end;
  if CN = 'SQL' then
  begin
    Result := 'SQLOLEDB.1';
  end;
end;

Function serverismi(Adres, katalog: string): string;
VAR
  s, s1, servername, sifre, user: string;

begin
  user := '';
  s := Adres;
  s1 := RegOku ('CS');

  user := RegOku ('dbuser');
  user := ifThen(user = '', 'Nokta', user);

  sifre := RegOku ('dbsifre');
  sifre := ifThen(sifre = '', '5353', sifre);

  if s1 = 'ODBC' then
  begin
    servername :=
      'Provider=MSDASQL.1;Persist Security Info=False;User ID=' + user +
      ';Data Source=SQL SERVER;Initial Catalog=' + katalog;
  end;

  if s1 = 'SQL' then
  begin
    servername := 'Provider=SQLOLEDB.1;Password=' + sifre +
      ';Persist Security Info=False;User ID=' + user + ';Initial Catalog=' +
      katalog + ';Data Source=' + s;
  end;

  Result := servername;
end;

Function serverismi(katalog: string): string;
VAR
  s, s1, servername, sifre: string;

begin
  s := RegOku ('OSGB_servername');
  s1 := RegOku ('CS');
  sifre := RegOku ('sifre');

  if s1 = 'ODBC' then
  begin
    servername :=
      'Provider=MSDASQL.1;Persist Security Info=False;User ID=SA;Data Source=SQL SERVER;Initial Catalog=' + katalog;
  end;

  if s1 = 'SQL' then
  begin
    servername := 'Provider=SQLOLEDB.1;Password=' + sifre +
      ';Persist Security Info=False;User ID=sa;Initial Catalog=' + katalog +
      ';Data Source=' + s;
  end;

  Result := servername;
end;

function SQL_Host(var server: string; var user: string; var password: string;
  var db: string): Boolean;
var
  sql: string;
  ado: TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    Result := False;
    ado.Connection := datalar.ADOConnection2;

    sql :=
      'select SLVV s,SLXX u ,SLYY p , SLZZ db from parametreler where SLK = ' + QuotedStr ('GA') + ' and SLB = ' + QuotedStr ('00');
    datalar.QuerySelect(ado, sql);
    if not ado.eof then
    begin
      server := ado.FieldByName('s').AsString;
      user := ado.FieldByName('u').AsString;
      password := ado.FieldByName('p').AsString;
      db := ado.FieldByName('db').AsString;
    end;
    Result := True;
  finally
    ado.Free;
  end;
end;

procedure SQL_Host_Baglan;
var
  servername, s, u, p, db: string;
begin
  if SQL_Host(s, u, p, db) = True Then
  Begin
    try
      servername := 'Provider=SQLOLEDB.1;Password=' + p +
        ';Persist Security Info=False;User ID=' + u + ';Initial Catalog=' +
        db + ';Data Source=' + s;
      datalar.ADOConnection1.ConnectionString := servername;
      datalar.ADOConnection1.Connected := True;
    except
      on e: exception do
      begin
         ShowMessage(e.Message,'','','info');
      end;
    end;
  End;
end;

Function yaz(islem: string; Tarih: Tdate; hesapkodu: string; tutarb: real;
  tutara: real; conn: string): string;
VAR
  sql: string;
  ay: string;
  ay1: integer;
  // adoconnection1:tadoconnection1;
  kadir1: TADOCommand;
begin

  try
    // haf�zada bir adocommand olu�turuluyor...
    kadir1 := TADOCommand.Create(kadir1);
    try
      kadir1.ConnectionString := conn;
      // serverismi('MUHASEBE');

      ay := copy(datetostr(Tarih), 4, 2);
      ay1 := strtoint(ay);

      if islem = '+' then
      begin

        case ay1 of
          1:
            sql :=
              'update muh_hesap_plani set ay1topb=ay1topb+ :t,ay1topa=ay1topa+ :t1  where hesap_kodu=' + QuotedStr (hesapkodu);
          2:
            sql :=
              'update muh_hesap_plani set ay2topb=ay2topb+ :t,ay2topa=ay2topa+ :t1  where hesap_kodu=' + QuotedStr (hesapkodu);
          3:
            sql :=
              'update muh_hesap_plani set ay3topb=ay3topb+ :t,ay3topa=ay3topa+ :t1  where hesap_kodu=' + QuotedStr (hesapkodu);
          4:
            sql :=
              'update muh_hesap_plani set ay4topb=ay4topb+ :t,ay4topa=ay4topa+ :t1  where hesap_kodu=' + QuotedStr (hesapkodu);
          5:
            sql :=
              'update muh_hesap_plani set ay5topb=ay5topb+ :t,ay5topa=ay5topa+ :t1  where hesap_kodu=' + QuotedStr (hesapkodu);
          6:
            sql :=
              'update muh_hesap_plani set ay6topb=ay6topb+ :t,ay6topa=ay6topa+ :t1  where hesap_kodu=' + QuotedStr (hesapkodu);
          7:
            sql :=
              'update muh_hesap_plani set ay7topb=ay7topb+ :t,ay7topa=ay7topa+ :t1  where hesap_kodu=' + QuotedStr (hesapkodu);
          8:
            sql :=
              'update muh_hesap_plani set ay8topb=ay8topb+ :t,ay8topa=ay8topa+ :t1  where hesap_kodu=' + QuotedStr (hesapkodu);
          9:
            sql :=
              'update muh_hesap_plani set ay9topb=ay9topb+ :t,ay9topa=ay9topa+ :t1  where hesap_kodu=' + QuotedStr (hesapkodu);
          10:
            sql :=
              'update muh_hesap_plani set ay10topb=ay10topb+ :t,ay10topa=ay10topa+ :t1  where hesap_kodu=' + QuotedStr (hesapkodu);
          11:
            sql :=
              'update muh_hesap_plani set ay11topb=ay11topb+ :t,ay11topa=ay11topa+ :t1  where hesap_kodu=' + QuotedStr (hesapkodu);
          12:
            sql :=
              'update muh_hesap_plani set ay12topb=ay12topb+ :t,ay12topa=ay12topa+ :t1  where hesap_kodu=' + QuotedStr (hesapkodu);
        else
          Exit;
        end;
      end;

      if islem = '-' then
      begin

        case ay1 of
          1:
            sql :=
              'update muh_hesap_plani set ay1topb=ay1topb- :t,ay1topa=ay1topa- :t1  where hesap_kodu=' + QuotedStr (hesapkodu);
          2:
            sql :=
              'update muh_hesap_plani set ay2topb=ay2topb- :t,ay2topa=ay2topa- :t1  where hesap_kodu=' + QuotedStr (hesapkodu);
          3:
            sql :=
              'update muh_hesap_plani set ay3topb=ay3topb- :t,ay3topa=ay3topa- :t1  where hesap_kodu=' + QuotedStr (hesapkodu);
          4:
            sql :=
              'update muh_hesap_plani set ay4topb=ay4topb- :t,ay4topa=ay4topa- :t1  where hesap_kodu=' + QuotedStr (hesapkodu);
          5:
            sql :=
              'update muh_hesap_plani set ay5topb=ay5topb- :t,ay5topa=ay5topa- :t1  where hesap_kodu=' + QuotedStr (hesapkodu);
          6:
            sql :=
              'update muh_hesap_plani set ay6topb=ay6topb- :t,ay6topa=ay6topa- :t1  where hesap_kodu=' + QuotedStr (hesapkodu);
          7:
            sql :=
              'update muh_hesap_plani set ay7topb=ay7topb- :t,ay7topa=ay7topa- :t1  where hesap_kodu=' + QuotedStr (hesapkodu);
          8:
            sql :=
              'update muh_hesap_plani set ay8topb=ay8topb- :t,ay8topa=ay8topa- :t1  where hesap_kodu=' + QuotedStr (hesapkodu);
          9:
            sql :=
              'update muh_hesap_plani set ay9topb=ay9topb- :t,ay9topa=ay9topa- :t1  where hesap_kodu=' + QuotedStr (hesapkodu);
          10:
            sql :=
              'update muh_hesap_plani set ay10topb=ay10topb- :t,ay10topa=ay10topa- :t1  where hesap_kodu=' + QuotedStr (hesapkodu);
          11:
            sql :=
              'update muh_hesap_plani set ay11topb=ay11topb- :t,ay11topa=ay11topa- :t1  where hesap_kodu=' + QuotedStr (hesapkodu);
          12:
            sql :=
              'update muh_hesap_plani set ay12topb=ay12topb- :t,ay12topa=ay12topa- :t1  where hesap_kodu=' + QuotedStr (hesapkodu);
        else
          Exit;
        end;
      end;

      // showmessage(sql);

      kadir1.CommandText := sql;
      kadir1.Parameters[0].DataType := ftFloat;
      kadir1.Parameters[0].Value := tutarb;
      kadir1.Parameters[1].DataType := ftFloat;
      kadir1.Parameters[1].Value := tutara;
      kadir1.Execute;
    finally
      kadir1.Free;
    end;

  except
    Result := 'H';
    Exit;
  end;
  Result := 'E';
end;

procedure Login;
var
  sql: string;
begin

  try
    sql := 'select slb,slt from parametreler where slk = ' + QuotedStr ('99');
    datalar.QuerySelect(datalar.ADO_SQL2, sql);
    _kurumKod := strtoint(datalar.ADO_SQL2.FieldByName('slb').AsString);
    _username := datalar.ADO_SQL2.FieldByName('slb').AsString;
    _sifre := datalar.ADO_SQL2.FieldByName('slt').AsString;

    (*
      sql := 'select slt from keydat where slk = ''00'' and  slb = ''INT_GSADI''';
      datalar.QuerySelect(datalar.ADO_SQL2,sql);
      _username := datalar.ADO_SQL2.fieldbyname('slt').AsString;

      sql := 'select slt from keydat where slk = ''00'' and  slb = ''INT_GSSSIF''';
      datalar.QuerySelect(datalar.ADO_SQL2,sql);
      _sifre := datalar.ADO_SQL2.fieldbyname('slt').AsString;

      *)
  except

  end;

end;

(*
  procedure TakipOku(_Takip : string;var Hasta : TTakipBilgisi);
  var
  Ts_Gon1 : TakipOkuGirisDVO;
  Ts_Cvp1 : TakipDVO;
  sql : string;
  begin


  frmAna.Login;

  Datalar.Takip.HTTPWebNode.UserName := frmAna._username;
  Datalar.Takip.HTTPWebNode.Password := frmAna._sifre;

  Ts_gon1 := TakipOkuGirisDVO.Create;
  Ts_cvp1 := TakipDVO.Create;

  Ts_gon1.saglikTesisKodu := frmAna._Kurumkod;
  Ts_Gon1.takipNo := _Takip;

  try
  Ts_Cvp1 := (Datalar.takip as ProvizyonIslemleri).takipOku(Ts_Gon1);
  except
  on E: Exception do Showmessage(E.Message,'','','info');
  end;

  if Ts_Cvp1.sonucKodu = '0000'
  then begin

  Application.CreateForm(TfrmTakipBilgisiOku, frmTakipBilgisiOku);
  GorselAyar(frmTakipBilgisiOku,frmana.global_img_list4);


  frmTakipBilgisiOku.write(Ts_Cvp1.takipNo,Ts_Cvp1.takipTarihi,Ts_Cvp1.kayitTarihi,inttostr(Ts_Cvp1.tesisKodu),Ts_Cvp1.gidecegiTesisTuru,
  inttostr(Ts_Cvp1.sevkEdenTesis) ,Ts_Cvp1.sevkEdilenBransKodu,Ts_Cvp1.sevkEdilisTarihi,Ts_Cvp1.sevkEdenDrTescil,
  Ts_Cvp1.takipDurumu,datalar.HastaYas,Ts_Cvp1.takipTuru,'');

  hasta.HastaAdi := Ts_Cvp1.hastaBilgileri.ad + Ts_Cvp1.hastaBilgileri.soyad;
  hasta.TcKimlik := Ts_Cvp1.hastaBilgileri.tcKimlikNo;
  //   datalar.Bilgi := hasta;

  frmTakipBilgisiOku.pnlTitle.Caption := trim(Ts_Cvp1.hastaBilgileri.ad) + ' ' + trim(Ts_Cvp1.hastaBilgileri.soyad)
  + '        ' + trim(Ts_Cvp1.hastaBilgileri.tcKimlikNo);

  frmTakipBilgisiOku.ShowModal;
  frmTakipBilgisiOku.Release;
  frmTakipBilgisiOku := nil;

  end
  else begin
  ShowMessageSkin(Ts_Cvp1.sonucMesaji , '' ,'' ,'info');

  end;


  end;
*)



procedure IcmalFaturaGonder(_faturaNo, _faturaTarihi: string; durum: integer);

begin

end;

function TakipFaturadami(_Takip: string): Boolean;
var
  sql: string;
  ado: TADOQuery;
begin
  if _Takip = '' Then
  begin
    Result := False;
  End
  Else
  begin
    ado := TADOQuery.Create(nil);
    try
      ado.Connection := datalar.ADOConnection2;
      sql := 'select takipNo from kurumFatura ' + ' where takipNo = ' + QuotedStr
        (_Takip) + ' and isnull(GSSFaturaTeslimNo,'''') <> ''''';
      datalar.QuerySelect(ado, sql);

      if not ado.eof Then
        Result := True
      Else
        Result := False;
    finally
      ado.Free;
    end;
  end;

end;


function secilisatirbilgisi(Grid: TAdvStringGrid; col: integer;
  col1: integer): string;
var
  x, u: integer;
  doktorkod: string;
begin
  doktorkod := '';
  for x := 1 to Grid.RowCount - 1 do
  begin
    if Grid.Cells[col, x] = 'T' then
    begin
      doktorkod := doktorkod + Grid.Cells[col1, x] + ',';
    end;
  end;
  u := Length(doktorkod);
  if copy(doktorkod, u, 1) = ',' then
    delete(doktorkod, u, 1);

  Result := doktorkod;
end;

function notsecilisatirbilgisi(Grid: TAdvStringGrid; col: integer;
  col1: integer): string;
var
  x, u: integer;
  doktorkod: string;
begin
  doktorkod := '';
  for x := 1 to Grid.RowCount - 1 do
  begin
    if Grid.Cells[col, x] <> 'T' then
    begin
      doktorkod := doktorkod + Grid.Cells[col1, x] + ',';
    end;
  end;
  u := Length(doktorkod);
  if copy(doktorkod, u, 1) = ',' then
    delete(doktorkod, u, 1);

  Result := doktorkod;
end;

function SifreDegistir (const bMevcutSifreyiKutuyaDoldur: Boolean): Boolean;
var
  ado : TadoQuery;
begin
  datalar.SifreDegistir.KullaniciAdi := DATALAR.username;
  datalar.SifreDegistir.Sifre := DATALAR.usersifre;
  DATALAR.SifreDegistir.SifreyiDoldur := bMevcutSifreyiKutuyaDoldur;
  Result := False;
  if mrYes <> ShowPopupForm('�ifre De�i�tirme',PrgSifre) then
  begin
    ShowMessageSkin('��lem iptal edildi','','','info');
    exit;
  end;

  //g�ncellemeleri yap
  ado := TADOQuery.Create(nil);
  try
    BeginTrans(DATALAR.ADOConnection2);
    try
      sql := 'update Users set password = ' + SQLValue (datalar.SifreDegistir.Sifre)
             + ', SifreDegisiklikTarihi = getdate (), Dogrulama = 1 where Kullanici = ' + SQLValue (datalar.username);
      datalar.QueryExec(ado,sql);
      sql :=
        'insert into UserPasswordHistory (TarihSaat, Kullanici, [Password]) '+
        'Select GETDATE (), ' + SQLValue (datalar.username) + ', ' + SQLValue(datalar.SifreDegistir.Sifre);
      datalar.QueryExec(ado,sql);
      Result := True;
    finally
      if Result then
      begin
        CommitTrans(DATALAR.ADOConnection2);
        ShowMessageSkin('�ifreniz De�i�tirildi','','','info');
        DATALAR.usersifre := datalar.SifreDegistir.Sifre;
      end
      else
        RollBackTrans(DATALAR.ADOConnection2);
    end;
  finally
    ado.Free;
  end
end;

function SahaSaglikGozlemSil(const GozlemID: integer): Boolean;
var
  ado : TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    Result := False;
    BeginTrans (DATALAR.ADOConnection2);
    try
      datalar.QueryExec (ado, 'delete from SahaGozlemRaporu where RaporlarID = ' + IntToStr (GozlemID));
      datalar.QueryExec (ado, 'delete from SahaGozlemRaporlari where ID = ' + IntToStr (GozlemID));
      Result := True;
    finally
      if Result then
        CommitTrans (DATALAR.ADOConnection2)
       else
        RollbackTrans (DATALAR.ADOConnection2);
    end;
  finally
    ado.Free;
  end;
end;


function ElHijyenSil(const GozlemID: integer): Boolean;
var
  ado : TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    Result := False;
    BeginTrans (DATALAR.ADOConnection2);
    try
      datalar.QueryExec (ado, 'delete from El_HijyenGozlemDetay where gozlem_id = ' + IntToStr (GozlemID));
      datalar.QueryExec (ado, 'delete from EL_HijyenGozlem where id = ' + IntToStr (GozlemID));
      Result := True;
    finally
      if Result then
        CommitTrans (DATALAR.ADOConnection2)
       else
        RollbackTrans (DATALAR.ADOConnection2);
    end;
  finally
    ado.Free;
  end;
end;


function KaliteYonetimPlanSil(const GozlemID: integer): Boolean;
var
  ado : TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    Result := False;
    BeginTrans (DATALAR.ADOConnection2);
    try
      datalar.QueryExec (ado, 'delete from KaliteYonetimPlanDetay where planid = ' + IntToStr (GozlemID));
      datalar.QueryExec (ado, 'delete from KaliteYonetimPlan where id = ' + IntToStr (GozlemID));
      Result := True;
    finally
      if Result then
        CommitTrans (DATALAR.ADOConnection2)
       else
        RollbackTrans (DATALAR.ADOConnection2);
    end;
  finally
    ado.Free;
  end;
end;


function AnketSil(const ID: integer): Boolean;
var
  ado : TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    Result := False;
    BeginTrans (DATALAR.ADOConnection2);
    try
      datalar.QueryExec (ado, 'delete from CalisanGeriBildirimAnketDetay where AnketID = ' + IntToStr (ID));
      datalar.QueryExec (ado, 'delete from CalisanGeriBildirimAnket where id = ' + IntToStr (ID));
      Result := True;
    finally
      if Result then
        CommitTrans (DATALAR.ADOConnection2)
       else
        RollbackTrans (DATALAR.ADOConnection2);
    end;
  finally
    ado.Free;
  end;
end;


function VeritabaniAlaninaFotografYukle(const sTableName, sKeyField, sImageField, sKeyValue: String): Boolean;
var
 Fo : TFileOpenDialog;
 jp : TJPEGImage;
 adox : TADOQuery;
 tmpPicture : TcxImage;
 sFileName : String;
begin
  Result := False;
  Fo := TFileOpenDialog.Create(nil);
  try
    if not fo.Execute then Exit;
    sFileName := fo.FileName;
  finally
    fo.Free;
  end;
  if not FileExists (sFileName)  then
  begin
    ShowMessageSkin('Belirtilen dosya bulunamad�', '', '', 'info');
    Exit;
  end;
  tmpPicture := TcxImage.Create (nil);
  try
    tmpPicture.Picture.LoadFromFile(sfilename);
    jp := TJpegimage.Create;
    try
      jp.Assign(tmpPicture.Picture);
      adox := TADOQuery.Create (nil);
      try
        adox.Connection := DATALAR.ADOConnection2;
        adox.SQL.Text := 'SELECT ' + sKeyField + ', ' + sImageField + ' From ' + sTableName + ' where '+sKeyField + ' = ' + sKeyValue;
        adox.Open;
        try
          if adox.RecordCount = 0 then
          begin
            ShowMessageSkin('Kay�t a��lamad�','', '', 'info');
            Exit;
          end;
          Adox.Edit;
          try
            adox.FieldByName(sImageField).Assign(jp);
            adox.Post;
            Result := True;
          except
            adox.Cancel;
            raise;
          end;
        finally
          adox.close;
        end;
      finally
        adox.Free;
      end;
    finally
      jp.Free;
    end;
  finally
    tmpPicture.free;
  end;
end;

function VeritabaniAlanindanFotografYukle(const sTableName, sKeyField, sImageField, sKeyValue: String; var aImage: TcxImage): Boolean;
var
 jp : TJPEGImage;
 adox : TADOQuery;
begin
  Result := False;
  jp := TJpegimage.Create;
  try
    adox := TADOQuery.Create (nil);
    try
      adox.Connection := DATALAR.ADOConnection2;
      adox.SQL.Text := 'SELECT ' + sKeyField + ', ' + sImageField + ' From ' + sTableName + ' where '+sKeyField + ' = ' + sKeyValue;
      adox.Open;
      try
        if adox.RecordCount = 0 then
        begin
          ShowMessageSkin('Kay�t a��lamad�','', '', 'info');
          Exit;
        end;
        jp.Assign (adox.FieldByName(sImageField));
        aImage.Picture.Assign(jp);
        Result := True;
      finally
        adox.close;
      end;
    finally
      adox.Free;
    end;
  finally
    jp.Free;
  end;
end;

function FotografGoruntule (const aPicture: TPicture) : TModalResult;
var
  aForm : TForm;
  aImage: TcxImage;
  //aCheckBox: TCheckBox;
begin
  aForm := TForm.Create (Application);
  try
    aForm.BorderStyle := bsDialog;
    aForm.FormStyle := fsNormal;
    aImage := TcxImage.Create (aForm);
    try
      aImage.Parent := aForm;
      aImage.Align := alClient;
      aImage.Picture.Assign(aPicture);
      aImage.AutoSize := True;
      aForm.AutoSize := True;
      aImage.AutoSize := False;
      aForm.AutoSize := False;
      aForm.Position := poDesktopCenter;
      Result := aForm.ShowModal;
    finally
      aImage.Free;
    end;
  finally
    aForm.Free;
  end;
end;

function CombodanSectir (const sFormCaption, sComboCaption, sItemsList: String; var iItemIndex : Integer): Boolean;
var
  aForm : TForm;
  aComboBox: TComboBox;
  aPanel : TPanel;
  aButton : TButton;
  aLabel : TLabel;
begin
  aForm := TForm.Create (Application);
  try
    aForm.BorderStyle := bsDialog;
    aForm.FormStyle := fsNormal;
    aPanel := TPanel.Create (aForm);
    try
      aPanel.Parent := aForm;
      aPanel.Height := 35;
      aPanel.Caption := ' ';
      aPanel.Top := 50;

      aButton := TButton.Create (aForm);
      aButton.Parent := aPanel;
      aButton.name := 'btnTamam';
      aButton.Caption := 'Tamam';
      aButton.Left := 10;
      aButton.Top := 5;
      aButton.Width := 75;
      aButton.Default := True;
      aButton.ModalResult := mrYes;

      aButton := TButton.Create (aForm);
      aButton.Parent := aPanel;
      aButton.name := 'btnVazgec';
      aButton.Caption := 'Vazge�';
      aButton.Left := 88;
      aButton.Top := 5;
      aButton.Width := 75;
      aButton.Cancel := True;
      aButton.ModalResult := mrCancel;


      aLabel := TLabel.Create (aForm);
      aLabel.Parent := aForm;
      aLabel.name := 'label1';
      aLabel.Caption := sComboCaption;
      aLabel.Left := 0;
      aLabel.Top := 16;
      aLabel.AutoSize := True;
      aLabel.AutoSize := False;

      aComboBox := TComboBox.Create (aForm);
      aComboBox.Parent := aForm;
      aComboBox.name := 'cb1';
      aComboBox.Left := aLabel.Left + aLabel.Width + 2;
      aComboBox.Top := 10;
      aComboBox.Width := 200;
      aComboBox.Items.Text := sItemsList;
      aComboBox.Style := csDropDownList;
      aComboBox.ItemIndex := iItemIndex;
      aLabel.FocusControl := aComboBox;
      aForm.AutoSize := True;
      aPanel.Align := alBottom;

      aForm.AutoSize := False;
      aForm.Position := poDesktopCenter;
      aForm.Caption := sFormCaption;
      aComboBox.TabOrder := 0;
      repeat
        Result := aForm.ShowModal = mrYes;
        iItemIndex := aComboBox.ItemIndex;
      until (not Result) or (iItemIndex <> -1);
    finally
      aPanel.Free;
    end;
  finally
    aForm.Free;
  end;
end;

procedure AdSoyadAyir (const pAdSoyad: String; var pAd, pSoyad : String);
var
  i :Integer;
  bBosluk : Boolean;
begin
  pSoyad := '';
  pAd := '';
  bBosluk := False;
  for i := Length (pAdSoyad) downto 1 do
  begin
    if (not bBosluk) and (pAdSoyad [i] = ' ') then
      bBosluk := True
     else
      if bBosluk then
        pAd := pAdSoyad [i] + pAd
       else
        pSoyad := pAdSoyad [i] + pSoyad;
  end;
  pAd := Trim (pAd);
  pSoyad := Trim (pSoyad);
end;

function StringKarakterSurusuTemizle (const sHamString, sTemizlenecekKarakterler: String): String;
var
  i : Integer;
begin
  Result := sHamString;
  for i := 1 to Length (sTemizlenecekKarakterler) do
    Result := StringReplace (Result, Copy (sTemizlenecekKarakterler, i, 1), '', [rfReplaceAll]);
end;

function AktarimTelefonNoTemizle (const sHamTelefon: String): String;
begin
  Result := StringKarakterSurusuTemizle (sHamTelefon, ' ().-');
end;

function AktarimUyrukDuzelt (const sHamUyruk: String): String;
begin
  Result := StringKarakterSurusuTemizle(sHamUyruk, ' .()-');
  if AnsiSameText (Result, 'TC')
    or AnsiSameText (Result, 'TR')
    or AnsiSameText (Result, 'TURKIYE')
    or AnsiSameText (Result, 'T�RK�YE')
    or AnsiSameText (Result, 'TURKIYECUMHURIYETI')
    or AnsiSameText (Result, 'T�RK�YECUMHUR�YET�') then Result := 'TR';
end;

function DBGridDialog (const pCaption: String; const aDataset: TDataset; aButtons : TMsgDlgButtons; aDefaultButton : TMsgDlgBtn) : TModalResult;
var
  aForm : TForm;
  aDataSource: TDataSource;
  aPanel : TPanel;
  aButton : TButton;
  iButton, iTopPos : Integer;
begin
  aForm := TForm.Create (Application);
  try
    aForm.BorderStyle := bsSizeToolWin;
    aForm.FormStyle := fsNormal;
    aPanel := TPanel.Create (aForm);
    try
      aPanel.Parent := aForm;
      aPanel.Height := 35;
      aPanel.Caption := ' ';
      aPanel.Top := 50;

      if mbYes in aButtons then
      begin
        aButton := TButton.Create (aForm);
        aButton.Parent := aPanel;
        aButton.name := 'btnEvet';
        aButton.Caption := 'Evet';
        aButton.Top := 5;
        aButton.Width := 75;
        aButton.Default := aDefaultButton = mbYes;
        aButton.ModalResult := mrYes;
      end;

      if mbNo in aButtons then
      begin
        aButton := TButton.Create (aForm);
        aButton.Parent := aPanel;
        aButton.name := 'btnHayir';
        aButton.Caption := 'Hay�r';
        aButton.Top := 5;
        aButton.Width := 75;
        aButton.Default := aDefaultButton = mbNo;
        aButton.ModalResult := mrCancel;
      end;

      if mbCancel in aButtons then
      begin
        aButton := TButton.Create (aForm);
        aButton.Parent := aPanel;
        aButton.name := 'btnVazgec';
        aButton.Caption := 'Vazge�';
        aButton.Top := 5;
        aButton.Width := 75;
        aButton.Cancel := True;
        aButton.Default := aDefaultButton = mbCancel;
        aButton.ModalResult := mrCancel;
      end;

      if mbOk in aButtons then
      begin
        aButton := TButton.Create (aForm);
        aButton.Parent := aPanel;
        aButton.name := 'btnTamam';
        aButton.Caption := 'Tamam';
        aButton.Top := 5;
        aButton.Width := 75;
        aButton.Default := aDefaultButton = mbOk;
        aButton.ModalResult := mrOK;
      end;

      iTopPos := 10;
      for iButton := 0 to aPanel.ControlCount - 1 do
      begin
        TButton (aPanel.Controls [iButton]).Left := iTopPos;
        iTopPos := iTopPos + TButton (aPanel.Controls [iButton]).Width + 5;
        TButton (aPanel.Controls [iButton]).TabOrder := iButton;
      end;
      aDataSource := TDataSource.Create (aForm);
      aDataSource.DataSet := aDataset;
      with TDBGrid.Create (aForm) do
      begin
        Parent := aForm;
        Align := alClient;
        DataSource := aDataSource;
        TabOrder := 0;
        for iButton := 0 to Columns.Count - 1 do
          if Columns [iButton].Width > 200 then
            Columns [iButton].Width := 200;

      end;

      aForm.AutoSize := True;
      aPanel.Align := alBottom;

      aForm.AutoSize := False;
      aForm.Position := poDesktopCenter;
      aForm.Caption := pCaption;
      Result := aForm.ShowModal;
      aDataset.First;
    finally
      aPanel.Free;
    end;
  finally
    aForm.Free;
  end;
end;

function GetUserDoktorFilter (pFieldName : String = ''): String;
begin
  //y�netici ise ya da datalar.doktorkodu bo� ise filtre koyma. y�netici de�il ama doktor ise koy
  if IsNull (pFieldName) then pFieldName := 'Kod';
  if (datalar.UserGroup = '1') or IsNull (DATALAR.doktorKodu) then
    Result := ''
   else
    Result := pFieldName + ' = '+ QuotedStr(DATALAR.doktorKodu);
end;

function GetUserIGUFilter (pFieldName : String = ''): String;
begin
  //y�netici ise ya da datalar.IGU bo� ise filtre koyma. y�netici de�il ama i� g�v. uz. ise koy
  if IsNull (pFieldName) then pFieldName := 'Kod';
  if (datalar.UserGroup = '1') or IsNull (DATALAR.IGU) then
    Result := ''
   else
    Result := pFieldName + ' = '+ QuotedStr(DATALAR.IGU);
end;

function GetUserDSPFilter (pFieldName : String = ''): String;
begin
  //y�netici ise ya da datalar.DSPers bo� ise filtre koyma. y�netici de�il ama i� g�v. uz. ise koy
  if IsNull (pFieldName) then pFieldName := 'Kod';
  if (datalar.UserGroup = '1') or IsNull (DATALAR.DSPers) then
    Result := ''
   else
    Result := pFieldName + ' = '+ QuotedStr(DATALAR.DSPers);
end;

function HakikiAktifSube: String;
begin
  Result := ifThen(IsNull (datalar.AktifSube),'',ifThen(pos(',',datalar.AktifSube) > 0,'',datalar.AktifSube));
end;

function PersonelTopluPasifYap (const bPasif : boolean; const pSirketKod, pSubeKod : String) : Boolean;
var
  List: TListeAc;
  aQuery : TADOQuery;
  iThermo, i : Integer;
begin
  Result := False;
  if IsNull (pSirketKod) then Exit;
  //se�ilen kaynak �irketin �ubeleri
  //o �irket d���ndaki ve �ubesi olan �irketler
  List :=
    ListeAcCreate
      ('PersonelKart',
       'DosyaNo,HASTAADI,HASTASOYADI,TCKIMLIKNO,Aktif',
       'DosyaNo,Ad�,Soyad�,TCKimlik No,Aktif',
       '50,150,150,100,20',
       'PersonelList',
       '�ubenin Personel Se�imi',
       'SirketKod = ' + SQLValue (pSirketKod)+
       ' and Sube = ' + SQLValue (pSubeKod)+
       ' and IsNull (Aktif, -1) <> ' + IfThen (bPasif, '0', '1'),3,True);
  try
    datalar.ButtonEditSecimlist := List.ListeGetir;
    if length (datalar.ButtonEditSecimlist) <= 0 then Exit;
    aQuery := TADOQuery.Create (nil);
    try
      aQuery.Connection := DATALAR.ADOConnection2;
      ShowThermo (iThermo, 'Personel kartlar� '+IfThen (bPasif, 'PAS�F', 'AKT�F')+' hale getiriliyor', 0, High (datalar.ButtonEditSecimlist) + 1, 0, True);
      try
        BeginTrans(DATALAR.ADOConnection2);
        try
          for i := 0 to High (datalar.ButtonEditSecimlist) do
          begin
            if not UpdateThermo (i, iThermo, 'Dosya No: ' + DATALAR.ButtonEditSecimlist [i].kolon1) then Exit;
            aQuery.SQL.Text := 'Update PersonelKart set Aktif = '+IfThen (bPasif, '0', '1')+' where DosyaNo = ' + SQLValue (DATALAR.ButtonEditSecimlist [i].kolon1);
            aQuery.ExecSQL;
          end;
          Result := True;
        finally
          if Result then
          begin
            CommitTrans(DATALAR.ADOConnection2);
            ShowMessageSkin('Personel G�ncelleme ��lemi �st�n Ba�ar� �le Tamamland�', '', '', 'info');
          end
           else
            RollBackTrans (DATALAR.ADOConnection2);
        end;
      finally
        FreeThermo(iThermo);
      end;
    finally
      aQuery.Free;
    end;
  finally
    List.Free;
  end;
end;

procedure KademeliStoredProcCalistir (const pSPName : String; const pParameters : String);
var
  //starring in order of appearance of Type, then appearance :)
  bTmp, bTmpPost : Boolean;
  aQuery, bQuery : TADOQuery;
  iThermo : Integer;
  sHataUyariMesaji : String;
begin
  if IsNull (pSPName) then Exit;
  bTmp := False;
  bTmpPost := False;
  aQuery := TADOQuery.Create (nil);
  try
    aQuery.Connection := DATALAR.ADOConnection2;
    bQuery := TADOQuery.Create(nil);
    try
      bQuery.Connection := aQuery.Connection;
      BeginTrans (datalar.ADOConnection2);
      try
        aQuery.SQL.Text := 'exec '+ pSPName +' 0 ' + pParameters;
        aQuery.Open;
        try
          ShowThermo(iThermo, 'Aktar�m sonras� g�ncellemeler yap�l�yor', 0, aQuery.RecordCount, 0, True);
          try
            while not aQuery.Eof do
            begin
              if not UpdateThermo (aQuery.RecNo - 1, iThermo, aQuery.FieldByName ('Aciklama').AsString) then Exit;
              bQuery.SQL.Text := 'exec '+ pSPName +' ' + IntToStr (aQuery.FieldByName ('iTip').AsInteger) + ' ' + pParameters;
              if aQuery.FieldByName ('Rowset').AsBoolean then
              begin
                bQuery.Open;
                if aQuery.FieldByName ('RowsetEditInput').AsBoolean then
                begin
                  if bQuery.RecordCount > 0 then
                  begin
                    if DBGridDialog (aQuery.FieldByName ('HataMesaji').AsString, bQuery, [mbOk], mbOk) <> mrOk Then Exit;
                  end;
                end
                else
                if aQuery.FieldByName ('RowsetHata').AsBoolean then
                  if bQuery.RecordCount > 0 then
                  begin
                    bTmpPost := True;
                    sHataUyariMesaji:= aQuery.FieldByName ('HataMesaji').AsString;
                    Exit;
                  end;
              end
              else begin
                bQuery.ExecSQL;
              end;
              aQuery.Next;
            end;
          finally
            FreeThermo(iThermo);
          end;
        finally
          aQuery.Close;
        end;
        bTmp := True;
      finally
        if bTmp then
        begin
          CommitTrans (datalar.ADOConnection2);
          showmessageSkin ('��lem ba�ar� ile tamamland�', '', '', 'info');
        end
        else begin
          RollbackTrans (datalar.ADOConnection2);
          showmessageSkin ('��lemler s�ras�nda bir hata olu�tu ve g�rev tamamlanamad�', '', '', 'info');
          if bTmpPost then
            DBGridDialog (sHataUyariMesaji, bQuery, [mbOk], mbOk);
        end;
      end;
    finally
      bQuery.Free;
    end;
  finally
    aQuery.Free;
  end;
end;

function SifreGecerliMi (const sSifre: String; const pMinKarakter, pMinHarf, pMinKucukHarf, pMinBuyukHarf, pMinRakam : Integer; pMsgGostrt : Boolean = True) : Boolean;
var
  i, iKarakter, iHarf, iKucukHarf, iBuyukHarf, iRakam : Integer;
  sMessage : String;
  bTmp : Boolean;
begin
  Result := True;
  iKarakter := 0;
  iHarf := 0;
  iKucukHarf := 0;
  iBuyukHarf := 0;
  iRakam := 0;
  for i := 1 to Length (sSifre) do
  begin
    case sSifre [i] of
      'a'..'z' : begin
        Inc (iKucukHarf);
        Inc (iHarf);
      end;
      'A'..'Z' : begin
        Inc (iBuyukHarf);
        Inc (iHarf);
      end;
      '0'..'9' : begin
        Inc (iRakam);
      end;
    end;
    Inc (iKarakteR);
  end;
  sMessage := '';
  try
    if pMinKarakter > 0 then
    begin
      bTmp := (iKarakter >= pMinKarakter);
      Result := Result and bTmp;
      if not bTmp then
      begin
        sMessage := sMessage + 'en az ' + IntToStr (pMinKarakter) + ' karakterden, ';
      end;
    end;
    if pMinHarf > 0 then
    begin
      bTmp := (iHarf >= pMinHarf);
      Result := Result and bTmp;
      if not bTmp then
      begin
        sMessage := sMessage + 'en az ' + IntToStr (pMinHarf) + ' harften, ';
      end;
    end;
    if pMinKucukHarf > 0 then
    begin
      bTmp := (iKucukHarf >= pMinKucukHarf);
      Result := Result and bTmp;
      if not bTmp then
      begin
        sMessage := sMessage + 'en az ' + IntToStr (pMinKucukHarf) + ' k���k harften, ';
      end;
    end;
    if pMinBuyukHarf > 0 then
    begin
      bTmp := (iBuyukHarf >= pMinBuyukHarf);
      Result := Result and bTmp;
      if not bTmp then
      begin
        sMessage := sMessage + 'en az ' + IntToStr (pMinBuyukHarf) + ' b�y�k harften, ';
      end;
    end;
    if pMinRakam > 0 then
    begin
      bTmp := (iRakam >= pMinRakam);
      Result := Result and bTmp;
      if not bTmp then
      begin
        sMessage := sMessage + 'en az ' + IntToStr (pMinRakam) + ' rakamdan, ';
      end;
    end;
  finally
    if not Result then
    begin
      Delete (sMessage, Length (sMessage) - 1, 2);
      if pMsgGostrt then
      begin
        ShowmessageSkin ('�ifre, '+ sMessage + ' olu�mal�d�r', '', '', 'info');
      end;
    end;
  end;
end;

function SonYayinlananGuncellemeNumarasi : Integer;
var
  sTmp : String;
begin
  //Result := 0;
  //FTP sunucudaki text dosyay� oku
 (*
  with TIdHTTP.Create (nil) do
  try
    AllowCookies := True;
    ProxyParams.BasicAuthentication := False;
    ProxyParams.ProxyPort := 0;
    Request.ContentLength := -1;
    Request.ContentRangeEnd := -1;
    Request.ContentRangeStart := -1;
    Request.ContentRangeInstanceLength := -1;
    Request.ContentType := 'text/html';
    Request.Accept := 'text/html, */*';
    Request.BasicAuthentication := False;
    Request.UserAgent := 'Mozilla/3.0 (compatible; Indy Library)';
    Request.Ranges.Units := 'bytes';
    HTTPOptions := [hoForceEncodeParams];
    ConnectTimeout := 10000;
    sTmp := Get('http://www.noktayazilim.net/OSGBupdate.txt');
  //  sTmp := '27932';
    //ltrim (rtrim (ilk sat�r)) yap
    with TStringList.Create do
    try
      Text := sTmp;
      sTmp := Trim (Strings [0]);
    finally
      Free;
    end;
    Result := StrToIntDef (sTmp, 0);
  finally
    Free;
  end;
  *)
  try
   Download('https://www.noktayazilim.net/Diyaliz_Klinik2019/Klinik2019Update.txt','mavinokta','nokta53Nokta','C:\NoktaV3\Klinik2019Update.txt');
   sTmp := FileToString('C:\NoktaV3\Klinik2019Update.txt');
   Result := strToint(sTmp);
  except
    Result := 0;
  end;

end;

function GuncellemeTakipScriptPush: Boolean;

  procedure NewLine (var aQuery : TADOQuery; var iLineNum: Integer; const pSQLCmd, pAciklama, pGTSTarihSaat : String);
  begin
    aQuery.Append;
    iLineNum := iLineNum + 1;
    aQuery.FieldByName('ID').AsInteger := iLineNum;
    aQuery.FieldByName('REV').AsInteger := iLineNum;
    aQuery.FieldByName('TARIH').AsString := FormatDateTime ('yyyymmdd', Date);
    aQuery.FieldByName('VER').Clear;
    aQuery.FieldByName('SQL_CMD').AsString := pSQLCmd;
    aQuery.FieldByName('MODUL').AsString := 'O';
    aQuery.FieldByName('TIPI').AsString := 'C';
    aQuery.FieldByName('ACIKLAMA').AsString := pAciklama;
    if IsNull (pGTSTarihSaat) then
      aQuery.FieldByName('GTSTarihSaat').Clear
     else
      aQuery.FieldByName('GTSTarihSaat').AsString := pGTSTarihSaat;
    aQuery.Post;
  end;

const
  cSunucuAdi='37.230.108.244';
  cKullaniciAdi='MaviNokta';
  cSifre='Guneysu53Rize';
  cVeritabani='mavi';
var
  aQuery, bQuery : TADOQuery;
  aConnection: TADOConnection;
  iThermo, iBaseID, iPublishedBaseID, iRow : Integer;
  aTableList : TStringList;
  sIdentityInsertTable, sIdentityInsertTableOld : String;
  bPublish : Boolean;
begin
  Result := False;
  //�� 20180522 trigger ile olu�an guncelleme takip script tablo datas�n� update pakedi olarak otomatik push eden mekanizma...
  //Tek seferde �al���rsa ak�ama tatl� �smarlayaca��m kendime :)
  aConnection := TADOConnection.Create (nil);
  try
    aQuery := TADOQuery.Create (nil);
    try
      bQuery := TADOQuery.Create (nil);
      try
        aTableList := TStringList.Create;
        try
          bQuery.Connection := DATALAR.ADOConnection2;
          bQuery.SQL.Text :=
            'select TableName'#13#10+
            'from GuncellemeTakipScript'#13#10+
            'where Islendi = 0 or Islendi is null'#13#10+
            'group by TableName'#13#10+
            'order by TableName';
          bQuery.Open;
          try
            while not bQuery.Eof do
            begin
              aTableList.Add(bQuery.FieldByName('TableName').AsString);
              bQuery.Next;
            end;
          finally
            bQuery.Close;
          end;
          //�� 20180523 hi� kay�t yoksa ba�ar�l�ym�� gibi �ek panpa
          if aTableList.Count <= 0 then
          begin
            Result := True;
            Exit;
          end;

          bQuery.SQL.Text :=
            'select DB_NAME () DBName, *'#13#10+
            'from GuncellemeTakipScript'#13#10+
            'where Islendi = 0 or Islendi is null'#13#10+
            'order by id';
          bQuery.Open;
          try
            aConnection.CommandTimeout := 0;
            aConnection.ConnectionTimeout := 10;
            aConnection.LoginPrompt := False;
            aConnection.Provider := 'SQLOLEDB.1';
            aConnection.Connected := false;
            aConnection.ConnectionString :=
              'Provider=SQLOLEDB.1;'+
              'Password='+cSifre+';'+
              'Persist Security Info=True;'+
              'User ID='+cKullaniciAdi+';'+
              'Initial Catalog=' + cVeritabani +';'+
              'Data Source='+cSunucuAdi+';'+
              'Application Name=' + Datalar.UygulamaBaglantiTanimi;
            aConnection.Connected := True;

            aQuery.Connection := aConnection;

            ShowThermo(iThermo, 'Kay�tlar Yaz�l�yor', 0, bQuery.RecordCount + (aTableList.Count * 2), 0, False);
            try
              BeginTrans(DATALAR.ADOConnection2);
              try
                BeginTrans(aConnection);
                try
                  //ayn� anda insert olmas�n ve deadlock'a d��mesin diye tablockx modunda transaction i�inde a�t�k
                  aQuery.SQL.Text := 'select top 1 ID, REV, TARIH, VER, SQL_CMD, MODUL, TIPI, ACIKLAMA, GTSTarihSaat from UPDATE_CMD_OSGB with (tablockx) order by ID desc';
                  aQuery.Open;
                  try
                    //�� 20180525 ftp okumay� transaction ve tablo okuma alt�na koyduk ki kilidi bekleyip �nceki exe'nin i�lemleri bitip s�ra geldikten sonra okusun
                    if not aQuery.Eof then
                      iBaseID := aQuery.FieldByName('ID').AsInteger
                     else
                      iBaseID := 0;
                    //FTP sunucudaki text dosyay� oku
                    iPublishedBaseID := SonYayinlananGuncellemeNumarasi;
                    bPublish := iPublishedBaseID = iBaseID;
                    for iRow := 0 to aTableList.Count - 1 do
                    begin
                      if not UpdateThermo (iRow, iThermo, 'Sat�r: ' + IntToStr (iRow + 1) + ' / '+IntToStr (bQuery.RecordCount + (aTableList.Count * 2))) then Exit;
                      NewLine (aQuery, iBaseID,
                        'Alter table ' + aTableList [iRow] + ' disable trigger ' + aTableList [iRow] + '_TakipTrg',
                        'GTS (disable trigger ' + aTableList [iRow] + ')',
                        '');
                    end;
                    sIdentityInsertTableOld := '';
                    while not bQuery.Eof do
                    begin
                      if not UpdateThermo (bQuery.RecNo - 1 + aTableList.Count, iThermo, 'Sat�r: ' + IntToStr (bQuery.RecNo + aTableList.Count) + ' / '+IntToStr (bQuery.RecordCount + (aTableList.Count * 2))) then Exit;
                      if bQuery.FieldByName ('IdentityInsert').AsBoolean then
                        sIdentityInsertTable := bQuery.FieldByName ('TableName').AsString
                       else
                        sIdentityInsertTable := '';

                      if (not Isnull (sIdentityInsertTableOld))
                        and (not SameText (sIdentityInsertTable, sIdentityInsertTableOld)) then
                        NewLine (aQuery, iBaseID,
                          'SET IDENTITY_INSERT ' + sIdentityInsertTableOld + ' OFF',
                          'GTS (disable identity_insert ' + sIdentityInsertTableOld + ')',
                          '');

                      if (not Isnull (sIdentityInsertTable))
                        and (not SameText (sIdentityInsertTable, sIdentityInsertTableOld)) then
                        NewLine (aQuery, iBaseID,
                          'SET IDENTITY_INSERT ' + sIdentityInsertTable + ' ON',
                          'GTS (enable identity_insert ' + sIdentityInsertTable + ')',
                          '');

                      NewLine (aQuery, iBaseID,
                        bQuery.FieldByName('Script').AsString,
                        'GTS '+
                          bQuery.FieldByName('DBName').AsString +
                          '.dbo.'+
                          bQuery.FieldByName('TableName').AsString+
                          ' ('+
                          bQuery.FieldByName('KeyFields').AsString+
                          ') V ('+
                          bQuery.FieldByName('KeyValues').AsString+
                          ')',
                        bQuery.FieldByName('LogTime').AsString);
                      bQuery.Edit;
                      bQuery.FieldByName('Islendi').AsBoolean := True;
                      bQuery.Post;
                      sIdentityInsertTableOld := sIdentityInsertTable;
                      bQuery.Next;
                    end;

                    if (not Isnull (sIdentityInsertTableOld)) then
                      NewLine (aQuery, iBaseID,
                        'SET IDENTITY_INSERT ' + sIdentityInsertTableOld + ' OFF',
                        'GTS (disable identity_insert ' + sIdentityInsertTableOld + ')',
                        '');

                    for iRow := 0 to aTableList.Count - 1 do
                    begin
                      if not UpdateThermo (aTableList.Count + bQuery.RecordCount + iRow, iThermo, 'Sat�r: ' + IntToStr (aTableList.Count + bQuery.RecordCount + iRow + 1) + ' / '+IntToStr (bQuery.RecordCount + (aTableList.Count * 2))) then Exit;
                      NewLine (aQuery, iBaseID,
                        'Alter table ' + aTableList [iRow] + ' enable trigger ' + aTableList [iRow] + '_TakipTrg',
                        'GTS (enable trigger ' + aTableList [iRow] + ')',
                        '');
                    end;
                    //FTP'deki text dosyay� g�ncelle
                    if bPublish then
                    begin
                      with TIdFTP.Create do
                      try
                        IPVersion := Id_IPv4;
                        Host := 'ftp.noktayazilim.net';
                        Passive := True;
                        Password := '53Noktanokta';
                        Username := 'mavinokta';
                        NATKeepAlive.UseKeepAlive := False;
                        NATKeepAlive.IdleTimeMS := 0;
                        NATKeepAlive.IntervalMS := 0;
                        ProxySettings.ProxyType := fpcmNone;
                        ProxySettings.Port := 0;
                        ReadTimeout := 0;
                        aTableList.Text := IntToStr (iBaseID);
                        sIdentityInsertTableOld := ChangeFileExt(ParamStr(0), FormatDateTime('_yyyymmdd_hhnnss_zzz', now) + '.upd');
                        aTableList.SaveToFile(sIdentityInsertTableOld);
                        try
                          Connect();
                          try
                            Put(sIdentityInsertTableOld,'/httpdocs/OSGBupdate.txt',false);
                          finally
                            for iRow := 0 to 300 do
                            begin
                              Sleep (10);
                              Application.ProcessMessages;
                            end;
                            Disconnect;
                          end;
                        finally
                          for iRow := 0 to 300 do
                          begin
                            Sleep (10);
                            Application.ProcessMessages;
                          end;
                          DeleteFile(sIdentityInsertTableOld);
                        end;
                      finally
                        Free;
                      end;
                    end;
                    Result := True;
                  finally
                    aQuery.Close;
                  end;
                finally
                  if Result then
                    CommitTrans(aConnection)
                   else
                    RollBackTrans(aConnection);
                end;
              finally
                if Result then
                  CommitTrans(DATALAR.ADOConnection2)
                 else
                  RollBackTrans (DATALAR.ADOConnection2);
              end;
            finally
              FreeThermo (iThermo);
            end;
          finally
            bQuery.Close;
          end;
        finally
          aTableList.Free;
        end;
      finally
        bQuery.Free;
      end;
    finally
      aQuery.Free;
    end;
  finally
    aConnection.Free;
  end;
end;

procedure YeniOSGBFirmaVeritabani;
var
  bTamam, bKontrolGecti : Boolean;
  aValues : array of String;
  i, iThermo : Integer;
  sOsgbKod, sOSGBTanimi, sMerkezBilgisiTanimi,
  sYeniVeritabani, sKaynakVeritabani, sGeciciYedekDosya,
  sDBPath, sLogicalDBName, sLogicalLogName : String;
  aQuery : TADOQuery;
begin
  SetLength (aValues, 7);
  aValues [5] := 'C:\OSGB\OSGB_UZMAN_20171030.BAK';
  aValues [4] := 'OSGB_DEMO';
  aValues [6] := 'C:\OSGB\';
  repeat
    bTamam :=
      InputQuery (
        'Yeni OSGB Veritaban� A�',
        ['OSGB Kodu',
         'Yeni Veritaban� Ad�',
         'OSGB Tan�m�',
         'Merkez Bilgisi Tan�m�',
         'Kaynak Veritaban�',
         'Ge�ici Yedek Dosya',
         'SQL Sunucusu Fiziki Veritaban� Yolu'],
        aValues);
    if not bTamam then Exit;
    bKontrolGecti := False;
    iThermo := StrToIntDef (aValues [0], -1);
    sYeniVeritabani := Trim (aValues [1]);
    sOSGBTanimi := Trim (aValues [2]);
    sMerkezBilgisiTanimi := Trim (aValues [3]);
    sKaynakVeritabani := Trim (aValues [4]);
    sGeciciYedekDosya := Trim (aValues [5]);
    sDBPath := Trim (aValues [6]);
    if not IsNull (sDBPath) and (Copy (sDBPath, Length (sDBPath), 1) <> '\') then
      sDBPath := sDBPath + '\';

    if iThermo <= 0 then
    begin
      ShowMessageSkin('Ge�ersiz OSGB Kodu : ' + aValues [0] + #13#10+'OSGB Kodu 1''den b�y�k bir say�sal de�er olmal�d�r', '', '', 'info');
      Continue;
    end;

    sOsgbKod := FormatFloat('0000', iThermo);
    aValues [0] := sOsgbKod;
    aQuery := TADOQuery.Create (nil);
    try
      aQuery.Connection := DATALAR.ADOConnection2;
      aQuery.SQL.Text := 'Select 1 from OSGB_MASTER.dbo.OSGB_TNM where OSGB_KOD = ' + SQLvalue (sOsgbKod);
      aQuery.Open;
      try
        if aQuery.RecordCount > 0 then
        begin
          ShowMessageSkin('OSGB Kodu daha �nce kullan�lm��: ' + sOSGBKod, '', '', 'info');
          Continue;
        end;
      finally
        aQuery.Close;
      end;

      if IsNull (sYeniVeritabani) then
      begin
        ShowMessageSkin('Hedef yeni veritaban� ismi bo� olamaz !', '', '', 'info');
        Continue;
      end;

      if IsNull (sKaynakVeritabani) then
      begin
        ShowMessageSkin('Kaynak veritaban� ismi bo� olamaz !', '', '', 'info');
        Continue;
      end;

      aQuery.SQL.Text := 'select name from master.dbo.sysdatabases where name = ' + SQLvalue (sYeniVeritabani);
      aQuery.Open;
      try
        if aQuery.RecordCount > 0 then
        begin
          ShowMessageSkin('Hedef olarak se�ilen yeni veritaban� sistemde mevcut: ' + sYeniVeritabani, '', '', 'info');
          Continue;
        end;
      finally
        aQuery.Close;
      end;

      aQuery.SQL.Text := 'Select OSGB_KOD, tanimi from OSGB_MASTER.dbo.OSGB_TNM where db = ' + SQLvalue (sYeniVeritabani);
      aQuery.Open;
      try
        if aQuery.RecordCount > 0 then
        begin
          ShowMessageSkin('Se�ilen veritaban� ba�ka bir OSGB tan�m�nda daha �nce kullan�lm��: ' +
            sYeniVeritabani + ' ("' + aQuery.fieldbyname ('OSGB_KOD').AsString + '", "' + aQuery.fieldbyname ('tanimi').AsString + '")', '', '', 'info');
          Continue;
        end;
      finally
        aQuery.Close;
      end;

      aQuery.SQL.Text := 'select name from master.dbo.sysdatabases where name = ' + SQLvalue (sKaynakVeritabani);
      aQuery.Open;
      try
        if aQuery.RecordCount <= 0 then
        begin
          ShowMessageSkin('Kaynak olarak se�ilen yeni veritaban� sistemde mevcut de�il: ' + sYeniVeritabani, '', '', 'info');
          Continue;
        end;
      finally
        aQuery.Close;
      end;

      if IsNull (sOSGBTanimi) then
      begin
        ShowMessageSkin('OSGB Tan�m� bo� olamaz !', '', '', 'info');
        Continue;
      end;

      if IsNull (sMerkezBilgisiTanimi) then
      begin
        ShowMessageSkin('Merkez Bilgisi Tan�m� bo� olamaz !', '', '', 'info');
        Continue;
      end;

      bKontrolGecti := True;

    finally
      aQuery.Free;
    end;
  until (not bTamam) or (bKontrolGecti);

  bTamam := False;

  aQuery := TADOQuery.Create (nil);
  try
    aQuery.Connection := DATALAR.ADOConnection2;
    ShowThermo(iThermo, 'Yeni Veritaban� Olu�turuluyor...', 0, 34, 0, True);
    try
      if not UpdateThermo (0, iThermo, 'Kaynak Veritaban� Yedekleniyor') then Exit;

      aQuery.SQL.Text :=
        'BACKUP DATABASE '+ sKaynakVeritabani + #13#10 +
        'TO DISK = ' + sqlvalue (sGeciciYedekDosya) + #13#10 +
        'wIth INIT';

      aQuery.ExecSQL;

      if not UpdateThermo (1, iThermo, 'Yedek Dosya Bilgileri Toplan�yor') then Exit;

      aQuery.SQL.Text :=
        'RESTORE FILELISTONLY'#13#10 +
        'FROM DISK = '+ sqlvalue (sGeciciYedekDosya);

      sLogicalDBName := '';
      sLogicalLogName := '';
      aQuery.Open;
      try
        while not aQuery.eof do
        begin
          if SameText (aQuery.FieldByName ('Type').AsString, 'D') then
            sLogicalDBName := aQuery.FieldByName ('LogicalName').AsString
          else if SameText (aQuery.FieldByName ('Type').AsString, 'L') then
            sLogicalLogName := aQuery.FieldByName ('LogicalName').AsString;
          aQuery.Next;
        end;
      finally
        aQuery.Close;
      end;

      if not UpdateThermo (2, iThermo, 'Yedekten Hedef Veritaban� olu�turuluyor') then Exit;

      aQuery.SQL.Text :=
        'RESTORE database ' + sYeniVeritabani + ''#13#10 +
        'FROM DISK = ' + sqlValue (sGeciciYedekDosya) + ''#13#10 +
        'with recovery,'#13#10 +
        '  move ' + sqlvalue (sLogicalDBName) + ' TO ' + sqlvalue (sDBPath + sYeniVeritabani + '_Data.mdf') +','#13#10 +
        '  move ' + sqlvalue (sLogicalLogName) + ' TO ' + sqlvalue (sDBPath + sYeniVeritabani +'_Log.ldf') + '';

      aQuery.ExecSQL;

      try
        for i := 1 to 20 do
        begin
          if not UpdateThermo (2 + i, iThermo, 'Sisteme Nefes Ald�r�l�yor (' + FormatFloat ('00', i) + '/20)') then Exit;
          Sleep (1000);
        end;

        if not UpdateThermo (23, iThermo, 'Veritaban� Ayarlamalar� yap�l�yor (1/2)') then Exit;

        aQuery.SQL.Text :=
          'ALTER DATABASE ' + sYeniVeritabani + ' MODIFY FILE ( NAME = ' + sLogicalDBName + ', NEWNAME = ' + sYeniVeritabani + '_Data )';
        aQuery.ExecSQL;

        if not UpdateThermo (24, iThermo, 'Veritaban� Ayarlamalar� yap�l�yor (2/2)') then Exit;

        aQuery.SQL.Text :=
          'ALTER DATABASE ' + sYeniVeritabani + ' MODIFY FILE ( NAME = ' + sLogicalLogName + ', NEWNAME = ' + sYeniVeritabani + '_Log )';
        aQuery.ExecSQL;

        BeginTrans (DATALAR.ADOConnection2);
        try
          if not UpdateThermo (25, iThermo, 'Merkez Bilgisi Tablosu bo�alt�l�yor') then Exit;

          aQuery.SQL.Text :=
            'delete T from '+sYeniVeritabani+'.dbo.merkezBilgisi T';
          aQuery.ExecSQL;

          if not UpdateThermo (26, iThermo, 'OSGB Tan�m Bilgisi Ekleniyor') then Exit;

          aQuery.SQL.Text :=
            'insert into OSGB_MASTER.dbo.OSGB_TNM (OSGB_KOD, tanimi, db, server, Aktif) SELECT ' + sqlValue (sOsgbKod) + ', ' + sqlValue (sOSGBTanimi) + ', ' + sqlValue (sYeniVeritabani) + ', ' + sqlValue ('.') + ', null';
          aQuery.ExecSQL;

          if not UpdateThermo (27, iThermo, 'Merkez Bilgisi kayd� yaz�l�yor') then Exit;

          aQuery.SQL.Text :=
            'insert into '+sYeniVeritabani+'.dbo.MerkezBilgisi (MerkezAdi, MerkezKodu, MerkezTipi) SELECT ' + sqlValue (sMerkezBilgisiTanimi) + ', ' + sqlValue (sOsgbKod) + ', 1';
          aQuery.ExecSQL;

          if not UpdateThermo (28, iThermo, 'LoginLog tablosu siliniyor') then Exit;

          aQuery.SQL.Text :=
            'delete from '+sYeniVeritabani+'.dbo.LoginLog';
          aQuery.ExecSQL;

          if not UpdateThermo (29, iThermo, 'Users_Log tablosu siliniyor') then Exit;

          aQuery.SQL.Text :=
            'delete from '+sYeniVeritabani+'.dbo.Users_Log';
          aQuery.ExecSQL;

          if not UpdateThermo (30, iThermo, 'MerkezBilgisi_Log tablosu siliniyor') then Exit;

          aQuery.SQL.Text :=
            'delete from '+sYeniVeritabani+'.dbo.MerkezBilgisi_Log';
          aQuery.ExecSQL;

          if not UpdateThermo (31, iThermo, 'UserPasswordHistory tablosu siliniyor') then Exit;

          aQuery.SQL.Text :=
            'delete from '+sYeniVeritabani+'.dbo.UserPasswordHistory';
          aQuery.ExecSQL;

          if not UpdateThermo (32, iThermo, 'admin kullan�c�s� �ifresi ilk kullan�m i�in haz�rlan�yor') then Exit;

          aQuery.SQL.Text :=
            'update u set password = cast (m.MerkezKodu as varchar (10))+ ' + sqlvalue (sYeniVeritabani) + ', Dogrulama = 1, SifreDegisiklikTarihi= getdate () - 55'#13#10 +
            'from '+sYeniVeritabani+'.dbo.users u'#13#10 +
            'inner join '+sYeniVeritabani+'.dbo.merkezBilgisi m on 1 = 1'#13#10 +
            'where password = ' + SQLvalue ('1') + ' or (password = ' + sqlvalue ('1002OSGB_DEMO') + ')';
          aQuery.ExecSQL;

          if not UpdateThermo (33, iThermo, 'admin �ifresi') then Exit;

          aQuery.SQL.Text :=
            'update i set i.AdmPw = u.password'#13#10 +
            'from OSGB_MASTER.dbo.OSGB_TNM i'#13#10 +
            'inner join '+sYeniVeritabani+'.dbo.MerkezBilgisi mm on mm.MerkezKodu = i.OSGB_KOD'#13#10 +
            'inner join '+sYeniVeritabani+'.dbo.users u on u.Kullanici = '+sqlValue ('admin')+''#13#10 +
            'where IsNull (i.AdmPw, '''') <> IsNull (u.password, '''')';
          aQuery.ExecSQL;

          bTamam := True;
        finally
          if bTamam then
          begin
            CommitTrans (DATALAR.ADOConnection2);
            ShowMessageSkin('Yeni Veritaban� A��lmas� ��lemi �st�n Ba�ar� ile Ger�ekle�tirildi', '', '', 'info');
            WinExec(PAnsiChar (AnsiString (ParamStr (0) + ' /C:'+sOsgbKod + '/U:'+'admin' + '/P:'+ sOsgbKod+sYeniVeritabani)),SW_SHOW);
          end
          else begin
            RollBackTrans(DATALAR.ADOConnection2);
          end;
        end;
      finally
        if not bTamam then
        begin
          aQuery.SQL.Text :=
            'DROP database ' + sYeniVeritabani;
          aQuery.ExecSQL;
        end;
      end;
    finally
      FreeThermo (iThermo);
    end;

  finally
    aQuery.Free;
  end;
end;

function SQLValue (const sValue: String): String;
begin
  if IsNull (sValue) then Result := 'NULL'
                     else Result := QuotedStr(sValue);
end;

function IsNull (const s: String): Boolean;
begin
  Result := Trim (s) = '';
end;
   //�a�r�ld��� yerler kontrol edilecekler:
   //SQLSelectToDataSet ListeAcCreate BuyukHarf SayisalVeri NextKontrol TurkCharKontrol FormInputZorunluKontrolPaint



procedure GunlereGoreHastaDagilimCizelgesi;
var
  sql : string;
  I : integer;
  ado1,ado2,ado3,ado4,ado5,ado6 : TADOQuery;
  Datasets : TDataSetKadir;
begin
   ado1 := TADOQuery.Create(nil);
   ado1.Connection := datalar.ADOConnection2;
   ado2 := TADOQuery.Create(nil);
   ado2.Connection := datalar.ADOConnection2;
   ado3 := TADOQuery.Create(nil);
   ado3.Connection := datalar.ADOConnection2;
   ado4 := TADOQuery.Create(nil);
   ado4.Connection := datalar.ADOConnection2;
   ado5 := TADOQuery.Create(nil);
   ado5.Connection := datalar.ADOConnection2;
   ado6 := TADOQuery.Create(nil);
   ado6.Connection := datalar.ADOConnection2;

   try
   sql := 'exec sp_gunlereGoreHastalarORDER ' + QuotedStr('2') + ',' + QuotedStr(datalar.AktifSirket) ;
   datalar.QuerySelect(ado1,sql);
   Datasets.Dataset1 := ado1;
 //  frmRapor.topluset.Dataset1.Name := 'Pazartesi';
   Application.ProcessMessages;

   sql := 'exec sp_gunlereGoreHastalarORDER ' + QuotedStr('3') + ',' + QuotedStr(datalar.AktifSirket) ;
   datalar.QuerySelect(ado2,sql);
   Datasets.Dataset2 := ado2;
 //  frmRapor.topluset.Dataset2.Name := 'Sali';

   sql := 'exec sp_gunlereGoreHastalarORDER ' + QuotedStr('4') + ',' + QuotedStr(datalar.AktifSirket) ;
   datalar.QuerySelect(ado3,sql);
   Datasets.Dataset3 := ado3;
 //  frmRapor.topluset.Dataset3.Name := 'Carsamba';

   sql := 'exec sp_gunlereGoreHastalarORDER ' + QuotedStr('5') + ',' + QuotedStr(datalar.AktifSirket) ;
   datalar.QuerySelect(ado4,sql);
   Datasets.Dataset4 := ado4;
  // frmRapor.topluset.Dataset4.Name := 'Persembe';

   sql := 'exec sp_gunlereGoreHastalarORDER ' + QuotedStr('6') + ',' + QuotedStr(datalar.AktifSirket) ;
   datalar.QuerySelect(ado5,sql);
   Datasets.Dataset5 := ado5;
 //  frmRapor.topluset.Dataset5.Name := 'Cuma';

   sql := 'exec sp_gunlereGoreHastalarORDER ' + QuotedStr('7') + ',' + QuotedStr(datalar.AktifSirket) ;
   datalar.QuerySelect(ado6,sql);
   Datasets.Dataset6 := ado6;
   //frmRapor.topluset.Dataset6.Name := 'Cumartesi';

   PrintYap('GHD','G�nlere G�re Hasta Da��l�m �izelgesi','291',Datasets);

   finally
     ado1.Free;
     ado2.Free;
     ado3.Free;
     ado4.Free;
     ado5.Free;
     ado6.Free;
   end;


end;



procedure RaporAra(_TC_,_Yupass_,_dosyaNo_ : string);
var
  sql : string;
begin


    if mrYes = ShowPopupForm('Hasta Raporlar�n� Bul',84,ifThen(_Yupass_ = '',_TC_,_Yupass_))
    Then Begin
         sql := 'select * from raporlar where dosyaNo = ' + QuotedStr(_dosyaNo_) +
                ' and raporNo = ' + QuotedStr(datalar.memDataRaporlar.fieldbyname('raporNo').AsString);

(*
         if datalar.QuerySelect(sql).Eof
         Then Begin
           if  Mryes = ShowMessageSkin('Rapor Sistemde Kay�tl� De�il , Kaydetmek �stermisiniz ?','','','msg')
           Then Begin

               sql := 'insert into raporlar (dosyaNo,raporNo,raporTarihi,verenTesisKodu,raporTakipno,turu,baslangicTarihi,bitisTarihi,' +
                      'protokolNo,protokolTarihi,tedaviRaporTuru,seansGun,SeansSayi,tanilar,butKodu) ' +
                      ' values ( ' + QuotedStr(_dosyaNo_) + ','
                                   + QuotedStr(datalar.memDataRaporlar.fieldbyname('raporNo').AsString) + ','
                                   + QuotedStr(NoktasizTarih(datalar.memDataRaporlar.fieldbyname('raporTarihi').AsString)) + ','
                                   + QuotedStr(datalar.memDataRaporlar.fieldbyname('verenTesis').AsString)  + ','
                                   + QuotedStr(datalar.memDataRaporlar.fieldbyname('raporTakipNo').AsString) + ','
                                   + QuotedStr(datalar.memDataRaporlar.fieldbyname('raporTuru').AsString) + ','
                                   + ' cast( ' + QuotedStr(tarihal(datalar.memDataRaporlar.fieldbyname('baslangicTarihi').Asdatetime)) + '  as datetime) ' + ','
                                   + ' cast( ' + QuotedStr(tarihal(datalar.memDataRaporlar.fieldbyname('bitisTarihi').AsDateTime)) + '  as datetime) ' + ','
                                   + QuotedStr(datalar.memDataRaporlar.fieldbyname('protokolNo').AsString) + ','
                                   + ' cast( ' + QuotedStr(tarihal(datalar.memDataRaporlar.fieldbyname('protokolTarihi').AsDateTime)) + '  as datetime) ' + ','
                                   + QuotedStr(datalar.memDataRaporlar.fieldbyname('tedaviRaporTuru').AsString) + ','
                                   + datalar.memDataRaporlar.fieldbyname('seansGun').AsString + ','
                                   + datalar.memDataRaporlar.fieldbyname('seansSayi').AsString + ','
                                   + QuotedStr(datalar.memDataRaporlar.fieldbyname('Tani').AsString) + ','
                                   + QuotedStr(datalar.memDataRaporlar.fieldbyname('butKodu').AsString)+

                                   ')' ;
                                 //  + memDataRaporlar.fieldbyname('seansSayi').AsString + ','
                                  // + memDataRaporlar.fieldbyname('Tani').AsString + ')';

               datalar.QueryExec(sql);
            //   RaporGrid.Dataset.Requery();
           //    RaporGrid.Dataset.Next;

               ShowMessageSkin('Rapor Sisteme Kaydedildi','','','info');

           End;
         End
         Else
           ShowMessageSkin('Rapor Sistemde Kay�tl�','','','info');

  *)

    End;

end;



end.
