// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : http://95.9.220.27/WServis/LabIslemleri.asmx?Wsdl
//  >Import : http://95.9.220.27/WServis/LabIslemleri.asmx?Wsdl>0
// Encoding : utf-8
// Version  : 1.0
// (29.02.2016 17:12:06 - - $Rev: 25127 $)
// ************************************************************************ //

unit LabIslemleri;

interface

uses InvokeRegistry, SOAPHTTPClient, Types, XSBuiltIns;

const
  IS_OPTN = $0001;
  IS_UNBD = $0002;
  IS_NLBL = $0004;
  IS_REF  = $0080;


type

  // ************************************************************************ //
  // The following types, referred to in the WSDL document are not being represented
  // in this file. They are either aliases[@] of other types represented or were referred
  // to but never[!] declared in the document. The types from the latter category
  // typically map to predefined/known XML or Embarcadero types; however, they could also 
  // indicate incorrect WSDL documents that failed to declare or import a schema type.
  // ************************************************************************ //
  // !:string          - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:int             - "http://www.w3.org/2001/XMLSchema"[Gbl]

  HastaTahlilSilGiris  = class;                 { "http://tempuri.org/"[GblCplx] }
  HastaTahlilSilCevap  = class;                 { "http://tempuri.org/"[GblCplx] }
  HastaTahlilOkuGiris  = class;                 { "http://tempuri.org/"[GblCplx] }
  HastaTahlilSonuclariCevap = class;            { "http://tempuri.org/"[GblCplx] }
  HastaTahlilSonucDetaylari = class;            { "http://tempuri.org/"[GblCplx] }
  HastaTahlilBilgileriOkuCevap = class;         { "http://tempuri.org/"[GblCplx] }
  HastaTahlilBilgilerisonuc = class;            { "http://tempuri.org/"[GblCplx] }
  HizmetArray          = class;                 { "http://tempuri.org/"[GblCplx] }
  HastaTahlilBilgileriGiris = class;            { "http://tempuri.org/"[GblCplx] }
  HastaTahlilBilgileriKayitCikis = class;       { "http://tempuri.org/"[GblCplx] }



  // ************************************************************************ //
  // XML       : HastaTahlilSilGiris, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  HastaTahlilSilGiris = class(TRemotable)
  private
    Fkullaniciadi: string;
    Fkullaniciadi_Specified: boolean;
    Fkullanicisifre: string;
    Fkullanicisifre_Specified: boolean;
    FOrnekNo: string;
    FOrnekNo_Specified: boolean;
    FHizmetKod: string;
    FHizmetKod_Specified: boolean;
    procedure Setkullaniciadi(Index: Integer; const Astring: string);
    function  kullaniciadi_Specified(Index: Integer): boolean;
    procedure Setkullanicisifre(Index: Integer; const Astring: string);
    function  kullanicisifre_Specified(Index: Integer): boolean;
    procedure SetOrnekNo(Index: Integer; const Astring: string);
    function  OrnekNo_Specified(Index: Integer): boolean;
    procedure SetHizmetKod(Index: Integer; const Astring: string);
    function  HizmetKod_Specified(Index: Integer): boolean;
  published
    property kullaniciadi:   string  Index (IS_OPTN) read Fkullaniciadi write Setkullaniciadi stored kullaniciadi_Specified;
    property kullanicisifre: string  Index (IS_OPTN) read Fkullanicisifre write Setkullanicisifre stored kullanicisifre_Specified;
    property OrnekNo:        string  Index (IS_OPTN) read FOrnekNo write SetOrnekNo stored OrnekNo_Specified;
    property HizmetKod:      string  Index (IS_OPTN) read FHizmetKod write SetHizmetKod stored HizmetKod_Specified;
  end;



  // ************************************************************************ //
  // XML       : HastaTahlilSilCevap, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  HastaTahlilSilCevap = class(TRemotable)
  private
    Fsonuc: string;
    Fsonuc_Specified: boolean;
    Fsonuckod: string;
    Fsonuckod_Specified: boolean;
    procedure Setsonuc(Index: Integer; const Astring: string);
    function  sonuc_Specified(Index: Integer): boolean;
    procedure Setsonuckod(Index: Integer; const Astring: string);
    function  sonuckod_Specified(Index: Integer): boolean;
  published
    property sonuc:    string  Index (IS_OPTN) read Fsonuc write Setsonuc stored sonuc_Specified;
    property sonuckod: string  Index (IS_OPTN) read Fsonuckod write Setsonuckod stored sonuckod_Specified;
  end;



  // ************************************************************************ //
  // XML       : HastaTahlilOkuGiris, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  HastaTahlilOkuGiris = class(TRemotable)
  private
    Fkullaniciadi: string;
    Fkullaniciadi_Specified: boolean;
    Fkullanicisifre: string;
    Fkullanicisifre_Specified: boolean;
    FOrnekNo: string;
    FOrnekNo_Specified: boolean;
    FGelenHastaid: string;
    FGelenHastaid_Specified: boolean;
    procedure Setkullaniciadi(Index: Integer; const Astring: string);
    function  kullaniciadi_Specified(Index: Integer): boolean;
    procedure Setkullanicisifre(Index: Integer; const Astring: string);
    function  kullanicisifre_Specified(Index: Integer): boolean;
    procedure SetOrnekNo(Index: Integer; const Astring: string);
    function  OrnekNo_Specified(Index: Integer): boolean;
    procedure SetGelenHastaid(Index: Integer; const Astring: string);
    function  GelenHastaid_Specified(Index: Integer): boolean;
  published
    property kullaniciadi:   string  Index (IS_OPTN) read Fkullaniciadi write Setkullaniciadi stored kullaniciadi_Specified;
    property kullanicisifre: string  Index (IS_OPTN) read Fkullanicisifre write Setkullanicisifre stored kullanicisifre_Specified;
    property OrnekNo:        string  Index (IS_OPTN) read FOrnekNo write SetOrnekNo stored OrnekNo_Specified;
    property GelenHastaid:   string  Index (IS_OPTN) read FGelenHastaid write SetGelenHastaid stored GelenHastaid_Specified;
  end;

  ArrayOfHastaTahlilSonucDetaylari = array of HastaTahlilSonucDetaylari;   { "http://tempuri.org/"[GblCplx] }


  // ************************************************************************ //
  // XML       : HastaTahlilSonuclariCevap, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  HastaTahlilSonuclariCevap = class(TRemotable)
  private
    Fsonuc: string;
    Fsonuc_Specified: boolean;
    Fsonuckod: string;
    Fsonuckod_Specified: boolean;
    FSonucDetay: ArrayOfHastaTahlilSonucDetaylari;
    FSonucDetay_Specified: boolean;
    procedure Setsonuc(Index: Integer; const Astring: string);
    function  sonuc_Specified(Index: Integer): boolean;
    procedure Setsonuckod(Index: Integer; const Astring: string);
    function  sonuckod_Specified(Index: Integer): boolean;
    procedure SetSonucDetay(Index: Integer; const AArrayOfHastaTahlilSonucDetaylari: ArrayOfHastaTahlilSonucDetaylari);
    function  SonucDetay_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property sonuc:      string                            Index (IS_OPTN) read Fsonuc write Setsonuc stored sonuc_Specified;
    property sonuckod:   string                            Index (IS_OPTN) read Fsonuckod write Setsonuckod stored sonuckod_Specified;
    property SonucDetay: ArrayOfHastaTahlilSonucDetaylari  Index (IS_OPTN) read FSonucDetay write SetSonucDetay stored SonucDetay_Specified;
  end;



  // ************************************************************************ //
  // XML       : HastaTahlilSonucDetaylari, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  HastaTahlilSonucDetaylari = class(TRemotable)
  private
    FOrnekNo: string;
    FOrnekNo_Specified: boolean;
    FGelenHastaid: string;
    FGelenHastaid_Specified: boolean;
    FHizmetKod: string;
    FHizmetKod_Specified: boolean;
    FHizmetAdi: string;
    FHizmetAdi_Specified: boolean;
    FTestNo: Integer;
    FSonucDeger: string;
    FSonucDeger_Specified: boolean;
    FSonucOnay: string;
    FSonucOnay_Specified: boolean;
    FReferansAralik: string;
    FReferansAralik_Specified: boolean;
    FReferansAltDeger: string;
    FReferansAltDeger_Specified: boolean;
    FReferansUstDeger: string;
    FReferansUstDeger_Specified: boolean;
    FSonucTarih: string;
    FSonucTarih_Specified: boolean;
    procedure SetOrnekNo(Index: Integer; const Astring: string);
    function  OrnekNo_Specified(Index: Integer): boolean;
    procedure SetGelenHastaid(Index: Integer; const Astring: string);
    function  GelenHastaid_Specified(Index: Integer): boolean;
    procedure SetHizmetKod(Index: Integer; const Astring: string);
    function  HizmetKod_Specified(Index: Integer): boolean;
    procedure SetHizmetAdi(Index: Integer; const Astring: string);
    function  HizmetAdi_Specified(Index: Integer): boolean;
    procedure SetSonucDeger(Index: Integer; const Astring: string);
    function  SonucDeger_Specified(Index: Integer): boolean;
    procedure SetSonucOnay(Index: Integer; const Astring: string);
    function  SonucOnay_Specified(Index: Integer): boolean;
    procedure SetReferansAralik(Index: Integer; const Astring: string);
    function  ReferansAralik_Specified(Index: Integer): boolean;
    procedure SetReferansAltDeger(Index: Integer; const Astring: string);
    function  ReferansAltDeger_Specified(Index: Integer): boolean;
    procedure SetReferansUstDeger(Index: Integer; const Astring: string);
    function  ReferansUstDeger_Specified(Index: Integer): boolean;
    procedure SetSonucTarih(Index: Integer; const Astring: string);
    function  SonucTarih_Specified(Index: Integer): boolean;
  published
    property OrnekNo:          string   Index (IS_OPTN) read FOrnekNo write SetOrnekNo stored OrnekNo_Specified;
    property GelenHastaid:     string   Index (IS_OPTN) read FGelenHastaid write SetGelenHastaid stored GelenHastaid_Specified;
    property HizmetKod:        string   Index (IS_OPTN) read FHizmetKod write SetHizmetKod stored HizmetKod_Specified;
    property HizmetAdi:        string   Index (IS_OPTN) read FHizmetAdi write SetHizmetAdi stored HizmetAdi_Specified;
    property TestNo:           Integer  read FTestNo write FTestNo;
    property SonucDeger:       string   Index (IS_OPTN) read FSonucDeger write SetSonucDeger stored SonucDeger_Specified;
    property SonucOnay:        string   Index (IS_OPTN) read FSonucOnay write SetSonucOnay stored SonucOnay_Specified;
    property ReferansAralik:   string   Index (IS_OPTN) read FReferansAralik write SetReferansAralik stored ReferansAralik_Specified;
    property ReferansAltDeger: string   Index (IS_OPTN) read FReferansAltDeger write SetReferansAltDeger stored ReferansAltDeger_Specified;
    property ReferansUstDeger: string   Index (IS_OPTN) read FReferansUstDeger write SetReferansUstDeger stored ReferansUstDeger_Specified;
    property SonucTarih:       string   Index (IS_OPTN) read FSonucTarih write SetSonucTarih stored SonucTarih_Specified;
  end;

  ArrayOfHastaTahlilBilgilerisonuc = array of HastaTahlilBilgilerisonuc;   { "http://tempuri.org/"[GblCplx] }


  // ************************************************************************ //
  // XML       : HastaTahlilBilgileriOkuCevap, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  HastaTahlilBilgileriOkuCevap = class(TRemotable)
  private
    Fsonuc: string;
    Fsonuc_Specified: boolean;
    Fsonuckod: string;
    Fsonuckod_Specified: boolean;
    Fdetay: ArrayOfHastaTahlilBilgilerisonuc;
    Fdetay_Specified: boolean;
    procedure Setsonuc(Index: Integer; const Astring: string);
    function  sonuc_Specified(Index: Integer): boolean;
    procedure Setsonuckod(Index: Integer; const Astring: string);
    function  sonuckod_Specified(Index: Integer): boolean;
    procedure Setdetay(Index: Integer; const AArrayOfHastaTahlilBilgilerisonuc: ArrayOfHastaTahlilBilgilerisonuc);
    function  detay_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property sonuc:    string                            Index (IS_OPTN) read Fsonuc write Setsonuc stored sonuc_Specified;
    property sonuckod: string                            Index (IS_OPTN) read Fsonuckod write Setsonuckod stored sonuckod_Specified;
    property detay:    ArrayOfHastaTahlilBilgilerisonuc  Index (IS_OPTN) read Fdetay write Setdetay stored detay_Specified;
  end;

  ArrayOfHizmetArray = array of HizmetArray;    { "http://tempuri.org/"[GblCplx] }


  // ************************************************************************ //
  // XML       : HastaTahlilBilgilerisonuc, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  HastaTahlilBilgilerisonuc = class(TRemotable)
  private
    FTckimlik: string;
    FTckimlik_Specified: boolean;
    FAdi: string;
    FAdi_Specified: boolean;
    FSoyadi: string;
    FSoyadi_Specified: boolean;
    FGelenHastaid: string;
    FGelenHastaid_Specified: boolean;
    FServerid: string;
    FServerid_Specified: boolean;
    FOrnekNo: string;
    FOrnekNo_Specified: boolean;
    FCinsiyet: string;
    FCinsiyet_Specified: boolean;
    FDogumtarihi: string;
    FDogumtarihi_Specified: boolean;
    Fislemzamani: string;
    Fislemzamani_Specified: boolean;
    FHizmetListesiCevap: ArrayOfHizmetArray;
    FHizmetListesiCevap_Specified: boolean;
    procedure SetTckimlik(Index: Integer; const Astring: string);
    function  Tckimlik_Specified(Index: Integer): boolean;
    procedure SetAdi(Index: Integer; const Astring: string);
    function  Adi_Specified(Index: Integer): boolean;
    procedure SetSoyadi(Index: Integer; const Astring: string);
    function  Soyadi_Specified(Index: Integer): boolean;
    procedure SetGelenHastaid(Index: Integer; const Astring: string);
    function  GelenHastaid_Specified(Index: Integer): boolean;
    procedure SetServerid(Index: Integer; const Astring: string);
    function  Serverid_Specified(Index: Integer): boolean;
    procedure SetOrnekNo(Index: Integer; const Astring: string);
    function  OrnekNo_Specified(Index: Integer): boolean;
    procedure SetCinsiyet(Index: Integer; const Astring: string);
    function  Cinsiyet_Specified(Index: Integer): boolean;
    procedure SetDogumtarihi(Index: Integer; const Astring: string);
    function  Dogumtarihi_Specified(Index: Integer): boolean;
    procedure Setislemzamani(Index: Integer; const Astring: string);
    function  islemzamani_Specified(Index: Integer): boolean;
    procedure SetHizmetListesiCevap(Index: Integer; const AArrayOfHizmetArray: ArrayOfHizmetArray);
    function  HizmetListesiCevap_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property Tckimlik:           string              Index (IS_OPTN) read FTckimlik write SetTckimlik stored Tckimlik_Specified;
    property Adi:                string              Index (IS_OPTN) read FAdi write SetAdi stored Adi_Specified;
    property Soyadi:             string              Index (IS_OPTN) read FSoyadi write SetSoyadi stored Soyadi_Specified;
    property GelenHastaid:       string              Index (IS_OPTN) read FGelenHastaid write SetGelenHastaid stored GelenHastaid_Specified;
    property Serverid:           string              Index (IS_OPTN) read FServerid write SetServerid stored Serverid_Specified;
    property OrnekNo:            string              Index (IS_OPTN) read FOrnekNo write SetOrnekNo stored OrnekNo_Specified;
    property Cinsiyet:           string              Index (IS_OPTN) read FCinsiyet write SetCinsiyet stored Cinsiyet_Specified;
    property Dogumtarihi:        string              Index (IS_OPTN) read FDogumtarihi write SetDogumtarihi stored Dogumtarihi_Specified;
    property islemzamani:        string              Index (IS_OPTN) read Fislemzamani write Setislemzamani stored islemzamani_Specified;
    property HizmetListesiCevap: ArrayOfHizmetArray  Index (IS_OPTN) read FHizmetListesiCevap write SetHizmetListesiCevap stored HizmetListesiCevap_Specified;
  end;



  // ************************************************************************ //
  // XML       : HizmetArray, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  HizmetArray = class(TRemotable)
  private
    FHizmetKod: string;
    FHizmetKod_Specified: boolean;
    FHizmetAdi: string;
    FHizmetAdi_Specified: boolean;
    procedure SetHizmetKod(Index: Integer; const Astring: string);
    function  HizmetKod_Specified(Index: Integer): boolean;
    procedure SetHizmetAdi(Index: Integer; const Astring: string);
    function  HizmetAdi_Specified(Index: Integer): boolean;
  published
    property HizmetKod: string  Index (IS_OPTN) read FHizmetKod write SetHizmetKod stored HizmetKod_Specified;
    property HizmetAdi: string  Index (IS_OPTN) read FHizmetAdi write SetHizmetAdi stored HizmetAdi_Specified;
  end;

  ArrayOfString = array of string;              { "http://tempuri.org/"[GblCplx] }


  // ************************************************************************ //
  // XML       : HastaTahlilBilgileriGiris, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  HastaTahlilBilgileriGiris = class(TRemotable)
  private
    Fkullaniciadi: string;
    Fkullaniciadi_Specified: boolean;
    Fkullanicisifre: string;
    Fkullanicisifre_Specified: boolean;
    FTckimlik: string;
    FTckimlik_Specified: boolean;
    FAdi: string;
    FAdi_Specified: boolean;
    FOrnekNo: string;
    FOrnekNo_Specified: boolean;
    FSoyadi: string;
    FSoyadi_Specified: boolean;
    FGelenHastaid: string;
    FGelenHastaid_Specified: boolean;
    FServerid: string;
    FServerid_Specified: boolean;
    FCinsiyet: string;
    FCinsiyet_Specified: boolean;
    FDogumtarihi: string;
    FDogumtarihi_Specified: boolean;
    FHizmetListe: ArrayOfString;
    FHizmetListe_Specified: boolean;
    procedure Setkullaniciadi(Index: Integer; const Astring: string);
    function  kullaniciadi_Specified(Index: Integer): boolean;
    procedure Setkullanicisifre(Index: Integer; const Astring: string);
    function  kullanicisifre_Specified(Index: Integer): boolean;
    procedure SetTckimlik(Index: Integer; const Astring: string);
    function  Tckimlik_Specified(Index: Integer): boolean;
    procedure SetAdi(Index: Integer; const Astring: string);
    function  Adi_Specified(Index: Integer): boolean;
    procedure SetOrnekNo(Index: Integer; const Astring: string);
    function  OrnekNo_Specified(Index: Integer): boolean;
    procedure SetSoyadi(Index: Integer; const Astring: string);
    function  Soyadi_Specified(Index: Integer): boolean;
    procedure SetGelenHastaid(Index: Integer; const Astring: string);
    function  GelenHastaid_Specified(Index: Integer): boolean;
    procedure SetServerid(Index: Integer; const Astring: string);
    function  Serverid_Specified(Index: Integer): boolean;
    procedure SetCinsiyet(Index: Integer; const Astring: string);
    function  Cinsiyet_Specified(Index: Integer): boolean;
    procedure SetDogumtarihi(Index: Integer; const Astring: string);
    function  Dogumtarihi_Specified(Index: Integer): boolean;
    procedure SetHizmetListe(Index: Integer; const AArrayOfString: ArrayOfString);
    function  HizmetListe_Specified(Index: Integer): boolean;
  published
    property kullaniciadi:   string         Index (IS_OPTN) read Fkullaniciadi write Setkullaniciadi stored kullaniciadi_Specified;
    property kullanicisifre: string         Index (IS_OPTN) read Fkullanicisifre write Setkullanicisifre stored kullanicisifre_Specified;
    property Tckimlik:       string         Index (IS_OPTN) read FTckimlik write SetTckimlik stored Tckimlik_Specified;
    property Adi:            string         Index (IS_OPTN) read FAdi write SetAdi stored Adi_Specified;
    property OrnekNo:        string         Index (IS_OPTN) read FOrnekNo write SetOrnekNo stored OrnekNo_Specified;
    property Soyadi:         string         Index (IS_OPTN) read FSoyadi write SetSoyadi stored Soyadi_Specified;
    property GelenHastaid:   string         Index (IS_OPTN) read FGelenHastaid write SetGelenHastaid stored GelenHastaid_Specified;
    property Serverid:       string         Index (IS_OPTN) read FServerid write SetServerid stored Serverid_Specified;
    property Cinsiyet:       string         Index (IS_OPTN) read FCinsiyet write SetCinsiyet stored Cinsiyet_Specified;
    property Dogumtarihi:    string         Index (IS_OPTN) read FDogumtarihi write SetDogumtarihi stored Dogumtarihi_Specified;
    property HizmetListe:    ArrayOfString  Index (IS_OPTN) read FHizmetListe write SetHizmetListe stored HizmetListe_Specified;
  end;



  // ************************************************************************ //
  // XML       : HastaTahlilBilgileriKayitCikis, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  HastaTahlilBilgileriKayitCikis = class(TRemotable)
  private
    Fsonuc: string;
    Fsonuc_Specified: boolean;
    Fsonuckod: string;
    Fsonuckod_Specified: boolean;
    Fdetay: HastaTahlilBilgilerisonuc;
    procedure Setsonuc(Index: Integer; const Astring: string);
    function  sonuc_Specified(Index: Integer): boolean;
    procedure Setsonuckod(Index: Integer; const Astring: string);
    function  sonuckod_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property sonuc:    string                     Index (IS_OPTN) read Fsonuc write Setsonuc stored sonuc_Specified;
    property sonuckod: string                     Index (IS_OPTN) read Fsonuckod write Setsonuckod stored sonuckod_Specified;
    property detay:    HastaTahlilBilgilerisonuc  read Fdetay write Fdetay;
  end;


  // ************************************************************************ //
  // Namespace : http://tempuri.org/
  // soapAction: http://tempuri.org/%operationName%
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : document
  // binding   : LabIslemleriSoap12
  // service   : LabIslemleri
  // port      : LabIslemleriSoap12
  // URL       : http://95.9.220.27/WServis/LabIslemleri.asmx
  // ************************************************************************ //
  LabIslemleriSoap = interface(IInvokable)
  ['{0AE103B4-54FB-ADAF-A201-5DB1326D7395}']
    function  baglantitest(const kul: string; const sif: string): string; stdcall;
    function  HastaTahlilSil(const SilGiris: HastaTahlilSilGiris): HastaTahlilSilCevap; stdcall;
    function  HastaTahlilSonuclariOku(const OkuGiris: HastaTahlilOkuGiris): HastaTahlilSonuclariCevap; stdcall;
    function  HastaTahlilOku(const OkuGiris: HastaTahlilOkuGiris): HastaTahlilBilgileriOkuCevap; stdcall;
    function  HastaTahlilBilgileriKaydet(const TahlilGiris: HastaTahlilBilgileriGiris): HastaTahlilBilgileriKayitCikis; stdcall;
    function  HastaTahlilBilgileriKaydetorneknosuz(const TahlilGiris: HastaTahlilBilgileriGiris): HastaTahlilBilgileriKayitCikis; stdcall;
  end;

function GetLabIslemleriSoap(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): LabIslemleriSoap;


implementation
  uses SysUtils;

function GetLabIslemleriSoap(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): LabIslemleriSoap;
const
  defWSDL = 'http://95.9.220.27/WServis/LabIslemleri.asmx?Wsdl';
  defURL  = 'http://95.9.220.27/WServis/LabIslemleri.asmx';
  defSvc  = 'LabIslemleri';
  defPrt  = 'LabIslemleriSoap12';
var
  RIO: THTTPRIO;
begin
  Result := nil;
  if (Addr = '') then
  begin
    if UseWSDL then
      Addr := defWSDL
    else
      Addr := defURL;
  end;
  if HTTPRIO = nil then
    RIO := THTTPRIO.Create(nil)
  else
    RIO := HTTPRIO;
  try
    Result := (RIO as LabIslemleriSoap);
    if UseWSDL then
    begin
      RIO.WSDLLocation := Addr;
      RIO.Service := defSvc;
      RIO.Port := defPrt;
    end else
      RIO.URL := Addr;
  finally
    if (Result = nil) and (HTTPRIO = nil) then
      RIO.Free;
  end;
end;


procedure HastaTahlilSilGiris.Setkullaniciadi(Index: Integer; const Astring: string);
begin
  Fkullaniciadi := Astring;
  Fkullaniciadi_Specified := True;
end;

function HastaTahlilSilGiris.kullaniciadi_Specified(Index: Integer): boolean;
begin
  Result := Fkullaniciadi_Specified;
end;

procedure HastaTahlilSilGiris.Setkullanicisifre(Index: Integer; const Astring: string);
begin
  Fkullanicisifre := Astring;
  Fkullanicisifre_Specified := True;
end;

function HastaTahlilSilGiris.kullanicisifre_Specified(Index: Integer): boolean;
begin
  Result := Fkullanicisifre_Specified;
end;

procedure HastaTahlilSilGiris.SetOrnekNo(Index: Integer; const Astring: string);
begin
  FOrnekNo := Astring;
  FOrnekNo_Specified := True;
end;

function HastaTahlilSilGiris.OrnekNo_Specified(Index: Integer): boolean;
begin
  Result := FOrnekNo_Specified;
end;

procedure HastaTahlilSilGiris.SetHizmetKod(Index: Integer; const Astring: string);
begin
  FHizmetKod := Astring;
  FHizmetKod_Specified := True;
end;

function HastaTahlilSilGiris.HizmetKod_Specified(Index: Integer): boolean;
begin
  Result := FHizmetKod_Specified;
end;

procedure HastaTahlilSilCevap.Setsonuc(Index: Integer; const Astring: string);
begin
  Fsonuc := Astring;
  Fsonuc_Specified := True;
end;

function HastaTahlilSilCevap.sonuc_Specified(Index: Integer): boolean;
begin
  Result := Fsonuc_Specified;
end;

procedure HastaTahlilSilCevap.Setsonuckod(Index: Integer; const Astring: string);
begin
  Fsonuckod := Astring;
  Fsonuckod_Specified := True;
end;

function HastaTahlilSilCevap.sonuckod_Specified(Index: Integer): boolean;
begin
  Result := Fsonuckod_Specified;
end;

procedure HastaTahlilOkuGiris.Setkullaniciadi(Index: Integer; const Astring: string);
begin
  Fkullaniciadi := Astring;
  Fkullaniciadi_Specified := True;
end;

function HastaTahlilOkuGiris.kullaniciadi_Specified(Index: Integer): boolean;
begin
  Result := Fkullaniciadi_Specified;
end;

procedure HastaTahlilOkuGiris.Setkullanicisifre(Index: Integer; const Astring: string);
begin
  Fkullanicisifre := Astring;
  Fkullanicisifre_Specified := True;
end;

function HastaTahlilOkuGiris.kullanicisifre_Specified(Index: Integer): boolean;
begin
  Result := Fkullanicisifre_Specified;
end;

procedure HastaTahlilOkuGiris.SetOrnekNo(Index: Integer; const Astring: string);
begin
  FOrnekNo := Astring;
  FOrnekNo_Specified := True;
end;

function HastaTahlilOkuGiris.OrnekNo_Specified(Index: Integer): boolean;
begin
  Result := FOrnekNo_Specified;
end;

procedure HastaTahlilOkuGiris.SetGelenHastaid(Index: Integer; const Astring: string);
begin
  FGelenHastaid := Astring;
  FGelenHastaid_Specified := True;
end;

function HastaTahlilOkuGiris.GelenHastaid_Specified(Index: Integer): boolean;
begin
  Result := FGelenHastaid_Specified;
end;

destructor HastaTahlilSonuclariCevap.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FSonucDetay)-1 do
    SysUtils.FreeAndNil(FSonucDetay[I]);
  System.SetLength(FSonucDetay, 0);
  inherited Destroy;
end;

procedure HastaTahlilSonuclariCevap.Setsonuc(Index: Integer; const Astring: string);
begin
  Fsonuc := Astring;
  Fsonuc_Specified := True;
end;

function HastaTahlilSonuclariCevap.sonuc_Specified(Index: Integer): boolean;
begin
  Result := Fsonuc_Specified;
end;

procedure HastaTahlilSonuclariCevap.Setsonuckod(Index: Integer; const Astring: string);
begin
  Fsonuckod := Astring;
  Fsonuckod_Specified := True;
end;

function HastaTahlilSonuclariCevap.sonuckod_Specified(Index: Integer): boolean;
begin
  Result := Fsonuckod_Specified;
end;

procedure HastaTahlilSonuclariCevap.SetSonucDetay(Index: Integer; const AArrayOfHastaTahlilSonucDetaylari: ArrayOfHastaTahlilSonucDetaylari);
begin
  FSonucDetay := AArrayOfHastaTahlilSonucDetaylari;
  FSonucDetay_Specified := True;
end;

function HastaTahlilSonuclariCevap.SonucDetay_Specified(Index: Integer): boolean;
begin
  Result := FSonucDetay_Specified;
end;

procedure HastaTahlilSonucDetaylari.SetOrnekNo(Index: Integer; const Astring: string);
begin
  FOrnekNo := Astring;
  FOrnekNo_Specified := True;
end;

function HastaTahlilSonucDetaylari.OrnekNo_Specified(Index: Integer): boolean;
begin
  Result := FOrnekNo_Specified;
end;

procedure HastaTahlilSonucDetaylari.SetGelenHastaid(Index: Integer; const Astring: string);
begin
  FGelenHastaid := Astring;
  FGelenHastaid_Specified := True;
end;

function HastaTahlilSonucDetaylari.GelenHastaid_Specified(Index: Integer): boolean;
begin
  Result := FGelenHastaid_Specified;
end;

procedure HastaTahlilSonucDetaylari.SetHizmetKod(Index: Integer; const Astring: string);
begin
  FHizmetKod := Astring;
  FHizmetKod_Specified := True;
end;

function HastaTahlilSonucDetaylari.HizmetKod_Specified(Index: Integer): boolean;
begin
  Result := FHizmetKod_Specified;
end;

procedure HastaTahlilSonucDetaylari.SetHizmetAdi(Index: Integer; const Astring: string);
begin
  FHizmetAdi := Astring;
  FHizmetAdi_Specified := True;
end;

function HastaTahlilSonucDetaylari.HizmetAdi_Specified(Index: Integer): boolean;
begin
  Result := FHizmetAdi_Specified;
end;

procedure HastaTahlilSonucDetaylari.SetSonucDeger(Index: Integer; const Astring: string);
begin
  FSonucDeger := Astring;
  FSonucDeger_Specified := True;
end;

function HastaTahlilSonucDetaylari.SonucDeger_Specified(Index: Integer): boolean;
begin
  Result := FSonucDeger_Specified;
end;

procedure HastaTahlilSonucDetaylari.SetSonucOnay(Index: Integer; const Astring: string);
begin
  FSonucOnay := Astring;
  FSonucOnay_Specified := True;
end;

function HastaTahlilSonucDetaylari.SonucOnay_Specified(Index: Integer): boolean;
begin
  Result := FSonucOnay_Specified;
end;

procedure HastaTahlilSonucDetaylari.SetReferansAralik(Index: Integer; const Astring: string);
begin
  FReferansAralik := Astring;
  FReferansAralik_Specified := True;
end;

function HastaTahlilSonucDetaylari.ReferansAralik_Specified(Index: Integer): boolean;
begin
  Result := FReferansAralik_Specified;
end;

procedure HastaTahlilSonucDetaylari.SetReferansAltDeger(Index: Integer; const Astring: string);
begin
  FReferansAltDeger := Astring;
  FReferansAltDeger_Specified := True;
end;

function HastaTahlilSonucDetaylari.ReferansAltDeger_Specified(Index: Integer): boolean;
begin
  Result := FReferansAltDeger_Specified;
end;

procedure HastaTahlilSonucDetaylari.SetReferansUstDeger(Index: Integer; const Astring: string);
begin
  FReferansUstDeger := Astring;
  FReferansUstDeger_Specified := True;
end;

function HastaTahlilSonucDetaylari.ReferansUstDeger_Specified(Index: Integer): boolean;
begin
  Result := FReferansUstDeger_Specified;
end;

procedure HastaTahlilSonucDetaylari.SetSonucTarih(Index: Integer; const Astring: string);
begin
  FSonucTarih := Astring;
  FSonucTarih_Specified := True;
end;

function HastaTahlilSonucDetaylari.SonucTarih_Specified(Index: Integer): boolean;
begin
  Result := FSonucTarih_Specified;
end;

destructor HastaTahlilBilgileriOkuCevap.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Fdetay)-1 do
    SysUtils.FreeAndNil(Fdetay[I]);
  System.SetLength(Fdetay, 0);
  inherited Destroy;
end;

procedure HastaTahlilBilgileriOkuCevap.Setsonuc(Index: Integer; const Astring: string);
begin
  Fsonuc := Astring;
  Fsonuc_Specified := True;
end;

function HastaTahlilBilgileriOkuCevap.sonuc_Specified(Index: Integer): boolean;
begin
  Result := Fsonuc_Specified;
end;

procedure HastaTahlilBilgileriOkuCevap.Setsonuckod(Index: Integer; const Astring: string);
begin
  Fsonuckod := Astring;
  Fsonuckod_Specified := True;
end;

function HastaTahlilBilgileriOkuCevap.sonuckod_Specified(Index: Integer): boolean;
begin
  Result := Fsonuckod_Specified;
end;

procedure HastaTahlilBilgileriOkuCevap.Setdetay(Index: Integer; const AArrayOfHastaTahlilBilgilerisonuc: ArrayOfHastaTahlilBilgilerisonuc);
begin
  Fdetay := AArrayOfHastaTahlilBilgilerisonuc;
  Fdetay_Specified := True;
end;

function HastaTahlilBilgileriOkuCevap.detay_Specified(Index: Integer): boolean;
begin
  Result := Fdetay_Specified;
end;

destructor HastaTahlilBilgilerisonuc.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FHizmetListesiCevap)-1 do
    SysUtils.FreeAndNil(FHizmetListesiCevap[I]);
  System.SetLength(FHizmetListesiCevap, 0);
  inherited Destroy;
end;

procedure HastaTahlilBilgilerisonuc.SetTckimlik(Index: Integer; const Astring: string);
begin
  FTckimlik := Astring;
  FTckimlik_Specified := True;
end;

function HastaTahlilBilgilerisonuc.Tckimlik_Specified(Index: Integer): boolean;
begin
  Result := FTckimlik_Specified;
end;

procedure HastaTahlilBilgilerisonuc.SetAdi(Index: Integer; const Astring: string);
begin
  FAdi := Astring;
  FAdi_Specified := True;
end;

function HastaTahlilBilgilerisonuc.Adi_Specified(Index: Integer): boolean;
begin
  Result := FAdi_Specified;
end;

procedure HastaTahlilBilgilerisonuc.SetSoyadi(Index: Integer; const Astring: string);
begin
  FSoyadi := Astring;
  FSoyadi_Specified := True;
end;

function HastaTahlilBilgilerisonuc.Soyadi_Specified(Index: Integer): boolean;
begin
  Result := FSoyadi_Specified;
end;

procedure HastaTahlilBilgilerisonuc.SetGelenHastaid(Index: Integer; const Astring: string);
begin
  FGelenHastaid := Astring;
  FGelenHastaid_Specified := True;
end;

function HastaTahlilBilgilerisonuc.GelenHastaid_Specified(Index: Integer): boolean;
begin
  Result := FGelenHastaid_Specified;
end;

procedure HastaTahlilBilgilerisonuc.SetServerid(Index: Integer; const Astring: string);
begin
  FServerid := Astring;
  FServerid_Specified := True;
end;

function HastaTahlilBilgilerisonuc.Serverid_Specified(Index: Integer): boolean;
begin
  Result := FServerid_Specified;
end;

procedure HastaTahlilBilgilerisonuc.SetOrnekNo(Index: Integer; const Astring: string);
begin
  FOrnekNo := Astring;
  FOrnekNo_Specified := True;
end;

function HastaTahlilBilgilerisonuc.OrnekNo_Specified(Index: Integer): boolean;
begin
  Result := FOrnekNo_Specified;
end;

procedure HastaTahlilBilgilerisonuc.SetCinsiyet(Index: Integer; const Astring: string);
begin
  FCinsiyet := Astring;
  FCinsiyet_Specified := True;
end;

function HastaTahlilBilgilerisonuc.Cinsiyet_Specified(Index: Integer): boolean;
begin
  Result := FCinsiyet_Specified;
end;

procedure HastaTahlilBilgilerisonuc.SetDogumtarihi(Index: Integer; const Astring: string);
begin
  FDogumtarihi := Astring;
  FDogumtarihi_Specified := True;
end;

function HastaTahlilBilgilerisonuc.Dogumtarihi_Specified(Index: Integer): boolean;
begin
  Result := FDogumtarihi_Specified;
end;

procedure HastaTahlilBilgilerisonuc.Setislemzamani(Index: Integer; const Astring: string);
begin
  Fislemzamani := Astring;
  Fislemzamani_Specified := True;
end;

function HastaTahlilBilgilerisonuc.islemzamani_Specified(Index: Integer): boolean;
begin
  Result := Fislemzamani_Specified;
end;

procedure HastaTahlilBilgilerisonuc.SetHizmetListesiCevap(Index: Integer; const AArrayOfHizmetArray: ArrayOfHizmetArray);
begin
  FHizmetListesiCevap := AArrayOfHizmetArray;
  FHizmetListesiCevap_Specified := True;
end;

function HastaTahlilBilgilerisonuc.HizmetListesiCevap_Specified(Index: Integer): boolean;
begin
  Result := FHizmetListesiCevap_Specified;
end;

procedure HizmetArray.SetHizmetKod(Index: Integer; const Astring: string);
begin
  FHizmetKod := Astring;
  FHizmetKod_Specified := True;
end;

function HizmetArray.HizmetKod_Specified(Index: Integer): boolean;
begin
  Result := FHizmetKod_Specified;
end;

procedure HizmetArray.SetHizmetAdi(Index: Integer; const Astring: string);
begin
  FHizmetAdi := Astring;
  FHizmetAdi_Specified := True;
end;

function HizmetArray.HizmetAdi_Specified(Index: Integer): boolean;
begin
  Result := FHizmetAdi_Specified;
end;

procedure HastaTahlilBilgileriGiris.Setkullaniciadi(Index: Integer; const Astring: string);
begin
  Fkullaniciadi := Astring;
  Fkullaniciadi_Specified := True;
end;

function HastaTahlilBilgileriGiris.kullaniciadi_Specified(Index: Integer): boolean;
begin
  Result := Fkullaniciadi_Specified;
end;

procedure HastaTahlilBilgileriGiris.Setkullanicisifre(Index: Integer; const Astring: string);
begin
  Fkullanicisifre := Astring;
  Fkullanicisifre_Specified := True;
end;

function HastaTahlilBilgileriGiris.kullanicisifre_Specified(Index: Integer): boolean;
begin
  Result := Fkullanicisifre_Specified;
end;

procedure HastaTahlilBilgileriGiris.SetTckimlik(Index: Integer; const Astring: string);
begin
  FTckimlik := Astring;
  FTckimlik_Specified := True;
end;

function HastaTahlilBilgileriGiris.Tckimlik_Specified(Index: Integer): boolean;
begin
  Result := FTckimlik_Specified;
end;

procedure HastaTahlilBilgileriGiris.SetAdi(Index: Integer; const Astring: string);
begin
  FAdi := Astring;
  FAdi_Specified := True;
end;

function HastaTahlilBilgileriGiris.Adi_Specified(Index: Integer): boolean;
begin
  Result := FAdi_Specified;
end;

procedure HastaTahlilBilgileriGiris.SetOrnekNo(Index: Integer; const Astring: string);
begin
  FOrnekNo := Astring;
  FOrnekNo_Specified := True;
end;

function HastaTahlilBilgileriGiris.OrnekNo_Specified(Index: Integer): boolean;
begin
  Result := FOrnekNo_Specified;
end;

procedure HastaTahlilBilgileriGiris.SetSoyadi(Index: Integer; const Astring: string);
begin
  FSoyadi := Astring;
  FSoyadi_Specified := True;
end;

function HastaTahlilBilgileriGiris.Soyadi_Specified(Index: Integer): boolean;
begin
  Result := FSoyadi_Specified;
end;

procedure HastaTahlilBilgileriGiris.SetGelenHastaid(Index: Integer; const Astring: string);
begin
  FGelenHastaid := Astring;
  FGelenHastaid_Specified := True;
end;

function HastaTahlilBilgileriGiris.GelenHastaid_Specified(Index: Integer): boolean;
begin
  Result := FGelenHastaid_Specified;
end;

procedure HastaTahlilBilgileriGiris.SetServerid(Index: Integer; const Astring: string);
begin
  FServerid := Astring;
  FServerid_Specified := True;
end;

function HastaTahlilBilgileriGiris.Serverid_Specified(Index: Integer): boolean;
begin
  Result := FServerid_Specified;
end;

procedure HastaTahlilBilgileriGiris.SetCinsiyet(Index: Integer; const Astring: string);
begin
  FCinsiyet := Astring;
  FCinsiyet_Specified := True;
end;

function HastaTahlilBilgileriGiris.Cinsiyet_Specified(Index: Integer): boolean;
begin
  Result := FCinsiyet_Specified;
end;

procedure HastaTahlilBilgileriGiris.SetDogumtarihi(Index: Integer; const Astring: string);
begin
  FDogumtarihi := Astring;
  FDogumtarihi_Specified := True;
end;

function HastaTahlilBilgileriGiris.Dogumtarihi_Specified(Index: Integer): boolean;
begin
  Result := FDogumtarihi_Specified;
end;

procedure HastaTahlilBilgileriGiris.SetHizmetListe(Index: Integer; const AArrayOfString: ArrayOfString);
begin
  FHizmetListe := AArrayOfString;
  FHizmetListe_Specified := True;
end;

function HastaTahlilBilgileriGiris.HizmetListe_Specified(Index: Integer): boolean;
begin
  Result := FHizmetListe_Specified;
end;

destructor HastaTahlilBilgileriKayitCikis.Destroy;
begin
  SysUtils.FreeAndNil(Fdetay);
  inherited Destroy;
end;

procedure HastaTahlilBilgileriKayitCikis.Setsonuc(Index: Integer; const Astring: string);
begin
  Fsonuc := Astring;
  Fsonuc_Specified := True;
end;

function HastaTahlilBilgileriKayitCikis.sonuc_Specified(Index: Integer): boolean;
begin
  Result := Fsonuc_Specified;
end;

procedure HastaTahlilBilgileriKayitCikis.Setsonuckod(Index: Integer; const Astring: string);
begin
  Fsonuckod := Astring;
  Fsonuckod_Specified := True;
end;

function HastaTahlilBilgileriKayitCikis.sonuckod_Specified(Index: Integer): boolean;
begin
  Result := Fsonuckod_Specified;
end;

initialization
  InvRegistry.RegisterInterface(TypeInfo(LabIslemleriSoap), 'http://tempuri.org/', 'utf-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(LabIslemleriSoap), 'http://tempuri.org/%operationName%');
  InvRegistry.RegisterInvokeOptions(TypeInfo(LabIslemleriSoap), ioDocument);
  InvRegistry.RegisterInvokeOptions(TypeInfo(LabIslemleriSoap), ioSOAP12);
  RemClassRegistry.RegisterXSClass(HastaTahlilSilGiris, 'http://tempuri.org/', 'HastaTahlilSilGiris');
  RemClassRegistry.RegisterXSClass(HastaTahlilSilCevap, 'http://tempuri.org/', 'HastaTahlilSilCevap');
  RemClassRegistry.RegisterXSClass(HastaTahlilOkuGiris, 'http://tempuri.org/', 'HastaTahlilOkuGiris');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfHastaTahlilSonucDetaylari), 'http://tempuri.org/', 'ArrayOfHastaTahlilSonucDetaylari');
  RemClassRegistry.RegisterXSClass(HastaTahlilSonuclariCevap, 'http://tempuri.org/', 'HastaTahlilSonuclariCevap');
  RemClassRegistry.RegisterXSClass(HastaTahlilSonucDetaylari, 'http://tempuri.org/', 'HastaTahlilSonucDetaylari');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfHastaTahlilBilgilerisonuc), 'http://tempuri.org/', 'ArrayOfHastaTahlilBilgilerisonuc');
  RemClassRegistry.RegisterXSClass(HastaTahlilBilgileriOkuCevap, 'http://tempuri.org/', 'HastaTahlilBilgileriOkuCevap');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfHizmetArray), 'http://tempuri.org/', 'ArrayOfHizmetArray');
  RemClassRegistry.RegisterXSClass(HastaTahlilBilgilerisonuc, 'http://tempuri.org/', 'HastaTahlilBilgilerisonuc');
  RemClassRegistry.RegisterXSClass(HizmetArray, 'http://tempuri.org/', 'HizmetArray');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfString), 'http://tempuri.org/', 'ArrayOfString');
  RemClassRegistry.RegisterXSClass(HastaTahlilBilgileriGiris, 'http://tempuri.org/', 'HastaTahlilBilgileriGiris');
  RemClassRegistry.RegisterXSClass(HastaTahlilBilgileriKayitCikis, 'http://tempuri.org/', 'HastaTahlilBilgileriKayitCikis');

end.