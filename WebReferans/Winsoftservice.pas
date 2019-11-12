// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : D:\MyDOCS\WSDL dosyalarý\Winsoftservice.wsdl
//  >Import : D:\MyDOCS\WSDL dosyalarý\Winsoftservice.wsdl>0
// Encoding : utf-8
// Version  : 1.0
// (10.10.2019 15:31:07 - - $Rev: 45757 $)
// ************************************************************************ //

unit Winsoftservice;

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
  // !:boolean         - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:int             - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:string          - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:dateTime        - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:double          - "http://www.w3.org/2001/XMLSchema"[Gbl]

  OrnekListesi         = class;                 { "http://tempuri.org/"[GblCplx] }
  Test                 = class;                 { "http://tempuri.org/"[GblCplx] }
  TestListesi          = class;                 { "http://tempuri.org/"[GblCplx] }
  OrnekFiltre          = class;                 { "http://tempuri.org/"[GblCplx] }
  OrnekTetkikBilgileri = class;                 { "http://tempuri.org/"[GblCplx] }
  Tetkik               = class;                 { "http://tempuri.org/"[GblCplx] }
  KullaniciBilgisi2    = class;                 { "http://tempuri.org/"[Hdr][GblCplx] }
  KullaniciBilgisi     = class;                 { "http://tempuri.org/"[Hdr][GblElm] }
  Ornek                = class;                 { "http://tempuri.org/"[GblCplx] }

  {$SCOPEDENUMS ON}
  { "http://tempuri.org/"[GblSmpl] }
  DusukYuksekTipi = (Normal, Dusuk, Yuksek, Belirsiz, Riskli, EsitDegil, Rededildi);

  { "http://tempuri.org/"[GblSmpl] }
  OnayTipleri = (Onaysiz, TeknisyenOnayli, DoktorOnayli);

  { "http://tempuri.org/"[GblSmpl] }
  Aciliyet = (Acil, Normal);

  { "http://tempuri.org/"[GblSmpl] }
  Cinsiyet = (Belirtilmedi, Erkek, Kadin);

  { "http://tempuri.org/"[GblSmpl] }
  KlinikTur = (Yatan, Ayaktan);

  {$SCOPEDENUMS OFF}

  ArrayOfTest = array of Test;                  { "http://tempuri.org/"[GblCplx] }
  ArrayOfOrnek = array of Ornek;                { "http://tempuri.org/"[GblCplx] }


  // ************************************************************************ //
  // XML       : OrnekListesi, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  OrnekListesi = class(TRemotable)
  private
    FListe: ArrayOfOrnek;
    FListe_Specified: boolean;
    FIslemSonucKodu: string;
    FIslemSonucKodu_Specified: boolean;
    FIslemSonucMesaji: string;
    FIslemSonucMesaji_Specified: boolean;
    procedure SetListe(Index: Integer; const AArrayOfOrnek: ArrayOfOrnek);
    function  Liste_Specified(Index: Integer): boolean;
    procedure SetIslemSonucKodu(Index: Integer; const Astring: string);
    function  IslemSonucKodu_Specified(Index: Integer): boolean;
    procedure SetIslemSonucMesaji(Index: Integer; const Astring: string);
    function  IslemSonucMesaji_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property Liste:            ArrayOfOrnek  Index (IS_OPTN) read FListe write SetListe stored Liste_Specified;
    property IslemSonucKodu:   string        Index (IS_OPTN) read FIslemSonucKodu write SetIslemSonucKodu stored IslemSonucKodu_Specified;
    property IslemSonucMesaji: string        Index (IS_OPTN) read FIslemSonucMesaji write SetIslemSonucMesaji stored IslemSonucMesaji_Specified;
  end;



  // ************************************************************************ //
  // XML       : Test, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  Test = class(TRemotable)
  private
    FTestKodu: string;
    FTestKodu_Specified: boolean;
    FTestAdi: string;
    FTestAdi_Specified: boolean;
    FTestAktif: Boolean;
    procedure SetTestKodu(Index: Integer; const Astring: string);
    function  TestKodu_Specified(Index: Integer): boolean;
    procedure SetTestAdi(Index: Integer; const Astring: string);
    function  TestAdi_Specified(Index: Integer): boolean;
  published
    property TestKodu:  string   Index (IS_OPTN) read FTestKodu write SetTestKodu stored TestKodu_Specified;
    property TestAdi:   string   Index (IS_OPTN) read FTestAdi write SetTestAdi stored TestAdi_Specified;
    property TestAktif: Boolean  read FTestAktif write FTestAktif;
  end;



  // ************************************************************************ //
  // XML       : TestListesi, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  TestListesi = class(TRemotable)
  private
    FTestler: ArrayOfTest;
    FTestler_Specified: boolean;
    FIslemSonucKodu: string;
    FIslemSonucKodu_Specified: boolean;
    FIslemSonucMesaji: string;
    FIslemSonucMesaji_Specified: boolean;
    procedure SetTestler(Index: Integer; const AArrayOfTest: ArrayOfTest);
    function  Testler_Specified(Index: Integer): boolean;
    procedure SetIslemSonucKodu(Index: Integer; const Astring: string);
    function  IslemSonucKodu_Specified(Index: Integer): boolean;
    procedure SetIslemSonucMesaji(Index: Integer; const Astring: string);
    function  IslemSonucMesaji_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property Testler:          ArrayOfTest  Index (IS_OPTN) read FTestler write SetTestler stored Testler_Specified;
    property IslemSonucKodu:   string       Index (IS_OPTN) read FIslemSonucKodu write SetIslemSonucKodu stored IslemSonucKodu_Specified;
    property IslemSonucMesaji: string       Index (IS_OPTN) read FIslemSonucMesaji write SetIslemSonucMesaji stored IslemSonucMesaji_Specified;
  end;



  // ************************************************************************ //
  // XML       : OrnekFiltre, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  OrnekFiltre = class(TRemotable)
  private
    FKayitTarihiBaslangic: TXSDateTime;
    FKayitTarihiBitis: TXSDateTime;
    FOrnekNo: Double;
    FHastaTcKimlikNo: string;
    FHastaTcKimlikNo_Specified: boolean;
    FHastaProtokol: string;
    FHastaProtokol_Specified: boolean;
    FHastaKlinikKodu: string;
    FHastaKlinikKodu_Specified: boolean;
    FHastaDoktorKodu: string;
    FHastaDoktorKodu_Specified: boolean;
    FKurumKodu: Integer;
    procedure SetHastaTcKimlikNo(Index: Integer; const Astring: string);
    function  HastaTcKimlikNo_Specified(Index: Integer): boolean;
    procedure SetHastaProtokol(Index: Integer; const Astring: string);
    function  HastaProtokol_Specified(Index: Integer): boolean;
    procedure SetHastaKlinikKodu(Index: Integer; const Astring: string);
    function  HastaKlinikKodu_Specified(Index: Integer): boolean;
    procedure SetHastaDoktorKodu(Index: Integer; const Astring: string);
    function  HastaDoktorKodu_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property KayitTarihiBaslangic: TXSDateTime  Index (IS_NLBL) read FKayitTarihiBaslangic write FKayitTarihiBaslangic;
    property KayitTarihiBitis:     TXSDateTime  Index (IS_NLBL) read FKayitTarihiBitis write FKayitTarihiBitis;
    property OrnekNo:              Double       Index (IS_NLBL) read FOrnekNo write FOrnekNo;
    property HastaTcKimlikNo:      string       Index (IS_OPTN) read FHastaTcKimlikNo write SetHastaTcKimlikNo stored HastaTcKimlikNo_Specified;
    property HastaProtokol:        string       Index (IS_OPTN) read FHastaProtokol write SetHastaProtokol stored HastaProtokol_Specified;
    property HastaKlinikKodu:      string       Index (IS_OPTN) read FHastaKlinikKodu write SetHastaKlinikKodu stored HastaKlinikKodu_Specified;
    property HastaDoktorKodu:      string       Index (IS_OPTN) read FHastaDoktorKodu write SetHastaDoktorKodu stored HastaDoktorKodu_Specified;
    property KurumKodu:            Integer      read FKurumKodu write FKurumKodu;
  end;

  ArrayOfTetkik = array of Tetkik;              { "http://tempuri.org/"[GblCplx] }


  // ************************************************************************ //
  // XML       : OrnekTetkikBilgileri, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  OrnekTetkikBilgileri = class(TRemotable)
  private
    FListe: ArrayOfTetkik;
    FListe_Specified: boolean;
    FIslemSonucKodu: string;
    FIslemSonucKodu_Specified: boolean;
    FIslemSonucMesaji: string;
    FIslemSonucMesaji_Specified: boolean;
    procedure SetListe(Index: Integer; const AArrayOfTetkik: ArrayOfTetkik);
    function  Liste_Specified(Index: Integer): boolean;
    procedure SetIslemSonucKodu(Index: Integer; const Astring: string);
    function  IslemSonucKodu_Specified(Index: Integer): boolean;
    procedure SetIslemSonucMesaji(Index: Integer; const Astring: string);
    function  IslemSonucMesaji_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property Liste:            ArrayOfTetkik  Index (IS_OPTN) read FListe write SetListe stored Liste_Specified;
    property IslemSonucKodu:   string         Index (IS_OPTN) read FIslemSonucKodu write SetIslemSonucKodu stored IslemSonucKodu_Specified;
    property IslemSonucMesaji: string         Index (IS_OPTN) read FIslemSonucMesaji write SetIslemSonucMesaji stored IslemSonucMesaji_Specified;
  end;



  // ************************************************************************ //
  // XML       : Tetkik, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  Tetkik = class(TRemotable)
  private
    FKayitId: Double;
    FTestKodu: string;
    FTestKodu_Specified: boolean;
    FTestAdi: string;
    FTestAdi_Specified: boolean;
    FSonuc: string;
    FSonuc_Specified: boolean;
    FEkSonuc: string;
    FEkSonuc_Specified: boolean;
    FCalismaZamani: TXSDateTime;
    FOnay: OnayTipleri;
    FOnayTarihi: TXSDateTime;
    FRiskliMi: Boolean;
    FDusukYuksek: DusukYuksekTipi;
    FNormalDegerAraligi: string;
    FNormalDegerAraligi_Specified: boolean;
    FRiskDegerAraligi: string;
    FRiskDegerAraligi_Specified: boolean;
    FTestBirimi: string;
    FTestBirimi_Specified: boolean;
    procedure SetTestKodu(Index: Integer; const Astring: string);
    function  TestKodu_Specified(Index: Integer): boolean;
    procedure SetTestAdi(Index: Integer; const Astring: string);
    function  TestAdi_Specified(Index: Integer): boolean;
    procedure SetSonuc(Index: Integer; const Astring: string);
    function  Sonuc_Specified(Index: Integer): boolean;
    procedure SetEkSonuc(Index: Integer; const Astring: string);
    function  EkSonuc_Specified(Index: Integer): boolean;
    procedure SetNormalDegerAraligi(Index: Integer; const Astring: string);
    function  NormalDegerAraligi_Specified(Index: Integer): boolean;
    procedure SetRiskDegerAraligi(Index: Integer; const Astring: string);
    function  RiskDegerAraligi_Specified(Index: Integer): boolean;
    procedure SetTestBirimi(Index: Integer; const Astring: string);
    function  TestBirimi_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property KayitId:            Double           read FKayitId write FKayitId;
    property TestKodu:           string           Index (IS_OPTN) read FTestKodu write SetTestKodu stored TestKodu_Specified;
    property TestAdi:            string           Index (IS_OPTN) read FTestAdi write SetTestAdi stored TestAdi_Specified;
    property Sonuc:              string           Index (IS_OPTN) read FSonuc write SetSonuc stored Sonuc_Specified;
    property EkSonuc:            string           Index (IS_OPTN) read FEkSonuc write SetEkSonuc stored EkSonuc_Specified;
    property CalismaZamani:      TXSDateTime      Index (IS_NLBL) read FCalismaZamani write FCalismaZamani;
    property Onay:               OnayTipleri      read FOnay write FOnay;
    property OnayTarihi:         TXSDateTime      Index (IS_NLBL) read FOnayTarihi write FOnayTarihi;
    property RiskliMi:           Boolean          read FRiskliMi write FRiskliMi;
    property DusukYuksek:        DusukYuksekTipi  read FDusukYuksek write FDusukYuksek;
    property NormalDegerAraligi: string           Index (IS_OPTN) read FNormalDegerAraligi write SetNormalDegerAraligi stored NormalDegerAraligi_Specified;
    property RiskDegerAraligi:   string           Index (IS_OPTN) read FRiskDegerAraligi write SetRiskDegerAraligi stored RiskDegerAraligi_Specified;
    property TestBirimi:         string           Index (IS_OPTN) read FTestBirimi write SetTestBirimi stored TestBirimi_Specified;
  end;



  // ************************************************************************ //
  // XML       : KullaniciBilgisi, global, <complexType>
  // Namespace : http://tempuri.org/
  // Info      : Header
  // ************************************************************************ //
  KullaniciBilgisi2 = class(TSOAPHeader)
  private
    FKullaniciAdi: string;
    FKullaniciAdi_Specified: boolean;
    FKullaniciSifresi: string;
    FKullaniciSifresi_Specified: boolean;
    procedure SetKullaniciAdi(Index: Integer; const Astring: string);
    function  KullaniciAdi_Specified(Index: Integer): boolean;
    procedure SetKullaniciSifresi(Index: Integer; const Astring: string);
    function  KullaniciSifresi_Specified(Index: Integer): boolean;
  published
    property KullaniciAdi:     string  Index (IS_OPTN) read FKullaniciAdi write SetKullaniciAdi stored KullaniciAdi_Specified;
    property KullaniciSifresi: string  Index (IS_OPTN) read FKullaniciSifresi write SetKullaniciSifresi stored KullaniciSifresi_Specified;
  end;



  // ************************************************************************ //
  // XML       : KullaniciBilgisi, global, <element>
  // Namespace : http://tempuri.org/
  // Info      : Header
  // ************************************************************************ //
  KullaniciBilgisi = class(KullaniciBilgisi2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : Ornek, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  Ornek = class(TRemotable)
  private
    FOrnekNo: Double;
    FOrnekGelisTarihi: TXSDateTime;
    FOrnekAciliyet: Aciliyet;
    FHastaTCKimlikNo: string;
    FHastaTCKimlikNo_Specified: boolean;
    FHastaAdi: string;
    FHastaAdi_Specified: boolean;
    FHastaSoyadi: string;
    FHastaSoyadi_Specified: boolean;
    FHastaDogumTarihi: TXSDateTime;
    FHastaProtokol: string;
    FHastaProtokol_Specified: boolean;
    FHastaCinsiyet: Cinsiyet;
    FHastaKlinikKodu: string;
    FHastaKlinikKodu_Specified: boolean;
    FHastaKlinikAdi: string;
    FHastaKlinikAdi_Specified: boolean;
    FHastaKlinikTuru: KlinikTur;
    FHastaOnTani: string;
    FHastaOnTani_Specified: boolean;
    FHastaDoktorKodu: string;
    FHastaDoktorKodu_Specified: boolean;
    FHastaDoktorAdi: string;
    FHastaDoktorAdi_Specified: boolean;
    procedure SetHastaTCKimlikNo(Index: Integer; const Astring: string);
    function  HastaTCKimlikNo_Specified(Index: Integer): boolean;
    procedure SetHastaAdi(Index: Integer; const Astring: string);
    function  HastaAdi_Specified(Index: Integer): boolean;
    procedure SetHastaSoyadi(Index: Integer; const Astring: string);
    function  HastaSoyadi_Specified(Index: Integer): boolean;
    procedure SetHastaProtokol(Index: Integer; const Astring: string);
    function  HastaProtokol_Specified(Index: Integer): boolean;
    procedure SetHastaKlinikKodu(Index: Integer; const Astring: string);
    function  HastaKlinikKodu_Specified(Index: Integer): boolean;
    procedure SetHastaKlinikAdi(Index: Integer; const Astring: string);
    function  HastaKlinikAdi_Specified(Index: Integer): boolean;
    procedure SetHastaOnTani(Index: Integer; const Astring: string);
    function  HastaOnTani_Specified(Index: Integer): boolean;
    procedure SetHastaDoktorKodu(Index: Integer; const Astring: string);
    function  HastaDoktorKodu_Specified(Index: Integer): boolean;
    procedure SetHastaDoktorAdi(Index: Integer; const Astring: string);
    function  HastaDoktorAdi_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property OrnekNo:          Double       read FOrnekNo write FOrnekNo;
    property OrnekGelisTarihi: TXSDateTime  Index (IS_NLBL) read FOrnekGelisTarihi write FOrnekGelisTarihi;
    property OrnekAciliyet:    Aciliyet     read FOrnekAciliyet write FOrnekAciliyet;
    property HastaTCKimlikNo:  string       Index (IS_OPTN) read FHastaTCKimlikNo write SetHastaTCKimlikNo stored HastaTCKimlikNo_Specified;
    property HastaAdi:         string       Index (IS_OPTN) read FHastaAdi write SetHastaAdi stored HastaAdi_Specified;
    property HastaSoyadi:      string       Index (IS_OPTN) read FHastaSoyadi write SetHastaSoyadi stored HastaSoyadi_Specified;
    property HastaDogumTarihi: TXSDateTime  Index (IS_NLBL) read FHastaDogumTarihi write FHastaDogumTarihi;
    property HastaProtokol:    string       Index (IS_OPTN) read FHastaProtokol write SetHastaProtokol stored HastaProtokol_Specified;
    property HastaCinsiyet:    Cinsiyet     read FHastaCinsiyet write FHastaCinsiyet;
    property HastaKlinikKodu:  string       Index (IS_OPTN) read FHastaKlinikKodu write SetHastaKlinikKodu stored HastaKlinikKodu_Specified;
    property HastaKlinikAdi:   string       Index (IS_OPTN) read FHastaKlinikAdi write SetHastaKlinikAdi stored HastaKlinikAdi_Specified;
    property HastaKlinikTuru:  KlinikTur    read FHastaKlinikTuru write FHastaKlinikTuru;
    property HastaOnTani:      string       Index (IS_OPTN) read FHastaOnTani write SetHastaOnTani stored HastaOnTani_Specified;
    property HastaDoktorKodu:  string       Index (IS_OPTN) read FHastaDoktorKodu write SetHastaDoktorKodu stored HastaDoktorKodu_Specified;
    property HastaDoktorAdi:   string       Index (IS_OPTN) read FHastaDoktorAdi write SetHastaDoktorAdi stored HastaDoktorAdi_Specified;
  end;


  // ************************************************************************ //
  // Namespace : http://tempuri.org/
  // soapAction: http://tempuri.org/%operationName%
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : document
  // use       : literal
  // binding   : WinLisWebServiceSoap12
  // service   : WinLisWebService
  // port      : WinLisWebServiceSoap12
  // URL       : http://88.247.189.222:8080/dislab/service.asmx
  // ************************************************************************ //
  WinLisWebServiceSoap = interface(IInvokable)
  ['{ABA9C06C-43FA-3AAE-964B-7E23F7CDF888}']

    // Headers: KullaniciBilgisi:pIn
    function  IstemTarihineGoreHastaListesiVer(const Istem: OrnekFiltre): OrnekListesi; stdcall;

    // Headers: KullaniciBilgisi:pIn
    function  IstenenTetkikBilgisi(const OrnekNo: Integer): OrnekTetkikBilgileri; stdcall;

    // Headers: KullaniciBilgisi:pIn
    function  SonucKaydet(const OrnekNo: Integer; const TetkikSonucBilgisi: ArrayOfTetkik): OrnekTetkikBilgileri; stdcall;

    // Headers: KullaniciBilgisi:pIn
    function  TestListesiGetir: TestListesi; stdcall;
  end;

function GetWinLisWebServiceSoap(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): WinLisWebServiceSoap;


implementation
  uses SysUtils;

function GetWinLisWebServiceSoap(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): WinLisWebServiceSoap;
const
  defWSDL = 'D:\MyDOCS\WSDL dosyalarý\Winsoftservice.wsdl';
  defURL  = 'http://88.247.189.222:8080/dislab/service.asmx';
  defSvc  = 'WinLisWebService';
  defPrt  = 'WinLisWebServiceSoap12';
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
    Result := (RIO as WinLisWebServiceSoap);
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


destructor OrnekListesi.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FListe)-1 do
    SysUtils.FreeAndNil(FListe[I]);
  System.SetLength(FListe, 0);
  inherited Destroy;
end;

procedure OrnekListesi.SetListe(Index: Integer; const AArrayOfOrnek: ArrayOfOrnek);
begin
  FListe := AArrayOfOrnek;
  FListe_Specified := True;
end;

function OrnekListesi.Liste_Specified(Index: Integer): boolean;
begin
  Result := FListe_Specified;
end;

procedure OrnekListesi.SetIslemSonucKodu(Index: Integer; const Astring: string);
begin
  FIslemSonucKodu := Astring;
  FIslemSonucKodu_Specified := True;
end;

function OrnekListesi.IslemSonucKodu_Specified(Index: Integer): boolean;
begin
  Result := FIslemSonucKodu_Specified;
end;

procedure OrnekListesi.SetIslemSonucMesaji(Index: Integer; const Astring: string);
begin
  FIslemSonucMesaji := Astring;
  FIslemSonucMesaji_Specified := True;
end;

function OrnekListesi.IslemSonucMesaji_Specified(Index: Integer): boolean;
begin
  Result := FIslemSonucMesaji_Specified;
end;

procedure Test.SetTestKodu(Index: Integer; const Astring: string);
begin
  FTestKodu := Astring;
  FTestKodu_Specified := True;
end;

function Test.TestKodu_Specified(Index: Integer): boolean;
begin
  Result := FTestKodu_Specified;
end;

procedure Test.SetTestAdi(Index: Integer; const Astring: string);
begin
  FTestAdi := Astring;
  FTestAdi_Specified := True;
end;

function Test.TestAdi_Specified(Index: Integer): boolean;
begin
  Result := FTestAdi_Specified;
end;

destructor TestListesi.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FTestler)-1 do
    SysUtils.FreeAndNil(FTestler[I]);
  System.SetLength(FTestler, 0);
  inherited Destroy;
end;

procedure TestListesi.SetTestler(Index: Integer; const AArrayOfTest: ArrayOfTest);
begin
  FTestler := AArrayOfTest;
  FTestler_Specified := True;
end;

function TestListesi.Testler_Specified(Index: Integer): boolean;
begin
  Result := FTestler_Specified;
end;

procedure TestListesi.SetIslemSonucKodu(Index: Integer; const Astring: string);
begin
  FIslemSonucKodu := Astring;
  FIslemSonucKodu_Specified := True;
end;

function TestListesi.IslemSonucKodu_Specified(Index: Integer): boolean;
begin
  Result := FIslemSonucKodu_Specified;
end;

procedure TestListesi.SetIslemSonucMesaji(Index: Integer; const Astring: string);
begin
  FIslemSonucMesaji := Astring;
  FIslemSonucMesaji_Specified := True;
end;

function TestListesi.IslemSonucMesaji_Specified(Index: Integer): boolean;
begin
  Result := FIslemSonucMesaji_Specified;
end;

destructor OrnekFiltre.Destroy;
begin
  SysUtils.FreeAndNil(FKayitTarihiBaslangic);
  SysUtils.FreeAndNil(FKayitTarihiBitis);
  inherited Destroy;
end;

procedure OrnekFiltre.SetHastaTcKimlikNo(Index: Integer; const Astring: string);
begin
  FHastaTcKimlikNo := Astring;
  FHastaTcKimlikNo_Specified := True;
end;

function OrnekFiltre.HastaTcKimlikNo_Specified(Index: Integer): boolean;
begin
  Result := FHastaTcKimlikNo_Specified;
end;

procedure OrnekFiltre.SetHastaProtokol(Index: Integer; const Astring: string);
begin
  FHastaProtokol := Astring;
  FHastaProtokol_Specified := True;
end;

function OrnekFiltre.HastaProtokol_Specified(Index: Integer): boolean;
begin
  Result := FHastaProtokol_Specified;
end;

procedure OrnekFiltre.SetHastaKlinikKodu(Index: Integer; const Astring: string);
begin
  FHastaKlinikKodu := Astring;
  FHastaKlinikKodu_Specified := True;
end;

function OrnekFiltre.HastaKlinikKodu_Specified(Index: Integer): boolean;
begin
  Result := FHastaKlinikKodu_Specified;
end;

procedure OrnekFiltre.SetHastaDoktorKodu(Index: Integer; const Astring: string);
begin
  FHastaDoktorKodu := Astring;
  FHastaDoktorKodu_Specified := True;
end;

function OrnekFiltre.HastaDoktorKodu_Specified(Index: Integer): boolean;
begin
  Result := FHastaDoktorKodu_Specified;
end;

destructor OrnekTetkikBilgileri.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FListe)-1 do
    SysUtils.FreeAndNil(FListe[I]);
  System.SetLength(FListe, 0);
  inherited Destroy;
end;

procedure OrnekTetkikBilgileri.SetListe(Index: Integer; const AArrayOfTetkik: ArrayOfTetkik);
begin
  FListe := AArrayOfTetkik;
  FListe_Specified := True;
end;

function OrnekTetkikBilgileri.Liste_Specified(Index: Integer): boolean;
begin
  Result := FListe_Specified;
end;

procedure OrnekTetkikBilgileri.SetIslemSonucKodu(Index: Integer; const Astring: string);
begin
  FIslemSonucKodu := Astring;
  FIslemSonucKodu_Specified := True;
end;

function OrnekTetkikBilgileri.IslemSonucKodu_Specified(Index: Integer): boolean;
begin
  Result := FIslemSonucKodu_Specified;
end;

procedure OrnekTetkikBilgileri.SetIslemSonucMesaji(Index: Integer; const Astring: string);
begin
  FIslemSonucMesaji := Astring;
  FIslemSonucMesaji_Specified := True;
end;

function OrnekTetkikBilgileri.IslemSonucMesaji_Specified(Index: Integer): boolean;
begin
  Result := FIslemSonucMesaji_Specified;
end;

destructor Tetkik.Destroy;
begin
  SysUtils.FreeAndNil(FCalismaZamani);
  SysUtils.FreeAndNil(FOnayTarihi);
  inherited Destroy;
end;

procedure Tetkik.SetTestKodu(Index: Integer; const Astring: string);
begin
  FTestKodu := Astring;
  FTestKodu_Specified := True;
end;

function Tetkik.TestKodu_Specified(Index: Integer): boolean;
begin
  Result := FTestKodu_Specified;
end;

procedure Tetkik.SetTestAdi(Index: Integer; const Astring: string);
begin
  FTestAdi := Astring;
  FTestAdi_Specified := True;
end;

function Tetkik.TestAdi_Specified(Index: Integer): boolean;
begin
  Result := FTestAdi_Specified;
end;

procedure Tetkik.SetSonuc(Index: Integer; const Astring: string);
begin
  FSonuc := Astring;
  FSonuc_Specified := True;
end;

function Tetkik.Sonuc_Specified(Index: Integer): boolean;
begin
  Result := FSonuc_Specified;
end;

procedure Tetkik.SetEkSonuc(Index: Integer; const Astring: string);
begin
  FEkSonuc := Astring;
  FEkSonuc_Specified := True;
end;

function Tetkik.EkSonuc_Specified(Index: Integer): boolean;
begin
  Result := FEkSonuc_Specified;
end;

procedure Tetkik.SetNormalDegerAraligi(Index: Integer; const Astring: string);
begin
  FNormalDegerAraligi := Astring;
  FNormalDegerAraligi_Specified := True;
end;

function Tetkik.NormalDegerAraligi_Specified(Index: Integer): boolean;
begin
  Result := FNormalDegerAraligi_Specified;
end;

procedure Tetkik.SetRiskDegerAraligi(Index: Integer; const Astring: string);
begin
  FRiskDegerAraligi := Astring;
  FRiskDegerAraligi_Specified := True;
end;

function Tetkik.RiskDegerAraligi_Specified(Index: Integer): boolean;
begin
  Result := FRiskDegerAraligi_Specified;
end;

procedure Tetkik.SetTestBirimi(Index: Integer; const Astring: string);
begin
  FTestBirimi := Astring;
  FTestBirimi_Specified := True;
end;

function Tetkik.TestBirimi_Specified(Index: Integer): boolean;
begin
  Result := FTestBirimi_Specified;
end;

procedure KullaniciBilgisi2.SetKullaniciAdi(Index: Integer; const Astring: string);
begin
  FKullaniciAdi := Astring;
  FKullaniciAdi_Specified := True;
end;

function KullaniciBilgisi2.KullaniciAdi_Specified(Index: Integer): boolean;
begin
  Result := FKullaniciAdi_Specified;
end;

procedure KullaniciBilgisi2.SetKullaniciSifresi(Index: Integer; const Astring: string);
begin
  FKullaniciSifresi := Astring;
  FKullaniciSifresi_Specified := True;
end;

function KullaniciBilgisi2.KullaniciSifresi_Specified(Index: Integer): boolean;
begin
  Result := FKullaniciSifresi_Specified;
end;

destructor Ornek.Destroy;
begin
  SysUtils.FreeAndNil(FOrnekGelisTarihi);
  SysUtils.FreeAndNil(FHastaDogumTarihi);
  inherited Destroy;
end;

procedure Ornek.SetHastaTCKimlikNo(Index: Integer; const Astring: string);
begin
  FHastaTCKimlikNo := Astring;
  FHastaTCKimlikNo_Specified := True;
end;

function Ornek.HastaTCKimlikNo_Specified(Index: Integer): boolean;
begin
  Result := FHastaTCKimlikNo_Specified;
end;

procedure Ornek.SetHastaAdi(Index: Integer; const Astring: string);
begin
  FHastaAdi := Astring;
  FHastaAdi_Specified := True;
end;

function Ornek.HastaAdi_Specified(Index: Integer): boolean;
begin
  Result := FHastaAdi_Specified;
end;

procedure Ornek.SetHastaSoyadi(Index: Integer; const Astring: string);
begin
  FHastaSoyadi := Astring;
  FHastaSoyadi_Specified := True;
end;

function Ornek.HastaSoyadi_Specified(Index: Integer): boolean;
begin
  Result := FHastaSoyadi_Specified;
end;

procedure Ornek.SetHastaProtokol(Index: Integer; const Astring: string);
begin
  FHastaProtokol := Astring;
  FHastaProtokol_Specified := True;
end;

function Ornek.HastaProtokol_Specified(Index: Integer): boolean;
begin
  Result := FHastaProtokol_Specified;
end;

procedure Ornek.SetHastaKlinikKodu(Index: Integer; const Astring: string);
begin
  FHastaKlinikKodu := Astring;
  FHastaKlinikKodu_Specified := True;
end;

function Ornek.HastaKlinikKodu_Specified(Index: Integer): boolean;
begin
  Result := FHastaKlinikKodu_Specified;
end;

procedure Ornek.SetHastaKlinikAdi(Index: Integer; const Astring: string);
begin
  FHastaKlinikAdi := Astring;
  FHastaKlinikAdi_Specified := True;
end;

function Ornek.HastaKlinikAdi_Specified(Index: Integer): boolean;
begin
  Result := FHastaKlinikAdi_Specified;
end;

procedure Ornek.SetHastaOnTani(Index: Integer; const Astring: string);
begin
  FHastaOnTani := Astring;
  FHastaOnTani_Specified := True;
end;

function Ornek.HastaOnTani_Specified(Index: Integer): boolean;
begin
  Result := FHastaOnTani_Specified;
end;

procedure Ornek.SetHastaDoktorKodu(Index: Integer; const Astring: string);
begin
  FHastaDoktorKodu := Astring;
  FHastaDoktorKodu_Specified := True;
end;

function Ornek.HastaDoktorKodu_Specified(Index: Integer): boolean;
begin
  Result := FHastaDoktorKodu_Specified;
end;

procedure Ornek.SetHastaDoktorAdi(Index: Integer; const Astring: string);
begin
  FHastaDoktorAdi := Astring;
  FHastaDoktorAdi_Specified := True;
end;

function Ornek.HastaDoktorAdi_Specified(Index: Integer): boolean;
begin
  Result := FHastaDoktorAdi_Specified;
end;

initialization
  { WinLisWebServiceSoap }
  InvRegistry.RegisterInterface(TypeInfo(WinLisWebServiceSoap), 'http://tempuri.org/', 'utf-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(WinLisWebServiceSoap), 'http://tempuri.org/%operationName%');
  InvRegistry.RegisterInvokeOptions(TypeInfo(WinLisWebServiceSoap), ioDocument);
  InvRegistry.RegisterInvokeOptions(TypeInfo(WinLisWebServiceSoap), ioSOAP12);
  { WinLisWebServiceSoap.IstemTarihineGoreHastaListesiVer }
  InvRegistry.RegisterMethodInfo(TypeInfo(WinLisWebServiceSoap), 'IstemTarihineGoreHastaListesiVer', '',
                                 '[ReturnName="IstemTarihineGoreHastaListesiVerResult"]', IS_OPTN);
  InvRegistry.RegisterHeaderClass(TypeInfo(WinLisWebServiceSoap), KullaniciBilgisi, 'KullaniciBilgisi', 'http://tempuri.org/');
  { WinLisWebServiceSoap.IstenenTetkikBilgisi }
  InvRegistry.RegisterMethodInfo(TypeInfo(WinLisWebServiceSoap), 'IstenenTetkikBilgisi', '',
                                 '[ReturnName="IstenenTetkikBilgisiResult"]', IS_OPTN);
  { WinLisWebServiceSoap.SonucKaydet }
  InvRegistry.RegisterMethodInfo(TypeInfo(WinLisWebServiceSoap), 'SonucKaydet', '',
                                 '[ReturnName="SonucKaydetResult"]', IS_OPTN);
  InvRegistry.RegisterParamInfo(TypeInfo(WinLisWebServiceSoap), 'SonucKaydet', 'TetkikSonucBilgisi', '',
                                '[ArrayItemName="Tetkik"]');
  { WinLisWebServiceSoap.TestListesiGetir }
  InvRegistry.RegisterMethodInfo(TypeInfo(WinLisWebServiceSoap), 'TestListesiGetir', '',
                                 '[ReturnName="TestListesiGetirResult"]', IS_OPTN);
  RemClassRegistry.RegisterXSInfo(TypeInfo(DusukYuksekTipi), 'http://tempuri.org/', 'DusukYuksekTipi');
  RemClassRegistry.RegisterXSInfo(TypeInfo(OnayTipleri), 'http://tempuri.org/', 'OnayTipleri');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfTest), 'http://tempuri.org/', 'ArrayOfTest');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfOrnek), 'http://tempuri.org/', 'ArrayOfOrnek');
  RemClassRegistry.RegisterXSClass(OrnekListesi, 'http://tempuri.org/', 'OrnekListesi');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(OrnekListesi), 'Liste', '[ArrayItemName="Ornek"]');
  RemClassRegistry.RegisterXSClass(Test, 'http://tempuri.org/', 'Test');
  RemClassRegistry.RegisterXSClass(TestListesi, 'http://tempuri.org/', 'TestListesi');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(TestListesi), 'Testler', '[ArrayItemName="Test"]');
  RemClassRegistry.RegisterXSClass(OrnekFiltre, 'http://tempuri.org/', 'OrnekFiltre');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfTetkik), 'http://tempuri.org/', 'ArrayOfTetkik');
  RemClassRegistry.RegisterXSClass(OrnekTetkikBilgileri, 'http://tempuri.org/', 'OrnekTetkikBilgileri');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(OrnekTetkikBilgileri), 'Liste', '[ArrayItemName="Tetkik"]');
  RemClassRegistry.RegisterXSClass(Tetkik, 'http://tempuri.org/', 'Tetkik');
  RemClassRegistry.RegisterXSClass(KullaniciBilgisi2, 'http://tempuri.org/', 'KullaniciBilgisi2', 'KullaniciBilgisi');
  RemClassRegistry.RegisterXSClass(KullaniciBilgisi, 'http://tempuri.org/', 'KullaniciBilgisi');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Aciliyet), 'http://tempuri.org/', 'Aciliyet');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Cinsiyet), 'http://tempuri.org/', 'Cinsiyet');
  RemClassRegistry.RegisterXSInfo(TypeInfo(KlinikTur), 'http://tempuri.org/', 'KlinikTur');
  RemClassRegistry.RegisterXSClass(Ornek, 'http://tempuri.org/', 'Ornek');

end.