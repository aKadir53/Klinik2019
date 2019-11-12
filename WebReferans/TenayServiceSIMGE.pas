// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : http://95.9.150.154:1080/v3/TenayService.asmx?wsdl
//  >Import : http://95.9.150.154:1080/v3/TenayService.asmx?wsdl>0
// Encoding : utf-8
// Version  : 1.0
// (10.10.2019 12:26:15 - - $Rev: 45757 $)
// ************************************************************************ //

unit TenayServiceSIMGE;

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
  // !:int             - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:string          - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:boolean         - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:base64Binary    - "http://www.w3.org/2001/XMLSchema"[Gbl]

  HareketDetay         = class;                 { "http://tempuri.org/"[GblCplx] }
  HastaKaydetSonuc     = class;                 { "http://tempuri.org/"[GblCplx] }
  IstekBilgileri       = class;                 { "http://tempuri.org/"[GblCplx] }
  HastaListesiDetaySonuc = class;               { "http://tempuri.org/"[GblCplx] }
  HastaListesiHasta    = class;                 { "http://tempuri.org/"[GblCplx] }
  Rapor                = class;                 { "http://tempuri.org/"[GblCplx] }
  HastaListesiGiris    = class;                 { "http://tempuri.org/"[GblCplx] }
  HastaBilgileri       = class;                 { "http://tempuri.org/"[GblCplx] }
  HastaKaydetGiris     = class;                 { "http://tempuri.org/"[GblCplx] }
  GelisBilgileri       = class;                 { "http://tempuri.org/"[GblCplx] }
  HastaListesiSonucOrnekNo = class;             { "http://tempuri.org/"[GblCplx] }
  HastaListesiSonuc    = class;                 { "http://tempuri.org/"[GblCplx] }
  Test                 = class;                 { "http://tempuri.org/"[GblCplx] }
  SonucOkuGiris        = class;                 { "http://tempuri.org/"[GblCplx] }
  PatolojiSonuc        = class;                 { "http://tempuri.org/"[GblCplx] }
  SonucOkuSonuc        = class;                 { "http://tempuri.org/"[GblCplx] }

  {$SCOPEDENUMS ON}
  { "http://tempuri.org/"[GblSmpl] }
  DosyaTipi = (Pdf, Jpg, Xps, Txt, Bilinmeyen, Diger);

  {$SCOPEDENUMS OFF}

  ArrayOfHastaListesiHasta = array of HastaListesiHasta;   { "http://tempuri.org/"[GblCplx] }
  ArrayOfHareketDetay = array of HareketDetay;   { "http://tempuri.org/"[GblCplx] }


  // ************************************************************************ //
  // XML       : HareketDetay, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  HareketDetay = class(TRemotable)
  private
    FKod: string;
    FKod_Specified: boolean;
    FHareketId: Integer;
    FSonucMesaji: string;
    FSonucMesaji_Specified: boolean;
    procedure SetKod(Index: Integer; const Astring: string);
    function  Kod_Specified(Index: Integer): boolean;
    procedure SetSonucMesaji(Index: Integer; const Astring: string);
    function  SonucMesaji_Specified(Index: Integer): boolean;
  published
    property Kod:         string   Index (IS_OPTN) read FKod write SetKod stored Kod_Specified;
    property HareketId:   Integer  read FHareketId write FHareketId;
    property SonucMesaji: string   Index (IS_OPTN) read FSonucMesaji write SetSonucMesaji stored SonucMesaji_Specified;
  end;



  // ************************************************************************ //
  // XML       : HastaKaydetSonuc, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  HastaKaydetSonuc = class(TRemotable)
  private
    FSonuc: Integer;
    FSonucMesaji: string;
    FSonucMesaji_Specified: boolean;
    FHastaId: Integer;
    FGelisId: Integer;
    FKartId: Integer;
    FHareketler: ArrayOfHareketDetay;
    FHareketler_Specified: boolean;
    procedure SetSonucMesaji(Index: Integer; const Astring: string);
    function  SonucMesaji_Specified(Index: Integer): boolean;
    procedure SetHareketler(Index: Integer; const AArrayOfHareketDetay: ArrayOfHareketDetay);
    function  Hareketler_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property Sonuc:       Integer              read FSonuc write FSonuc;
    property SonucMesaji: string               Index (IS_OPTN) read FSonucMesaji write SetSonucMesaji stored SonucMesaji_Specified;
    property HastaId:     Integer              read FHastaId write FHastaId;
    property GelisId:     Integer              read FGelisId write FGelisId;
    property KartId:      Integer              read FKartId write FKartId;
    property Hareketler:  ArrayOfHareketDetay  Index (IS_OPTN) read FHareketler write SetHareketler stored Hareketler_Specified;
  end;



  // ************************************************************************ //
  // XML       : IstekBilgileri, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  IstekBilgileri = class(TRemotable)
  private
    FReferansId: Integer;
    FKod: string;
    FKod_Specified: boolean;
    FAdi: string;
    FAdi_Specified: boolean;
    procedure SetKod(Index: Integer; const Astring: string);
    function  Kod_Specified(Index: Integer): boolean;
    procedure SetAdi(Index: Integer; const Astring: string);
    function  Adi_Specified(Index: Integer): boolean;
  published
    property ReferansId: Integer  read FReferansId write FReferansId;
    property Kod:        string   Index (IS_OPTN) read FKod write SetKod stored Kod_Specified;
    property Adi:        string   Index (IS_OPTN) read FAdi write SetAdi stored Adi_Specified;
  end;



  // ************************************************************************ //
  // XML       : HastaListesiDetaySonuc, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  HastaListesiDetaySonuc = class(TRemotable)
  private
    FSonucMesaji: string;
    FSonucMesaji_Specified: boolean;
    FAdet: Integer;
    FHasta: ArrayOfHastaListesiHasta;
    FHasta_Specified: boolean;
    procedure SetSonucMesaji(Index: Integer; const Astring: string);
    function  SonucMesaji_Specified(Index: Integer): boolean;
    procedure SetHasta(Index: Integer; const AArrayOfHastaListesiHasta: ArrayOfHastaListesiHasta);
    function  Hasta_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property SonucMesaji: string                    Index (IS_OPTN) read FSonucMesaji write SetSonucMesaji stored SonucMesaji_Specified;
    property Adet:        Integer                   read FAdet write FAdet;
    property Hasta:       ArrayOfHastaListesiHasta  Index (IS_OPTN) read FHasta write SetHasta stored Hasta_Specified;
  end;



  // ************************************************************************ //
  // XML       : HastaListesiHasta, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  HastaListesiHasta = class(TRemotable)
  private
    FReferansId: string;
    FReferansId_Specified: boolean;
    FTCKimlik: string;
    FTCKimlik_Specified: boolean;
    FHastaNo: string;
    FHastaNo_Specified: boolean;
    FAdi: string;
    FAdi_Specified: boolean;
    FSoyadi: string;
    FSoyadi_Specified: boolean;
    FCinsiyeti: string;
    FCinsiyeti_Specified: boolean;
    FDogumTarihi: string;
    FDogumTarihi_Specified: boolean;
    FOrnekNo: string;
    FOrnekNo_Specified: boolean;
    FTurKodu: string;
    FTurKodu_Specified: boolean;
    FTurAdi: string;
    FTurAdi_Specified: boolean;
    procedure SetReferansId(Index: Integer; const Astring: string);
    function  ReferansId_Specified(Index: Integer): boolean;
    procedure SetTCKimlik(Index: Integer; const Astring: string);
    function  TCKimlik_Specified(Index: Integer): boolean;
    procedure SetHastaNo(Index: Integer; const Astring: string);
    function  HastaNo_Specified(Index: Integer): boolean;
    procedure SetAdi(Index: Integer; const Astring: string);
    function  Adi_Specified(Index: Integer): boolean;
    procedure SetSoyadi(Index: Integer; const Astring: string);
    function  Soyadi_Specified(Index: Integer): boolean;
    procedure SetCinsiyeti(Index: Integer; const Astring: string);
    function  Cinsiyeti_Specified(Index: Integer): boolean;
    procedure SetDogumTarihi(Index: Integer; const Astring: string);
    function  DogumTarihi_Specified(Index: Integer): boolean;
    procedure SetOrnekNo(Index: Integer; const Astring: string);
    function  OrnekNo_Specified(Index: Integer): boolean;
    procedure SetTurKodu(Index: Integer; const Astring: string);
    function  TurKodu_Specified(Index: Integer): boolean;
    procedure SetTurAdi(Index: Integer; const Astring: string);
    function  TurAdi_Specified(Index: Integer): boolean;
  published
    property ReferansId:  string  Index (IS_OPTN) read FReferansId write SetReferansId stored ReferansId_Specified;
    property TCKimlik:    string  Index (IS_OPTN) read FTCKimlik write SetTCKimlik stored TCKimlik_Specified;
    property HastaNo:     string  Index (IS_OPTN) read FHastaNo write SetHastaNo stored HastaNo_Specified;
    property Adi:         string  Index (IS_OPTN) read FAdi write SetAdi stored Adi_Specified;
    property Soyadi:      string  Index (IS_OPTN) read FSoyadi write SetSoyadi stored Soyadi_Specified;
    property Cinsiyeti:   string  Index (IS_OPTN) read FCinsiyeti write SetCinsiyeti stored Cinsiyeti_Specified;
    property DogumTarihi: string  Index (IS_OPTN) read FDogumTarihi write SetDogumTarihi stored DogumTarihi_Specified;
    property OrnekNo:     string  Index (IS_OPTN) read FOrnekNo write SetOrnekNo stored OrnekNo_Specified;
    property TurKodu:     string  Index (IS_OPTN) read FTurKodu write SetTurKodu stored TurKodu_Specified;
    property TurAdi:      string  Index (IS_OPTN) read FTurAdi write SetTurAdi stored TurAdi_Specified;
  end;



  // ************************************************************************ //
  // XML       : Rapor, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  Rapor = class(TRemotable)
  private
    FReferansId: Integer;
    FKod: string;
    FKod_Specified: boolean;
    FAdi: string;
    FAdi_Specified: boolean;
    FRichSonuc: string;
    FRichSonuc_Specified: boolean;
    procedure SetKod(Index: Integer; const Astring: string);
    function  Kod_Specified(Index: Integer): boolean;
    procedure SetAdi(Index: Integer; const Astring: string);
    function  Adi_Specified(Index: Integer): boolean;
    procedure SetRichSonuc(Index: Integer; const Astring: string);
    function  RichSonuc_Specified(Index: Integer): boolean;
  published
    property ReferansId: Integer  read FReferansId write FReferansId;
    property Kod:        string   Index (IS_OPTN) read FKod write SetKod stored Kod_Specified;
    property Adi:        string   Index (IS_OPTN) read FAdi write SetAdi stored Adi_Specified;
    property RichSonuc:  string   Index (IS_OPTN) read FRichSonuc write SetRichSonuc stored RichSonuc_Specified;
  end;



  // ************************************************************************ //
  // XML       : HastaListesiGiris, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  HastaListesiGiris = class(TRemotable)
  private
    FKullaniciAdi: string;
    FKullaniciAdi_Specified: boolean;
    FSifre: string;
    FSifre_Specified: boolean;
    FGonderenKurumKodu: string;
    FGonderenKurumKodu_Specified: boolean;
    FBasTarih: string;
    FBasTarih_Specified: boolean;
    FSonTarih: string;
    FSonTarih_Specified: boolean;
    procedure SetKullaniciAdi(Index: Integer; const Astring: string);
    function  KullaniciAdi_Specified(Index: Integer): boolean;
    procedure SetSifre(Index: Integer; const Astring: string);
    function  Sifre_Specified(Index: Integer): boolean;
    procedure SetGonderenKurumKodu(Index: Integer; const Astring: string);
    function  GonderenKurumKodu_Specified(Index: Integer): boolean;
    procedure SetBasTarih(Index: Integer; const Astring: string);
    function  BasTarih_Specified(Index: Integer): boolean;
    procedure SetSonTarih(Index: Integer; const Astring: string);
    function  SonTarih_Specified(Index: Integer): boolean;
  published
    property KullaniciAdi:      string  Index (IS_OPTN) read FKullaniciAdi write SetKullaniciAdi stored KullaniciAdi_Specified;
    property Sifre:             string  Index (IS_OPTN) read FSifre write SetSifre stored Sifre_Specified;
    property GonderenKurumKodu: string  Index (IS_OPTN) read FGonderenKurumKodu write SetGonderenKurumKodu stored GonderenKurumKodu_Specified;
    property BasTarih:          string  Index (IS_OPTN) read FBasTarih write SetBasTarih stored BasTarih_Specified;
    property SonTarih:          string  Index (IS_OPTN) read FSonTarih write SetSonTarih stored SonTarih_Specified;
  end;



  // ************************************************************************ //
  // XML       : HastaBilgileri, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  HastaBilgileri = class(TRemotable)
  private
    FReferansId: string;
    FReferansId_Specified: boolean;
    FTCKimlik: string;
    FTCKimlik_Specified: boolean;
    FHastaNo: string;
    FHastaNo_Specified: boolean;
    FAdi: string;
    FAdi_Specified: boolean;
    FSoyadi: string;
    FSoyadi_Specified: boolean;
    FCinsiyeti: string;
    FCinsiyeti_Specified: boolean;
    FDogumTarihi: string;
    FDogumTarihi_Specified: boolean;
    FDogumYeri: string;
    FDogumYeri_Specified: boolean;
    FBabaAdi: string;
    FBabaAdi_Specified: boolean;
    FAnneAdi: string;
    FAnneAdi_Specified: boolean;
    procedure SetReferansId(Index: Integer; const Astring: string);
    function  ReferansId_Specified(Index: Integer): boolean;
    procedure SetTCKimlik(Index: Integer; const Astring: string);
    function  TCKimlik_Specified(Index: Integer): boolean;
    procedure SetHastaNo(Index: Integer; const Astring: string);
    function  HastaNo_Specified(Index: Integer): boolean;
    procedure SetAdi(Index: Integer; const Astring: string);
    function  Adi_Specified(Index: Integer): boolean;
    procedure SetSoyadi(Index: Integer; const Astring: string);
    function  Soyadi_Specified(Index: Integer): boolean;
    procedure SetCinsiyeti(Index: Integer; const Astring: string);
    function  Cinsiyeti_Specified(Index: Integer): boolean;
    procedure SetDogumTarihi(Index: Integer; const Astring: string);
    function  DogumTarihi_Specified(Index: Integer): boolean;
    procedure SetDogumYeri(Index: Integer; const Astring: string);
    function  DogumYeri_Specified(Index: Integer): boolean;
    procedure SetBabaAdi(Index: Integer; const Astring: string);
    function  BabaAdi_Specified(Index: Integer): boolean;
    procedure SetAnneAdi(Index: Integer; const Astring: string);
    function  AnneAdi_Specified(Index: Integer): boolean;
  published
    property ReferansId:  string  Index (IS_OPTN) read FReferansId write SetReferansId stored ReferansId_Specified;
    property TCKimlik:    string  Index (IS_OPTN) read FTCKimlik write SetTCKimlik stored TCKimlik_Specified;
    property HastaNo:     string  Index (IS_OPTN) read FHastaNo write SetHastaNo stored HastaNo_Specified;
    property Adi:         string  Index (IS_OPTN) read FAdi write SetAdi stored Adi_Specified;
    property Soyadi:      string  Index (IS_OPTN) read FSoyadi write SetSoyadi stored Soyadi_Specified;
    property Cinsiyeti:   string  Index (IS_OPTN) read FCinsiyeti write SetCinsiyeti stored Cinsiyeti_Specified;
    property DogumTarihi: string  Index (IS_OPTN) read FDogumTarihi write SetDogumTarihi stored DogumTarihi_Specified;
    property DogumYeri:   string  Index (IS_OPTN) read FDogumYeri write SetDogumYeri stored DogumYeri_Specified;
    property BabaAdi:     string  Index (IS_OPTN) read FBabaAdi write SetBabaAdi stored BabaAdi_Specified;
    property AnneAdi:     string  Index (IS_OPTN) read FAnneAdi write SetAnneAdi stored AnneAdi_Specified;
  end;

  ArrayOfIstekBilgileri = array of IstekBilgileri;   { "http://tempuri.org/"[GblCplx] }


  // ************************************************************************ //
  // XML       : HastaKaydetGiris, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  HastaKaydetGiris = class(TRemotable)
  private
    FKullaniciAdi: string;
    FKullaniciAdi_Specified: boolean;
    FSifre: string;
    FSifre_Specified: boolean;
    FGonderenKurumKodu: string;
    FGonderenKurumKodu_Specified: boolean;
    FHasta: HastaBilgileri;
    FHasta_Specified: boolean;
    FGelis: GelisBilgileri;
    FGelis_Specified: boolean;
    FIstek: ArrayOfIstekBilgileri;
    FIstek_Specified: boolean;
    procedure SetKullaniciAdi(Index: Integer; const Astring: string);
    function  KullaniciAdi_Specified(Index: Integer): boolean;
    procedure SetSifre(Index: Integer; const Astring: string);
    function  Sifre_Specified(Index: Integer): boolean;
    procedure SetGonderenKurumKodu(Index: Integer; const Astring: string);
    function  GonderenKurumKodu_Specified(Index: Integer): boolean;
    procedure SetHasta(Index: Integer; const AHastaBilgileri: HastaBilgileri);
    function  Hasta_Specified(Index: Integer): boolean;
    procedure SetGelis(Index: Integer; const AGelisBilgileri: GelisBilgileri);
    function  Gelis_Specified(Index: Integer): boolean;
    procedure SetIstek(Index: Integer; const AArrayOfIstekBilgileri: ArrayOfIstekBilgileri);
    function  Istek_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property KullaniciAdi:      string                 Index (IS_OPTN) read FKullaniciAdi write SetKullaniciAdi stored KullaniciAdi_Specified;
    property Sifre:             string                 Index (IS_OPTN) read FSifre write SetSifre stored Sifre_Specified;
    property GonderenKurumKodu: string                 Index (IS_OPTN) read FGonderenKurumKodu write SetGonderenKurumKodu stored GonderenKurumKodu_Specified;
    property Hasta:             HastaBilgileri         Index (IS_OPTN) read FHasta write SetHasta stored Hasta_Specified;
    property Gelis:             GelisBilgileri         Index (IS_OPTN) read FGelis write SetGelis stored Gelis_Specified;
    property Istek:             ArrayOfIstekBilgileri  Index (IS_OPTN) read FIstek write SetIstek stored Istek_Specified;
  end;



  // ************************************************************************ //
  // XML       : GelisBilgileri, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  GelisBilgileri = class(TRemotable)
  private
    FReferansId: string;
    FReferansId_Specified: boolean;
    FTarih: string;
    FTarih_Specified: boolean;
    FKurumKod: string;
    FKurumKod_Specified: boolean;
    FKurum: string;
    FKurum_Specified: boolean;
    FBolumKod: string;
    FBolumKod_Specified: boolean;
    FBolum: string;
    FBolum_Specified: boolean;
    FDoktorKod: string;
    FDoktorKod_Specified: boolean;
    FDoktor: string;
    FDoktor_Specified: boolean;
    FAciklama: string;
    FAciklama_Specified: boolean;
    FNumuneAlmaTarihi: string;
    FNumuneAlmaTarihi_Specified: boolean;
    procedure SetReferansId(Index: Integer; const Astring: string);
    function  ReferansId_Specified(Index: Integer): boolean;
    procedure SetTarih(Index: Integer; const Astring: string);
    function  Tarih_Specified(Index: Integer): boolean;
    procedure SetKurumKod(Index: Integer; const Astring: string);
    function  KurumKod_Specified(Index: Integer): boolean;
    procedure SetKurum(Index: Integer; const Astring: string);
    function  Kurum_Specified(Index: Integer): boolean;
    procedure SetBolumKod(Index: Integer; const Astring: string);
    function  BolumKod_Specified(Index: Integer): boolean;
    procedure SetBolum(Index: Integer; const Astring: string);
    function  Bolum_Specified(Index: Integer): boolean;
    procedure SetDoktorKod(Index: Integer; const Astring: string);
    function  DoktorKod_Specified(Index: Integer): boolean;
    procedure SetDoktor(Index: Integer; const Astring: string);
    function  Doktor_Specified(Index: Integer): boolean;
    procedure SetAciklama(Index: Integer; const Astring: string);
    function  Aciklama_Specified(Index: Integer): boolean;
    procedure SetNumuneAlmaTarihi(Index: Integer; const Astring: string);
    function  NumuneAlmaTarihi_Specified(Index: Integer): boolean;
  published
    property ReferansId:       string  Index (IS_OPTN) read FReferansId write SetReferansId stored ReferansId_Specified;
    property Tarih:            string  Index (IS_OPTN) read FTarih write SetTarih stored Tarih_Specified;
    property KurumKod:         string  Index (IS_OPTN) read FKurumKod write SetKurumKod stored KurumKod_Specified;
    property Kurum:            string  Index (IS_OPTN) read FKurum write SetKurum stored Kurum_Specified;
    property BolumKod:         string  Index (IS_OPTN) read FBolumKod write SetBolumKod stored BolumKod_Specified;
    property Bolum:            string  Index (IS_OPTN) read FBolum write SetBolum stored Bolum_Specified;
    property DoktorKod:        string  Index (IS_OPTN) read FDoktorKod write SetDoktorKod stored DoktorKod_Specified;
    property Doktor:           string  Index (IS_OPTN) read FDoktor write SetDoktor stored Doktor_Specified;
    property Aciklama:         string  Index (IS_OPTN) read FAciklama write SetAciklama stored Aciklama_Specified;
    property NumuneAlmaTarihi: string  Index (IS_OPTN) read FNumuneAlmaTarihi write SetNumuneAlmaTarihi stored NumuneAlmaTarihi_Specified;
  end;

  ArrayOfRapor = array of Rapor;                { "http://tempuri.org/"[GblCplx] }
  ArrayOfString = array of string;              { "http://tempuri.org/"[GblCplx] }


  // ************************************************************************ //
  // XML       : HastaListesiSonucOrnekNo, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  HastaListesiSonucOrnekNo = class(TRemotable)
  private
    FSonucMesaji: string;
    FSonucMesaji_Specified: boolean;
    FAdet: Integer;
    FOrnekNo: ArrayOfString;
    FOrnekNo_Specified: boolean;
    procedure SetSonucMesaji(Index: Integer; const Astring: string);
    function  SonucMesaji_Specified(Index: Integer): boolean;
    procedure SetOrnekNo(Index: Integer; const AArrayOfString: ArrayOfString);
    function  OrnekNo_Specified(Index: Integer): boolean;
  published
    property SonucMesaji: string         Index (IS_OPTN) read FSonucMesaji write SetSonucMesaji stored SonucMesaji_Specified;
    property Adet:        Integer        read FAdet write FAdet;
    property OrnekNo:     ArrayOfString  Index (IS_OPTN) read FOrnekNo write SetOrnekNo stored OrnekNo_Specified;
  end;



  // ************************************************************************ //
  // XML       : HastaListesiSonuc, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  HastaListesiSonuc = class(TRemotable)
  private
    FSonucMesaji: string;
    FSonucMesaji_Specified: boolean;
    FAdet: Integer;
    FReferans: ArrayOfString;
    FReferans_Specified: boolean;
    procedure SetSonucMesaji(Index: Integer; const Astring: string);
    function  SonucMesaji_Specified(Index: Integer): boolean;
    procedure SetReferans(Index: Integer; const AArrayOfString: ArrayOfString);
    function  Referans_Specified(Index: Integer): boolean;
  published
    property SonucMesaji: string         Index (IS_OPTN) read FSonucMesaji write SetSonucMesaji stored SonucMesaji_Specified;
    property Adet:        Integer        read FAdet write FAdet;
    property Referans:    ArrayOfString  Index (IS_OPTN) read FReferans write SetReferans stored Referans_Specified;
  end;

  ArrayOfDosyaTipi = array of DosyaTipi;        { "http://tempuri.org/"[GblCplx] }


  // ************************************************************************ //
  // XML       : Test, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  Test = class(TRemotable)
  private
    FKod: string;
    FKod_Specified: boolean;
    FTestKod: string;
    FTestKod_Specified: boolean;
    FGrupAdi: string;
    FGrupAdi_Specified: boolean;
    FAdi: string;
    FAdi_Specified: boolean;
    FSonuc: string;
    FSonuc_Specified: boolean;
    FBirim: string;
    FBirim_Specified: boolean;
    FNormalDeger: string;
    FNormalDeger_Specified: boolean;
    FOzelNormalDeger: string;
    FOzelNormalDeger_Specified: boolean;
    FAciklama: string;
    FAciklama_Specified: boolean;
    FBarkod: Integer;
    FOnayTarihi: string;
    FOnayTarihi_Specified: boolean;
    FSonucTarihi: string;
    FSonucTarihi_Specified: boolean;
    FDosya: ArrayOfString;
    FDosya_Specified: boolean;
    FDosyaTipi: ArrayOfDosyaTipi;
    FDosyaTipi_Specified: boolean;
    FPtolojiSonucu: PatolojiSonuc;
    FPtolojiSonucu_Specified: boolean;
    procedure SetKod(Index: Integer; const Astring: string);
    function  Kod_Specified(Index: Integer): boolean;
    procedure SetTestKod(Index: Integer; const Astring: string);
    function  TestKod_Specified(Index: Integer): boolean;
    procedure SetGrupAdi(Index: Integer; const Astring: string);
    function  GrupAdi_Specified(Index: Integer): boolean;
    procedure SetAdi(Index: Integer; const Astring: string);
    function  Adi_Specified(Index: Integer): boolean;
    procedure SetSonuc(Index: Integer; const Astring: string);
    function  Sonuc_Specified(Index: Integer): boolean;
    procedure SetBirim(Index: Integer; const Astring: string);
    function  Birim_Specified(Index: Integer): boolean;
    procedure SetNormalDeger(Index: Integer; const Astring: string);
    function  NormalDeger_Specified(Index: Integer): boolean;
    procedure SetOzelNormalDeger(Index: Integer; const Astring: string);
    function  OzelNormalDeger_Specified(Index: Integer): boolean;
    procedure SetAciklama(Index: Integer; const Astring: string);
    function  Aciklama_Specified(Index: Integer): boolean;
    procedure SetOnayTarihi(Index: Integer; const Astring: string);
    function  OnayTarihi_Specified(Index: Integer): boolean;
    procedure SetSonucTarihi(Index: Integer; const Astring: string);
    function  SonucTarihi_Specified(Index: Integer): boolean;
    procedure SetDosya(Index: Integer; const AArrayOfString: ArrayOfString);
    function  Dosya_Specified(Index: Integer): boolean;
    procedure SetDosyaTipi(Index: Integer; const AArrayOfDosyaTipi: ArrayOfDosyaTipi);
    function  DosyaTipi_Specified(Index: Integer): boolean;
    procedure SetPtolojiSonucu(Index: Integer; const APatolojiSonuc: PatolojiSonuc);
    function  PtolojiSonucu_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property Kod:             string            Index (IS_OPTN) read FKod write SetKod stored Kod_Specified;
    property TestKod:         string            Index (IS_OPTN) read FTestKod write SetTestKod stored TestKod_Specified;
    property GrupAdi:         string            Index (IS_OPTN) read FGrupAdi write SetGrupAdi stored GrupAdi_Specified;
    property Adi:             string            Index (IS_OPTN) read FAdi write SetAdi stored Adi_Specified;
    property Sonuc:           string            Index (IS_OPTN) read FSonuc write SetSonuc stored Sonuc_Specified;
    property Birim:           string            Index (IS_OPTN) read FBirim write SetBirim stored Birim_Specified;
    property NormalDeger:     string            Index (IS_OPTN) read FNormalDeger write SetNormalDeger stored NormalDeger_Specified;
    property OzelNormalDeger: string            Index (IS_OPTN) read FOzelNormalDeger write SetOzelNormalDeger stored OzelNormalDeger_Specified;
    property Aciklama:        string            Index (IS_OPTN) read FAciklama write SetAciklama stored Aciklama_Specified;
    property Barkod:          Integer           read FBarkod write FBarkod;
    property OnayTarihi:      string            Index (IS_OPTN) read FOnayTarihi write SetOnayTarihi stored OnayTarihi_Specified;
    property SonucTarihi:     string            Index (IS_OPTN) read FSonucTarihi write SetSonucTarihi stored SonucTarihi_Specified;
    property Dosya:           ArrayOfString     Index (IS_OPTN) read FDosya write SetDosya stored Dosya_Specified;
    property DosyaTipi:       ArrayOfDosyaTipi  Index (IS_OPTN) read FDosyaTipi write SetDosyaTipi stored DosyaTipi_Specified;
    property PtolojiSonucu:   PatolojiSonuc     Index (IS_OPTN) read FPtolojiSonucu write SetPtolojiSonucu stored PtolojiSonucu_Specified;
  end;



  // ************************************************************************ //
  // XML       : SonucOkuGiris, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  SonucOkuGiris = class(TRemotable)
  private
    FKullaniciAdi: string;
    FKullaniciAdi_Specified: boolean;
    FSifre: string;
    FSifre_Specified: boolean;
    FGonderenKurumKodu: string;
    FGonderenKurumKodu_Specified: boolean;
    FPDF: Boolean;
    FGelisReferansId: string;
    FGelisReferansId_Specified: boolean;
    FHareketReferansId: Integer;
    FOrnekNo: Integer;
    FNoRef: Boolean;
    procedure SetKullaniciAdi(Index: Integer; const Astring: string);
    function  KullaniciAdi_Specified(Index: Integer): boolean;
    procedure SetSifre(Index: Integer; const Astring: string);
    function  Sifre_Specified(Index: Integer): boolean;
    procedure SetGonderenKurumKodu(Index: Integer; const Astring: string);
    function  GonderenKurumKodu_Specified(Index: Integer): boolean;
    procedure SetGelisReferansId(Index: Integer; const Astring: string);
    function  GelisReferansId_Specified(Index: Integer): boolean;
  published
    property KullaniciAdi:      string   Index (IS_OPTN) read FKullaniciAdi write SetKullaniciAdi stored KullaniciAdi_Specified;
    property Sifre:             string   Index (IS_OPTN) read FSifre write SetSifre stored Sifre_Specified;
    property GonderenKurumKodu: string   Index (IS_OPTN) read FGonderenKurumKodu write SetGonderenKurumKodu stored GonderenKurumKodu_Specified;
    property PDF:               Boolean  read FPDF write FPDF;
    property GelisReferansId:   string   Index (IS_OPTN) read FGelisReferansId write SetGelisReferansId stored GelisReferansId_Specified;
    property HareketReferansId: Integer  read FHareketReferansId write FHareketReferansId;
    property OrnekNo:           Integer  read FOrnekNo write FOrnekNo;
    property NoRef:             Boolean  read FNoRef write FNoRef;
  end;



  // ************************************************************************ //
  // XML       : PatolojiSonuc, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  PatolojiSonuc = class(TRemotable)
  private
    FOzet: TByteDynArray;
    FOzet_Specified: boolean;
    FSonuc: TByteDynArray;
    FSonuc_Specified: boolean;
    FYazan: string;
    FYazan_Specified: boolean;
    FOnaylayan: string;
    FOnaylayan_Specified: boolean;
    procedure SetOzet(Index: Integer; const ATByteDynArray: TByteDynArray);
    function  Ozet_Specified(Index: Integer): boolean;
    procedure SetSonuc(Index: Integer; const ATByteDynArray: TByteDynArray);
    function  Sonuc_Specified(Index: Integer): boolean;
    procedure SetYazan(Index: Integer; const Astring: string);
    function  Yazan_Specified(Index: Integer): boolean;
    procedure SetOnaylayan(Index: Integer; const Astring: string);
    function  Onaylayan_Specified(Index: Integer): boolean;
  published
    property Ozet:      TByteDynArray  Index (IS_OPTN) read FOzet write SetOzet stored Ozet_Specified;
    property Sonuc:     TByteDynArray  Index (IS_OPTN) read FSonuc write SetSonuc stored Sonuc_Specified;
    property Yazan:     string         Index (IS_OPTN) read FYazan write SetYazan stored Yazan_Specified;
    property Onaylayan: string         Index (IS_OPTN) read FOnaylayan write SetOnaylayan stored Onaylayan_Specified;
  end;

  ArrayOfTest = array of Test;                  { "http://tempuri.org/"[GblCplx] }


  // ************************************************************************ //
  // XML       : SonucOkuSonuc, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  SonucOkuSonuc = class(TRemotable)
  private
    FSonucMesaji: string;
    FSonucMesaji_Specified: boolean;
    FHasta: HastaBilgileri;
    FHasta_Specified: boolean;
    FNumuneTarihi: string;
    FNumuneTarihi_Specified: boolean;
    FTestAdet: Integer;
    FTestler: ArrayOfTest;
    FTestler_Specified: boolean;
    FRaporAdet: Integer;
    FPDF: TByteDynArray;
    FPDF_Specified: boolean;
    FRaporlar: ArrayOfRapor;
    FRaporlar_Specified: boolean;
    FOrnekNo: Integer;
    procedure SetSonucMesaji(Index: Integer; const Astring: string);
    function  SonucMesaji_Specified(Index: Integer): boolean;
    procedure SetHasta(Index: Integer; const AHastaBilgileri: HastaBilgileri);
    function  Hasta_Specified(Index: Integer): boolean;
    procedure SetNumuneTarihi(Index: Integer; const Astring: string);
    function  NumuneTarihi_Specified(Index: Integer): boolean;
    procedure SetTestler(Index: Integer; const AArrayOfTest: ArrayOfTest);
    function  Testler_Specified(Index: Integer): boolean;
    procedure SetPDF(Index: Integer; const ATByteDynArray: TByteDynArray);
    function  PDF_Specified(Index: Integer): boolean;
    procedure SetRaporlar(Index: Integer; const AArrayOfRapor: ArrayOfRapor);
    function  Raporlar_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property SonucMesaji:  string          Index (IS_OPTN) read FSonucMesaji write SetSonucMesaji stored SonucMesaji_Specified;
    property Hasta:        HastaBilgileri  Index (IS_OPTN) read FHasta write SetHasta stored Hasta_Specified;
    property NumuneTarihi: string          Index (IS_OPTN) read FNumuneTarihi write SetNumuneTarihi stored NumuneTarihi_Specified;
    property TestAdet:     Integer         read FTestAdet write FTestAdet;
    property Testler:      ArrayOfTest     Index (IS_OPTN) read FTestler write SetTestler stored Testler_Specified;
    property RaporAdet:    Integer         read FRaporAdet write FRaporAdet;
    property PDF:          TByteDynArray   Index (IS_OPTN) read FPDF write SetPDF stored PDF_Specified;
    property Raporlar:     ArrayOfRapor    Index (IS_OPTN) read FRaporlar write SetRaporlar stored Raporlar_Specified;
    property OrnekNo:      Integer         read FOrnekNo write FOrnekNo;
  end;


  // ************************************************************************ //
  // Namespace : http://tempuri.org/
  // soapAction: http://tempuri.org/%operationName%
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : document
  // use       : literal
  // binding   : HastaIslemleriSoap12
  // service   : HastaIslemleri
  // port      : HastaIslemleriSoap12
  // URL       : http://95.9.150.154:1080/v3/TenayService.asmx
  // ************************************************************************ //
  HastaIslemleriSoap = interface(IInvokable)
  ['{14BB6CAA-AC04-46BF-41A8-2CD01E2CE596}']
    function  HastaKaydet(const c: HastaKaydetGiris): HastaKaydetSonuc; stdcall;
    function  SonucOku(const giris: SonucOkuGiris): SonucOkuSonuc; stdcall;
    function  SonucOkuNoRef(const giris: SonucOkuGiris): SonucOkuSonuc; stdcall;
    function  HastaListesi(const giris: HastaListesiGiris): HastaListesiSonuc; stdcall;
    function  HastaListesiOrnekNo(const giris: HastaListesiGiris): HastaListesiSonucOrnekNo; stdcall;
    function  HastaListesiDetay(const giris: HastaListesiGiris): HastaListesiDetaySonuc; stdcall;
  end;

function GetHastaIslemleriSoap(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): HastaIslemleriSoap;


implementation
  uses SysUtils;

function GetHastaIslemleriSoap(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): HastaIslemleriSoap;
const
  defWSDL = 'http://95.9.150.154:1080/v3/TenayService.asmx?wsdl';
  defURL  = 'http://95.9.150.154:1080/v3/TenayService.asmx';
  defSvc  = 'HastaIslemleri';
  defPrt  = 'HastaIslemleriSoap12';
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
    Result := (RIO as HastaIslemleriSoap);
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


procedure HareketDetay.SetKod(Index: Integer; const Astring: string);
begin
  FKod := Astring;
  FKod_Specified := True;
end;

function HareketDetay.Kod_Specified(Index: Integer): boolean;
begin
  Result := FKod_Specified;
end;

procedure HareketDetay.SetSonucMesaji(Index: Integer; const Astring: string);
begin
  FSonucMesaji := Astring;
  FSonucMesaji_Specified := True;
end;

function HareketDetay.SonucMesaji_Specified(Index: Integer): boolean;
begin
  Result := FSonucMesaji_Specified;
end;

destructor HastaKaydetSonuc.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FHareketler)-1 do
    SysUtils.FreeAndNil(FHareketler[I]);
  System.SetLength(FHareketler, 0);
  inherited Destroy;
end;

procedure HastaKaydetSonuc.SetSonucMesaji(Index: Integer; const Astring: string);
begin
  FSonucMesaji := Astring;
  FSonucMesaji_Specified := True;
end;

function HastaKaydetSonuc.SonucMesaji_Specified(Index: Integer): boolean;
begin
  Result := FSonucMesaji_Specified;
end;

procedure HastaKaydetSonuc.SetHareketler(Index: Integer; const AArrayOfHareketDetay: ArrayOfHareketDetay);
begin
  FHareketler := AArrayOfHareketDetay;
  FHareketler_Specified := True;
end;

function HastaKaydetSonuc.Hareketler_Specified(Index: Integer): boolean;
begin
  Result := FHareketler_Specified;
end;

procedure IstekBilgileri.SetKod(Index: Integer; const Astring: string);
begin
  FKod := Astring;
  FKod_Specified := True;
end;

function IstekBilgileri.Kod_Specified(Index: Integer): boolean;
begin
  Result := FKod_Specified;
end;

procedure IstekBilgileri.SetAdi(Index: Integer; const Astring: string);
begin
  FAdi := Astring;
  FAdi_Specified := True;
end;

function IstekBilgileri.Adi_Specified(Index: Integer): boolean;
begin
  Result := FAdi_Specified;
end;

destructor HastaListesiDetaySonuc.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FHasta)-1 do
    SysUtils.FreeAndNil(FHasta[I]);
  System.SetLength(FHasta, 0);
  inherited Destroy;
end;

procedure HastaListesiDetaySonuc.SetSonucMesaji(Index: Integer; const Astring: string);
begin
  FSonucMesaji := Astring;
  FSonucMesaji_Specified := True;
end;

function HastaListesiDetaySonuc.SonucMesaji_Specified(Index: Integer): boolean;
begin
  Result := FSonucMesaji_Specified;
end;

procedure HastaListesiDetaySonuc.SetHasta(Index: Integer; const AArrayOfHastaListesiHasta: ArrayOfHastaListesiHasta);
begin
  FHasta := AArrayOfHastaListesiHasta;
  FHasta_Specified := True;
end;

function HastaListesiDetaySonuc.Hasta_Specified(Index: Integer): boolean;
begin
  Result := FHasta_Specified;
end;

procedure HastaListesiHasta.SetReferansId(Index: Integer; const Astring: string);
begin
  FReferansId := Astring;
  FReferansId_Specified := True;
end;

function HastaListesiHasta.ReferansId_Specified(Index: Integer): boolean;
begin
  Result := FReferansId_Specified;
end;

procedure HastaListesiHasta.SetTCKimlik(Index: Integer; const Astring: string);
begin
  FTCKimlik := Astring;
  FTCKimlik_Specified := True;
end;

function HastaListesiHasta.TCKimlik_Specified(Index: Integer): boolean;
begin
  Result := FTCKimlik_Specified;
end;

procedure HastaListesiHasta.SetHastaNo(Index: Integer; const Astring: string);
begin
  FHastaNo := Astring;
  FHastaNo_Specified := True;
end;

function HastaListesiHasta.HastaNo_Specified(Index: Integer): boolean;
begin
  Result := FHastaNo_Specified;
end;

procedure HastaListesiHasta.SetAdi(Index: Integer; const Astring: string);
begin
  FAdi := Astring;
  FAdi_Specified := True;
end;

function HastaListesiHasta.Adi_Specified(Index: Integer): boolean;
begin
  Result := FAdi_Specified;
end;

procedure HastaListesiHasta.SetSoyadi(Index: Integer; const Astring: string);
begin
  FSoyadi := Astring;
  FSoyadi_Specified := True;
end;

function HastaListesiHasta.Soyadi_Specified(Index: Integer): boolean;
begin
  Result := FSoyadi_Specified;
end;

procedure HastaListesiHasta.SetCinsiyeti(Index: Integer; const Astring: string);
begin
  FCinsiyeti := Astring;
  FCinsiyeti_Specified := True;
end;

function HastaListesiHasta.Cinsiyeti_Specified(Index: Integer): boolean;
begin
  Result := FCinsiyeti_Specified;
end;

procedure HastaListesiHasta.SetDogumTarihi(Index: Integer; const Astring: string);
begin
  FDogumTarihi := Astring;
  FDogumTarihi_Specified := True;
end;

function HastaListesiHasta.DogumTarihi_Specified(Index: Integer): boolean;
begin
  Result := FDogumTarihi_Specified;
end;

procedure HastaListesiHasta.SetOrnekNo(Index: Integer; const Astring: string);
begin
  FOrnekNo := Astring;
  FOrnekNo_Specified := True;
end;

function HastaListesiHasta.OrnekNo_Specified(Index: Integer): boolean;
begin
  Result := FOrnekNo_Specified;
end;

procedure HastaListesiHasta.SetTurKodu(Index: Integer; const Astring: string);
begin
  FTurKodu := Astring;
  FTurKodu_Specified := True;
end;

function HastaListesiHasta.TurKodu_Specified(Index: Integer): boolean;
begin
  Result := FTurKodu_Specified;
end;

procedure HastaListesiHasta.SetTurAdi(Index: Integer; const Astring: string);
begin
  FTurAdi := Astring;
  FTurAdi_Specified := True;
end;

function HastaListesiHasta.TurAdi_Specified(Index: Integer): boolean;
begin
  Result := FTurAdi_Specified;
end;

procedure Rapor.SetKod(Index: Integer; const Astring: string);
begin
  FKod := Astring;
  FKod_Specified := True;
end;

function Rapor.Kod_Specified(Index: Integer): boolean;
begin
  Result := FKod_Specified;
end;

procedure Rapor.SetAdi(Index: Integer; const Astring: string);
begin
  FAdi := Astring;
  FAdi_Specified := True;
end;

function Rapor.Adi_Specified(Index: Integer): boolean;
begin
  Result := FAdi_Specified;
end;

procedure Rapor.SetRichSonuc(Index: Integer; const Astring: string);
begin
  FRichSonuc := Astring;
  FRichSonuc_Specified := True;
end;

function Rapor.RichSonuc_Specified(Index: Integer): boolean;
begin
  Result := FRichSonuc_Specified;
end;

procedure HastaListesiGiris.SetKullaniciAdi(Index: Integer; const Astring: string);
begin
  FKullaniciAdi := Astring;
  FKullaniciAdi_Specified := True;
end;

function HastaListesiGiris.KullaniciAdi_Specified(Index: Integer): boolean;
begin
  Result := FKullaniciAdi_Specified;
end;

procedure HastaListesiGiris.SetSifre(Index: Integer; const Astring: string);
begin
  FSifre := Astring;
  FSifre_Specified := True;
end;

function HastaListesiGiris.Sifre_Specified(Index: Integer): boolean;
begin
  Result := FSifre_Specified;
end;

procedure HastaListesiGiris.SetGonderenKurumKodu(Index: Integer; const Astring: string);
begin
  FGonderenKurumKodu := Astring;
  FGonderenKurumKodu_Specified := True;
end;

function HastaListesiGiris.GonderenKurumKodu_Specified(Index: Integer): boolean;
begin
  Result := FGonderenKurumKodu_Specified;
end;

procedure HastaListesiGiris.SetBasTarih(Index: Integer; const Astring: string);
begin
  FBasTarih := Astring;
  FBasTarih_Specified := True;
end;

function HastaListesiGiris.BasTarih_Specified(Index: Integer): boolean;
begin
  Result := FBasTarih_Specified;
end;

procedure HastaListesiGiris.SetSonTarih(Index: Integer; const Astring: string);
begin
  FSonTarih := Astring;
  FSonTarih_Specified := True;
end;

function HastaListesiGiris.SonTarih_Specified(Index: Integer): boolean;
begin
  Result := FSonTarih_Specified;
end;

procedure HastaBilgileri.SetReferansId(Index: Integer; const Astring: string);
begin
  FReferansId := Astring;
  FReferansId_Specified := True;
end;

function HastaBilgileri.ReferansId_Specified(Index: Integer): boolean;
begin
  Result := FReferansId_Specified;
end;

procedure HastaBilgileri.SetTCKimlik(Index: Integer; const Astring: string);
begin
  FTCKimlik := Astring;
  FTCKimlik_Specified := True;
end;

function HastaBilgileri.TCKimlik_Specified(Index: Integer): boolean;
begin
  Result := FTCKimlik_Specified;
end;

procedure HastaBilgileri.SetHastaNo(Index: Integer; const Astring: string);
begin
  FHastaNo := Astring;
  FHastaNo_Specified := True;
end;

function HastaBilgileri.HastaNo_Specified(Index: Integer): boolean;
begin
  Result := FHastaNo_Specified;
end;

procedure HastaBilgileri.SetAdi(Index: Integer; const Astring: string);
begin
  FAdi := Astring;
  FAdi_Specified := True;
end;

function HastaBilgileri.Adi_Specified(Index: Integer): boolean;
begin
  Result := FAdi_Specified;
end;

procedure HastaBilgileri.SetSoyadi(Index: Integer; const Astring: string);
begin
  FSoyadi := Astring;
  FSoyadi_Specified := True;
end;

function HastaBilgileri.Soyadi_Specified(Index: Integer): boolean;
begin
  Result := FSoyadi_Specified;
end;

procedure HastaBilgileri.SetCinsiyeti(Index: Integer; const Astring: string);
begin
  FCinsiyeti := Astring;
  FCinsiyeti_Specified := True;
end;

function HastaBilgileri.Cinsiyeti_Specified(Index: Integer): boolean;
begin
  Result := FCinsiyeti_Specified;
end;

procedure HastaBilgileri.SetDogumTarihi(Index: Integer; const Astring: string);
begin
  FDogumTarihi := Astring;
  FDogumTarihi_Specified := True;
end;

function HastaBilgileri.DogumTarihi_Specified(Index: Integer): boolean;
begin
  Result := FDogumTarihi_Specified;
end;

procedure HastaBilgileri.SetDogumYeri(Index: Integer; const Astring: string);
begin
  FDogumYeri := Astring;
  FDogumYeri_Specified := True;
end;

function HastaBilgileri.DogumYeri_Specified(Index: Integer): boolean;
begin
  Result := FDogumYeri_Specified;
end;

procedure HastaBilgileri.SetBabaAdi(Index: Integer; const Astring: string);
begin
  FBabaAdi := Astring;
  FBabaAdi_Specified := True;
end;

function HastaBilgileri.BabaAdi_Specified(Index: Integer): boolean;
begin
  Result := FBabaAdi_Specified;
end;

procedure HastaBilgileri.SetAnneAdi(Index: Integer; const Astring: string);
begin
  FAnneAdi := Astring;
  FAnneAdi_Specified := True;
end;

function HastaBilgileri.AnneAdi_Specified(Index: Integer): boolean;
begin
  Result := FAnneAdi_Specified;
end;

destructor HastaKaydetGiris.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FIstek)-1 do
    SysUtils.FreeAndNil(FIstek[I]);
  System.SetLength(FIstek, 0);
  SysUtils.FreeAndNil(FHasta);
  SysUtils.FreeAndNil(FGelis);
  inherited Destroy;
end;

procedure HastaKaydetGiris.SetKullaniciAdi(Index: Integer; const Astring: string);
begin
  FKullaniciAdi := Astring;
  FKullaniciAdi_Specified := True;
end;

function HastaKaydetGiris.KullaniciAdi_Specified(Index: Integer): boolean;
begin
  Result := FKullaniciAdi_Specified;
end;

procedure HastaKaydetGiris.SetSifre(Index: Integer; const Astring: string);
begin
  FSifre := Astring;
  FSifre_Specified := True;
end;

function HastaKaydetGiris.Sifre_Specified(Index: Integer): boolean;
begin
  Result := FSifre_Specified;
end;

procedure HastaKaydetGiris.SetGonderenKurumKodu(Index: Integer; const Astring: string);
begin
  FGonderenKurumKodu := Astring;
  FGonderenKurumKodu_Specified := True;
end;

function HastaKaydetGiris.GonderenKurumKodu_Specified(Index: Integer): boolean;
begin
  Result := FGonderenKurumKodu_Specified;
end;

procedure HastaKaydetGiris.SetHasta(Index: Integer; const AHastaBilgileri: HastaBilgileri);
begin
  FHasta := AHastaBilgileri;
  FHasta_Specified := True;
end;

function HastaKaydetGiris.Hasta_Specified(Index: Integer): boolean;
begin
  Result := FHasta_Specified;
end;

procedure HastaKaydetGiris.SetGelis(Index: Integer; const AGelisBilgileri: GelisBilgileri);
begin
  FGelis := AGelisBilgileri;
  FGelis_Specified := True;
end;

function HastaKaydetGiris.Gelis_Specified(Index: Integer): boolean;
begin
  Result := FGelis_Specified;
end;

procedure HastaKaydetGiris.SetIstek(Index: Integer; const AArrayOfIstekBilgileri: ArrayOfIstekBilgileri);
begin
  FIstek := AArrayOfIstekBilgileri;
  FIstek_Specified := True;
end;

function HastaKaydetGiris.Istek_Specified(Index: Integer): boolean;
begin
  Result := FIstek_Specified;
end;

procedure GelisBilgileri.SetReferansId(Index: Integer; const Astring: string);
begin
  FReferansId := Astring;
  FReferansId_Specified := True;
end;

function GelisBilgileri.ReferansId_Specified(Index: Integer): boolean;
begin
  Result := FReferansId_Specified;
end;

procedure GelisBilgileri.SetTarih(Index: Integer; const Astring: string);
begin
  FTarih := Astring;
  FTarih_Specified := True;
end;

function GelisBilgileri.Tarih_Specified(Index: Integer): boolean;
begin
  Result := FTarih_Specified;
end;

procedure GelisBilgileri.SetKurumKod(Index: Integer; const Astring: string);
begin
  FKurumKod := Astring;
  FKurumKod_Specified := True;
end;

function GelisBilgileri.KurumKod_Specified(Index: Integer): boolean;
begin
  Result := FKurumKod_Specified;
end;

procedure GelisBilgileri.SetKurum(Index: Integer; const Astring: string);
begin
  FKurum := Astring;
  FKurum_Specified := True;
end;

function GelisBilgileri.Kurum_Specified(Index: Integer): boolean;
begin
  Result := FKurum_Specified;
end;

procedure GelisBilgileri.SetBolumKod(Index: Integer; const Astring: string);
begin
  FBolumKod := Astring;
  FBolumKod_Specified := True;
end;

function GelisBilgileri.BolumKod_Specified(Index: Integer): boolean;
begin
  Result := FBolumKod_Specified;
end;

procedure GelisBilgileri.SetBolum(Index: Integer; const Astring: string);
begin
  FBolum := Astring;
  FBolum_Specified := True;
end;

function GelisBilgileri.Bolum_Specified(Index: Integer): boolean;
begin
  Result := FBolum_Specified;
end;

procedure GelisBilgileri.SetDoktorKod(Index: Integer; const Astring: string);
begin
  FDoktorKod := Astring;
  FDoktorKod_Specified := True;
end;

function GelisBilgileri.DoktorKod_Specified(Index: Integer): boolean;
begin
  Result := FDoktorKod_Specified;
end;

procedure GelisBilgileri.SetDoktor(Index: Integer; const Astring: string);
begin
  FDoktor := Astring;
  FDoktor_Specified := True;
end;

function GelisBilgileri.Doktor_Specified(Index: Integer): boolean;
begin
  Result := FDoktor_Specified;
end;

procedure GelisBilgileri.SetAciklama(Index: Integer; const Astring: string);
begin
  FAciklama := Astring;
  FAciklama_Specified := True;
end;

function GelisBilgileri.Aciklama_Specified(Index: Integer): boolean;
begin
  Result := FAciklama_Specified;
end;

procedure GelisBilgileri.SetNumuneAlmaTarihi(Index: Integer; const Astring: string);
begin
  FNumuneAlmaTarihi := Astring;
  FNumuneAlmaTarihi_Specified := True;
end;

function GelisBilgileri.NumuneAlmaTarihi_Specified(Index: Integer): boolean;
begin
  Result := FNumuneAlmaTarihi_Specified;
end;

procedure HastaListesiSonucOrnekNo.SetSonucMesaji(Index: Integer; const Astring: string);
begin
  FSonucMesaji := Astring;
  FSonucMesaji_Specified := True;
end;

function HastaListesiSonucOrnekNo.SonucMesaji_Specified(Index: Integer): boolean;
begin
  Result := FSonucMesaji_Specified;
end;

procedure HastaListesiSonucOrnekNo.SetOrnekNo(Index: Integer; const AArrayOfString: ArrayOfString);
begin
  FOrnekNo := AArrayOfString;
  FOrnekNo_Specified := True;
end;

function HastaListesiSonucOrnekNo.OrnekNo_Specified(Index: Integer): boolean;
begin
  Result := FOrnekNo_Specified;
end;

procedure HastaListesiSonuc.SetSonucMesaji(Index: Integer; const Astring: string);
begin
  FSonucMesaji := Astring;
  FSonucMesaji_Specified := True;
end;

function HastaListesiSonuc.SonucMesaji_Specified(Index: Integer): boolean;
begin
  Result := FSonucMesaji_Specified;
end;

procedure HastaListesiSonuc.SetReferans(Index: Integer; const AArrayOfString: ArrayOfString);
begin
  FReferans := AArrayOfString;
  FReferans_Specified := True;
end;

function HastaListesiSonuc.Referans_Specified(Index: Integer): boolean;
begin
  Result := FReferans_Specified;
end;

destructor Test.Destroy;
begin
  SysUtils.FreeAndNil(FPtolojiSonucu);
  inherited Destroy;
end;

procedure Test.SetKod(Index: Integer; const Astring: string);
begin
  FKod := Astring;
  FKod_Specified := True;
end;

function Test.Kod_Specified(Index: Integer): boolean;
begin
  Result := FKod_Specified;
end;

procedure Test.SetTestKod(Index: Integer; const Astring: string);
begin
  FTestKod := Astring;
  FTestKod_Specified := True;
end;

function Test.TestKod_Specified(Index: Integer): boolean;
begin
  Result := FTestKod_Specified;
end;

procedure Test.SetGrupAdi(Index: Integer; const Astring: string);
begin
  FGrupAdi := Astring;
  FGrupAdi_Specified := True;
end;

function Test.GrupAdi_Specified(Index: Integer): boolean;
begin
  Result := FGrupAdi_Specified;
end;

procedure Test.SetAdi(Index: Integer; const Astring: string);
begin
  FAdi := Astring;
  FAdi_Specified := True;
end;

function Test.Adi_Specified(Index: Integer): boolean;
begin
  Result := FAdi_Specified;
end;

procedure Test.SetSonuc(Index: Integer; const Astring: string);
begin
  FSonuc := Astring;
  FSonuc_Specified := True;
end;

function Test.Sonuc_Specified(Index: Integer): boolean;
begin
  Result := FSonuc_Specified;
end;

procedure Test.SetBirim(Index: Integer; const Astring: string);
begin
  FBirim := Astring;
  FBirim_Specified := True;
end;

function Test.Birim_Specified(Index: Integer): boolean;
begin
  Result := FBirim_Specified;
end;

procedure Test.SetNormalDeger(Index: Integer; const Astring: string);
begin
  FNormalDeger := Astring;
  FNormalDeger_Specified := True;
end;

function Test.NormalDeger_Specified(Index: Integer): boolean;
begin
  Result := FNormalDeger_Specified;
end;

procedure Test.SetOzelNormalDeger(Index: Integer; const Astring: string);
begin
  FOzelNormalDeger := Astring;
  FOzelNormalDeger_Specified := True;
end;

function Test.OzelNormalDeger_Specified(Index: Integer): boolean;
begin
  Result := FOzelNormalDeger_Specified;
end;

procedure Test.SetAciklama(Index: Integer; const Astring: string);
begin
  FAciklama := Astring;
  FAciklama_Specified := True;
end;

function Test.Aciklama_Specified(Index: Integer): boolean;
begin
  Result := FAciklama_Specified;
end;

procedure Test.SetOnayTarihi(Index: Integer; const Astring: string);
begin
  FOnayTarihi := Astring;
  FOnayTarihi_Specified := True;
end;

function Test.OnayTarihi_Specified(Index: Integer): boolean;
begin
  Result := FOnayTarihi_Specified;
end;

procedure Test.SetSonucTarihi(Index: Integer; const Astring: string);
begin
  FSonucTarihi := Astring;
  FSonucTarihi_Specified := True;
end;

function Test.SonucTarihi_Specified(Index: Integer): boolean;
begin
  Result := FSonucTarihi_Specified;
end;

procedure Test.SetDosya(Index: Integer; const AArrayOfString: ArrayOfString);
begin
  FDosya := AArrayOfString;
  FDosya_Specified := True;
end;

function Test.Dosya_Specified(Index: Integer): boolean;
begin
  Result := FDosya_Specified;
end;

procedure Test.SetDosyaTipi(Index: Integer; const AArrayOfDosyaTipi: ArrayOfDosyaTipi);
begin
  FDosyaTipi := AArrayOfDosyaTipi;
  FDosyaTipi_Specified := True;
end;

function Test.DosyaTipi_Specified(Index: Integer): boolean;
begin
  Result := FDosyaTipi_Specified;
end;

procedure Test.SetPtolojiSonucu(Index: Integer; const APatolojiSonuc: PatolojiSonuc);
begin
  FPtolojiSonucu := APatolojiSonuc;
  FPtolojiSonucu_Specified := True;
end;

function Test.PtolojiSonucu_Specified(Index: Integer): boolean;
begin
  Result := FPtolojiSonucu_Specified;
end;

procedure SonucOkuGiris.SetKullaniciAdi(Index: Integer; const Astring: string);
begin
  FKullaniciAdi := Astring;
  FKullaniciAdi_Specified := True;
end;

function SonucOkuGiris.KullaniciAdi_Specified(Index: Integer): boolean;
begin
  Result := FKullaniciAdi_Specified;
end;

procedure SonucOkuGiris.SetSifre(Index: Integer; const Astring: string);
begin
  FSifre := Astring;
  FSifre_Specified := True;
end;

function SonucOkuGiris.Sifre_Specified(Index: Integer): boolean;
begin
  Result := FSifre_Specified;
end;

procedure SonucOkuGiris.SetGonderenKurumKodu(Index: Integer; const Astring: string);
begin
  FGonderenKurumKodu := Astring;
  FGonderenKurumKodu_Specified := True;
end;

function SonucOkuGiris.GonderenKurumKodu_Specified(Index: Integer): boolean;
begin
  Result := FGonderenKurumKodu_Specified;
end;

procedure SonucOkuGiris.SetGelisReferansId(Index: Integer; const Astring: string);
begin
  FGelisReferansId := Astring;
  FGelisReferansId_Specified := True;
end;

function SonucOkuGiris.GelisReferansId_Specified(Index: Integer): boolean;
begin
  Result := FGelisReferansId_Specified;
end;

procedure PatolojiSonuc.SetOzet(Index: Integer; const ATByteDynArray: TByteDynArray);
begin
  FOzet := ATByteDynArray;
  FOzet_Specified := True;
end;

function PatolojiSonuc.Ozet_Specified(Index: Integer): boolean;
begin
  Result := FOzet_Specified;
end;

procedure PatolojiSonuc.SetSonuc(Index: Integer; const ATByteDynArray: TByteDynArray);
begin
  FSonuc := ATByteDynArray;
  FSonuc_Specified := True;
end;

function PatolojiSonuc.Sonuc_Specified(Index: Integer): boolean;
begin
  Result := FSonuc_Specified;
end;

procedure PatolojiSonuc.SetYazan(Index: Integer; const Astring: string);
begin
  FYazan := Astring;
  FYazan_Specified := True;
end;

function PatolojiSonuc.Yazan_Specified(Index: Integer): boolean;
begin
  Result := FYazan_Specified;
end;

procedure PatolojiSonuc.SetOnaylayan(Index: Integer; const Astring: string);
begin
  FOnaylayan := Astring;
  FOnaylayan_Specified := True;
end;

function PatolojiSonuc.Onaylayan_Specified(Index: Integer): boolean;
begin
  Result := FOnaylayan_Specified;
end;

destructor SonucOkuSonuc.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FTestler)-1 do
    SysUtils.FreeAndNil(FTestler[I]);
  System.SetLength(FTestler, 0);
  for I := 0 to System.Length(FRaporlar)-1 do
    SysUtils.FreeAndNil(FRaporlar[I]);
  System.SetLength(FRaporlar, 0);
  SysUtils.FreeAndNil(FHasta);
  inherited Destroy;
end;

procedure SonucOkuSonuc.SetSonucMesaji(Index: Integer; const Astring: string);
begin
  FSonucMesaji := Astring;
  FSonucMesaji_Specified := True;
end;

function SonucOkuSonuc.SonucMesaji_Specified(Index: Integer): boolean;
begin
  Result := FSonucMesaji_Specified;
end;

procedure SonucOkuSonuc.SetHasta(Index: Integer; const AHastaBilgileri: HastaBilgileri);
begin
  FHasta := AHastaBilgileri;
  FHasta_Specified := True;
end;

function SonucOkuSonuc.Hasta_Specified(Index: Integer): boolean;
begin
  Result := FHasta_Specified;
end;

procedure SonucOkuSonuc.SetNumuneTarihi(Index: Integer; const Astring: string);
begin
  FNumuneTarihi := Astring;
  FNumuneTarihi_Specified := True;
end;

function SonucOkuSonuc.NumuneTarihi_Specified(Index: Integer): boolean;
begin
  Result := FNumuneTarihi_Specified;
end;

procedure SonucOkuSonuc.SetTestler(Index: Integer; const AArrayOfTest: ArrayOfTest);
begin
  FTestler := AArrayOfTest;
  FTestler_Specified := True;
end;

function SonucOkuSonuc.Testler_Specified(Index: Integer): boolean;
begin
  Result := FTestler_Specified;
end;

procedure SonucOkuSonuc.SetPDF(Index: Integer; const ATByteDynArray: TByteDynArray);
begin
  FPDF := ATByteDynArray;
  FPDF_Specified := True;
end;

function SonucOkuSonuc.PDF_Specified(Index: Integer): boolean;
begin
  Result := FPDF_Specified;
end;

procedure SonucOkuSonuc.SetRaporlar(Index: Integer; const AArrayOfRapor: ArrayOfRapor);
begin
  FRaporlar := AArrayOfRapor;
  FRaporlar_Specified := True;
end;

function SonucOkuSonuc.Raporlar_Specified(Index: Integer): boolean;
begin
  Result := FRaporlar_Specified;
end;

initialization
  { HastaIslemleriSoap }
  InvRegistry.RegisterInterface(TypeInfo(HastaIslemleriSoap), 'http://tempuri.org/', 'utf-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(HastaIslemleriSoap), 'http://tempuri.org/%operationName%');
  InvRegistry.RegisterInvokeOptions(TypeInfo(HastaIslemleriSoap), ioDocument);
  InvRegistry.RegisterInvokeOptions(TypeInfo(HastaIslemleriSoap), ioSOAP12);
  { HastaIslemleriSoap.HastaKaydet }
  InvRegistry.RegisterMethodInfo(TypeInfo(HastaIslemleriSoap), 'HastaKaydet', '',
                                 '[ReturnName="HastaKaydetResult"]', IS_OPTN);
  { HastaIslemleriSoap.SonucOku }
  InvRegistry.RegisterMethodInfo(TypeInfo(HastaIslemleriSoap), 'SonucOku', '',
                                 '[ReturnName="SonucOkuResult"]', IS_OPTN);
  { HastaIslemleriSoap.SonucOkuNoRef }
  InvRegistry.RegisterMethodInfo(TypeInfo(HastaIslemleriSoap), 'SonucOkuNoRef', '',
                                 '[ReturnName="SonucOkuNoRefResult"]', IS_OPTN);
  { HastaIslemleriSoap.HastaListesi }
  InvRegistry.RegisterMethodInfo(TypeInfo(HastaIslemleriSoap), 'HastaListesi', '',
                                 '[ReturnName="HastaListesiResult"]', IS_OPTN);
  { HastaIslemleriSoap.HastaListesiOrnekNo }
  InvRegistry.RegisterMethodInfo(TypeInfo(HastaIslemleriSoap), 'HastaListesiOrnekNo', '',
                                 '[ReturnName="HastaListesiOrnekNoResult"]', IS_OPTN);
  { HastaIslemleriSoap.HastaListesiDetay }
  InvRegistry.RegisterMethodInfo(TypeInfo(HastaIslemleriSoap), 'HastaListesiDetay', '',
                                 '[ReturnName="HastaListesiDetayResult"]', IS_OPTN);
  RemClassRegistry.RegisterXSInfo(TypeInfo(DosyaTipi), 'http://tempuri.org/', 'DosyaTipi');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfHastaListesiHasta), 'http://tempuri.org/', 'ArrayOfHastaListesiHasta');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfHareketDetay), 'http://tempuri.org/', 'ArrayOfHareketDetay');
  RemClassRegistry.RegisterXSClass(HareketDetay, 'http://tempuri.org/', 'HareketDetay');
  RemClassRegistry.RegisterXSClass(HastaKaydetSonuc, 'http://tempuri.org/', 'HastaKaydetSonuc');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(HastaKaydetSonuc), 'Hareketler', '[ArrayItemName="HareketDetay"]');
  RemClassRegistry.RegisterXSClass(IstekBilgileri, 'http://tempuri.org/', 'IstekBilgileri');
  RemClassRegistry.RegisterXSClass(HastaListesiDetaySonuc, 'http://tempuri.org/', 'HastaListesiDetaySonuc');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(HastaListesiDetaySonuc), 'Hasta', '[ArrayItemName="HastaListesiHasta"]');
  RemClassRegistry.RegisterXSClass(HastaListesiHasta, 'http://tempuri.org/', 'HastaListesiHasta');
  RemClassRegistry.RegisterXSClass(Rapor, 'http://tempuri.org/', 'Rapor');
  RemClassRegistry.RegisterXSClass(HastaListesiGiris, 'http://tempuri.org/', 'HastaListesiGiris');
  RemClassRegistry.RegisterXSClass(HastaBilgileri, 'http://tempuri.org/', 'HastaBilgileri');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfIstekBilgileri), 'http://tempuri.org/', 'ArrayOfIstekBilgileri');
  RemClassRegistry.RegisterXSClass(HastaKaydetGiris, 'http://tempuri.org/', 'HastaKaydetGiris');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(HastaKaydetGiris), 'Istek', '[ArrayItemName="IstekBilgileri"]');
  RemClassRegistry.RegisterXSClass(GelisBilgileri, 'http://tempuri.org/', 'GelisBilgileri');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfRapor), 'http://tempuri.org/', 'ArrayOfRapor');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfString), 'http://tempuri.org/', 'ArrayOfString');
  RemClassRegistry.RegisterXSClass(HastaListesiSonucOrnekNo, 'http://tempuri.org/', 'HastaListesiSonucOrnekNo');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(HastaListesiSonucOrnekNo), 'OrnekNo', '[ArrayItemName="string"]');
  RemClassRegistry.RegisterXSClass(HastaListesiSonuc, 'http://tempuri.org/', 'HastaListesiSonuc');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(HastaListesiSonuc), 'Referans', '[ArrayItemName="string"]');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfDosyaTipi), 'http://tempuri.org/', 'ArrayOfDosyaTipi');
  RemClassRegistry.RegisterXSClass(Test, 'http://tempuri.org/', 'Test');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(Test), 'Dosya', '[ArrayItemName="string"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(Test), 'DosyaTipi', '[ArrayItemName="DosyaTipi"]');
  RemClassRegistry.RegisterXSClass(SonucOkuGiris, 'http://tempuri.org/', 'SonucOkuGiris');
  RemClassRegistry.RegisterXSClass(PatolojiSonuc, 'http://tempuri.org/', 'PatolojiSonuc');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfTest), 'http://tempuri.org/', 'ArrayOfTest');
  RemClassRegistry.RegisterXSClass(SonucOkuSonuc, 'http://tempuri.org/', 'SonucOkuSonuc');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(SonucOkuSonuc), 'Testler', '[ArrayItemName="Test"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(SonucOkuSonuc), 'Raporlar', '[ArrayItemName="Rapor"]');

end.