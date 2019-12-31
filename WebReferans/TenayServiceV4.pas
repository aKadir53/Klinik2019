// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : C:\Dializ2007_M3\TenayV4.wsdl
//  >Import : C:\Dializ2007_M3\TenayV4.wsdl>0
// Encoding : utf-8
// Version  : 1.0
// (01.04.2017 01:08:59 - - $Rev: 25127 $)
// ************************************************************************ //

unit TenayServiceV4;

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
  // !:long            - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:dateTime        - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:boolean         - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:base64Binary    - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:int             - "http://www.w3.org/2001/XMLSchema"[Gbl]

  BaseClass            = class;                 { "http://tenay.com.tr/"[GblCplx] }
  KurumBilgileri       = class;                 { "http://tenay.com.tr/"[GblCplx] }
  HizmetListesi        = class;                 { "http://tenay.com.tr/"[GblCplx] }
  Detay                = class;                 { "http://tenay.com.tr/"[GblCplx] }
  HastaTurListesi      = class;                 { "http://tenay.com.tr/"[GblCplx] }
  TurDetay             = class;                 { "http://tenay.com.tr/"[GblCplx] }
  Doktor               = class;                 { "http://tenay.com.tr/"[GblCplx] }
  OrderBasic           = class;                 { "http://tenay.com.tr/"[GblCplx] }
  Order                = class;                 { "http://tenay.com.tr/"[GblCplx] }
  HastaTur             = class;                 { "http://tenay.com.tr/"[GblCplx] }
  Tetkik               = class;                 { "http://tenay.com.tr/"[GblCplx] }
  Cevap                = class;                 { "http://tenay.com.tr/"[GblCplx] }
  HastakaydetCevap     = class;                 { "http://tenay.com.tr/"[GblCplx] }
  OrderQuery           = class;                 { "http://tenay.com.tr/"[GblCplx] }
  HastaSorguCevap      = class;                 { "http://tenay.com.tr/"[GblCplx] }
  TetkikSonuc          = class;                 { "http://tenay.com.tr/"[GblCplx] }
  TestEki              = class;                 { "http://tenay.com.tr/"[GblCplx] }
  MikroIstek           = class;                 { "http://tenay.com.tr/"[GblCplx] }
  MikroOrganizma       = class;                 { "http://tenay.com.tr/"[GblCplx] }
  Antibiyotik          = class;                 { "http://tenay.com.tr/"[GblCplx] }
  MikroYorum           = class;                 { "http://tenay.com.tr/"[GblCplx] }
  TestNormalDeger      = class;                 { "http://tenay.com.tr/"[GblCplx] }
  HastaSorguCevapReferans = class;              { "http://tenay.com.tr/"[GblCplx] }
  TestSonuc            = class;                 { "http://tenay.com.tr/"[GblCplx] }
  OrnekListesiQuery    = class;                 { "http://tenay.com.tr/"[GblCplx] }
  OrnekListesi         = class;                 { "http://tenay.com.tr/"[GblCplx] }
  OrnekDetay           = class;                 { "http://tenay.com.tr/"[GblCplx] }
  TCSonuclariQuery     = class;                 { "http://tenay.com.tr/"[GblCplx] }
  TCSonuclariResult    = class;                 { "http://tenay.com.tr/"[GblCplx] }
  OrnekSonuc           = class;                 { "http://tenay.com.tr/"[GblCplx] }
  HastaListQuery       = class;                 { "http://tenay.com.tr/"[GblCplx] }
  HastaListesi         = class;                 { "http://tenay.com.tr/"[GblCplx] }
  HastaDetay           = class;                 { "http://tenay.com.tr/"[GblCplx] }
  KurumListesi         = class;                 { "http://tenay.com.tr/"[GblCplx] }
  KurumDetay           = class;                 { "http://tenay.com.tr/"[GblCplx] }
  SonucKaydetGiris     = class;                 { "http://tenay.com.tr/"[GblCplx] }
  SonucKaydetSonuc     = class;                 { "http://tenay.com.tr/"[GblCplx] }
  SonucKaydetNormalDeger = class;               { "http://tenay.com.tr/"[GblCplx] }
  SonucKaydetDosya     = class;                 { "http://tenay.com.tr/"[GblCplx] }
  SonucKaydetCevap     = class;                 { "http://tenay.com.tr/"[GblCplx] }
  Gelis                = class;                 { "http://tenay.com.tr/"[GblCplx] }

  {$SCOPEDENUMS ON}
  { "http://tenay.com.tr/"[GblSmpl] }
  Cinsiyet = (Erkek, Kadin, Bilinmeyen);

  { "http://tenay.com.tr/"[GblSmpl] }
  GelisTipi = (DiyalizGiris, DiyalizCikis, Normal);

  { "http://tenay.com.tr/"[GblSmpl] }
  RefDurum = (Yuksek, Dusuk, Normal, Panik, None);

  { "http://tenay.com.tr/"[GblSmpl] }
  DosyaTur = (Jpg, Pdf, Rtf, Text);

  { "http://tenay.com.tr/"[GblSmpl] }
  KayitDurumu = (None, TetkikKayit, Kuryede, KismiLabKabul, LabKabul, KismiRapor, Rapor);

  {$SCOPEDENUMS OFF}



  // ************************************************************************ //
  // XML       : BaseClass, global, <complexType>
  // Namespace : http://tenay.com.tr/
  // ************************************************************************ //
  BaseClass = class(TRemotable)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : KurumBilgileri, global, <complexType>
  // Namespace : http://tenay.com.tr/
  // ************************************************************************ //
  KurumBilgileri = class(BaseClass)
  private
    FKullaniciAdi: string;
    FKullaniciAdi_Specified: boolean;
    FSifre: string;
    FSifre_Specified: boolean;
    FKodu: string;
    FKodu_Specified: boolean;
    FKurumKodu: string;
    FKurumKodu_Specified: boolean;
    procedure SetKullaniciAdi(Index: Integer; const Astring: string);
    function  KullaniciAdi_Specified(Index: Integer): boolean;
    procedure SetSifre(Index: Integer; const Astring: string);
    function  Sifre_Specified(Index: Integer): boolean;
    procedure SetKodu(Index: Integer; const Astring: string);
    function  Kodu_Specified(Index: Integer): boolean;
    procedure SetKurumKodu(Index: Integer; const Astring: string);
    function  KurumKodu_Specified(Index: Integer): boolean;
  published
    property KullaniciAdi: string  Index (IS_OPTN) read FKullaniciAdi write SetKullaniciAdi stored KullaniciAdi_Specified;
    property Sifre:        string  Index (IS_OPTN) read FSifre write SetSifre stored Sifre_Specified;
    property Kodu:         string  Index (IS_OPTN) read FKodu write SetKodu stored Kodu_Specified;
    property KurumKodu:    string  Index (IS_OPTN) read FKurumKodu write SetKurumKodu stored KurumKodu_Specified;
  end;

  ArrayOfDetay = array of Detay;                { "http://tenay.com.tr/"[GblCplx] }


  // ************************************************************************ //
  // XML       : HizmetListesi, global, <complexType>
  // Namespace : http://tenay.com.tr/
  // ************************************************************************ //
  HizmetListesi = class(BaseClass)
  private
    FListe: ArrayOfDetay;
    FListe_Specified: boolean;
    procedure SetListe(Index: Integer; const AArrayOfDetay: ArrayOfDetay);
    function  Liste_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property Liste: ArrayOfDetay  Index (IS_OPTN) read FListe write SetListe stored Liste_Specified;
  end;



  // ************************************************************************ //
  // XML       : Detay, global, <complexType>
  // Namespace : http://tenay.com.tr/
  // ************************************************************************ //
  Detay = class(TRemotable)
  private
    FId: string;
    FId_Specified: boolean;
    FAdi: string;
    FAdi_Specified: boolean;
    FKodu: string;
    FKodu_Specified: boolean;
    FSutKodu: string;
    FSutKodu_Specified: boolean;
    FOrnekTurId: string;
    FOrnekTurId_Specified: boolean;
    FOrnekTurAdi: string;
    FOrnekTurAdi_Specified: boolean;
    FKapId: string;
    FKapId_Specified: boolean;
    FKapAdi: string;
    FKapAdi_Specified: boolean;
    procedure SetId(Index: Integer; const Astring: string);
    function  Id_Specified(Index: Integer): boolean;
    procedure SetAdi(Index: Integer; const Astring: string);
    function  Adi_Specified(Index: Integer): boolean;
    procedure SetKodu(Index: Integer; const Astring: string);
    function  Kodu_Specified(Index: Integer): boolean;
    procedure SetSutKodu(Index: Integer; const Astring: string);
    function  SutKodu_Specified(Index: Integer): boolean;
    procedure SetOrnekTurId(Index: Integer; const Astring: string);
    function  OrnekTurId_Specified(Index: Integer): boolean;
    procedure SetOrnekTurAdi(Index: Integer; const Astring: string);
    function  OrnekTurAdi_Specified(Index: Integer): boolean;
    procedure SetKapId(Index: Integer; const Astring: string);
    function  KapId_Specified(Index: Integer): boolean;
    procedure SetKapAdi(Index: Integer; const Astring: string);
    function  KapAdi_Specified(Index: Integer): boolean;
  published
    property Id:          string  Index (IS_OPTN) read FId write SetId stored Id_Specified;
    property Adi:         string  Index (IS_OPTN) read FAdi write SetAdi stored Adi_Specified;
    property Kodu:        string  Index (IS_OPTN) read FKodu write SetKodu stored Kodu_Specified;
    property SutKodu:     string  Index (IS_OPTN) read FSutKodu write SetSutKodu stored SutKodu_Specified;
    property OrnekTurId:  string  Index (IS_OPTN) read FOrnekTurId write SetOrnekTurId stored OrnekTurId_Specified;
    property OrnekTurAdi: string  Index (IS_OPTN) read FOrnekTurAdi write SetOrnekTurAdi stored OrnekTurAdi_Specified;
    property KapId:       string  Index (IS_OPTN) read FKapId write SetKapId stored KapId_Specified;
    property KapAdi:      string  Index (IS_OPTN) read FKapAdi write SetKapAdi stored KapAdi_Specified;
  end;

  ArrayOfTurDetay = array of TurDetay;          { "http://tenay.com.tr/"[GblCplx] }


  // ************************************************************************ //
  // XML       : HastaTurListesi, global, <complexType>
  // Namespace : http://tenay.com.tr/
  // ************************************************************************ //
  HastaTurListesi = class(BaseClass)
  private
    FListe: ArrayOfTurDetay;
    FListe_Specified: boolean;
    procedure SetListe(Index: Integer; const AArrayOfTurDetay: ArrayOfTurDetay);
    function  Liste_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property Liste: ArrayOfTurDetay  Index (IS_OPTN) read FListe write SetListe stored Liste_Specified;
  end;



  // ************************************************************************ //
  // XML       : TurDetay, global, <complexType>
  // Namespace : http://tenay.com.tr/
  // ************************************************************************ //
  TurDetay = class(TRemotable)
  private
    FId: string;
    FId_Specified: boolean;
    FAdi: string;
    FAdi_Specified: boolean;
    procedure SetId(Index: Integer; const Astring: string);
    function  Id_Specified(Index: Integer): boolean;
    procedure SetAdi(Index: Integer; const Astring: string);
    function  Adi_Specified(Index: Integer): boolean;
  published
    property Id:  string  Index (IS_OPTN) read FId write SetId stored Id_Specified;
    property Adi: string  Index (IS_OPTN) read FAdi write SetAdi stored Adi_Specified;
  end;



  // ************************************************************************ //
  // XML       : Doktor, global, <complexType>
  // Namespace : http://tenay.com.tr/
  // ************************************************************************ //
  Doktor = class(TRemotable)
  private
    FKimlikNo: Int64;
    FAdi: string;
    FAdi_Specified: boolean;
    FSoyadi: string;
    FSoyadi_Specified: boolean;
    procedure SetAdi(Index: Integer; const Astring: string);
    function  Adi_Specified(Index: Integer): boolean;
    procedure SetSoyadi(Index: Integer; const Astring: string);
    function  Soyadi_Specified(Index: Integer): boolean;
  published
    property KimlikNo: Int64   read FKimlikNo write FKimlikNo;
    property Adi:      string  Index (IS_OPTN) read FAdi write SetAdi stored Adi_Specified;
    property Soyadi:   string  Index (IS_OPTN) read FSoyadi write SetSoyadi stored Soyadi_Specified;
  end;



  // ************************************************************************ //
  // XML       : OrderBasic, global, <complexType>
  // Namespace : http://tenay.com.tr/
  // ************************************************************************ //
  OrderBasic = class(TRemotable)
  private
    FAdi: string;
    FAdi_Specified: boolean;
    FSoyadi: string;
    FSoyadi_Specified: boolean;
    FKimlikNo: string;
    FKimlikNo_Specified: boolean;
    FOrnekNo: Int64;
    FBabaAdi: string;
    FBabaAdi_Specified: boolean;
    FAnneAdi: string;
    FAnneAdi_Specified: boolean;
    FDogumTarihi: TXSDateTime;
    FDogumYeri: string;
    FDogumYeri_Specified: boolean;
    FCinsiyeti: Cinsiyet;
    FDosyaNo: string;
    FDosyaNo_Specified: boolean;
    FEPosta: string;
    FEPosta_Specified: boolean;
    procedure SetAdi(Index: Integer; const Astring: string);
    function  Adi_Specified(Index: Integer): boolean;
    procedure SetSoyadi(Index: Integer; const Astring: string);
    function  Soyadi_Specified(Index: Integer): boolean;
    procedure SetKimlikNo(Index: Integer; const Astring: string);
    function  KimlikNo_Specified(Index: Integer): boolean;
    procedure SetBabaAdi(Index: Integer; const Astring: string);
    function  BabaAdi_Specified(Index: Integer): boolean;
    procedure SetAnneAdi(Index: Integer; const Astring: string);
    function  AnneAdi_Specified(Index: Integer): boolean;
    procedure SetDogumYeri(Index: Integer; const Astring: string);
    function  DogumYeri_Specified(Index: Integer): boolean;
    procedure SetDosyaNo(Index: Integer; const Astring: string);
    function  DosyaNo_Specified(Index: Integer): boolean;
    procedure SetEPosta(Index: Integer; const Astring: string);
    function  EPosta_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property Adi:         string       Index (IS_OPTN) read FAdi write SetAdi stored Adi_Specified;
    property Soyadi:      string       Index (IS_OPTN) read FSoyadi write SetSoyadi stored Soyadi_Specified;
    property KimlikNo:    string       Index (IS_OPTN) read FKimlikNo write SetKimlikNo stored KimlikNo_Specified;
    property OrnekNo:     Int64        read FOrnekNo write FOrnekNo;
    property BabaAdi:     string       Index (IS_OPTN) read FBabaAdi write SetBabaAdi stored BabaAdi_Specified;
    property AnneAdi:     string       Index (IS_OPTN) read FAnneAdi write SetAnneAdi stored AnneAdi_Specified;
    property DogumTarihi: TXSDateTime  read FDogumTarihi write FDogumTarihi;
    property DogumYeri:   string       Index (IS_OPTN) read FDogumYeri write SetDogumYeri stored DogumYeri_Specified;
    property Cinsiyeti:   Cinsiyet     read FCinsiyeti write FCinsiyeti;
    property DosyaNo:     string       Index (IS_OPTN) read FDosyaNo write SetDosyaNo stored DosyaNo_Specified;
    property EPosta:      string       Index (IS_OPTN) read FEPosta write SetEPosta stored EPosta_Specified;
  end;



  // ************************************************************************ //
  // XML       : Order, global, <complexType>
  // Namespace : http://tenay.com.tr/
  // ************************************************************************ //
  Order = class(OrderBasic)
  private
    FKurumBilgileri: KurumBilgileri;
    FKurumBilgileri_Specified: boolean;
    FDoktorBilgileri: Doktor;
    FDoktorBilgileri_Specified: boolean;
    FGelis: Gelis;
    FGelis_Specified: boolean;
    procedure SetKurumBilgileri(Index: Integer; const AKurumBilgileri: KurumBilgileri);
    function  KurumBilgileri_Specified(Index: Integer): boolean;
    procedure SetDoktorBilgileri(Index: Integer; const ADoktor: Doktor);
    function  DoktorBilgileri_Specified(Index: Integer): boolean;
    procedure SetGelis(Index: Integer; const AGelis: Gelis);
    function  Gelis_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property KurumBilgileri:  KurumBilgileri  Index (IS_OPTN) read FKurumBilgileri write SetKurumBilgileri stored KurumBilgileri_Specified;
    property DoktorBilgileri: Doktor          Index (IS_OPTN) read FDoktorBilgileri write SetDoktorBilgileri stored DoktorBilgileri_Specified;
    property Gelis:           Gelis           Index (IS_OPTN) read FGelis write SetGelis stored Gelis_Specified;
  end;



  // ************************************************************************ //
  // XML       : HastaTur, global, <complexType>
  // Namespace : http://tenay.com.tr/
  // ************************************************************************ //
  HastaTur = class(TRemotable)
  private
    FId: Int64;
    FAdi: string;
    FAdi_Specified: boolean;
    procedure SetAdi(Index: Integer; const Astring: string);
    function  Adi_Specified(Index: Integer): boolean;
  published
    property Id:  Int64   read FId write FId;
    property Adi: string  Index (IS_OPTN) read FAdi write SetAdi stored Adi_Specified;
  end;



  // ************************************************************************ //
  // XML       : Tetkik, global, <complexType>
  // Namespace : http://tenay.com.tr/
  // ************************************************************************ //
  Tetkik = class(TRemotable)
  private
    FLogId: Int64;
    FAdi: string;
    FAdi_Specified: boolean;
    FKodu: string;
    FKodu_Specified: boolean;
    FAciklama: string;
    FAciklama_Specified: boolean;
    FBarkod: Int64;
    FOrnekTurId: string;
    FOrnekTurId_Specified: boolean;
    FKapId: Int64;
    FAlindigiTarih: TXSDateTime;
    procedure SetAdi(Index: Integer; const Astring: string);
    function  Adi_Specified(Index: Integer): boolean;
    procedure SetKodu(Index: Integer; const Astring: string);
    function  Kodu_Specified(Index: Integer): boolean;
    procedure SetAciklama(Index: Integer; const Astring: string);
    function  Aciklama_Specified(Index: Integer): boolean;
    procedure SetOrnekTurId(Index: Integer; const Astring: string);
    function  OrnekTurId_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property LogId:         Int64        read FLogId write FLogId;
    property Adi:           string       Index (IS_OPTN) read FAdi write SetAdi stored Adi_Specified;
    property Kodu:          string       Index (IS_OPTN) read FKodu write SetKodu stored Kodu_Specified;
    property Aciklama:      string       Index (IS_OPTN) read FAciklama write SetAciklama stored Aciklama_Specified;
    property Barkod:        Int64        read FBarkod write FBarkod;
    property OrnekTurId:    string       Index (IS_OPTN) read FOrnekTurId write SetOrnekTurId stored OrnekTurId_Specified;
    property KapId:         Int64        read FKapId write FKapId;
    property AlindigiTarih: TXSDateTime  read FAlindigiTarih write FAlindigiTarih;
  end;



  // ************************************************************************ //
  // XML       : Cevap, global, <complexType>
  // Namespace : http://tenay.com.tr/
  // ************************************************************************ //
  Cevap = class(TRemotable)
  private
    FKod: string;
    FKod_Specified: boolean;
    FMesaj: string;
    FMesaj_Specified: boolean;
    FHasta: string;
    FHasta_Specified: boolean;
    procedure SetKod(Index: Integer; const Astring: string);
    function  Kod_Specified(Index: Integer): boolean;
    procedure SetMesaj(Index: Integer; const Astring: string);
    function  Mesaj_Specified(Index: Integer): boolean;
    procedure SetHasta(Index: Integer; const Astring: string);
    function  Hasta_Specified(Index: Integer): boolean;
  published
    property Kod:   string  Index (IS_OPTN) read FKod write SetKod stored Kod_Specified;
    property Mesaj: string  Index (IS_OPTN) read FMesaj write SetMesaj stored Mesaj_Specified;
    property Hasta: string  Index (IS_OPTN) read FHasta write SetHasta stored Hasta_Specified;
  end;



  // ************************************************************************ //
  // XML       : HastakaydetCevap, global, <complexType>
  // Namespace : http://tenay.com.tr/
  // ************************************************************************ //
  HastakaydetCevap = class(Cevap)
  private
    FReferansId: Int64;
  published
    property ReferansId: Int64  read FReferansId write FReferansId;
  end;



  // ************************************************************************ //
  // XML       : OrderQuery, global, <complexType>
  // Namespace : http://tenay.com.tr/
  // ************************************************************************ //
  OrderQuery = class(TRemotable)
  private
    FKurumBilgileri: KurumBilgileri;
    FKurumBilgileri_Specified: boolean;
    FDoktorBilgileri: Doktor;
    FDoktorBilgileri_Specified: boolean;
    FReferanId: Int64;
    FOrnekNo: Int64;
    FDosyaNo: string;
    FDosyaNo_Specified: boolean;
    FRapor: Boolean;
    procedure SetKurumBilgileri(Index: Integer; const AKurumBilgileri: KurumBilgileri);
    function  KurumBilgileri_Specified(Index: Integer): boolean;
    procedure SetDoktorBilgileri(Index: Integer; const ADoktor: Doktor);
    function  DoktorBilgileri_Specified(Index: Integer): boolean;
    procedure SetDosyaNo(Index: Integer; const Astring: string);
    function  DosyaNo_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property KurumBilgileri:  KurumBilgileri  Index (IS_OPTN) read FKurumBilgileri write SetKurumBilgileri stored KurumBilgileri_Specified;
    property DoktorBilgileri: Doktor          Index (IS_OPTN) read FDoktorBilgileri write SetDoktorBilgileri stored DoktorBilgileri_Specified;
    property ReferanId:       Int64           read FReferanId write FReferanId;
    property OrnekNo:         Int64           read FOrnekNo write FOrnekNo;
    property DosyaNo:         string          Index (IS_OPTN) read FDosyaNo write SetDosyaNo stored DosyaNo_Specified;
    property Rapor:           Boolean         read FRapor write FRapor;
  end;

  ArrayOfTetkikSonuc = array of TetkikSonuc;    { "http://tenay.com.tr/"[GblCplx] }


  // ************************************************************************ //
  // XML       : HastaSorguCevap, global, <complexType>
  // Namespace : http://tenay.com.tr/
  // ************************************************************************ //
  HastaSorguCevap = class(Cevap)
  private
    FReferansId: Int64;
    FOrnekNo: Int64;
    FHastaBilgileri: OrderBasic;
    FHastaBilgileri_Specified: boolean;
    FTetkikler: ArrayOfTetkikSonuc;
    FTetkikler_Specified: boolean;
    FRapor: TByteDynArray;
    FRapor_Specified: boolean;
    FRapor64: string;
    FRapor64_Specified: boolean;
    FRaporAdi: string;
    FRaporAdi_Specified: boolean;
    FXml: string;
    FXml_Specified: boolean;
    procedure SetHastaBilgileri(Index: Integer; const AOrderBasic: OrderBasic);
    function  HastaBilgileri_Specified(Index: Integer): boolean;
    procedure SetTetkikler(Index: Integer; const AArrayOfTetkikSonuc: ArrayOfTetkikSonuc);
    function  Tetkikler_Specified(Index: Integer): boolean;
    procedure SetRapor(Index: Integer; const ATByteDynArray: TByteDynArray);
    function  Rapor_Specified(Index: Integer): boolean;
    procedure SetRapor64(Index: Integer; const Astring: string);
    function  Rapor64_Specified(Index: Integer): boolean;
    procedure SetRaporAdi(Index: Integer; const Astring: string);
    function  RaporAdi_Specified(Index: Integer): boolean;
    procedure SetXml(Index: Integer; const Astring: string);
    function  Xml_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property ReferansId:     Int64               read FReferansId write FReferansId;
    property OrnekNo:        Int64               read FOrnekNo write FOrnekNo;
    property HastaBilgileri: OrderBasic          Index (IS_OPTN) read FHastaBilgileri write SetHastaBilgileri stored HastaBilgileri_Specified;
    property Tetkikler:      ArrayOfTetkikSonuc  Index (IS_OPTN) read FTetkikler write SetTetkikler stored Tetkikler_Specified;
    property Rapor:          TByteDynArray       Index (IS_OPTN) read FRapor write SetRapor stored Rapor_Specified;
    property Rapor64:        string              Index (IS_OPTN) read FRapor64 write SetRapor64 stored Rapor64_Specified;
    property RaporAdi:       string              Index (IS_OPTN) read FRaporAdi write SetRaporAdi stored RaporAdi_Specified;
    property Xml:            string              Index (IS_OPTN) read FXml write SetXml stored Xml_Specified;
  end;

  ArrayOfTestNormalDeger = array of TestNormalDeger;   { "http://tenay.com.tr/"[GblCplx] }


  // ************************************************************************ //
  // XML       : TetkikSonuc, global, <complexType>
  // Namespace : http://tenay.com.tr/
  // ************************************************************************ //
  TetkikSonuc = class(TRemotable)
  private
    FAdi: string;
    FAdi_Specified: boolean;
    FKodu: string;
    FKodu_Specified: boolean;
    FAltTestKodu: string;
    FAltTestKodu_Specified: boolean;
    FAltTest: Boolean;
    FSonuc: string;
    FSonuc_Specified: boolean;
    FSonucTarihi: string;
    FSonucTarihi_Specified: boolean;
    FOnayTarihi: string;
    FOnayTarihi_Specified: boolean;
    FOnaylayan: string;
    FOnaylayan_Specified: boolean;
    FKabulTarihi: string;
    FKabulTarihi_Specified: boolean;
    FUzunRapor: string;
    FUzunRapor_Specified: boolean;
    FTestAciklama: string;
    FTestAciklama_Specified: boolean;
    FReferansMin: string;
    FReferansMin_Specified: boolean;
    FReferansMax: string;
    FReferansMax_Specified: boolean;
    FBirim: string;
    FBirim_Specified: boolean;
    FOzelNormalDeger: string;
    FOzelNormalDeger_Specified: boolean;
    FReferansDurum: RefDurum;
    FAciklama: string;
    FAciklama_Specified: boolean;
    FUniteAciklama: string;
    FUniteAciklama_Specified: boolean;
    FBarkod: Int64;
    FOrnekNo: Int64;
    FOrnekTurId: Int64;
    FKapId: Int64;
    FTestEkleri: TestEki;
    FTestEkleri_Specified: boolean;
    FIsMikro: Boolean;
    FMikroIstek: MikroIstek;
    FMikroIstek_Specified: boolean;
    FNormalDegerler: ArrayOfTestNormalDeger;
    FNormalDegerler_Specified: boolean;
    procedure SetAdi(Index: Integer; const Astring: string);
    function  Adi_Specified(Index: Integer): boolean;
    procedure SetKodu(Index: Integer; const Astring: string);
    function  Kodu_Specified(Index: Integer): boolean;
    procedure SetAltTestKodu(Index: Integer; const Astring: string);
    function  AltTestKodu_Specified(Index: Integer): boolean;
    procedure SetSonuc(Index: Integer; const Astring: string);
    function  Sonuc_Specified(Index: Integer): boolean;
    procedure SetSonucTarihi(Index: Integer; const Astring: string);
    function  SonucTarihi_Specified(Index: Integer): boolean;
    procedure SetOnayTarihi(Index: Integer; const Astring: string);
    function  OnayTarihi_Specified(Index: Integer): boolean;
    procedure SetOnaylayan(Index: Integer; const Astring: string);
    function  Onaylayan_Specified(Index: Integer): boolean;
    procedure SetKabulTarihi(Index: Integer; const Astring: string);
    function  KabulTarihi_Specified(Index: Integer): boolean;
    procedure SetUzunRapor(Index: Integer; const Astring: string);
    function  UzunRapor_Specified(Index: Integer): boolean;
    procedure SetTestAciklama(Index: Integer; const Astring: string);
    function  TestAciklama_Specified(Index: Integer): boolean;
    procedure SetReferansMin(Index: Integer; const Astring: string);
    function  ReferansMin_Specified(Index: Integer): boolean;
    procedure SetReferansMax(Index: Integer; const Astring: string);
    function  ReferansMax_Specified(Index: Integer): boolean;
    procedure SetBirim(Index: Integer; const Astring: string);
    function  Birim_Specified(Index: Integer): boolean;
    procedure SetOzelNormalDeger(Index: Integer; const Astring: string);
    function  OzelNormalDeger_Specified(Index: Integer): boolean;
    procedure SetAciklama(Index: Integer; const Astring: string);
    function  Aciklama_Specified(Index: Integer): boolean;
    procedure SetUniteAciklama(Index: Integer; const Astring: string);
    function  UniteAciklama_Specified(Index: Integer): boolean;
    procedure SetTestEkleri(Index: Integer; const ATestEki: TestEki);
    function  TestEkleri_Specified(Index: Integer): boolean;
    procedure SetMikroIstek(Index: Integer; const AMikroIstek: MikroIstek);
    function  MikroIstek_Specified(Index: Integer): boolean;
    procedure SetNormalDegerler(Index: Integer; const AArrayOfTestNormalDeger: ArrayOfTestNormalDeger);
    function  NormalDegerler_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property Adi:             string                  Index (IS_OPTN) read FAdi write SetAdi stored Adi_Specified;
    property Kodu:            string                  Index (IS_OPTN) read FKodu write SetKodu stored Kodu_Specified;
    property AltTestKodu:     string                  Index (IS_OPTN) read FAltTestKodu write SetAltTestKodu stored AltTestKodu_Specified;
    property AltTest:         Boolean                 read FAltTest write FAltTest;
    property Sonuc:           string                  Index (IS_OPTN) read FSonuc write SetSonuc stored Sonuc_Specified;
    property SonucTarihi:     string                  Index (IS_OPTN) read FSonucTarihi write SetSonucTarihi stored SonucTarihi_Specified;
    property OnayTarihi:      string                  Index (IS_OPTN) read FOnayTarihi write SetOnayTarihi stored OnayTarihi_Specified;
    property Onaylayan:       string                  Index (IS_OPTN) read FOnaylayan write SetOnaylayan stored Onaylayan_Specified;
    property KabulTarihi:     string                  Index (IS_OPTN) read FKabulTarihi write SetKabulTarihi stored KabulTarihi_Specified;
    property UzunRapor:       string                  Index (IS_OPTN) read FUzunRapor write SetUzunRapor stored UzunRapor_Specified;
    property TestAciklama:    string                  Index (IS_OPTN) read FTestAciklama write SetTestAciklama stored TestAciklama_Specified;
    property ReferansMin:     string                  Index (IS_OPTN) read FReferansMin write SetReferansMin stored ReferansMin_Specified;
    property ReferansMax:     string                  Index (IS_OPTN) read FReferansMax write SetReferansMax stored ReferansMax_Specified;
    property Birim:           string                  Index (IS_OPTN) read FBirim write SetBirim stored Birim_Specified;
    property OzelNormalDeger: string                  Index (IS_OPTN) read FOzelNormalDeger write SetOzelNormalDeger stored OzelNormalDeger_Specified;
    property ReferansDurum:   RefDurum                read FReferansDurum write FReferansDurum;
    property Aciklama:        string                  Index (IS_OPTN) read FAciklama write SetAciklama stored Aciklama_Specified;
    property UniteAciklama:   string                  Index (IS_OPTN) read FUniteAciklama write SetUniteAciklama stored UniteAciklama_Specified;
    property Barkod:          Int64                   read FBarkod write FBarkod;
    property OrnekNo:         Int64                   read FOrnekNo write FOrnekNo;
    property OrnekTurId:      Int64                   read FOrnekTurId write FOrnekTurId;
    property KapId:           Int64                   read FKapId write FKapId;
    property TestEkleri:      TestEki                 Index (IS_OPTN) read FTestEkleri write SetTestEkleri stored TestEkleri_Specified;
    property IsMikro:         Boolean                 read FIsMikro write FIsMikro;
    property MikroIstek:      MikroIstek              Index (IS_OPTN) read FMikroIstek write SetMikroIstek stored MikroIstek_Specified;
    property NormalDegerler:  ArrayOfTestNormalDeger  Index (IS_OPTN) read FNormalDegerler write SetNormalDegerler stored NormalDegerler_Specified;
  end;

  ArrayOfString = array of string;              { "http://tenay.com.tr/"[GblCplx] }
  ArrayOfDosyaTur = array of DosyaTur;          { "http://tenay.com.tr/"[GblCplx] }


  // ************************************************************************ //
  // XML       : TestEki, global, <complexType>
  // Namespace : http://tenay.com.tr/
  // ************************************************************************ //
  TestEki = class(TRemotable)
  private
    FData: ArrayOfString;
    FData_Specified: boolean;
    FAdi: ArrayOfString;
    FAdi_Specified: boolean;
    FTur: ArrayOfDosyaTur;
    FTur_Specified: boolean;
    FUrl: ArrayOfString;
    FUrl_Specified: boolean;
    procedure SetData(Index: Integer; const AArrayOfString: ArrayOfString);
    function  Data_Specified(Index: Integer): boolean;
    procedure SetAdi(Index: Integer; const AArrayOfString: ArrayOfString);
    function  Adi_Specified(Index: Integer): boolean;
    procedure SetTur(Index: Integer; const AArrayOfDosyaTur: ArrayOfDosyaTur);
    function  Tur_Specified(Index: Integer): boolean;
    procedure SetUrl(Index: Integer; const AArrayOfString: ArrayOfString);
    function  Url_Specified(Index: Integer): boolean;
  published
    property Data: ArrayOfString    Index (IS_OPTN) read FData write SetData stored Data_Specified;
    property Adi:  ArrayOfString    Index (IS_OPTN) read FAdi write SetAdi stored Adi_Specified;
    property Tur:  ArrayOfDosyaTur  Index (IS_OPTN) read FTur write SetTur stored Tur_Specified;
    property Url:  ArrayOfString    Index (IS_OPTN) read FUrl write SetUrl stored Url_Specified;
  end;

  ArrayOfMikroOrganizma = array of MikroOrganizma;   { "http://tenay.com.tr/"[GblCplx] }
  ArrayOfMikroYorum = array of MikroYorum;      { "http://tenay.com.tr/"[GblCplx] }


  // ************************************************************************ //
  // XML       : MikroIstek, global, <complexType>
  // Namespace : http://tenay.com.tr/
  // ************************************************************************ //
  MikroIstek = class(TRemotable)
  private
    FIstekId: Int64;
    FOrnekTuru: string;
    FOrnekTuru_Specified: boolean;
    FOrnekTuruAdi: string;
    FOrnekTuruAdi_Specified: boolean;
    FAlindigiYer: string;
    FAlindigiYer_Specified: boolean;
    FOnayTarihi: TXSDateTime;
    FAciklama: string;
    FAciklama_Specified: boolean;
    FOrganizmalar: ArrayOfMikroOrganizma;
    FOrganizmalar_Specified: boolean;
    FYorum: ArrayOfMikroYorum;
    FYorum_Specified: boolean;
    procedure SetOrnekTuru(Index: Integer; const Astring: string);
    function  OrnekTuru_Specified(Index: Integer): boolean;
    procedure SetOrnekTuruAdi(Index: Integer; const Astring: string);
    function  OrnekTuruAdi_Specified(Index: Integer): boolean;
    procedure SetAlindigiYer(Index: Integer; const Astring: string);
    function  AlindigiYer_Specified(Index: Integer): boolean;
    procedure SetAciklama(Index: Integer; const Astring: string);
    function  Aciklama_Specified(Index: Integer): boolean;
    procedure SetOrganizmalar(Index: Integer; const AArrayOfMikroOrganizma: ArrayOfMikroOrganizma);
    function  Organizmalar_Specified(Index: Integer): boolean;
    procedure SetYorum(Index: Integer; const AArrayOfMikroYorum: ArrayOfMikroYorum);
    function  Yorum_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property IstekId:      Int64                  read FIstekId write FIstekId;
    property OrnekTuru:    string                 Index (IS_OPTN) read FOrnekTuru write SetOrnekTuru stored OrnekTuru_Specified;
    property OrnekTuruAdi: string                 Index (IS_OPTN) read FOrnekTuruAdi write SetOrnekTuruAdi stored OrnekTuruAdi_Specified;
    property AlindigiYer:  string                 Index (IS_OPTN) read FAlindigiYer write SetAlindigiYer stored AlindigiYer_Specified;
    property OnayTarihi:   TXSDateTime            read FOnayTarihi write FOnayTarihi;
    property Aciklama:     string                 Index (IS_OPTN) read FAciklama write SetAciklama stored Aciklama_Specified;
    property Organizmalar: ArrayOfMikroOrganizma  Index (IS_OPTN) read FOrganizmalar write SetOrganizmalar stored Organizmalar_Specified;
    property Yorum:        ArrayOfMikroYorum      Index (IS_OPTN) read FYorum write SetYorum stored Yorum_Specified;
  end;

  ArrayOfAntibiyotik = array of Antibiyotik;    { "http://tenay.com.tr/"[GblCplx] }


  // ************************************************************************ //
  // XML       : MikroOrganizma, global, <complexType>
  // Namespace : http://tenay.com.tr/
  // ************************************************************************ //
  MikroOrganizma = class(TRemotable)
  private
    FId: Integer;
    FAdi: string;
    FAdi_Specified: boolean;
    FKodu: string;
    FKodu_Specified: boolean;
    FKoloni: string;
    FKoloni_Specified: boolean;
    FBirim: string;
    FBirim_Specified: boolean;
    FCalisma: Integer;
    FAciklama: string;
    FAciklama_Specified: boolean;
    FAntibiyotikler: ArrayOfAntibiyotik;
    FAntibiyotikler_Specified: boolean;
    procedure SetAdi(Index: Integer; const Astring: string);
    function  Adi_Specified(Index: Integer): boolean;
    procedure SetKodu(Index: Integer; const Astring: string);
    function  Kodu_Specified(Index: Integer): boolean;
    procedure SetKoloni(Index: Integer; const Astring: string);
    function  Koloni_Specified(Index: Integer): boolean;
    procedure SetBirim(Index: Integer; const Astring: string);
    function  Birim_Specified(Index: Integer): boolean;
    procedure SetAciklama(Index: Integer; const Astring: string);
    function  Aciklama_Specified(Index: Integer): boolean;
    procedure SetAntibiyotikler(Index: Integer; const AArrayOfAntibiyotik: ArrayOfAntibiyotik);
    function  Antibiyotikler_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property Id:             Integer             read FId write FId;
    property Adi:            string              Index (IS_OPTN) read FAdi write SetAdi stored Adi_Specified;
    property Kodu:           string              Index (IS_OPTN) read FKodu write SetKodu stored Kodu_Specified;
    property Koloni:         string              Index (IS_OPTN) read FKoloni write SetKoloni stored Koloni_Specified;
    property Birim:          string              Index (IS_OPTN) read FBirim write SetBirim stored Birim_Specified;
    property Calisma:        Integer             read FCalisma write FCalisma;
    property Aciklama:       string              Index (IS_OPTN) read FAciklama write SetAciklama stored Aciklama_Specified;
    property Antibiyotikler: ArrayOfAntibiyotik  Index (IS_OPTN) read FAntibiyotikler write SetAntibiyotikler stored Antibiyotikler_Specified;
  end;



  // ************************************************************************ //
  // XML       : Antibiyotik, global, <complexType>
  // Namespace : http://tenay.com.tr/
  // ************************************************************************ //
  Antibiyotik = class(TRemotable)
  private
    FAdi: string;
    FAdi_Specified: boolean;
    FKodu: string;
    FKodu_Specified: boolean;
    FSonuc: string;
    FSonuc_Specified: boolean;
    FGolge: Boolean;
    FDeger: string;
    FDeger_Specified: boolean;
    FAciklama: string;
    FAciklama_Specified: boolean;
    procedure SetAdi(Index: Integer; const Astring: string);
    function  Adi_Specified(Index: Integer): boolean;
    procedure SetKodu(Index: Integer; const Astring: string);
    function  Kodu_Specified(Index: Integer): boolean;
    procedure SetSonuc(Index: Integer; const Astring: string);
    function  Sonuc_Specified(Index: Integer): boolean;
    procedure SetDeger(Index: Integer; const Astring: string);
    function  Deger_Specified(Index: Integer): boolean;
    procedure SetAciklama(Index: Integer; const Astring: string);
    function  Aciklama_Specified(Index: Integer): boolean;
  published
    property Adi:      string   Index (IS_OPTN) read FAdi write SetAdi stored Adi_Specified;
    property Kodu:     string   Index (IS_OPTN) read FKodu write SetKodu stored Kodu_Specified;
    property Sonuc:    string   Index (IS_OPTN) read FSonuc write SetSonuc stored Sonuc_Specified;
    property Golge:    Boolean  read FGolge write FGolge;
    property Deger:    string   Index (IS_OPTN) read FDeger write SetDeger stored Deger_Specified;
    property Aciklama: string   Index (IS_OPTN) read FAciklama write SetAciklama stored Aciklama_Specified;
  end;



  // ************************************************************************ //
  // XML       : MikroYorum, global, <complexType>
  // Namespace : http://tenay.com.tr/
  // ************************************************************************ //
  MikroYorum = class(TRemotable)
  private
    FAdi: string;
    FAdi_Specified: boolean;
    FKod: string;
    FKod_Specified: boolean;
    FAciklama: string;
    FAciklama_Specified: boolean;
    procedure SetAdi(Index: Integer; const Astring: string);
    function  Adi_Specified(Index: Integer): boolean;
    procedure SetKod(Index: Integer; const Astring: string);
    function  Kod_Specified(Index: Integer): boolean;
    procedure SetAciklama(Index: Integer; const Astring: string);
    function  Aciklama_Specified(Index: Integer): boolean;
  published
    property Adi:      string  Index (IS_OPTN) read FAdi write SetAdi stored Adi_Specified;
    property Kod:      string  Index (IS_OPTN) read FKod write SetKod stored Kod_Specified;
    property Aciklama: string  Index (IS_OPTN) read FAciklama write SetAciklama stored Aciklama_Specified;
  end;



  // ************************************************************************ //
  // XML       : TestNormalDeger, global, <complexType>
  // Namespace : http://tenay.com.tr/
  // ************************************************************************ //
  TestNormalDeger = class(TRemotable)
  private
    FMin: string;
    FMin_Specified: boolean;
    FMax: string;
    FMax_Specified: boolean;
    FBirim: string;
    FBirim_Specified: boolean;
    FAciklama: string;
    FAciklama_Specified: boolean;
    FOzelNormalDeger: string;
    FOzelNormalDeger_Specified: boolean;
    FDurum: RefDurum;
    procedure SetMin(Index: Integer; const Astring: string);
    function  Min_Specified(Index: Integer): boolean;
    procedure SetMax(Index: Integer; const Astring: string);
    function  Max_Specified(Index: Integer): boolean;
    procedure SetBirim(Index: Integer; const Astring: string);
    function  Birim_Specified(Index: Integer): boolean;
    procedure SetAciklama(Index: Integer; const Astring: string);
    function  Aciklama_Specified(Index: Integer): boolean;
    procedure SetOzelNormalDeger(Index: Integer; const Astring: string);
    function  OzelNormalDeger_Specified(Index: Integer): boolean;
  published
    property Min:             string    Index (IS_OPTN) read FMin write SetMin stored Min_Specified;
    property Max:             string    Index (IS_OPTN) read FMax write SetMax stored Max_Specified;
    property Birim:           string    Index (IS_OPTN) read FBirim write SetBirim stored Birim_Specified;
    property Aciklama:        string    Index (IS_OPTN) read FAciklama write SetAciklama stored Aciklama_Specified;
    property OzelNormalDeger: string    Index (IS_OPTN) read FOzelNormalDeger write SetOzelNormalDeger stored OzelNormalDeger_Specified;
    property Durum:           RefDurum  read FDurum write FDurum;
  end;

  ArrayOfTestSonuc = array of TestSonuc;        { "http://tenay.com.tr/"[GblCplx] }


  // ************************************************************************ //
  // XML       : HastaSorguCevapReferans, global, <complexType>
  // Namespace : http://tenay.com.tr/
  // ************************************************************************ //
  HastaSorguCevapReferans = class(Cevap)
  private
    FReferansId: Int64;
    FOrnekNo: Int64;
    FHastaBilgileri: OrderBasic;
    FHastaBilgileri_Specified: boolean;
    FTetkikler: ArrayOfTestSonuc;
    FTetkikler_Specified: boolean;
    FRapor: TByteDynArray;
    FRapor_Specified: boolean;
    FRapor64: string;
    FRapor64_Specified: boolean;
    FRaporAdi: string;
    FRaporAdi_Specified: boolean;
    FXml: string;
    FXml_Specified: boolean;
    procedure SetHastaBilgileri(Index: Integer; const AOrderBasic: OrderBasic);
    function  HastaBilgileri_Specified(Index: Integer): boolean;
    procedure SetTetkikler(Index: Integer; const AArrayOfTestSonuc: ArrayOfTestSonuc);
    function  Tetkikler_Specified(Index: Integer): boolean;
    procedure SetRapor(Index: Integer; const ATByteDynArray: TByteDynArray);
    function  Rapor_Specified(Index: Integer): boolean;
    procedure SetRapor64(Index: Integer; const Astring: string);
    function  Rapor64_Specified(Index: Integer): boolean;
    procedure SetRaporAdi(Index: Integer; const Astring: string);
    function  RaporAdi_Specified(Index: Integer): boolean;
    procedure SetXml(Index: Integer; const Astring: string);
    function  Xml_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property ReferansId:     Int64             read FReferansId write FReferansId;
    property OrnekNo:        Int64             read FOrnekNo write FOrnekNo;
    property HastaBilgileri: OrderBasic        Index (IS_OPTN) read FHastaBilgileri write SetHastaBilgileri stored HastaBilgileri_Specified;
    property Tetkikler:      ArrayOfTestSonuc  Index (IS_OPTN) read FTetkikler write SetTetkikler stored Tetkikler_Specified;
    property Rapor:          TByteDynArray     Index (IS_OPTN) read FRapor write SetRapor stored Rapor_Specified;
    property Rapor64:        string            Index (IS_OPTN) read FRapor64 write SetRapor64 stored Rapor64_Specified;
    property RaporAdi:       string            Index (IS_OPTN) read FRaporAdi write SetRaporAdi stored RaporAdi_Specified;
    property Xml:            string            Index (IS_OPTN) read FXml write SetXml stored Xml_Specified;
  end;



  // ************************************************************************ //
  // XML       : TestSonuc, global, <complexType>
  // Namespace : http://tenay.com.tr/
  // ************************************************************************ //
  TestSonuc = class(TRemotable)
  private
    FAdi: string;
    FAdi_Specified: boolean;
    FKodu: string;
    FKodu_Specified: boolean;
    FAltTestKodu: string;
    FAltTestKodu_Specified: boolean;
    FAltTest: Boolean;
    FSonuc: string;
    FSonuc_Specified: boolean;
    FSonucTarihi: string;
    FSonucTarihi_Specified: boolean;
    FOnayTarihi: string;
    FOnayTarihi_Specified: boolean;
    FOnaylayan: string;
    FOnaylayan_Specified: boolean;
    FKabulTarihi: string;
    FKabulTarihi_Specified: boolean;
    FUzunRapor: string;
    FUzunRapor_Specified: boolean;
    FTestAciklama: string;
    FTestAciklama_Specified: boolean;
    FReferansMin: string;
    FReferansMin_Specified: boolean;
    FReferansMax: string;
    FReferansMax_Specified: boolean;
    FBirim: string;
    FBirim_Specified: boolean;
    FOzelNormalDeger: string;
    FOzelNormalDeger_Specified: boolean;
    FReferansDurum: RefDurum;
    FAciklama: string;
    FAciklama_Specified: boolean;
    FUniteAciklama: string;
    FUniteAciklama_Specified: boolean;
    FBarkod: Int64;
    FOrnekNo: Int64;
    FOrnekTurId: Int64;
    FKapId: Int64;
    FRedSebebiId: Integer;
    FRedSebebiAdi: string;
    FRedSebebiAdi_Specified: boolean;
    FTestEkleri: TestEki;
    FTestEkleri_Specified: boolean;
    FIsMikro: Boolean;
    FMikroIstek: MikroIstek;
    FMikroIstek_Specified: boolean;
    FNormalDegerler: ArrayOfTestNormalDeger;
    FNormalDegerler_Specified: boolean;
    procedure SetAdi(Index: Integer; const Astring: string);
    function  Adi_Specified(Index: Integer): boolean;
    procedure SetKodu(Index: Integer; const Astring: string);
    function  Kodu_Specified(Index: Integer): boolean;
    procedure SetAltTestKodu(Index: Integer; const Astring: string);
    function  AltTestKodu_Specified(Index: Integer): boolean;
    procedure SetSonuc(Index: Integer; const Astring: string);
    function  Sonuc_Specified(Index: Integer): boolean;
    procedure SetSonucTarihi(Index: Integer; const Astring: string);
    function  SonucTarihi_Specified(Index: Integer): boolean;
    procedure SetOnayTarihi(Index: Integer; const Astring: string);
    function  OnayTarihi_Specified(Index: Integer): boolean;
    procedure SetOnaylayan(Index: Integer; const Astring: string);
    function  Onaylayan_Specified(Index: Integer): boolean;
    procedure SetKabulTarihi(Index: Integer; const Astring: string);
    function  KabulTarihi_Specified(Index: Integer): boolean;
    procedure SetUzunRapor(Index: Integer; const Astring: string);
    function  UzunRapor_Specified(Index: Integer): boolean;
    procedure SetTestAciklama(Index: Integer; const Astring: string);
    function  TestAciklama_Specified(Index: Integer): boolean;
    procedure SetReferansMin(Index: Integer; const Astring: string);
    function  ReferansMin_Specified(Index: Integer): boolean;
    procedure SetReferansMax(Index: Integer; const Astring: string);
    function  ReferansMax_Specified(Index: Integer): boolean;
    procedure SetBirim(Index: Integer; const Astring: string);
    function  Birim_Specified(Index: Integer): boolean;
    procedure SetOzelNormalDeger(Index: Integer; const Astring: string);
    function  OzelNormalDeger_Specified(Index: Integer): boolean;
    procedure SetAciklama(Index: Integer; const Astring: string);
    function  Aciklama_Specified(Index: Integer): boolean;
    procedure SetUniteAciklama(Index: Integer; const Astring: string);
    function  UniteAciklama_Specified(Index: Integer): boolean;
    procedure SetRedSebebiAdi(Index: Integer; const Astring: string);
    function  RedSebebiAdi_Specified(Index: Integer): boolean;
    procedure SetTestEkleri(Index: Integer; const ATestEki: TestEki);
    function  TestEkleri_Specified(Index: Integer): boolean;
    procedure SetMikroIstek(Index: Integer; const AMikroIstek: MikroIstek);
    function  MikroIstek_Specified(Index: Integer): boolean;
    procedure SetNormalDegerler(Index: Integer; const AArrayOfTestNormalDeger: ArrayOfTestNormalDeger);
    function  NormalDegerler_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property Adi:             string                  Index (IS_OPTN) read FAdi write SetAdi stored Adi_Specified;
    property Kodu:            string                  Index (IS_OPTN) read FKodu write SetKodu stored Kodu_Specified;
    property AltTestKodu:     string                  Index (IS_OPTN) read FAltTestKodu write SetAltTestKodu stored AltTestKodu_Specified;
    property AltTest:         Boolean                 read FAltTest write FAltTest;
    property Sonuc:           string                  Index (IS_OPTN) read FSonuc write SetSonuc stored Sonuc_Specified;
    property SonucTarihi:     string                  Index (IS_OPTN) read FSonucTarihi write SetSonucTarihi stored SonucTarihi_Specified;
    property OnayTarihi:      string                  Index (IS_OPTN) read FOnayTarihi write SetOnayTarihi stored OnayTarihi_Specified;
    property Onaylayan:       string                  Index (IS_OPTN) read FOnaylayan write SetOnaylayan stored Onaylayan_Specified;
    property KabulTarihi:     string                  Index (IS_OPTN) read FKabulTarihi write SetKabulTarihi stored KabulTarihi_Specified;
    property UzunRapor:       string                  Index (IS_OPTN) read FUzunRapor write SetUzunRapor stored UzunRapor_Specified;
    property TestAciklama:    string                  Index (IS_OPTN) read FTestAciklama write SetTestAciklama stored TestAciklama_Specified;
    property ReferansMin:     string                  Index (IS_OPTN) read FReferansMin write SetReferansMin stored ReferansMin_Specified;
    property ReferansMax:     string                  Index (IS_OPTN) read FReferansMax write SetReferansMax stored ReferansMax_Specified;
    property Birim:           string                  Index (IS_OPTN) read FBirim write SetBirim stored Birim_Specified;
    property OzelNormalDeger: string                  Index (IS_OPTN) read FOzelNormalDeger write SetOzelNormalDeger stored OzelNormalDeger_Specified;
    property ReferansDurum:   RefDurum                read FReferansDurum write FReferansDurum;
    property Aciklama:        string                  Index (IS_OPTN) read FAciklama write SetAciklama stored Aciklama_Specified;
    property UniteAciklama:   string                  Index (IS_OPTN) read FUniteAciklama write SetUniteAciklama stored UniteAciklama_Specified;
    property Barkod:          Int64                   read FBarkod write FBarkod;
    property OrnekNo:         Int64                   read FOrnekNo write FOrnekNo;
    property OrnekTurId:      Int64                   read FOrnekTurId write FOrnekTurId;
    property KapId:           Int64                   read FKapId write FKapId;
    property RedSebebiId:     Integer                 read FRedSebebiId write FRedSebebiId;
    property RedSebebiAdi:    string                  Index (IS_OPTN) read FRedSebebiAdi write SetRedSebebiAdi stored RedSebebiAdi_Specified;
    property TestEkleri:      TestEki                 Index (IS_OPTN) read FTestEkleri write SetTestEkleri stored TestEkleri_Specified;
    property IsMikro:         Boolean                 read FIsMikro write FIsMikro;
    property MikroIstek:      MikroIstek              Index (IS_OPTN) read FMikroIstek write SetMikroIstek stored MikroIstek_Specified;
    property NormalDegerler:  ArrayOfTestNormalDeger  Index (IS_OPTN) read FNormalDegerler write SetNormalDegerler stored NormalDegerler_Specified;
  end;



  // ************************************************************************ //
  // XML       : OrnekListesiQuery, global, <complexType>
  // Namespace : http://tenay.com.tr/
  // ************************************************************************ //
  OrnekListesiQuery = class(TRemotable)
  private
    FKurumBilgileri: KurumBilgileri;
    FKurumBilgileri_Specified: boolean;
    FTC: Int64;
    FBas: TXSDateTime;
    FSon: TXSDateTime;
    procedure SetKurumBilgileri(Index: Integer; const AKurumBilgileri: KurumBilgileri);
    function  KurumBilgileri_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property KurumBilgileri: KurumBilgileri  Index (IS_OPTN) read FKurumBilgileri write SetKurumBilgileri stored KurumBilgileri_Specified;
    property TC:             Int64           read FTC write FTC;
    property Bas:            TXSDateTime     read FBas write FBas;
    property Son:            TXSDateTime     read FSon write FSon;
  end;

  ArrayOfOrnekDetay = array of OrnekDetay;      { "http://tenay.com.tr/"[GblCplx] }


  // ************************************************************************ //
  // XML       : OrnekListesi, global, <complexType>
  // Namespace : http://tenay.com.tr/
  // ************************************************************************ //
  OrnekListesi = class(TRemotable)
  private
    FSonucKodu: string;
    FSonucKodu_Specified: boolean;
    FSonucMesaji: string;
    FSonucMesaji_Specified: boolean;
    FOrnekler: ArrayOfOrnekDetay;
    FOrnekler_Specified: boolean;
    procedure SetSonucKodu(Index: Integer; const Astring: string);
    function  SonucKodu_Specified(Index: Integer): boolean;
    procedure SetSonucMesaji(Index: Integer; const Astring: string);
    function  SonucMesaji_Specified(Index: Integer): boolean;
    procedure SetOrnekler(Index: Integer; const AArrayOfOrnekDetay: ArrayOfOrnekDetay);
    function  Ornekler_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property SonucKodu:   string             Index (IS_OPTN) read FSonucKodu write SetSonucKodu stored SonucKodu_Specified;
    property SonucMesaji: string             Index (IS_OPTN) read FSonucMesaji write SetSonucMesaji stored SonucMesaji_Specified;
    property Ornekler:    ArrayOfOrnekDetay  Index (IS_OPTN) read FOrnekler write SetOrnekler stored Ornekler_Specified;
  end;



  // ************************************************************************ //
  // XML       : OrnekDetay, global, <complexType>
  // Namespace : http://tenay.com.tr/
  // ************************************************************************ //
  OrnekDetay = class(TRemotable)
  private
    FOrnekNo: Int64;
    FTarih: string;
    FTarih_Specified: boolean;
    procedure SetTarih(Index: Integer; const Astring: string);
    function  Tarih_Specified(Index: Integer): boolean;
  published
    property OrnekNo: Int64   read FOrnekNo write FOrnekNo;
    property Tarih:   string  Index (IS_OPTN) read FTarih write SetTarih stored Tarih_Specified;
  end;



  // ************************************************************************ //
  // XML       : TCSonuclariQuery, global, <complexType>
  // Namespace : http://tenay.com.tr/
  // ************************************************************************ //
  TCSonuclariQuery = class(TRemotable)
  private
    FKurumBilgileri: KurumBilgileri;
    FKurumBilgileri_Specified: boolean;
    FTC: Int64;
    FBas: TXSDateTime;
    FSon: TXSDateTime;
    procedure SetKurumBilgileri(Index: Integer; const AKurumBilgileri: KurumBilgileri);
    function  KurumBilgileri_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property KurumBilgileri: KurumBilgileri  Index (IS_OPTN) read FKurumBilgileri write SetKurumBilgileri stored KurumBilgileri_Specified;
    property TC:             Int64           read FTC write FTC;
    property Bas:            TXSDateTime     read FBas write FBas;
    property Son:            TXSDateTime     read FSon write FSon;
  end;

  ArrayOfOrnekSonuc = array of OrnekSonuc;      { "http://tenay.com.tr/"[GblCplx] }


  // ************************************************************************ //
  // XML       : TCSonuclariResult, global, <complexType>
  // Namespace : http://tenay.com.tr/
  // ************************************************************************ //
  TCSonuclariResult = class(TRemotable)
  private
    FSonucKodu: string;
    FSonucKodu_Specified: boolean;
    FSonucMesaji: string;
    FSonucMesaji_Specified: boolean;
    FTCKimlik: string;
    FTCKimlik_Specified: boolean;
    FDosyaNo: string;
    FDosyaNo_Specified: boolean;
    FAdi: string;
    FAdi_Specified: boolean;
    FSoyadi: string;
    FSoyadi_Specified: boolean;
    FDogumTarihi: TXSDateTime;
    FCinsiyeti: string;
    FCinsiyeti_Specified: boolean;
    FSonuclar: ArrayOfOrnekSonuc;
    FSonuclar_Specified: boolean;
    procedure SetSonucKodu(Index: Integer; const Astring: string);
    function  SonucKodu_Specified(Index: Integer): boolean;
    procedure SetSonucMesaji(Index: Integer; const Astring: string);
    function  SonucMesaji_Specified(Index: Integer): boolean;
    procedure SetTCKimlik(Index: Integer; const Astring: string);
    function  TCKimlik_Specified(Index: Integer): boolean;
    procedure SetDosyaNo(Index: Integer; const Astring: string);
    function  DosyaNo_Specified(Index: Integer): boolean;
    procedure SetAdi(Index: Integer; const Astring: string);
    function  Adi_Specified(Index: Integer): boolean;
    procedure SetSoyadi(Index: Integer; const Astring: string);
    function  Soyadi_Specified(Index: Integer): boolean;
    procedure SetCinsiyeti(Index: Integer; const Astring: string);
    function  Cinsiyeti_Specified(Index: Integer): boolean;
    procedure SetSonuclar(Index: Integer; const AArrayOfOrnekSonuc: ArrayOfOrnekSonuc);
    function  Sonuclar_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property SonucKodu:   string             Index (IS_OPTN) read FSonucKodu write SetSonucKodu stored SonucKodu_Specified;
    property SonucMesaji: string             Index (IS_OPTN) read FSonucMesaji write SetSonucMesaji stored SonucMesaji_Specified;
    property TCKimlik:    string             Index (IS_OPTN) read FTCKimlik write SetTCKimlik stored TCKimlik_Specified;
    property DosyaNo:     string             Index (IS_OPTN) read FDosyaNo write SetDosyaNo stored DosyaNo_Specified;
    property Adi:         string             Index (IS_OPTN) read FAdi write SetAdi stored Adi_Specified;
    property Soyadi:      string             Index (IS_OPTN) read FSoyadi write SetSoyadi stored Soyadi_Specified;
    property DogumTarihi: TXSDateTime        read FDogumTarihi write FDogumTarihi;
    property Cinsiyeti:   string             Index (IS_OPTN) read FCinsiyeti write SetCinsiyeti stored Cinsiyeti_Specified;
    property Sonuclar:    ArrayOfOrnekSonuc  Index (IS_OPTN) read FSonuclar write SetSonuclar stored Sonuclar_Specified;
  end;



  // ************************************************************************ //
  // XML       : OrnekSonuc, global, <complexType>
  // Namespace : http://tenay.com.tr/
  // ************************************************************************ //
  OrnekSonuc = class(TRemotable)
  private
    FOrnekNo: Int64;
    FReferans: string;
    FReferans_Specified: boolean;
    FReferans2: string;
    FReferans2_Specified: boolean;
    FKayitTarihi: TXSDateTime;
    FTetkikler: ArrayOfTetkikSonuc;
    FTetkikler_Specified: boolean;
    procedure SetReferans(Index: Integer; const Astring: string);
    function  Referans_Specified(Index: Integer): boolean;
    procedure SetReferans2(Index: Integer; const Astring: string);
    function  Referans2_Specified(Index: Integer): boolean;
    procedure SetTetkikler(Index: Integer; const AArrayOfTetkikSonuc: ArrayOfTetkikSonuc);
    function  Tetkikler_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property OrnekNo:     Int64               read FOrnekNo write FOrnekNo;
    property Referans:    string              Index (IS_OPTN) read FReferans write SetReferans stored Referans_Specified;
    property Referans2:   string              Index (IS_OPTN) read FReferans2 write SetReferans2 stored Referans2_Specified;
    property KayitTarihi: TXSDateTime         read FKayitTarihi write FKayitTarihi;
    property Tetkikler:   ArrayOfTetkikSonuc  Index (IS_OPTN) read FTetkikler write SetTetkikler stored Tetkikler_Specified;
  end;



  // ************************************************************************ //
  // XML       : HastaListQuery, global, <complexType>
  // Namespace : http://tenay.com.tr/
  // ************************************************************************ //
  HastaListQuery = class(TRemotable)
  private
    FKurumBilgileri: KurumBilgileri;
    FKurumBilgileri_Specified: boolean;
    FDoktorBilgileri: Doktor;
    FDoktorBilgileri_Specified: boolean;
    FBas: TXSDateTime;
    FSon: TXSDateTime;
    FKayitDurumu: KayitDurumu;
    procedure SetKurumBilgileri(Index: Integer; const AKurumBilgileri: KurumBilgileri);
    function  KurumBilgileri_Specified(Index: Integer): boolean;
    procedure SetDoktorBilgileri(Index: Integer; const ADoktor: Doktor);
    function  DoktorBilgileri_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property KurumBilgileri:  KurumBilgileri  Index (IS_OPTN) read FKurumBilgileri write SetKurumBilgileri stored KurumBilgileri_Specified;
    property DoktorBilgileri: Doktor          Index (IS_OPTN) read FDoktorBilgileri write SetDoktorBilgileri stored DoktorBilgileri_Specified;
    property Bas:             TXSDateTime     read FBas write FBas;
    property Son:             TXSDateTime     read FSon write FSon;
    property KayitDurumu:     KayitDurumu     read FKayitDurumu write FKayitDurumu;
  end;

  ArrayOfHastaDetay = array of HastaDetay;      { "http://tenay.com.tr/"[GblCplx] }


  // ************************************************************************ //
  // XML       : HastaListesi, global, <complexType>
  // Namespace : http://tenay.com.tr/
  // ************************************************************************ //
  HastaListesi = class(BaseClass)
  private
    FListe: ArrayOfHastaDetay;
    FListe_Specified: boolean;
    FHastaListe: ArrayOfHastaDetay;
    FHastaListe_Specified: boolean;
    procedure SetListe(Index: Integer; const AArrayOfHastaDetay: ArrayOfHastaDetay);
    function  Liste_Specified(Index: Integer): boolean;
    procedure SetHastaListe(Index: Integer; const AArrayOfHastaDetay: ArrayOfHastaDetay);
    function  HastaListe_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property Liste:      ArrayOfHastaDetay  Index (IS_OPTN) read FListe write SetListe stored Liste_Specified;
    property HastaListe: ArrayOfHastaDetay  Index (IS_OPTN) read FHastaListe write SetHastaListe stored HastaListe_Specified;
  end;



  // ************************************************************************ //
  // XML       : HastaDetay, global, <complexType>
  // Namespace : http://tenay.com.tr/
  // ************************************************************************ //
  HastaDetay = class(TRemotable)
  private
    FId: string;
    FId_Specified: boolean;
    FAdi: string;
    FAdi_Specified: boolean;
    FSoyadi: string;
    FSoyadi_Specified: boolean;
    FOrnekNo: string;
    FOrnekNo_Specified: boolean;
    FReferansNo: string;
    FReferansNo_Specified: boolean;
    FKimlikNo: string;
    FKimlikNo_Specified: boolean;
    FTarih: string;
    FTarih_Specified: boolean;
    FKayitDurumu: KayitDurumu;
    procedure SetId(Index: Integer; const Astring: string);
    function  Id_Specified(Index: Integer): boolean;
    procedure SetAdi(Index: Integer; const Astring: string);
    function  Adi_Specified(Index: Integer): boolean;
    procedure SetSoyadi(Index: Integer; const Astring: string);
    function  Soyadi_Specified(Index: Integer): boolean;
    procedure SetOrnekNo(Index: Integer; const Astring: string);
    function  OrnekNo_Specified(Index: Integer): boolean;
    procedure SetReferansNo(Index: Integer; const Astring: string);
    function  ReferansNo_Specified(Index: Integer): boolean;
    procedure SetKimlikNo(Index: Integer; const Astring: string);
    function  KimlikNo_Specified(Index: Integer): boolean;
    procedure SetTarih(Index: Integer; const Astring: string);
    function  Tarih_Specified(Index: Integer): boolean;
  published
    property Id:          string       Index (IS_OPTN) read FId write SetId stored Id_Specified;
    property Adi:         string       Index (IS_OPTN) read FAdi write SetAdi stored Adi_Specified;
    property Soyadi:      string       Index (IS_OPTN) read FSoyadi write SetSoyadi stored Soyadi_Specified;
    property OrnekNo:     string       Index (IS_OPTN) read FOrnekNo write SetOrnekNo stored OrnekNo_Specified;
    property ReferansNo:  string       Index (IS_OPTN) read FReferansNo write SetReferansNo stored ReferansNo_Specified;
    property KimlikNo:    string       Index (IS_OPTN) read FKimlikNo write SetKimlikNo stored KimlikNo_Specified;
    property Tarih:       string       Index (IS_OPTN) read FTarih write SetTarih stored Tarih_Specified;
    property KayitDurumu: KayitDurumu  read FKayitDurumu write FKayitDurumu;
  end;

  ArrayOfKurumDetay = array of KurumDetay;      { "http://tenay.com.tr/"[GblCplx] }


  // ************************************************************************ //
  // XML       : KurumListesi, global, <complexType>
  // Namespace : http://tenay.com.tr/
  // ************************************************************************ //
  KurumListesi = class(BaseClass)
  private
    FListe: ArrayOfKurumDetay;
    FListe_Specified: boolean;
    procedure SetListe(Index: Integer; const AArrayOfKurumDetay: ArrayOfKurumDetay);
    function  Liste_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property Liste: ArrayOfKurumDetay  Index (IS_OPTN) read FListe write SetListe stored Liste_Specified;
  end;



  // ************************************************************************ //
  // XML       : KurumDetay, global, <complexType>
  // Namespace : http://tenay.com.tr/
  // ************************************************************************ //
  KurumDetay = class(TRemotable)
  private
    FId: string;
    FId_Specified: boolean;
    FAdi: string;
    FAdi_Specified: boolean;
    FKodu: string;
    FKodu_Specified: boolean;
    procedure SetId(Index: Integer; const Astring: string);
    function  Id_Specified(Index: Integer): boolean;
    procedure SetAdi(Index: Integer; const Astring: string);
    function  Adi_Specified(Index: Integer): boolean;
    procedure SetKodu(Index: Integer; const Astring: string);
    function  Kodu_Specified(Index: Integer): boolean;
  published
    property Id:   string  Index (IS_OPTN) read FId write SetId stored Id_Specified;
    property Adi:  string  Index (IS_OPTN) read FAdi write SetAdi stored Adi_Specified;
    property Kodu: string  Index (IS_OPTN) read FKodu write SetKodu stored Kodu_Specified;
  end;

  ArrayOfSonucKaydetSonuc = array of SonucKaydetSonuc;   { "http://tenay.com.tr/"[GblCplx] }


  // ************************************************************************ //
  // XML       : SonucKaydetGiris, global, <complexType>
  // Namespace : http://tenay.com.tr/
  // ************************************************************************ //
  SonucKaydetGiris = class(TRemotable)
  private
    FTCKimlik: string;
    FTCKimlik_Specified: boolean;
    FDosyaNo: string;
    FDosyaNo_Specified: boolean;
    FAdi: string;
    FAdi_Specified: boolean;
    FSoyadi: string;
    FSoyadi_Specified: boolean;
    FDogumTarihi: string;
    FDogumTarihi_Specified: boolean;
    FCinsiyeti: string;
    FCinsiyeti_Specified: boolean;
    FNumuneTarihi: string;
    FNumuneTarihi_Specified: boolean;
    FSonuclar: ArrayOfSonucKaydetSonuc;
    FSonuclar_Specified: boolean;
    FKurumBilgileri: KurumBilgileri;
    FKurumBilgileri_Specified: boolean;
    FDoktorBilgileri: Doktor;
    FDoktorBilgileri_Specified: boolean;
    FOrnekNo: Int64;
    procedure SetTCKimlik(Index: Integer; const Astring: string);
    function  TCKimlik_Specified(Index: Integer): boolean;
    procedure SetDosyaNo(Index: Integer; const Astring: string);
    function  DosyaNo_Specified(Index: Integer): boolean;
    procedure SetAdi(Index: Integer; const Astring: string);
    function  Adi_Specified(Index: Integer): boolean;
    procedure SetSoyadi(Index: Integer; const Astring: string);
    function  Soyadi_Specified(Index: Integer): boolean;
    procedure SetDogumTarihi(Index: Integer; const Astring: string);
    function  DogumTarihi_Specified(Index: Integer): boolean;
    procedure SetCinsiyeti(Index: Integer; const Astring: string);
    function  Cinsiyeti_Specified(Index: Integer): boolean;
    procedure SetNumuneTarihi(Index: Integer; const Astring: string);
    function  NumuneTarihi_Specified(Index: Integer): boolean;
    procedure SetSonuclar(Index: Integer; const AArrayOfSonucKaydetSonuc: ArrayOfSonucKaydetSonuc);
    function  Sonuclar_Specified(Index: Integer): boolean;
    procedure SetKurumBilgileri(Index: Integer; const AKurumBilgileri: KurumBilgileri);
    function  KurumBilgileri_Specified(Index: Integer): boolean;
    procedure SetDoktorBilgileri(Index: Integer; const ADoktor: Doktor);
    function  DoktorBilgileri_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property TCKimlik:        string                   Index (IS_OPTN) read FTCKimlik write SetTCKimlik stored TCKimlik_Specified;
    property DosyaNo:         string                   Index (IS_OPTN) read FDosyaNo write SetDosyaNo stored DosyaNo_Specified;
    property Adi:             string                   Index (IS_OPTN) read FAdi write SetAdi stored Adi_Specified;
    property Soyadi:          string                   Index (IS_OPTN) read FSoyadi write SetSoyadi stored Soyadi_Specified;
    property DogumTarihi:     string                   Index (IS_OPTN) read FDogumTarihi write SetDogumTarihi stored DogumTarihi_Specified;
    property Cinsiyeti:       string                   Index (IS_OPTN) read FCinsiyeti write SetCinsiyeti stored Cinsiyeti_Specified;
    property NumuneTarihi:    string                   Index (IS_OPTN) read FNumuneTarihi write SetNumuneTarihi stored NumuneTarihi_Specified;
    property Sonuclar:        ArrayOfSonucKaydetSonuc  Index (IS_OPTN) read FSonuclar write SetSonuclar stored Sonuclar_Specified;
    property KurumBilgileri:  KurumBilgileri           Index (IS_OPTN) read FKurumBilgileri write SetKurumBilgileri stored KurumBilgileri_Specified;
    property DoktorBilgileri: Doktor                   Index (IS_OPTN) read FDoktorBilgileri write SetDoktorBilgileri stored DoktorBilgileri_Specified;
    property OrnekNo:         Int64                    read FOrnekNo write FOrnekNo;
  end;

  ArrayOfSonucKaydetNormalDeger = array of SonucKaydetNormalDeger;   { "http://tenay.com.tr/"[GblCplx] }
  ArrayOfSonucKaydetDosya = array of SonucKaydetDosya;   { "http://tenay.com.tr/"[GblCplx] }


  // ************************************************************************ //
  // XML       : SonucKaydetSonuc, global, <complexType>
  // Namespace : http://tenay.com.tr/
  // ************************************************************************ //
  SonucKaydetSonuc = class(TRemotable)
  private
    FBarkod: Int64;
    FKodu: string;
    FKodu_Specified: boolean;
    FAltTestKodu: string;
    FAltTestKodu_Specified: boolean;
    FSonuc: string;
    FSonuc_Specified: boolean;
    FAciklama: string;
    FAciklama_Specified: boolean;
    FNormalDeger: ArrayOfSonucKaydetNormalDeger;
    FNormalDeger_Specified: boolean;
    FCalismaSayisi: Integer;
    FKabulTarihi: string;
    FKabulTarihi_Specified: boolean;
    FSonucTarihi: string;
    FSonucTarihi_Specified: boolean;
    FOnayTarihi: string;
    FOnayTarihi_Specified: boolean;
    FOnaylayanKullaniciAdi: string;
    FOnaylayanKullaniciAdi_Specified: boolean;
    FDosya: ArrayOfSonucKaydetDosya;
    FDosya_Specified: boolean;
    procedure SetKodu(Index: Integer; const Astring: string);
    function  Kodu_Specified(Index: Integer): boolean;
    procedure SetAltTestKodu(Index: Integer; const Astring: string);
    function  AltTestKodu_Specified(Index: Integer): boolean;
    procedure SetSonuc(Index: Integer; const Astring: string);
    function  Sonuc_Specified(Index: Integer): boolean;
    procedure SetAciklama(Index: Integer; const Astring: string);
    function  Aciklama_Specified(Index: Integer): boolean;
    procedure SetNormalDeger(Index: Integer; const AArrayOfSonucKaydetNormalDeger: ArrayOfSonucKaydetNormalDeger);
    function  NormalDeger_Specified(Index: Integer): boolean;
    procedure SetKabulTarihi(Index: Integer; const Astring: string);
    function  KabulTarihi_Specified(Index: Integer): boolean;
    procedure SetSonucTarihi(Index: Integer; const Astring: string);
    function  SonucTarihi_Specified(Index: Integer): boolean;
    procedure SetOnayTarihi(Index: Integer; const Astring: string);
    function  OnayTarihi_Specified(Index: Integer): boolean;
    procedure SetOnaylayanKullaniciAdi(Index: Integer; const Astring: string);
    function  OnaylayanKullaniciAdi_Specified(Index: Integer): boolean;
    procedure SetDosya(Index: Integer; const AArrayOfSonucKaydetDosya: ArrayOfSonucKaydetDosya);
    function  Dosya_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property Barkod:                Int64                          read FBarkod write FBarkod;
    property Kodu:                  string                         Index (IS_OPTN) read FKodu write SetKodu stored Kodu_Specified;
    property AltTestKodu:           string                         Index (IS_OPTN) read FAltTestKodu write SetAltTestKodu stored AltTestKodu_Specified;
    property Sonuc:                 string                         Index (IS_OPTN) read FSonuc write SetSonuc stored Sonuc_Specified;
    property Aciklama:              string                         Index (IS_OPTN) read FAciklama write SetAciklama stored Aciklama_Specified;
    property NormalDeger:           ArrayOfSonucKaydetNormalDeger  Index (IS_OPTN) read FNormalDeger write SetNormalDeger stored NormalDeger_Specified;
    property CalismaSayisi:         Integer                        read FCalismaSayisi write FCalismaSayisi;
    property KabulTarihi:           string                         Index (IS_OPTN) read FKabulTarihi write SetKabulTarihi stored KabulTarihi_Specified;
    property SonucTarihi:           string                         Index (IS_OPTN) read FSonucTarihi write SetSonucTarihi stored SonucTarihi_Specified;
    property OnayTarihi:            string                         Index (IS_OPTN) read FOnayTarihi write SetOnayTarihi stored OnayTarihi_Specified;
    property OnaylayanKullaniciAdi: string                         Index (IS_OPTN) read FOnaylayanKullaniciAdi write SetOnaylayanKullaniciAdi stored OnaylayanKullaniciAdi_Specified;
    property Dosya:                 ArrayOfSonucKaydetDosya        Index (IS_OPTN) read FDosya write SetDosya stored Dosya_Specified;
  end;



  // ************************************************************************ //
  // XML       : SonucKaydetNormalDeger, global, <complexType>
  // Namespace : http://tenay.com.tr/
  // ************************************************************************ //
  SonucKaydetNormalDeger = class(TRemotable)
  private
    FAdi: string;
    FAdi_Specified: boolean;
    FAlt: string;
    FAlt_Specified: boolean;
    FUst: string;
    FUst_Specified: boolean;
    FBirim: string;
    FBirim_Specified: boolean;
    procedure SetAdi(Index: Integer; const Astring: string);
    function  Adi_Specified(Index: Integer): boolean;
    procedure SetAlt(Index: Integer; const Astring: string);
    function  Alt_Specified(Index: Integer): boolean;
    procedure SetUst(Index: Integer; const Astring: string);
    function  Ust_Specified(Index: Integer): boolean;
    procedure SetBirim(Index: Integer; const Astring: string);
    function  Birim_Specified(Index: Integer): boolean;
  published
    property Adi:   string  Index (IS_OPTN) read FAdi write SetAdi stored Adi_Specified;
    property Alt:   string  Index (IS_OPTN) read FAlt write SetAlt stored Alt_Specified;
    property Ust:   string  Index (IS_OPTN) read FUst write SetUst stored Ust_Specified;
    property Birim: string  Index (IS_OPTN) read FBirim write SetBirim stored Birim_Specified;
  end;



  // ************************************************************************ //
  // XML       : SonucKaydetDosya, global, <complexType>
  // Namespace : http://tenay.com.tr/
  // ************************************************************************ //
  SonucKaydetDosya = class(TRemotable)
  private
    FDosyaAdi: string;
    FDosyaAdi_Specified: boolean;
    FDosyaTuru: DosyaTur;
    FDosyaBase64: string;
    FDosyaBase64_Specified: boolean;
    procedure SetDosyaAdi(Index: Integer; const Astring: string);
    function  DosyaAdi_Specified(Index: Integer): boolean;
    procedure SetDosyaBase64(Index: Integer; const Astring: string);
    function  DosyaBase64_Specified(Index: Integer): boolean;
  published
    property DosyaAdi:    string    Index (IS_OPTN) read FDosyaAdi write SetDosyaAdi stored DosyaAdi_Specified;
    property DosyaTuru:   DosyaTur  read FDosyaTuru write FDosyaTuru;
    property DosyaBase64: string    Index (IS_OPTN) read FDosyaBase64 write SetDosyaBase64 stored DosyaBase64_Specified;
  end;



  // ************************************************************************ //
  // XML       : SonucKaydetCevap, global, <complexType>
  // Namespace : http://tenay.com.tr/
  // ************************************************************************ //
  SonucKaydetCevap = class(TRemotable)
  private
    FReferansId: Int64;
    FSonucMesaji: string;
    FSonucMesaji_Specified: boolean;
    procedure SetSonucMesaji(Index: Integer; const Astring: string);
    function  SonucMesaji_Specified(Index: Integer): boolean;
  published
    property ReferansId:  Int64   read FReferansId write FReferansId;
    property SonucMesaji: string  Index (IS_OPTN) read FSonucMesaji write SetSonucMesaji stored SonucMesaji_Specified;
  end;

  Array_Of_HastaTur = array of HastaTur;        { "http://tenay.com.tr/"[GblUbnd] }
  Array_Of_Tetkik = array of Tetkik;            { "http://tenay.com.tr/"[GblUbnd] }


  // ************************************************************************ //
  // XML       : Gelis, global, <complexType>
  // Namespace : http://tenay.com.tr/
  // ************************************************************************ //
  Gelis = class(TRemotable)
  private
    FReferansNo: string;
    FReferansNo_Specified: boolean;
    FOrnekNo: Int64;
    FTarih: TXSDateTime;
    FGelisTipi: GelisTipi;
    FHastaTurleri: Array_Of_HastaTur;
    FHastaTurleri_Specified: boolean;
    FAciklama: string;
    FAciklama_Specified: boolean;
    FTetkikler: Array_Of_Tetkik;
    FTetkikler_Specified: boolean;
    procedure SetReferansNo(Index: Integer; const Astring: string);
    function  ReferansNo_Specified(Index: Integer): boolean;
    procedure SetHastaTurleri(Index: Integer; const AArray_Of_HastaTur: Array_Of_HastaTur);
    function  HastaTurleri_Specified(Index: Integer): boolean;
    procedure SetAciklama(Index: Integer; const Astring: string);
    function  Aciklama_Specified(Index: Integer): boolean;
    procedure SetTetkikler(Index: Integer; const AArray_Of_Tetkik: Array_Of_Tetkik);
    function  Tetkikler_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property ReferansNo:   string             Index (IS_OPTN) read FReferansNo write SetReferansNo stored ReferansNo_Specified;
    property OrnekNo:      Int64              read FOrnekNo write FOrnekNo;
    property Tarih:        TXSDateTime        read FTarih write FTarih;
    property GelisTipi:    GelisTipi          read FGelisTipi write FGelisTipi;
    property HastaTurleri: Array_Of_HastaTur  Index (IS_OPTN or IS_UNBD) read FHastaTurleri write SetHastaTurleri stored HastaTurleri_Specified;
    property Aciklama:     string             Index (IS_OPTN) read FAciklama write SetAciklama stored Aciklama_Specified;
    property Tetkikler:    Array_Of_Tetkik    Index (IS_OPTN or IS_UNBD) read FTetkikler write SetTetkikler stored Tetkikler_Specified;
  end;


  // ************************************************************************ //
  // Namespace : http://tenay.com.tr/
  // soapAction: http://tenay.com.tr/%operationName%
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : document
  // binding   : TenayWebServiceSoapV412
  // service   : TenayWebServiceV4
  // port      : TenayWebServiceSoapV412
  // URL       : http://212.156.154.142:1043/v4/TenayService.asmx
  // ************************************************************************ //
  TenayWebServiceSoapV4 = interface(IInvokable)
  ['{57A8995D-1A06-8ADD-B6B9-5859B910F3CE}']
    function  HizmetListesiGetir(const kurumbilgileri: KurumBilgileri): HizmetListesi; stdcall;
    function  HastaTurListesiGetir(const kurumbilgileri: KurumBilgileri): HastaTurListesi; stdcall;
    function  HastaKaydet(const order: Order): HastakaydetCevap; stdcall;
    function  HastaSonucSorgula(const order: OrderQuery): HastaSorguCevap; stdcall;
    function  HastaSonucSorgulaReferans(const order: OrderQuery): HastaSorguCevapReferans; stdcall;
    function  HastaSonucSorgulaOrnekNo(const order: OrderQuery): HastaSorguCevap; stdcall;
    function  TCOrnekListesiGetir(const query: OrnekListesiQuery): OrnekListesi; stdcall;
    function  TCSonuclariGetir(const query: TCSonuclariQuery): TCSonuclariResult; stdcall;
    function  HastaListesiGetir(const query: HastaListQuery): HastaListesi; stdcall;
    function  KurumListesiGetir(const kurumbilgileri: KurumBilgileri): KurumListesi; stdcall;
    function  SonucKaydet(const sonuc: SonucKaydetGiris): SonucKaydetCevap; stdcall;
  end;

function GetTenayWebServiceSoapV4(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): TenayWebServiceSoapV4;


implementation
  uses SysUtils;

function GetTenayWebServiceSoapV4(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): TenayWebServiceSoapV4;
const
  defWSDL = 'C:\Dializ2007_M3\TenayV4.wsdl';
  defURL  = 'http://212.156.154.142:1043/v4/TenayService.asmx';
  defSvc  = 'TenayWebServiceV4';
  defPrt  = 'TenayWebServiceSoapV412';
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
    Result := (RIO as TenayWebServiceSoapV4);
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


procedure KurumBilgileri.SetKullaniciAdi(Index: Integer; const Astring: string);
begin
  FKullaniciAdi := Astring;
  FKullaniciAdi_Specified := True;
end;

function KurumBilgileri.KullaniciAdi_Specified(Index: Integer): boolean;
begin
  Result := FKullaniciAdi_Specified;
end;

procedure KurumBilgileri.SetSifre(Index: Integer; const Astring: string);
begin
  FSifre := Astring;
  FSifre_Specified := True;
end;

function KurumBilgileri.Sifre_Specified(Index: Integer): boolean;
begin
  Result := FSifre_Specified;
end;

procedure KurumBilgileri.SetKodu(Index: Integer; const Astring: string);
begin
  FKodu := Astring;
  FKodu_Specified := True;
end;

function KurumBilgileri.Kodu_Specified(Index: Integer): boolean;
begin
  Result := FKodu_Specified;
end;

procedure KurumBilgileri.SetKurumKodu(Index: Integer; const Astring: string);
begin
  FKurumKodu := Astring;
  FKurumKodu_Specified := True;
end;

function KurumBilgileri.KurumKodu_Specified(Index: Integer): boolean;
begin
  Result := FKurumKodu_Specified;
end;

destructor HizmetListesi.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FListe)-1 do
    SysUtils.FreeAndNil(FListe[I]);
  System.SetLength(FListe, 0);
  inherited Destroy;
end;

procedure HizmetListesi.SetListe(Index: Integer; const AArrayOfDetay: ArrayOfDetay);
begin
  FListe := AArrayOfDetay;
  FListe_Specified := True;
end;

function HizmetListesi.Liste_Specified(Index: Integer): boolean;
begin
  Result := FListe_Specified;
end;

procedure Detay.SetId(Index: Integer; const Astring: string);
begin
  FId := Astring;
  FId_Specified := True;
end;

function Detay.Id_Specified(Index: Integer): boolean;
begin
  Result := FId_Specified;
end;

procedure Detay.SetAdi(Index: Integer; const Astring: string);
begin
  FAdi := Astring;
  FAdi_Specified := True;
end;

function Detay.Adi_Specified(Index: Integer): boolean;
begin
  Result := FAdi_Specified;
end;

procedure Detay.SetKodu(Index: Integer; const Astring: string);
begin
  FKodu := Astring;
  FKodu_Specified := True;
end;

function Detay.Kodu_Specified(Index: Integer): boolean;
begin
  Result := FKodu_Specified;
end;

procedure Detay.SetSutKodu(Index: Integer; const Astring: string);
begin
  FSutKodu := Astring;
  FSutKodu_Specified := True;
end;

function Detay.SutKodu_Specified(Index: Integer): boolean;
begin
  Result := FSutKodu_Specified;
end;

procedure Detay.SetOrnekTurId(Index: Integer; const Astring: string);
begin
  FOrnekTurId := Astring;
  FOrnekTurId_Specified := True;
end;

function Detay.OrnekTurId_Specified(Index: Integer): boolean;
begin
  Result := FOrnekTurId_Specified;
end;

procedure Detay.SetOrnekTurAdi(Index: Integer; const Astring: string);
begin
  FOrnekTurAdi := Astring;
  FOrnekTurAdi_Specified := True;
end;

function Detay.OrnekTurAdi_Specified(Index: Integer): boolean;
begin
  Result := FOrnekTurAdi_Specified;
end;

procedure Detay.SetKapId(Index: Integer; const Astring: string);
begin
  FKapId := Astring;
  FKapId_Specified := True;
end;

function Detay.KapId_Specified(Index: Integer): boolean;
begin
  Result := FKapId_Specified;
end;

procedure Detay.SetKapAdi(Index: Integer; const Astring: string);
begin
  FKapAdi := Astring;
  FKapAdi_Specified := True;
end;

function Detay.KapAdi_Specified(Index: Integer): boolean;
begin
  Result := FKapAdi_Specified;
end;

destructor HastaTurListesi.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FListe)-1 do
    SysUtils.FreeAndNil(FListe[I]);
  System.SetLength(FListe, 0);
  inherited Destroy;
end;

procedure HastaTurListesi.SetListe(Index: Integer; const AArrayOfTurDetay: ArrayOfTurDetay);
begin
  FListe := AArrayOfTurDetay;
  FListe_Specified := True;
end;

function HastaTurListesi.Liste_Specified(Index: Integer): boolean;
begin
  Result := FListe_Specified;
end;

procedure TurDetay.SetId(Index: Integer; const Astring: string);
begin
  FId := Astring;
  FId_Specified := True;
end;

function TurDetay.Id_Specified(Index: Integer): boolean;
begin
  Result := FId_Specified;
end;

procedure TurDetay.SetAdi(Index: Integer; const Astring: string);
begin
  FAdi := Astring;
  FAdi_Specified := True;
end;

function TurDetay.Adi_Specified(Index: Integer): boolean;
begin
  Result := FAdi_Specified;
end;

procedure Doktor.SetAdi(Index: Integer; const Astring: string);
begin
  FAdi := Astring;
  FAdi_Specified := True;
end;

function Doktor.Adi_Specified(Index: Integer): boolean;
begin
  Result := FAdi_Specified;
end;

procedure Doktor.SetSoyadi(Index: Integer; const Astring: string);
begin
  FSoyadi := Astring;
  FSoyadi_Specified := True;
end;

function Doktor.Soyadi_Specified(Index: Integer): boolean;
begin
  Result := FSoyadi_Specified;
end;

destructor OrderBasic.Destroy;
begin
  SysUtils.FreeAndNil(FDogumTarihi);
  inherited Destroy;
end;

procedure OrderBasic.SetAdi(Index: Integer; const Astring: string);
begin
  FAdi := Astring;
  FAdi_Specified := True;
end;

function OrderBasic.Adi_Specified(Index: Integer): boolean;
begin
  Result := FAdi_Specified;
end;

procedure OrderBasic.SetSoyadi(Index: Integer; const Astring: string);
begin
  FSoyadi := Astring;
  FSoyadi_Specified := True;
end;

function OrderBasic.Soyadi_Specified(Index: Integer): boolean;
begin
  Result := FSoyadi_Specified;
end;

procedure OrderBasic.SetKimlikNo(Index: Integer; const Astring: string);
begin
  FKimlikNo := Astring;
  FKimlikNo_Specified := True;
end;

function OrderBasic.KimlikNo_Specified(Index: Integer): boolean;
begin
  Result := FKimlikNo_Specified;
end;

procedure OrderBasic.SetBabaAdi(Index: Integer; const Astring: string);
begin
  FBabaAdi := Astring;
  FBabaAdi_Specified := True;
end;

function OrderBasic.BabaAdi_Specified(Index: Integer): boolean;
begin
  Result := FBabaAdi_Specified;
end;

procedure OrderBasic.SetAnneAdi(Index: Integer; const Astring: string);
begin
  FAnneAdi := Astring;
  FAnneAdi_Specified := True;
end;

function OrderBasic.AnneAdi_Specified(Index: Integer): boolean;
begin
  Result := FAnneAdi_Specified;
end;

procedure OrderBasic.SetDogumYeri(Index: Integer; const Astring: string);
begin
  FDogumYeri := Astring;
  FDogumYeri_Specified := True;
end;

function OrderBasic.DogumYeri_Specified(Index: Integer): boolean;
begin
  Result := FDogumYeri_Specified;
end;

procedure OrderBasic.SetDosyaNo(Index: Integer; const Astring: string);
begin
  FDosyaNo := Astring;
  FDosyaNo_Specified := True;
end;

function OrderBasic.DosyaNo_Specified(Index: Integer): boolean;
begin
  Result := FDosyaNo_Specified;
end;

procedure OrderBasic.SetEPosta(Index: Integer; const Astring: string);
begin
  FEPosta := Astring;
  FEPosta_Specified := True;
end;

function OrderBasic.EPosta_Specified(Index: Integer): boolean;
begin
  Result := FEPosta_Specified;
end;

destructor Order.Destroy;
begin
  SysUtils.FreeAndNil(FKurumBilgileri);
  SysUtils.FreeAndNil(FDoktorBilgileri);
  SysUtils.FreeAndNil(FGelis);
  inherited Destroy;
end;

procedure Order.SetKurumBilgileri(Index: Integer; const AKurumBilgileri: KurumBilgileri);
begin
  FKurumBilgileri := AKurumBilgileri;
  FKurumBilgileri_Specified := True;
end;

function Order.KurumBilgileri_Specified(Index: Integer): boolean;
begin
  Result := FKurumBilgileri_Specified;
end;

procedure Order.SetDoktorBilgileri(Index: Integer; const ADoktor: Doktor);
begin
  FDoktorBilgileri := ADoktor;
  FDoktorBilgileri_Specified := True;
end;

function Order.DoktorBilgileri_Specified(Index: Integer): boolean;
begin
  Result := FDoktorBilgileri_Specified;
end;

procedure Order.SetGelis(Index: Integer; const AGelis: Gelis);
begin
  FGelis := AGelis;
  FGelis_Specified := True;
end;

function Order.Gelis_Specified(Index: Integer): boolean;
begin
  Result := FGelis_Specified;
end;

procedure HastaTur.SetAdi(Index: Integer; const Astring: string);
begin
  FAdi := Astring;
  FAdi_Specified := True;
end;

function HastaTur.Adi_Specified(Index: Integer): boolean;
begin
  Result := FAdi_Specified;
end;

destructor Tetkik.Destroy;
begin
  SysUtils.FreeAndNil(FAlindigiTarih);
  inherited Destroy;
end;

procedure Tetkik.SetAdi(Index: Integer; const Astring: string);
begin
  FAdi := Astring;
  FAdi_Specified := True;
end;

function Tetkik.Adi_Specified(Index: Integer): boolean;
begin
  Result := FAdi_Specified;
end;

procedure Tetkik.SetKodu(Index: Integer; const Astring: string);
begin
  FKodu := Astring;
  FKodu_Specified := True;
end;

function Tetkik.Kodu_Specified(Index: Integer): boolean;
begin
  Result := FKodu_Specified;
end;

procedure Tetkik.SetAciklama(Index: Integer; const Astring: string);
begin
  FAciklama := Astring;
  FAciklama_Specified := True;
end;

function Tetkik.Aciklama_Specified(Index: Integer): boolean;
begin
  Result := FAciklama_Specified;
end;

procedure Tetkik.SetOrnekTurId(Index: Integer; const Astring: string);
begin
  FOrnekTurId := Astring;
  FOrnekTurId_Specified := True;
end;

function Tetkik.OrnekTurId_Specified(Index: Integer): boolean;
begin
  Result := FOrnekTurId_Specified;
end;

procedure Cevap.SetKod(Index: Integer; const Astring: string);
begin
  FKod := Astring;
  FKod_Specified := True;
end;

function Cevap.Kod_Specified(Index: Integer): boolean;
begin
  Result := FKod_Specified;
end;

procedure Cevap.SetMesaj(Index: Integer; const Astring: string);
begin
  FMesaj := Astring;
  FMesaj_Specified := True;
end;

function Cevap.Mesaj_Specified(Index: Integer): boolean;
begin
  Result := FMesaj_Specified;
end;

procedure Cevap.SetHasta(Index: Integer; const Astring: string);
begin
  FHasta := Astring;
  FHasta_Specified := True;
end;

function Cevap.Hasta_Specified(Index: Integer): boolean;
begin
  Result := FHasta_Specified;
end;

destructor OrderQuery.Destroy;
begin
  SysUtils.FreeAndNil(FKurumBilgileri);
  SysUtils.FreeAndNil(FDoktorBilgileri);
  inherited Destroy;
end;

procedure OrderQuery.SetKurumBilgileri(Index: Integer; const AKurumBilgileri: KurumBilgileri);
begin
  FKurumBilgileri := AKurumBilgileri;
  FKurumBilgileri_Specified := True;
end;

function OrderQuery.KurumBilgileri_Specified(Index: Integer): boolean;
begin
  Result := FKurumBilgileri_Specified;
end;

procedure OrderQuery.SetDoktorBilgileri(Index: Integer; const ADoktor: Doktor);
begin
  FDoktorBilgileri := ADoktor;
  FDoktorBilgileri_Specified := True;
end;

function OrderQuery.DoktorBilgileri_Specified(Index: Integer): boolean;
begin
  Result := FDoktorBilgileri_Specified;
end;

procedure OrderQuery.SetDosyaNo(Index: Integer; const Astring: string);
begin
  FDosyaNo := Astring;
  FDosyaNo_Specified := True;
end;

function OrderQuery.DosyaNo_Specified(Index: Integer): boolean;
begin
  Result := FDosyaNo_Specified;
end;

destructor HastaSorguCevap.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FTetkikler)-1 do
    SysUtils.FreeAndNil(FTetkikler[I]);
  System.SetLength(FTetkikler, 0);
  SysUtils.FreeAndNil(FHastaBilgileri);
  inherited Destroy;
end;

procedure HastaSorguCevap.SetHastaBilgileri(Index: Integer; const AOrderBasic: OrderBasic);
begin
  FHastaBilgileri := AOrderBasic;
  FHastaBilgileri_Specified := True;
end;

function HastaSorguCevap.HastaBilgileri_Specified(Index: Integer): boolean;
begin
  Result := FHastaBilgileri_Specified;
end;

procedure HastaSorguCevap.SetTetkikler(Index: Integer; const AArrayOfTetkikSonuc: ArrayOfTetkikSonuc);
begin
  FTetkikler := AArrayOfTetkikSonuc;
  FTetkikler_Specified := True;
end;

function HastaSorguCevap.Tetkikler_Specified(Index: Integer): boolean;
begin
  Result := FTetkikler_Specified;
end;

procedure HastaSorguCevap.SetRapor(Index: Integer; const ATByteDynArray: TByteDynArray);
begin
  FRapor := ATByteDynArray;
  FRapor_Specified := True;
end;

function HastaSorguCevap.Rapor_Specified(Index: Integer): boolean;
begin
  Result := FRapor_Specified;
end;

procedure HastaSorguCevap.SetRapor64(Index: Integer; const Astring: string);
begin
  FRapor64 := Astring;
  FRapor64_Specified := True;
end;

function HastaSorguCevap.Rapor64_Specified(Index: Integer): boolean;
begin
  Result := FRapor64_Specified;
end;

procedure HastaSorguCevap.SetRaporAdi(Index: Integer; const Astring: string);
begin
  FRaporAdi := Astring;
  FRaporAdi_Specified := True;
end;

function HastaSorguCevap.RaporAdi_Specified(Index: Integer): boolean;
begin
  Result := FRaporAdi_Specified;
end;

procedure HastaSorguCevap.SetXml(Index: Integer; const Astring: string);
begin
  FXml := Astring;
  FXml_Specified := True;
end;

function HastaSorguCevap.Xml_Specified(Index: Integer): boolean;
begin
  Result := FXml_Specified;
end;

destructor TetkikSonuc.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FNormalDegerler)-1 do
    SysUtils.FreeAndNil(FNormalDegerler[I]);
  System.SetLength(FNormalDegerler, 0);
  SysUtils.FreeAndNil(FTestEkleri);
  SysUtils.FreeAndNil(FMikroIstek);
  inherited Destroy;
end;

procedure TetkikSonuc.SetAdi(Index: Integer; const Astring: string);
begin
  FAdi := Astring;
  FAdi_Specified := True;
end;

function TetkikSonuc.Adi_Specified(Index: Integer): boolean;
begin
  Result := FAdi_Specified;
end;

procedure TetkikSonuc.SetKodu(Index: Integer; const Astring: string);
begin
  FKodu := Astring;
  FKodu_Specified := True;
end;

function TetkikSonuc.Kodu_Specified(Index: Integer): boolean;
begin
  Result := FKodu_Specified;
end;

procedure TetkikSonuc.SetAltTestKodu(Index: Integer; const Astring: string);
begin
  FAltTestKodu := Astring;
  FAltTestKodu_Specified := True;
end;

function TetkikSonuc.AltTestKodu_Specified(Index: Integer): boolean;
begin
  Result := FAltTestKodu_Specified;
end;

procedure TetkikSonuc.SetSonuc(Index: Integer; const Astring: string);
begin
  FSonuc := Astring;
  FSonuc_Specified := True;
end;

function TetkikSonuc.Sonuc_Specified(Index: Integer): boolean;
begin
  Result := FSonuc_Specified;
end;

procedure TetkikSonuc.SetSonucTarihi(Index: Integer; const Astring: string);
begin
  FSonucTarihi := Astring;
  FSonucTarihi_Specified := True;
end;

function TetkikSonuc.SonucTarihi_Specified(Index: Integer): boolean;
begin
  Result := FSonucTarihi_Specified;
end;

procedure TetkikSonuc.SetOnayTarihi(Index: Integer; const Astring: string);
begin
  FOnayTarihi := Astring;
  FOnayTarihi_Specified := True;
end;

function TetkikSonuc.OnayTarihi_Specified(Index: Integer): boolean;
begin
  Result := FOnayTarihi_Specified;
end;

procedure TetkikSonuc.SetOnaylayan(Index: Integer; const Astring: string);
begin
  FOnaylayan := Astring;
  FOnaylayan_Specified := True;
end;

function TetkikSonuc.Onaylayan_Specified(Index: Integer): boolean;
begin
  Result := FOnaylayan_Specified;
end;

procedure TetkikSonuc.SetKabulTarihi(Index: Integer; const Astring: string);
begin
  FKabulTarihi := Astring;
  FKabulTarihi_Specified := True;
end;

function TetkikSonuc.KabulTarihi_Specified(Index: Integer): boolean;
begin
  Result := FKabulTarihi_Specified;
end;

procedure TetkikSonuc.SetUzunRapor(Index: Integer; const Astring: string);
begin
  FUzunRapor := Astring;
  FUzunRapor_Specified := True;
end;

function TetkikSonuc.UzunRapor_Specified(Index: Integer): boolean;
begin
  Result := FUzunRapor_Specified;
end;

procedure TetkikSonuc.SetTestAciklama(Index: Integer; const Astring: string);
begin
  FTestAciklama := Astring;
  FTestAciklama_Specified := True;
end;

function TetkikSonuc.TestAciklama_Specified(Index: Integer): boolean;
begin
  Result := FTestAciklama_Specified;
end;

procedure TetkikSonuc.SetReferansMin(Index: Integer; const Astring: string);
begin
  FReferansMin := Astring;
  FReferansMin_Specified := True;
end;

function TetkikSonuc.ReferansMin_Specified(Index: Integer): boolean;
begin
  Result := FReferansMin_Specified;
end;

procedure TetkikSonuc.SetReferansMax(Index: Integer; const Astring: string);
begin
  FReferansMax := Astring;
  FReferansMax_Specified := True;
end;

function TetkikSonuc.ReferansMax_Specified(Index: Integer): boolean;
begin
  Result := FReferansMax_Specified;
end;

procedure TetkikSonuc.SetBirim(Index: Integer; const Astring: string);
begin
  FBirim := Astring;
  FBirim_Specified := True;
end;

function TetkikSonuc.Birim_Specified(Index: Integer): boolean;
begin
  Result := FBirim_Specified;
end;

procedure TetkikSonuc.SetOzelNormalDeger(Index: Integer; const Astring: string);
begin
  FOzelNormalDeger := Astring;
  FOzelNormalDeger_Specified := True;
end;

function TetkikSonuc.OzelNormalDeger_Specified(Index: Integer): boolean;
begin
  Result := FOzelNormalDeger_Specified;
end;

procedure TetkikSonuc.SetAciklama(Index: Integer; const Astring: string);
begin
  FAciklama := Astring;
  FAciklama_Specified := True;
end;

function TetkikSonuc.Aciklama_Specified(Index: Integer): boolean;
begin
  Result := FAciklama_Specified;
end;

procedure TetkikSonuc.SetUniteAciklama(Index: Integer; const Astring: string);
begin
  FUniteAciklama := Astring;
  FUniteAciklama_Specified := True;
end;

function TetkikSonuc.UniteAciklama_Specified(Index: Integer): boolean;
begin
  Result := FUniteAciklama_Specified;
end;

procedure TetkikSonuc.SetTestEkleri(Index: Integer; const ATestEki: TestEki);
begin
  FTestEkleri := ATestEki;
  FTestEkleri_Specified := True;
end;

function TetkikSonuc.TestEkleri_Specified(Index: Integer): boolean;
begin
  Result := FTestEkleri_Specified;
end;

procedure TetkikSonuc.SetMikroIstek(Index: Integer; const AMikroIstek: MikroIstek);
begin
  FMikroIstek := AMikroIstek;
  FMikroIstek_Specified := True;
end;

function TetkikSonuc.MikroIstek_Specified(Index: Integer): boolean;
begin
  Result := FMikroIstek_Specified;
end;

procedure TetkikSonuc.SetNormalDegerler(Index: Integer; const AArrayOfTestNormalDeger: ArrayOfTestNormalDeger);
begin
  FNormalDegerler := AArrayOfTestNormalDeger;
  FNormalDegerler_Specified := True;
end;

function TetkikSonuc.NormalDegerler_Specified(Index: Integer): boolean;
begin
  Result := FNormalDegerler_Specified;
end;

procedure TestEki.SetData(Index: Integer; const AArrayOfString: ArrayOfString);
begin
  FData := AArrayOfString;
  FData_Specified := True;
end;

function TestEki.Data_Specified(Index: Integer): boolean;
begin
  Result := FData_Specified;
end;

procedure TestEki.SetAdi(Index: Integer; const AArrayOfString: ArrayOfString);
begin
  FAdi := AArrayOfString;
  FAdi_Specified := True;
end;

function TestEki.Adi_Specified(Index: Integer): boolean;
begin
  Result := FAdi_Specified;
end;

procedure TestEki.SetTur(Index: Integer; const AArrayOfDosyaTur: ArrayOfDosyaTur);
begin
  FTur := AArrayOfDosyaTur;
  FTur_Specified := True;
end;

function TestEki.Tur_Specified(Index: Integer): boolean;
begin
  Result := FTur_Specified;
end;

procedure TestEki.SetUrl(Index: Integer; const AArrayOfString: ArrayOfString);
begin
  FUrl := AArrayOfString;
  FUrl_Specified := True;
end;

function TestEki.Url_Specified(Index: Integer): boolean;
begin
  Result := FUrl_Specified;
end;

destructor MikroIstek.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FOrganizmalar)-1 do
    SysUtils.FreeAndNil(FOrganizmalar[I]);
  System.SetLength(FOrganizmalar, 0);
  for I := 0 to System.Length(FYorum)-1 do
    SysUtils.FreeAndNil(FYorum[I]);
  System.SetLength(FYorum, 0);
  SysUtils.FreeAndNil(FOnayTarihi);
  inherited Destroy;
end;

procedure MikroIstek.SetOrnekTuru(Index: Integer; const Astring: string);
begin
  FOrnekTuru := Astring;
  FOrnekTuru_Specified := True;
end;

function MikroIstek.OrnekTuru_Specified(Index: Integer): boolean;
begin
  Result := FOrnekTuru_Specified;
end;

procedure MikroIstek.SetOrnekTuruAdi(Index: Integer; const Astring: string);
begin
  FOrnekTuruAdi := Astring;
  FOrnekTuruAdi_Specified := True;
end;

function MikroIstek.OrnekTuruAdi_Specified(Index: Integer): boolean;
begin
  Result := FOrnekTuruAdi_Specified;
end;

procedure MikroIstek.SetAlindigiYer(Index: Integer; const Astring: string);
begin
  FAlindigiYer := Astring;
  FAlindigiYer_Specified := True;
end;

function MikroIstek.AlindigiYer_Specified(Index: Integer): boolean;
begin
  Result := FAlindigiYer_Specified;
end;

procedure MikroIstek.SetAciklama(Index: Integer; const Astring: string);
begin
  FAciklama := Astring;
  FAciklama_Specified := True;
end;

function MikroIstek.Aciklama_Specified(Index: Integer): boolean;
begin
  Result := FAciklama_Specified;
end;

procedure MikroIstek.SetOrganizmalar(Index: Integer; const AArrayOfMikroOrganizma: ArrayOfMikroOrganizma);
begin
  FOrganizmalar := AArrayOfMikroOrganizma;
  FOrganizmalar_Specified := True;
end;

function MikroIstek.Organizmalar_Specified(Index: Integer): boolean;
begin
  Result := FOrganizmalar_Specified;
end;

procedure MikroIstek.SetYorum(Index: Integer; const AArrayOfMikroYorum: ArrayOfMikroYorum);
begin
  FYorum := AArrayOfMikroYorum;
  FYorum_Specified := True;
end;

function MikroIstek.Yorum_Specified(Index: Integer): boolean;
begin
  Result := FYorum_Specified;
end;

destructor MikroOrganizma.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FAntibiyotikler)-1 do
    SysUtils.FreeAndNil(FAntibiyotikler[I]);
  System.SetLength(FAntibiyotikler, 0);
  inherited Destroy;
end;

procedure MikroOrganizma.SetAdi(Index: Integer; const Astring: string);
begin
  FAdi := Astring;
  FAdi_Specified := True;
end;

function MikroOrganizma.Adi_Specified(Index: Integer): boolean;
begin
  Result := FAdi_Specified;
end;

procedure MikroOrganizma.SetKodu(Index: Integer; const Astring: string);
begin
  FKodu := Astring;
  FKodu_Specified := True;
end;

function MikroOrganizma.Kodu_Specified(Index: Integer): boolean;
begin
  Result := FKodu_Specified;
end;

procedure MikroOrganizma.SetKoloni(Index: Integer; const Astring: string);
begin
  FKoloni := Astring;
  FKoloni_Specified := True;
end;

function MikroOrganizma.Koloni_Specified(Index: Integer): boolean;
begin
  Result := FKoloni_Specified;
end;

procedure MikroOrganizma.SetBirim(Index: Integer; const Astring: string);
begin
  FBirim := Astring;
  FBirim_Specified := True;
end;

function MikroOrganizma.Birim_Specified(Index: Integer): boolean;
begin
  Result := FBirim_Specified;
end;

procedure MikroOrganizma.SetAciklama(Index: Integer; const Astring: string);
begin
  FAciklama := Astring;
  FAciklama_Specified := True;
end;

function MikroOrganizma.Aciklama_Specified(Index: Integer): boolean;
begin
  Result := FAciklama_Specified;
end;

procedure MikroOrganizma.SetAntibiyotikler(Index: Integer; const AArrayOfAntibiyotik: ArrayOfAntibiyotik);
begin
  FAntibiyotikler := AArrayOfAntibiyotik;
  FAntibiyotikler_Specified := True;
end;

function MikroOrganizma.Antibiyotikler_Specified(Index: Integer): boolean;
begin
  Result := FAntibiyotikler_Specified;
end;

procedure Antibiyotik.SetAdi(Index: Integer; const Astring: string);
begin
  FAdi := Astring;
  FAdi_Specified := True;
end;

function Antibiyotik.Adi_Specified(Index: Integer): boolean;
begin
  Result := FAdi_Specified;
end;

procedure Antibiyotik.SetKodu(Index: Integer; const Astring: string);
begin
  FKodu := Astring;
  FKodu_Specified := True;
end;

function Antibiyotik.Kodu_Specified(Index: Integer): boolean;
begin
  Result := FKodu_Specified;
end;

procedure Antibiyotik.SetSonuc(Index: Integer; const Astring: string);
begin
  FSonuc := Astring;
  FSonuc_Specified := True;
end;

function Antibiyotik.Sonuc_Specified(Index: Integer): boolean;
begin
  Result := FSonuc_Specified;
end;

procedure Antibiyotik.SetDeger(Index: Integer; const Astring: string);
begin
  FDeger := Astring;
  FDeger_Specified := True;
end;

function Antibiyotik.Deger_Specified(Index: Integer): boolean;
begin
  Result := FDeger_Specified;
end;

procedure Antibiyotik.SetAciklama(Index: Integer; const Astring: string);
begin
  FAciklama := Astring;
  FAciklama_Specified := True;
end;

function Antibiyotik.Aciklama_Specified(Index: Integer): boolean;
begin
  Result := FAciklama_Specified;
end;

procedure MikroYorum.SetAdi(Index: Integer; const Astring: string);
begin
  FAdi := Astring;
  FAdi_Specified := True;
end;

function MikroYorum.Adi_Specified(Index: Integer): boolean;
begin
  Result := FAdi_Specified;
end;

procedure MikroYorum.SetKod(Index: Integer; const Astring: string);
begin
  FKod := Astring;
  FKod_Specified := True;
end;

function MikroYorum.Kod_Specified(Index: Integer): boolean;
begin
  Result := FKod_Specified;
end;

procedure MikroYorum.SetAciklama(Index: Integer; const Astring: string);
begin
  FAciklama := Astring;
  FAciklama_Specified := True;
end;

function MikroYorum.Aciklama_Specified(Index: Integer): boolean;
begin
  Result := FAciklama_Specified;
end;

procedure TestNormalDeger.SetMin(Index: Integer; const Astring: string);
begin
  FMin := Astring;
  FMin_Specified := True;
end;

function TestNormalDeger.Min_Specified(Index: Integer): boolean;
begin
  Result := FMin_Specified;
end;

procedure TestNormalDeger.SetMax(Index: Integer; const Astring: string);
begin
  FMax := Astring;
  FMax_Specified := True;
end;

function TestNormalDeger.Max_Specified(Index: Integer): boolean;
begin
  Result := FMax_Specified;
end;

procedure TestNormalDeger.SetBirim(Index: Integer; const Astring: string);
begin
  FBirim := Astring;
  FBirim_Specified := True;
end;

function TestNormalDeger.Birim_Specified(Index: Integer): boolean;
begin
  Result := FBirim_Specified;
end;

procedure TestNormalDeger.SetAciklama(Index: Integer; const Astring: string);
begin
  FAciklama := Astring;
  FAciklama_Specified := True;
end;

function TestNormalDeger.Aciklama_Specified(Index: Integer): boolean;
begin
  Result := FAciklama_Specified;
end;

procedure TestNormalDeger.SetOzelNormalDeger(Index: Integer; const Astring: string);
begin
  FOzelNormalDeger := Astring;
  FOzelNormalDeger_Specified := True;
end;

function TestNormalDeger.OzelNormalDeger_Specified(Index: Integer): boolean;
begin
  Result := FOzelNormalDeger_Specified;
end;

destructor HastaSorguCevapReferans.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FTetkikler)-1 do
    SysUtils.FreeAndNil(FTetkikler[I]);
  System.SetLength(FTetkikler, 0);
  SysUtils.FreeAndNil(FHastaBilgileri);
  inherited Destroy;
end;

procedure HastaSorguCevapReferans.SetHastaBilgileri(Index: Integer; const AOrderBasic: OrderBasic);
begin
  FHastaBilgileri := AOrderBasic;
  FHastaBilgileri_Specified := True;
end;

function HastaSorguCevapReferans.HastaBilgileri_Specified(Index: Integer): boolean;
begin
  Result := FHastaBilgileri_Specified;
end;

procedure HastaSorguCevapReferans.SetTetkikler(Index: Integer; const AArrayOfTestSonuc: ArrayOfTestSonuc);
begin
  FTetkikler := AArrayOfTestSonuc;
  FTetkikler_Specified := True;
end;

function HastaSorguCevapReferans.Tetkikler_Specified(Index: Integer): boolean;
begin
  Result := FTetkikler_Specified;
end;

procedure HastaSorguCevapReferans.SetRapor(Index: Integer; const ATByteDynArray: TByteDynArray);
begin
  FRapor := ATByteDynArray;
  FRapor_Specified := True;
end;

function HastaSorguCevapReferans.Rapor_Specified(Index: Integer): boolean;
begin
  Result := FRapor_Specified;
end;

procedure HastaSorguCevapReferans.SetRapor64(Index: Integer; const Astring: string);
begin
  FRapor64 := Astring;
  FRapor64_Specified := True;
end;

function HastaSorguCevapReferans.Rapor64_Specified(Index: Integer): boolean;
begin
  Result := FRapor64_Specified;
end;

procedure HastaSorguCevapReferans.SetRaporAdi(Index: Integer; const Astring: string);
begin
  FRaporAdi := Astring;
  FRaporAdi_Specified := True;
end;

function HastaSorguCevapReferans.RaporAdi_Specified(Index: Integer): boolean;
begin
  Result := FRaporAdi_Specified;
end;

procedure HastaSorguCevapReferans.SetXml(Index: Integer; const Astring: string);
begin
  FXml := Astring;
  FXml_Specified := True;
end;

function HastaSorguCevapReferans.Xml_Specified(Index: Integer): boolean;
begin
  Result := FXml_Specified;
end;

destructor TestSonuc.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FNormalDegerler)-1 do
    SysUtils.FreeAndNil(FNormalDegerler[I]);
  System.SetLength(FNormalDegerler, 0);
  SysUtils.FreeAndNil(FTestEkleri);
  SysUtils.FreeAndNil(FMikroIstek);
  inherited Destroy;
end;

procedure TestSonuc.SetAdi(Index: Integer; const Astring: string);
begin
  FAdi := Astring;
  FAdi_Specified := True;
end;

function TestSonuc.Adi_Specified(Index: Integer): boolean;
begin
  Result := FAdi_Specified;
end;

procedure TestSonuc.SetKodu(Index: Integer; const Astring: string);
begin
  FKodu := Astring;
  FKodu_Specified := True;
end;

function TestSonuc.Kodu_Specified(Index: Integer): boolean;
begin
  Result := FKodu_Specified;
end;

procedure TestSonuc.SetAltTestKodu(Index: Integer; const Astring: string);
begin
  FAltTestKodu := Astring;
  FAltTestKodu_Specified := True;
end;

function TestSonuc.AltTestKodu_Specified(Index: Integer): boolean;
begin
  Result := FAltTestKodu_Specified;
end;

procedure TestSonuc.SetSonuc(Index: Integer; const Astring: string);
begin
  FSonuc := Astring;
  FSonuc_Specified := True;
end;

function TestSonuc.Sonuc_Specified(Index: Integer): boolean;
begin
  Result := FSonuc_Specified;
end;

procedure TestSonuc.SetSonucTarihi(Index: Integer; const Astring: string);
begin
  FSonucTarihi := Astring;
  FSonucTarihi_Specified := True;
end;

function TestSonuc.SonucTarihi_Specified(Index: Integer): boolean;
begin
  Result := FSonucTarihi_Specified;
end;

procedure TestSonuc.SetOnayTarihi(Index: Integer; const Astring: string);
begin
  FOnayTarihi := Astring;
  FOnayTarihi_Specified := True;
end;

function TestSonuc.OnayTarihi_Specified(Index: Integer): boolean;
begin
  Result := FOnayTarihi_Specified;
end;

procedure TestSonuc.SetOnaylayan(Index: Integer; const Astring: string);
begin
  FOnaylayan := Astring;
  FOnaylayan_Specified := True;
end;

function TestSonuc.Onaylayan_Specified(Index: Integer): boolean;
begin
  Result := FOnaylayan_Specified;
end;

procedure TestSonuc.SetKabulTarihi(Index: Integer; const Astring: string);
begin
  FKabulTarihi := Astring;
  FKabulTarihi_Specified := True;
end;

function TestSonuc.KabulTarihi_Specified(Index: Integer): boolean;
begin
  Result := FKabulTarihi_Specified;
end;

procedure TestSonuc.SetUzunRapor(Index: Integer; const Astring: string);
begin
  FUzunRapor := Astring;
  FUzunRapor_Specified := True;
end;

function TestSonuc.UzunRapor_Specified(Index: Integer): boolean;
begin
  Result := FUzunRapor_Specified;
end;

procedure TestSonuc.SetTestAciklama(Index: Integer; const Astring: string);
begin
  FTestAciklama := Astring;
  FTestAciklama_Specified := True;
end;

function TestSonuc.TestAciklama_Specified(Index: Integer): boolean;
begin
  Result := FTestAciklama_Specified;
end;

procedure TestSonuc.SetReferansMin(Index: Integer; const Astring: string);
begin
  FReferansMin := Astring;
  FReferansMin_Specified := True;
end;

function TestSonuc.ReferansMin_Specified(Index: Integer): boolean;
begin
  Result := FReferansMin_Specified;
end;

procedure TestSonuc.SetReferansMax(Index: Integer; const Astring: string);
begin
  FReferansMax := Astring;
  FReferansMax_Specified := True;
end;

function TestSonuc.ReferansMax_Specified(Index: Integer): boolean;
begin
  Result := FReferansMax_Specified;
end;

procedure TestSonuc.SetBirim(Index: Integer; const Astring: string);
begin
  FBirim := Astring;
  FBirim_Specified := True;
end;

function TestSonuc.Birim_Specified(Index: Integer): boolean;
begin
  Result := FBirim_Specified;
end;

procedure TestSonuc.SetOzelNormalDeger(Index: Integer; const Astring: string);
begin
  FOzelNormalDeger := Astring;
  FOzelNormalDeger_Specified := True;
end;

function TestSonuc.OzelNormalDeger_Specified(Index: Integer): boolean;
begin
  Result := FOzelNormalDeger_Specified;
end;

procedure TestSonuc.SetAciklama(Index: Integer; const Astring: string);
begin
  FAciklama := Astring;
  FAciklama_Specified := True;
end;

function TestSonuc.Aciklama_Specified(Index: Integer): boolean;
begin
  Result := FAciklama_Specified;
end;

procedure TestSonuc.SetUniteAciklama(Index: Integer; const Astring: string);
begin
  FUniteAciklama := Astring;
  FUniteAciklama_Specified := True;
end;

function TestSonuc.UniteAciklama_Specified(Index: Integer): boolean;
begin
  Result := FUniteAciklama_Specified;
end;

procedure TestSonuc.SetRedSebebiAdi(Index: Integer; const Astring: string);
begin
  FRedSebebiAdi := Astring;
  FRedSebebiAdi_Specified := True;
end;

function TestSonuc.RedSebebiAdi_Specified(Index: Integer): boolean;
begin
  Result := FRedSebebiAdi_Specified;
end;

procedure TestSonuc.SetTestEkleri(Index: Integer; const ATestEki: TestEki);
begin
  FTestEkleri := ATestEki;
  FTestEkleri_Specified := True;
end;

function TestSonuc.TestEkleri_Specified(Index: Integer): boolean;
begin
  Result := FTestEkleri_Specified;
end;

procedure TestSonuc.SetMikroIstek(Index: Integer; const AMikroIstek: MikroIstek);
begin
  FMikroIstek := AMikroIstek;
  FMikroIstek_Specified := True;
end;

function TestSonuc.MikroIstek_Specified(Index: Integer): boolean;
begin
  Result := FMikroIstek_Specified;
end;

procedure TestSonuc.SetNormalDegerler(Index: Integer; const AArrayOfTestNormalDeger: ArrayOfTestNormalDeger);
begin
  FNormalDegerler := AArrayOfTestNormalDeger;
  FNormalDegerler_Specified := True;
end;

function TestSonuc.NormalDegerler_Specified(Index: Integer): boolean;
begin
  Result := FNormalDegerler_Specified;
end;

destructor OrnekListesiQuery.Destroy;
begin
  SysUtils.FreeAndNil(FKurumBilgileri);
  SysUtils.FreeAndNil(FBas);
  SysUtils.FreeAndNil(FSon);
  inherited Destroy;
end;

procedure OrnekListesiQuery.SetKurumBilgileri(Index: Integer; const AKurumBilgileri: KurumBilgileri);
begin
  FKurumBilgileri := AKurumBilgileri;
  FKurumBilgileri_Specified := True;
end;

function OrnekListesiQuery.KurumBilgileri_Specified(Index: Integer): boolean;
begin
  Result := FKurumBilgileri_Specified;
end;

destructor OrnekListesi.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FOrnekler)-1 do
    SysUtils.FreeAndNil(FOrnekler[I]);
  System.SetLength(FOrnekler, 0);
  inherited Destroy;
end;

procedure OrnekListesi.SetSonucKodu(Index: Integer; const Astring: string);
begin
  FSonucKodu := Astring;
  FSonucKodu_Specified := True;
end;

function OrnekListesi.SonucKodu_Specified(Index: Integer): boolean;
begin
  Result := FSonucKodu_Specified;
end;

procedure OrnekListesi.SetSonucMesaji(Index: Integer; const Astring: string);
begin
  FSonucMesaji := Astring;
  FSonucMesaji_Specified := True;
end;

function OrnekListesi.SonucMesaji_Specified(Index: Integer): boolean;
begin
  Result := FSonucMesaji_Specified;
end;

procedure OrnekListesi.SetOrnekler(Index: Integer; const AArrayOfOrnekDetay: ArrayOfOrnekDetay);
begin
  FOrnekler := AArrayOfOrnekDetay;
  FOrnekler_Specified := True;
end;

function OrnekListesi.Ornekler_Specified(Index: Integer): boolean;
begin
  Result := FOrnekler_Specified;
end;

procedure OrnekDetay.SetTarih(Index: Integer; const Astring: string);
begin
  FTarih := Astring;
  FTarih_Specified := True;
end;

function OrnekDetay.Tarih_Specified(Index: Integer): boolean;
begin
  Result := FTarih_Specified;
end;

destructor TCSonuclariQuery.Destroy;
begin
  SysUtils.FreeAndNil(FKurumBilgileri);
  SysUtils.FreeAndNil(FBas);
  SysUtils.FreeAndNil(FSon);
  inherited Destroy;
end;

procedure TCSonuclariQuery.SetKurumBilgileri(Index: Integer; const AKurumBilgileri: KurumBilgileri);
begin
  FKurumBilgileri := AKurumBilgileri;
  FKurumBilgileri_Specified := True;
end;

function TCSonuclariQuery.KurumBilgileri_Specified(Index: Integer): boolean;
begin
  Result := FKurumBilgileri_Specified;
end;

destructor TCSonuclariResult.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FSonuclar)-1 do
    SysUtils.FreeAndNil(FSonuclar[I]);
  System.SetLength(FSonuclar, 0);
  SysUtils.FreeAndNil(FDogumTarihi);
  inherited Destroy;
end;

procedure TCSonuclariResult.SetSonucKodu(Index: Integer; const Astring: string);
begin
  FSonucKodu := Astring;
  FSonucKodu_Specified := True;
end;

function TCSonuclariResult.SonucKodu_Specified(Index: Integer): boolean;
begin
  Result := FSonucKodu_Specified;
end;

procedure TCSonuclariResult.SetSonucMesaji(Index: Integer; const Astring: string);
begin
  FSonucMesaji := Astring;
  FSonucMesaji_Specified := True;
end;

function TCSonuclariResult.SonucMesaji_Specified(Index: Integer): boolean;
begin
  Result := FSonucMesaji_Specified;
end;

procedure TCSonuclariResult.SetTCKimlik(Index: Integer; const Astring: string);
begin
  FTCKimlik := Astring;
  FTCKimlik_Specified := True;
end;

function TCSonuclariResult.TCKimlik_Specified(Index: Integer): boolean;
begin
  Result := FTCKimlik_Specified;
end;

procedure TCSonuclariResult.SetDosyaNo(Index: Integer; const Astring: string);
begin
  FDosyaNo := Astring;
  FDosyaNo_Specified := True;
end;

function TCSonuclariResult.DosyaNo_Specified(Index: Integer): boolean;
begin
  Result := FDosyaNo_Specified;
end;

procedure TCSonuclariResult.SetAdi(Index: Integer; const Astring: string);
begin
  FAdi := Astring;
  FAdi_Specified := True;
end;

function TCSonuclariResult.Adi_Specified(Index: Integer): boolean;
begin
  Result := FAdi_Specified;
end;

procedure TCSonuclariResult.SetSoyadi(Index: Integer; const Astring: string);
begin
  FSoyadi := Astring;
  FSoyadi_Specified := True;
end;

function TCSonuclariResult.Soyadi_Specified(Index: Integer): boolean;
begin
  Result := FSoyadi_Specified;
end;

procedure TCSonuclariResult.SetCinsiyeti(Index: Integer; const Astring: string);
begin
  FCinsiyeti := Astring;
  FCinsiyeti_Specified := True;
end;

function TCSonuclariResult.Cinsiyeti_Specified(Index: Integer): boolean;
begin
  Result := FCinsiyeti_Specified;
end;

procedure TCSonuclariResult.SetSonuclar(Index: Integer; const AArrayOfOrnekSonuc: ArrayOfOrnekSonuc);
begin
  FSonuclar := AArrayOfOrnekSonuc;
  FSonuclar_Specified := True;
end;

function TCSonuclariResult.Sonuclar_Specified(Index: Integer): boolean;
begin
  Result := FSonuclar_Specified;
end;

destructor OrnekSonuc.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FTetkikler)-1 do
    SysUtils.FreeAndNil(FTetkikler[I]);
  System.SetLength(FTetkikler, 0);
  SysUtils.FreeAndNil(FKayitTarihi);
  inherited Destroy;
end;

procedure OrnekSonuc.SetReferans(Index: Integer; const Astring: string);
begin
  FReferans := Astring;
  FReferans_Specified := True;
end;

function OrnekSonuc.Referans_Specified(Index: Integer): boolean;
begin
  Result := FReferans_Specified;
end;

procedure OrnekSonuc.SetReferans2(Index: Integer; const Astring: string);
begin
  FReferans2 := Astring;
  FReferans2_Specified := True;
end;

function OrnekSonuc.Referans2_Specified(Index: Integer): boolean;
begin
  Result := FReferans2_Specified;
end;

procedure OrnekSonuc.SetTetkikler(Index: Integer; const AArrayOfTetkikSonuc: ArrayOfTetkikSonuc);
begin
  FTetkikler := AArrayOfTetkikSonuc;
  FTetkikler_Specified := True;
end;

function OrnekSonuc.Tetkikler_Specified(Index: Integer): boolean;
begin
  Result := FTetkikler_Specified;
end;

destructor HastaListQuery.Destroy;
begin
  SysUtils.FreeAndNil(FKurumBilgileri);
  SysUtils.FreeAndNil(FDoktorBilgileri);
  SysUtils.FreeAndNil(FBas);
  SysUtils.FreeAndNil(FSon);
  inherited Destroy;
end;

procedure HastaListQuery.SetKurumBilgileri(Index: Integer; const AKurumBilgileri: KurumBilgileri);
begin
  FKurumBilgileri := AKurumBilgileri;
  FKurumBilgileri_Specified := True;
end;

function HastaListQuery.KurumBilgileri_Specified(Index: Integer): boolean;
begin
  Result := FKurumBilgileri_Specified;
end;

procedure HastaListQuery.SetDoktorBilgileri(Index: Integer; const ADoktor: Doktor);
begin
  FDoktorBilgileri := ADoktor;
  FDoktorBilgileri_Specified := True;
end;

function HastaListQuery.DoktorBilgileri_Specified(Index: Integer): boolean;
begin
  Result := FDoktorBilgileri_Specified;
end;

destructor HastaListesi.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FListe)-1 do
    SysUtils.FreeAndNil(FListe[I]);
  System.SetLength(FListe, 0);
  for I := 0 to System.Length(FHastaListe)-1 do
    SysUtils.FreeAndNil(FHastaListe[I]);
  System.SetLength(FHastaListe, 0);
  inherited Destroy;
end;

procedure HastaListesi.SetListe(Index: Integer; const AArrayOfHastaDetay: ArrayOfHastaDetay);
begin
  FListe := AArrayOfHastaDetay;
  FListe_Specified := True;
end;

function HastaListesi.Liste_Specified(Index: Integer): boolean;
begin
  Result := FListe_Specified;
end;

procedure HastaListesi.SetHastaListe(Index: Integer; const AArrayOfHastaDetay: ArrayOfHastaDetay);
begin
  FHastaListe := AArrayOfHastaDetay;
  FHastaListe_Specified := True;
end;

function HastaListesi.HastaListe_Specified(Index: Integer): boolean;
begin
  Result := FHastaListe_Specified;
end;

procedure HastaDetay.SetId(Index: Integer; const Astring: string);
begin
  FId := Astring;
  FId_Specified := True;
end;

function HastaDetay.Id_Specified(Index: Integer): boolean;
begin
  Result := FId_Specified;
end;

procedure HastaDetay.SetAdi(Index: Integer; const Astring: string);
begin
  FAdi := Astring;
  FAdi_Specified := True;
end;

function HastaDetay.Adi_Specified(Index: Integer): boolean;
begin
  Result := FAdi_Specified;
end;

procedure HastaDetay.SetSoyadi(Index: Integer; const Astring: string);
begin
  FSoyadi := Astring;
  FSoyadi_Specified := True;
end;

function HastaDetay.Soyadi_Specified(Index: Integer): boolean;
begin
  Result := FSoyadi_Specified;
end;

procedure HastaDetay.SetOrnekNo(Index: Integer; const Astring: string);
begin
  FOrnekNo := Astring;
  FOrnekNo_Specified := True;
end;

function HastaDetay.OrnekNo_Specified(Index: Integer): boolean;
begin
  Result := FOrnekNo_Specified;
end;

procedure HastaDetay.SetReferansNo(Index: Integer; const Astring: string);
begin
  FReferansNo := Astring;
  FReferansNo_Specified := True;
end;

function HastaDetay.ReferansNo_Specified(Index: Integer): boolean;
begin
  Result := FReferansNo_Specified;
end;

procedure HastaDetay.SetKimlikNo(Index: Integer; const Astring: string);
begin
  FKimlikNo := Astring;
  FKimlikNo_Specified := True;
end;

function HastaDetay.KimlikNo_Specified(Index: Integer): boolean;
begin
  Result := FKimlikNo_Specified;
end;

procedure HastaDetay.SetTarih(Index: Integer; const Astring: string);
begin
  FTarih := Astring;
  FTarih_Specified := True;
end;

function HastaDetay.Tarih_Specified(Index: Integer): boolean;
begin
  Result := FTarih_Specified;
end;

destructor KurumListesi.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FListe)-1 do
    SysUtils.FreeAndNil(FListe[I]);
  System.SetLength(FListe, 0);
  inherited Destroy;
end;

procedure KurumListesi.SetListe(Index: Integer; const AArrayOfKurumDetay: ArrayOfKurumDetay);
begin
  FListe := AArrayOfKurumDetay;
  FListe_Specified := True;
end;

function KurumListesi.Liste_Specified(Index: Integer): boolean;
begin
  Result := FListe_Specified;
end;

procedure KurumDetay.SetId(Index: Integer; const Astring: string);
begin
  FId := Astring;
  FId_Specified := True;
end;

function KurumDetay.Id_Specified(Index: Integer): boolean;
begin
  Result := FId_Specified;
end;

procedure KurumDetay.SetAdi(Index: Integer; const Astring: string);
begin
  FAdi := Astring;
  FAdi_Specified := True;
end;

function KurumDetay.Adi_Specified(Index: Integer): boolean;
begin
  Result := FAdi_Specified;
end;

procedure KurumDetay.SetKodu(Index: Integer; const Astring: string);
begin
  FKodu := Astring;
  FKodu_Specified := True;
end;

function KurumDetay.Kodu_Specified(Index: Integer): boolean;
begin
  Result := FKodu_Specified;
end;

destructor SonucKaydetGiris.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FSonuclar)-1 do
    SysUtils.FreeAndNil(FSonuclar[I]);
  System.SetLength(FSonuclar, 0);
  SysUtils.FreeAndNil(FKurumBilgileri);
  SysUtils.FreeAndNil(FDoktorBilgileri);
  inherited Destroy;
end;

procedure SonucKaydetGiris.SetTCKimlik(Index: Integer; const Astring: string);
begin
  FTCKimlik := Astring;
  FTCKimlik_Specified := True;
end;

function SonucKaydetGiris.TCKimlik_Specified(Index: Integer): boolean;
begin
  Result := FTCKimlik_Specified;
end;

procedure SonucKaydetGiris.SetDosyaNo(Index: Integer; const Astring: string);
begin
  FDosyaNo := Astring;
  FDosyaNo_Specified := True;
end;

function SonucKaydetGiris.DosyaNo_Specified(Index: Integer): boolean;
begin
  Result := FDosyaNo_Specified;
end;

procedure SonucKaydetGiris.SetAdi(Index: Integer; const Astring: string);
begin
  FAdi := Astring;
  FAdi_Specified := True;
end;

function SonucKaydetGiris.Adi_Specified(Index: Integer): boolean;
begin
  Result := FAdi_Specified;
end;

procedure SonucKaydetGiris.SetSoyadi(Index: Integer; const Astring: string);
begin
  FSoyadi := Astring;
  FSoyadi_Specified := True;
end;

function SonucKaydetGiris.Soyadi_Specified(Index: Integer): boolean;
begin
  Result := FSoyadi_Specified;
end;

procedure SonucKaydetGiris.SetDogumTarihi(Index: Integer; const Astring: string);
begin
  FDogumTarihi := Astring;
  FDogumTarihi_Specified := True;
end;

function SonucKaydetGiris.DogumTarihi_Specified(Index: Integer): boolean;
begin
  Result := FDogumTarihi_Specified;
end;

procedure SonucKaydetGiris.SetCinsiyeti(Index: Integer; const Astring: string);
begin
  FCinsiyeti := Astring;
  FCinsiyeti_Specified := True;
end;

function SonucKaydetGiris.Cinsiyeti_Specified(Index: Integer): boolean;
begin
  Result := FCinsiyeti_Specified;
end;

procedure SonucKaydetGiris.SetNumuneTarihi(Index: Integer; const Astring: string);
begin
  FNumuneTarihi := Astring;
  FNumuneTarihi_Specified := True;
end;

function SonucKaydetGiris.NumuneTarihi_Specified(Index: Integer): boolean;
begin
  Result := FNumuneTarihi_Specified;
end;

procedure SonucKaydetGiris.SetSonuclar(Index: Integer; const AArrayOfSonucKaydetSonuc: ArrayOfSonucKaydetSonuc);
begin
  FSonuclar := AArrayOfSonucKaydetSonuc;
  FSonuclar_Specified := True;
end;

function SonucKaydetGiris.Sonuclar_Specified(Index: Integer): boolean;
begin
  Result := FSonuclar_Specified;
end;

procedure SonucKaydetGiris.SetKurumBilgileri(Index: Integer; const AKurumBilgileri: KurumBilgileri);
begin
  FKurumBilgileri := AKurumBilgileri;
  FKurumBilgileri_Specified := True;
end;

function SonucKaydetGiris.KurumBilgileri_Specified(Index: Integer): boolean;
begin
  Result := FKurumBilgileri_Specified;
end;

procedure SonucKaydetGiris.SetDoktorBilgileri(Index: Integer; const ADoktor: Doktor);
begin
  FDoktorBilgileri := ADoktor;
  FDoktorBilgileri_Specified := True;
end;

function SonucKaydetGiris.DoktorBilgileri_Specified(Index: Integer): boolean;
begin
  Result := FDoktorBilgileri_Specified;
end;

destructor SonucKaydetSonuc.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FNormalDeger)-1 do
    SysUtils.FreeAndNil(FNormalDeger[I]);
  System.SetLength(FNormalDeger, 0);
  for I := 0 to System.Length(FDosya)-1 do
    SysUtils.FreeAndNil(FDosya[I]);
  System.SetLength(FDosya, 0);
  inherited Destroy;
end;

procedure SonucKaydetSonuc.SetKodu(Index: Integer; const Astring: string);
begin
  FKodu := Astring;
  FKodu_Specified := True;
end;

function SonucKaydetSonuc.Kodu_Specified(Index: Integer): boolean;
begin
  Result := FKodu_Specified;
end;

procedure SonucKaydetSonuc.SetAltTestKodu(Index: Integer; const Astring: string);
begin
  FAltTestKodu := Astring;
  FAltTestKodu_Specified := True;
end;

function SonucKaydetSonuc.AltTestKodu_Specified(Index: Integer): boolean;
begin
  Result := FAltTestKodu_Specified;
end;

procedure SonucKaydetSonuc.SetSonuc(Index: Integer; const Astring: string);
begin
  FSonuc := Astring;
  FSonuc_Specified := True;
end;

function SonucKaydetSonuc.Sonuc_Specified(Index: Integer): boolean;
begin
  Result := FSonuc_Specified;
end;

procedure SonucKaydetSonuc.SetAciklama(Index: Integer; const Astring: string);
begin
  FAciklama := Astring;
  FAciklama_Specified := True;
end;

function SonucKaydetSonuc.Aciklama_Specified(Index: Integer): boolean;
begin
  Result := FAciklama_Specified;
end;

procedure SonucKaydetSonuc.SetNormalDeger(Index: Integer; const AArrayOfSonucKaydetNormalDeger: ArrayOfSonucKaydetNormalDeger);
begin
  FNormalDeger := AArrayOfSonucKaydetNormalDeger;
  FNormalDeger_Specified := True;
end;

function SonucKaydetSonuc.NormalDeger_Specified(Index: Integer): boolean;
begin
  Result := FNormalDeger_Specified;
end;

procedure SonucKaydetSonuc.SetKabulTarihi(Index: Integer; const Astring: string);
begin
  FKabulTarihi := Astring;
  FKabulTarihi_Specified := True;
end;

function SonucKaydetSonuc.KabulTarihi_Specified(Index: Integer): boolean;
begin
  Result := FKabulTarihi_Specified;
end;

procedure SonucKaydetSonuc.SetSonucTarihi(Index: Integer; const Astring: string);
begin
  FSonucTarihi := Astring;
  FSonucTarihi_Specified := True;
end;

function SonucKaydetSonuc.SonucTarihi_Specified(Index: Integer): boolean;
begin
  Result := FSonucTarihi_Specified;
end;

procedure SonucKaydetSonuc.SetOnayTarihi(Index: Integer; const Astring: string);
begin
  FOnayTarihi := Astring;
  FOnayTarihi_Specified := True;
end;

function SonucKaydetSonuc.OnayTarihi_Specified(Index: Integer): boolean;
begin
  Result := FOnayTarihi_Specified;
end;

procedure SonucKaydetSonuc.SetOnaylayanKullaniciAdi(Index: Integer; const Astring: string);
begin
  FOnaylayanKullaniciAdi := Astring;
  FOnaylayanKullaniciAdi_Specified := True;
end;

function SonucKaydetSonuc.OnaylayanKullaniciAdi_Specified(Index: Integer): boolean;
begin
  Result := FOnaylayanKullaniciAdi_Specified;
end;

procedure SonucKaydetSonuc.SetDosya(Index: Integer; const AArrayOfSonucKaydetDosya: ArrayOfSonucKaydetDosya);
begin
  FDosya := AArrayOfSonucKaydetDosya;
  FDosya_Specified := True;
end;

function SonucKaydetSonuc.Dosya_Specified(Index: Integer): boolean;
begin
  Result := FDosya_Specified;
end;

procedure SonucKaydetNormalDeger.SetAdi(Index: Integer; const Astring: string);
begin
  FAdi := Astring;
  FAdi_Specified := True;
end;

function SonucKaydetNormalDeger.Adi_Specified(Index: Integer): boolean;
begin
  Result := FAdi_Specified;
end;

procedure SonucKaydetNormalDeger.SetAlt(Index: Integer; const Astring: string);
begin
  FAlt := Astring;
  FAlt_Specified := True;
end;

function SonucKaydetNormalDeger.Alt_Specified(Index: Integer): boolean;
begin
  Result := FAlt_Specified;
end;

procedure SonucKaydetNormalDeger.SetUst(Index: Integer; const Astring: string);
begin
  FUst := Astring;
  FUst_Specified := True;
end;

function SonucKaydetNormalDeger.Ust_Specified(Index: Integer): boolean;
begin
  Result := FUst_Specified;
end;

procedure SonucKaydetNormalDeger.SetBirim(Index: Integer; const Astring: string);
begin
  FBirim := Astring;
  FBirim_Specified := True;
end;

function SonucKaydetNormalDeger.Birim_Specified(Index: Integer): boolean;
begin
  Result := FBirim_Specified;
end;

procedure SonucKaydetDosya.SetDosyaAdi(Index: Integer; const Astring: string);
begin
  FDosyaAdi := Astring;
  FDosyaAdi_Specified := True;
end;

function SonucKaydetDosya.DosyaAdi_Specified(Index: Integer): boolean;
begin
  Result := FDosyaAdi_Specified;
end;

procedure SonucKaydetDosya.SetDosyaBase64(Index: Integer; const Astring: string);
begin
  FDosyaBase64 := Astring;
  FDosyaBase64_Specified := True;
end;

function SonucKaydetDosya.DosyaBase64_Specified(Index: Integer): boolean;
begin
  Result := FDosyaBase64_Specified;
end;

procedure SonucKaydetCevap.SetSonucMesaji(Index: Integer; const Astring: string);
begin
  FSonucMesaji := Astring;
  FSonucMesaji_Specified := True;
end;

function SonucKaydetCevap.SonucMesaji_Specified(Index: Integer): boolean;
begin
  Result := FSonucMesaji_Specified;
end;

destructor Gelis.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FHastaTurleri)-1 do
    SysUtils.FreeAndNil(FHastaTurleri[I]);
  System.SetLength(FHastaTurleri, 0);
  for I := 0 to System.Length(FTetkikler)-1 do
    SysUtils.FreeAndNil(FTetkikler[I]);
  System.SetLength(FTetkikler, 0);
  SysUtils.FreeAndNil(FTarih);
  inherited Destroy;
end;

procedure Gelis.SetReferansNo(Index: Integer; const Astring: string);
begin
  FReferansNo := Astring;
  FReferansNo_Specified := True;
end;

function Gelis.ReferansNo_Specified(Index: Integer): boolean;
begin
  Result := FReferansNo_Specified;
end;

procedure Gelis.SetHastaTurleri(Index: Integer; const AArray_Of_HastaTur: Array_Of_HastaTur);
begin
  FHastaTurleri := AArray_Of_HastaTur;
  FHastaTurleri_Specified := True;
end;

function Gelis.HastaTurleri_Specified(Index: Integer): boolean;
begin
  Result := FHastaTurleri_Specified;
end;

procedure Gelis.SetAciklama(Index: Integer; const Astring: string);
begin
  FAciklama := Astring;
  FAciklama_Specified := True;
end;

function Gelis.Aciklama_Specified(Index: Integer): boolean;
begin
  Result := FAciklama_Specified;
end;

procedure Gelis.SetTetkikler(Index: Integer; const AArray_Of_Tetkik: Array_Of_Tetkik);
begin
  FTetkikler := AArray_Of_Tetkik;
  FTetkikler_Specified := True;
end;

function Gelis.Tetkikler_Specified(Index: Integer): boolean;
begin
  Result := FTetkikler_Specified;
end;

initialization
  InvRegistry.RegisterInterface(TypeInfo(TenayWebServiceSoapV4), 'http://tenay.com.tr/', 'utf-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(TenayWebServiceSoapV4), 'http://tenay.com.tr/%operationName%');
  InvRegistry.RegisterInvokeOptions(TypeInfo(TenayWebServiceSoapV4), ioDocument);
  InvRegistry.RegisterInvokeOptions(TypeInfo(TenayWebServiceSoapV4), ioSOAP12);
  RemClassRegistry.RegisterXSClass(BaseClass, 'http://tenay.com.tr/', 'BaseClass');
  RemClassRegistry.RegisterXSClass(KurumBilgileri, 'http://tenay.com.tr/', 'KurumBilgileri');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfDetay), 'http://tenay.com.tr/', 'ArrayOfDetay');
  RemClassRegistry.RegisterXSClass(HizmetListesi, 'http://tenay.com.tr/', 'HizmetListesi');
  RemClassRegistry.RegisterXSClass(Detay, 'http://tenay.com.tr/', 'Detay');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfTurDetay), 'http://tenay.com.tr/', 'ArrayOfTurDetay');
  RemClassRegistry.RegisterXSClass(HastaTurListesi, 'http://tenay.com.tr/', 'HastaTurListesi');
  RemClassRegistry.RegisterXSClass(TurDetay, 'http://tenay.com.tr/', 'TurDetay');
  RemClassRegistry.RegisterXSClass(Doktor, 'http://tenay.com.tr/', 'Doktor');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Cinsiyet), 'http://tenay.com.tr/', 'Cinsiyet');
  RemClassRegistry.RegisterXSClass(OrderBasic, 'http://tenay.com.tr/', 'OrderBasic');
  RemClassRegistry.RegisterXSClass(Order, 'http://tenay.com.tr/', 'Order');
  RemClassRegistry.RegisterXSInfo(TypeInfo(GelisTipi), 'http://tenay.com.tr/', 'GelisTipi');
  RemClassRegistry.RegisterXSClass(HastaTur, 'http://tenay.com.tr/', 'HastaTur');
  RemClassRegistry.RegisterXSClass(Tetkik, 'http://tenay.com.tr/', 'Tetkik');
  RemClassRegistry.RegisterXSClass(Cevap, 'http://tenay.com.tr/', 'Cevap');
  RemClassRegistry.RegisterXSClass(HastakaydetCevap, 'http://tenay.com.tr/', 'HastakaydetCevap');
  RemClassRegistry.RegisterXSClass(OrderQuery, 'http://tenay.com.tr/', 'OrderQuery');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfTetkikSonuc), 'http://tenay.com.tr/', 'ArrayOfTetkikSonuc');
  RemClassRegistry.RegisterXSClass(HastaSorguCevap, 'http://tenay.com.tr/', 'HastaSorguCevap');
  RemClassRegistry.RegisterXSInfo(TypeInfo(RefDurum), 'http://tenay.com.tr/', 'RefDurum');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfTestNormalDeger), 'http://tenay.com.tr/', 'ArrayOfTestNormalDeger');
  RemClassRegistry.RegisterXSClass(TetkikSonuc, 'http://tenay.com.tr/', 'TetkikSonuc');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfString), 'http://tenay.com.tr/', 'ArrayOfString');
  RemClassRegistry.RegisterXSInfo(TypeInfo(DosyaTur), 'http://tenay.com.tr/', 'DosyaTur');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfDosyaTur), 'http://tenay.com.tr/', 'ArrayOfDosyaTur');
  RemClassRegistry.RegisterXSClass(TestEki, 'http://tenay.com.tr/', 'TestEki');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfMikroOrganizma), 'http://tenay.com.tr/', 'ArrayOfMikroOrganizma');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfMikroYorum), 'http://tenay.com.tr/', 'ArrayOfMikroYorum');
  RemClassRegistry.RegisterXSClass(MikroIstek, 'http://tenay.com.tr/', 'MikroIstek');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfAntibiyotik), 'http://tenay.com.tr/', 'ArrayOfAntibiyotik');
  RemClassRegistry.RegisterXSClass(MikroOrganizma, 'http://tenay.com.tr/', 'MikroOrganizma');
  RemClassRegistry.RegisterXSClass(Antibiyotik, 'http://tenay.com.tr/', 'Antibiyotik');
  RemClassRegistry.RegisterXSClass(MikroYorum, 'http://tenay.com.tr/', 'MikroYorum');
  RemClassRegistry.RegisterXSClass(TestNormalDeger, 'http://tenay.com.tr/', 'TestNormalDeger');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfTestSonuc), 'http://tenay.com.tr/', 'ArrayOfTestSonuc');
  RemClassRegistry.RegisterXSClass(HastaSorguCevapReferans, 'http://tenay.com.tr/', 'HastaSorguCevapReferans');
  RemClassRegistry.RegisterXSClass(TestSonuc, 'http://tenay.com.tr/', 'TestSonuc');
  RemClassRegistry.RegisterXSClass(OrnekListesiQuery, 'http://tenay.com.tr/', 'OrnekListesiQuery');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfOrnekDetay), 'http://tenay.com.tr/', 'ArrayOfOrnekDetay');
  RemClassRegistry.RegisterXSClass(OrnekListesi, 'http://tenay.com.tr/', 'OrnekListesi');
  RemClassRegistry.RegisterXSClass(OrnekDetay, 'http://tenay.com.tr/', 'OrnekDetay');
  RemClassRegistry.RegisterXSClass(TCSonuclariQuery, 'http://tenay.com.tr/', 'TCSonuclariQuery');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfOrnekSonuc), 'http://tenay.com.tr/', 'ArrayOfOrnekSonuc');
  RemClassRegistry.RegisterXSClass(TCSonuclariResult, 'http://tenay.com.tr/', 'TCSonuclariResult');
  RemClassRegistry.RegisterXSClass(OrnekSonuc, 'http://tenay.com.tr/', 'OrnekSonuc');
  RemClassRegistry.RegisterXSInfo(TypeInfo(KayitDurumu), 'http://tenay.com.tr/', 'KayitDurumu');
  RemClassRegistry.RegisterXSClass(HastaListQuery, 'http://tenay.com.tr/', 'HastaListQuery');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfHastaDetay), 'http://tenay.com.tr/', 'ArrayOfHastaDetay');
  RemClassRegistry.RegisterXSClass(HastaListesi, 'http://tenay.com.tr/', 'HastaListesi');
  RemClassRegistry.RegisterXSClass(HastaDetay, 'http://tenay.com.tr/', 'HastaDetay');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfKurumDetay), 'http://tenay.com.tr/', 'ArrayOfKurumDetay');
  RemClassRegistry.RegisterXSClass(KurumListesi, 'http://tenay.com.tr/', 'KurumListesi');
  RemClassRegistry.RegisterXSClass(KurumDetay, 'http://tenay.com.tr/', 'KurumDetay');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfSonucKaydetSonuc), 'http://tenay.com.tr/', 'ArrayOfSonucKaydetSonuc');
  RemClassRegistry.RegisterXSClass(SonucKaydetGiris, 'http://tenay.com.tr/', 'SonucKaydetGiris');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfSonucKaydetNormalDeger), 'http://tenay.com.tr/', 'ArrayOfSonucKaydetNormalDeger');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfSonucKaydetDosya), 'http://tenay.com.tr/', 'ArrayOfSonucKaydetDosya');
  RemClassRegistry.RegisterXSClass(SonucKaydetSonuc, 'http://tenay.com.tr/', 'SonucKaydetSonuc');
  RemClassRegistry.RegisterXSClass(SonucKaydetNormalDeger, 'http://tenay.com.tr/', 'SonucKaydetNormalDeger');
  RemClassRegistry.RegisterXSClass(SonucKaydetDosya, 'http://tenay.com.tr/', 'SonucKaydetDosya');
  RemClassRegistry.RegisterXSClass(SonucKaydetCevap, 'http://tenay.com.tr/', 'SonucKaydetCevap');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_HastaTur), 'http://tenay.com.tr/', 'Array_Of_HastaTur');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_Tetkik), 'http://tenay.com.tr/', 'Array_Of_Tetkik');
  RemClassRegistry.RegisterXSClass(Gelis, 'http://tenay.com.tr/', 'Gelis');

end.