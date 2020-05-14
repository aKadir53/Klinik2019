// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : http://88.249.11.123/LABservice.asmx?wsdl
//  >Import : http://88.249.11.123/LABservice.asmx?wsdl>0
// Encoding : utf-8
// Version  : 1.0
// (09.10.2019 14:55:35 - - $Rev: 45757 $)
// ************************************************************************ //

unit LiosLabService;

interface

uses InvokeRegistry, SOAPHTTPClient, Types, XSBuiltIns;

const
  IS_OPTN = $0001;
  IS_UNBD = $0002;
  IS_REF  = $0080;


type

  // ************************************************************************ //
  // The following types, referred to in the WSDL document are not being represented
  // in this file. They are either aliases[@] of other types represented or were referred
  // to but never[!] declared in the document. The types from the latter category
  // typically map to predefined/known XML or Embarcadero types; however, they could also 
  // indicate incorrect WSDL documents that failed to declare or import a schema type.
  // ************************************************************************ //
  // !:dateTime        - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:int             - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:string          - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:base64Binary    - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:boolean         - "http://www.w3.org/2001/XMLSchema"[Gbl]

  AktifTest            = class;                 { "http://tempuri.org/"[GblCplx] }
  HastaTestEklemeSonucu = class;                { "http://tempuri.org/"[GblCplx] }
  AktifPanel           = class;                 { "http://tempuri.org/"[GblCplx] }
  HastaSonucPDF        = class;                 { "http://tempuri.org/"[GblCplx] }
  AktifTestParametre   = class;                 { "http://tempuri.org/"[GblCplx] }
  Duyurular            = class;                 { "http://tempuri.org/"[GblCplx] }
  BarkodEkSonuclar     = class;                 { "http://tempuri.org/"[GblCplx] }
  HastaSonucToplu      = class;                 { "http://tempuri.org/"[GblCplx] }
  HastaSonucBilgisi    = class;                 { "http://tempuri.org/"[GblCplx] }
  SonucBilgi           = class;                 { "http://tempuri.org/"[GblCplx] }

  ArrayOfHastaSonucPDF = array of HastaSonucPDF;   { "http://tempuri.org/"[GblCplx] }
  ArrayOfInt = array of Integer;                { "http://tempuri.org/"[GblCplx] }
  ArrayOfHastaTestEklemeSonucu = array of HastaTestEklemeSonucu;   { "http://tempuri.org/"[GblCplx] }
  ArrayOfAktifPanel = array of AktifPanel;      { "http://tempuri.org/"[GblCplx] }
  ArrayOfAktifTest = array of AktifTest;        { "http://tempuri.org/"[GblCplx] }


  // ************************************************************************ //
  // XML       : AktifTest, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  AktifTest = class(TRemotable)
  private
    FTestGrupAdi: string;
    FTestGrupAdi_Specified: boolean;
    FButceKodu: string;
    FButceKodu_Specified: boolean;
    FTestAdi: string;
    FTestAdi_Specified: boolean;
    FKisaAd: string;
    FKisaAd_Specified: boolean;
    FTestID: string;
    FTestID_Specified: boolean;
    FTestOrnekTipi: string;
    FTestOrnekTipi_Specified: boolean;
    FLabKodu: string;
    FLabKodu_Specified: boolean;
    FHata: string;
    FHata_Specified: boolean;
    procedure SetTestGrupAdi(Index: Integer; const Astring: string);
    function  TestGrupAdi_Specified(Index: Integer): boolean;
    procedure SetButceKodu(Index: Integer; const Astring: string);
    function  ButceKodu_Specified(Index: Integer): boolean;
    procedure SetTestAdi(Index: Integer; const Astring: string);
    function  TestAdi_Specified(Index: Integer): boolean;
    procedure SetKisaAd(Index: Integer; const Astring: string);
    function  KisaAd_Specified(Index: Integer): boolean;
    procedure SetTestID(Index: Integer; const Astring: string);
    function  TestID_Specified(Index: Integer): boolean;
    procedure SetTestOrnekTipi(Index: Integer; const Astring: string);
    function  TestOrnekTipi_Specified(Index: Integer): boolean;
    procedure SetLabKodu(Index: Integer; const Astring: string);
    function  LabKodu_Specified(Index: Integer): boolean;
    procedure SetHata(Index: Integer; const Astring: string);
    function  Hata_Specified(Index: Integer): boolean;
  published
    property TestGrupAdi:   string  Index (IS_OPTN) read FTestGrupAdi write SetTestGrupAdi stored TestGrupAdi_Specified;
    property ButceKodu:     string  Index (IS_OPTN) read FButceKodu write SetButceKodu stored ButceKodu_Specified;
    property TestAdi:       string  Index (IS_OPTN) read FTestAdi write SetTestAdi stored TestAdi_Specified;
    property KisaAd:        string  Index (IS_OPTN) read FKisaAd write SetKisaAd stored KisaAd_Specified;
    property TestID:        string  Index (IS_OPTN) read FTestID write SetTestID stored TestID_Specified;
    property TestOrnekTipi: string  Index (IS_OPTN) read FTestOrnekTipi write SetTestOrnekTipi stored TestOrnekTipi_Specified;
    property LabKodu:       string  Index (IS_OPTN) read FLabKodu write SetLabKodu stored LabKodu_Specified;
    property Hata:          string  Index (IS_OPTN) read FHata write SetHata stored Hata_Specified;
  end;



  // ************************************************************************ //
  // XML       : HastaTestEklemeSonucu, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  HastaTestEklemeSonucu = class(TRemotable)
  private
    FSonuc: string;
    FSonuc_Specified: boolean;
    FORNEKNO: string;
    FORNEKNO_Specified: boolean;
    procedure SetSonuc(Index: Integer; const Astring: string);
    function  Sonuc_Specified(Index: Integer): boolean;
    procedure SetORNEKNO(Index: Integer; const Astring: string);
    function  ORNEKNO_Specified(Index: Integer): boolean;
  published
    property Sonuc:   string  Index (IS_OPTN) read FSonuc write SetSonuc stored Sonuc_Specified;
    property ORNEKNO: string  Index (IS_OPTN) read FORNEKNO write SetORNEKNO stored ORNEKNO_Specified;
  end;



  // ************************************************************************ //
  // XML       : AktifPanel, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  AktifPanel = class(TRemotable)
  private
    FTestPanelAdi: string;
    FTestPanelAdi_Specified: boolean;
    FTestGrupAdi: string;
    FTestGrupAdi_Specified: boolean;
    FTestID: string;
    FTestID_Specified: boolean;
    FButceKodu: string;
    FButceKodu_Specified: boolean;
    FTestAdi: string;
    FTestAdi_Specified: boolean;
    FTestOrnekTipi: string;
    FTestOrnekTipi_Specified: boolean;
    FHata: string;
    FHata_Specified: boolean;
    procedure SetTestPanelAdi(Index: Integer; const Astring: string);
    function  TestPanelAdi_Specified(Index: Integer): boolean;
    procedure SetTestGrupAdi(Index: Integer; const Astring: string);
    function  TestGrupAdi_Specified(Index: Integer): boolean;
    procedure SetTestID(Index: Integer; const Astring: string);
    function  TestID_Specified(Index: Integer): boolean;
    procedure SetButceKodu(Index: Integer; const Astring: string);
    function  ButceKodu_Specified(Index: Integer): boolean;
    procedure SetTestAdi(Index: Integer; const Astring: string);
    function  TestAdi_Specified(Index: Integer): boolean;
    procedure SetTestOrnekTipi(Index: Integer; const Astring: string);
    function  TestOrnekTipi_Specified(Index: Integer): boolean;
    procedure SetHata(Index: Integer; const Astring: string);
    function  Hata_Specified(Index: Integer): boolean;
  published
    property TestPanelAdi:  string  Index (IS_OPTN) read FTestPanelAdi write SetTestPanelAdi stored TestPanelAdi_Specified;
    property TestGrupAdi:   string  Index (IS_OPTN) read FTestGrupAdi write SetTestGrupAdi stored TestGrupAdi_Specified;
    property TestID:        string  Index (IS_OPTN) read FTestID write SetTestID stored TestID_Specified;
    property ButceKodu:     string  Index (IS_OPTN) read FButceKodu write SetButceKodu stored ButceKodu_Specified;
    property TestAdi:       string  Index (IS_OPTN) read FTestAdi write SetTestAdi stored TestAdi_Specified;
    property TestOrnekTipi: string  Index (IS_OPTN) read FTestOrnekTipi write SetTestOrnekTipi stored TestOrnekTipi_Specified;
    property Hata:          string  Index (IS_OPTN) read FHata write SetHata stored Hata_Specified;
  end;



  // ************************************************************************ //
  // XML       : HastaSonucPDF, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  HastaSonucPDF = class(TRemotable)
  private
    FSonucPDF: string;
    FSonucPDF_Specified: boolean;
    FEkSonucPDF: string;
    FEkSonucPDF_Specified: boolean;
    FHata: string;
    FHata_Specified: boolean;
    procedure SetSonucPDF(Index: Integer; const Astring: string);
    function  SonucPDF_Specified(Index: Integer): boolean;
    procedure SetEkSonucPDF(Index: Integer; const Astring: string);
    function  EkSonucPDF_Specified(Index: Integer): boolean;
    procedure SetHata(Index: Integer; const Astring: string);
    function  Hata_Specified(Index: Integer): boolean;
  published
    property SonucPDF:   string  Index (IS_OPTN) read FSonucPDF write SetSonucPDF stored SonucPDF_Specified;
    property EkSonucPDF: string  Index (IS_OPTN) read FEkSonucPDF write SetEkSonucPDF stored EkSonucPDF_Specified;
    property Hata:       string  Index (IS_OPTN) read FHata write SetHata stored Hata_Specified;
  end;



  // ************************************************************************ //
  // XML       : AktifTestParametre, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  AktifTestParametre = class(TRemotable)
  private
    FTestID: string;
    FTestID_Specified: boolean;
    FParametreAdi: string;
    FParametreAdi_Specified: boolean;
    FParametreLabKodu: string;
    FParametreLabKodu_Specified: boolean;
    FTestAdi: string;
    FTestAdi_Specified: boolean;
    FHata: string;
    FHata_Specified: boolean;
    procedure SetTestID(Index: Integer; const Astring: string);
    function  TestID_Specified(Index: Integer): boolean;
    procedure SetParametreAdi(Index: Integer; const Astring: string);
    function  ParametreAdi_Specified(Index: Integer): boolean;
    procedure SetParametreLabKodu(Index: Integer; const Astring: string);
    function  ParametreLabKodu_Specified(Index: Integer): boolean;
    procedure SetTestAdi(Index: Integer; const Astring: string);
    function  TestAdi_Specified(Index: Integer): boolean;
    procedure SetHata(Index: Integer; const Astring: string);
    function  Hata_Specified(Index: Integer): boolean;
  published
    property TestID:           string  Index (IS_OPTN) read FTestID write SetTestID stored TestID_Specified;
    property ParametreAdi:     string  Index (IS_OPTN) read FParametreAdi write SetParametreAdi stored ParametreAdi_Specified;
    property ParametreLabKodu: string  Index (IS_OPTN) read FParametreLabKodu write SetParametreLabKodu stored ParametreLabKodu_Specified;
    property TestAdi:          string  Index (IS_OPTN) read FTestAdi write SetTestAdi stored TestAdi_Specified;
    property Hata:             string  Index (IS_OPTN) read FHata write SetHata stored Hata_Specified;
  end;

  ArrayOfAktifTestParametre = array of AktifTestParametre;   { "http://tempuri.org/"[GblCplx] }
  ArrayOfHastaSonucBilgisi = array of HastaSonucBilgisi;   { "http://tempuri.org/"[GblCplx] }


  // ************************************************************************ //
  // XML       : Duyurular, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  Duyurular = class(TRemotable)
  private
    FDuyuruID: string;
    FDuyuruID_Specified: boolean;
    FBaslik: string;
    FBaslik_Specified: boolean;
    FIcerik: string;
    FIcerik_Specified: boolean;
    FHata: string;
    FHata_Specified: boolean;
    procedure SetDuyuruID(Index: Integer; const Astring: string);
    function  DuyuruID_Specified(Index: Integer): boolean;
    procedure SetBaslik(Index: Integer; const Astring: string);
    function  Baslik_Specified(Index: Integer): boolean;
    procedure SetIcerik(Index: Integer; const Astring: string);
    function  Icerik_Specified(Index: Integer): boolean;
    procedure SetHata(Index: Integer; const Astring: string);
    function  Hata_Specified(Index: Integer): boolean;
  published
    property DuyuruID: string  Index (IS_OPTN) read FDuyuruID write SetDuyuruID stored DuyuruID_Specified;
    property Baslik:   string  Index (IS_OPTN) read FBaslik write SetBaslik stored Baslik_Specified;
    property Icerik:   string  Index (IS_OPTN) read FIcerik write SetIcerik stored Icerik_Specified;
    property Hata:     string  Index (IS_OPTN) read FHata write SetHata stored Hata_Specified;
  end;

  ArrayOfDuyurular = array of Duyurular;        { "http://tempuri.org/"[GblCplx] }
  ArrayOfBarkodEkSonuclar = array of BarkodEkSonuclar;   { "http://tempuri.org/"[GblCplx] }


  // ************************************************************************ //
  // XML       : BarkodEkSonuclar, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  BarkodEkSonuclar = class(TRemotable)
  private
    FEkSonucPDF: TByteDynArray;
    FEkSonucPDF_Specified: boolean;
    FHata: string;
    FHata_Specified: boolean;
    procedure SetEkSonucPDF(Index: Integer; const ATByteDynArray: TByteDynArray);
    function  EkSonucPDF_Specified(Index: Integer): boolean;
    procedure SetHata(Index: Integer; const Astring: string);
    function  Hata_Specified(Index: Integer): boolean;
  published
    property EkSonucPDF: TByteDynArray  Index (IS_OPTN) read FEkSonucPDF write SetEkSonucPDF stored EkSonucPDF_Specified;
    property Hata:       string         Index (IS_OPTN) read FHata write SetHata stored Hata_Specified;
  end;



  // ************************************************************************ //
  // XML       : HastaSonucToplu, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  HastaSonucToplu = class(TRemotable)
  private
    FTestSonuclariGenel: ArrayOfHastaSonucBilgisi;
    FTestSonuclariGenel_Specified: boolean;
    FHata: string;
    FHata_Specified: boolean;
    procedure SetTestSonuclariGenel(Index: Integer; const AArrayOfHastaSonucBilgisi: ArrayOfHastaSonucBilgisi);
    function  TestSonuclariGenel_Specified(Index: Integer): boolean;
    procedure SetHata(Index: Integer; const Astring: string);
    function  Hata_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property TestSonuclariGenel: ArrayOfHastaSonucBilgisi  Index (IS_OPTN) read FTestSonuclariGenel write SetTestSonuclariGenel stored TestSonuclariGenel_Specified;
    property Hata:               string                    Index (IS_OPTN) read FHata write SetHata stored Hata_Specified;
  end;

  ArrayOfSonucBilgi = array of SonucBilgi;      { "http://tempuri.org/"[GblCplx] }


  // ************************************************************************ //
  // XML       : HastaSonucBilgisi, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  HastaSonucBilgisi = class(TRemotable)
  private
    FORNEKNO: string;
    FORNEKNO_Specified: boolean;
    FTC_KIMLIKNO: string;
    FTC_KIMLIKNO_Specified: boolean;
    FADSOYAD: string;
    FADSOYAD_Specified: boolean;
    FBABA_ADI: string;
    FBABA_ADI_Specified: boolean;
    FDOGUM_TARIHI: string;
    FDOGUM_TARIHI_Specified: boolean;
    FCINSIYET: string;
    FCINSIYET_Specified: boolean;
    FKLINIK_ADI: string;
    FKLINIK_ADI_Specified: boolean;
    FBIRIM_ADI: string;
    FBIRIM_ADI_Specified: boolean;
    FKAYIT_TARIHI: string;
    FKAYIT_TARIHI_Specified: boolean;
    FISTEM_TARIHI: string;
    FISTEM_TARIHI_Specified: boolean;
    FACIKLAMA: string;
    FACIKLAMA_Specified: boolean;
    FHEKIM_ADI: string;
    FHEKIM_ADI_Specified: boolean;
    FYAS: string;
    FYAS_Specified: boolean;
    FORNEK_TARIHI: string;
    FORNEK_TARIHI_Specified: boolean;
    FENTEGRASYONREFERANSNO: string;
    FENTEGRASYONREFERANSNO_Specified: boolean;
    FHata: string;
    FHata_Specified: boolean;
    FTestSonuclari: ArrayOfSonucBilgi;
    FTestSonuclari_Specified: boolean;
    procedure SetORNEKNO(Index: Integer; const Astring: string);
    function  ORNEKNO_Specified(Index: Integer): boolean;
    procedure SetTC_KIMLIKNO(Index: Integer; const Astring: string);
    function  TC_KIMLIKNO_Specified(Index: Integer): boolean;
    procedure SetADSOYAD(Index: Integer; const Astring: string);
    function  ADSOYAD_Specified(Index: Integer): boolean;
    procedure SetBABA_ADI(Index: Integer; const Astring: string);
    function  BABA_ADI_Specified(Index: Integer): boolean;
    procedure SetDOGUM_TARIHI(Index: Integer; const Astring: string);
    function  DOGUM_TARIHI_Specified(Index: Integer): boolean;
    procedure SetCINSIYET(Index: Integer; const Astring: string);
    function  CINSIYET_Specified(Index: Integer): boolean;
    procedure SetKLINIK_ADI(Index: Integer; const Astring: string);
    function  KLINIK_ADI_Specified(Index: Integer): boolean;
    procedure SetBIRIM_ADI(Index: Integer; const Astring: string);
    function  BIRIM_ADI_Specified(Index: Integer): boolean;
    procedure SetKAYIT_TARIHI(Index: Integer; const Astring: string);
    function  KAYIT_TARIHI_Specified(Index: Integer): boolean;
    procedure SetISTEM_TARIHI(Index: Integer; const Astring: string);
    function  ISTEM_TARIHI_Specified(Index: Integer): boolean;
    procedure SetACIKLAMA(Index: Integer; const Astring: string);
    function  ACIKLAMA_Specified(Index: Integer): boolean;
    procedure SetHEKIM_ADI(Index: Integer; const Astring: string);
    function  HEKIM_ADI_Specified(Index: Integer): boolean;
    procedure SetYAS(Index: Integer; const Astring: string);
    function  YAS_Specified(Index: Integer): boolean;
    procedure SetORNEK_TARIHI(Index: Integer; const Astring: string);
    function  ORNEK_TARIHI_Specified(Index: Integer): boolean;
    procedure SetENTEGRASYONREFERANSNO(Index: Integer; const Astring: string);
    function  ENTEGRASYONREFERANSNO_Specified(Index: Integer): boolean;
    procedure SetHata(Index: Integer; const Astring: string);
    function  Hata_Specified(Index: Integer): boolean;
    procedure SetTestSonuclari(Index: Integer; const AArrayOfSonucBilgi: ArrayOfSonucBilgi);
    function  TestSonuclari_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property ORNEKNO:               string             Index (IS_OPTN) read FORNEKNO write SetORNEKNO stored ORNEKNO_Specified;
    property TC_KIMLIKNO:           string             Index (IS_OPTN) read FTC_KIMLIKNO write SetTC_KIMLIKNO stored TC_KIMLIKNO_Specified;
    property ADSOYAD:               string             Index (IS_OPTN) read FADSOYAD write SetADSOYAD stored ADSOYAD_Specified;
    property BABA_ADI:              string             Index (IS_OPTN) read FBABA_ADI write SetBABA_ADI stored BABA_ADI_Specified;
    property DOGUM_TARIHI:          string             Index (IS_OPTN) read FDOGUM_TARIHI write SetDOGUM_TARIHI stored DOGUM_TARIHI_Specified;
    property CINSIYET:              string             Index (IS_OPTN) read FCINSIYET write SetCINSIYET stored CINSIYET_Specified;
    property KLINIK_ADI:            string             Index (IS_OPTN) read FKLINIK_ADI write SetKLINIK_ADI stored KLINIK_ADI_Specified;
    property BIRIM_ADI:             string             Index (IS_OPTN) read FBIRIM_ADI write SetBIRIM_ADI stored BIRIM_ADI_Specified;
    property KAYIT_TARIHI:          string             Index (IS_OPTN) read FKAYIT_TARIHI write SetKAYIT_TARIHI stored KAYIT_TARIHI_Specified;
    property ISTEM_TARIHI:          string             Index (IS_OPTN) read FISTEM_TARIHI write SetISTEM_TARIHI stored ISTEM_TARIHI_Specified;
    property ACIKLAMA:              string             Index (IS_OPTN) read FACIKLAMA write SetACIKLAMA stored ACIKLAMA_Specified;
    property HEKIM_ADI:             string             Index (IS_OPTN) read FHEKIM_ADI write SetHEKIM_ADI stored HEKIM_ADI_Specified;
    property YAS:                   string             Index (IS_OPTN) read FYAS write SetYAS stored YAS_Specified;
    property ORNEK_TARIHI:          string             Index (IS_OPTN) read FORNEK_TARIHI write SetORNEK_TARIHI stored ORNEK_TARIHI_Specified;
    property ENTEGRASYONREFERANSNO: string             Index (IS_OPTN) read FENTEGRASYONREFERANSNO write SetENTEGRASYONREFERANSNO stored ENTEGRASYONREFERANSNO_Specified;
    property Hata:                  string             Index (IS_OPTN) read FHata write SetHata stored Hata_Specified;
    property TestSonuclari:         ArrayOfSonucBilgi  Index (IS_OPTN) read FTestSonuclari write SetTestSonuclari stored TestSonuclari_Specified;
  end;

  ArrayOfHastaSonucToplu = array of HastaSonucToplu;   { "http://tempuri.org/"[GblCplx] }


  // ************************************************************************ //
  // XML       : SonucBilgi, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  SonucBilgi = class(TRemotable)
  private
    FTestGrupAdi: string;
    FTestGrupAdi_Specified: boolean;
    FTestAdi: string;
    FTestAdi_Specified: boolean;
    FTestParametreAdi: string;
    FTestParametreAdi_Specified: boolean;
    FTestID: string;
    FTestID_Specified: boolean;
    FOrnekTipi: string;
    FOrnekTipi_Specified: boolean;
    FSonuc: string;
    FSonuc_Specified: boolean;
    FSonucBirim: string;
    FSonucBirim_Specified: boolean;
    FSonucReferans: string;
    FSonucReferans_Specified: boolean;
    FSonucDurum: string;
    FSonucDurum_Specified: boolean;
    FSonucOnayTarihi: string;
    FSonucOnayTarihi_Specified: boolean;
    FSonucOnaylayan: string;
    FSonucOnaylayan_Specified: boolean;
    FSonucYorum: string;
    FSonucYorum_Specified: boolean;
    FSonucAciklama: string;
    FSonucAciklama_Specified: boolean;
    FTestRedDurumu: Boolean;
    FTestRedTarihi: string;
    FTestRedTarihi_Specified: boolean;
    FTestGenelAciklama: string;
    FTestGenelAciklama_Specified: boolean;
    FLoincKodu: string;
    FLoincKodu_Specified: boolean;
    FSutKodu: string;
    FSutKodu_Specified: boolean;
    FTestLabKodu: string;
    FTestLabKodu_Specified: boolean;
    FTestAltParametreLabKodu: string;
    FTestAltParametreLabKodu_Specified: boolean;
    procedure SetTestGrupAdi(Index: Integer; const Astring: string);
    function  TestGrupAdi_Specified(Index: Integer): boolean;
    procedure SetTestAdi(Index: Integer; const Astring: string);
    function  TestAdi_Specified(Index: Integer): boolean;
    procedure SetTestParametreAdi(Index: Integer; const Astring: string);
    function  TestParametreAdi_Specified(Index: Integer): boolean;
    procedure SetTestID(Index: Integer; const Astring: string);
    function  TestID_Specified(Index: Integer): boolean;
    procedure SetOrnekTipi(Index: Integer; const Astring: string);
    function  OrnekTipi_Specified(Index: Integer): boolean;
    procedure SetSonuc(Index: Integer; const Astring: string);
    function  Sonuc_Specified(Index: Integer): boolean;
    procedure SetSonucBirim(Index: Integer; const Astring: string);
    function  SonucBirim_Specified(Index: Integer): boolean;
    procedure SetSonucReferans(Index: Integer; const Astring: string);
    function  SonucReferans_Specified(Index: Integer): boolean;
    procedure SetSonucDurum(Index: Integer; const Astring: string);
    function  SonucDurum_Specified(Index: Integer): boolean;
    procedure SetSonucOnayTarihi(Index: Integer; const Astring: string);
    function  SonucOnayTarihi_Specified(Index: Integer): boolean;
    procedure SetSonucOnaylayan(Index: Integer; const Astring: string);
    function  SonucOnaylayan_Specified(Index: Integer): boolean;
    procedure SetSonucYorum(Index: Integer; const Astring: string);
    function  SonucYorum_Specified(Index: Integer): boolean;
    procedure SetSonucAciklama(Index: Integer; const Astring: string);
    function  SonucAciklama_Specified(Index: Integer): boolean;
    procedure SetTestRedTarihi(Index: Integer; const Astring: string);
    function  TestRedTarihi_Specified(Index: Integer): boolean;
    procedure SetTestGenelAciklama(Index: Integer; const Astring: string);
    function  TestGenelAciklama_Specified(Index: Integer): boolean;
    procedure SetLoincKodu(Index: Integer; const Astring: string);
    function  LoincKodu_Specified(Index: Integer): boolean;
    procedure SetSutKodu(Index: Integer; const Astring: string);
    function  SutKodu_Specified(Index: Integer): boolean;
    procedure SetTestLabKodu(Index: Integer; const Astring: string);
    function  TestLabKodu_Specified(Index: Integer): boolean;
    procedure SetTestAltParametreLabKodu(Index: Integer; const Astring: string);
    function  TestAltParametreLabKodu_Specified(Index: Integer): boolean;
  published
    property TestGrupAdi:             string   Index (IS_OPTN) read FTestGrupAdi write SetTestGrupAdi stored TestGrupAdi_Specified;
    property TestAdi:                 string   Index (IS_OPTN) read FTestAdi write SetTestAdi stored TestAdi_Specified;
    property TestParametreAdi:        string   Index (IS_OPTN) read FTestParametreAdi write SetTestParametreAdi stored TestParametreAdi_Specified;
    property TestID:                  string   Index (IS_OPTN) read FTestID write SetTestID stored TestID_Specified;
    property OrnekTipi:               string   Index (IS_OPTN) read FOrnekTipi write SetOrnekTipi stored OrnekTipi_Specified;
    property Sonuc:                   string   Index (IS_OPTN) read FSonuc write SetSonuc stored Sonuc_Specified;
    property SonucBirim:              string   Index (IS_OPTN) read FSonucBirim write SetSonucBirim stored SonucBirim_Specified;
    property SonucReferans:           string   Index (IS_OPTN) read FSonucReferans write SetSonucReferans stored SonucReferans_Specified;
    property SonucDurum:              string   Index (IS_OPTN) read FSonucDurum write SetSonucDurum stored SonucDurum_Specified;
    property SonucOnayTarihi:         string   Index (IS_OPTN) read FSonucOnayTarihi write SetSonucOnayTarihi stored SonucOnayTarihi_Specified;
    property SonucOnaylayan:          string   Index (IS_OPTN) read FSonucOnaylayan write SetSonucOnaylayan stored SonucOnaylayan_Specified;
    property SonucYorum:              string   Index (IS_OPTN) read FSonucYorum write SetSonucYorum stored SonucYorum_Specified;
    property SonucAciklama:           string   Index (IS_OPTN) read FSonucAciklama write SetSonucAciklama stored SonucAciklama_Specified;
    property TestRedDurumu:           Boolean  read FTestRedDurumu write FTestRedDurumu;
    property TestRedTarihi:           string   Index (IS_OPTN) read FTestRedTarihi write SetTestRedTarihi stored TestRedTarihi_Specified;
    property TestGenelAciklama:       string   Index (IS_OPTN) read FTestGenelAciklama write SetTestGenelAciklama stored TestGenelAciklama_Specified;
    property LoincKodu:               string   Index (IS_OPTN) read FLoincKodu write SetLoincKodu stored LoincKodu_Specified;
    property SutKodu:                 string   Index (IS_OPTN) read FSutKodu write SetSutKodu stored SutKodu_Specified;
    property TestLabKodu:             string   Index (IS_OPTN) read FTestLabKodu write SetTestLabKodu stored TestLabKodu_Specified;
    property TestAltParametreLabKodu: string   Index (IS_OPTN) read FTestAltParametreLabKodu write SetTestAltParametreLabKodu stored TestAltParametreLabKodu_Specified;
  end;


  // ************************************************************************ //
  // Namespace : http://tempuri.org/
  // soapAction: http://tempuri.org/%operationName%
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : document
  // use       : literal
  // binding   : LABserviceSoap12
  // service   : LABservice
  // port      : LABserviceSoap12
  // URL       : http://88.249.11.123/LABservice.asmx
  // ************************************************************************ //
  LABserviceSoap = interface(IInvokable)
  ['{B5EC873F-DF7D-6385-AA72-0FC1089554F3}']
    function  AktifTestler(const USER: string; const PASS: string): ArrayOfAktifTest; stdcall;
    function  AktifTestlerParametreli(const Kadi: string; const Ksifre: string): ArrayOfAktifTestParametre; stdcall;
    function  AktifPaneller(const USER: string; const PASS: string): ArrayOfAktifPanel; stdcall;
    function  TestEkle(const USER: string; const PASS: string; const ORNEKNO: string; const TC_KIMLIKNO: string; const AD: string; const SOYAD: string; 
                       const CINSIYET: string; const DOGUM_TARIHI: TXSDateTime; const HastaBoyBilgisi: string; const HastaAgirlikBilgisi: string; const EntegrasyonReferansNo: string; 
                       const Test: ArrayOfInt): ArrayOfHastaTestEklemeSonucu; stdcall;
    function  TestGuncelle(const ORNEKNO: string; const USER: string; const PASS: string; const Test: ArrayOfInt): string; stdcall;
    function  BarkodSonucBilgisi(const ORNEKNO: string; const USER: string; const PASS: string): ArrayOfHastaSonucBilgisi; stdcall;
    function  DiyalizSonucDurum(const USER: string; const PASS: string; const ORNEKNO: string; const BASTAR: string; const BITTAR: string; const TC_KIMLIKNO: string
                                ): ArrayOfHastaSonucToplu; stdcall;
    function  DuyurulariGetir(const USER: string; const PASS: string): ArrayOfDuyurular; stdcall;
    function  BarkodEkSonuc(const USER: string; const PASS: string; const ORNEKNO: string): ArrayOfBarkodEkSonuclar; stdcall;
    function  BarkodSonucBilgisiPDF(const ORNEKNO: string; const USER: string; const PASS: string): ArrayOfHastaSonucPDF; stdcall;
  end;

function GetLABserviceSoap(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): LABserviceSoap;


implementation
  uses SysUtils;

function GetLABserviceSoap(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): LABserviceSoap;
const
  defWSDL = 'http://88.249.11.123/LABservice.asmx?wsdl';
  defURL  = 'http://88.249.11.123/LABservice.asmx';
  defSvc  = 'LABservice';
  defPrt  = 'LABserviceSoap12';
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
    Result := (RIO as LABserviceSoap);
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


procedure AktifTest.SetTestGrupAdi(Index: Integer; const Astring: string);
begin
  FTestGrupAdi := Astring;
  FTestGrupAdi_Specified := True;
end;

function AktifTest.TestGrupAdi_Specified(Index: Integer): boolean;
begin
  Result := FTestGrupAdi_Specified;
end;

procedure AktifTest.SetButceKodu(Index: Integer; const Astring: string);
begin
  FButceKodu := Astring;
  FButceKodu_Specified := True;
end;

function AktifTest.ButceKodu_Specified(Index: Integer): boolean;
begin
  Result := FButceKodu_Specified;
end;

procedure AktifTest.SetTestAdi(Index: Integer; const Astring: string);
begin
  FTestAdi := Astring;
  FTestAdi_Specified := True;
end;

function AktifTest.TestAdi_Specified(Index: Integer): boolean;
begin
  Result := FTestAdi_Specified;
end;

procedure AktifTest.SetKisaAd(Index: Integer; const Astring: string);
begin
  FKisaAd := Astring;
  FKisaAd_Specified := True;
end;

function AktifTest.KisaAd_Specified(Index: Integer): boolean;
begin
  Result := FKisaAd_Specified;
end;

procedure AktifTest.SetTestID(Index: Integer; const Astring: string);
begin
  FTestID := Astring;
  FTestID_Specified := True;
end;

function AktifTest.TestID_Specified(Index: Integer): boolean;
begin
  Result := FTestID_Specified;
end;

procedure AktifTest.SetTestOrnekTipi(Index: Integer; const Astring: string);
begin
  FTestOrnekTipi := Astring;
  FTestOrnekTipi_Specified := True;
end;

function AktifTest.TestOrnekTipi_Specified(Index: Integer): boolean;
begin
  Result := FTestOrnekTipi_Specified;
end;

procedure AktifTest.SetLabKodu(Index: Integer; const Astring: string);
begin
  FLabKodu := Astring;
  FLabKodu_Specified := True;
end;

function AktifTest.LabKodu_Specified(Index: Integer): boolean;
begin
  Result := FLabKodu_Specified;
end;

procedure AktifTest.SetHata(Index: Integer; const Astring: string);
begin
  FHata := Astring;
  FHata_Specified := True;
end;

function AktifTest.Hata_Specified(Index: Integer): boolean;
begin
  Result := FHata_Specified;
end;

procedure HastaTestEklemeSonucu.SetSonuc(Index: Integer; const Astring: string);
begin
  FSonuc := Astring;
  FSonuc_Specified := True;
end;

function HastaTestEklemeSonucu.Sonuc_Specified(Index: Integer): boolean;
begin
  Result := FSonuc_Specified;
end;

procedure HastaTestEklemeSonucu.SetORNEKNO(Index: Integer; const Astring: string);
begin
  FORNEKNO := Astring;
  FORNEKNO_Specified := True;
end;

function HastaTestEklemeSonucu.ORNEKNO_Specified(Index: Integer): boolean;
begin
  Result := FORNEKNO_Specified;
end;

procedure AktifPanel.SetTestPanelAdi(Index: Integer; const Astring: string);
begin
  FTestPanelAdi := Astring;
  FTestPanelAdi_Specified := True;
end;

function AktifPanel.TestPanelAdi_Specified(Index: Integer): boolean;
begin
  Result := FTestPanelAdi_Specified;
end;

procedure AktifPanel.SetTestGrupAdi(Index: Integer; const Astring: string);
begin
  FTestGrupAdi := Astring;
  FTestGrupAdi_Specified := True;
end;

function AktifPanel.TestGrupAdi_Specified(Index: Integer): boolean;
begin
  Result := FTestGrupAdi_Specified;
end;

procedure AktifPanel.SetTestID(Index: Integer; const Astring: string);
begin
  FTestID := Astring;
  FTestID_Specified := True;
end;

function AktifPanel.TestID_Specified(Index: Integer): boolean;
begin
  Result := FTestID_Specified;
end;

procedure AktifPanel.SetButceKodu(Index: Integer; const Astring: string);
begin
  FButceKodu := Astring;
  FButceKodu_Specified := True;
end;

function AktifPanel.ButceKodu_Specified(Index: Integer): boolean;
begin
  Result := FButceKodu_Specified;
end;

procedure AktifPanel.SetTestAdi(Index: Integer; const Astring: string);
begin
  FTestAdi := Astring;
  FTestAdi_Specified := True;
end;

function AktifPanel.TestAdi_Specified(Index: Integer): boolean;
begin
  Result := FTestAdi_Specified;
end;

procedure AktifPanel.SetTestOrnekTipi(Index: Integer; const Astring: string);
begin
  FTestOrnekTipi := Astring;
  FTestOrnekTipi_Specified := True;
end;

function AktifPanel.TestOrnekTipi_Specified(Index: Integer): boolean;
begin
  Result := FTestOrnekTipi_Specified;
end;

procedure AktifPanel.SetHata(Index: Integer; const Astring: string);
begin
  FHata := Astring;
  FHata_Specified := True;
end;

function AktifPanel.Hata_Specified(Index: Integer): boolean;
begin
  Result := FHata_Specified;
end;

procedure HastaSonucPDF.SetSonucPDF(Index: Integer; const Astring: string);
begin
  FSonucPDF := Astring;
  FSonucPDF_Specified := True;
end;

function HastaSonucPDF.SonucPDF_Specified(Index: Integer): boolean;
begin
  Result := FSonucPDF_Specified;
end;

procedure HastaSonucPDF.SetEkSonucPDF(Index: Integer; const Astring: string);
begin
  FEkSonucPDF := Astring;
  FEkSonucPDF_Specified := True;
end;

function HastaSonucPDF.EkSonucPDF_Specified(Index: Integer): boolean;
begin
  Result := FEkSonucPDF_Specified;
end;

procedure HastaSonucPDF.SetHata(Index: Integer; const Astring: string);
begin
  FHata := Astring;
  FHata_Specified := True;
end;

function HastaSonucPDF.Hata_Specified(Index: Integer): boolean;
begin
  Result := FHata_Specified;
end;

procedure AktifTestParametre.SetTestID(Index: Integer; const Astring: string);
begin
  FTestID := Astring;
  FTestID_Specified := True;
end;

function AktifTestParametre.TestID_Specified(Index: Integer): boolean;
begin
  Result := FTestID_Specified;
end;

procedure AktifTestParametre.SetParametreAdi(Index: Integer; const Astring: string);
begin
  FParametreAdi := Astring;
  FParametreAdi_Specified := True;
end;

function AktifTestParametre.ParametreAdi_Specified(Index: Integer): boolean;
begin
  Result := FParametreAdi_Specified;
end;

procedure AktifTestParametre.SetParametreLabKodu(Index: Integer; const Astring: string);
begin
  FParametreLabKodu := Astring;
  FParametreLabKodu_Specified := True;
end;

function AktifTestParametre.ParametreLabKodu_Specified(Index: Integer): boolean;
begin
  Result := FParametreLabKodu_Specified;
end;

procedure AktifTestParametre.SetTestAdi(Index: Integer; const Astring: string);
begin
  FTestAdi := Astring;
  FTestAdi_Specified := True;
end;

function AktifTestParametre.TestAdi_Specified(Index: Integer): boolean;
begin
  Result := FTestAdi_Specified;
end;

procedure AktifTestParametre.SetHata(Index: Integer; const Astring: string);
begin
  FHata := Astring;
  FHata_Specified := True;
end;

function AktifTestParametre.Hata_Specified(Index: Integer): boolean;
begin
  Result := FHata_Specified;
end;

procedure Duyurular.SetDuyuruID(Index: Integer; const Astring: string);
begin
  FDuyuruID := Astring;
  FDuyuruID_Specified := True;
end;

function Duyurular.DuyuruID_Specified(Index: Integer): boolean;
begin
  Result := FDuyuruID_Specified;
end;

procedure Duyurular.SetBaslik(Index: Integer; const Astring: string);
begin
  FBaslik := Astring;
  FBaslik_Specified := True;
end;

function Duyurular.Baslik_Specified(Index: Integer): boolean;
begin
  Result := FBaslik_Specified;
end;

procedure Duyurular.SetIcerik(Index: Integer; const Astring: string);
begin
  FIcerik := Astring;
  FIcerik_Specified := True;
end;

function Duyurular.Icerik_Specified(Index: Integer): boolean;
begin
  Result := FIcerik_Specified;
end;

procedure Duyurular.SetHata(Index: Integer; const Astring: string);
begin
  FHata := Astring;
  FHata_Specified := True;
end;

function Duyurular.Hata_Specified(Index: Integer): boolean;
begin
  Result := FHata_Specified;
end;

procedure BarkodEkSonuclar.SetEkSonucPDF(Index: Integer; const ATByteDynArray: TByteDynArray);
begin
  FEkSonucPDF := ATByteDynArray;
  FEkSonucPDF_Specified := True;
end;

function BarkodEkSonuclar.EkSonucPDF_Specified(Index: Integer): boolean;
begin
  Result := FEkSonucPDF_Specified;
end;

procedure BarkodEkSonuclar.SetHata(Index: Integer; const Astring: string);
begin
  FHata := Astring;
  FHata_Specified := True;
end;

function BarkodEkSonuclar.Hata_Specified(Index: Integer): boolean;
begin
  Result := FHata_Specified;
end;

destructor HastaSonucToplu.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FTestSonuclariGenel)-1 do
    SysUtils.FreeAndNil(FTestSonuclariGenel[I]);
  System.SetLength(FTestSonuclariGenel, 0);
  inherited Destroy;
end;

procedure HastaSonucToplu.SetTestSonuclariGenel(Index: Integer; const AArrayOfHastaSonucBilgisi: ArrayOfHastaSonucBilgisi);
begin
  FTestSonuclariGenel := AArrayOfHastaSonucBilgisi;
  FTestSonuclariGenel_Specified := True;
end;

function HastaSonucToplu.TestSonuclariGenel_Specified(Index: Integer): boolean;
begin
  Result := FTestSonuclariGenel_Specified;
end;

procedure HastaSonucToplu.SetHata(Index: Integer; const Astring: string);
begin
  FHata := Astring;
  FHata_Specified := True;
end;

function HastaSonucToplu.Hata_Specified(Index: Integer): boolean;
begin
  Result := FHata_Specified;
end;

destructor HastaSonucBilgisi.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FTestSonuclari)-1 do
    SysUtils.FreeAndNil(FTestSonuclari[I]);
  System.SetLength(FTestSonuclari, 0);
  inherited Destroy;
end;

procedure HastaSonucBilgisi.SetORNEKNO(Index: Integer; const Astring: string);
begin
  FORNEKNO := Astring;
  FORNEKNO_Specified := True;
end;

function HastaSonucBilgisi.ORNEKNO_Specified(Index: Integer): boolean;
begin
  Result := FORNEKNO_Specified;
end;

procedure HastaSonucBilgisi.SetTC_KIMLIKNO(Index: Integer; const Astring: string);
begin
  FTC_KIMLIKNO := Astring;
  FTC_KIMLIKNO_Specified := True;
end;

function HastaSonucBilgisi.TC_KIMLIKNO_Specified(Index: Integer): boolean;
begin
  Result := FTC_KIMLIKNO_Specified;
end;

procedure HastaSonucBilgisi.SetADSOYAD(Index: Integer; const Astring: string);
begin
  FADSOYAD := Astring;
  FADSOYAD_Specified := True;
end;

function HastaSonucBilgisi.ADSOYAD_Specified(Index: Integer): boolean;
begin
  Result := FADSOYAD_Specified;
end;

procedure HastaSonucBilgisi.SetBABA_ADI(Index: Integer; const Astring: string);
begin
  FBABA_ADI := Astring;
  FBABA_ADI_Specified := True;
end;

function HastaSonucBilgisi.BABA_ADI_Specified(Index: Integer): boolean;
begin
  Result := FBABA_ADI_Specified;
end;

procedure HastaSonucBilgisi.SetDOGUM_TARIHI(Index: Integer; const Astring: string);
begin
  FDOGUM_TARIHI := Astring;
  FDOGUM_TARIHI_Specified := True;
end;

function HastaSonucBilgisi.DOGUM_TARIHI_Specified(Index: Integer): boolean;
begin
  Result := FDOGUM_TARIHI_Specified;
end;

procedure HastaSonucBilgisi.SetCINSIYET(Index: Integer; const Astring: string);
begin
  FCINSIYET := Astring;
  FCINSIYET_Specified := True;
end;

function HastaSonucBilgisi.CINSIYET_Specified(Index: Integer): boolean;
begin
  Result := FCINSIYET_Specified;
end;

procedure HastaSonucBilgisi.SetKLINIK_ADI(Index: Integer; const Astring: string);
begin
  FKLINIK_ADI := Astring;
  FKLINIK_ADI_Specified := True;
end;

function HastaSonucBilgisi.KLINIK_ADI_Specified(Index: Integer): boolean;
begin
  Result := FKLINIK_ADI_Specified;
end;

procedure HastaSonucBilgisi.SetBIRIM_ADI(Index: Integer; const Astring: string);
begin
  FBIRIM_ADI := Astring;
  FBIRIM_ADI_Specified := True;
end;

function HastaSonucBilgisi.BIRIM_ADI_Specified(Index: Integer): boolean;
begin
  Result := FBIRIM_ADI_Specified;
end;

procedure HastaSonucBilgisi.SetKAYIT_TARIHI(Index: Integer; const Astring: string);
begin
  FKAYIT_TARIHI := Astring;
  FKAYIT_TARIHI_Specified := True;
end;

function HastaSonucBilgisi.KAYIT_TARIHI_Specified(Index: Integer): boolean;
begin
  Result := FKAYIT_TARIHI_Specified;
end;

procedure HastaSonucBilgisi.SetISTEM_TARIHI(Index: Integer; const Astring: string);
begin
  FISTEM_TARIHI := Astring;
  FISTEM_TARIHI_Specified := True;
end;

function HastaSonucBilgisi.ISTEM_TARIHI_Specified(Index: Integer): boolean;
begin
  Result := FISTEM_TARIHI_Specified;
end;

procedure HastaSonucBilgisi.SetACIKLAMA(Index: Integer; const Astring: string);
begin
  FACIKLAMA := Astring;
  FACIKLAMA_Specified := True;
end;

function HastaSonucBilgisi.ACIKLAMA_Specified(Index: Integer): boolean;
begin
  Result := FACIKLAMA_Specified;
end;

procedure HastaSonucBilgisi.SetHEKIM_ADI(Index: Integer; const Astring: string);
begin
  FHEKIM_ADI := Astring;
  FHEKIM_ADI_Specified := True;
end;

function HastaSonucBilgisi.HEKIM_ADI_Specified(Index: Integer): boolean;
begin
  Result := FHEKIM_ADI_Specified;
end;

procedure HastaSonucBilgisi.SetYAS(Index: Integer; const Astring: string);
begin
  FYAS := Astring;
  FYAS_Specified := True;
end;

function HastaSonucBilgisi.YAS_Specified(Index: Integer): boolean;
begin
  Result := FYAS_Specified;
end;

procedure HastaSonucBilgisi.SetORNEK_TARIHI(Index: Integer; const Astring: string);
begin
  FORNEK_TARIHI := Astring;
  FORNEK_TARIHI_Specified := True;
end;

function HastaSonucBilgisi.ORNEK_TARIHI_Specified(Index: Integer): boolean;
begin
  Result := FORNEK_TARIHI_Specified;
end;

procedure HastaSonucBilgisi.SetENTEGRASYONREFERANSNO(Index: Integer; const Astring: string);
begin
  FENTEGRASYONREFERANSNO := Astring;
  FENTEGRASYONREFERANSNO_Specified := True;
end;

function HastaSonucBilgisi.ENTEGRASYONREFERANSNO_Specified(Index: Integer): boolean;
begin
  Result := FENTEGRASYONREFERANSNO_Specified;
end;

procedure HastaSonucBilgisi.SetHata(Index: Integer; const Astring: string);
begin
  FHata := Astring;
  FHata_Specified := True;
end;

function HastaSonucBilgisi.Hata_Specified(Index: Integer): boolean;
begin
  Result := FHata_Specified;
end;

procedure HastaSonucBilgisi.SetTestSonuclari(Index: Integer; const AArrayOfSonucBilgi: ArrayOfSonucBilgi);
begin
  FTestSonuclari := AArrayOfSonucBilgi;
  FTestSonuclari_Specified := True;
end;

function HastaSonucBilgisi.TestSonuclari_Specified(Index: Integer): boolean;
begin
  Result := FTestSonuclari_Specified;
end;

procedure SonucBilgi.SetTestGrupAdi(Index: Integer; const Astring: string);
begin
  FTestGrupAdi := Astring;
  FTestGrupAdi_Specified := True;
end;

function SonucBilgi.TestGrupAdi_Specified(Index: Integer): boolean;
begin
  Result := FTestGrupAdi_Specified;
end;

procedure SonucBilgi.SetTestAdi(Index: Integer; const Astring: string);
begin
  FTestAdi := Astring;
  FTestAdi_Specified := True;
end;

function SonucBilgi.TestAdi_Specified(Index: Integer): boolean;
begin
  Result := FTestAdi_Specified;
end;

procedure SonucBilgi.SetTestParametreAdi(Index: Integer; const Astring: string);
begin
  FTestParametreAdi := Astring;
  FTestParametreAdi_Specified := True;
end;

function SonucBilgi.TestParametreAdi_Specified(Index: Integer): boolean;
begin
  Result := FTestParametreAdi_Specified;
end;

procedure SonucBilgi.SetTestID(Index: Integer; const Astring: string);
begin
  FTestID := Astring;
  FTestID_Specified := True;
end;

function SonucBilgi.TestID_Specified(Index: Integer): boolean;
begin
  Result := FTestID_Specified;
end;

procedure SonucBilgi.SetOrnekTipi(Index: Integer; const Astring: string);
begin
  FOrnekTipi := Astring;
  FOrnekTipi_Specified := True;
end;

function SonucBilgi.OrnekTipi_Specified(Index: Integer): boolean;
begin
  Result := FOrnekTipi_Specified;
end;

procedure SonucBilgi.SetSonuc(Index: Integer; const Astring: string);
begin
  FSonuc := Astring;
  FSonuc_Specified := True;
end;

function SonucBilgi.Sonuc_Specified(Index: Integer): boolean;
begin
  Result := FSonuc_Specified;
end;

procedure SonucBilgi.SetSonucBirim(Index: Integer; const Astring: string);
begin
  FSonucBirim := Astring;
  FSonucBirim_Specified := True;
end;

function SonucBilgi.SonucBirim_Specified(Index: Integer): boolean;
begin
  Result := FSonucBirim_Specified;
end;

procedure SonucBilgi.SetSonucReferans(Index: Integer; const Astring: string);
begin
  FSonucReferans := Astring;
  FSonucReferans_Specified := True;
end;

function SonucBilgi.SonucReferans_Specified(Index: Integer): boolean;
begin
  Result := FSonucReferans_Specified;
end;

procedure SonucBilgi.SetSonucDurum(Index: Integer; const Astring: string);
begin
  FSonucDurum := Astring;
  FSonucDurum_Specified := True;
end;

function SonucBilgi.SonucDurum_Specified(Index: Integer): boolean;
begin
  Result := FSonucDurum_Specified;
end;

procedure SonucBilgi.SetSonucOnayTarihi(Index: Integer; const Astring: string);
begin
  FSonucOnayTarihi := Astring;
  FSonucOnayTarihi_Specified := True;
end;

function SonucBilgi.SonucOnayTarihi_Specified(Index: Integer): boolean;
begin
  Result := FSonucOnayTarihi_Specified;
end;

procedure SonucBilgi.SetSonucOnaylayan(Index: Integer; const Astring: string);
begin
  FSonucOnaylayan := Astring;
  FSonucOnaylayan_Specified := True;
end;

function SonucBilgi.SonucOnaylayan_Specified(Index: Integer): boolean;
begin
  Result := FSonucOnaylayan_Specified;
end;

procedure SonucBilgi.SetSonucYorum(Index: Integer; const Astring: string);
begin
  FSonucYorum := Astring;
  FSonucYorum_Specified := True;
end;

function SonucBilgi.SonucYorum_Specified(Index: Integer): boolean;
begin
  Result := FSonucYorum_Specified;
end;

procedure SonucBilgi.SetSonucAciklama(Index: Integer; const Astring: string);
begin
  FSonucAciklama := Astring;
  FSonucAciklama_Specified := True;
end;

function SonucBilgi.SonucAciklama_Specified(Index: Integer): boolean;
begin
  Result := FSonucAciklama_Specified;
end;

procedure SonucBilgi.SetTestRedTarihi(Index: Integer; const Astring: string);
begin
  FTestRedTarihi := Astring;
  FTestRedTarihi_Specified := True;
end;

function SonucBilgi.TestRedTarihi_Specified(Index: Integer): boolean;
begin
  Result := FTestRedTarihi_Specified;
end;

procedure SonucBilgi.SetTestGenelAciklama(Index: Integer; const Astring: string);
begin
  FTestGenelAciklama := Astring;
  FTestGenelAciklama_Specified := True;
end;

function SonucBilgi.TestGenelAciklama_Specified(Index: Integer): boolean;
begin
  Result := FTestGenelAciklama_Specified;
end;

procedure SonucBilgi.SetLoincKodu(Index: Integer; const Astring: string);
begin
  FLoincKodu := Astring;
  FLoincKodu_Specified := True;
end;

function SonucBilgi.LoincKodu_Specified(Index: Integer): boolean;
begin
  Result := FLoincKodu_Specified;
end;

procedure SonucBilgi.SetSutKodu(Index: Integer; const Astring: string);
begin
  FSutKodu := Astring;
  FSutKodu_Specified := True;
end;

function SonucBilgi.SutKodu_Specified(Index: Integer): boolean;
begin
  Result := FSutKodu_Specified;
end;

procedure SonucBilgi.SetTestLabKodu(Index: Integer; const Astring: string);
begin
  FTestLabKodu := Astring;
  FTestLabKodu_Specified := True;
end;

function SonucBilgi.TestLabKodu_Specified(Index: Integer): boolean;
begin
  Result := FTestLabKodu_Specified;
end;

procedure SonucBilgi.SetTestAltParametreLabKodu(Index: Integer; const Astring: string);
begin
  FTestAltParametreLabKodu := Astring;
  FTestAltParametreLabKodu_Specified := True;
end;

function SonucBilgi.TestAltParametreLabKodu_Specified(Index: Integer): boolean;
begin
  Result := FTestAltParametreLabKodu_Specified;
end;

initialization
  { LABserviceSoap }
  InvRegistry.RegisterInterface(TypeInfo(LABserviceSoap), 'http://tempuri.org/', 'utf-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(LABserviceSoap), 'http://tempuri.org/%operationName%');
  InvRegistry.RegisterInvokeOptions(TypeInfo(LABserviceSoap), ioDocument);
  InvRegistry.RegisterInvokeOptions(TypeInfo(LABserviceSoap), ioSOAP12);
  { LABserviceSoap.AktifTestler }
  InvRegistry.RegisterMethodInfo(TypeInfo(LABserviceSoap), 'AktifTestler', '',
                                 '[ReturnName="AktifTestlerResult"]', IS_OPTN);
  InvRegistry.RegisterParamInfo(TypeInfo(LABserviceSoap), 'AktifTestler', 'AktifTestlerResult', '',
                                '[ArrayItemName="AktifTest"]');
  { LABserviceSoap.AktifTestlerParametreli }
  InvRegistry.RegisterMethodInfo(TypeInfo(LABserviceSoap), 'AktifTestlerParametreli', '',
                                 '[ReturnName="AktifTestlerParametreliResult"]', IS_OPTN);
  InvRegistry.RegisterParamInfo(TypeInfo(LABserviceSoap), 'AktifTestlerParametreli', 'AktifTestlerParametreliResult', '',
                                '[ArrayItemName="AktifTestParametre"]');
  { LABserviceSoap.AktifPaneller }
  InvRegistry.RegisterMethodInfo(TypeInfo(LABserviceSoap), 'AktifPaneller', '',
                                 '[ReturnName="AktifPanellerResult"]', IS_OPTN);
  InvRegistry.RegisterParamInfo(TypeInfo(LABserviceSoap), 'AktifPaneller', 'AktifPanellerResult', '',
                                '[ArrayItemName="AktifPanel"]');
  { LABserviceSoap.TestEkle }
  InvRegistry.RegisterMethodInfo(TypeInfo(LABserviceSoap), 'TestEkle', '',
                                 '[ReturnName="TestEkleResult"]', IS_OPTN);
  InvRegistry.RegisterParamInfo(TypeInfo(LABserviceSoap), 'TestEkle', 'Test', '',
                                '[ArrayItemName="int"]');
  InvRegistry.RegisterParamInfo(TypeInfo(LABserviceSoap), 'TestEkle', 'TestEkleResult', '',
                                '[ArrayItemName="HastaTestEklemeSonucu"]');
  { LABserviceSoap.TestGuncelle }
  InvRegistry.RegisterMethodInfo(TypeInfo(LABserviceSoap), 'TestGuncelle', '',
                                 '[ReturnName="TestGuncelleResult"]', IS_OPTN);
  InvRegistry.RegisterParamInfo(TypeInfo(LABserviceSoap), 'TestGuncelle', 'Test', '',
                                '[ArrayItemName="int"]');
  { LABserviceSoap.BarkodSonucBilgisi }
  InvRegistry.RegisterMethodInfo(TypeInfo(LABserviceSoap), 'BarkodSonucBilgisi', '',
                                 '[ReturnName="BarkodSonucBilgisiResult"]', IS_OPTN);
  InvRegistry.RegisterParamInfo(TypeInfo(LABserviceSoap), 'BarkodSonucBilgisi', 'BarkodSonucBilgisiResult', '',
                                '[ArrayItemName="HastaSonucBilgisi"]');
  { LABserviceSoap.DiyalizSonucDurum }
  InvRegistry.RegisterMethodInfo(TypeInfo(LABserviceSoap), 'DiyalizSonucDurum', '',
                                 '[ReturnName="DiyalizSonucDurumResult"]', IS_OPTN);
  InvRegistry.RegisterParamInfo(TypeInfo(LABserviceSoap), 'DiyalizSonucDurum', 'DiyalizSonucDurumResult', '',
                                '[ArrayItemName="HastaSonucToplu"]');
  { LABserviceSoap.DuyurulariGetir }
  InvRegistry.RegisterMethodInfo(TypeInfo(LABserviceSoap), 'DuyurulariGetir', '',
                                 '[ReturnName="DuyurulariGetirResult"]', IS_OPTN);
  InvRegistry.RegisterParamInfo(TypeInfo(LABserviceSoap), 'DuyurulariGetir', 'DuyurulariGetirResult', '',
                                '[ArrayItemName="Duyurular"]');
  { LABserviceSoap.BarkodEkSonuc }
  InvRegistry.RegisterMethodInfo(TypeInfo(LABserviceSoap), 'BarkodEkSonuc', '',
                                 '[ReturnName="BarkodEkSonucResult"]', IS_OPTN);
  InvRegistry.RegisterParamInfo(TypeInfo(LABserviceSoap), 'BarkodEkSonuc', 'BarkodEkSonucResult', '',
                                '[ArrayItemName="BarkodEkSonuclar"]');
  { LABserviceSoap.BarkodSonucBilgisiPDF }
  InvRegistry.RegisterMethodInfo(TypeInfo(LABserviceSoap), 'BarkodSonucBilgisiPDF', '',
                                 '[ReturnName="BarkodSonucBilgisiPDFResult"]', IS_OPTN);
  InvRegistry.RegisterParamInfo(TypeInfo(LABserviceSoap), 'BarkodSonucBilgisiPDF', 'BarkodSonucBilgisiPDFResult', '',
                                '[ArrayItemName="HastaSonucPDF"]');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfHastaSonucPDF), 'http://tempuri.org/', 'ArrayOfHastaSonucPDF');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfInt), 'http://tempuri.org/', 'ArrayOfInt');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfHastaTestEklemeSonucu), 'http://tempuri.org/', 'ArrayOfHastaTestEklemeSonucu');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfAktifPanel), 'http://tempuri.org/', 'ArrayOfAktifPanel');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfAktifTest), 'http://tempuri.org/', 'ArrayOfAktifTest');
  RemClassRegistry.RegisterXSClass(AktifTest, 'http://tempuri.org/', 'AktifTest');
  RemClassRegistry.RegisterXSClass(HastaTestEklemeSonucu, 'http://tempuri.org/', 'HastaTestEklemeSonucu');
  RemClassRegistry.RegisterXSClass(AktifPanel, 'http://tempuri.org/', 'AktifPanel');
  RemClassRegistry.RegisterXSClass(HastaSonucPDF, 'http://tempuri.org/', 'HastaSonucPDF');
  RemClassRegistry.RegisterXSClass(AktifTestParametre, 'http://tempuri.org/', 'AktifTestParametre');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfAktifTestParametre), 'http://tempuri.org/', 'ArrayOfAktifTestParametre');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfHastaSonucBilgisi), 'http://tempuri.org/', 'ArrayOfHastaSonucBilgisi');
  RemClassRegistry.RegisterXSClass(Duyurular, 'http://tempuri.org/', 'Duyurular');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfDuyurular), 'http://tempuri.org/', 'ArrayOfDuyurular');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfBarkodEkSonuclar), 'http://tempuri.org/', 'ArrayOfBarkodEkSonuclar');
  RemClassRegistry.RegisterXSClass(BarkodEkSonuclar, 'http://tempuri.org/', 'BarkodEkSonuclar');
  RemClassRegistry.RegisterXSClass(HastaSonucToplu, 'http://tempuri.org/', 'HastaSonucToplu');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(HastaSonucToplu), 'TestSonuclariGenel', '[ArrayItemName="HastaSonucBilgisi"]');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfSonucBilgi), 'http://tempuri.org/', 'ArrayOfSonucBilgi');
  RemClassRegistry.RegisterXSClass(HastaSonucBilgisi, 'http://tempuri.org/', 'HastaSonucBilgisi');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(HastaSonucBilgisi), 'TestSonuclari', '[ArrayItemName="SonucBilgi"]');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfHastaSonucToplu), 'http://tempuri.org/', 'ArrayOfHastaSonucToplu');
  RemClassRegistry.RegisterXSClass(SonucBilgi, 'http://tempuri.org/', 'SonucBilgi');

end.