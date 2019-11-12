// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : D:\Projeler\DELPHI\Diyaliz\Dializ2007_M3_\Gemsoft.wsdl
//  >Import : D:\Projeler\DELPHI\Diyaliz\Dializ2007_M3_\Gemsoft.wsdl>0
// Encoding : utf-8
// Version  : 1.0
// (10.10.2019 13:00:02 - - $Rev: 45757 $)
// ************************************************************************ //

unit GemsoftServiceBIYOTIP;

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
  // !:long            - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:dateTime        - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:string          - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:int             - "http://www.w3.org/2001/XMLSchema"[Gbl]

  TahlilKaydetResponse = class;                 { "http://tempuri.org/"[Lit][GblElm] }
  HastaKaydetResponse  = class;                 { "http://tempuri.org/"[Lit][GblElm] }
  hasta                = class;                 { "http://tempuri.org/"[GblCplx] }
  sonucBilgisi         = class;                 { "http://tempuri.org/"[GblCplx] }
  HastaOrnekNoListele  = class;                 { "http://tempuri.org/"[Lit][GblElm] }
  KurumTahlilSonuclari = class;                 { "http://tempuri.org/"[Lit][GblElm] }
  HastaKaydet          = class;                 { "http://tempuri.org/"[Lit][GblElm] }
  TahlilKaydet         = class;                 { "http://tempuri.org/"[Lit][GblElm] }
  KurumTahlilSonuclariResponse = class;         { "http://tempuri.org/"[Lit][GblElm] }
  HastaOrnekNoListeleResponse = class;          { "http://tempuri.org/"[Lit][GblElm] }
  OrnekNoyaGoreSorgulaResponse = class;         { "http://tempuri.org/"[Lit][GblElm] }
  LaboratuarIstekSonucuResponse = class;        { "http://tempuri.org/"[Lit][GblElm] }
  LaboratuarIstekGonderResponse = class;        { "http://tempuri.org/"[Lit][GblElm] }
  LaboratuarIstekSonucu = class;                { "http://tempuri.org/"[Lit][GblElm] }
  LaboratuarIstekGonder = class;                { "http://tempuri.org/"[Lit][GblElm] }
  tetkikSonucu         = class;                 { "http://tempuri.org/"[GblCplx] }
  OrnekNoyaGoreSorgula = class;                 { "http://tempuri.org/"[Lit][GblElm] }



  // ************************************************************************ //
  // XML       : TahlilKaydetResponse, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  TahlilKaydetResponse = class(TRemotable)
  private
    FTahlilKaydetResult: sonucBilgisi;
    FTahlilKaydetResult_Specified: boolean;
    procedure SetTahlilKaydetResult(Index: Integer; const AsonucBilgisi: sonucBilgisi);
    function  TahlilKaydetResult_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property TahlilKaydetResult: sonucBilgisi  Index (IS_OPTN) read FTahlilKaydetResult write SetTahlilKaydetResult stored TahlilKaydetResult_Specified;
  end;



  // ************************************************************************ //
  // XML       : HastaKaydetResponse, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  HastaKaydetResponse = class(TRemotable)
  private
    FHastaKaydetResult: sonucBilgisi;
    FHastaKaydetResult_Specified: boolean;
    procedure SetHastaKaydetResult(Index: Integer; const AsonucBilgisi: sonucBilgisi);
    function  HastaKaydetResult_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property HastaKaydetResult: sonucBilgisi  Index (IS_OPTN) read FHastaKaydetResult write SetHastaKaydetResult stored HastaKaydetResult_Specified;
  end;



  // ************************************************************************ //
  // XML       : hasta, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  hasta = class(TRemotable)
  private
    FAd: string;
    FAd_Specified: boolean;
    FSoyad: string;
    FSoyad_Specified: boolean;
    FTCNo: string;
    FTCNo_Specified: boolean;
    FDogumTarihi: TXSDateTime;
    FAnaAdi: string;
    FAnaAdi_Specified: boolean;
    FBabaAdi: string;
    FBabaAdi_Specified: boolean;
    FCinsiyet: string;
    FCinsiyet_Specified: boolean;
    procedure SetAd(Index: Integer; const Astring: string);
    function  Ad_Specified(Index: Integer): boolean;
    procedure SetSoyad(Index: Integer; const Astring: string);
    function  Soyad_Specified(Index: Integer): boolean;
    procedure SetTCNo(Index: Integer; const Astring: string);
    function  TCNo_Specified(Index: Integer): boolean;
    procedure SetAnaAdi(Index: Integer; const Astring: string);
    function  AnaAdi_Specified(Index: Integer): boolean;
    procedure SetBabaAdi(Index: Integer; const Astring: string);
    function  BabaAdi_Specified(Index: Integer): boolean;
    procedure SetCinsiyet(Index: Integer; const Astring: string);
    function  Cinsiyet_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property Ad:          string       Index (IS_OPTN) read FAd write SetAd stored Ad_Specified;
    property Soyad:       string       Index (IS_OPTN) read FSoyad write SetSoyad stored Soyad_Specified;
    property TCNo:        string       Index (IS_OPTN) read FTCNo write SetTCNo stored TCNo_Specified;
    property DogumTarihi: TXSDateTime  read FDogumTarihi write FDogumTarihi;
    property AnaAdi:      string       Index (IS_OPTN) read FAnaAdi write SetAnaAdi stored AnaAdi_Specified;
    property BabaAdi:     string       Index (IS_OPTN) read FBabaAdi write SetBabaAdi stored BabaAdi_Specified;
    property Cinsiyet:    string       Index (IS_OPTN) read FCinsiyet write SetCinsiyet stored Cinsiyet_Specified;
  end;



  // ************************************************************************ //
  // XML       : sonucBilgisi, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  sonucBilgisi = class(TRemotable)
  private
    FSonucKodu: string;
    FSonucKodu_Specified: boolean;
    FSonucMesaji: string;
    FSonucMesaji_Specified: boolean;
    FDonenId: Int64;
    procedure SetSonucKodu(Index: Integer; const Astring: string);
    function  SonucKodu_Specified(Index: Integer): boolean;
    procedure SetSonucMesaji(Index: Integer; const Astring: string);
    function  SonucMesaji_Specified(Index: Integer): boolean;
  published
    property SonucKodu:   string  Index (IS_OPTN) read FSonucKodu write SetSonucKodu stored SonucKodu_Specified;
    property SonucMesaji: string  Index (IS_OPTN) read FSonucMesaji write SetSonucMesaji stored SonucMesaji_Specified;
    property DonenId:     Int64   read FDonenId write FDonenId;
  end;



  // ************************************************************************ //
  // XML       : HastaOrnekNoListele, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  HastaOrnekNoListele = class(TRemotable)
  private
    FkurumKodu: string;
    FkurumKodu_Specified: boolean;
    FkurumSifre: string;
    FkurumSifre_Specified: boolean;
    Ftarih1: TXSDateTime;
    Ftarih2: TXSDateTime;
    procedure SetkurumKodu(Index: Integer; const Astring: string);
    function  kurumKodu_Specified(Index: Integer): boolean;
    procedure SetkurumSifre(Index: Integer; const Astring: string);
    function  kurumSifre_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property kurumKodu:  string       Index (IS_OPTN) read FkurumKodu write SetkurumKodu stored kurumKodu_Specified;
    property kurumSifre: string       Index (IS_OPTN) read FkurumSifre write SetkurumSifre stored kurumSifre_Specified;
    property tarih1:     TXSDateTime  read Ftarih1 write Ftarih1;
    property tarih2:     TXSDateTime  read Ftarih2 write Ftarih2;
  end;



  // ************************************************************************ //
  // XML       : KurumTahlilSonuclari, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  KurumTahlilSonuclari = class(TRemotable)
  private
    FkurumKodu: string;
    FkurumKodu_Specified: boolean;
    FkurumSifre: string;
    FkurumSifre_Specified: boolean;
    Ftarih1: TXSDateTime;
    Ftarih2: TXSDateTime;
    procedure SetkurumKodu(Index: Integer; const Astring: string);
    function  kurumKodu_Specified(Index: Integer): boolean;
    procedure SetkurumSifre(Index: Integer; const Astring: string);
    function  kurumSifre_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property kurumKodu:  string       Index (IS_OPTN) read FkurumKodu write SetkurumKodu stored kurumKodu_Specified;
    property kurumSifre: string       Index (IS_OPTN) read FkurumSifre write SetkurumSifre stored kurumSifre_Specified;
    property tarih1:     TXSDateTime  read Ftarih1 write Ftarih1;
    property tarih2:     TXSDateTime  read Ftarih2 write Ftarih2;
  end;



  // ************************************************************************ //
  // XML       : HastaKaydet, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  HastaKaydet = class(TRemotable)
  private
    FkurumKodu: string;
    FkurumKodu_Specified: boolean;
    FkurumSifre: string;
    FkurumSifre_Specified: boolean;
    FTCNo: string;
    FTCNo_Specified: boolean;
    Fad: string;
    Fad_Specified: boolean;
    Fsoyad: string;
    Fsoyad_Specified: boolean;
    FdogumTarihi: TXSDateTime;
    FbabaAdi: string;
    FbabaAdi_Specified: boolean;
    FanaAdi: string;
    FanaAdi_Specified: boolean;
    Fcinsiyet: string;
    Fcinsiyet_Specified: boolean;
    procedure SetkurumKodu(Index: Integer; const Astring: string);
    function  kurumKodu_Specified(Index: Integer): boolean;
    procedure SetkurumSifre(Index: Integer; const Astring: string);
    function  kurumSifre_Specified(Index: Integer): boolean;
    procedure SetTCNo(Index: Integer; const Astring: string);
    function  TCNo_Specified(Index: Integer): boolean;
    procedure Setad(Index: Integer; const Astring: string);
    function  ad_Specified(Index: Integer): boolean;
    procedure Setsoyad(Index: Integer; const Astring: string);
    function  soyad_Specified(Index: Integer): boolean;
    procedure SetbabaAdi(Index: Integer; const Astring: string);
    function  babaAdi_Specified(Index: Integer): boolean;
    procedure SetanaAdi(Index: Integer; const Astring: string);
    function  anaAdi_Specified(Index: Integer): boolean;
    procedure Setcinsiyet(Index: Integer; const Astring: string);
    function  cinsiyet_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property kurumKodu:   string       Index (IS_OPTN) read FkurumKodu write SetkurumKodu stored kurumKodu_Specified;
    property kurumSifre:  string       Index (IS_OPTN) read FkurumSifre write SetkurumSifre stored kurumSifre_Specified;
    property TCNo:        string       Index (IS_OPTN) read FTCNo write SetTCNo stored TCNo_Specified;
    property ad:          string       Index (IS_OPTN) read Fad write Setad stored ad_Specified;
    property soyad:       string       Index (IS_OPTN) read Fsoyad write Setsoyad stored soyad_Specified;
    property dogumTarihi: TXSDateTime  read FdogumTarihi write FdogumTarihi;
    property babaAdi:     string       Index (IS_OPTN) read FbabaAdi write SetbabaAdi stored babaAdi_Specified;
    property anaAdi:      string       Index (IS_OPTN) read FanaAdi write SetanaAdi stored anaAdi_Specified;
    property cinsiyet:    string       Index (IS_OPTN) read Fcinsiyet write Setcinsiyet stored cinsiyet_Specified;
  end;



  // ************************************************************************ //
  // XML       : TahlilKaydet, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  TahlilKaydet = class(TRemotable)
  private
    Ftarih: TXSDateTime;
    Fsaat: string;
    Fsaat_Specified: boolean;
    FkurumKodu: string;
    FkurumKodu_Specified: boolean;
    FkurumSifre: string;
    FkurumSifre_Specified: boolean;
    FtcNo: string;
    FtcNo_Specified: boolean;
    FhizmetKodu: string;
    FhizmetKodu_Specified: boolean;
    procedure Setsaat(Index: Integer; const Astring: string);
    function  saat_Specified(Index: Integer): boolean;
    procedure SetkurumKodu(Index: Integer; const Astring: string);
    function  kurumKodu_Specified(Index: Integer): boolean;
    procedure SetkurumSifre(Index: Integer; const Astring: string);
    function  kurumSifre_Specified(Index: Integer): boolean;
    procedure SettcNo(Index: Integer; const Astring: string);
    function  tcNo_Specified(Index: Integer): boolean;
    procedure SethizmetKodu(Index: Integer; const Astring: string);
    function  hizmetKodu_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property tarih:      TXSDateTime  read Ftarih write Ftarih;
    property saat:       string       Index (IS_OPTN) read Fsaat write Setsaat stored saat_Specified;
    property kurumKodu:  string       Index (IS_OPTN) read FkurumKodu write SetkurumKodu stored kurumKodu_Specified;
    property kurumSifre: string       Index (IS_OPTN) read FkurumSifre write SetkurumSifre stored kurumSifre_Specified;
    property tcNo:       string       Index (IS_OPTN) read FtcNo write SettcNo stored tcNo_Specified;
    property hizmetKodu: string       Index (IS_OPTN) read FhizmetKodu write SethizmetKodu stored hizmetKodu_Specified;
  end;

  ArrayOfTetkikSonucu = array of tetkikSonucu;   { "http://tempuri.org/"[GblCplx] }


  // ************************************************************************ //
  // XML       : KurumTahlilSonuclariResponse, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  KurumTahlilSonuclariResponse = class(TRemotable)
  private
    FKurumTahlilSonuclariResult: sonucBilgisi;
    FKurumTahlilSonuclariResult_Specified: boolean;
    FtetkikSonuc: ArrayOfTetkikSonucu;
    FtetkikSonuc_Specified: boolean;
    procedure SetKurumTahlilSonuclariResult(Index: Integer; const AsonucBilgisi: sonucBilgisi);
    function  KurumTahlilSonuclariResult_Specified(Index: Integer): boolean;
    procedure SettetkikSonuc(Index: Integer; const AArrayOfTetkikSonucu: ArrayOfTetkikSonucu);
    function  tetkikSonuc_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property KurumTahlilSonuclariResult: sonucBilgisi         Index (IS_OPTN) read FKurumTahlilSonuclariResult write SetKurumTahlilSonuclariResult stored KurumTahlilSonuclariResult_Specified;
    property tetkikSonuc:                ArrayOfTetkikSonucu  Index (IS_OPTN) read FtetkikSonuc write SettetkikSonuc stored tetkikSonuc_Specified;
  end;



  // ************************************************************************ //
  // XML       : HastaOrnekNoListeleResponse, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  HastaOrnekNoListeleResponse = class(TRemotable)
  private
    FHastaOrnekNoListeleResult: sonucBilgisi;
    FHastaOrnekNoListeleResult_Specified: boolean;
    FtetkikSonuc: ArrayOfTetkikSonucu;
    FtetkikSonuc_Specified: boolean;
    procedure SetHastaOrnekNoListeleResult(Index: Integer; const AsonucBilgisi: sonucBilgisi);
    function  HastaOrnekNoListeleResult_Specified(Index: Integer): boolean;
    procedure SettetkikSonuc(Index: Integer; const AArrayOfTetkikSonucu: ArrayOfTetkikSonucu);
    function  tetkikSonuc_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property HastaOrnekNoListeleResult: sonucBilgisi         Index (IS_OPTN) read FHastaOrnekNoListeleResult write SetHastaOrnekNoListeleResult stored HastaOrnekNoListeleResult_Specified;
    property tetkikSonuc:               ArrayOfTetkikSonucu  Index (IS_OPTN) read FtetkikSonuc write SettetkikSonuc stored tetkikSonuc_Specified;
  end;



  // ************************************************************************ //
  // XML       : OrnekNoyaGoreSorgulaResponse, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  OrnekNoyaGoreSorgulaResponse = class(TRemotable)
  private
    FOrnekNoyaGoreSorgulaResult: sonucBilgisi;
    FOrnekNoyaGoreSorgulaResult_Specified: boolean;
    FtetkikSonuc: ArrayOfTetkikSonucu;
    FtetkikSonuc_Specified: boolean;
    procedure SetOrnekNoyaGoreSorgulaResult(Index: Integer; const AsonucBilgisi: sonucBilgisi);
    function  OrnekNoyaGoreSorgulaResult_Specified(Index: Integer): boolean;
    procedure SettetkikSonuc(Index: Integer; const AArrayOfTetkikSonucu: ArrayOfTetkikSonucu);
    function  tetkikSonuc_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property OrnekNoyaGoreSorgulaResult: sonucBilgisi         Index (IS_OPTN) read FOrnekNoyaGoreSorgulaResult write SetOrnekNoyaGoreSorgulaResult stored OrnekNoyaGoreSorgulaResult_Specified;
    property tetkikSonuc:                ArrayOfTetkikSonucu  Index (IS_OPTN) read FtetkikSonuc write SettetkikSonuc stored tetkikSonuc_Specified;
  end;



  // ************************************************************************ //
  // XML       : LaboratuarIstekSonucuResponse, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  LaboratuarIstekSonucuResponse = class(TRemotable)
  private
    FLaboratuarIstekSonucuResult: sonucBilgisi;
    FLaboratuarIstekSonucuResult_Specified: boolean;
    FtetkikSonuc: ArrayOfTetkikSonucu;
    FtetkikSonuc_Specified: boolean;
    procedure SetLaboratuarIstekSonucuResult(Index: Integer; const AsonucBilgisi: sonucBilgisi);
    function  LaboratuarIstekSonucuResult_Specified(Index: Integer): boolean;
    procedure SettetkikSonuc(Index: Integer; const AArrayOfTetkikSonucu: ArrayOfTetkikSonucu);
    function  tetkikSonuc_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property LaboratuarIstekSonucuResult: sonucBilgisi         Index (IS_OPTN) read FLaboratuarIstekSonucuResult write SetLaboratuarIstekSonucuResult stored LaboratuarIstekSonucuResult_Specified;
    property tetkikSonuc:                 ArrayOfTetkikSonucu  Index (IS_OPTN) read FtetkikSonuc write SettetkikSonuc stored tetkikSonuc_Specified;
  end;



  // ************************************************************************ //
  // XML       : LaboratuarIstekGonderResponse, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  LaboratuarIstekGonderResponse = class(TRemotable)
  private
    FLaboratuarIstekGonderResult: sonucBilgisi;
    FLaboratuarIstekGonderResult_Specified: boolean;
    procedure SetLaboratuarIstekGonderResult(Index: Integer; const AsonucBilgisi: sonucBilgisi);
    function  LaboratuarIstekGonderResult_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property LaboratuarIstekGonderResult: sonucBilgisi  Index (IS_OPTN) read FLaboratuarIstekGonderResult write SetLaboratuarIstekGonderResult stored LaboratuarIstekGonderResult_Specified;
  end;



  // ************************************************************************ //
  // XML       : LaboratuarIstekSonucu, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  LaboratuarIstekSonucu = class(TRemotable)
  private
    FkurumKodu: string;
    FkurumKodu_Specified: boolean;
    FkurumSifre: string;
    FkurumSifre_Specified: boolean;
    FDonenId: Int64;
    procedure SetkurumKodu(Index: Integer; const Astring: string);
    function  kurumKodu_Specified(Index: Integer): boolean;
    procedure SetkurumSifre(Index: Integer; const Astring: string);
    function  kurumSifre_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
  published
    property kurumKodu:  string  Index (IS_OPTN) read FkurumKodu write SetkurumKodu stored kurumKodu_Specified;
    property kurumSifre: string  Index (IS_OPTN) read FkurumSifre write SetkurumSifre stored kurumSifre_Specified;
    property DonenId:    Int64   read FDonenId write FDonenId;
  end;



  // ************************************************************************ //
  // XML       : LaboratuarIstekGonder, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  LaboratuarIstekGonder = class(TRemotable)
  private
    Ftarih: TXSDateTime;
    Fsaat: string;
    Fsaat_Specified: boolean;
    FkurumKodu: string;
    FkurumKodu_Specified: boolean;
    FkurumSifre: string;
    FkurumSifre_Specified: boolean;
    Fhasta: hasta;
    Fhasta_Specified: boolean;
    FhizmetKodu: string;
    FhizmetKodu_Specified: boolean;
    procedure Setsaat(Index: Integer; const Astring: string);
    function  saat_Specified(Index: Integer): boolean;
    procedure SetkurumKodu(Index: Integer; const Astring: string);
    function  kurumKodu_Specified(Index: Integer): boolean;
    procedure SetkurumSifre(Index: Integer; const Astring: string);
    function  kurumSifre_Specified(Index: Integer): boolean;
    procedure Sethasta(Index: Integer; const Ahasta: hasta);
    function  hasta_Specified(Index: Integer): boolean;
    procedure SethizmetKodu(Index: Integer; const Astring: string);
    function  hizmetKodu_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property tarih:      TXSDateTime  read Ftarih write Ftarih;
    property saat:       string       Index (IS_OPTN) read Fsaat write Setsaat stored saat_Specified;
    property kurumKodu:  string       Index (IS_OPTN) read FkurumKodu write SetkurumKodu stored kurumKodu_Specified;
    property kurumSifre: string       Index (IS_OPTN) read FkurumSifre write SetkurumSifre stored kurumSifre_Specified;
    property hasta:      hasta        Index (IS_OPTN) read Fhasta write Sethasta stored hasta_Specified;
    property hizmetKodu: string       Index (IS_OPTN) read FhizmetKodu write SethizmetKodu stored hizmetKodu_Specified;
  end;



  // ************************************************************************ //
  // XML       : tetkikSonucu, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  tetkikSonucu = class(TRemotable)
  private
    FFormAdi: string;
    FFormAdi_Specified: boolean;
    FDeger: string;
    FDeger_Specified: boolean;
    FIslemTarihi: TXSDateTime;
    FIslemSaati: string;
    FIslemSaati_Specified: boolean;
    FSiraNo: Integer;
    FCinsiyet: string;
    FCinsiyet_Specified: boolean;
    FYas: string;
    FYas_Specified: boolean;
    FBirim: string;
    FBirim_Specified: boolean;
    FNormal: string;
    FNormal_Specified: boolean;
    FSonucZamani: TXSDateTime;
    FSonucAd: string;
    FSonucAd_Specified: boolean;
    FOrnekNo: Integer;
    FGssKod: string;
    FGssKod_Specified: boolean;
    FPanic: Integer;
    FKurumHizmetKodu: string;
    FKurumHizmetKodu_Specified: boolean;
    FKurumHizmetAdi: string;
    FKurumHizmetAdi_Specified: boolean;
    FHastaKodu: string;
    FHastaKodu_Specified: boolean;
    FTcNo: string;
    FTcNo_Specified: boolean;
    FButceKodu: string;
    FButceKodu_Specified: boolean;
    FButceAdi: string;
    FButceAdi_Specified: boolean;
    FHastaAdi: string;
    FHastaAdi_Specified: boolean;
    FHastaSoyadi: string;
    FHastaSoyadi_Specified: boolean;
    procedure SetFormAdi(Index: Integer; const Astring: string);
    function  FormAdi_Specified(Index: Integer): boolean;
    procedure SetDeger(Index: Integer; const Astring: string);
    function  Deger_Specified(Index: Integer): boolean;
    procedure SetIslemSaati(Index: Integer; const Astring: string);
    function  IslemSaati_Specified(Index: Integer): boolean;
    procedure SetCinsiyet(Index: Integer; const Astring: string);
    function  Cinsiyet_Specified(Index: Integer): boolean;
    procedure SetYas(Index: Integer; const Astring: string);
    function  Yas_Specified(Index: Integer): boolean;
    procedure SetBirim(Index: Integer; const Astring: string);
    function  Birim_Specified(Index: Integer): boolean;
    procedure SetNormal(Index: Integer; const Astring: string);
    function  Normal_Specified(Index: Integer): boolean;
    procedure SetSonucAd(Index: Integer; const Astring: string);
    function  SonucAd_Specified(Index: Integer): boolean;
    procedure SetGssKod(Index: Integer; const Astring: string);
    function  GssKod_Specified(Index: Integer): boolean;
    procedure SetKurumHizmetKodu(Index: Integer; const Astring: string);
    function  KurumHizmetKodu_Specified(Index: Integer): boolean;
    procedure SetKurumHizmetAdi(Index: Integer; const Astring: string);
    function  KurumHizmetAdi_Specified(Index: Integer): boolean;
    procedure SetHastaKodu(Index: Integer; const Astring: string);
    function  HastaKodu_Specified(Index: Integer): boolean;
    procedure SetTcNo(Index: Integer; const Astring: string);
    function  TcNo_Specified(Index: Integer): boolean;
    procedure SetButceKodu(Index: Integer; const Astring: string);
    function  ButceKodu_Specified(Index: Integer): boolean;
    procedure SetButceAdi(Index: Integer; const Astring: string);
    function  ButceAdi_Specified(Index: Integer): boolean;
    procedure SetHastaAdi(Index: Integer; const Astring: string);
    function  HastaAdi_Specified(Index: Integer): boolean;
    procedure SetHastaSoyadi(Index: Integer; const Astring: string);
    function  HastaSoyadi_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property FormAdi:         string       Index (IS_OPTN) read FFormAdi write SetFormAdi stored FormAdi_Specified;
    property Deger:           string       Index (IS_OPTN) read FDeger write SetDeger stored Deger_Specified;
    property IslemTarihi:     TXSDateTime  read FIslemTarihi write FIslemTarihi;
    property IslemSaati:      string       Index (IS_OPTN) read FIslemSaati write SetIslemSaati stored IslemSaati_Specified;
    property SiraNo:          Integer      read FSiraNo write FSiraNo;
    property Cinsiyet:        string       Index (IS_OPTN) read FCinsiyet write SetCinsiyet stored Cinsiyet_Specified;
    property Yas:             string       Index (IS_OPTN) read FYas write SetYas stored Yas_Specified;
    property Birim:           string       Index (IS_OPTN) read FBirim write SetBirim stored Birim_Specified;
    property Normal:          string       Index (IS_OPTN) read FNormal write SetNormal stored Normal_Specified;
    property SonucZamani:     TXSDateTime  read FSonucZamani write FSonucZamani;
    property SonucAd:         string       Index (IS_OPTN) read FSonucAd write SetSonucAd stored SonucAd_Specified;
    property OrnekNo:         Integer      read FOrnekNo write FOrnekNo;
    property GssKod:          string       Index (IS_OPTN) read FGssKod write SetGssKod stored GssKod_Specified;
    property Panic:           Integer      read FPanic write FPanic;
    property KurumHizmetKodu: string       Index (IS_OPTN) read FKurumHizmetKodu write SetKurumHizmetKodu stored KurumHizmetKodu_Specified;
    property KurumHizmetAdi:  string       Index (IS_OPTN) read FKurumHizmetAdi write SetKurumHizmetAdi stored KurumHizmetAdi_Specified;
    property HastaKodu:       string       Index (IS_OPTN) read FHastaKodu write SetHastaKodu stored HastaKodu_Specified;
    property TcNo:            string       Index (IS_OPTN) read FTcNo write SetTcNo stored TcNo_Specified;
    property ButceKodu:       string       Index (IS_OPTN) read FButceKodu write SetButceKodu stored ButceKodu_Specified;
    property ButceAdi:        string       Index (IS_OPTN) read FButceAdi write SetButceAdi stored ButceAdi_Specified;
    property HastaAdi:        string       Index (IS_OPTN) read FHastaAdi write SetHastaAdi stored HastaAdi_Specified;
    property HastaSoyadi:     string       Index (IS_OPTN) read FHastaSoyadi write SetHastaSoyadi stored HastaSoyadi_Specified;
  end;



  // ************************************************************************ //
  // XML       : OrnekNoyaGoreSorgula, global, <element>
  // Namespace : http://tempuri.org/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  OrnekNoyaGoreSorgula = class(TRemotable)
  private
    FkurumKodu: string;
    FkurumKodu_Specified: boolean;
    FkurumSifre: string;
    FkurumSifre_Specified: boolean;
    FornekNo: Integer;
    procedure SetkurumKodu(Index: Integer; const Astring: string);
    function  kurumKodu_Specified(Index: Integer): boolean;
    procedure SetkurumSifre(Index: Integer; const Astring: string);
    function  kurumSifre_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
  published
    property kurumKodu:  string   Index (IS_OPTN) read FkurumKodu write SetkurumKodu stored kurumKodu_Specified;
    property kurumSifre: string   Index (IS_OPTN) read FkurumSifre write SetkurumSifre stored kurumSifre_Specified;
    property ornekNo:    Integer  read FornekNo write FornekNo;
  end;


  // ************************************************************************ //
  // Namespace : http://tempuri.org/
  // soapAction: http://tempuri.org/%operationName%
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : document
  // use       : literal
  // binding   : IstekGonderSoap12
  // service   : IstekGonder
  // port      : IstekGonderSoap12
  // URL       : http://176.41.232.198/ws/LabratuarIstek.asmx
  // ************************************************************************ //
  IstekGonderSoap = interface(IInvokable)
  ['{78B3486D-8CA4-AD2E-A6A0-CAD0BD2FA329}']
    function  LaboratuarIstekGonder(const parameters: LaboratuarIstekGonder): LaboratuarIstekGonderResponse; stdcall;

    // Cannot unwrap: 
    //     - More than one strictly out element was found
    function  LaboratuarIstekSonucu(const parameters: LaboratuarIstekSonucu): LaboratuarIstekSonucuResponse; stdcall;
    function  HastaKaydet(const parameters: HastaKaydet): HastaKaydetResponse; stdcall;
    function  TahlilKaydet(const parameters: TahlilKaydet): TahlilKaydetResponse; stdcall;

    // Cannot unwrap: 
    //     - More than one strictly out element was found
    function  KurumTahlilSonuclari(const parameters: KurumTahlilSonuclari): KurumTahlilSonuclariResponse; stdcall;

    // Cannot unwrap: 
    //     - More than one strictly out element was found
    function  HastaOrnekNoListele(const parameters: HastaOrnekNoListele): HastaOrnekNoListeleResponse; stdcall;

    // Cannot unwrap: 
    //     - More than one strictly out element was found
    function  OrnekNoyaGoreSorgula(const parameters: OrnekNoyaGoreSorgula): OrnekNoyaGoreSorgulaResponse; stdcall;
  end;

function GetIstekGonderSoap(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): IstekGonderSoap;


implementation
  uses SysUtils;

function GetIstekGonderSoap(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): IstekGonderSoap;
const
  defWSDL = 'D:\Projeler\DELPHI\Diyaliz\Dializ2007_M3_\Gemsoft.wsdl';
  defURL  = 'http://176.41.232.198/ws/LabratuarIstek.asmx';
  defSvc  = 'IstekGonder';
  defPrt  = 'IstekGonderSoap12';
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
    Result := (RIO as IstekGonderSoap);
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


constructor TahlilKaydetResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor TahlilKaydetResponse.Destroy;
begin
  SysUtils.FreeAndNil(FTahlilKaydetResult);
  inherited Destroy;
end;

procedure TahlilKaydetResponse.SetTahlilKaydetResult(Index: Integer; const AsonucBilgisi: sonucBilgisi);
begin
  FTahlilKaydetResult := AsonucBilgisi;
  FTahlilKaydetResult_Specified := True;
end;

function TahlilKaydetResponse.TahlilKaydetResult_Specified(Index: Integer): boolean;
begin
  Result := FTahlilKaydetResult_Specified;
end;

constructor HastaKaydetResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor HastaKaydetResponse.Destroy;
begin
  SysUtils.FreeAndNil(FHastaKaydetResult);
  inherited Destroy;
end;

procedure HastaKaydetResponse.SetHastaKaydetResult(Index: Integer; const AsonucBilgisi: sonucBilgisi);
begin
  FHastaKaydetResult := AsonucBilgisi;
  FHastaKaydetResult_Specified := True;
end;

function HastaKaydetResponse.HastaKaydetResult_Specified(Index: Integer): boolean;
begin
  Result := FHastaKaydetResult_Specified;
end;

destructor hasta.Destroy;
begin
  SysUtils.FreeAndNil(FDogumTarihi);
  inherited Destroy;
end;

procedure hasta.SetAd(Index: Integer; const Astring: string);
begin
  FAd := Astring;
  FAd_Specified := True;
end;

function hasta.Ad_Specified(Index: Integer): boolean;
begin
  Result := FAd_Specified;
end;

procedure hasta.SetSoyad(Index: Integer; const Astring: string);
begin
  FSoyad := Astring;
  FSoyad_Specified := True;
end;

function hasta.Soyad_Specified(Index: Integer): boolean;
begin
  Result := FSoyad_Specified;
end;

procedure hasta.SetTCNo(Index: Integer; const Astring: string);
begin
  FTCNo := Astring;
  FTCNo_Specified := True;
end;

function hasta.TCNo_Specified(Index: Integer): boolean;
begin
  Result := FTCNo_Specified;
end;

procedure hasta.SetAnaAdi(Index: Integer; const Astring: string);
begin
  FAnaAdi := Astring;
  FAnaAdi_Specified := True;
end;

function hasta.AnaAdi_Specified(Index: Integer): boolean;
begin
  Result := FAnaAdi_Specified;
end;

procedure hasta.SetBabaAdi(Index: Integer; const Astring: string);
begin
  FBabaAdi := Astring;
  FBabaAdi_Specified := True;
end;

function hasta.BabaAdi_Specified(Index: Integer): boolean;
begin
  Result := FBabaAdi_Specified;
end;

procedure hasta.SetCinsiyet(Index: Integer; const Astring: string);
begin
  FCinsiyet := Astring;
  FCinsiyet_Specified := True;
end;

function hasta.Cinsiyet_Specified(Index: Integer): boolean;
begin
  Result := FCinsiyet_Specified;
end;

procedure sonucBilgisi.SetSonucKodu(Index: Integer; const Astring: string);
begin
  FSonucKodu := Astring;
  FSonucKodu_Specified := True;
end;

function sonucBilgisi.SonucKodu_Specified(Index: Integer): boolean;
begin
  Result := FSonucKodu_Specified;
end;

procedure sonucBilgisi.SetSonucMesaji(Index: Integer; const Astring: string);
begin
  FSonucMesaji := Astring;
  FSonucMesaji_Specified := True;
end;

function sonucBilgisi.SonucMesaji_Specified(Index: Integer): boolean;
begin
  Result := FSonucMesaji_Specified;
end;

constructor HastaOrnekNoListele.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor HastaOrnekNoListele.Destroy;
begin
  SysUtils.FreeAndNil(Ftarih1);
  SysUtils.FreeAndNil(Ftarih2);
  inherited Destroy;
end;

procedure HastaOrnekNoListele.SetkurumKodu(Index: Integer; const Astring: string);
begin
  FkurumKodu := Astring;
  FkurumKodu_Specified := True;
end;

function HastaOrnekNoListele.kurumKodu_Specified(Index: Integer): boolean;
begin
  Result := FkurumKodu_Specified;
end;

procedure HastaOrnekNoListele.SetkurumSifre(Index: Integer; const Astring: string);
begin
  FkurumSifre := Astring;
  FkurumSifre_Specified := True;
end;

function HastaOrnekNoListele.kurumSifre_Specified(Index: Integer): boolean;
begin
  Result := FkurumSifre_Specified;
end;

constructor KurumTahlilSonuclari.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor KurumTahlilSonuclari.Destroy;
begin
  SysUtils.FreeAndNil(Ftarih1);
  SysUtils.FreeAndNil(Ftarih2);
  inherited Destroy;
end;

procedure KurumTahlilSonuclari.SetkurumKodu(Index: Integer; const Astring: string);
begin
  FkurumKodu := Astring;
  FkurumKodu_Specified := True;
end;

function KurumTahlilSonuclari.kurumKodu_Specified(Index: Integer): boolean;
begin
  Result := FkurumKodu_Specified;
end;

procedure KurumTahlilSonuclari.SetkurumSifre(Index: Integer; const Astring: string);
begin
  FkurumSifre := Astring;
  FkurumSifre_Specified := True;
end;

function KurumTahlilSonuclari.kurumSifre_Specified(Index: Integer): boolean;
begin
  Result := FkurumSifre_Specified;
end;

constructor HastaKaydet.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor HastaKaydet.Destroy;
begin
  SysUtils.FreeAndNil(FdogumTarihi);
  inherited Destroy;
end;

procedure HastaKaydet.SetkurumKodu(Index: Integer; const Astring: string);
begin
  FkurumKodu := Astring;
  FkurumKodu_Specified := True;
end;

function HastaKaydet.kurumKodu_Specified(Index: Integer): boolean;
begin
  Result := FkurumKodu_Specified;
end;

procedure HastaKaydet.SetkurumSifre(Index: Integer; const Astring: string);
begin
  FkurumSifre := Astring;
  FkurumSifre_Specified := True;
end;

function HastaKaydet.kurumSifre_Specified(Index: Integer): boolean;
begin
  Result := FkurumSifre_Specified;
end;

procedure HastaKaydet.SetTCNo(Index: Integer; const Astring: string);
begin
  FTCNo := Astring;
  FTCNo_Specified := True;
end;

function HastaKaydet.TCNo_Specified(Index: Integer): boolean;
begin
  Result := FTCNo_Specified;
end;

procedure HastaKaydet.Setad(Index: Integer; const Astring: string);
begin
  Fad := Astring;
  Fad_Specified := True;
end;

function HastaKaydet.ad_Specified(Index: Integer): boolean;
begin
  Result := Fad_Specified;
end;

procedure HastaKaydet.Setsoyad(Index: Integer; const Astring: string);
begin
  Fsoyad := Astring;
  Fsoyad_Specified := True;
end;

function HastaKaydet.soyad_Specified(Index: Integer): boolean;
begin
  Result := Fsoyad_Specified;
end;

procedure HastaKaydet.SetbabaAdi(Index: Integer; const Astring: string);
begin
  FbabaAdi := Astring;
  FbabaAdi_Specified := True;
end;

function HastaKaydet.babaAdi_Specified(Index: Integer): boolean;
begin
  Result := FbabaAdi_Specified;
end;

procedure HastaKaydet.SetanaAdi(Index: Integer; const Astring: string);
begin
  FanaAdi := Astring;
  FanaAdi_Specified := True;
end;

function HastaKaydet.anaAdi_Specified(Index: Integer): boolean;
begin
  Result := FanaAdi_Specified;
end;

procedure HastaKaydet.Setcinsiyet(Index: Integer; const Astring: string);
begin
  Fcinsiyet := Astring;
  Fcinsiyet_Specified := True;
end;

function HastaKaydet.cinsiyet_Specified(Index: Integer): boolean;
begin
  Result := Fcinsiyet_Specified;
end;

constructor TahlilKaydet.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor TahlilKaydet.Destroy;
begin
  SysUtils.FreeAndNil(Ftarih);
  inherited Destroy;
end;

procedure TahlilKaydet.Setsaat(Index: Integer; const Astring: string);
begin
  Fsaat := Astring;
  Fsaat_Specified := True;
end;

function TahlilKaydet.saat_Specified(Index: Integer): boolean;
begin
  Result := Fsaat_Specified;
end;

procedure TahlilKaydet.SetkurumKodu(Index: Integer; const Astring: string);
begin
  FkurumKodu := Astring;
  FkurumKodu_Specified := True;
end;

function TahlilKaydet.kurumKodu_Specified(Index: Integer): boolean;
begin
  Result := FkurumKodu_Specified;
end;

procedure TahlilKaydet.SetkurumSifre(Index: Integer; const Astring: string);
begin
  FkurumSifre := Astring;
  FkurumSifre_Specified := True;
end;

function TahlilKaydet.kurumSifre_Specified(Index: Integer): boolean;
begin
  Result := FkurumSifre_Specified;
end;

procedure TahlilKaydet.SettcNo(Index: Integer; const Astring: string);
begin
  FtcNo := Astring;
  FtcNo_Specified := True;
end;

function TahlilKaydet.tcNo_Specified(Index: Integer): boolean;
begin
  Result := FtcNo_Specified;
end;

procedure TahlilKaydet.SethizmetKodu(Index: Integer; const Astring: string);
begin
  FhizmetKodu := Astring;
  FhizmetKodu_Specified := True;
end;

function TahlilKaydet.hizmetKodu_Specified(Index: Integer): boolean;
begin
  Result := FhizmetKodu_Specified;
end;

constructor KurumTahlilSonuclariResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor KurumTahlilSonuclariResponse.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FtetkikSonuc)-1 do
    SysUtils.FreeAndNil(FtetkikSonuc[I]);
  System.SetLength(FtetkikSonuc, 0);
  SysUtils.FreeAndNil(FKurumTahlilSonuclariResult);
  inherited Destroy;
end;

procedure KurumTahlilSonuclariResponse.SetKurumTahlilSonuclariResult(Index: Integer; const AsonucBilgisi: sonucBilgisi);
begin
  FKurumTahlilSonuclariResult := AsonucBilgisi;
  FKurumTahlilSonuclariResult_Specified := True;
end;

function KurumTahlilSonuclariResponse.KurumTahlilSonuclariResult_Specified(Index: Integer): boolean;
begin
  Result := FKurumTahlilSonuclariResult_Specified;
end;

procedure KurumTahlilSonuclariResponse.SettetkikSonuc(Index: Integer; const AArrayOfTetkikSonucu: ArrayOfTetkikSonucu);
begin
  FtetkikSonuc := AArrayOfTetkikSonucu;
  FtetkikSonuc_Specified := True;
end;

function KurumTahlilSonuclariResponse.tetkikSonuc_Specified(Index: Integer): boolean;
begin
  Result := FtetkikSonuc_Specified;
end;

constructor HastaOrnekNoListeleResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor HastaOrnekNoListeleResponse.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FtetkikSonuc)-1 do
    SysUtils.FreeAndNil(FtetkikSonuc[I]);
  System.SetLength(FtetkikSonuc, 0);
  SysUtils.FreeAndNil(FHastaOrnekNoListeleResult);
  inherited Destroy;
end;

procedure HastaOrnekNoListeleResponse.SetHastaOrnekNoListeleResult(Index: Integer; const AsonucBilgisi: sonucBilgisi);
begin
  FHastaOrnekNoListeleResult := AsonucBilgisi;
  FHastaOrnekNoListeleResult_Specified := True;
end;

function HastaOrnekNoListeleResponse.HastaOrnekNoListeleResult_Specified(Index: Integer): boolean;
begin
  Result := FHastaOrnekNoListeleResult_Specified;
end;

procedure HastaOrnekNoListeleResponse.SettetkikSonuc(Index: Integer; const AArrayOfTetkikSonucu: ArrayOfTetkikSonucu);
begin
  FtetkikSonuc := AArrayOfTetkikSonucu;
  FtetkikSonuc_Specified := True;
end;

function HastaOrnekNoListeleResponse.tetkikSonuc_Specified(Index: Integer): boolean;
begin
  Result := FtetkikSonuc_Specified;
end;

constructor OrnekNoyaGoreSorgulaResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor OrnekNoyaGoreSorgulaResponse.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FtetkikSonuc)-1 do
    SysUtils.FreeAndNil(FtetkikSonuc[I]);
  System.SetLength(FtetkikSonuc, 0);
  SysUtils.FreeAndNil(FOrnekNoyaGoreSorgulaResult);
  inherited Destroy;
end;

procedure OrnekNoyaGoreSorgulaResponse.SetOrnekNoyaGoreSorgulaResult(Index: Integer; const AsonucBilgisi: sonucBilgisi);
begin
  FOrnekNoyaGoreSorgulaResult := AsonucBilgisi;
  FOrnekNoyaGoreSorgulaResult_Specified := True;
end;

function OrnekNoyaGoreSorgulaResponse.OrnekNoyaGoreSorgulaResult_Specified(Index: Integer): boolean;
begin
  Result := FOrnekNoyaGoreSorgulaResult_Specified;
end;

procedure OrnekNoyaGoreSorgulaResponse.SettetkikSonuc(Index: Integer; const AArrayOfTetkikSonucu: ArrayOfTetkikSonucu);
begin
  FtetkikSonuc := AArrayOfTetkikSonucu;
  FtetkikSonuc_Specified := True;
end;

function OrnekNoyaGoreSorgulaResponse.tetkikSonuc_Specified(Index: Integer): boolean;
begin
  Result := FtetkikSonuc_Specified;
end;

constructor LaboratuarIstekSonucuResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor LaboratuarIstekSonucuResponse.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FtetkikSonuc)-1 do
    SysUtils.FreeAndNil(FtetkikSonuc[I]);
  System.SetLength(FtetkikSonuc, 0);
  SysUtils.FreeAndNil(FLaboratuarIstekSonucuResult);
  inherited Destroy;
end;

procedure LaboratuarIstekSonucuResponse.SetLaboratuarIstekSonucuResult(Index: Integer; const AsonucBilgisi: sonucBilgisi);
begin
  FLaboratuarIstekSonucuResult := AsonucBilgisi;
  FLaboratuarIstekSonucuResult_Specified := True;
end;

function LaboratuarIstekSonucuResponse.LaboratuarIstekSonucuResult_Specified(Index: Integer): boolean;
begin
  Result := FLaboratuarIstekSonucuResult_Specified;
end;

procedure LaboratuarIstekSonucuResponse.SettetkikSonuc(Index: Integer; const AArrayOfTetkikSonucu: ArrayOfTetkikSonucu);
begin
  FtetkikSonuc := AArrayOfTetkikSonucu;
  FtetkikSonuc_Specified := True;
end;

function LaboratuarIstekSonucuResponse.tetkikSonuc_Specified(Index: Integer): boolean;
begin
  Result := FtetkikSonuc_Specified;
end;

constructor LaboratuarIstekGonderResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor LaboratuarIstekGonderResponse.Destroy;
begin
  SysUtils.FreeAndNil(FLaboratuarIstekGonderResult);
  inherited Destroy;
end;

procedure LaboratuarIstekGonderResponse.SetLaboratuarIstekGonderResult(Index: Integer; const AsonucBilgisi: sonucBilgisi);
begin
  FLaboratuarIstekGonderResult := AsonucBilgisi;
  FLaboratuarIstekGonderResult_Specified := True;
end;

function LaboratuarIstekGonderResponse.LaboratuarIstekGonderResult_Specified(Index: Integer): boolean;
begin
  Result := FLaboratuarIstekGonderResult_Specified;
end;

constructor LaboratuarIstekSonucu.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

procedure LaboratuarIstekSonucu.SetkurumKodu(Index: Integer; const Astring: string);
begin
  FkurumKodu := Astring;
  FkurumKodu_Specified := True;
end;

function LaboratuarIstekSonucu.kurumKodu_Specified(Index: Integer): boolean;
begin
  Result := FkurumKodu_Specified;
end;

procedure LaboratuarIstekSonucu.SetkurumSifre(Index: Integer; const Astring: string);
begin
  FkurumSifre := Astring;
  FkurumSifre_Specified := True;
end;

function LaboratuarIstekSonucu.kurumSifre_Specified(Index: Integer): boolean;
begin
  Result := FkurumSifre_Specified;
end;

constructor LaboratuarIstekGonder.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor LaboratuarIstekGonder.Destroy;
begin
  SysUtils.FreeAndNil(Ftarih);
  SysUtils.FreeAndNil(Fhasta);
  inherited Destroy;
end;

procedure LaboratuarIstekGonder.Setsaat(Index: Integer; const Astring: string);
begin
  Fsaat := Astring;
  Fsaat_Specified := True;
end;

function LaboratuarIstekGonder.saat_Specified(Index: Integer): boolean;
begin
  Result := Fsaat_Specified;
end;

procedure LaboratuarIstekGonder.SetkurumKodu(Index: Integer; const Astring: string);
begin
  FkurumKodu := Astring;
  FkurumKodu_Specified := True;
end;

function LaboratuarIstekGonder.kurumKodu_Specified(Index: Integer): boolean;
begin
  Result := FkurumKodu_Specified;
end;

procedure LaboratuarIstekGonder.SetkurumSifre(Index: Integer; const Astring: string);
begin
  FkurumSifre := Astring;
  FkurumSifre_Specified := True;
end;

function LaboratuarIstekGonder.kurumSifre_Specified(Index: Integer): boolean;
begin
  Result := FkurumSifre_Specified;
end;

procedure LaboratuarIstekGonder.Sethasta(Index: Integer; const Ahasta: hasta);
begin
  Fhasta := Ahasta;
  Fhasta_Specified := True;
end;

function LaboratuarIstekGonder.hasta_Specified(Index: Integer): boolean;
begin
  Result := Fhasta_Specified;
end;

procedure LaboratuarIstekGonder.SethizmetKodu(Index: Integer; const Astring: string);
begin
  FhizmetKodu := Astring;
  FhizmetKodu_Specified := True;
end;

function LaboratuarIstekGonder.hizmetKodu_Specified(Index: Integer): boolean;
begin
  Result := FhizmetKodu_Specified;
end;

destructor tetkikSonucu.Destroy;
begin
  SysUtils.FreeAndNil(FIslemTarihi);
  SysUtils.FreeAndNil(FSonucZamani);
  inherited Destroy;
end;

procedure tetkikSonucu.SetFormAdi(Index: Integer; const Astring: string);
begin
  FFormAdi := Astring;
  FFormAdi_Specified := True;
end;

function tetkikSonucu.FormAdi_Specified(Index: Integer): boolean;
begin
  Result := FFormAdi_Specified;
end;

procedure tetkikSonucu.SetDeger(Index: Integer; const Astring: string);
begin
  FDeger := Astring;
  FDeger_Specified := True;
end;

function tetkikSonucu.Deger_Specified(Index: Integer): boolean;
begin
  Result := FDeger_Specified;
end;

procedure tetkikSonucu.SetIslemSaati(Index: Integer; const Astring: string);
begin
  FIslemSaati := Astring;
  FIslemSaati_Specified := True;
end;

function tetkikSonucu.IslemSaati_Specified(Index: Integer): boolean;
begin
  Result := FIslemSaati_Specified;
end;

procedure tetkikSonucu.SetCinsiyet(Index: Integer; const Astring: string);
begin
  FCinsiyet := Astring;
  FCinsiyet_Specified := True;
end;

function tetkikSonucu.Cinsiyet_Specified(Index: Integer): boolean;
begin
  Result := FCinsiyet_Specified;
end;

procedure tetkikSonucu.SetYas(Index: Integer; const Astring: string);
begin
  FYas := Astring;
  FYas_Specified := True;
end;

function tetkikSonucu.Yas_Specified(Index: Integer): boolean;
begin
  Result := FYas_Specified;
end;

procedure tetkikSonucu.SetBirim(Index: Integer; const Astring: string);
begin
  FBirim := Astring;
  FBirim_Specified := True;
end;

function tetkikSonucu.Birim_Specified(Index: Integer): boolean;
begin
  Result := FBirim_Specified;
end;

procedure tetkikSonucu.SetNormal(Index: Integer; const Astring: string);
begin
  FNormal := Astring;
  FNormal_Specified := True;
end;

function tetkikSonucu.Normal_Specified(Index: Integer): boolean;
begin
  Result := FNormal_Specified;
end;

procedure tetkikSonucu.SetSonucAd(Index: Integer; const Astring: string);
begin
  FSonucAd := Astring;
  FSonucAd_Specified := True;
end;

function tetkikSonucu.SonucAd_Specified(Index: Integer): boolean;
begin
  Result := FSonucAd_Specified;
end;

procedure tetkikSonucu.SetGssKod(Index: Integer; const Astring: string);
begin
  FGssKod := Astring;
  FGssKod_Specified := True;
end;

function tetkikSonucu.GssKod_Specified(Index: Integer): boolean;
begin
  Result := FGssKod_Specified;
end;

procedure tetkikSonucu.SetKurumHizmetKodu(Index: Integer; const Astring: string);
begin
  FKurumHizmetKodu := Astring;
  FKurumHizmetKodu_Specified := True;
end;

function tetkikSonucu.KurumHizmetKodu_Specified(Index: Integer): boolean;
begin
  Result := FKurumHizmetKodu_Specified;
end;

procedure tetkikSonucu.SetKurumHizmetAdi(Index: Integer; const Astring: string);
begin
  FKurumHizmetAdi := Astring;
  FKurumHizmetAdi_Specified := True;
end;

function tetkikSonucu.KurumHizmetAdi_Specified(Index: Integer): boolean;
begin
  Result := FKurumHizmetAdi_Specified;
end;

procedure tetkikSonucu.SetHastaKodu(Index: Integer; const Astring: string);
begin
  FHastaKodu := Astring;
  FHastaKodu_Specified := True;
end;

function tetkikSonucu.HastaKodu_Specified(Index: Integer): boolean;
begin
  Result := FHastaKodu_Specified;
end;

procedure tetkikSonucu.SetTcNo(Index: Integer; const Astring: string);
begin
  FTcNo := Astring;
  FTcNo_Specified := True;
end;

function tetkikSonucu.TcNo_Specified(Index: Integer): boolean;
begin
  Result := FTcNo_Specified;
end;

procedure tetkikSonucu.SetButceKodu(Index: Integer; const Astring: string);
begin
  FButceKodu := Astring;
  FButceKodu_Specified := True;
end;

function tetkikSonucu.ButceKodu_Specified(Index: Integer): boolean;
begin
  Result := FButceKodu_Specified;
end;

procedure tetkikSonucu.SetButceAdi(Index: Integer; const Astring: string);
begin
  FButceAdi := Astring;
  FButceAdi_Specified := True;
end;

function tetkikSonucu.ButceAdi_Specified(Index: Integer): boolean;
begin
  Result := FButceAdi_Specified;
end;

procedure tetkikSonucu.SetHastaAdi(Index: Integer; const Astring: string);
begin
  FHastaAdi := Astring;
  FHastaAdi_Specified := True;
end;

function tetkikSonucu.HastaAdi_Specified(Index: Integer): boolean;
begin
  Result := FHastaAdi_Specified;
end;

procedure tetkikSonucu.SetHastaSoyadi(Index: Integer; const Astring: string);
begin
  FHastaSoyadi := Astring;
  FHastaSoyadi_Specified := True;
end;

function tetkikSonucu.HastaSoyadi_Specified(Index: Integer): boolean;
begin
  Result := FHastaSoyadi_Specified;
end;

constructor OrnekNoyaGoreSorgula.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

procedure OrnekNoyaGoreSorgula.SetkurumKodu(Index: Integer; const Astring: string);
begin
  FkurumKodu := Astring;
  FkurumKodu_Specified := True;
end;

function OrnekNoyaGoreSorgula.kurumKodu_Specified(Index: Integer): boolean;
begin
  Result := FkurumKodu_Specified;
end;

procedure OrnekNoyaGoreSorgula.SetkurumSifre(Index: Integer; const Astring: string);
begin
  FkurumSifre := Astring;
  FkurumSifre_Specified := True;
end;

function OrnekNoyaGoreSorgula.kurumSifre_Specified(Index: Integer): boolean;
begin
  Result := FkurumSifre_Specified;
end;

initialization
  { IstekGonderSoap }
  InvRegistry.RegisterInterface(TypeInfo(IstekGonderSoap), 'http://tempuri.org/', 'utf-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(IstekGonderSoap), 'http://tempuri.org/%operationName%');
  InvRegistry.RegisterInvokeOptions(TypeInfo(IstekGonderSoap), ioDocument);
  InvRegistry.RegisterInvokeOptions(TypeInfo(IstekGonderSoap), ioLiteral);
  InvRegistry.RegisterInvokeOptions(TypeInfo(IstekGonderSoap), ioSOAP12);
  RemClassRegistry.RegisterXSClass(TahlilKaydetResponse, 'http://tempuri.org/', 'TahlilKaydetResponse');
  RemClassRegistry.RegisterSerializeOptions(TahlilKaydetResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(HastaKaydetResponse, 'http://tempuri.org/', 'HastaKaydetResponse');
  RemClassRegistry.RegisterSerializeOptions(HastaKaydetResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(hasta, 'http://tempuri.org/', 'hasta');
  RemClassRegistry.RegisterXSClass(sonucBilgisi, 'http://tempuri.org/', 'sonucBilgisi');
  RemClassRegistry.RegisterXSClass(HastaOrnekNoListele, 'http://tempuri.org/', 'HastaOrnekNoListele');
  RemClassRegistry.RegisterSerializeOptions(HastaOrnekNoListele, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(KurumTahlilSonuclari, 'http://tempuri.org/', 'KurumTahlilSonuclari');
  RemClassRegistry.RegisterSerializeOptions(KurumTahlilSonuclari, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(HastaKaydet, 'http://tempuri.org/', 'HastaKaydet');
  RemClassRegistry.RegisterSerializeOptions(HastaKaydet, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(TahlilKaydet, 'http://tempuri.org/', 'TahlilKaydet');
  RemClassRegistry.RegisterSerializeOptions(TahlilKaydet, [xoLiteralParam]);
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfTetkikSonucu), 'http://tempuri.org/', 'ArrayOfTetkikSonucu');
  RemClassRegistry.RegisterXSClass(KurumTahlilSonuclariResponse, 'http://tempuri.org/', 'KurumTahlilSonuclariResponse');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(KurumTahlilSonuclariResponse), 'tetkikSonuc', '[ArrayItemName="tetkikSonucu"]');
  RemClassRegistry.RegisterSerializeOptions(KurumTahlilSonuclariResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(HastaOrnekNoListeleResponse, 'http://tempuri.org/', 'HastaOrnekNoListeleResponse');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(HastaOrnekNoListeleResponse), 'tetkikSonuc', '[ArrayItemName="tetkikSonucu"]');
  RemClassRegistry.RegisterSerializeOptions(HastaOrnekNoListeleResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(OrnekNoyaGoreSorgulaResponse, 'http://tempuri.org/', 'OrnekNoyaGoreSorgulaResponse');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(OrnekNoyaGoreSorgulaResponse), 'tetkikSonuc', '[ArrayItemName="tetkikSonucu"]');
  RemClassRegistry.RegisterSerializeOptions(OrnekNoyaGoreSorgulaResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(LaboratuarIstekSonucuResponse, 'http://tempuri.org/', 'LaboratuarIstekSonucuResponse');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(LaboratuarIstekSonucuResponse), 'tetkikSonuc', '[ArrayItemName="tetkikSonucu"]');
  RemClassRegistry.RegisterSerializeOptions(LaboratuarIstekSonucuResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(LaboratuarIstekGonderResponse, 'http://tempuri.org/', 'LaboratuarIstekGonderResponse');
  RemClassRegistry.RegisterSerializeOptions(LaboratuarIstekGonderResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(LaboratuarIstekSonucu, 'http://tempuri.org/', 'LaboratuarIstekSonucu');
  RemClassRegistry.RegisterSerializeOptions(LaboratuarIstekSonucu, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(LaboratuarIstekGonder, 'http://tempuri.org/', 'LaboratuarIstekGonder');
  RemClassRegistry.RegisterSerializeOptions(LaboratuarIstekGonder, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(tetkikSonucu, 'http://tempuri.org/', 'tetkikSonucu');
  RemClassRegistry.RegisterXSClass(OrnekNoyaGoreSorgula, 'http://tempuri.org/', 'OrnekNoyaGoreSorgula');
  RemClassRegistry.RegisterSerializeOptions(OrnekNoyaGoreSorgula, [xoLiteralParam]);

end.