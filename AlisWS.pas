// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : C:\Dializ2007_M3\AlisWS.wsdl
//  >Import : C:\Dializ2007_M3\AlisWS.wsdl>0
// Encoding : utf-8
// Version  : 1.0
// (03.03.2016 16:11:26 - - $Rev: 25127 $)
// ************************************************************************ //

unit AlisWS;

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

  EntegRec             = class;                 { "http://tempuri.org/"[GblCplx] }
  Tetkik               = class;                 { "http://tempuri.org/"[GblCplx] }
  IslemSonuc           = class;                 { "http://tempuri.org/"[GblCplx] }
  BarkodInfo           = class;                 { "http://tempuri.org/"[GblCplx] }
  KayitSorguTamamla    = class;                 { "http://tempuri.org/"[GblCplx] }
  KayitSorguTamamlaDurum = class;               { "http://tempuri.org/"[GblCplx] }
  OrnekDurum           = class;                 { "http://tempuri.org/"[GblCplx] }
  SonucDurum           = class;                 { "http://tempuri.org/"[GblCplx] }
  KULTURSONUC          = class;                 { "http://tempuri.org/"[GblCplx] }
  ORGANIZMASONUC       = class;                 { "http://tempuri.org/"[GblCplx] }
  ADTSONUC             = class;                 { "http://tempuri.org/"[GblCplx] }
  IstemDurum           = class;                 { "http://tempuri.org/"[GblCplx] }
  Istem                = class;                 { "http://tempuri.org/"[GblCplx] }
  SaglayiciSonucDurum  = class;                 { "http://tempuri.org/"[GblCplx] }
  DiyalizSonucDurum    = class;                 { "http://tempuri.org/"[GblCplx] }
  KayitSorgulaDurum    = class;                 { "http://tempuri.org/"[GblCplx] }
  KayitDurum           = class;                 { "http://tempuri.org/"[GblCplx] }
  OrnekKayitSorgulaDurum = class;               { "http://tempuri.org/"[GblCplx] }
  DoktorBilgi          = class;                 { "http://tempuri.org/"[GblCplx] }
  BarkodTanim          = class;                 { "http://tempuri.org/"[GblCplx] }
  EntegKodDurum        = class;                 { "http://tempuri.org/"[GblCplx] }
  EntegKodlar          = class;                 { "http://tempuri.org/"[GblCplx] }
  PanelDurum           = class;                 { "http://tempuri.org/"[GblCplx] }
  PANEL                = class;                 { "http://tempuri.org/"[GblCplx] }
  TalesemiSonucDurum   = class;                 { "http://tempuri.org/"[GblCplx] }
  OrnekDetayBilgi      = class;                 { "http://tempuri.org/"[GblCplx] }

  {$SCOPEDENUMS ON}
  { "http://tempuri.org/"[GblSmpl] }
  CINSIYET_TIPI = (KADIN, ERKEK, BILINMIYOR);

  { "http://tempuri.org/"[GblSmpl] }
  ACIL_TIPI = (ACIL, RUTIN);

  { "http://tempuri.org/"[GblSmpl] }
  YATAN_TIPI = (AYAKTAN, YATAN);

  { "http://tempuri.org/"[GblSmpl] }
  SKRS_SGK = (SGK, SSK, BAGKUR, EMEKLI_SANDIGI, TSK, MUHASEBAT, OZEL_SIGORTA, YESILKART, DIGER, BELIRTILMEMIS);

  { "http://tempuri.org/"[GblSmpl] }
  SERPOL_TIPI = (POLIKLINIK, SERVIS);

  { "http://tempuri.org/"[GblSmpl] }
  BARKOD_TIPI = (YOK, CODE_39, INT_2OF5, CODE_128);

  { "http://tempuri.org/"[GblSmpl] }
  DURUM = (LABORATUVARA_BEKLENIYOR, KAN_ALINDI, KABUL_EDILDI, REDDEDILDI, CIHAZA_GONDERILDI, SONUC_DOLU_ONAY_BEKLENIYOR, ONAYLANDI, RAPORLANDI, DURUM_BULUNAMADI);

  { "http://tempuri.org/"[GblSmpl] }
  UREME_DURUM_TIPI = (UREME_YOK, UREME_VAR);

  { "http://tempuri.org/"[GblSmpl] }
  ENFEKSIYON_TIPI = (ENFEKSIYON_YOK, OLASI_ENFEKSIYON, KESIN_ENFEKSIYON, HASTANE_ENFEKSIYON);

  { "http://tempuri.org/"[GblSmpl] }
  ADTSONUC_TIPI = (TEST_YOK, DUYARLI, ORTA_DUYARLI, DIRENCLI, DIGER, AZ_DUYARLI);

  { "http://tempuri.org/"[GblSmpl] }
  EVET_HAYIR = (HAYIR, EVET);

  {$SCOPEDENUMS OFF}

  ArrayOfTetkik = array of Tetkik;              { "http://tempuri.org/"[GblCplx] }


  // ************************************************************************ //
  // XML       : EntegRec, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  EntegRec = class(TRemotable)
  private
    FVENPASS: string;
    FVENPASS_Specified: boolean;
    FVENUSER: string;
    FVENUSER_Specified: boolean;
    FORNEKNO: Integer;
    FTETKIKLER: string;
    FTETKIKLER_Specified: boolean;
    FTetkikArr: ArrayOfTetkik;
    FTetkikArr_Specified: boolean;
    FISTEM_TARIHI: string;
    FISTEM_TARIHI_Specified: boolean;
    FTC_KIMLIKNO: string;
    FTC_KIMLIKNO_Specified: boolean;
    FDOSYA_NO: string;
    FDOSYA_NO_Specified: boolean;
    FGELIS_NO: string;
    FGELIS_NO_Specified: boolean;
    FAD: string;
    FAD_Specified: boolean;
    FSOYAD: string;
    FSOYAD_Specified: boolean;
    FCINSIYET: CINSIYET_TIPI;
    FDOGUM_TARIHI: string;
    FDOGUM_TARIHI_Specified: boolean;
    FDOGUM_YERI: string;
    FDOGUM_YERI_Specified: boolean;
    FBABA_ADI: string;
    FBABA_ADI_Specified: boolean;
    FANA_ADI: string;
    FANA_ADI_Specified: boolean;
    FACIL: ACIL_TIPI;
    FYATAN: YATAN_TIPI;
    FSGK: SKRS_SGK;
    FKURUM_KODU: string;
    FKURUM_KODU_Specified: boolean;
    FKURUM_ADI: string;
    FKURUM_ADI_Specified: boolean;
    FSERVIS_KODU: string;
    FSERVIS_KODU_Specified: boolean;
    FSERVIS_ADI: string;
    FSERVIS_ADI_Specified: boolean;
    FSERPOL: SERPOL_TIPI;
    FDOKTOR_KODU: string;
    FDOKTOR_KODU_Specified: boolean;
    FDOKTOR_ADI: string;
    FDOKTOR_ADI_Specified: boolean;
    FDOKTOR_SOYADI: string;
    FDOKTOR_SOYADI_Specified: boolean;
    FDOKTOR_SICIL_NO: string;
    FDOKTOR_SICIL_NO_Specified: boolean;
    FTANI_KODU: string;
    FTANI_KODU_Specified: boolean;
    FTANI_ADI: string;
    FTANI_ADI_Specified: boolean;
    FACIKLAMA: string;
    FACIKLAMA_Specified: boolean;
    FTEL: string;
    FTEL_Specified: boolean;
    FTEL2: string;
    FTEL2_Specified: boolean;
    FMOBILTEL: string;
    FMOBILTEL_Specified: boolean;
    FEPOSTA: string;
    FEPOSTA_Specified: boolean;
    FSONUC_ALABILIR_YAKINI: string;
    FSONUC_ALABILIR_YAKINI_Specified: boolean;
    FOZELKOD1: string;
    FOZELKOD1_Specified: boolean;
    FOZELKOD2: string;
    FOZELKOD2_Specified: boolean;
    FOZELKOD3: string;
    FOZELKOD3_Specified: boolean;
    FOZELKOD4: string;
    FOZELKOD4_Specified: boolean;
    FOZELKOD5: string;
    FOZELKOD5_Specified: boolean;
    FKANALMA_TARIHI: string;
    FKANALMA_TARIHI_Specified: boolean;
    FLABKABUL_TARIHI: string;
    FLABKABUL_TARIHI_Specified: boolean;
    procedure SetVENPASS(Index: Integer; const Astring: string);
    function  VENPASS_Specified(Index: Integer): boolean;
    procedure SetVENUSER(Index: Integer; const Astring: string);
    function  VENUSER_Specified(Index: Integer): boolean;
    procedure SetTETKIKLER(Index: Integer; const Astring: string);
    function  TETKIKLER_Specified(Index: Integer): boolean;
    procedure SetTetkikArr(Index: Integer; const AArrayOfTetkik: ArrayOfTetkik);
    function  TetkikArr_Specified(Index: Integer): boolean;
    procedure SetISTEM_TARIHI(Index: Integer; const Astring: string);
    function  ISTEM_TARIHI_Specified(Index: Integer): boolean;
    procedure SetTC_KIMLIKNO(Index: Integer; const Astring: string);
    function  TC_KIMLIKNO_Specified(Index: Integer): boolean;
    procedure SetDOSYA_NO(Index: Integer; const Astring: string);
    function  DOSYA_NO_Specified(Index: Integer): boolean;
    procedure SetGELIS_NO(Index: Integer; const Astring: string);
    function  GELIS_NO_Specified(Index: Integer): boolean;
    procedure SetAD(Index: Integer; const Astring: string);
    function  AD_Specified(Index: Integer): boolean;
    procedure SetSOYAD(Index: Integer; const Astring: string);
    function  SOYAD_Specified(Index: Integer): boolean;
    procedure SetDOGUM_TARIHI(Index: Integer; const Astring: string);
    function  DOGUM_TARIHI_Specified(Index: Integer): boolean;
    procedure SetDOGUM_YERI(Index: Integer; const Astring: string);
    function  DOGUM_YERI_Specified(Index: Integer): boolean;
    procedure SetBABA_ADI(Index: Integer; const Astring: string);
    function  BABA_ADI_Specified(Index: Integer): boolean;
    procedure SetANA_ADI(Index: Integer; const Astring: string);
    function  ANA_ADI_Specified(Index: Integer): boolean;
    procedure SetKURUM_KODU(Index: Integer; const Astring: string);
    function  KURUM_KODU_Specified(Index: Integer): boolean;
    procedure SetKURUM_ADI(Index: Integer; const Astring: string);
    function  KURUM_ADI_Specified(Index: Integer): boolean;
    procedure SetSERVIS_KODU(Index: Integer; const Astring: string);
    function  SERVIS_KODU_Specified(Index: Integer): boolean;
    procedure SetSERVIS_ADI(Index: Integer; const Astring: string);
    function  SERVIS_ADI_Specified(Index: Integer): boolean;
    procedure SetDOKTOR_KODU(Index: Integer; const Astring: string);
    function  DOKTOR_KODU_Specified(Index: Integer): boolean;
    procedure SetDOKTOR_ADI(Index: Integer; const Astring: string);
    function  DOKTOR_ADI_Specified(Index: Integer): boolean;
    procedure SetDOKTOR_SOYADI(Index: Integer; const Astring: string);
    function  DOKTOR_SOYADI_Specified(Index: Integer): boolean;
    procedure SetDOKTOR_SICIL_NO(Index: Integer; const Astring: string);
    function  DOKTOR_SICIL_NO_Specified(Index: Integer): boolean;
    procedure SetTANI_KODU(Index: Integer; const Astring: string);
    function  TANI_KODU_Specified(Index: Integer): boolean;
    procedure SetTANI_ADI(Index: Integer; const Astring: string);
    function  TANI_ADI_Specified(Index: Integer): boolean;
    procedure SetACIKLAMA(Index: Integer; const Astring: string);
    function  ACIKLAMA_Specified(Index: Integer): boolean;
    procedure SetTEL(Index: Integer; const Astring: string);
    function  TEL_Specified(Index: Integer): boolean;
    procedure SetTEL2(Index: Integer; const Astring: string);
    function  TEL2_Specified(Index: Integer): boolean;
    procedure SetMOBILTEL(Index: Integer; const Astring: string);
    function  MOBILTEL_Specified(Index: Integer): boolean;
    procedure SetEPOSTA(Index: Integer; const Astring: string);
    function  EPOSTA_Specified(Index: Integer): boolean;
    procedure SetSONUC_ALABILIR_YAKINI(Index: Integer; const Astring: string);
    function  SONUC_ALABILIR_YAKINI_Specified(Index: Integer): boolean;
    procedure SetOZELKOD1(Index: Integer; const Astring: string);
    function  OZELKOD1_Specified(Index: Integer): boolean;
    procedure SetOZELKOD2(Index: Integer; const Astring: string);
    function  OZELKOD2_Specified(Index: Integer): boolean;
    procedure SetOZELKOD3(Index: Integer; const Astring: string);
    function  OZELKOD3_Specified(Index: Integer): boolean;
    procedure SetOZELKOD4(Index: Integer; const Astring: string);
    function  OZELKOD4_Specified(Index: Integer): boolean;
    procedure SetOZELKOD5(Index: Integer; const Astring: string);
    function  OZELKOD5_Specified(Index: Integer): boolean;
    procedure SetKANALMA_TARIHI(Index: Integer; const Astring: string);
    function  KANALMA_TARIHI_Specified(Index: Integer): boolean;
    procedure SetLABKABUL_TARIHI(Index: Integer; const Astring: string);
    function  LABKABUL_TARIHI_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property VENPASS:               string         Index (IS_OPTN) read FVENPASS write SetVENPASS stored VENPASS_Specified;
    property VENUSER:               string         Index (IS_OPTN) read FVENUSER write SetVENUSER stored VENUSER_Specified;
    property ORNEKNO:               Integer        read FORNEKNO write FORNEKNO;
    property TETKIKLER:             string         Index (IS_OPTN) read FTETKIKLER write SetTETKIKLER stored TETKIKLER_Specified;
    property TetkikArr:             ArrayOfTetkik  Index (IS_OPTN) read FTetkikArr write SetTetkikArr stored TetkikArr_Specified;
    property ISTEM_TARIHI:          string         Index (IS_OPTN) read FISTEM_TARIHI write SetISTEM_TARIHI stored ISTEM_TARIHI_Specified;
    property TC_KIMLIKNO:           string         Index (IS_OPTN) read FTC_KIMLIKNO write SetTC_KIMLIKNO stored TC_KIMLIKNO_Specified;
    property DOSYA_NO:              string         Index (IS_OPTN) read FDOSYA_NO write SetDOSYA_NO stored DOSYA_NO_Specified;
    property GELIS_NO:              string         Index (IS_OPTN) read FGELIS_NO write SetGELIS_NO stored GELIS_NO_Specified;
    property AD:                    string         Index (IS_OPTN) read FAD write SetAD stored AD_Specified;
    property SOYAD:                 string         Index (IS_OPTN) read FSOYAD write SetSOYAD stored SOYAD_Specified;
    property CINSIYET:              CINSIYET_TIPI  read FCINSIYET write FCINSIYET;
    property DOGUM_TARIHI:          string         Index (IS_OPTN) read FDOGUM_TARIHI write SetDOGUM_TARIHI stored DOGUM_TARIHI_Specified;
    property DOGUM_YERI:            string         Index (IS_OPTN) read FDOGUM_YERI write SetDOGUM_YERI stored DOGUM_YERI_Specified;
    property BABA_ADI:              string         Index (IS_OPTN) read FBABA_ADI write SetBABA_ADI stored BABA_ADI_Specified;
    property ANA_ADI:               string         Index (IS_OPTN) read FANA_ADI write SetANA_ADI stored ANA_ADI_Specified;
    property ACIL:                  ACIL_TIPI      read FACIL write FACIL;
    property YATAN:                 YATAN_TIPI     read FYATAN write FYATAN;
    property SGK:                   SKRS_SGK       read FSGK write FSGK;
    property KURUM_KODU:            string         Index (IS_OPTN) read FKURUM_KODU write SetKURUM_KODU stored KURUM_KODU_Specified;
    property KURUM_ADI:             string         Index (IS_OPTN) read FKURUM_ADI write SetKURUM_ADI stored KURUM_ADI_Specified;
    property SERVIS_KODU:           string         Index (IS_OPTN) read FSERVIS_KODU write SetSERVIS_KODU stored SERVIS_KODU_Specified;
    property SERVIS_ADI:            string         Index (IS_OPTN) read FSERVIS_ADI write SetSERVIS_ADI stored SERVIS_ADI_Specified;
    property SERPOL:                SERPOL_TIPI    read FSERPOL write FSERPOL;
    property DOKTOR_KODU:           string         Index (IS_OPTN) read FDOKTOR_KODU write SetDOKTOR_KODU stored DOKTOR_KODU_Specified;
    property DOKTOR_ADI:            string         Index (IS_OPTN) read FDOKTOR_ADI write SetDOKTOR_ADI stored DOKTOR_ADI_Specified;
    property DOKTOR_SOYADI:         string         Index (IS_OPTN) read FDOKTOR_SOYADI write SetDOKTOR_SOYADI stored DOKTOR_SOYADI_Specified;
    property DOKTOR_SICIL_NO:       string         Index (IS_OPTN) read FDOKTOR_SICIL_NO write SetDOKTOR_SICIL_NO stored DOKTOR_SICIL_NO_Specified;
    property TANI_KODU:             string         Index (IS_OPTN) read FTANI_KODU write SetTANI_KODU stored TANI_KODU_Specified;
    property TANI_ADI:              string         Index (IS_OPTN) read FTANI_ADI write SetTANI_ADI stored TANI_ADI_Specified;
    property ACIKLAMA:              string         Index (IS_OPTN) read FACIKLAMA write SetACIKLAMA stored ACIKLAMA_Specified;
    property TEL:                   string         Index (IS_OPTN) read FTEL write SetTEL stored TEL_Specified;
    property TEL2:                  string         Index (IS_OPTN) read FTEL2 write SetTEL2 stored TEL2_Specified;
    property MOBILTEL:              string         Index (IS_OPTN) read FMOBILTEL write SetMOBILTEL stored MOBILTEL_Specified;
    property EPOSTA:                string         Index (IS_OPTN) read FEPOSTA write SetEPOSTA stored EPOSTA_Specified;
    property SONUC_ALABILIR_YAKINI: string         Index (IS_OPTN) read FSONUC_ALABILIR_YAKINI write SetSONUC_ALABILIR_YAKINI stored SONUC_ALABILIR_YAKINI_Specified;
    property OZELKOD1:              string         Index (IS_OPTN) read FOZELKOD1 write SetOZELKOD1 stored OZELKOD1_Specified;
    property OZELKOD2:              string         Index (IS_OPTN) read FOZELKOD2 write SetOZELKOD2 stored OZELKOD2_Specified;
    property OZELKOD3:              string         Index (IS_OPTN) read FOZELKOD3 write SetOZELKOD3 stored OZELKOD3_Specified;
    property OZELKOD4:              string         Index (IS_OPTN) read FOZELKOD4 write SetOZELKOD4 stored OZELKOD4_Specified;
    property OZELKOD5:              string         Index (IS_OPTN) read FOZELKOD5 write SetOZELKOD5 stored OZELKOD5_Specified;
    property KANALMA_TARIHI:        string         Index (IS_OPTN) read FKANALMA_TARIHI write SetKANALMA_TARIHI stored KANALMA_TARIHI_Specified;
    property LABKABUL_TARIHI:       string         Index (IS_OPTN) read FLABKABUL_TARIHI write SetLABKABUL_TARIHI stored LABKABUL_TARIHI_Specified;
  end;



  // ************************************************************************ //
  // XML       : Tetkik, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  Tetkik = class(TRemotable)
  private
    FTETKIK_KODU: string;
    FTETKIK_KODU_Specified: boolean;
    FISTEM_ID: string;
    FISTEM_ID_Specified: boolean;
    FTETKIK_ACIK: string;
    FTETKIK_ACIK_Specified: boolean;
    FislemSonuc: IslemSonuc;
    FislemSonuc_Specified: boolean;
    procedure SetTETKIK_KODU(Index: Integer; const Astring: string);
    function  TETKIK_KODU_Specified(Index: Integer): boolean;
    procedure SetISTEM_ID(Index: Integer; const Astring: string);
    function  ISTEM_ID_Specified(Index: Integer): boolean;
    procedure SetTETKIK_ACIK(Index: Integer; const Astring: string);
    function  TETKIK_ACIK_Specified(Index: Integer): boolean;
    procedure SetislemSonuc(Index: Integer; const AIslemSonuc: IslemSonuc);
    function  islemSonuc_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property TETKIK_KODU: string      Index (IS_OPTN) read FTETKIK_KODU write SetTETKIK_KODU stored TETKIK_KODU_Specified;
    property ISTEM_ID:    string      Index (IS_OPTN) read FISTEM_ID write SetISTEM_ID stored ISTEM_ID_Specified;
    property TETKIK_ACIK: string      Index (IS_OPTN) read FTETKIK_ACIK write SetTETKIK_ACIK stored TETKIK_ACIK_Specified;
    property islemSonuc:  IslemSonuc  Index (IS_OPTN) read FislemSonuc write SetislemSonuc stored islemSonuc_Specified;
  end;

  ArrayOfBarkodInfo = array of BarkodInfo;      { "http://tempuri.org/"[GblCplx] }


  // ************************************************************************ //
  // XML       : IslemSonuc, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  IslemSonuc = class(TRemotable)
  private
    FRes: Integer;
    FOrnekNo: Integer;
    FHataMesaji: string;
    FHataMesaji_Specified: boolean;
    FUyarýMesaji: string;
    FUyarýMesaji_Specified: boolean;
    FTetkikArr: ArrayOfTetkik;
    FTetkikArr_Specified: boolean;
    FBarkodInfoArr: ArrayOfBarkodInfo;
    FBarkodInfoArr_Specified: boolean;
    procedure SetHataMesaji(Index: Integer; const Astring: string);
    function  HataMesaji_Specified(Index: Integer): boolean;
    procedure SetUyarýMesaji(Index: Integer; const Astring: string);
    function  UyarýMesaji_Specified(Index: Integer): boolean;
    procedure SetTetkikArr(Index: Integer; const AArrayOfTetkik: ArrayOfTetkik);
    function  TetkikArr_Specified(Index: Integer): boolean;
    procedure SetBarkodInfoArr(Index: Integer; const AArrayOfBarkodInfo: ArrayOfBarkodInfo);
    function  BarkodInfoArr_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property Res:           Integer            read FRes write FRes;
    property OrnekNo:       Integer            read FOrnekNo write FOrnekNo;
    property HataMesaji:    string             Index (IS_OPTN) read FHataMesaji write SetHataMesaji stored HataMesaji_Specified;
    property UyarýMesaji:   string             Index (IS_OPTN) read FUyarýMesaji write SetUyarýMesaji stored UyarýMesaji_Specified;
    property TetkikArr:     ArrayOfTetkik      Index (IS_OPTN) read FTetkikArr write SetTetkikArr stored TetkikArr_Specified;
    property BarkodInfoArr: ArrayOfBarkodInfo  Index (IS_OPTN) read FBarkodInfoArr write SetBarkodInfoArr stored BarkodInfoArr_Specified;
  end;



  // ************************************************************************ //
  // XML       : BarkodInfo, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  BarkodInfo = class(TRemotable)
  private
    FBARKODNO: string;
    FBARKODNO_Specified: boolean;
    FACIKLAMA1: string;
    FACIKLAMA1_Specified: boolean;
    FACIKLAMA2: string;
    FACIKLAMA2_Specified: boolean;
    FACIKLAMA3: string;
    FACIKLAMA3_Specified: boolean;
    FACIKLAMA4: string;
    FACIKLAMA4_Specified: boolean;
    FACIKLAMA5: string;
    FACIKLAMA5_Specified: boolean;
    FACIKLAMA6: string;
    FACIKLAMA6_Specified: boolean;
    FACIKLAMA7: string;
    FACIKLAMA7_Specified: boolean;
    FACIKLAMA8: string;
    FACIKLAMA8_Specified: boolean;
    FACIKLAMA9: string;
    FACIKLAMA9_Specified: boolean;
    FACIKLAMA10: string;
    FACIKLAMA10_Specified: boolean;
    FKATSAYI: string;
    FKATSAYI_Specified: boolean;
    FBARKOD_GRUBU: string;
    FBARKOD_GRUBU_Specified: boolean;
    FKOPYA_SAYISI: Integer;
    FBARKODTIPI: BARKOD_TIPI;
    procedure SetBARKODNO(Index: Integer; const Astring: string);
    function  BARKODNO_Specified(Index: Integer): boolean;
    procedure SetACIKLAMA1(Index: Integer; const Astring: string);
    function  ACIKLAMA1_Specified(Index: Integer): boolean;
    procedure SetACIKLAMA2(Index: Integer; const Astring: string);
    function  ACIKLAMA2_Specified(Index: Integer): boolean;
    procedure SetACIKLAMA3(Index: Integer; const Astring: string);
    function  ACIKLAMA3_Specified(Index: Integer): boolean;
    procedure SetACIKLAMA4(Index: Integer; const Astring: string);
    function  ACIKLAMA4_Specified(Index: Integer): boolean;
    procedure SetACIKLAMA5(Index: Integer; const Astring: string);
    function  ACIKLAMA5_Specified(Index: Integer): boolean;
    procedure SetACIKLAMA6(Index: Integer; const Astring: string);
    function  ACIKLAMA6_Specified(Index: Integer): boolean;
    procedure SetACIKLAMA7(Index: Integer; const Astring: string);
    function  ACIKLAMA7_Specified(Index: Integer): boolean;
    procedure SetACIKLAMA8(Index: Integer; const Astring: string);
    function  ACIKLAMA8_Specified(Index: Integer): boolean;
    procedure SetACIKLAMA9(Index: Integer; const Astring: string);
    function  ACIKLAMA9_Specified(Index: Integer): boolean;
    procedure SetACIKLAMA10(Index: Integer; const Astring: string);
    function  ACIKLAMA10_Specified(Index: Integer): boolean;
    procedure SetKATSAYI(Index: Integer; const Astring: string);
    function  KATSAYI_Specified(Index: Integer): boolean;
    procedure SetBARKOD_GRUBU(Index: Integer; const Astring: string);
    function  BARKOD_GRUBU_Specified(Index: Integer): boolean;
  published
    property BARKODNO:     string       Index (IS_OPTN) read FBARKODNO write SetBARKODNO stored BARKODNO_Specified;
    property ACIKLAMA1:    string       Index (IS_OPTN) read FACIKLAMA1 write SetACIKLAMA1 stored ACIKLAMA1_Specified;
    property ACIKLAMA2:    string       Index (IS_OPTN) read FACIKLAMA2 write SetACIKLAMA2 stored ACIKLAMA2_Specified;
    property ACIKLAMA3:    string       Index (IS_OPTN) read FACIKLAMA3 write SetACIKLAMA3 stored ACIKLAMA3_Specified;
    property ACIKLAMA4:    string       Index (IS_OPTN) read FACIKLAMA4 write SetACIKLAMA4 stored ACIKLAMA4_Specified;
    property ACIKLAMA5:    string       Index (IS_OPTN) read FACIKLAMA5 write SetACIKLAMA5 stored ACIKLAMA5_Specified;
    property ACIKLAMA6:    string       Index (IS_OPTN) read FACIKLAMA6 write SetACIKLAMA6 stored ACIKLAMA6_Specified;
    property ACIKLAMA7:    string       Index (IS_OPTN) read FACIKLAMA7 write SetACIKLAMA7 stored ACIKLAMA7_Specified;
    property ACIKLAMA8:    string       Index (IS_OPTN) read FACIKLAMA8 write SetACIKLAMA8 stored ACIKLAMA8_Specified;
    property ACIKLAMA9:    string       Index (IS_OPTN) read FACIKLAMA9 write SetACIKLAMA9 stored ACIKLAMA9_Specified;
    property ACIKLAMA10:   string       Index (IS_OPTN) read FACIKLAMA10 write SetACIKLAMA10 stored ACIKLAMA10_Specified;
    property KATSAYI:      string       Index (IS_OPTN) read FKATSAYI write SetKATSAYI stored KATSAYI_Specified;
    property BARKOD_GRUBU: string       Index (IS_OPTN) read FBARKOD_GRUBU write SetBARKOD_GRUBU stored BARKOD_GRUBU_Specified;
    property KOPYA_SAYISI: Integer      read FKOPYA_SAYISI write FKOPYA_SAYISI;
    property BARKODTIPI:   BARKOD_TIPI  read FBARKODTIPI write FBARKODTIPI;
  end;

  ArrayOfKayitSorguTamamla = array of KayitSorguTamamla;   { "http://tempuri.org/"[GblCplx] }


  // ************************************************************************ //
  // XML       : KayitSorguTamamla, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  KayitSorguTamamla = class(TRemotable)
  private
    FORNEKNO: Integer;
    FKONTROL_KODU: string;
    FKONTROL_KODU_Specified: boolean;
    FRES: Integer;
    FHATA_MESAJI: string;
    FHATA_MESAJI_Specified: boolean;
    procedure SetKONTROL_KODU(Index: Integer; const Astring: string);
    function  KONTROL_KODU_Specified(Index: Integer): boolean;
    procedure SetHATA_MESAJI(Index: Integer; const Astring: string);
    function  HATA_MESAJI_Specified(Index: Integer): boolean;
  published
    property ORNEKNO:      Integer  read FORNEKNO write FORNEKNO;
    property KONTROL_KODU: string   Index (IS_OPTN) read FKONTROL_KODU write SetKONTROL_KODU stored KONTROL_KODU_Specified;
    property RES:          Integer  read FRES write FRES;
    property HATA_MESAJI:  string   Index (IS_OPTN) read FHATA_MESAJI write SetHATA_MESAJI stored HATA_MESAJI_Specified;
  end;



  // ************************************************************************ //
  // XML       : KayitSorguTamamlaDurum, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  KayitSorguTamamlaDurum = class(TRemotable)
  private
    FRES: Integer;
    FHATA_MESAJI: string;
    FHATA_MESAJI_Specified: boolean;
    FKAYIT_SORGU_ARR: ArrayOfKayitSorguTamamla;
    FKAYIT_SORGU_ARR_Specified: boolean;
    procedure SetHATA_MESAJI(Index: Integer; const Astring: string);
    function  HATA_MESAJI_Specified(Index: Integer): boolean;
    procedure SetKAYIT_SORGU_ARR(Index: Integer; const AArrayOfKayitSorguTamamla: ArrayOfKayitSorguTamamla);
    function  KAYIT_SORGU_ARR_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property RES:             Integer                   read FRES write FRES;
    property HATA_MESAJI:     string                    Index (IS_OPTN) read FHATA_MESAJI write SetHATA_MESAJI stored HATA_MESAJI_Specified;
    property KAYIT_SORGU_ARR: ArrayOfKayitSorguTamamla  Index (IS_OPTN) read FKAYIT_SORGU_ARR write SetKAYIT_SORGU_ARR stored KAYIT_SORGU_ARR_Specified;
  end;



  // ************************************************************************ //
  // XML       : OrnekDurum, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  OrnekDurum = class(TRemotable)
  private
    FislemSonuc: IslemSonuc;
    FislemSonuc_Specified: boolean;
    FORNEKNO: Integer;
    FTUMUBOS: string;
    FTUMUBOS_Specified: boolean;
    FTUMUDOLU: string;
    FTUMUDOLU_Specified: boolean;
    FTUMUONAYLI: string;
    FTUMUONAYLI_Specified: boolean;
    FTUMUBASILMIS: string;
    FTUMUBASILMIS_Specified: boolean;
    procedure SetislemSonuc(Index: Integer; const AIslemSonuc: IslemSonuc);
    function  islemSonuc_Specified(Index: Integer): boolean;
    procedure SetTUMUBOS(Index: Integer; const Astring: string);
    function  TUMUBOS_Specified(Index: Integer): boolean;
    procedure SetTUMUDOLU(Index: Integer; const Astring: string);
    function  TUMUDOLU_Specified(Index: Integer): boolean;
    procedure SetTUMUONAYLI(Index: Integer; const Astring: string);
    function  TUMUONAYLI_Specified(Index: Integer): boolean;
    procedure SetTUMUBASILMIS(Index: Integer; const Astring: string);
    function  TUMUBASILMIS_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property islemSonuc:   IslemSonuc  Index (IS_OPTN) read FislemSonuc write SetislemSonuc stored islemSonuc_Specified;
    property ORNEKNO:      Integer     read FORNEKNO write FORNEKNO;
    property TUMUBOS:      string      Index (IS_OPTN) read FTUMUBOS write SetTUMUBOS stored TUMUBOS_Specified;
    property TUMUDOLU:     string      Index (IS_OPTN) read FTUMUDOLU write SetTUMUDOLU stored TUMUDOLU_Specified;
    property TUMUONAYLI:   string      Index (IS_OPTN) read FTUMUONAYLI write SetTUMUONAYLI stored TUMUONAYLI_Specified;
    property TUMUBASILMIS: string      Index (IS_OPTN) read FTUMUBASILMIS write SetTUMUBASILMIS stored TUMUBASILMIS_Specified;
  end;

  ArrayOfSonucDurum = array of SonucDurum;      { "http://tempuri.org/"[GblCplx] }


  // ************************************************************************ //
  // XML       : SonucDurum, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  SonucDurum = class(TRemotable)
  private
    FislemSonuc: IslemSonuc;
    FislemSonuc_Specified: boolean;
    FSONUC_ID: Integer;
    FORNEKNO: Integer;
    FHASTA_ADI: string;
    FHASTA_ADI_Specified: boolean;
    FHASTA_SOYADI: string;
    FHASTA_SOYADI_Specified: boolean;
    FTC_KIMLIKNO: string;
    FTC_KIMLIKNO_Specified: boolean;
    FCINSIYET: string;
    FCINSIYET_Specified: boolean;
    FUNITE_ADI: string;
    FUNITE_ADI_Specified: boolean;
    FTEST_ADI: string;
    FTEST_ADI_Specified: boolean;
    FSONUC: string;
    FSONUC_Specified: boolean;
    FKULTUR_SONUC: KULTURSONUC;
    FKULTUR_SONUC_Specified: boolean;
    FEKSONUC1: string;
    FEKSONUC1_Specified: boolean;
    FEKSONUC2: string;
    FEKSONUC2_Specified: boolean;
    FACIKLAMA: string;
    FACIKLAMA_Specified: boolean;
    FDETAY_ACIKLAMA: string;
    FDETAY_ACIKLAMA_Specified: boolean;
    FREF_DEGER: string;
    FREF_DEGER_Specified: boolean;
    FDUSUK_YUKSEK: string;
    FDUSUK_YUKSEK_Specified: boolean;
    FBIRIM: string;
    FBIRIM_Specified: boolean;
    FGONDERILDI: string;
    FGONDERILDI_Specified: boolean;
    FPATOLOJIK: string;
    FPATOLOJIK_Specified: boolean;
    FKULTUR_TESTI: string;
    FKULTUR_TESTI_Specified: boolean;
    FKAYIT_TARIHI: string;
    FKAYIT_TARIHI_Specified: boolean;
    FCALISMA_TARIHI: string;
    FCALISMA_TARIHI_Specified: boolean;
    FSONUC_ENTEG1: string;
    FSONUC_ENTEG1_Specified: boolean;
    FSONUC_ENTEG2: string;
    FSONUC_ENTEG2_Specified: boolean;
    FSONUC_ENTEG3: string;
    FSONUC_ENTEG3_Specified: boolean;
    FTETKIK_KODU: string;
    FTETKIK_KODU_Specified: boolean;
    FTETKIK_KODU2: string;
    FTETKIK_KODU2_Specified: boolean;
    FONAYLI: string;
    FONAYLI_Specified: boolean;
    FSONUC_DURUM: DURUM;
    FSONUC_DURUM_ACIKLAMA: string;
    FSONUC_DURUM_ACIKLAMA_Specified: boolean;
    procedure SetislemSonuc(Index: Integer; const AIslemSonuc: IslemSonuc);
    function  islemSonuc_Specified(Index: Integer): boolean;
    procedure SetHASTA_ADI(Index: Integer; const Astring: string);
    function  HASTA_ADI_Specified(Index: Integer): boolean;
    procedure SetHASTA_SOYADI(Index: Integer; const Astring: string);
    function  HASTA_SOYADI_Specified(Index: Integer): boolean;
    procedure SetTC_KIMLIKNO(Index: Integer; const Astring: string);
    function  TC_KIMLIKNO_Specified(Index: Integer): boolean;
    procedure SetCINSIYET(Index: Integer; const Astring: string);
    function  CINSIYET_Specified(Index: Integer): boolean;
    procedure SetUNITE_ADI(Index: Integer; const Astring: string);
    function  UNITE_ADI_Specified(Index: Integer): boolean;
    procedure SetTEST_ADI(Index: Integer; const Astring: string);
    function  TEST_ADI_Specified(Index: Integer): boolean;
    procedure SetSONUC(Index: Integer; const Astring: string);
    function  SONUC_Specified(Index: Integer): boolean;
    procedure SetKULTUR_SONUC(Index: Integer; const AKULTURSONUC: KULTURSONUC);
    function  KULTUR_SONUC_Specified(Index: Integer): boolean;
    procedure SetEKSONUC1(Index: Integer; const Astring: string);
    function  EKSONUC1_Specified(Index: Integer): boolean;
    procedure SetEKSONUC2(Index: Integer; const Astring: string);
    function  EKSONUC2_Specified(Index: Integer): boolean;
    procedure SetACIKLAMA(Index: Integer; const Astring: string);
    function  ACIKLAMA_Specified(Index: Integer): boolean;
    procedure SetDETAY_ACIKLAMA(Index: Integer; const Astring: string);
    function  DETAY_ACIKLAMA_Specified(Index: Integer): boolean;
    procedure SetREF_DEGER(Index: Integer; const Astring: string);
    function  REF_DEGER_Specified(Index: Integer): boolean;
    procedure SetDUSUK_YUKSEK(Index: Integer; const Astring: string);
    function  DUSUK_YUKSEK_Specified(Index: Integer): boolean;
    procedure SetBIRIM(Index: Integer; const Astring: string);
    function  BIRIM_Specified(Index: Integer): boolean;
    procedure SetGONDERILDI(Index: Integer; const Astring: string);
    function  GONDERILDI_Specified(Index: Integer): boolean;
    procedure SetPATOLOJIK(Index: Integer; const Astring: string);
    function  PATOLOJIK_Specified(Index: Integer): boolean;
    procedure SetKULTUR_TESTI(Index: Integer; const Astring: string);
    function  KULTUR_TESTI_Specified(Index: Integer): boolean;
    procedure SetKAYIT_TARIHI(Index: Integer; const Astring: string);
    function  KAYIT_TARIHI_Specified(Index: Integer): boolean;
    procedure SetCALISMA_TARIHI(Index: Integer; const Astring: string);
    function  CALISMA_TARIHI_Specified(Index: Integer): boolean;
    procedure SetSONUC_ENTEG1(Index: Integer; const Astring: string);
    function  SONUC_ENTEG1_Specified(Index: Integer): boolean;
    procedure SetSONUC_ENTEG2(Index: Integer; const Astring: string);
    function  SONUC_ENTEG2_Specified(Index: Integer): boolean;
    procedure SetSONUC_ENTEG3(Index: Integer; const Astring: string);
    function  SONUC_ENTEG3_Specified(Index: Integer): boolean;
    procedure SetTETKIK_KODU(Index: Integer; const Astring: string);
    function  TETKIK_KODU_Specified(Index: Integer): boolean;
    procedure SetTETKIK_KODU2(Index: Integer; const Astring: string);
    function  TETKIK_KODU2_Specified(Index: Integer): boolean;
    procedure SetONAYLI(Index: Integer; const Astring: string);
    function  ONAYLI_Specified(Index: Integer): boolean;
    procedure SetSONUC_DURUM_ACIKLAMA(Index: Integer; const Astring: string);
    function  SONUC_DURUM_ACIKLAMA_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property islemSonuc:           IslemSonuc   Index (IS_OPTN) read FislemSonuc write SetislemSonuc stored islemSonuc_Specified;
    property SONUC_ID:             Integer      read FSONUC_ID write FSONUC_ID;
    property ORNEKNO:              Integer      read FORNEKNO write FORNEKNO;
    property HASTA_ADI:            string       Index (IS_OPTN) read FHASTA_ADI write SetHASTA_ADI stored HASTA_ADI_Specified;
    property HASTA_SOYADI:         string       Index (IS_OPTN) read FHASTA_SOYADI write SetHASTA_SOYADI stored HASTA_SOYADI_Specified;
    property TC_KIMLIKNO:          string       Index (IS_OPTN) read FTC_KIMLIKNO write SetTC_KIMLIKNO stored TC_KIMLIKNO_Specified;
    property CINSIYET:             string       Index (IS_OPTN) read FCINSIYET write SetCINSIYET stored CINSIYET_Specified;
    property UNITE_ADI:            string       Index (IS_OPTN) read FUNITE_ADI write SetUNITE_ADI stored UNITE_ADI_Specified;
    property TEST_ADI:             string       Index (IS_OPTN) read FTEST_ADI write SetTEST_ADI stored TEST_ADI_Specified;
    property SONUC:                string       Index (IS_OPTN) read FSONUC write SetSONUC stored SONUC_Specified;
    property KULTUR_SONUC:         KULTURSONUC  Index (IS_OPTN) read FKULTUR_SONUC write SetKULTUR_SONUC stored KULTUR_SONUC_Specified;
    property EKSONUC1:             string       Index (IS_OPTN) read FEKSONUC1 write SetEKSONUC1 stored EKSONUC1_Specified;
    property EKSONUC2:             string       Index (IS_OPTN) read FEKSONUC2 write SetEKSONUC2 stored EKSONUC2_Specified;
    property ACIKLAMA:             string       Index (IS_OPTN) read FACIKLAMA write SetACIKLAMA stored ACIKLAMA_Specified;
    property DETAY_ACIKLAMA:       string       Index (IS_OPTN) read FDETAY_ACIKLAMA write SetDETAY_ACIKLAMA stored DETAY_ACIKLAMA_Specified;
    property REF_DEGER:            string       Index (IS_OPTN) read FREF_DEGER write SetREF_DEGER stored REF_DEGER_Specified;
    property DUSUK_YUKSEK:         string       Index (IS_OPTN) read FDUSUK_YUKSEK write SetDUSUK_YUKSEK stored DUSUK_YUKSEK_Specified;
    property BIRIM:                string       Index (IS_OPTN) read FBIRIM write SetBIRIM stored BIRIM_Specified;
    property GONDERILDI:           string       Index (IS_OPTN) read FGONDERILDI write SetGONDERILDI stored GONDERILDI_Specified;
    property PATOLOJIK:            string       Index (IS_OPTN) read FPATOLOJIK write SetPATOLOJIK stored PATOLOJIK_Specified;
    property KULTUR_TESTI:         string       Index (IS_OPTN) read FKULTUR_TESTI write SetKULTUR_TESTI stored KULTUR_TESTI_Specified;
    property KAYIT_TARIHI:         string       Index (IS_OPTN) read FKAYIT_TARIHI write SetKAYIT_TARIHI stored KAYIT_TARIHI_Specified;
    property CALISMA_TARIHI:       string       Index (IS_OPTN) read FCALISMA_TARIHI write SetCALISMA_TARIHI stored CALISMA_TARIHI_Specified;
    property SONUC_ENTEG1:         string       Index (IS_OPTN) read FSONUC_ENTEG1 write SetSONUC_ENTEG1 stored SONUC_ENTEG1_Specified;
    property SONUC_ENTEG2:         string       Index (IS_OPTN) read FSONUC_ENTEG2 write SetSONUC_ENTEG2 stored SONUC_ENTEG2_Specified;
    property SONUC_ENTEG3:         string       Index (IS_OPTN) read FSONUC_ENTEG3 write SetSONUC_ENTEG3 stored SONUC_ENTEG3_Specified;
    property TETKIK_KODU:          string       Index (IS_OPTN) read FTETKIK_KODU write SetTETKIK_KODU stored TETKIK_KODU_Specified;
    property TETKIK_KODU2:         string       Index (IS_OPTN) read FTETKIK_KODU2 write SetTETKIK_KODU2 stored TETKIK_KODU2_Specified;
    property ONAYLI:               string       Index (IS_OPTN) read FONAYLI write SetONAYLI stored ONAYLI_Specified;
    property SONUC_DURUM:          DURUM        read FSONUC_DURUM write FSONUC_DURUM;
    property SONUC_DURUM_ACIKLAMA: string       Index (IS_OPTN) read FSONUC_DURUM_ACIKLAMA write SetSONUC_DURUM_ACIKLAMA stored SONUC_DURUM_ACIKLAMA_Specified;
  end;

  ArrayOfORGANIZMASONUC = array of ORGANIZMASONUC;   { "http://tempuri.org/"[GblCplx] }


  // ************************************************************************ //
  // XML       : KULTURSONUC, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  KULTURSONUC = class(TRemotable)
  private
    FUREME_DURUM: UREME_DURUM_TIPI;
    FSONUC: string;
    FSONUC_Specified: boolean;
    FMIKALINYER_ADI: string;
    FMIKALINYER_ADI_Specified: boolean;
    FMIKMATERYAL_ADI: string;
    FMIKMATERYAL_ADI_Specified: boolean;
    FSONUCACIK: string;
    FSONUCACIK_Specified: boolean;
    FMIKROSKOBI: string;
    FMIKROSKOBI_Specified: boolean;
    FBOYAMA: string;
    FBOYAMA_Specified: boolean;
    FENFEKSIYON_DURUM: ENFEKSIYON_TIPI;
    FORGANIZMASONUCLIST: ArrayOfORGANIZMASONUC;
    FORGANIZMASONUCLIST_Specified: boolean;
    procedure SetSONUC(Index: Integer; const Astring: string);
    function  SONUC_Specified(Index: Integer): boolean;
    procedure SetMIKALINYER_ADI(Index: Integer; const Astring: string);
    function  MIKALINYER_ADI_Specified(Index: Integer): boolean;
    procedure SetMIKMATERYAL_ADI(Index: Integer; const Astring: string);
    function  MIKMATERYAL_ADI_Specified(Index: Integer): boolean;
    procedure SetSONUCACIK(Index: Integer; const Astring: string);
    function  SONUCACIK_Specified(Index: Integer): boolean;
    procedure SetMIKROSKOBI(Index: Integer; const Astring: string);
    function  MIKROSKOBI_Specified(Index: Integer): boolean;
    procedure SetBOYAMA(Index: Integer; const Astring: string);
    function  BOYAMA_Specified(Index: Integer): boolean;
    procedure SetORGANIZMASONUCLIST(Index: Integer; const AArrayOfORGANIZMASONUC: ArrayOfORGANIZMASONUC);
    function  ORGANIZMASONUCLIST_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property UREME_DURUM:        UREME_DURUM_TIPI       read FUREME_DURUM write FUREME_DURUM;
    property SONUC:              string                 Index (IS_OPTN) read FSONUC write SetSONUC stored SONUC_Specified;
    property MIKALINYER_ADI:     string                 Index (IS_OPTN) read FMIKALINYER_ADI write SetMIKALINYER_ADI stored MIKALINYER_ADI_Specified;
    property MIKMATERYAL_ADI:    string                 Index (IS_OPTN) read FMIKMATERYAL_ADI write SetMIKMATERYAL_ADI stored MIKMATERYAL_ADI_Specified;
    property SONUCACIK:          string                 Index (IS_OPTN) read FSONUCACIK write SetSONUCACIK stored SONUCACIK_Specified;
    property MIKROSKOBI:         string                 Index (IS_OPTN) read FMIKROSKOBI write SetMIKROSKOBI stored MIKROSKOBI_Specified;
    property BOYAMA:             string                 Index (IS_OPTN) read FBOYAMA write SetBOYAMA stored BOYAMA_Specified;
    property ENFEKSIYON_DURUM:   ENFEKSIYON_TIPI        read FENFEKSIYON_DURUM write FENFEKSIYON_DURUM;
    property ORGANIZMASONUCLIST: ArrayOfORGANIZMASONUC  Index (IS_OPTN) read FORGANIZMASONUCLIST write SetORGANIZMASONUCLIST stored ORGANIZMASONUCLIST_Specified;
  end;

  ArrayOfADTSONUC = array of ADTSONUC;          { "http://tempuri.org/"[GblCplx] }


  // ************************************************************************ //
  // XML       : ORGANIZMASONUC, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  ORGANIZMASONUC = class(TRemotable)
  private
    FORGANIZMA_ADI: string;
    FORGANIZMA_ADI_Specified: boolean;
    FUREME_DUZEYI: string;
    FUREME_DUZEYI_Specified: boolean;
    FADTSONUCLIST: ArrayOfADTSONUC;
    FADTSONUCLIST_Specified: boolean;
    procedure SetORGANIZMA_ADI(Index: Integer; const Astring: string);
    function  ORGANIZMA_ADI_Specified(Index: Integer): boolean;
    procedure SetUREME_DUZEYI(Index: Integer; const Astring: string);
    function  UREME_DUZEYI_Specified(Index: Integer): boolean;
    procedure SetADTSONUCLIST(Index: Integer; const AArrayOfADTSONUC: ArrayOfADTSONUC);
    function  ADTSONUCLIST_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property ORGANIZMA_ADI: string           Index (IS_OPTN) read FORGANIZMA_ADI write SetORGANIZMA_ADI stored ORGANIZMA_ADI_Specified;
    property UREME_DUZEYI:  string           Index (IS_OPTN) read FUREME_DUZEYI write SetUREME_DUZEYI stored UREME_DUZEYI_Specified;
    property ADTSONUCLIST:  ArrayOfADTSONUC  Index (IS_OPTN) read FADTSONUCLIST write SetADTSONUCLIST stored ADTSONUCLIST_Specified;
  end;



  // ************************************************************************ //
  // XML       : ADTSONUC, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  ADTSONUC = class(TRemotable)
  private
    FANTIBIOGR_ADI: string;
    FANTIBIOGR_ADI_Specified: boolean;
    FANTIBIO_ADI: string;
    FANTIBIO_ADI_Specified: boolean;
    FSONUC: ADTSONUC_TIPI;
    FACIKLAMA: string;
    FACIKLAMA_Specified: boolean;
    FKONSANTRASYON: string;
    FKONSANTRASYON_Specified: boolean;
    FKONSANTRASYON_BIRIM: string;
    FKONSANTRASYON_BIRIM_Specified: boolean;
    procedure SetANTIBIOGR_ADI(Index: Integer; const Astring: string);
    function  ANTIBIOGR_ADI_Specified(Index: Integer): boolean;
    procedure SetANTIBIO_ADI(Index: Integer; const Astring: string);
    function  ANTIBIO_ADI_Specified(Index: Integer): boolean;
    procedure SetACIKLAMA(Index: Integer; const Astring: string);
    function  ACIKLAMA_Specified(Index: Integer): boolean;
    procedure SetKONSANTRASYON(Index: Integer; const Astring: string);
    function  KONSANTRASYON_Specified(Index: Integer): boolean;
    procedure SetKONSANTRASYON_BIRIM(Index: Integer; const Astring: string);
    function  KONSANTRASYON_BIRIM_Specified(Index: Integer): boolean;
  published
    property ANTIBIOGR_ADI:       string         Index (IS_OPTN) read FANTIBIOGR_ADI write SetANTIBIOGR_ADI stored ANTIBIOGR_ADI_Specified;
    property ANTIBIO_ADI:         string         Index (IS_OPTN) read FANTIBIO_ADI write SetANTIBIO_ADI stored ANTIBIO_ADI_Specified;
    property SONUC:               ADTSONUC_TIPI  read FSONUC write FSONUC;
    property ACIKLAMA:            string         Index (IS_OPTN) read FACIKLAMA write SetACIKLAMA stored ACIKLAMA_Specified;
    property KONSANTRASYON:       string         Index (IS_OPTN) read FKONSANTRASYON write SetKONSANTRASYON stored KONSANTRASYON_Specified;
    property KONSANTRASYON_BIRIM: string         Index (IS_OPTN) read FKONSANTRASYON_BIRIM write SetKONSANTRASYON_BIRIM stored KONSANTRASYON_BIRIM_Specified;
  end;

  ArrayOfIstem = array of Istem;                { "http://tempuri.org/"[GblCplx] }


  // ************************************************************************ //
  // XML       : IstemDurum, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  IstemDurum = class(TRemotable)
  private
    FislemSonuc: IslemSonuc;
    FislemSonuc_Specified: boolean;
    FIstemArr: ArrayOfIstem;
    FIstemArr_Specified: boolean;
    procedure SetislemSonuc(Index: Integer; const AIslemSonuc: IslemSonuc);
    function  islemSonuc_Specified(Index: Integer): boolean;
    procedure SetIstemArr(Index: Integer; const AArrayOfIstem: ArrayOfIstem);
    function  IstemArr_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property islemSonuc: IslemSonuc    Index (IS_OPTN) read FislemSonuc write SetislemSonuc stored islemSonuc_Specified;
    property IstemArr:   ArrayOfIstem  Index (IS_OPTN) read FIstemArr write SetIstemArr stored IstemArr_Specified;
  end;



  // ************************************************************************ //
  // XML       : Istem, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  Istem = class(TRemotable)
  private
    FTAKIPNO: string;
    FTAKIPNO_Specified: boolean;
    FORNEKNO: Integer;
    FTETKIK_KODU: string;
    FTETKIK_KODU_Specified: boolean;
    FTETKIK_KODU2: string;
    FTETKIK_KODU2_Specified: boolean;
    procedure SetTAKIPNO(Index: Integer; const Astring: string);
    function  TAKIPNO_Specified(Index: Integer): boolean;
    procedure SetTETKIK_KODU(Index: Integer; const Astring: string);
    function  TETKIK_KODU_Specified(Index: Integer): boolean;
    procedure SetTETKIK_KODU2(Index: Integer; const Astring: string);
    function  TETKIK_KODU2_Specified(Index: Integer): boolean;
  published
    property TAKIPNO:      string   Index (IS_OPTN) read FTAKIPNO write SetTAKIPNO stored TAKIPNO_Specified;
    property ORNEKNO:      Integer  read FORNEKNO write FORNEKNO;
    property TETKIK_KODU:  string   Index (IS_OPTN) read FTETKIK_KODU write SetTETKIK_KODU stored TETKIK_KODU_Specified;
    property TETKIK_KODU2: string   Index (IS_OPTN) read FTETKIK_KODU2 write SetTETKIK_KODU2 stored TETKIK_KODU2_Specified;
  end;



  // ************************************************************************ //
  // XML       : SaglayiciSonucDurum, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  SaglayiciSonucDurum = class(TRemotable)
  private
    FServisGrKodu: string;
    FServisGrKodu_Specified: boolean;
    FKurumGrKodu: string;
    FKurumGrKodu_Specified: boolean;
    FDoktorGrKodu: string;
    FDoktorGrKodu_Specified: boolean;
    FBasTar: string;
    FBasTar_Specified: boolean;
    FBitTar: string;
    FBitTar_Specified: boolean;
    FTestler: string;
    FTestler_Specified: boolean;
    FSonucDurumArr: ArrayOfSonucDurum;
    FSonucDurumArr_Specified: boolean;
    procedure SetServisGrKodu(Index: Integer; const Astring: string);
    function  ServisGrKodu_Specified(Index: Integer): boolean;
    procedure SetKurumGrKodu(Index: Integer; const Astring: string);
    function  KurumGrKodu_Specified(Index: Integer): boolean;
    procedure SetDoktorGrKodu(Index: Integer; const Astring: string);
    function  DoktorGrKodu_Specified(Index: Integer): boolean;
    procedure SetBasTar(Index: Integer; const Astring: string);
    function  BasTar_Specified(Index: Integer): boolean;
    procedure SetBitTar(Index: Integer; const Astring: string);
    function  BitTar_Specified(Index: Integer): boolean;
    procedure SetTestler(Index: Integer; const Astring: string);
    function  Testler_Specified(Index: Integer): boolean;
    procedure SetSonucDurumArr(Index: Integer; const AArrayOfSonucDurum: ArrayOfSonucDurum);
    function  SonucDurumArr_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property ServisGrKodu:  string             Index (IS_OPTN) read FServisGrKodu write SetServisGrKodu stored ServisGrKodu_Specified;
    property KurumGrKodu:   string             Index (IS_OPTN) read FKurumGrKodu write SetKurumGrKodu stored KurumGrKodu_Specified;
    property DoktorGrKodu:  string             Index (IS_OPTN) read FDoktorGrKodu write SetDoktorGrKodu stored DoktorGrKodu_Specified;
    property BasTar:        string             Index (IS_OPTN) read FBasTar write SetBasTar stored BasTar_Specified;
    property BitTar:        string             Index (IS_OPTN) read FBitTar write SetBitTar stored BitTar_Specified;
    property Testler:       string             Index (IS_OPTN) read FTestler write SetTestler stored Testler_Specified;
    property SonucDurumArr: ArrayOfSonucDurum  Index (IS_OPTN) read FSonucDurumArr write SetSonucDurumArr stored SonucDurumArr_Specified;
  end;



  // ************************************************************************ //
  // XML       : DiyalizSonucDurum, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  DiyalizSonucDurum = class(TRemotable)
  private
    FServisKodu: string;
    FServisKodu_Specified: boolean;
    FKurumKodu: string;
    FKurumKodu_Specified: boolean;
    FBasTar: string;
    FBasTar_Specified: boolean;
    FBitTar: string;
    FBitTar_Specified: boolean;
    FTestler: string;
    FTestler_Specified: boolean;
    FSonucDurumArr: ArrayOfSonucDurum;
    FSonucDurumArr_Specified: boolean;
    procedure SetServisKodu(Index: Integer; const Astring: string);
    function  ServisKodu_Specified(Index: Integer): boolean;
    procedure SetKurumKodu(Index: Integer; const Astring: string);
    function  KurumKodu_Specified(Index: Integer): boolean;
    procedure SetBasTar(Index: Integer; const Astring: string);
    function  BasTar_Specified(Index: Integer): boolean;
    procedure SetBitTar(Index: Integer; const Astring: string);
    function  BitTar_Specified(Index: Integer): boolean;
    procedure SetTestler(Index: Integer; const Astring: string);
    function  Testler_Specified(Index: Integer): boolean;
    procedure SetSonucDurumArr(Index: Integer; const AArrayOfSonucDurum: ArrayOfSonucDurum);
    function  SonucDurumArr_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property ServisKodu:    string             Index (IS_OPTN) read FServisKodu write SetServisKodu stored ServisKodu_Specified;
    property KurumKodu:     string             Index (IS_OPTN) read FKurumKodu write SetKurumKodu stored KurumKodu_Specified;
    property BasTar:        string             Index (IS_OPTN) read FBasTar write SetBasTar stored BasTar_Specified;
    property BitTar:        string             Index (IS_OPTN) read FBitTar write SetBitTar stored BitTar_Specified;
    property Testler:       string             Index (IS_OPTN) read FTestler write SetTestler stored Testler_Specified;
    property SonucDurumArr: ArrayOfSonucDurum  Index (IS_OPTN) read FSonucDurumArr write SetSonucDurumArr stored SonucDurumArr_Specified;
  end;

  ArrayOfKayitDurum = array of KayitDurum;      { "http://tempuri.org/"[GblCplx] }


  // ************************************************************************ //
  // XML       : KayitSorgulaDurum, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  KayitSorgulaDurum = class(TRemotable)
  private
    FislemSonuc: IslemSonuc;
    FislemSonuc_Specified: boolean;
    FKayitDurumArr: ArrayOfKayitDurum;
    FKayitDurumArr_Specified: boolean;
    procedure SetislemSonuc(Index: Integer; const AIslemSonuc: IslemSonuc);
    function  islemSonuc_Specified(Index: Integer): boolean;
    procedure SetKayitDurumArr(Index: Integer; const AArrayOfKayitDurum: ArrayOfKayitDurum);
    function  KayitDurumArr_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property islemSonuc:    IslemSonuc         Index (IS_OPTN) read FislemSonuc write SetislemSonuc stored islemSonuc_Specified;
    property KayitDurumArr: ArrayOfKayitDurum  Index (IS_OPTN) read FKayitDurumArr write SetKayitDurumArr stored KayitDurumArr_Specified;
  end;



  // ************************************************************************ //
  // XML       : KayitDurum, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  KayitDurum = class(TRemotable)
  private
    FISTEM_TARIHI: string;
    FISTEM_TARIHI_Specified: boolean;
    FTC_KIMLIKNO: string;
    FTC_KIMLIKNO_Specified: boolean;
    FDOSYA_NO: string;
    FDOSYA_NO_Specified: boolean;
    FGELIS_NO: string;
    FGELIS_NO_Specified: boolean;
    FORNEKNO: Integer;
    FHASTA_ADI: string;
    FHASTA_ADI_Specified: boolean;
    FHASTA_SOYADI: string;
    FHASTA_SOYADI_Specified: boolean;
    FCINSIYET: CINSIYET_TIPI;
    FDOGUM_TARIHI: string;
    FDOGUM_TARIHI_Specified: boolean;
    FDOGUM_YERI: string;
    FDOGUM_YERI_Specified: boolean;
    FBABA_ADI: string;
    FBABA_ADI_Specified: boolean;
    FANA_ADI: string;
    FANA_ADI_Specified: boolean;
    FACIL: ACIL_TIPI;
    FYATAN: YATAN_TIPI;
    FKURUM_KODU: string;
    FKURUM_KODU_Specified: boolean;
    FKURUM_ADI: string;
    FKURUM_ADI_Specified: boolean;
    FSERVIS_KODU: string;
    FSERVIS_KODU_Specified: boolean;
    FSERVIS_ADI: string;
    FSERVIS_ADI_Specified: boolean;
    FSERPOL: SERPOL_TIPI;
    FDOKTOR_KODU: string;
    FDOKTOR_KODU_Specified: boolean;
    FDOKTOR_ADI: string;
    FDOKTOR_ADI_Specified: boolean;
    FDOKTOR_SOYADI: string;
    FDOKTOR_SOYADI_Specified: boolean;
    FDOKTOR_SICIL_NO: string;
    FDOKTOR_SICIL_NO_Specified: boolean;
    FTANI_KODU: string;
    FTANI_KODU_Specified: boolean;
    FTANI_ADI: string;
    FTANI_ADI_Specified: boolean;
    FACIKLAMA: string;
    FACIKLAMA_Specified: boolean;
    FTEL: string;
    FTEL_Specified: boolean;
    FTEL2: string;
    FTEL2_Specified: boolean;
    FMOBILTEL: string;
    FMOBILTEL_Specified: boolean;
    FEPOSTA: string;
    FEPOSTA_Specified: boolean;
    FOZELKOD1: string;
    FOZELKOD1_Specified: boolean;
    FOZELKOD2: string;
    FOZELKOD2_Specified: boolean;
    FOZELKOD3: string;
    FOZELKOD3_Specified: boolean;
    FOZELKOD4: string;
    FOZELKOD4_Specified: boolean;
    FOZELKOD5: string;
    FOZELKOD5_Specified: boolean;
    FTETKIKLER: string;
    FTETKIKLER_Specified: boolean;
    procedure SetISTEM_TARIHI(Index: Integer; const Astring: string);
    function  ISTEM_TARIHI_Specified(Index: Integer): boolean;
    procedure SetTC_KIMLIKNO(Index: Integer; const Astring: string);
    function  TC_KIMLIKNO_Specified(Index: Integer): boolean;
    procedure SetDOSYA_NO(Index: Integer; const Astring: string);
    function  DOSYA_NO_Specified(Index: Integer): boolean;
    procedure SetGELIS_NO(Index: Integer; const Astring: string);
    function  GELIS_NO_Specified(Index: Integer): boolean;
    procedure SetHASTA_ADI(Index: Integer; const Astring: string);
    function  HASTA_ADI_Specified(Index: Integer): boolean;
    procedure SetHASTA_SOYADI(Index: Integer; const Astring: string);
    function  HASTA_SOYADI_Specified(Index: Integer): boolean;
    procedure SetDOGUM_TARIHI(Index: Integer; const Astring: string);
    function  DOGUM_TARIHI_Specified(Index: Integer): boolean;
    procedure SetDOGUM_YERI(Index: Integer; const Astring: string);
    function  DOGUM_YERI_Specified(Index: Integer): boolean;
    procedure SetBABA_ADI(Index: Integer; const Astring: string);
    function  BABA_ADI_Specified(Index: Integer): boolean;
    procedure SetANA_ADI(Index: Integer; const Astring: string);
    function  ANA_ADI_Specified(Index: Integer): boolean;
    procedure SetKURUM_KODU(Index: Integer; const Astring: string);
    function  KURUM_KODU_Specified(Index: Integer): boolean;
    procedure SetKURUM_ADI(Index: Integer; const Astring: string);
    function  KURUM_ADI_Specified(Index: Integer): boolean;
    procedure SetSERVIS_KODU(Index: Integer; const Astring: string);
    function  SERVIS_KODU_Specified(Index: Integer): boolean;
    procedure SetSERVIS_ADI(Index: Integer; const Astring: string);
    function  SERVIS_ADI_Specified(Index: Integer): boolean;
    procedure SetDOKTOR_KODU(Index: Integer; const Astring: string);
    function  DOKTOR_KODU_Specified(Index: Integer): boolean;
    procedure SetDOKTOR_ADI(Index: Integer; const Astring: string);
    function  DOKTOR_ADI_Specified(Index: Integer): boolean;
    procedure SetDOKTOR_SOYADI(Index: Integer; const Astring: string);
    function  DOKTOR_SOYADI_Specified(Index: Integer): boolean;
    procedure SetDOKTOR_SICIL_NO(Index: Integer; const Astring: string);
    function  DOKTOR_SICIL_NO_Specified(Index: Integer): boolean;
    procedure SetTANI_KODU(Index: Integer; const Astring: string);
    function  TANI_KODU_Specified(Index: Integer): boolean;
    procedure SetTANI_ADI(Index: Integer; const Astring: string);
    function  TANI_ADI_Specified(Index: Integer): boolean;
    procedure SetACIKLAMA(Index: Integer; const Astring: string);
    function  ACIKLAMA_Specified(Index: Integer): boolean;
    procedure SetTEL(Index: Integer; const Astring: string);
    function  TEL_Specified(Index: Integer): boolean;
    procedure SetTEL2(Index: Integer; const Astring: string);
    function  TEL2_Specified(Index: Integer): boolean;
    procedure SetMOBILTEL(Index: Integer; const Astring: string);
    function  MOBILTEL_Specified(Index: Integer): boolean;
    procedure SetEPOSTA(Index: Integer; const Astring: string);
    function  EPOSTA_Specified(Index: Integer): boolean;
    procedure SetOZELKOD1(Index: Integer; const Astring: string);
    function  OZELKOD1_Specified(Index: Integer): boolean;
    procedure SetOZELKOD2(Index: Integer; const Astring: string);
    function  OZELKOD2_Specified(Index: Integer): boolean;
    procedure SetOZELKOD3(Index: Integer; const Astring: string);
    function  OZELKOD3_Specified(Index: Integer): boolean;
    procedure SetOZELKOD4(Index: Integer; const Astring: string);
    function  OZELKOD4_Specified(Index: Integer): boolean;
    procedure SetOZELKOD5(Index: Integer; const Astring: string);
    function  OZELKOD5_Specified(Index: Integer): boolean;
    procedure SetTETKIKLER(Index: Integer; const Astring: string);
    function  TETKIKLER_Specified(Index: Integer): boolean;
  published
    property ISTEM_TARIHI:    string         Index (IS_OPTN) read FISTEM_TARIHI write SetISTEM_TARIHI stored ISTEM_TARIHI_Specified;
    property TC_KIMLIKNO:     string         Index (IS_OPTN) read FTC_KIMLIKNO write SetTC_KIMLIKNO stored TC_KIMLIKNO_Specified;
    property DOSYA_NO:        string         Index (IS_OPTN) read FDOSYA_NO write SetDOSYA_NO stored DOSYA_NO_Specified;
    property GELIS_NO:        string         Index (IS_OPTN) read FGELIS_NO write SetGELIS_NO stored GELIS_NO_Specified;
    property ORNEKNO:         Integer        read FORNEKNO write FORNEKNO;
    property HASTA_ADI:       string         Index (IS_OPTN) read FHASTA_ADI write SetHASTA_ADI stored HASTA_ADI_Specified;
    property HASTA_SOYADI:    string         Index (IS_OPTN) read FHASTA_SOYADI write SetHASTA_SOYADI stored HASTA_SOYADI_Specified;
    property CINSIYET:        CINSIYET_TIPI  read FCINSIYET write FCINSIYET;
    property DOGUM_TARIHI:    string         Index (IS_OPTN) read FDOGUM_TARIHI write SetDOGUM_TARIHI stored DOGUM_TARIHI_Specified;
    property DOGUM_YERI:      string         Index (IS_OPTN) read FDOGUM_YERI write SetDOGUM_YERI stored DOGUM_YERI_Specified;
    property BABA_ADI:        string         Index (IS_OPTN) read FBABA_ADI write SetBABA_ADI stored BABA_ADI_Specified;
    property ANA_ADI:         string         Index (IS_OPTN) read FANA_ADI write SetANA_ADI stored ANA_ADI_Specified;
    property ACIL:            ACIL_TIPI      read FACIL write FACIL;
    property YATAN:           YATAN_TIPI     read FYATAN write FYATAN;
    property KURUM_KODU:      string         Index (IS_OPTN) read FKURUM_KODU write SetKURUM_KODU stored KURUM_KODU_Specified;
    property KURUM_ADI:       string         Index (IS_OPTN) read FKURUM_ADI write SetKURUM_ADI stored KURUM_ADI_Specified;
    property SERVIS_KODU:     string         Index (IS_OPTN) read FSERVIS_KODU write SetSERVIS_KODU stored SERVIS_KODU_Specified;
    property SERVIS_ADI:      string         Index (IS_OPTN) read FSERVIS_ADI write SetSERVIS_ADI stored SERVIS_ADI_Specified;
    property SERPOL:          SERPOL_TIPI    read FSERPOL write FSERPOL;
    property DOKTOR_KODU:     string         Index (IS_OPTN) read FDOKTOR_KODU write SetDOKTOR_KODU stored DOKTOR_KODU_Specified;
    property DOKTOR_ADI:      string         Index (IS_OPTN) read FDOKTOR_ADI write SetDOKTOR_ADI stored DOKTOR_ADI_Specified;
    property DOKTOR_SOYADI:   string         Index (IS_OPTN) read FDOKTOR_SOYADI write SetDOKTOR_SOYADI stored DOKTOR_SOYADI_Specified;
    property DOKTOR_SICIL_NO: string         Index (IS_OPTN) read FDOKTOR_SICIL_NO write SetDOKTOR_SICIL_NO stored DOKTOR_SICIL_NO_Specified;
    property TANI_KODU:       string         Index (IS_OPTN) read FTANI_KODU write SetTANI_KODU stored TANI_KODU_Specified;
    property TANI_ADI:        string         Index (IS_OPTN) read FTANI_ADI write SetTANI_ADI stored TANI_ADI_Specified;
    property ACIKLAMA:        string         Index (IS_OPTN) read FACIKLAMA write SetACIKLAMA stored ACIKLAMA_Specified;
    property TEL:             string         Index (IS_OPTN) read FTEL write SetTEL stored TEL_Specified;
    property TEL2:            string         Index (IS_OPTN) read FTEL2 write SetTEL2 stored TEL2_Specified;
    property MOBILTEL:        string         Index (IS_OPTN) read FMOBILTEL write SetMOBILTEL stored MOBILTEL_Specified;
    property EPOSTA:          string         Index (IS_OPTN) read FEPOSTA write SetEPOSTA stored EPOSTA_Specified;
    property OZELKOD1:        string         Index (IS_OPTN) read FOZELKOD1 write SetOZELKOD1 stored OZELKOD1_Specified;
    property OZELKOD2:        string         Index (IS_OPTN) read FOZELKOD2 write SetOZELKOD2 stored OZELKOD2_Specified;
    property OZELKOD3:        string         Index (IS_OPTN) read FOZELKOD3 write SetOZELKOD3 stored OZELKOD3_Specified;
    property OZELKOD4:        string         Index (IS_OPTN) read FOZELKOD4 write SetOZELKOD4 stored OZELKOD4_Specified;
    property OZELKOD5:        string         Index (IS_OPTN) read FOZELKOD5 write SetOZELKOD5 stored OZELKOD5_Specified;
    property TETKIKLER:       string         Index (IS_OPTN) read FTETKIKLER write SetTETKIKLER stored TETKIKLER_Specified;
  end;



  // ************************************************************************ //
  // XML       : OrnekKayitSorgulaDurum, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  OrnekKayitSorgulaDurum = class(TRemotable)
  private
    FislemSonuc: IslemSonuc;
    FislemSonuc_Specified: boolean;
    FKatsayi: Integer;
    FTetkikTur: string;
    FTetkikTur_Specified: boolean;
    FKayitDurumArr: ArrayOfKayitDurum;
    FKayitDurumArr_Specified: boolean;
    procedure SetislemSonuc(Index: Integer; const AIslemSonuc: IslemSonuc);
    function  islemSonuc_Specified(Index: Integer): boolean;
    procedure SetTetkikTur(Index: Integer; const Astring: string);
    function  TetkikTur_Specified(Index: Integer): boolean;
    procedure SetKayitDurumArr(Index: Integer; const AArrayOfKayitDurum: ArrayOfKayitDurum);
    function  KayitDurumArr_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property islemSonuc:    IslemSonuc         Index (IS_OPTN) read FislemSonuc write SetislemSonuc stored islemSonuc_Specified;
    property Katsayi:       Integer            read FKatsayi write FKatsayi;
    property TetkikTur:     string             Index (IS_OPTN) read FTetkikTur write SetTetkikTur stored TetkikTur_Specified;
    property KayitDurumArr: ArrayOfKayitDurum  Index (IS_OPTN) read FKayitDurumArr write SetKayitDurumArr stored KayitDurumArr_Specified;
  end;



  // ************************************************************************ //
  // XML       : DoktorBilgi, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  DoktorBilgi = class(TRemotable)
  private
    FDOKTOR_KODU: string;
    FDOKTOR_KODU_Specified: boolean;
    FDOKTOR_ADI: string;
    FDOKTOR_ADI_Specified: boolean;
    FDOKTOR_SOYADI: string;
    FDOKTOR_SOYADI_Specified: boolean;
    FDOKTOR_TC_KIMLIKNO: string;
    FDOKTOR_TC_KIMLIKNO_Specified: boolean;
    FDOKTOR_TESCIL: string;
    FDOKTOR_TESCIL_Specified: boolean;
    FDOKTOR_SICIL: string;
    FDOKTOR_SICIL_Specified: boolean;
    procedure SetDOKTOR_KODU(Index: Integer; const Astring: string);
    function  DOKTOR_KODU_Specified(Index: Integer): boolean;
    procedure SetDOKTOR_ADI(Index: Integer; const Astring: string);
    function  DOKTOR_ADI_Specified(Index: Integer): boolean;
    procedure SetDOKTOR_SOYADI(Index: Integer; const Astring: string);
    function  DOKTOR_SOYADI_Specified(Index: Integer): boolean;
    procedure SetDOKTOR_TC_KIMLIKNO(Index: Integer; const Astring: string);
    function  DOKTOR_TC_KIMLIKNO_Specified(Index: Integer): boolean;
    procedure SetDOKTOR_TESCIL(Index: Integer; const Astring: string);
    function  DOKTOR_TESCIL_Specified(Index: Integer): boolean;
    procedure SetDOKTOR_SICIL(Index: Integer; const Astring: string);
    function  DOKTOR_SICIL_Specified(Index: Integer): boolean;
  published
    property DOKTOR_KODU:        string  Index (IS_OPTN) read FDOKTOR_KODU write SetDOKTOR_KODU stored DOKTOR_KODU_Specified;
    property DOKTOR_ADI:         string  Index (IS_OPTN) read FDOKTOR_ADI write SetDOKTOR_ADI stored DOKTOR_ADI_Specified;
    property DOKTOR_SOYADI:      string  Index (IS_OPTN) read FDOKTOR_SOYADI write SetDOKTOR_SOYADI stored DOKTOR_SOYADI_Specified;
    property DOKTOR_TC_KIMLIKNO: string  Index (IS_OPTN) read FDOKTOR_TC_KIMLIKNO write SetDOKTOR_TC_KIMLIKNO stored DOKTOR_TC_KIMLIKNO_Specified;
    property DOKTOR_TESCIL:      string  Index (IS_OPTN) read FDOKTOR_TESCIL write SetDOKTOR_TESCIL stored DOKTOR_TESCIL_Specified;
    property DOKTOR_SICIL:       string  Index (IS_OPTN) read FDOKTOR_SICIL write SetDOKTOR_SICIL stored DOKTOR_SICIL_Specified;
  end;



  // ************************************************************************ //
  // XML       : BarkodTanim, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  BarkodTanim = class(TRemotable)
  private
    FTANIM_NO: Integer;
    FTANIM_ACIK: string;
    FTANIM_ACIK_Specified: boolean;
    FACIKLAMA1XKOOR: Integer;
    FACIKLAMA1YKOOR: Integer;
    FACIKLAMA2XKOOR: Integer;
    FACIKLAMA2YKOOR: Integer;
    FACIKLAMAACI: string;
    FACIKLAMAACI_Specified: boolean;
    FACIKLAMADUSEYBUYUTME: string;
    FACIKLAMADUSEYBUYUTME_Specified: boolean;
    FACIKLAMAFONT: string;
    FACIKLAMAFONT_Specified: boolean;
    FACIKLAMAYATAYBUYUTME: string;
    FACIKLAMAYATAYBUYUTME_Specified: boolean;
    FACIKLAMAYAZDIR: string;
    FACIKLAMAYAZDIR_Specified: boolean;
    FANGLEOFBARKOD: Integer;
    FB1BARCODEHEIGHT: Integer;
    FB1BARCODEINCDECTYPE: string;
    FB1BARCODEINCDECTYPE_Specified: boolean;
    FB1BARCODEINCDECVALUE: Integer;
    FB1BARCODEUNDERPRINT: Integer;
    FB1CHECKDIGITTYPE: Integer;
    FB1ONEMODULEWIDTH: Integer;
    FB2BARCODEHEIGHT: Integer;
    FB2BARCODEINCDECTYPE: string;
    FB2BARCODEINCDECTYPE_Specified: boolean;
    FB2BARCODEINCDECVALUE: Integer;
    FB2BARCODEUNDERPRINT: Integer;
    FB2CHECKDIGITTYPE: Integer;
    FB2CHTOCHSPACEWIDTH: Integer;
    FB2NARROWBARWIDTH: Integer;
    FB2NARROWSPACEWIDTH: Integer;
    FB2STARTSTOPCODEATTACH: string;
    FB2STARTSTOPCODEATTACH_Specified: boolean;
    FB2SUPPRESSEDZERONO: Integer;
    FB2WIDEBARWIDTH: Integer;
    FB2WIDESPACEWIDTH: Integer;
    FB3ECCTYPE: string;
    FB3ECCTYPE_Specified: boolean;
    FB3FORMATID: string;
    FB3FORMATID_Specified: boolean;
    FB3ONRCELLWIDTH: Integer;
    FB4BARHEIGHT: Integer;
    FB4NUMBEROFCOLUMNS: Integer;
    FB4ONEMODULEWIDTH: Integer;
    FB4SECURITYLEVEL: string;
    FB4SECURITYLEVEL_Specified: boolean;
    FB5ERRORCORRECTIONLEVEL: string;
    FB5ERRORCORRECTIONLEVEL_Specified: boolean;
    FB5MODESELECTION: string;
    FB5MODESELECTION_Specified: boolean;
    FB5ONECELLWIDTH: Integer;
    FB6MODESELECTION: string;
    FB6MODESELECTION_Specified: boolean;
    FB7ECCLEVEL: string;
    FB7ECCLEVEL_Specified: boolean;
    FB7NOOFCHARBITS: string;
    FB7NOOFCHARBITS_Specified: boolean;
    FB7ONRCELLWIDTH: Integer;
    FBARCODEKOORX: Integer;
    FBARCODEKOORY: Integer;
    FBARCODETYPE: string;
    FBARCODETYPE_Specified: boolean;
    FBARKODNUMARASIACI: string;
    FBARKODNUMARASIACI_Specified: boolean;
    FBNUMDUSEYBUYUTME: string;
    FBNUMDUSEYBUYUTME_Specified: boolean;
    FBARKODNUMARASIFONT: string;
    FBARKODNUMARASIFONT_Specified: boolean;
    FBARKODNUMARASIXKOOR: Integer;
    FBNUMYATAYBUYUTME: string;
    FBNUMYATAYBUYUTME_Specified: boolean;
    FBARKODNUMARASIYAZDIR: string;
    FBARKODNUMARASIYAZDIR_Specified: boolean;
    FBARKODNUMARASIYKOOR: Integer;
    FBASILACAKETIKETSAYISI: Integer;
    FBASKIHIZI: Integer;
    FBASKIMODU: string;
    FBASKIMODU_Specified: boolean;
    FBOUDRATE: Integer;
    FCOMPORT: string;
    FCOMPORT_Specified: boolean;
    FDARKERLIGHTER: string;
    FDARKERLIGHTER_Specified: boolean;
    FDATABIT: Integer;
    FEFFECTIVEPRINTLENGTH: Integer;
    FEFFECTIVEPRINTWIDTH: Integer;
    FFORWARDREVERSE: string;
    FFORWARDREVERSE_Specified: boolean;
    FKAGITKESMEARALIGI: Integer;
    FLABELHEIGHT: Integer;
    FLABELWIDTH: Integer;
    FNUMBEROFLABELCOL: Integer;
    FNUMBEROFLABELLINE: Integer;
    FPAPERFEED: Integer;
    FPARITY: string;
    FPARITY_Specified: boolean;
    FPITCHLENGHTOFLABEL: Integer;
    FPRINTDENSITY: Integer;
    FRIBBON: string;
    FRIBBON_Specified: boolean;
    FSENSORTIPI: string;
    FSENSORTIPI_Specified: boolean;
    FACIKLAMA4ACI: string;
    FACIKLAMA4ACI_Specified: boolean;
    FACIKLAMA4DUSEYBUYUTME: string;
    FACIKLAMA4DUSEYBUYUTME_Specified: boolean;
    FACIKLAMA4FONT: string;
    FACIKLAMA4FONT_Specified: boolean;
    FACIKLAMA4XKOOR: Integer;
    FACIKLAMA4YATAYBUYUTME: string;
    FACIKLAMA4YATAYBUYUTME_Specified: boolean;
    FACIKLAMA4YAZDIR: string;
    FACIKLAMA4YAZDIR_Specified: boolean;
    FACIKLAMA4YKOOR: Integer;
    FACIKLAMA3ACI: string;
    FACIKLAMA3ACI_Specified: boolean;
    FACIKLAMA3DUSEYBUYUTME: string;
    FACIKLAMA3DUSEYBUYUTME_Specified: boolean;
    FACIKLAMA3FONT: string;
    FACIKLAMA3FONT_Specified: boolean;
    FACIKLAMA3XKOOR: Integer;
    FACIKLAMA3YATAYBUYUTME: string;
    FACIKLAMA3YATAYBUYUTME_Specified: boolean;
    FACIKLAMA3YAZDIR: string;
    FACIKLAMA3YAZDIR_Specified: boolean;
    FACIKLAMA3YKOOR: Integer;
    FSTOPBIT: Integer;
    FTHERMAL: string;
    FTHERMAL_Specified: boolean;
    FACIKLAMA2ACI: string;
    FACIKLAMA2ACI_Specified: boolean;
    FACIKLAMA2DUSEYBUYUTME: string;
    FACIKLAMA2DUSEYBUYUTME_Specified: boolean;
    FACIKLAMA2FONT: string;
    FACIKLAMA2FONT_Specified: boolean;
    FACIKLAMA2YATAYBUYUTME: string;
    FACIKLAMA2YATAYBUYUTME_Specified: boolean;
    FACIKLAMA2YAZDIR: string;
    FACIKLAMA2YAZDIR_Specified: boolean;
    FBARKOD_YAZICISI: string;
    FBARKOD_YAZICISI_Specified: boolean;
    FACIKLAMA5ACI: string;
    FACIKLAMA5ACI_Specified: boolean;
    FACIKLAMA5DUSEYBUYUTME: string;
    FACIKLAMA5DUSEYBUYUTME_Specified: boolean;
    FACIKLAMA5FONT: string;
    FACIKLAMA5FONT_Specified: boolean;
    FACIKLAMA5XKOOR: Integer;
    FACIKLAMA5YATAYBUYUTME: string;
    FACIKLAMA5YATAYBUYUTME_Specified: boolean;
    FACIKLAMA5YAZDIR: string;
    FACIKLAMA5YAZDIR_Specified: boolean;
    FACIKLAMA5YKOOR: Integer;
    FACIKLAMA6ACI: string;
    FACIKLAMA6ACI_Specified: boolean;
    FACIKLAMA6DUSEYBUYUTME: string;
    FACIKLAMA6DUSEYBUYUTME_Specified: boolean;
    FACIKLAMA6FONT: string;
    FACIKLAMA6FONT_Specified: boolean;
    FACIKLAMA6XKOOR: Integer;
    FACIKLAMA6YATAYBUYUTME: string;
    FACIKLAMA6YATAYBUYUTME_Specified: boolean;
    FACIKLAMA6YAZDIR: string;
    FACIKLAMA6YAZDIR_Specified: boolean;
    FACIKLAMA6YKOOR: Integer;
    FACIKLAMA7XKOOR: Integer;
    FACIKLAMA7YKOOR: Integer;
    FACIKLAMA7FONT: string;
    FACIKLAMA7FONT_Specified: boolean;
    FACIKLAMA7YATAYBUYUTME: string;
    FACIKLAMA7YATAYBUYUTME_Specified: boolean;
    FACIKLAMA7DUSEYBUYUTME: string;
    FACIKLAMA7DUSEYBUYUTME_Specified: boolean;
    FACIKLAMA7ACI: string;
    FACIKLAMA7ACI_Specified: boolean;
    FACIKLAMA7YAZDIR: string;
    FACIKLAMA7YAZDIR_Specified: boolean;
    FACIKLAMA8XKOOR: Integer;
    FACIKLAMA8YKOOR: Integer;
    FACIKLAMA8FONT: string;
    FACIKLAMA8FONT_Specified: boolean;
    FACIKLAMA8YATAYBUYUTME: string;
    FACIKLAMA8YATAYBUYUTME_Specified: boolean;
    FACIKLAMA8DUSEYBUYUTME: string;
    FACIKLAMA8DUSEYBUYUTME_Specified: boolean;
    FACIKLAMA8ACI: string;
    FACIKLAMA8ACI_Specified: boolean;
    FACIKLAMA8YAZDIR: string;
    FACIKLAMA8YAZDIR_Specified: boolean;
    FACIKLAMA9XKOOR: Integer;
    FACIKLAMA9YKOOR: Integer;
    FACIKLAMA9FONT: string;
    FACIKLAMA9FONT_Specified: boolean;
    FACIKLAMA9YATAYBUYUTME: string;
    FACIKLAMA9YATAYBUYUTME_Specified: boolean;
    FACIKLAMA9DUSEYBUYUTME: string;
    FACIKLAMA9DUSEYBUYUTME_Specified: boolean;
    FACIKLAMA9ACI: string;
    FACIKLAMA9ACI_Specified: boolean;
    FACIKLAMA9YAZDIR: string;
    FACIKLAMA9YAZDIR_Specified: boolean;
    FACIKLAMA10XKOOR: Integer;
    FACIKLAMA10YKOOR: Integer;
    FACIKLAMA10FONT: string;
    FACIKLAMA10FONT_Specified: boolean;
    FACIKLAMA10YATAYBUYUTME: string;
    FACIKLAMA10YATAYBUYUTME_Specified: boolean;
    FACIKLAMA10DUSEYBUYUTME: string;
    FACIKLAMA10DUSEYBUYUTME_Specified: boolean;
    FACIKLAMA10ACI: string;
    FACIKLAMA10ACI_Specified: boolean;
    FACIKLAMA10YAZDIR: string;
    FACIKLAMA10YAZDIR_Specified: boolean;
    FBARKODNOREVFONT: string;
    FBARKODNOREVFONT_Specified: boolean;
    FACIK1REVFONT: string;
    FACIK1REVFONT_Specified: boolean;
    FACIK2REVFONT: string;
    FACIK2REVFONT_Specified: boolean;
    FACIK3REVFONT: string;
    FACIK3REVFONT_Specified: boolean;
    FACIK4REVFONT: string;
    FACIK4REVFONT_Specified: boolean;
    FACIK5REVFONT: string;
    FACIK5REVFONT_Specified: boolean;
    FACIK6REVFONT: string;
    FACIK6REVFONT_Specified: boolean;
    FACIK7REVFONT: string;
    FACIK7REVFONT_Specified: boolean;
    FACIK8REVFONT: string;
    FACIK8REVFONT_Specified: boolean;
    FACIK9REVFONT: string;
    FACIK9REVFONT_Specified: boolean;
    FACIK10REVFONT: string;
    FACIK10REVFONT_Specified: boolean;
    FYAZICI_IP: string;
    FYAZICI_IP_Specified: boolean;
    FYAZICI_PORT: Integer;
    FBASKI_ONCESI: string;
    FBASKI_ONCESI_Specified: boolean;
    FBASKI_SONRASI: string;
    FBASKI_SONRASI_Specified: boolean;
    FislemSonuc: IslemSonuc;
    FislemSonuc_Specified: boolean;
    procedure SetTANIM_ACIK(Index: Integer; const Astring: string);
    function  TANIM_ACIK_Specified(Index: Integer): boolean;
    procedure SetACIKLAMAACI(Index: Integer; const Astring: string);
    function  ACIKLAMAACI_Specified(Index: Integer): boolean;
    procedure SetACIKLAMADUSEYBUYUTME(Index: Integer; const Astring: string);
    function  ACIKLAMADUSEYBUYUTME_Specified(Index: Integer): boolean;
    procedure SetACIKLAMAFONT(Index: Integer; const Astring: string);
    function  ACIKLAMAFONT_Specified(Index: Integer): boolean;
    procedure SetACIKLAMAYATAYBUYUTME(Index: Integer; const Astring: string);
    function  ACIKLAMAYATAYBUYUTME_Specified(Index: Integer): boolean;
    procedure SetACIKLAMAYAZDIR(Index: Integer; const Astring: string);
    function  ACIKLAMAYAZDIR_Specified(Index: Integer): boolean;
    procedure SetB1BARCODEINCDECTYPE(Index: Integer; const Astring: string);
    function  B1BARCODEINCDECTYPE_Specified(Index: Integer): boolean;
    procedure SetB2BARCODEINCDECTYPE(Index: Integer; const Astring: string);
    function  B2BARCODEINCDECTYPE_Specified(Index: Integer): boolean;
    procedure SetB2STARTSTOPCODEATTACH(Index: Integer; const Astring: string);
    function  B2STARTSTOPCODEATTACH_Specified(Index: Integer): boolean;
    procedure SetB3ECCTYPE(Index: Integer; const Astring: string);
    function  B3ECCTYPE_Specified(Index: Integer): boolean;
    procedure SetB3FORMATID(Index: Integer; const Astring: string);
    function  B3FORMATID_Specified(Index: Integer): boolean;
    procedure SetB4SECURITYLEVEL(Index: Integer; const Astring: string);
    function  B4SECURITYLEVEL_Specified(Index: Integer): boolean;
    procedure SetB5ERRORCORRECTIONLEVEL(Index: Integer; const Astring: string);
    function  B5ERRORCORRECTIONLEVEL_Specified(Index: Integer): boolean;
    procedure SetB5MODESELECTION(Index: Integer; const Astring: string);
    function  B5MODESELECTION_Specified(Index: Integer): boolean;
    procedure SetB6MODESELECTION(Index: Integer; const Astring: string);
    function  B6MODESELECTION_Specified(Index: Integer): boolean;
    procedure SetB7ECCLEVEL(Index: Integer; const Astring: string);
    function  B7ECCLEVEL_Specified(Index: Integer): boolean;
    procedure SetB7NOOFCHARBITS(Index: Integer; const Astring: string);
    function  B7NOOFCHARBITS_Specified(Index: Integer): boolean;
    procedure SetBARCODETYPE(Index: Integer; const Astring: string);
    function  BARCODETYPE_Specified(Index: Integer): boolean;
    procedure SetBARKODNUMARASIACI(Index: Integer; const Astring: string);
    function  BARKODNUMARASIACI_Specified(Index: Integer): boolean;
    procedure SetBNUMDUSEYBUYUTME(Index: Integer; const Astring: string);
    function  BNUMDUSEYBUYUTME_Specified(Index: Integer): boolean;
    procedure SetBARKODNUMARASIFONT(Index: Integer; const Astring: string);
    function  BARKODNUMARASIFONT_Specified(Index: Integer): boolean;
    procedure SetBNUMYATAYBUYUTME(Index: Integer; const Astring: string);
    function  BNUMYATAYBUYUTME_Specified(Index: Integer): boolean;
    procedure SetBARKODNUMARASIYAZDIR(Index: Integer; const Astring: string);
    function  BARKODNUMARASIYAZDIR_Specified(Index: Integer): boolean;
    procedure SetBASKIMODU(Index: Integer; const Astring: string);
    function  BASKIMODU_Specified(Index: Integer): boolean;
    procedure SetCOMPORT(Index: Integer; const Astring: string);
    function  COMPORT_Specified(Index: Integer): boolean;
    procedure SetDARKERLIGHTER(Index: Integer; const Astring: string);
    function  DARKERLIGHTER_Specified(Index: Integer): boolean;
    procedure SetFORWARDREVERSE(Index: Integer; const Astring: string);
    function  FORWARDREVERSE_Specified(Index: Integer): boolean;
    procedure SetPARITY(Index: Integer; const Astring: string);
    function  PARITY_Specified(Index: Integer): boolean;
    procedure SetRIBBON(Index: Integer; const Astring: string);
    function  RIBBON_Specified(Index: Integer): boolean;
    procedure SetSENSORTIPI(Index: Integer; const Astring: string);
    function  SENSORTIPI_Specified(Index: Integer): boolean;
    procedure SetACIKLAMA4ACI(Index: Integer; const Astring: string);
    function  ACIKLAMA4ACI_Specified(Index: Integer): boolean;
    procedure SetACIKLAMA4DUSEYBUYUTME(Index: Integer; const Astring: string);
    function  ACIKLAMA4DUSEYBUYUTME_Specified(Index: Integer): boolean;
    procedure SetACIKLAMA4FONT(Index: Integer; const Astring: string);
    function  ACIKLAMA4FONT_Specified(Index: Integer): boolean;
    procedure SetACIKLAMA4YATAYBUYUTME(Index: Integer; const Astring: string);
    function  ACIKLAMA4YATAYBUYUTME_Specified(Index: Integer): boolean;
    procedure SetACIKLAMA4YAZDIR(Index: Integer; const Astring: string);
    function  ACIKLAMA4YAZDIR_Specified(Index: Integer): boolean;
    procedure SetACIKLAMA3ACI(Index: Integer; const Astring: string);
    function  ACIKLAMA3ACI_Specified(Index: Integer): boolean;
    procedure SetACIKLAMA3DUSEYBUYUTME(Index: Integer; const Astring: string);
    function  ACIKLAMA3DUSEYBUYUTME_Specified(Index: Integer): boolean;
    procedure SetACIKLAMA3FONT(Index: Integer; const Astring: string);
    function  ACIKLAMA3FONT_Specified(Index: Integer): boolean;
    procedure SetACIKLAMA3YATAYBUYUTME(Index: Integer; const Astring: string);
    function  ACIKLAMA3YATAYBUYUTME_Specified(Index: Integer): boolean;
    procedure SetACIKLAMA3YAZDIR(Index: Integer; const Astring: string);
    function  ACIKLAMA3YAZDIR_Specified(Index: Integer): boolean;
    procedure SetTHERMAL(Index: Integer; const Astring: string);
    function  THERMAL_Specified(Index: Integer): boolean;
    procedure SetACIKLAMA2ACI(Index: Integer; const Astring: string);
    function  ACIKLAMA2ACI_Specified(Index: Integer): boolean;
    procedure SetACIKLAMA2DUSEYBUYUTME(Index: Integer; const Astring: string);
    function  ACIKLAMA2DUSEYBUYUTME_Specified(Index: Integer): boolean;
    procedure SetACIKLAMA2FONT(Index: Integer; const Astring: string);
    function  ACIKLAMA2FONT_Specified(Index: Integer): boolean;
    procedure SetACIKLAMA2YATAYBUYUTME(Index: Integer; const Astring: string);
    function  ACIKLAMA2YATAYBUYUTME_Specified(Index: Integer): boolean;
    procedure SetACIKLAMA2YAZDIR(Index: Integer; const Astring: string);
    function  ACIKLAMA2YAZDIR_Specified(Index: Integer): boolean;
    procedure SetBARKOD_YAZICISI(Index: Integer; const Astring: string);
    function  BARKOD_YAZICISI_Specified(Index: Integer): boolean;
    procedure SetACIKLAMA5ACI(Index: Integer; const Astring: string);
    function  ACIKLAMA5ACI_Specified(Index: Integer): boolean;
    procedure SetACIKLAMA5DUSEYBUYUTME(Index: Integer; const Astring: string);
    function  ACIKLAMA5DUSEYBUYUTME_Specified(Index: Integer): boolean;
    procedure SetACIKLAMA5FONT(Index: Integer; const Astring: string);
    function  ACIKLAMA5FONT_Specified(Index: Integer): boolean;
    procedure SetACIKLAMA5YATAYBUYUTME(Index: Integer; const Astring: string);
    function  ACIKLAMA5YATAYBUYUTME_Specified(Index: Integer): boolean;
    procedure SetACIKLAMA5YAZDIR(Index: Integer; const Astring: string);
    function  ACIKLAMA5YAZDIR_Specified(Index: Integer): boolean;
    procedure SetACIKLAMA6ACI(Index: Integer; const Astring: string);
    function  ACIKLAMA6ACI_Specified(Index: Integer): boolean;
    procedure SetACIKLAMA6DUSEYBUYUTME(Index: Integer; const Astring: string);
    function  ACIKLAMA6DUSEYBUYUTME_Specified(Index: Integer): boolean;
    procedure SetACIKLAMA6FONT(Index: Integer; const Astring: string);
    function  ACIKLAMA6FONT_Specified(Index: Integer): boolean;
    procedure SetACIKLAMA6YATAYBUYUTME(Index: Integer; const Astring: string);
    function  ACIKLAMA6YATAYBUYUTME_Specified(Index: Integer): boolean;
    procedure SetACIKLAMA6YAZDIR(Index: Integer; const Astring: string);
    function  ACIKLAMA6YAZDIR_Specified(Index: Integer): boolean;
    procedure SetACIKLAMA7FONT(Index: Integer; const Astring: string);
    function  ACIKLAMA7FONT_Specified(Index: Integer): boolean;
    procedure SetACIKLAMA7YATAYBUYUTME(Index: Integer; const Astring: string);
    function  ACIKLAMA7YATAYBUYUTME_Specified(Index: Integer): boolean;
    procedure SetACIKLAMA7DUSEYBUYUTME(Index: Integer; const Astring: string);
    function  ACIKLAMA7DUSEYBUYUTME_Specified(Index: Integer): boolean;
    procedure SetACIKLAMA7ACI(Index: Integer; const Astring: string);
    function  ACIKLAMA7ACI_Specified(Index: Integer): boolean;
    procedure SetACIKLAMA7YAZDIR(Index: Integer; const Astring: string);
    function  ACIKLAMA7YAZDIR_Specified(Index: Integer): boolean;
    procedure SetACIKLAMA8FONT(Index: Integer; const Astring: string);
    function  ACIKLAMA8FONT_Specified(Index: Integer): boolean;
    procedure SetACIKLAMA8YATAYBUYUTME(Index: Integer; const Astring: string);
    function  ACIKLAMA8YATAYBUYUTME_Specified(Index: Integer): boolean;
    procedure SetACIKLAMA8DUSEYBUYUTME(Index: Integer; const Astring: string);
    function  ACIKLAMA8DUSEYBUYUTME_Specified(Index: Integer): boolean;
    procedure SetACIKLAMA8ACI(Index: Integer; const Astring: string);
    function  ACIKLAMA8ACI_Specified(Index: Integer): boolean;
    procedure SetACIKLAMA8YAZDIR(Index: Integer; const Astring: string);
    function  ACIKLAMA8YAZDIR_Specified(Index: Integer): boolean;
    procedure SetACIKLAMA9FONT(Index: Integer; const Astring: string);
    function  ACIKLAMA9FONT_Specified(Index: Integer): boolean;
    procedure SetACIKLAMA9YATAYBUYUTME(Index: Integer; const Astring: string);
    function  ACIKLAMA9YATAYBUYUTME_Specified(Index: Integer): boolean;
    procedure SetACIKLAMA9DUSEYBUYUTME(Index: Integer; const Astring: string);
    function  ACIKLAMA9DUSEYBUYUTME_Specified(Index: Integer): boolean;
    procedure SetACIKLAMA9ACI(Index: Integer; const Astring: string);
    function  ACIKLAMA9ACI_Specified(Index: Integer): boolean;
    procedure SetACIKLAMA9YAZDIR(Index: Integer; const Astring: string);
    function  ACIKLAMA9YAZDIR_Specified(Index: Integer): boolean;
    procedure SetACIKLAMA10FONT(Index: Integer; const Astring: string);
    function  ACIKLAMA10FONT_Specified(Index: Integer): boolean;
    procedure SetACIKLAMA10YATAYBUYUTME(Index: Integer; const Astring: string);
    function  ACIKLAMA10YATAYBUYUTME_Specified(Index: Integer): boolean;
    procedure SetACIKLAMA10DUSEYBUYUTME(Index: Integer; const Astring: string);
    function  ACIKLAMA10DUSEYBUYUTME_Specified(Index: Integer): boolean;
    procedure SetACIKLAMA10ACI(Index: Integer; const Astring: string);
    function  ACIKLAMA10ACI_Specified(Index: Integer): boolean;
    procedure SetACIKLAMA10YAZDIR(Index: Integer; const Astring: string);
    function  ACIKLAMA10YAZDIR_Specified(Index: Integer): boolean;
    procedure SetBARKODNOREVFONT(Index: Integer; const Astring: string);
    function  BARKODNOREVFONT_Specified(Index: Integer): boolean;
    procedure SetACIK1REVFONT(Index: Integer; const Astring: string);
    function  ACIK1REVFONT_Specified(Index: Integer): boolean;
    procedure SetACIK2REVFONT(Index: Integer; const Astring: string);
    function  ACIK2REVFONT_Specified(Index: Integer): boolean;
    procedure SetACIK3REVFONT(Index: Integer; const Astring: string);
    function  ACIK3REVFONT_Specified(Index: Integer): boolean;
    procedure SetACIK4REVFONT(Index: Integer; const Astring: string);
    function  ACIK4REVFONT_Specified(Index: Integer): boolean;
    procedure SetACIK5REVFONT(Index: Integer; const Astring: string);
    function  ACIK5REVFONT_Specified(Index: Integer): boolean;
    procedure SetACIK6REVFONT(Index: Integer; const Astring: string);
    function  ACIK6REVFONT_Specified(Index: Integer): boolean;
    procedure SetACIK7REVFONT(Index: Integer; const Astring: string);
    function  ACIK7REVFONT_Specified(Index: Integer): boolean;
    procedure SetACIK8REVFONT(Index: Integer; const Astring: string);
    function  ACIK8REVFONT_Specified(Index: Integer): boolean;
    procedure SetACIK9REVFONT(Index: Integer; const Astring: string);
    function  ACIK9REVFONT_Specified(Index: Integer): boolean;
    procedure SetACIK10REVFONT(Index: Integer; const Astring: string);
    function  ACIK10REVFONT_Specified(Index: Integer): boolean;
    procedure SetYAZICI_IP(Index: Integer; const Astring: string);
    function  YAZICI_IP_Specified(Index: Integer): boolean;
    procedure SetBASKI_ONCESI(Index: Integer; const Astring: string);
    function  BASKI_ONCESI_Specified(Index: Integer): boolean;
    procedure SetBASKI_SONRASI(Index: Integer; const Astring: string);
    function  BASKI_SONRASI_Specified(Index: Integer): boolean;
    procedure SetislemSonuc(Index: Integer; const AIslemSonuc: IslemSonuc);
    function  islemSonuc_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property TANIM_NO:               Integer     read FTANIM_NO write FTANIM_NO;
    property TANIM_ACIK:             string      Index (IS_OPTN) read FTANIM_ACIK write SetTANIM_ACIK stored TANIM_ACIK_Specified;
    property ACIKLAMA1XKOOR:         Integer     read FACIKLAMA1XKOOR write FACIKLAMA1XKOOR;
    property ACIKLAMA1YKOOR:         Integer     read FACIKLAMA1YKOOR write FACIKLAMA1YKOOR;
    property ACIKLAMA2XKOOR:         Integer     read FACIKLAMA2XKOOR write FACIKLAMA2XKOOR;
    property ACIKLAMA2YKOOR:         Integer     read FACIKLAMA2YKOOR write FACIKLAMA2YKOOR;
    property ACIKLAMAACI:            string      Index (IS_OPTN) read FACIKLAMAACI write SetACIKLAMAACI stored ACIKLAMAACI_Specified;
    property ACIKLAMADUSEYBUYUTME:   string      Index (IS_OPTN) read FACIKLAMADUSEYBUYUTME write SetACIKLAMADUSEYBUYUTME stored ACIKLAMADUSEYBUYUTME_Specified;
    property ACIKLAMAFONT:           string      Index (IS_OPTN) read FACIKLAMAFONT write SetACIKLAMAFONT stored ACIKLAMAFONT_Specified;
    property ACIKLAMAYATAYBUYUTME:   string      Index (IS_OPTN) read FACIKLAMAYATAYBUYUTME write SetACIKLAMAYATAYBUYUTME stored ACIKLAMAYATAYBUYUTME_Specified;
    property ACIKLAMAYAZDIR:         string      Index (IS_OPTN) read FACIKLAMAYAZDIR write SetACIKLAMAYAZDIR stored ACIKLAMAYAZDIR_Specified;
    property ANGLEOFBARKOD:          Integer     read FANGLEOFBARKOD write FANGLEOFBARKOD;
    property B1BARCODEHEIGHT:        Integer     read FB1BARCODEHEIGHT write FB1BARCODEHEIGHT;
    property B1BARCODEINCDECTYPE:    string      Index (IS_OPTN) read FB1BARCODEINCDECTYPE write SetB1BARCODEINCDECTYPE stored B1BARCODEINCDECTYPE_Specified;
    property B1BARCODEINCDECVALUE:   Integer     read FB1BARCODEINCDECVALUE write FB1BARCODEINCDECVALUE;
    property B1BARCODEUNDERPRINT:    Integer     read FB1BARCODEUNDERPRINT write FB1BARCODEUNDERPRINT;
    property B1CHECKDIGITTYPE:       Integer     read FB1CHECKDIGITTYPE write FB1CHECKDIGITTYPE;
    property B1ONEMODULEWIDTH:       Integer     read FB1ONEMODULEWIDTH write FB1ONEMODULEWIDTH;
    property B2BARCODEHEIGHT:        Integer     read FB2BARCODEHEIGHT write FB2BARCODEHEIGHT;
    property B2BARCODEINCDECTYPE:    string      Index (IS_OPTN) read FB2BARCODEINCDECTYPE write SetB2BARCODEINCDECTYPE stored B2BARCODEINCDECTYPE_Specified;
    property B2BARCODEINCDECVALUE:   Integer     read FB2BARCODEINCDECVALUE write FB2BARCODEINCDECVALUE;
    property B2BARCODEUNDERPRINT:    Integer     read FB2BARCODEUNDERPRINT write FB2BARCODEUNDERPRINT;
    property B2CHECKDIGITTYPE:       Integer     read FB2CHECKDIGITTYPE write FB2CHECKDIGITTYPE;
    property B2CHTOCHSPACEWIDTH:     Integer     read FB2CHTOCHSPACEWIDTH write FB2CHTOCHSPACEWIDTH;
    property B2NARROWBARWIDTH:       Integer     read FB2NARROWBARWIDTH write FB2NARROWBARWIDTH;
    property B2NARROWSPACEWIDTH:     Integer     read FB2NARROWSPACEWIDTH write FB2NARROWSPACEWIDTH;
    property B2STARTSTOPCODEATTACH:  string      Index (IS_OPTN) read FB2STARTSTOPCODEATTACH write SetB2STARTSTOPCODEATTACH stored B2STARTSTOPCODEATTACH_Specified;
    property B2SUPPRESSEDZERONO:     Integer     read FB2SUPPRESSEDZERONO write FB2SUPPRESSEDZERONO;
    property B2WIDEBARWIDTH:         Integer     read FB2WIDEBARWIDTH write FB2WIDEBARWIDTH;
    property B2WIDESPACEWIDTH:       Integer     read FB2WIDESPACEWIDTH write FB2WIDESPACEWIDTH;
    property B3ECCTYPE:              string      Index (IS_OPTN) read FB3ECCTYPE write SetB3ECCTYPE stored B3ECCTYPE_Specified;
    property B3FORMATID:             string      Index (IS_OPTN) read FB3FORMATID write SetB3FORMATID stored B3FORMATID_Specified;
    property B3ONRCELLWIDTH:         Integer     read FB3ONRCELLWIDTH write FB3ONRCELLWIDTH;
    property B4BARHEIGHT:            Integer     read FB4BARHEIGHT write FB4BARHEIGHT;
    property B4NUMBEROFCOLUMNS:      Integer     read FB4NUMBEROFCOLUMNS write FB4NUMBEROFCOLUMNS;
    property B4ONEMODULEWIDTH:       Integer     read FB4ONEMODULEWIDTH write FB4ONEMODULEWIDTH;
    property B4SECURITYLEVEL:        string      Index (IS_OPTN) read FB4SECURITYLEVEL write SetB4SECURITYLEVEL stored B4SECURITYLEVEL_Specified;
    property B5ERRORCORRECTIONLEVEL: string      Index (IS_OPTN) read FB5ERRORCORRECTIONLEVEL write SetB5ERRORCORRECTIONLEVEL stored B5ERRORCORRECTIONLEVEL_Specified;
    property B5MODESELECTION:        string      Index (IS_OPTN) read FB5MODESELECTION write SetB5MODESELECTION stored B5MODESELECTION_Specified;
    property B5ONECELLWIDTH:         Integer     read FB5ONECELLWIDTH write FB5ONECELLWIDTH;
    property B6MODESELECTION:        string      Index (IS_OPTN) read FB6MODESELECTION write SetB6MODESELECTION stored B6MODESELECTION_Specified;
    property B7ECCLEVEL:             string      Index (IS_OPTN) read FB7ECCLEVEL write SetB7ECCLEVEL stored B7ECCLEVEL_Specified;
    property B7NOOFCHARBITS:         string      Index (IS_OPTN) read FB7NOOFCHARBITS write SetB7NOOFCHARBITS stored B7NOOFCHARBITS_Specified;
    property B7ONRCELLWIDTH:         Integer     read FB7ONRCELLWIDTH write FB7ONRCELLWIDTH;
    property BARCODEKOORX:           Integer     read FBARCODEKOORX write FBARCODEKOORX;
    property BARCODEKOORY:           Integer     read FBARCODEKOORY write FBARCODEKOORY;
    property BARCODETYPE:            string      Index (IS_OPTN) read FBARCODETYPE write SetBARCODETYPE stored BARCODETYPE_Specified;
    property BARKODNUMARASIACI:      string      Index (IS_OPTN) read FBARKODNUMARASIACI write SetBARKODNUMARASIACI stored BARKODNUMARASIACI_Specified;
    property BNUMDUSEYBUYUTME:       string      Index (IS_OPTN) read FBNUMDUSEYBUYUTME write SetBNUMDUSEYBUYUTME stored BNUMDUSEYBUYUTME_Specified;
    property BARKODNUMARASIFONT:     string      Index (IS_OPTN) read FBARKODNUMARASIFONT write SetBARKODNUMARASIFONT stored BARKODNUMARASIFONT_Specified;
    property BARKODNUMARASIXKOOR:    Integer     read FBARKODNUMARASIXKOOR write FBARKODNUMARASIXKOOR;
    property BNUMYATAYBUYUTME:       string      Index (IS_OPTN) read FBNUMYATAYBUYUTME write SetBNUMYATAYBUYUTME stored BNUMYATAYBUYUTME_Specified;
    property BARKODNUMARASIYAZDIR:   string      Index (IS_OPTN) read FBARKODNUMARASIYAZDIR write SetBARKODNUMARASIYAZDIR stored BARKODNUMARASIYAZDIR_Specified;
    property BARKODNUMARASIYKOOR:    Integer     read FBARKODNUMARASIYKOOR write FBARKODNUMARASIYKOOR;
    property BASILACAKETIKETSAYISI:  Integer     read FBASILACAKETIKETSAYISI write FBASILACAKETIKETSAYISI;
    property BASKIHIZI:              Integer     read FBASKIHIZI write FBASKIHIZI;
    property BASKIMODU:              string      Index (IS_OPTN) read FBASKIMODU write SetBASKIMODU stored BASKIMODU_Specified;
    property BOUDRATE:               Integer     read FBOUDRATE write FBOUDRATE;
    property COMPORT:                string      Index (IS_OPTN) read FCOMPORT write SetCOMPORT stored COMPORT_Specified;
    property DARKERLIGHTER:          string      Index (IS_OPTN) read FDARKERLIGHTER write SetDARKERLIGHTER stored DARKERLIGHTER_Specified;
    property DATABIT:                Integer     read FDATABIT write FDATABIT;
    property EFFECTIVEPRINTLENGTH:   Integer     read FEFFECTIVEPRINTLENGTH write FEFFECTIVEPRINTLENGTH;
    property EFFECTIVEPRINTWIDTH:    Integer     read FEFFECTIVEPRINTWIDTH write FEFFECTIVEPRINTWIDTH;
    property FORWARDREVERSE:         string      Index (IS_OPTN) read FFORWARDREVERSE write SetFORWARDREVERSE stored FORWARDREVERSE_Specified;
    property KAGITKESMEARALIGI:      Integer     read FKAGITKESMEARALIGI write FKAGITKESMEARALIGI;
    property LABELHEIGHT:            Integer     read FLABELHEIGHT write FLABELHEIGHT;
    property LABELWIDTH:             Integer     read FLABELWIDTH write FLABELWIDTH;
    property NUMBEROFLABELCOL:       Integer     read FNUMBEROFLABELCOL write FNUMBEROFLABELCOL;
    property NUMBEROFLABELLINE:      Integer     read FNUMBEROFLABELLINE write FNUMBEROFLABELLINE;
    property PAPERFEED:              Integer     read FPAPERFEED write FPAPERFEED;
    property PARITY:                 string      Index (IS_OPTN) read FPARITY write SetPARITY stored PARITY_Specified;
    property PITCHLENGHTOFLABEL:     Integer     read FPITCHLENGHTOFLABEL write FPITCHLENGHTOFLABEL;
    property PRINTDENSITY:           Integer     read FPRINTDENSITY write FPRINTDENSITY;
    property RIBBON:                 string      Index (IS_OPTN) read FRIBBON write SetRIBBON stored RIBBON_Specified;
    property SENSORTIPI:             string      Index (IS_OPTN) read FSENSORTIPI write SetSENSORTIPI stored SENSORTIPI_Specified;
    property ACIKLAMA4ACI:           string      Index (IS_OPTN) read FACIKLAMA4ACI write SetACIKLAMA4ACI stored ACIKLAMA4ACI_Specified;
    property ACIKLAMA4DUSEYBUYUTME:  string      Index (IS_OPTN) read FACIKLAMA4DUSEYBUYUTME write SetACIKLAMA4DUSEYBUYUTME stored ACIKLAMA4DUSEYBUYUTME_Specified;
    property ACIKLAMA4FONT:          string      Index (IS_OPTN) read FACIKLAMA4FONT write SetACIKLAMA4FONT stored ACIKLAMA4FONT_Specified;
    property ACIKLAMA4XKOOR:         Integer     read FACIKLAMA4XKOOR write FACIKLAMA4XKOOR;
    property ACIKLAMA4YATAYBUYUTME:  string      Index (IS_OPTN) read FACIKLAMA4YATAYBUYUTME write SetACIKLAMA4YATAYBUYUTME stored ACIKLAMA4YATAYBUYUTME_Specified;
    property ACIKLAMA4YAZDIR:        string      Index (IS_OPTN) read FACIKLAMA4YAZDIR write SetACIKLAMA4YAZDIR stored ACIKLAMA4YAZDIR_Specified;
    property ACIKLAMA4YKOOR:         Integer     read FACIKLAMA4YKOOR write FACIKLAMA4YKOOR;
    property ACIKLAMA3ACI:           string      Index (IS_OPTN) read FACIKLAMA3ACI write SetACIKLAMA3ACI stored ACIKLAMA3ACI_Specified;
    property ACIKLAMA3DUSEYBUYUTME:  string      Index (IS_OPTN) read FACIKLAMA3DUSEYBUYUTME write SetACIKLAMA3DUSEYBUYUTME stored ACIKLAMA3DUSEYBUYUTME_Specified;
    property ACIKLAMA3FONT:          string      Index (IS_OPTN) read FACIKLAMA3FONT write SetACIKLAMA3FONT stored ACIKLAMA3FONT_Specified;
    property ACIKLAMA3XKOOR:         Integer     read FACIKLAMA3XKOOR write FACIKLAMA3XKOOR;
    property ACIKLAMA3YATAYBUYUTME:  string      Index (IS_OPTN) read FACIKLAMA3YATAYBUYUTME write SetACIKLAMA3YATAYBUYUTME stored ACIKLAMA3YATAYBUYUTME_Specified;
    property ACIKLAMA3YAZDIR:        string      Index (IS_OPTN) read FACIKLAMA3YAZDIR write SetACIKLAMA3YAZDIR stored ACIKLAMA3YAZDIR_Specified;
    property ACIKLAMA3YKOOR:         Integer     read FACIKLAMA3YKOOR write FACIKLAMA3YKOOR;
    property STOPBIT:                Integer     read FSTOPBIT write FSTOPBIT;
    property THERMAL:                string      Index (IS_OPTN) read FTHERMAL write SetTHERMAL stored THERMAL_Specified;
    property ACIKLAMA2ACI:           string      Index (IS_OPTN) read FACIKLAMA2ACI write SetACIKLAMA2ACI stored ACIKLAMA2ACI_Specified;
    property ACIKLAMA2DUSEYBUYUTME:  string      Index (IS_OPTN) read FACIKLAMA2DUSEYBUYUTME write SetACIKLAMA2DUSEYBUYUTME stored ACIKLAMA2DUSEYBUYUTME_Specified;
    property ACIKLAMA2FONT:          string      Index (IS_OPTN) read FACIKLAMA2FONT write SetACIKLAMA2FONT stored ACIKLAMA2FONT_Specified;
    property ACIKLAMA2YATAYBUYUTME:  string      Index (IS_OPTN) read FACIKLAMA2YATAYBUYUTME write SetACIKLAMA2YATAYBUYUTME stored ACIKLAMA2YATAYBUYUTME_Specified;
    property ACIKLAMA2YAZDIR:        string      Index (IS_OPTN) read FACIKLAMA2YAZDIR write SetACIKLAMA2YAZDIR stored ACIKLAMA2YAZDIR_Specified;
    property BARKOD_YAZICISI:        string      Index (IS_OPTN) read FBARKOD_YAZICISI write SetBARKOD_YAZICISI stored BARKOD_YAZICISI_Specified;
    property ACIKLAMA5ACI:           string      Index (IS_OPTN) read FACIKLAMA5ACI write SetACIKLAMA5ACI stored ACIKLAMA5ACI_Specified;
    property ACIKLAMA5DUSEYBUYUTME:  string      Index (IS_OPTN) read FACIKLAMA5DUSEYBUYUTME write SetACIKLAMA5DUSEYBUYUTME stored ACIKLAMA5DUSEYBUYUTME_Specified;
    property ACIKLAMA5FONT:          string      Index (IS_OPTN) read FACIKLAMA5FONT write SetACIKLAMA5FONT stored ACIKLAMA5FONT_Specified;
    property ACIKLAMA5XKOOR:         Integer     read FACIKLAMA5XKOOR write FACIKLAMA5XKOOR;
    property ACIKLAMA5YATAYBUYUTME:  string      Index (IS_OPTN) read FACIKLAMA5YATAYBUYUTME write SetACIKLAMA5YATAYBUYUTME stored ACIKLAMA5YATAYBUYUTME_Specified;
    property ACIKLAMA5YAZDIR:        string      Index (IS_OPTN) read FACIKLAMA5YAZDIR write SetACIKLAMA5YAZDIR stored ACIKLAMA5YAZDIR_Specified;
    property ACIKLAMA5YKOOR:         Integer     read FACIKLAMA5YKOOR write FACIKLAMA5YKOOR;
    property ACIKLAMA6ACI:           string      Index (IS_OPTN) read FACIKLAMA6ACI write SetACIKLAMA6ACI stored ACIKLAMA6ACI_Specified;
    property ACIKLAMA6DUSEYBUYUTME:  string      Index (IS_OPTN) read FACIKLAMA6DUSEYBUYUTME write SetACIKLAMA6DUSEYBUYUTME stored ACIKLAMA6DUSEYBUYUTME_Specified;
    property ACIKLAMA6FONT:          string      Index (IS_OPTN) read FACIKLAMA6FONT write SetACIKLAMA6FONT stored ACIKLAMA6FONT_Specified;
    property ACIKLAMA6XKOOR:         Integer     read FACIKLAMA6XKOOR write FACIKLAMA6XKOOR;
    property ACIKLAMA6YATAYBUYUTME:  string      Index (IS_OPTN) read FACIKLAMA6YATAYBUYUTME write SetACIKLAMA6YATAYBUYUTME stored ACIKLAMA6YATAYBUYUTME_Specified;
    property ACIKLAMA6YAZDIR:        string      Index (IS_OPTN) read FACIKLAMA6YAZDIR write SetACIKLAMA6YAZDIR stored ACIKLAMA6YAZDIR_Specified;
    property ACIKLAMA6YKOOR:         Integer     read FACIKLAMA6YKOOR write FACIKLAMA6YKOOR;
    property ACIKLAMA7XKOOR:         Integer     read FACIKLAMA7XKOOR write FACIKLAMA7XKOOR;
    property ACIKLAMA7YKOOR:         Integer     read FACIKLAMA7YKOOR write FACIKLAMA7YKOOR;
    property ACIKLAMA7FONT:          string      Index (IS_OPTN) read FACIKLAMA7FONT write SetACIKLAMA7FONT stored ACIKLAMA7FONT_Specified;
    property ACIKLAMA7YATAYBUYUTME:  string      Index (IS_OPTN) read FACIKLAMA7YATAYBUYUTME write SetACIKLAMA7YATAYBUYUTME stored ACIKLAMA7YATAYBUYUTME_Specified;
    property ACIKLAMA7DUSEYBUYUTME:  string      Index (IS_OPTN) read FACIKLAMA7DUSEYBUYUTME write SetACIKLAMA7DUSEYBUYUTME stored ACIKLAMA7DUSEYBUYUTME_Specified;
    property ACIKLAMA7ACI:           string      Index (IS_OPTN) read FACIKLAMA7ACI write SetACIKLAMA7ACI stored ACIKLAMA7ACI_Specified;
    property ACIKLAMA7YAZDIR:        string      Index (IS_OPTN) read FACIKLAMA7YAZDIR write SetACIKLAMA7YAZDIR stored ACIKLAMA7YAZDIR_Specified;
    property ACIKLAMA8XKOOR:         Integer     read FACIKLAMA8XKOOR write FACIKLAMA8XKOOR;
    property ACIKLAMA8YKOOR:         Integer     read FACIKLAMA8YKOOR write FACIKLAMA8YKOOR;
    property ACIKLAMA8FONT:          string      Index (IS_OPTN) read FACIKLAMA8FONT write SetACIKLAMA8FONT stored ACIKLAMA8FONT_Specified;
    property ACIKLAMA8YATAYBUYUTME:  string      Index (IS_OPTN) read FACIKLAMA8YATAYBUYUTME write SetACIKLAMA8YATAYBUYUTME stored ACIKLAMA8YATAYBUYUTME_Specified;
    property ACIKLAMA8DUSEYBUYUTME:  string      Index (IS_OPTN) read FACIKLAMA8DUSEYBUYUTME write SetACIKLAMA8DUSEYBUYUTME stored ACIKLAMA8DUSEYBUYUTME_Specified;
    property ACIKLAMA8ACI:           string      Index (IS_OPTN) read FACIKLAMA8ACI write SetACIKLAMA8ACI stored ACIKLAMA8ACI_Specified;
    property ACIKLAMA8YAZDIR:        string      Index (IS_OPTN) read FACIKLAMA8YAZDIR write SetACIKLAMA8YAZDIR stored ACIKLAMA8YAZDIR_Specified;
    property ACIKLAMA9XKOOR:         Integer     read FACIKLAMA9XKOOR write FACIKLAMA9XKOOR;
    property ACIKLAMA9YKOOR:         Integer     read FACIKLAMA9YKOOR write FACIKLAMA9YKOOR;
    property ACIKLAMA9FONT:          string      Index (IS_OPTN) read FACIKLAMA9FONT write SetACIKLAMA9FONT stored ACIKLAMA9FONT_Specified;
    property ACIKLAMA9YATAYBUYUTME:  string      Index (IS_OPTN) read FACIKLAMA9YATAYBUYUTME write SetACIKLAMA9YATAYBUYUTME stored ACIKLAMA9YATAYBUYUTME_Specified;
    property ACIKLAMA9DUSEYBUYUTME:  string      Index (IS_OPTN) read FACIKLAMA9DUSEYBUYUTME write SetACIKLAMA9DUSEYBUYUTME stored ACIKLAMA9DUSEYBUYUTME_Specified;
    property ACIKLAMA9ACI:           string      Index (IS_OPTN) read FACIKLAMA9ACI write SetACIKLAMA9ACI stored ACIKLAMA9ACI_Specified;
    property ACIKLAMA9YAZDIR:        string      Index (IS_OPTN) read FACIKLAMA9YAZDIR write SetACIKLAMA9YAZDIR stored ACIKLAMA9YAZDIR_Specified;
    property ACIKLAMA10XKOOR:        Integer     read FACIKLAMA10XKOOR write FACIKLAMA10XKOOR;
    property ACIKLAMA10YKOOR:        Integer     read FACIKLAMA10YKOOR write FACIKLAMA10YKOOR;
    property ACIKLAMA10FONT:         string      Index (IS_OPTN) read FACIKLAMA10FONT write SetACIKLAMA10FONT stored ACIKLAMA10FONT_Specified;
    property ACIKLAMA10YATAYBUYUTME: string      Index (IS_OPTN) read FACIKLAMA10YATAYBUYUTME write SetACIKLAMA10YATAYBUYUTME stored ACIKLAMA10YATAYBUYUTME_Specified;
    property ACIKLAMA10DUSEYBUYUTME: string      Index (IS_OPTN) read FACIKLAMA10DUSEYBUYUTME write SetACIKLAMA10DUSEYBUYUTME stored ACIKLAMA10DUSEYBUYUTME_Specified;
    property ACIKLAMA10ACI:          string      Index (IS_OPTN) read FACIKLAMA10ACI write SetACIKLAMA10ACI stored ACIKLAMA10ACI_Specified;
    property ACIKLAMA10YAZDIR:       string      Index (IS_OPTN) read FACIKLAMA10YAZDIR write SetACIKLAMA10YAZDIR stored ACIKLAMA10YAZDIR_Specified;
    property BARKODNOREVFONT:        string      Index (IS_OPTN) read FBARKODNOREVFONT write SetBARKODNOREVFONT stored BARKODNOREVFONT_Specified;
    property ACIK1REVFONT:           string      Index (IS_OPTN) read FACIK1REVFONT write SetACIK1REVFONT stored ACIK1REVFONT_Specified;
    property ACIK2REVFONT:           string      Index (IS_OPTN) read FACIK2REVFONT write SetACIK2REVFONT stored ACIK2REVFONT_Specified;
    property ACIK3REVFONT:           string      Index (IS_OPTN) read FACIK3REVFONT write SetACIK3REVFONT stored ACIK3REVFONT_Specified;
    property ACIK4REVFONT:           string      Index (IS_OPTN) read FACIK4REVFONT write SetACIK4REVFONT stored ACIK4REVFONT_Specified;
    property ACIK5REVFONT:           string      Index (IS_OPTN) read FACIK5REVFONT write SetACIK5REVFONT stored ACIK5REVFONT_Specified;
    property ACIK6REVFONT:           string      Index (IS_OPTN) read FACIK6REVFONT write SetACIK6REVFONT stored ACIK6REVFONT_Specified;
    property ACIK7REVFONT:           string      Index (IS_OPTN) read FACIK7REVFONT write SetACIK7REVFONT stored ACIK7REVFONT_Specified;
    property ACIK8REVFONT:           string      Index (IS_OPTN) read FACIK8REVFONT write SetACIK8REVFONT stored ACIK8REVFONT_Specified;
    property ACIK9REVFONT:           string      Index (IS_OPTN) read FACIK9REVFONT write SetACIK9REVFONT stored ACIK9REVFONT_Specified;
    property ACIK10REVFONT:          string      Index (IS_OPTN) read FACIK10REVFONT write SetACIK10REVFONT stored ACIK10REVFONT_Specified;
    property YAZICI_IP:              string      Index (IS_OPTN) read FYAZICI_IP write SetYAZICI_IP stored YAZICI_IP_Specified;
    property YAZICI_PORT:            Integer     read FYAZICI_PORT write FYAZICI_PORT;
    property BASKI_ONCESI:           string      Index (IS_OPTN) read FBASKI_ONCESI write SetBASKI_ONCESI stored BASKI_ONCESI_Specified;
    property BASKI_SONRASI:          string      Index (IS_OPTN) read FBASKI_SONRASI write SetBASKI_SONRASI stored BASKI_SONRASI_Specified;
    property islemSonuc:             IslemSonuc  Index (IS_OPTN) read FislemSonuc write SetislemSonuc stored islemSonuc_Specified;
  end;

  ArrayOfEntegKodlar = array of EntegKodlar;    { "http://tempuri.org/"[GblCplx] }


  // ************************************************************************ //
  // XML       : EntegKodDurum, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  EntegKodDurum = class(TRemotable)
  private
    FislemSonuc: IslemSonuc;
    FislemSonuc_Specified: boolean;
    FEntegKodArr: ArrayOfEntegKodlar;
    FEntegKodArr_Specified: boolean;
    procedure SetislemSonuc(Index: Integer; const AIslemSonuc: IslemSonuc);
    function  islemSonuc_Specified(Index: Integer): boolean;
    procedure SetEntegKodArr(Index: Integer; const AArrayOfEntegKodlar: ArrayOfEntegKodlar);
    function  EntegKodArr_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property islemSonuc:  IslemSonuc          Index (IS_OPTN) read FislemSonuc write SetislemSonuc stored islemSonuc_Specified;
    property EntegKodArr: ArrayOfEntegKodlar  Index (IS_OPTN) read FEntegKodArr write SetEntegKodArr stored EntegKodArr_Specified;
  end;



  // ************************************************************************ //
  // XML       : EntegKodlar, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  EntegKodlar = class(TRemotable)
  private
    FTEST_ID: Integer;
    FTEST_KISA_ADI: string;
    FTEST_KISA_ADI_Specified: boolean;
    FTEST_ADI: string;
    FTEST_ADI_Specified: boolean;
    FENTEG_KODU: string;
    FENTEG_KODU_Specified: boolean;
    FENTEG_KODU2: string;
    FENTEG_KODU2_Specified: boolean;
    FUNITE_ID: Integer;
    FUNITE_ADI: string;
    FUNITE_ADI_Specified: boolean;
    procedure SetTEST_KISA_ADI(Index: Integer; const Astring: string);
    function  TEST_KISA_ADI_Specified(Index: Integer): boolean;
    procedure SetTEST_ADI(Index: Integer; const Astring: string);
    function  TEST_ADI_Specified(Index: Integer): boolean;
    procedure SetENTEG_KODU(Index: Integer; const Astring: string);
    function  ENTEG_KODU_Specified(Index: Integer): boolean;
    procedure SetENTEG_KODU2(Index: Integer; const Astring: string);
    function  ENTEG_KODU2_Specified(Index: Integer): boolean;
    procedure SetUNITE_ADI(Index: Integer; const Astring: string);
    function  UNITE_ADI_Specified(Index: Integer): boolean;
  published
    property TEST_ID:       Integer  read FTEST_ID write FTEST_ID;
    property TEST_KISA_ADI: string   Index (IS_OPTN) read FTEST_KISA_ADI write SetTEST_KISA_ADI stored TEST_KISA_ADI_Specified;
    property TEST_ADI:      string   Index (IS_OPTN) read FTEST_ADI write SetTEST_ADI stored TEST_ADI_Specified;
    property ENTEG_KODU:    string   Index (IS_OPTN) read FENTEG_KODU write SetENTEG_KODU stored ENTEG_KODU_Specified;
    property ENTEG_KODU2:   string   Index (IS_OPTN) read FENTEG_KODU2 write SetENTEG_KODU2 stored ENTEG_KODU2_Specified;
    property UNITE_ID:      Integer  read FUNITE_ID write FUNITE_ID;
    property UNITE_ADI:     string   Index (IS_OPTN) read FUNITE_ADI write SetUNITE_ADI stored UNITE_ADI_Specified;
  end;

  ArrayOfPANEL = array of PANEL;                { "http://tempuri.org/"[GblCplx] }


  // ************************************************************************ //
  // XML       : PanelDurum, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  PanelDurum = class(TRemotable)
  private
    FislemSonuc: IslemSonuc;
    FislemSonuc_Specified: boolean;
    FPanelArr: ArrayOfPANEL;
    FPanelArr_Specified: boolean;
    procedure SetislemSonuc(Index: Integer; const AIslemSonuc: IslemSonuc);
    function  islemSonuc_Specified(Index: Integer): boolean;
    procedure SetPanelArr(Index: Integer; const AArrayOfPANEL: ArrayOfPANEL);
    function  PanelArr_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property islemSonuc: IslemSonuc    Index (IS_OPTN) read FislemSonuc write SetislemSonuc stored islemSonuc_Specified;
    property PanelArr:   ArrayOfPANEL  Index (IS_OPTN) read FPanelArr write SetPanelArr stored PanelArr_Specified;
  end;



  // ************************************************************************ //
  // XML       : PANEL, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  PANEL = class(TRemotable)
  private
    FPANEL_ADI: string;
    FPANEL_ADI_Specified: boolean;
    FPanelTestArr: ArrayOfEntegKodlar;
    FPanelTestArr_Specified: boolean;
    procedure SetPANEL_ADI(Index: Integer; const Astring: string);
    function  PANEL_ADI_Specified(Index: Integer): boolean;
    procedure SetPanelTestArr(Index: Integer; const AArrayOfEntegKodlar: ArrayOfEntegKodlar);
    function  PanelTestArr_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property PANEL_ADI:    string              Index (IS_OPTN) read FPANEL_ADI write SetPANEL_ADI stored PANEL_ADI_Specified;
    property PanelTestArr: ArrayOfEntegKodlar  Index (IS_OPTN) read FPanelTestArr write SetPanelTestArr stored PanelTestArr_Specified;
  end;



  // ************************************************************************ //
  // XML       : TalesemiSonucDurum, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  TalesemiSonucDurum = class(TRemotable)
  private
    FislemSonuc: IslemSonuc;
    FislemSonuc_Specified: boolean;
    FORNEKNO1: Integer;
    FORNEKNO2: Integer;
    FSONUC1: string;
    FSONUC1_Specified: boolean;
    FSONUC2: string;
    FSONUC2_Specified: boolean;
    FACIKLAMA1: string;
    FACIKLAMA1_Specified: boolean;
    FACIKLAMA2: string;
    FACIKLAMA2_Specified: boolean;
    FDIGERTETKIK1: string;
    FDIGERTETKIK1_Specified: boolean;
    FDIGERTETKIK2: string;
    FDIGERTETKIK2_Specified: boolean;
    FISTEKNEDENI: string;
    FISTEKNEDENI_Specified: boolean;
    FAKRABAEVLI: EVET_HAYIR;
    FTALESHIKAYE: EVET_HAYIR;
    FAKRABAKANSIZ: EVET_HAYIR;
    FDUZENLEYEN: string;
    FDUZENLEYEN_Specified: boolean;
    FDUZENTARIH: string;
    FDUZENTARIH_Specified: boolean;
    FONAYLAYANADSOYAD: string;
    FONAYLAYANADSOYAD_Specified: boolean;
    FONAYLAYANUNVAN: string;
    FONAYLAYANUNVAN_Specified: boolean;
    FONAYTARIH: string;
    FONAYTARIH_Specified: boolean;
    procedure SetislemSonuc(Index: Integer; const AIslemSonuc: IslemSonuc);
    function  islemSonuc_Specified(Index: Integer): boolean;
    procedure SetSONUC1(Index: Integer; const Astring: string);
    function  SONUC1_Specified(Index: Integer): boolean;
    procedure SetSONUC2(Index: Integer; const Astring: string);
    function  SONUC2_Specified(Index: Integer): boolean;
    procedure SetACIKLAMA1(Index: Integer; const Astring: string);
    function  ACIKLAMA1_Specified(Index: Integer): boolean;
    procedure SetACIKLAMA2(Index: Integer; const Astring: string);
    function  ACIKLAMA2_Specified(Index: Integer): boolean;
    procedure SetDIGERTETKIK1(Index: Integer; const Astring: string);
    function  DIGERTETKIK1_Specified(Index: Integer): boolean;
    procedure SetDIGERTETKIK2(Index: Integer; const Astring: string);
    function  DIGERTETKIK2_Specified(Index: Integer): boolean;
    procedure SetISTEKNEDENI(Index: Integer; const Astring: string);
    function  ISTEKNEDENI_Specified(Index: Integer): boolean;
    procedure SetDUZENLEYEN(Index: Integer; const Astring: string);
    function  DUZENLEYEN_Specified(Index: Integer): boolean;
    procedure SetDUZENTARIH(Index: Integer; const Astring: string);
    function  DUZENTARIH_Specified(Index: Integer): boolean;
    procedure SetONAYLAYANADSOYAD(Index: Integer; const Astring: string);
    function  ONAYLAYANADSOYAD_Specified(Index: Integer): boolean;
    procedure SetONAYLAYANUNVAN(Index: Integer; const Astring: string);
    function  ONAYLAYANUNVAN_Specified(Index: Integer): boolean;
    procedure SetONAYTARIH(Index: Integer; const Astring: string);
    function  ONAYTARIH_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property islemSonuc:       IslemSonuc  Index (IS_OPTN) read FislemSonuc write SetislemSonuc stored islemSonuc_Specified;
    property ORNEKNO1:         Integer     read FORNEKNO1 write FORNEKNO1;
    property ORNEKNO2:         Integer     read FORNEKNO2 write FORNEKNO2;
    property SONUC1:           string      Index (IS_OPTN) read FSONUC1 write SetSONUC1 stored SONUC1_Specified;
    property SONUC2:           string      Index (IS_OPTN) read FSONUC2 write SetSONUC2 stored SONUC2_Specified;
    property ACIKLAMA1:        string      Index (IS_OPTN) read FACIKLAMA1 write SetACIKLAMA1 stored ACIKLAMA1_Specified;
    property ACIKLAMA2:        string      Index (IS_OPTN) read FACIKLAMA2 write SetACIKLAMA2 stored ACIKLAMA2_Specified;
    property DIGERTETKIK1:     string      Index (IS_OPTN) read FDIGERTETKIK1 write SetDIGERTETKIK1 stored DIGERTETKIK1_Specified;
    property DIGERTETKIK2:     string      Index (IS_OPTN) read FDIGERTETKIK2 write SetDIGERTETKIK2 stored DIGERTETKIK2_Specified;
    property ISTEKNEDENI:      string      Index (IS_OPTN) read FISTEKNEDENI write SetISTEKNEDENI stored ISTEKNEDENI_Specified;
    property AKRABAEVLI:       EVET_HAYIR  read FAKRABAEVLI write FAKRABAEVLI;
    property TALESHIKAYE:      EVET_HAYIR  read FTALESHIKAYE write FTALESHIKAYE;
    property AKRABAKANSIZ:     EVET_HAYIR  read FAKRABAKANSIZ write FAKRABAKANSIZ;
    property DUZENLEYEN:       string      Index (IS_OPTN) read FDUZENLEYEN write SetDUZENLEYEN stored DUZENLEYEN_Specified;
    property DUZENTARIH:       string      Index (IS_OPTN) read FDUZENTARIH write SetDUZENTARIH stored DUZENTARIH_Specified;
    property ONAYLAYANADSOYAD: string      Index (IS_OPTN) read FONAYLAYANADSOYAD write SetONAYLAYANADSOYAD stored ONAYLAYANADSOYAD_Specified;
    property ONAYLAYANUNVAN:   string      Index (IS_OPTN) read FONAYLAYANUNVAN write SetONAYLAYANUNVAN stored ONAYLAYANUNVAN_Specified;
    property ONAYTARIH:        string      Index (IS_OPTN) read FONAYTARIH write SetONAYTARIH stored ONAYTARIH_Specified;
  end;

  ArrayOfOrnekDetayBilgi = array of OrnekDetayBilgi;   { "http://tempuri.org/"[GblCplx] }


  // ************************************************************************ //
  // XML       : OrnekDetayBilgi, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  OrnekDetayBilgi = class(TRemotable)
  private
    FORNEKNO: Integer;
    FUNITE_ADI: string;
    FUNITE_ADI_Specified: boolean;
    FKABUL_TARIHI: string;
    FKABUL_TARIHI_Specified: boolean;
    FRAPOR_TARIHI: string;
    FRAPOR_TARIHI_Specified: boolean;
    FONAY_TARIHI: string;
    FONAY_TARIHI_Specified: boolean;
    FONAYLAYAN: string;
    FONAYLAYAN_Specified: boolean;
    procedure SetUNITE_ADI(Index: Integer; const Astring: string);
    function  UNITE_ADI_Specified(Index: Integer): boolean;
    procedure SetKABUL_TARIHI(Index: Integer; const Astring: string);
    function  KABUL_TARIHI_Specified(Index: Integer): boolean;
    procedure SetRAPOR_TARIHI(Index: Integer; const Astring: string);
    function  RAPOR_TARIHI_Specified(Index: Integer): boolean;
    procedure SetONAY_TARIHI(Index: Integer; const Astring: string);
    function  ONAY_TARIHI_Specified(Index: Integer): boolean;
    procedure SetONAYLAYAN(Index: Integer; const Astring: string);
    function  ONAYLAYAN_Specified(Index: Integer): boolean;
  published
    property ORNEKNO:      Integer  read FORNEKNO write FORNEKNO;
    property UNITE_ADI:    string   Index (IS_OPTN) read FUNITE_ADI write SetUNITE_ADI stored UNITE_ADI_Specified;
    property KABUL_TARIHI: string   Index (IS_OPTN) read FKABUL_TARIHI write SetKABUL_TARIHI stored KABUL_TARIHI_Specified;
    property RAPOR_TARIHI: string   Index (IS_OPTN) read FRAPOR_TARIHI write SetRAPOR_TARIHI stored RAPOR_TARIHI_Specified;
    property ONAY_TARIHI:  string   Index (IS_OPTN) read FONAY_TARIHI write SetONAY_TARIHI stored ONAY_TARIHI_Specified;
    property ONAYLAYAN:    string   Index (IS_OPTN) read FONAYLAYAN write SetONAYLAYAN stored ONAYLAYAN_Specified;
  end;


  // ************************************************************************ //
  // Namespace : http://tempuri.org/
  // soapAction: http://tempuri.org/%operationName%
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : document
  // binding   : AlisWSSoap12
  // service   : AlisWS
  // port      : AlisWSSoap12
  // URL       : http://94.102.66.146/alisWS/AlisWS.asmx
  // ************************************************************************ //
  AlisWSSoap = interface(IInvokable)
  ['{082B82C7-4AC1-7AF7-68A3-CDD5439D27A0}']
    function  ALISKayitEkleBasit(const VENUSER: string; const VENPASS: string; const ISTEM_TARIHI: string; const TC_KIMLIKNO: string; const DOSYA_NO: string; const GELIS_NO: string; 
                                 const ORNEKNO: Integer; const AD: string; const SOYAD: string; const CINSIYET: Integer; const DOGUM_TARIHI: string; 
                                 const DOGUM_YERI: string; const BABA_ADI: string; const ANA_ADI: string; const ACIL: Integer; const YATAN: Integer; 
                                 const KURUM_KODU: string; const KURUM_ADI: string; const SERVIS_KODU: string; const SERVIS_ADI: string; const SERPOL: Integer; 
                                 const DOKTOR_KODU: string; const DOKTOR_ADI: string; const DOKTOR_SOYADI: string; const DOKTOR_SICIL_NO: string; const TANI_KODU: string; 
                                 const TANI_ADI: string; const ACIKLAMA: string; const TEL: string; const TEL2: string; const MOBILTEL: string; 
                                 const EPOSTA: string; const SONUC_ALABILIR_YAKINI: string; const OZELKOD1: string; const OZELKOD2: string; const OZELKOD3: string; 
                                 const OZELKOD4: string; const OZELKOD5: string; const LABKABULTAR: string; const KANALMATAR: string; const TETKIKLER: string
                                 ): Integer; stdcall;
    function  ALISKayitEkleAdv(const entegRec: EntegRec): IslemSonuc; stdcall;
    function  ALISTetkikEkle(const VENUSER: string; const VENPASS: string; const ORNEKNO: Integer; const KONTROL_KODU: string; const TETKIKLER: string): IslemSonuc; stdcall;
    function  ALISOrnekSil(const VENUSER: string; const VENPASS: string; const ORNEKNO: Integer; const KONTROL_KODU: string): IslemSonuc; stdcall;
    function  ALISTetkikSil(const VENUSER: string; const VENPASS: string; const ORNEKNO: Integer; const KONTROL_KODU: string; const TETKIKLER: string): IslemSonuc; stdcall;
    function  ALISKayitSorguTamamlandi(const VENUSER: string; const VENPASS: string; const KAYITSORGU_ARR: ArrayOfKayitSorguTamamla): KayitSorguTamamlaDurum; stdcall;
    function  ALISOrnekDurum(const VENUSER: string; const VENPASS: string; const ORNEKNO: Integer): OrnekDurum; stdcall;
    function  ALISTekSonucDurum(const VENUSER: string; const VENPASS: string; const ORNEKNO: Integer; const TETKIK_KODU: string; const TETKIK_KODU2: string): ArrayOfSonucDurum; stdcall;
    function  ALISSonucDurum(const VENUSER: string; const VENPASS: string; const ORNEKNO: Integer): ArrayOfSonucDurum; stdcall;
    function  ALISIstemDurum(const VENUSER: string; const VENPASS: string; const TAKIPNO: string; const ORNEKNO: Integer; const TCKIMLIKNO: string; const DOSYANO: string
                             ): IstemDurum; stdcall;
    function  ALISSaglayiciSonucDurum(const VENUSER: string; const VENPASS: string; const SERVISGRUP_KODU: string; const KURUMGRUP_KODU: string; const DOKTORGRUP_KODU: string; const BASTAR: string; 
                                      const BITTAR: string; const TESTLER: string): SaglayiciSonucDurum; stdcall;
    function  ALISDiyalizSonucDurum(const VENUSER: string; const VENPASS: string; const ORNEKNO: Integer; const BASTAR: string; const BITTAR: string; const TESTLER: string; 
                                    const TC_KIMLIK_NO: string): DiyalizSonucDurum; stdcall;
    function  ALISKayitSorgula(const VENUSER: string; const VENPASS: string; const BASTAR: string; const BITTAR: string; const KONTROL_KODU: string): KayitSorgulaDurum; stdcall;
    function  ALISOrnekKayitSorgula(const VENUSER: string; const VENPASS: string; const BARKODNO: string; const KONTROL_KODU: string): OrnekKayitSorgulaDurum; stdcall;
    function  ALISSonucYaz(const VENUSER: string; const VENPASS: string; const SONUC_ID: Integer; const ORNEKNO: Integer; const CALISMA_TARIHI: string; const ENTEGRASYON_KODU: string; 
                           const SONUC: string; const CIHAZSONUC: string; const EKSONUC1: string; const EKSONUC2: string; const ACIKLAMA: string; 
                           const BIRIM: string; const NDARALIK: string; const NDUYGUN: string; const DUSUK_YUKSEK: string): IslemSonuc; stdcall;
    function  ALISSonucYazBasit(const VENUSER: string; const VENPASS: string; const SONUC_ID: Integer; const ORNEKNO: Integer; const CALISMA_TARIHI: string; const ENTEGRASYON_KODU: string; 
                                const SONUC: string; const CIHAZSONUC: string; const EKSONUC1: string; const EKSONUC2: string; const ACIKLAMA: string; 
                                const BIRIM: string; const NDARALIK: string; const NDUYGUN: string; const DUSUK_YUKSEK: string): Integer; stdcall;
    function  ALISDoktorBilgiSorgula(const VENUSER: string; const VENPASS: string; const DOKTOR_KODU: string): DoktorBilgi; stdcall;
    function  ALISBarkodBilgi(const VENUSER: string; const VENPASS: string; const ORNEKNO: Integer): IslemSonuc; stdcall;
    function  ALISBarkodTanim(const VENUSER: string; const VENPASS: string; const TERMINAL_ADI: string): BarkodTanim; stdcall;
    function  ALISEntegKodlari(const VENUSER: string; const VENPASS: string): EntegKodDurum; stdcall;
    function  ALISDoktorPanel(const VENUSER: string; const VENPASS: string; const KONTROL_KODU: string): PanelDurum; stdcall;
    function  ALISTalesemiSonucDurum(const VENUSER: string; const VENPASS: string; const ORNEKNO1: Integer; const ORNEKNO2: Integer): TalesemiSonucDurum; stdcall;
    function  ALISTalesemiKayitEkle(const VENUSER: string; const VENPASS: string; const ORNEKNO1: Integer; const ORNEKNO2: Integer; const ISTEKNEDENI: string; const AKRABAEVLI: EVET_HAYIR; 
                                    const TALESHIKAYE: EVET_HAYIR; const AKRABAKANSIZ: EVET_HAYIR; const DUZENTARIH: string; const DUZENLEYEN: string): IslemSonuc; stdcall;
    function  ALISOrnekDetayBilgiSorula(const VENUSER: string; const VENPASS: string; const ORNEKNO: Integer): ArrayOfOrnekDetayBilgi; stdcall;
  end;

function GetAlisWSSoap(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): AlisWSSoap;


implementation
  uses SysUtils;

function GetAlisWSSoap(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): AlisWSSoap;
const
  defWSDL = 'C:\Dializ2007_M3\AlisWS.wsdl';
  defURL  = 'http://94.102.66.146/alisWS/AlisWS.asmx';
  defSvc  = 'AlisWS';
  defPrt  = 'AlisWSSoap12';
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
    Result := (RIO as AlisWSSoap);
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


destructor EntegRec.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FTetkikArr)-1 do
    SysUtils.FreeAndNil(FTetkikArr[I]);
  System.SetLength(FTetkikArr, 0);
  inherited Destroy;
end;

procedure EntegRec.SetVENPASS(Index: Integer; const Astring: string);
begin
  FVENPASS := Astring;
  FVENPASS_Specified := True;
end;

function EntegRec.VENPASS_Specified(Index: Integer): boolean;
begin
  Result := FVENPASS_Specified;
end;

procedure EntegRec.SetVENUSER(Index: Integer; const Astring: string);
begin
  FVENUSER := Astring;
  FVENUSER_Specified := True;
end;

function EntegRec.VENUSER_Specified(Index: Integer): boolean;
begin
  Result := FVENUSER_Specified;
end;

procedure EntegRec.SetTETKIKLER(Index: Integer; const Astring: string);
begin
  FTETKIKLER := Astring;
  FTETKIKLER_Specified := True;
end;

function EntegRec.TETKIKLER_Specified(Index: Integer): boolean;
begin
  Result := FTETKIKLER_Specified;
end;

procedure EntegRec.SetTetkikArr(Index: Integer; const AArrayOfTetkik: ArrayOfTetkik);
begin
  FTetkikArr := AArrayOfTetkik;
  FTetkikArr_Specified := True;
end;

function EntegRec.TetkikArr_Specified(Index: Integer): boolean;
begin
  Result := FTetkikArr_Specified;
end;

procedure EntegRec.SetISTEM_TARIHI(Index: Integer; const Astring: string);
begin
  FISTEM_TARIHI := Astring;
  FISTEM_TARIHI_Specified := True;
end;

function EntegRec.ISTEM_TARIHI_Specified(Index: Integer): boolean;
begin
  Result := FISTEM_TARIHI_Specified;
end;

procedure EntegRec.SetTC_KIMLIKNO(Index: Integer; const Astring: string);
begin
  FTC_KIMLIKNO := Astring;
  FTC_KIMLIKNO_Specified := True;
end;

function EntegRec.TC_KIMLIKNO_Specified(Index: Integer): boolean;
begin
  Result := FTC_KIMLIKNO_Specified;
end;

procedure EntegRec.SetDOSYA_NO(Index: Integer; const Astring: string);
begin
  FDOSYA_NO := Astring;
  FDOSYA_NO_Specified := True;
end;

function EntegRec.DOSYA_NO_Specified(Index: Integer): boolean;
begin
  Result := FDOSYA_NO_Specified;
end;

procedure EntegRec.SetGELIS_NO(Index: Integer; const Astring: string);
begin
  FGELIS_NO := Astring;
  FGELIS_NO_Specified := True;
end;

function EntegRec.GELIS_NO_Specified(Index: Integer): boolean;
begin
  Result := FGELIS_NO_Specified;
end;

procedure EntegRec.SetAD(Index: Integer; const Astring: string);
begin
  FAD := Astring;
  FAD_Specified := True;
end;

function EntegRec.AD_Specified(Index: Integer): boolean;
begin
  Result := FAD_Specified;
end;

procedure EntegRec.SetSOYAD(Index: Integer; const Astring: string);
begin
  FSOYAD := Astring;
  FSOYAD_Specified := True;
end;

function EntegRec.SOYAD_Specified(Index: Integer): boolean;
begin
  Result := FSOYAD_Specified;
end;

procedure EntegRec.SetDOGUM_TARIHI(Index: Integer; const Astring: string);
begin
  FDOGUM_TARIHI := Astring;
  FDOGUM_TARIHI_Specified := True;
end;

function EntegRec.DOGUM_TARIHI_Specified(Index: Integer): boolean;
begin
  Result := FDOGUM_TARIHI_Specified;
end;

procedure EntegRec.SetDOGUM_YERI(Index: Integer; const Astring: string);
begin
  FDOGUM_YERI := Astring;
  FDOGUM_YERI_Specified := True;
end;

function EntegRec.DOGUM_YERI_Specified(Index: Integer): boolean;
begin
  Result := FDOGUM_YERI_Specified;
end;

procedure EntegRec.SetBABA_ADI(Index: Integer; const Astring: string);
begin
  FBABA_ADI := Astring;
  FBABA_ADI_Specified := True;
end;

function EntegRec.BABA_ADI_Specified(Index: Integer): boolean;
begin
  Result := FBABA_ADI_Specified;
end;

procedure EntegRec.SetANA_ADI(Index: Integer; const Astring: string);
begin
  FANA_ADI := Astring;
  FANA_ADI_Specified := True;
end;

function EntegRec.ANA_ADI_Specified(Index: Integer): boolean;
begin
  Result := FANA_ADI_Specified;
end;

procedure EntegRec.SetKURUM_KODU(Index: Integer; const Astring: string);
begin
  FKURUM_KODU := Astring;
  FKURUM_KODU_Specified := True;
end;

function EntegRec.KURUM_KODU_Specified(Index: Integer): boolean;
begin
  Result := FKURUM_KODU_Specified;
end;

procedure EntegRec.SetKURUM_ADI(Index: Integer; const Astring: string);
begin
  FKURUM_ADI := Astring;
  FKURUM_ADI_Specified := True;
end;

function EntegRec.KURUM_ADI_Specified(Index: Integer): boolean;
begin
  Result := FKURUM_ADI_Specified;
end;

procedure EntegRec.SetSERVIS_KODU(Index: Integer; const Astring: string);
begin
  FSERVIS_KODU := Astring;
  FSERVIS_KODU_Specified := True;
end;

function EntegRec.SERVIS_KODU_Specified(Index: Integer): boolean;
begin
  Result := FSERVIS_KODU_Specified;
end;

procedure EntegRec.SetSERVIS_ADI(Index: Integer; const Astring: string);
begin
  FSERVIS_ADI := Astring;
  FSERVIS_ADI_Specified := True;
end;

function EntegRec.SERVIS_ADI_Specified(Index: Integer): boolean;
begin
  Result := FSERVIS_ADI_Specified;
end;

procedure EntegRec.SetDOKTOR_KODU(Index: Integer; const Astring: string);
begin
  FDOKTOR_KODU := Astring;
  FDOKTOR_KODU_Specified := True;
end;

function EntegRec.DOKTOR_KODU_Specified(Index: Integer): boolean;
begin
  Result := FDOKTOR_KODU_Specified;
end;

procedure EntegRec.SetDOKTOR_ADI(Index: Integer; const Astring: string);
begin
  FDOKTOR_ADI := Astring;
  FDOKTOR_ADI_Specified := True;
end;

function EntegRec.DOKTOR_ADI_Specified(Index: Integer): boolean;
begin
  Result := FDOKTOR_ADI_Specified;
end;

procedure EntegRec.SetDOKTOR_SOYADI(Index: Integer; const Astring: string);
begin
  FDOKTOR_SOYADI := Astring;
  FDOKTOR_SOYADI_Specified := True;
end;

function EntegRec.DOKTOR_SOYADI_Specified(Index: Integer): boolean;
begin
  Result := FDOKTOR_SOYADI_Specified;
end;

procedure EntegRec.SetDOKTOR_SICIL_NO(Index: Integer; const Astring: string);
begin
  FDOKTOR_SICIL_NO := Astring;
  FDOKTOR_SICIL_NO_Specified := True;
end;

function EntegRec.DOKTOR_SICIL_NO_Specified(Index: Integer): boolean;
begin
  Result := FDOKTOR_SICIL_NO_Specified;
end;

procedure EntegRec.SetTANI_KODU(Index: Integer; const Astring: string);
begin
  FTANI_KODU := Astring;
  FTANI_KODU_Specified := True;
end;

function EntegRec.TANI_KODU_Specified(Index: Integer): boolean;
begin
  Result := FTANI_KODU_Specified;
end;

procedure EntegRec.SetTANI_ADI(Index: Integer; const Astring: string);
begin
  FTANI_ADI := Astring;
  FTANI_ADI_Specified := True;
end;

function EntegRec.TANI_ADI_Specified(Index: Integer): boolean;
begin
  Result := FTANI_ADI_Specified;
end;

procedure EntegRec.SetACIKLAMA(Index: Integer; const Astring: string);
begin
  FACIKLAMA := Astring;
  FACIKLAMA_Specified := True;
end;

function EntegRec.ACIKLAMA_Specified(Index: Integer): boolean;
begin
  Result := FACIKLAMA_Specified;
end;

procedure EntegRec.SetTEL(Index: Integer; const Astring: string);
begin
  FTEL := Astring;
  FTEL_Specified := True;
end;

function EntegRec.TEL_Specified(Index: Integer): boolean;
begin
  Result := FTEL_Specified;
end;

procedure EntegRec.SetTEL2(Index: Integer; const Astring: string);
begin
  FTEL2 := Astring;
  FTEL2_Specified := True;
end;

function EntegRec.TEL2_Specified(Index: Integer): boolean;
begin
  Result := FTEL2_Specified;
end;

procedure EntegRec.SetMOBILTEL(Index: Integer; const Astring: string);
begin
  FMOBILTEL := Astring;
  FMOBILTEL_Specified := True;
end;

function EntegRec.MOBILTEL_Specified(Index: Integer): boolean;
begin
  Result := FMOBILTEL_Specified;
end;

procedure EntegRec.SetEPOSTA(Index: Integer; const Astring: string);
begin
  FEPOSTA := Astring;
  FEPOSTA_Specified := True;
end;

function EntegRec.EPOSTA_Specified(Index: Integer): boolean;
begin
  Result := FEPOSTA_Specified;
end;

procedure EntegRec.SetSONUC_ALABILIR_YAKINI(Index: Integer; const Astring: string);
begin
  FSONUC_ALABILIR_YAKINI := Astring;
  FSONUC_ALABILIR_YAKINI_Specified := True;
end;

function EntegRec.SONUC_ALABILIR_YAKINI_Specified(Index: Integer): boolean;
begin
  Result := FSONUC_ALABILIR_YAKINI_Specified;
end;

procedure EntegRec.SetOZELKOD1(Index: Integer; const Astring: string);
begin
  FOZELKOD1 := Astring;
  FOZELKOD1_Specified := True;
end;

function EntegRec.OZELKOD1_Specified(Index: Integer): boolean;
begin
  Result := FOZELKOD1_Specified;
end;

procedure EntegRec.SetOZELKOD2(Index: Integer; const Astring: string);
begin
  FOZELKOD2 := Astring;
  FOZELKOD2_Specified := True;
end;

function EntegRec.OZELKOD2_Specified(Index: Integer): boolean;
begin
  Result := FOZELKOD2_Specified;
end;

procedure EntegRec.SetOZELKOD3(Index: Integer; const Astring: string);
begin
  FOZELKOD3 := Astring;
  FOZELKOD3_Specified := True;
end;

function EntegRec.OZELKOD3_Specified(Index: Integer): boolean;
begin
  Result := FOZELKOD3_Specified;
end;

procedure EntegRec.SetOZELKOD4(Index: Integer; const Astring: string);
begin
  FOZELKOD4 := Astring;
  FOZELKOD4_Specified := True;
end;

function EntegRec.OZELKOD4_Specified(Index: Integer): boolean;
begin
  Result := FOZELKOD4_Specified;
end;

procedure EntegRec.SetOZELKOD5(Index: Integer; const Astring: string);
begin
  FOZELKOD5 := Astring;
  FOZELKOD5_Specified := True;
end;

function EntegRec.OZELKOD5_Specified(Index: Integer): boolean;
begin
  Result := FOZELKOD5_Specified;
end;

procedure EntegRec.SetKANALMA_TARIHI(Index: Integer; const Astring: string);
begin
  FKANALMA_TARIHI := Astring;
  FKANALMA_TARIHI_Specified := True;
end;

function EntegRec.KANALMA_TARIHI_Specified(Index: Integer): boolean;
begin
  Result := FKANALMA_TARIHI_Specified;
end;

procedure EntegRec.SetLABKABUL_TARIHI(Index: Integer; const Astring: string);
begin
  FLABKABUL_TARIHI := Astring;
  FLABKABUL_TARIHI_Specified := True;
end;

function EntegRec.LABKABUL_TARIHI_Specified(Index: Integer): boolean;
begin
  Result := FLABKABUL_TARIHI_Specified;
end;

destructor Tetkik.Destroy;
begin
  SysUtils.FreeAndNil(FislemSonuc);
  inherited Destroy;
end;

procedure Tetkik.SetTETKIK_KODU(Index: Integer; const Astring: string);
begin
  FTETKIK_KODU := Astring;
  FTETKIK_KODU_Specified := True;
end;

function Tetkik.TETKIK_KODU_Specified(Index: Integer): boolean;
begin
  Result := FTETKIK_KODU_Specified;
end;

procedure Tetkik.SetISTEM_ID(Index: Integer; const Astring: string);
begin
  FISTEM_ID := Astring;
  FISTEM_ID_Specified := True;
end;

function Tetkik.ISTEM_ID_Specified(Index: Integer): boolean;
begin
  Result := FISTEM_ID_Specified;
end;

procedure Tetkik.SetTETKIK_ACIK(Index: Integer; const Astring: string);
begin
  FTETKIK_ACIK := Astring;
  FTETKIK_ACIK_Specified := True;
end;

function Tetkik.TETKIK_ACIK_Specified(Index: Integer): boolean;
begin
  Result := FTETKIK_ACIK_Specified;
end;

procedure Tetkik.SetislemSonuc(Index: Integer; const AIslemSonuc: IslemSonuc);
begin
  FislemSonuc := AIslemSonuc;
  FislemSonuc_Specified := True;
end;

function Tetkik.islemSonuc_Specified(Index: Integer): boolean;
begin
  Result := FislemSonuc_Specified;
end;

destructor IslemSonuc.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FTetkikArr)-1 do
    SysUtils.FreeAndNil(FTetkikArr[I]);
  System.SetLength(FTetkikArr, 0);
  for I := 0 to System.Length(FBarkodInfoArr)-1 do
    SysUtils.FreeAndNil(FBarkodInfoArr[I]);
  System.SetLength(FBarkodInfoArr, 0);
  inherited Destroy;
end;

procedure IslemSonuc.SetHataMesaji(Index: Integer; const Astring: string);
begin
  FHataMesaji := Astring;
  FHataMesaji_Specified := True;
end;

function IslemSonuc.HataMesaji_Specified(Index: Integer): boolean;
begin
  Result := FHataMesaji_Specified;
end;

procedure IslemSonuc.SetUyarýMesaji(Index: Integer; const Astring: string);
begin
  FUyarýMesaji := Astring;
  FUyarýMesaji_Specified := True;
end;

function IslemSonuc.UyarýMesaji_Specified(Index: Integer): boolean;
begin
  Result := FUyarýMesaji_Specified;
end;

procedure IslemSonuc.SetTetkikArr(Index: Integer; const AArrayOfTetkik: ArrayOfTetkik);
begin
  FTetkikArr := AArrayOfTetkik;
  FTetkikArr_Specified := True;
end;

function IslemSonuc.TetkikArr_Specified(Index: Integer): boolean;
begin
  Result := FTetkikArr_Specified;
end;

procedure IslemSonuc.SetBarkodInfoArr(Index: Integer; const AArrayOfBarkodInfo: ArrayOfBarkodInfo);
begin
  FBarkodInfoArr := AArrayOfBarkodInfo;
  FBarkodInfoArr_Specified := True;
end;

function IslemSonuc.BarkodInfoArr_Specified(Index: Integer): boolean;
begin
  Result := FBarkodInfoArr_Specified;
end;

procedure BarkodInfo.SetBARKODNO(Index: Integer; const Astring: string);
begin
  FBARKODNO := Astring;
  FBARKODNO_Specified := True;
end;

function BarkodInfo.BARKODNO_Specified(Index: Integer): boolean;
begin
  Result := FBARKODNO_Specified;
end;

procedure BarkodInfo.SetACIKLAMA1(Index: Integer; const Astring: string);
begin
  FACIKLAMA1 := Astring;
  FACIKLAMA1_Specified := True;
end;

function BarkodInfo.ACIKLAMA1_Specified(Index: Integer): boolean;
begin
  Result := FACIKLAMA1_Specified;
end;

procedure BarkodInfo.SetACIKLAMA2(Index: Integer; const Astring: string);
begin
  FACIKLAMA2 := Astring;
  FACIKLAMA2_Specified := True;
end;

function BarkodInfo.ACIKLAMA2_Specified(Index: Integer): boolean;
begin
  Result := FACIKLAMA2_Specified;
end;

procedure BarkodInfo.SetACIKLAMA3(Index: Integer; const Astring: string);
begin
  FACIKLAMA3 := Astring;
  FACIKLAMA3_Specified := True;
end;

function BarkodInfo.ACIKLAMA3_Specified(Index: Integer): boolean;
begin
  Result := FACIKLAMA3_Specified;
end;

procedure BarkodInfo.SetACIKLAMA4(Index: Integer; const Astring: string);
begin
  FACIKLAMA4 := Astring;
  FACIKLAMA4_Specified := True;
end;

function BarkodInfo.ACIKLAMA4_Specified(Index: Integer): boolean;
begin
  Result := FACIKLAMA4_Specified;
end;

procedure BarkodInfo.SetACIKLAMA5(Index: Integer; const Astring: string);
begin
  FACIKLAMA5 := Astring;
  FACIKLAMA5_Specified := True;
end;

function BarkodInfo.ACIKLAMA5_Specified(Index: Integer): boolean;
begin
  Result := FACIKLAMA5_Specified;
end;

procedure BarkodInfo.SetACIKLAMA6(Index: Integer; const Astring: string);
begin
  FACIKLAMA6 := Astring;
  FACIKLAMA6_Specified := True;
end;

function BarkodInfo.ACIKLAMA6_Specified(Index: Integer): boolean;
begin
  Result := FACIKLAMA6_Specified;
end;

procedure BarkodInfo.SetACIKLAMA7(Index: Integer; const Astring: string);
begin
  FACIKLAMA7 := Astring;
  FACIKLAMA7_Specified := True;
end;

function BarkodInfo.ACIKLAMA7_Specified(Index: Integer): boolean;
begin
  Result := FACIKLAMA7_Specified;
end;

procedure BarkodInfo.SetACIKLAMA8(Index: Integer; const Astring: string);
begin
  FACIKLAMA8 := Astring;
  FACIKLAMA8_Specified := True;
end;

function BarkodInfo.ACIKLAMA8_Specified(Index: Integer): boolean;
begin
  Result := FACIKLAMA8_Specified;
end;

procedure BarkodInfo.SetACIKLAMA9(Index: Integer; const Astring: string);
begin
  FACIKLAMA9 := Astring;
  FACIKLAMA9_Specified := True;
end;

function BarkodInfo.ACIKLAMA9_Specified(Index: Integer): boolean;
begin
  Result := FACIKLAMA9_Specified;
end;

procedure BarkodInfo.SetACIKLAMA10(Index: Integer; const Astring: string);
begin
  FACIKLAMA10 := Astring;
  FACIKLAMA10_Specified := True;
end;

function BarkodInfo.ACIKLAMA10_Specified(Index: Integer): boolean;
begin
  Result := FACIKLAMA10_Specified;
end;

procedure BarkodInfo.SetKATSAYI(Index: Integer; const Astring: string);
begin
  FKATSAYI := Astring;
  FKATSAYI_Specified := True;
end;

function BarkodInfo.KATSAYI_Specified(Index: Integer): boolean;
begin
  Result := FKATSAYI_Specified;
end;

procedure BarkodInfo.SetBARKOD_GRUBU(Index: Integer; const Astring: string);
begin
  FBARKOD_GRUBU := Astring;
  FBARKOD_GRUBU_Specified := True;
end;

function BarkodInfo.BARKOD_GRUBU_Specified(Index: Integer): boolean;
begin
  Result := FBARKOD_GRUBU_Specified;
end;

procedure KayitSorguTamamla.SetKONTROL_KODU(Index: Integer; const Astring: string);
begin
  FKONTROL_KODU := Astring;
  FKONTROL_KODU_Specified := True;
end;

function KayitSorguTamamla.KONTROL_KODU_Specified(Index: Integer): boolean;
begin
  Result := FKONTROL_KODU_Specified;
end;

procedure KayitSorguTamamla.SetHATA_MESAJI(Index: Integer; const Astring: string);
begin
  FHATA_MESAJI := Astring;
  FHATA_MESAJI_Specified := True;
end;

function KayitSorguTamamla.HATA_MESAJI_Specified(Index: Integer): boolean;
begin
  Result := FHATA_MESAJI_Specified;
end;

destructor KayitSorguTamamlaDurum.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FKAYIT_SORGU_ARR)-1 do
    SysUtils.FreeAndNil(FKAYIT_SORGU_ARR[I]);
  System.SetLength(FKAYIT_SORGU_ARR, 0);
  inherited Destroy;
end;

procedure KayitSorguTamamlaDurum.SetHATA_MESAJI(Index: Integer; const Astring: string);
begin
  FHATA_MESAJI := Astring;
  FHATA_MESAJI_Specified := True;
end;

function KayitSorguTamamlaDurum.HATA_MESAJI_Specified(Index: Integer): boolean;
begin
  Result := FHATA_MESAJI_Specified;
end;

procedure KayitSorguTamamlaDurum.SetKAYIT_SORGU_ARR(Index: Integer; const AArrayOfKayitSorguTamamla: ArrayOfKayitSorguTamamla);
begin
  FKAYIT_SORGU_ARR := AArrayOfKayitSorguTamamla;
  FKAYIT_SORGU_ARR_Specified := True;
end;

function KayitSorguTamamlaDurum.KAYIT_SORGU_ARR_Specified(Index: Integer): boolean;
begin
  Result := FKAYIT_SORGU_ARR_Specified;
end;

destructor OrnekDurum.Destroy;
begin
  SysUtils.FreeAndNil(FislemSonuc);
  inherited Destroy;
end;

procedure OrnekDurum.SetislemSonuc(Index: Integer; const AIslemSonuc: IslemSonuc);
begin
  FislemSonuc := AIslemSonuc;
  FislemSonuc_Specified := True;
end;

function OrnekDurum.islemSonuc_Specified(Index: Integer): boolean;
begin
  Result := FislemSonuc_Specified;
end;

procedure OrnekDurum.SetTUMUBOS(Index: Integer; const Astring: string);
begin
  FTUMUBOS := Astring;
  FTUMUBOS_Specified := True;
end;

function OrnekDurum.TUMUBOS_Specified(Index: Integer): boolean;
begin
  Result := FTUMUBOS_Specified;
end;

procedure OrnekDurum.SetTUMUDOLU(Index: Integer; const Astring: string);
begin
  FTUMUDOLU := Astring;
  FTUMUDOLU_Specified := True;
end;

function OrnekDurum.TUMUDOLU_Specified(Index: Integer): boolean;
begin
  Result := FTUMUDOLU_Specified;
end;

procedure OrnekDurum.SetTUMUONAYLI(Index: Integer; const Astring: string);
begin
  FTUMUONAYLI := Astring;
  FTUMUONAYLI_Specified := True;
end;

function OrnekDurum.TUMUONAYLI_Specified(Index: Integer): boolean;
begin
  Result := FTUMUONAYLI_Specified;
end;

procedure OrnekDurum.SetTUMUBASILMIS(Index: Integer; const Astring: string);
begin
  FTUMUBASILMIS := Astring;
  FTUMUBASILMIS_Specified := True;
end;

function OrnekDurum.TUMUBASILMIS_Specified(Index: Integer): boolean;
begin
  Result := FTUMUBASILMIS_Specified;
end;

destructor SonucDurum.Destroy;
begin
  SysUtils.FreeAndNil(FislemSonuc);
  SysUtils.FreeAndNil(FKULTUR_SONUC);
  inherited Destroy;
end;

procedure SonucDurum.SetislemSonuc(Index: Integer; const AIslemSonuc: IslemSonuc);
begin
  FislemSonuc := AIslemSonuc;
  FislemSonuc_Specified := True;
end;

function SonucDurum.islemSonuc_Specified(Index: Integer): boolean;
begin
  Result := FislemSonuc_Specified;
end;

procedure SonucDurum.SetHASTA_ADI(Index: Integer; const Astring: string);
begin
  FHASTA_ADI := Astring;
  FHASTA_ADI_Specified := True;
end;

function SonucDurum.HASTA_ADI_Specified(Index: Integer): boolean;
begin
  Result := FHASTA_ADI_Specified;
end;

procedure SonucDurum.SetHASTA_SOYADI(Index: Integer; const Astring: string);
begin
  FHASTA_SOYADI := Astring;
  FHASTA_SOYADI_Specified := True;
end;

function SonucDurum.HASTA_SOYADI_Specified(Index: Integer): boolean;
begin
  Result := FHASTA_SOYADI_Specified;
end;

procedure SonucDurum.SetTC_KIMLIKNO(Index: Integer; const Astring: string);
begin
  FTC_KIMLIKNO := Astring;
  FTC_KIMLIKNO_Specified := True;
end;

function SonucDurum.TC_KIMLIKNO_Specified(Index: Integer): boolean;
begin
  Result := FTC_KIMLIKNO_Specified;
end;

procedure SonucDurum.SetCINSIYET(Index: Integer; const Astring: string);
begin
  FCINSIYET := Astring;
  FCINSIYET_Specified := True;
end;

function SonucDurum.CINSIYET_Specified(Index: Integer): boolean;
begin
  Result := FCINSIYET_Specified;
end;

procedure SonucDurum.SetUNITE_ADI(Index: Integer; const Astring: string);
begin
  FUNITE_ADI := Astring;
  FUNITE_ADI_Specified := True;
end;

function SonucDurum.UNITE_ADI_Specified(Index: Integer): boolean;
begin
  Result := FUNITE_ADI_Specified;
end;

procedure SonucDurum.SetTEST_ADI(Index: Integer; const Astring: string);
begin
  FTEST_ADI := Astring;
  FTEST_ADI_Specified := True;
end;

function SonucDurum.TEST_ADI_Specified(Index: Integer): boolean;
begin
  Result := FTEST_ADI_Specified;
end;

procedure SonucDurum.SetSONUC(Index: Integer; const Astring: string);
begin
  FSONUC := Astring;
  FSONUC_Specified := True;
end;

function SonucDurum.SONUC_Specified(Index: Integer): boolean;
begin
  Result := FSONUC_Specified;
end;

procedure SonucDurum.SetKULTUR_SONUC(Index: Integer; const AKULTURSONUC: KULTURSONUC);
begin
  FKULTUR_SONUC := AKULTURSONUC;
  FKULTUR_SONUC_Specified := True;
end;

function SonucDurum.KULTUR_SONUC_Specified(Index: Integer): boolean;
begin
  Result := FKULTUR_SONUC_Specified;
end;

procedure SonucDurum.SetEKSONUC1(Index: Integer; const Astring: string);
begin
  FEKSONUC1 := Astring;
  FEKSONUC1_Specified := True;
end;

function SonucDurum.EKSONUC1_Specified(Index: Integer): boolean;
begin
  Result := FEKSONUC1_Specified;
end;

procedure SonucDurum.SetEKSONUC2(Index: Integer; const Astring: string);
begin
  FEKSONUC2 := Astring;
  FEKSONUC2_Specified := True;
end;

function SonucDurum.EKSONUC2_Specified(Index: Integer): boolean;
begin
  Result := FEKSONUC2_Specified;
end;

procedure SonucDurum.SetACIKLAMA(Index: Integer; const Astring: string);
begin
  FACIKLAMA := Astring;
  FACIKLAMA_Specified := True;
end;

function SonucDurum.ACIKLAMA_Specified(Index: Integer): boolean;
begin
  Result := FACIKLAMA_Specified;
end;

procedure SonucDurum.SetDETAY_ACIKLAMA(Index: Integer; const Astring: string);
begin
  FDETAY_ACIKLAMA := Astring;
  FDETAY_ACIKLAMA_Specified := True;
end;

function SonucDurum.DETAY_ACIKLAMA_Specified(Index: Integer): boolean;
begin
  Result := FDETAY_ACIKLAMA_Specified;
end;

procedure SonucDurum.SetREF_DEGER(Index: Integer; const Astring: string);
begin
  FREF_DEGER := Astring;
  FREF_DEGER_Specified := True;
end;

function SonucDurum.REF_DEGER_Specified(Index: Integer): boolean;
begin
  Result := FREF_DEGER_Specified;
end;

procedure SonucDurum.SetDUSUK_YUKSEK(Index: Integer; const Astring: string);
begin
  FDUSUK_YUKSEK := Astring;
  FDUSUK_YUKSEK_Specified := True;
end;

function SonucDurum.DUSUK_YUKSEK_Specified(Index: Integer): boolean;
begin
  Result := FDUSUK_YUKSEK_Specified;
end;

procedure SonucDurum.SetBIRIM(Index: Integer; const Astring: string);
begin
  FBIRIM := Astring;
  FBIRIM_Specified := True;
end;

function SonucDurum.BIRIM_Specified(Index: Integer): boolean;
begin
  Result := FBIRIM_Specified;
end;

procedure SonucDurum.SetGONDERILDI(Index: Integer; const Astring: string);
begin
  FGONDERILDI := Astring;
  FGONDERILDI_Specified := True;
end;

function SonucDurum.GONDERILDI_Specified(Index: Integer): boolean;
begin
  Result := FGONDERILDI_Specified;
end;

procedure SonucDurum.SetPATOLOJIK(Index: Integer; const Astring: string);
begin
  FPATOLOJIK := Astring;
  FPATOLOJIK_Specified := True;
end;

function SonucDurum.PATOLOJIK_Specified(Index: Integer): boolean;
begin
  Result := FPATOLOJIK_Specified;
end;

procedure SonucDurum.SetKULTUR_TESTI(Index: Integer; const Astring: string);
begin
  FKULTUR_TESTI := Astring;
  FKULTUR_TESTI_Specified := True;
end;

function SonucDurum.KULTUR_TESTI_Specified(Index: Integer): boolean;
begin
  Result := FKULTUR_TESTI_Specified;
end;

procedure SonucDurum.SetKAYIT_TARIHI(Index: Integer; const Astring: string);
begin
  FKAYIT_TARIHI := Astring;
  FKAYIT_TARIHI_Specified := True;
end;

function SonucDurum.KAYIT_TARIHI_Specified(Index: Integer): boolean;
begin
  Result := FKAYIT_TARIHI_Specified;
end;

procedure SonucDurum.SetCALISMA_TARIHI(Index: Integer; const Astring: string);
begin
  FCALISMA_TARIHI := Astring;
  FCALISMA_TARIHI_Specified := True;
end;

function SonucDurum.CALISMA_TARIHI_Specified(Index: Integer): boolean;
begin
  Result := FCALISMA_TARIHI_Specified;
end;

procedure SonucDurum.SetSONUC_ENTEG1(Index: Integer; const Astring: string);
begin
  FSONUC_ENTEG1 := Astring;
  FSONUC_ENTEG1_Specified := True;
end;

function SonucDurum.SONUC_ENTEG1_Specified(Index: Integer): boolean;
begin
  Result := FSONUC_ENTEG1_Specified;
end;

procedure SonucDurum.SetSONUC_ENTEG2(Index: Integer; const Astring: string);
begin
  FSONUC_ENTEG2 := Astring;
  FSONUC_ENTEG2_Specified := True;
end;

function SonucDurum.SONUC_ENTEG2_Specified(Index: Integer): boolean;
begin
  Result := FSONUC_ENTEG2_Specified;
end;

procedure SonucDurum.SetSONUC_ENTEG3(Index: Integer; const Astring: string);
begin
  FSONUC_ENTEG3 := Astring;
  FSONUC_ENTEG3_Specified := True;
end;

function SonucDurum.SONUC_ENTEG3_Specified(Index: Integer): boolean;
begin
  Result := FSONUC_ENTEG3_Specified;
end;

procedure SonucDurum.SetTETKIK_KODU(Index: Integer; const Astring: string);
begin
  FTETKIK_KODU := Astring;
  FTETKIK_KODU_Specified := True;
end;

function SonucDurum.TETKIK_KODU_Specified(Index: Integer): boolean;
begin
  Result := FTETKIK_KODU_Specified;
end;

procedure SonucDurum.SetTETKIK_KODU2(Index: Integer; const Astring: string);
begin
  FTETKIK_KODU2 := Astring;
  FTETKIK_KODU2_Specified := True;
end;

function SonucDurum.TETKIK_KODU2_Specified(Index: Integer): boolean;
begin
  Result := FTETKIK_KODU2_Specified;
end;

procedure SonucDurum.SetONAYLI(Index: Integer; const Astring: string);
begin
  FONAYLI := Astring;
  FONAYLI_Specified := True;
end;

function SonucDurum.ONAYLI_Specified(Index: Integer): boolean;
begin
  Result := FONAYLI_Specified;
end;

procedure SonucDurum.SetSONUC_DURUM_ACIKLAMA(Index: Integer; const Astring: string);
begin
  FSONUC_DURUM_ACIKLAMA := Astring;
  FSONUC_DURUM_ACIKLAMA_Specified := True;
end;

function SonucDurum.SONUC_DURUM_ACIKLAMA_Specified(Index: Integer): boolean;
begin
  Result := FSONUC_DURUM_ACIKLAMA_Specified;
end;

destructor KULTURSONUC.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FORGANIZMASONUCLIST)-1 do
    SysUtils.FreeAndNil(FORGANIZMASONUCLIST[I]);
  System.SetLength(FORGANIZMASONUCLIST, 0);
  inherited Destroy;
end;

procedure KULTURSONUC.SetSONUC(Index: Integer; const Astring: string);
begin
  FSONUC := Astring;
  FSONUC_Specified := True;
end;

function KULTURSONUC.SONUC_Specified(Index: Integer): boolean;
begin
  Result := FSONUC_Specified;
end;

procedure KULTURSONUC.SetMIKALINYER_ADI(Index: Integer; const Astring: string);
begin
  FMIKALINYER_ADI := Astring;
  FMIKALINYER_ADI_Specified := True;
end;

function KULTURSONUC.MIKALINYER_ADI_Specified(Index: Integer): boolean;
begin
  Result := FMIKALINYER_ADI_Specified;
end;

procedure KULTURSONUC.SetMIKMATERYAL_ADI(Index: Integer; const Astring: string);
begin
  FMIKMATERYAL_ADI := Astring;
  FMIKMATERYAL_ADI_Specified := True;
end;

function KULTURSONUC.MIKMATERYAL_ADI_Specified(Index: Integer): boolean;
begin
  Result := FMIKMATERYAL_ADI_Specified;
end;

procedure KULTURSONUC.SetSONUCACIK(Index: Integer; const Astring: string);
begin
  FSONUCACIK := Astring;
  FSONUCACIK_Specified := True;
end;

function KULTURSONUC.SONUCACIK_Specified(Index: Integer): boolean;
begin
  Result := FSONUCACIK_Specified;
end;

procedure KULTURSONUC.SetMIKROSKOBI(Index: Integer; const Astring: string);
begin
  FMIKROSKOBI := Astring;
  FMIKROSKOBI_Specified := True;
end;

function KULTURSONUC.MIKROSKOBI_Specified(Index: Integer): boolean;
begin
  Result := FMIKROSKOBI_Specified;
end;

procedure KULTURSONUC.SetBOYAMA(Index: Integer; const Astring: string);
begin
  FBOYAMA := Astring;
  FBOYAMA_Specified := True;
end;

function KULTURSONUC.BOYAMA_Specified(Index: Integer): boolean;
begin
  Result := FBOYAMA_Specified;
end;

procedure KULTURSONUC.SetORGANIZMASONUCLIST(Index: Integer; const AArrayOfORGANIZMASONUC: ArrayOfORGANIZMASONUC);
begin
  FORGANIZMASONUCLIST := AArrayOfORGANIZMASONUC;
  FORGANIZMASONUCLIST_Specified := True;
end;

function KULTURSONUC.ORGANIZMASONUCLIST_Specified(Index: Integer): boolean;
begin
  Result := FORGANIZMASONUCLIST_Specified;
end;

destructor ORGANIZMASONUC.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FADTSONUCLIST)-1 do
    SysUtils.FreeAndNil(FADTSONUCLIST[I]);
  System.SetLength(FADTSONUCLIST, 0);
  inherited Destroy;
end;

procedure ORGANIZMASONUC.SetORGANIZMA_ADI(Index: Integer; const Astring: string);
begin
  FORGANIZMA_ADI := Astring;
  FORGANIZMA_ADI_Specified := True;
end;

function ORGANIZMASONUC.ORGANIZMA_ADI_Specified(Index: Integer): boolean;
begin
  Result := FORGANIZMA_ADI_Specified;
end;

procedure ORGANIZMASONUC.SetUREME_DUZEYI(Index: Integer; const Astring: string);
begin
  FUREME_DUZEYI := Astring;
  FUREME_DUZEYI_Specified := True;
end;

function ORGANIZMASONUC.UREME_DUZEYI_Specified(Index: Integer): boolean;
begin
  Result := FUREME_DUZEYI_Specified;
end;

procedure ORGANIZMASONUC.SetADTSONUCLIST(Index: Integer; const AArrayOfADTSONUC: ArrayOfADTSONUC);
begin
  FADTSONUCLIST := AArrayOfADTSONUC;
  FADTSONUCLIST_Specified := True;
end;

function ORGANIZMASONUC.ADTSONUCLIST_Specified(Index: Integer): boolean;
begin
  Result := FADTSONUCLIST_Specified;
end;

procedure ADTSONUC.SetANTIBIOGR_ADI(Index: Integer; const Astring: string);
begin
  FANTIBIOGR_ADI := Astring;
  FANTIBIOGR_ADI_Specified := True;
end;

function ADTSONUC.ANTIBIOGR_ADI_Specified(Index: Integer): boolean;
begin
  Result := FANTIBIOGR_ADI_Specified;
end;

procedure ADTSONUC.SetANTIBIO_ADI(Index: Integer; const Astring: string);
begin
  FANTIBIO_ADI := Astring;
  FANTIBIO_ADI_Specified := True;
end;

function ADTSONUC.ANTIBIO_ADI_Specified(Index: Integer): boolean;
begin
  Result := FANTIBIO_ADI_Specified;
end;

procedure ADTSONUC.SetACIKLAMA(Index: Integer; const Astring: string);
begin
  FACIKLAMA := Astring;
  FACIKLAMA_Specified := True;
end;

function ADTSONUC.ACIKLAMA_Specified(Index: Integer): boolean;
begin
  Result := FACIKLAMA_Specified;
end;

procedure ADTSONUC.SetKONSANTRASYON(Index: Integer; const Astring: string);
begin
  FKONSANTRASYON := Astring;
  FKONSANTRASYON_Specified := True;
end;

function ADTSONUC.KONSANTRASYON_Specified(Index: Integer): boolean;
begin
  Result := FKONSANTRASYON_Specified;
end;

procedure ADTSONUC.SetKONSANTRASYON_BIRIM(Index: Integer; const Astring: string);
begin
  FKONSANTRASYON_BIRIM := Astring;
  FKONSANTRASYON_BIRIM_Specified := True;
end;

function ADTSONUC.KONSANTRASYON_BIRIM_Specified(Index: Integer): boolean;
begin
  Result := FKONSANTRASYON_BIRIM_Specified;
end;

destructor IstemDurum.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FIstemArr)-1 do
    SysUtils.FreeAndNil(FIstemArr[I]);
  System.SetLength(FIstemArr, 0);
  SysUtils.FreeAndNil(FislemSonuc);
  inherited Destroy;
end;

procedure IstemDurum.SetislemSonuc(Index: Integer; const AIslemSonuc: IslemSonuc);
begin
  FislemSonuc := AIslemSonuc;
  FislemSonuc_Specified := True;
end;

function IstemDurum.islemSonuc_Specified(Index: Integer): boolean;
begin
  Result := FislemSonuc_Specified;
end;

procedure IstemDurum.SetIstemArr(Index: Integer; const AArrayOfIstem: ArrayOfIstem);
begin
  FIstemArr := AArrayOfIstem;
  FIstemArr_Specified := True;
end;

function IstemDurum.IstemArr_Specified(Index: Integer): boolean;
begin
  Result := FIstemArr_Specified;
end;

procedure Istem.SetTAKIPNO(Index: Integer; const Astring: string);
begin
  FTAKIPNO := Astring;
  FTAKIPNO_Specified := True;
end;

function Istem.TAKIPNO_Specified(Index: Integer): boolean;
begin
  Result := FTAKIPNO_Specified;
end;

procedure Istem.SetTETKIK_KODU(Index: Integer; const Astring: string);
begin
  FTETKIK_KODU := Astring;
  FTETKIK_KODU_Specified := True;
end;

function Istem.TETKIK_KODU_Specified(Index: Integer): boolean;
begin
  Result := FTETKIK_KODU_Specified;
end;

procedure Istem.SetTETKIK_KODU2(Index: Integer; const Astring: string);
begin
  FTETKIK_KODU2 := Astring;
  FTETKIK_KODU2_Specified := True;
end;

function Istem.TETKIK_KODU2_Specified(Index: Integer): boolean;
begin
  Result := FTETKIK_KODU2_Specified;
end;

destructor SaglayiciSonucDurum.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FSonucDurumArr)-1 do
    SysUtils.FreeAndNil(FSonucDurumArr[I]);
  System.SetLength(FSonucDurumArr, 0);
  inherited Destroy;
end;

procedure SaglayiciSonucDurum.SetServisGrKodu(Index: Integer; const Astring: string);
begin
  FServisGrKodu := Astring;
  FServisGrKodu_Specified := True;
end;

function SaglayiciSonucDurum.ServisGrKodu_Specified(Index: Integer): boolean;
begin
  Result := FServisGrKodu_Specified;
end;

procedure SaglayiciSonucDurum.SetKurumGrKodu(Index: Integer; const Astring: string);
begin
  FKurumGrKodu := Astring;
  FKurumGrKodu_Specified := True;
end;

function SaglayiciSonucDurum.KurumGrKodu_Specified(Index: Integer): boolean;
begin
  Result := FKurumGrKodu_Specified;
end;

procedure SaglayiciSonucDurum.SetDoktorGrKodu(Index: Integer; const Astring: string);
begin
  FDoktorGrKodu := Astring;
  FDoktorGrKodu_Specified := True;
end;

function SaglayiciSonucDurum.DoktorGrKodu_Specified(Index: Integer): boolean;
begin
  Result := FDoktorGrKodu_Specified;
end;

procedure SaglayiciSonucDurum.SetBasTar(Index: Integer; const Astring: string);
begin
  FBasTar := Astring;
  FBasTar_Specified := True;
end;

function SaglayiciSonucDurum.BasTar_Specified(Index: Integer): boolean;
begin
  Result := FBasTar_Specified;
end;

procedure SaglayiciSonucDurum.SetBitTar(Index: Integer; const Astring: string);
begin
  FBitTar := Astring;
  FBitTar_Specified := True;
end;

function SaglayiciSonucDurum.BitTar_Specified(Index: Integer): boolean;
begin
  Result := FBitTar_Specified;
end;

procedure SaglayiciSonucDurum.SetTestler(Index: Integer; const Astring: string);
begin
  FTestler := Astring;
  FTestler_Specified := True;
end;

function SaglayiciSonucDurum.Testler_Specified(Index: Integer): boolean;
begin
  Result := FTestler_Specified;
end;

procedure SaglayiciSonucDurum.SetSonucDurumArr(Index: Integer; const AArrayOfSonucDurum: ArrayOfSonucDurum);
begin
  FSonucDurumArr := AArrayOfSonucDurum;
  FSonucDurumArr_Specified := True;
end;

function SaglayiciSonucDurum.SonucDurumArr_Specified(Index: Integer): boolean;
begin
  Result := FSonucDurumArr_Specified;
end;

destructor DiyalizSonucDurum.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FSonucDurumArr)-1 do
    SysUtils.FreeAndNil(FSonucDurumArr[I]);
  System.SetLength(FSonucDurumArr, 0);
  inherited Destroy;
end;

procedure DiyalizSonucDurum.SetServisKodu(Index: Integer; const Astring: string);
begin
  FServisKodu := Astring;
  FServisKodu_Specified := True;
end;

function DiyalizSonucDurum.ServisKodu_Specified(Index: Integer): boolean;
begin
  Result := FServisKodu_Specified;
end;

procedure DiyalizSonucDurum.SetKurumKodu(Index: Integer; const Astring: string);
begin
  FKurumKodu := Astring;
  FKurumKodu_Specified := True;
end;

function DiyalizSonucDurum.KurumKodu_Specified(Index: Integer): boolean;
begin
  Result := FKurumKodu_Specified;
end;

procedure DiyalizSonucDurum.SetBasTar(Index: Integer; const Astring: string);
begin
  FBasTar := Astring;
  FBasTar_Specified := True;
end;

function DiyalizSonucDurum.BasTar_Specified(Index: Integer): boolean;
begin
  Result := FBasTar_Specified;
end;

procedure DiyalizSonucDurum.SetBitTar(Index: Integer; const Astring: string);
begin
  FBitTar := Astring;
  FBitTar_Specified := True;
end;

function DiyalizSonucDurum.BitTar_Specified(Index: Integer): boolean;
begin
  Result := FBitTar_Specified;
end;

procedure DiyalizSonucDurum.SetTestler(Index: Integer; const Astring: string);
begin
  FTestler := Astring;
  FTestler_Specified := True;
end;

function DiyalizSonucDurum.Testler_Specified(Index: Integer): boolean;
begin
  Result := FTestler_Specified;
end;

procedure DiyalizSonucDurum.SetSonucDurumArr(Index: Integer; const AArrayOfSonucDurum: ArrayOfSonucDurum);
begin
  FSonucDurumArr := AArrayOfSonucDurum;
  FSonucDurumArr_Specified := True;
end;

function DiyalizSonucDurum.SonucDurumArr_Specified(Index: Integer): boolean;
begin
  Result := FSonucDurumArr_Specified;
end;

destructor KayitSorgulaDurum.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FKayitDurumArr)-1 do
    SysUtils.FreeAndNil(FKayitDurumArr[I]);
  System.SetLength(FKayitDurumArr, 0);
  SysUtils.FreeAndNil(FislemSonuc);
  inherited Destroy;
end;

procedure KayitSorgulaDurum.SetislemSonuc(Index: Integer; const AIslemSonuc: IslemSonuc);
begin
  FislemSonuc := AIslemSonuc;
  FislemSonuc_Specified := True;
end;

function KayitSorgulaDurum.islemSonuc_Specified(Index: Integer): boolean;
begin
  Result := FislemSonuc_Specified;
end;

procedure KayitSorgulaDurum.SetKayitDurumArr(Index: Integer; const AArrayOfKayitDurum: ArrayOfKayitDurum);
begin
  FKayitDurumArr := AArrayOfKayitDurum;
  FKayitDurumArr_Specified := True;
end;

function KayitSorgulaDurum.KayitDurumArr_Specified(Index: Integer): boolean;
begin
  Result := FKayitDurumArr_Specified;
end;

procedure KayitDurum.SetISTEM_TARIHI(Index: Integer; const Astring: string);
begin
  FISTEM_TARIHI := Astring;
  FISTEM_TARIHI_Specified := True;
end;

function KayitDurum.ISTEM_TARIHI_Specified(Index: Integer): boolean;
begin
  Result := FISTEM_TARIHI_Specified;
end;

procedure KayitDurum.SetTC_KIMLIKNO(Index: Integer; const Astring: string);
begin
  FTC_KIMLIKNO := Astring;
  FTC_KIMLIKNO_Specified := True;
end;

function KayitDurum.TC_KIMLIKNO_Specified(Index: Integer): boolean;
begin
  Result := FTC_KIMLIKNO_Specified;
end;

procedure KayitDurum.SetDOSYA_NO(Index: Integer; const Astring: string);
begin
  FDOSYA_NO := Astring;
  FDOSYA_NO_Specified := True;
end;

function KayitDurum.DOSYA_NO_Specified(Index: Integer): boolean;
begin
  Result := FDOSYA_NO_Specified;
end;

procedure KayitDurum.SetGELIS_NO(Index: Integer; const Astring: string);
begin
  FGELIS_NO := Astring;
  FGELIS_NO_Specified := True;
end;

function KayitDurum.GELIS_NO_Specified(Index: Integer): boolean;
begin
  Result := FGELIS_NO_Specified;
end;

procedure KayitDurum.SetHASTA_ADI(Index: Integer; const Astring: string);
begin
  FHASTA_ADI := Astring;
  FHASTA_ADI_Specified := True;
end;

function KayitDurum.HASTA_ADI_Specified(Index: Integer): boolean;
begin
  Result := FHASTA_ADI_Specified;
end;

procedure KayitDurum.SetHASTA_SOYADI(Index: Integer; const Astring: string);
begin
  FHASTA_SOYADI := Astring;
  FHASTA_SOYADI_Specified := True;
end;

function KayitDurum.HASTA_SOYADI_Specified(Index: Integer): boolean;
begin
  Result := FHASTA_SOYADI_Specified;
end;

procedure KayitDurum.SetDOGUM_TARIHI(Index: Integer; const Astring: string);
begin
  FDOGUM_TARIHI := Astring;
  FDOGUM_TARIHI_Specified := True;
end;

function KayitDurum.DOGUM_TARIHI_Specified(Index: Integer): boolean;
begin
  Result := FDOGUM_TARIHI_Specified;
end;

procedure KayitDurum.SetDOGUM_YERI(Index: Integer; const Astring: string);
begin
  FDOGUM_YERI := Astring;
  FDOGUM_YERI_Specified := True;
end;

function KayitDurum.DOGUM_YERI_Specified(Index: Integer): boolean;
begin
  Result := FDOGUM_YERI_Specified;
end;

procedure KayitDurum.SetBABA_ADI(Index: Integer; const Astring: string);
begin
  FBABA_ADI := Astring;
  FBABA_ADI_Specified := True;
end;

function KayitDurum.BABA_ADI_Specified(Index: Integer): boolean;
begin
  Result := FBABA_ADI_Specified;
end;

procedure KayitDurum.SetANA_ADI(Index: Integer; const Astring: string);
begin
  FANA_ADI := Astring;
  FANA_ADI_Specified := True;
end;

function KayitDurum.ANA_ADI_Specified(Index: Integer): boolean;
begin
  Result := FANA_ADI_Specified;
end;

procedure KayitDurum.SetKURUM_KODU(Index: Integer; const Astring: string);
begin
  FKURUM_KODU := Astring;
  FKURUM_KODU_Specified := True;
end;

function KayitDurum.KURUM_KODU_Specified(Index: Integer): boolean;
begin
  Result := FKURUM_KODU_Specified;
end;

procedure KayitDurum.SetKURUM_ADI(Index: Integer; const Astring: string);
begin
  FKURUM_ADI := Astring;
  FKURUM_ADI_Specified := True;
end;

function KayitDurum.KURUM_ADI_Specified(Index: Integer): boolean;
begin
  Result := FKURUM_ADI_Specified;
end;

procedure KayitDurum.SetSERVIS_KODU(Index: Integer; const Astring: string);
begin
  FSERVIS_KODU := Astring;
  FSERVIS_KODU_Specified := True;
end;

function KayitDurum.SERVIS_KODU_Specified(Index: Integer): boolean;
begin
  Result := FSERVIS_KODU_Specified;
end;

procedure KayitDurum.SetSERVIS_ADI(Index: Integer; const Astring: string);
begin
  FSERVIS_ADI := Astring;
  FSERVIS_ADI_Specified := True;
end;

function KayitDurum.SERVIS_ADI_Specified(Index: Integer): boolean;
begin
  Result := FSERVIS_ADI_Specified;
end;

procedure KayitDurum.SetDOKTOR_KODU(Index: Integer; const Astring: string);
begin
  FDOKTOR_KODU := Astring;
  FDOKTOR_KODU_Specified := True;
end;

function KayitDurum.DOKTOR_KODU_Specified(Index: Integer): boolean;
begin
  Result := FDOKTOR_KODU_Specified;
end;

procedure KayitDurum.SetDOKTOR_ADI(Index: Integer; const Astring: string);
begin
  FDOKTOR_ADI := Astring;
  FDOKTOR_ADI_Specified := True;
end;

function KayitDurum.DOKTOR_ADI_Specified(Index: Integer): boolean;
begin
  Result := FDOKTOR_ADI_Specified;
end;

procedure KayitDurum.SetDOKTOR_SOYADI(Index: Integer; const Astring: string);
begin
  FDOKTOR_SOYADI := Astring;
  FDOKTOR_SOYADI_Specified := True;
end;

function KayitDurum.DOKTOR_SOYADI_Specified(Index: Integer): boolean;
begin
  Result := FDOKTOR_SOYADI_Specified;
end;

procedure KayitDurum.SetDOKTOR_SICIL_NO(Index: Integer; const Astring: string);
begin
  FDOKTOR_SICIL_NO := Astring;
  FDOKTOR_SICIL_NO_Specified := True;
end;

function KayitDurum.DOKTOR_SICIL_NO_Specified(Index: Integer): boolean;
begin
  Result := FDOKTOR_SICIL_NO_Specified;
end;

procedure KayitDurum.SetTANI_KODU(Index: Integer; const Astring: string);
begin
  FTANI_KODU := Astring;
  FTANI_KODU_Specified := True;
end;

function KayitDurum.TANI_KODU_Specified(Index: Integer): boolean;
begin
  Result := FTANI_KODU_Specified;
end;

procedure KayitDurum.SetTANI_ADI(Index: Integer; const Astring: string);
begin
  FTANI_ADI := Astring;
  FTANI_ADI_Specified := True;
end;

function KayitDurum.TANI_ADI_Specified(Index: Integer): boolean;
begin
  Result := FTANI_ADI_Specified;
end;

procedure KayitDurum.SetACIKLAMA(Index: Integer; const Astring: string);
begin
  FACIKLAMA := Astring;
  FACIKLAMA_Specified := True;
end;

function KayitDurum.ACIKLAMA_Specified(Index: Integer): boolean;
begin
  Result := FACIKLAMA_Specified;
end;

procedure KayitDurum.SetTEL(Index: Integer; const Astring: string);
begin
  FTEL := Astring;
  FTEL_Specified := True;
end;

function KayitDurum.TEL_Specified(Index: Integer): boolean;
begin
  Result := FTEL_Specified;
end;

procedure KayitDurum.SetTEL2(Index: Integer; const Astring: string);
begin
  FTEL2 := Astring;
  FTEL2_Specified := True;
end;

function KayitDurum.TEL2_Specified(Index: Integer): boolean;
begin
  Result := FTEL2_Specified;
end;

procedure KayitDurum.SetMOBILTEL(Index: Integer; const Astring: string);
begin
  FMOBILTEL := Astring;
  FMOBILTEL_Specified := True;
end;

function KayitDurum.MOBILTEL_Specified(Index: Integer): boolean;
begin
  Result := FMOBILTEL_Specified;
end;

procedure KayitDurum.SetEPOSTA(Index: Integer; const Astring: string);
begin
  FEPOSTA := Astring;
  FEPOSTA_Specified := True;
end;

function KayitDurum.EPOSTA_Specified(Index: Integer): boolean;
begin
  Result := FEPOSTA_Specified;
end;

procedure KayitDurum.SetOZELKOD1(Index: Integer; const Astring: string);
begin
  FOZELKOD1 := Astring;
  FOZELKOD1_Specified := True;
end;

function KayitDurum.OZELKOD1_Specified(Index: Integer): boolean;
begin
  Result := FOZELKOD1_Specified;
end;

procedure KayitDurum.SetOZELKOD2(Index: Integer; const Astring: string);
begin
  FOZELKOD2 := Astring;
  FOZELKOD2_Specified := True;
end;

function KayitDurum.OZELKOD2_Specified(Index: Integer): boolean;
begin
  Result := FOZELKOD2_Specified;
end;

procedure KayitDurum.SetOZELKOD3(Index: Integer; const Astring: string);
begin
  FOZELKOD3 := Astring;
  FOZELKOD3_Specified := True;
end;

function KayitDurum.OZELKOD3_Specified(Index: Integer): boolean;
begin
  Result := FOZELKOD3_Specified;
end;

procedure KayitDurum.SetOZELKOD4(Index: Integer; const Astring: string);
begin
  FOZELKOD4 := Astring;
  FOZELKOD4_Specified := True;
end;

function KayitDurum.OZELKOD4_Specified(Index: Integer): boolean;
begin
  Result := FOZELKOD4_Specified;
end;

procedure KayitDurum.SetOZELKOD5(Index: Integer; const Astring: string);
begin
  FOZELKOD5 := Astring;
  FOZELKOD5_Specified := True;
end;

function KayitDurum.OZELKOD5_Specified(Index: Integer): boolean;
begin
  Result := FOZELKOD5_Specified;
end;

procedure KayitDurum.SetTETKIKLER(Index: Integer; const Astring: string);
begin
  FTETKIKLER := Astring;
  FTETKIKLER_Specified := True;
end;

function KayitDurum.TETKIKLER_Specified(Index: Integer): boolean;
begin
  Result := FTETKIKLER_Specified;
end;

destructor OrnekKayitSorgulaDurum.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FKayitDurumArr)-1 do
    SysUtils.FreeAndNil(FKayitDurumArr[I]);
  System.SetLength(FKayitDurumArr, 0);
  SysUtils.FreeAndNil(FislemSonuc);
  inherited Destroy;
end;

procedure OrnekKayitSorgulaDurum.SetislemSonuc(Index: Integer; const AIslemSonuc: IslemSonuc);
begin
  FislemSonuc := AIslemSonuc;
  FislemSonuc_Specified := True;
end;

function OrnekKayitSorgulaDurum.islemSonuc_Specified(Index: Integer): boolean;
begin
  Result := FislemSonuc_Specified;
end;

procedure OrnekKayitSorgulaDurum.SetTetkikTur(Index: Integer; const Astring: string);
begin
  FTetkikTur := Astring;
  FTetkikTur_Specified := True;
end;

function OrnekKayitSorgulaDurum.TetkikTur_Specified(Index: Integer): boolean;
begin
  Result := FTetkikTur_Specified;
end;

procedure OrnekKayitSorgulaDurum.SetKayitDurumArr(Index: Integer; const AArrayOfKayitDurum: ArrayOfKayitDurum);
begin
  FKayitDurumArr := AArrayOfKayitDurum;
  FKayitDurumArr_Specified := True;
end;

function OrnekKayitSorgulaDurum.KayitDurumArr_Specified(Index: Integer): boolean;
begin
  Result := FKayitDurumArr_Specified;
end;

procedure DoktorBilgi.SetDOKTOR_KODU(Index: Integer; const Astring: string);
begin
  FDOKTOR_KODU := Astring;
  FDOKTOR_KODU_Specified := True;
end;

function DoktorBilgi.DOKTOR_KODU_Specified(Index: Integer): boolean;
begin
  Result := FDOKTOR_KODU_Specified;
end;

procedure DoktorBilgi.SetDOKTOR_ADI(Index: Integer; const Astring: string);
begin
  FDOKTOR_ADI := Astring;
  FDOKTOR_ADI_Specified := True;
end;

function DoktorBilgi.DOKTOR_ADI_Specified(Index: Integer): boolean;
begin
  Result := FDOKTOR_ADI_Specified;
end;

procedure DoktorBilgi.SetDOKTOR_SOYADI(Index: Integer; const Astring: string);
begin
  FDOKTOR_SOYADI := Astring;
  FDOKTOR_SOYADI_Specified := True;
end;

function DoktorBilgi.DOKTOR_SOYADI_Specified(Index: Integer): boolean;
begin
  Result := FDOKTOR_SOYADI_Specified;
end;

procedure DoktorBilgi.SetDOKTOR_TC_KIMLIKNO(Index: Integer; const Astring: string);
begin
  FDOKTOR_TC_KIMLIKNO := Astring;
  FDOKTOR_TC_KIMLIKNO_Specified := True;
end;

function DoktorBilgi.DOKTOR_TC_KIMLIKNO_Specified(Index: Integer): boolean;
begin
  Result := FDOKTOR_TC_KIMLIKNO_Specified;
end;

procedure DoktorBilgi.SetDOKTOR_TESCIL(Index: Integer; const Astring: string);
begin
  FDOKTOR_TESCIL := Astring;
  FDOKTOR_TESCIL_Specified := True;
end;

function DoktorBilgi.DOKTOR_TESCIL_Specified(Index: Integer): boolean;
begin
  Result := FDOKTOR_TESCIL_Specified;
end;

procedure DoktorBilgi.SetDOKTOR_SICIL(Index: Integer; const Astring: string);
begin
  FDOKTOR_SICIL := Astring;
  FDOKTOR_SICIL_Specified := True;
end;

function DoktorBilgi.DOKTOR_SICIL_Specified(Index: Integer): boolean;
begin
  Result := FDOKTOR_SICIL_Specified;
end;

destructor BarkodTanim.Destroy;
begin
  SysUtils.FreeAndNil(FislemSonuc);
  inherited Destroy;
end;

procedure BarkodTanim.SetTANIM_ACIK(Index: Integer; const Astring: string);
begin
  FTANIM_ACIK := Astring;
  FTANIM_ACIK_Specified := True;
end;

function BarkodTanim.TANIM_ACIK_Specified(Index: Integer): boolean;
begin
  Result := FTANIM_ACIK_Specified;
end;

procedure BarkodTanim.SetACIKLAMAACI(Index: Integer; const Astring: string);
begin
  FACIKLAMAACI := Astring;
  FACIKLAMAACI_Specified := True;
end;

function BarkodTanim.ACIKLAMAACI_Specified(Index: Integer): boolean;
begin
  Result := FACIKLAMAACI_Specified;
end;

procedure BarkodTanim.SetACIKLAMADUSEYBUYUTME(Index: Integer; const Astring: string);
begin
  FACIKLAMADUSEYBUYUTME := Astring;
  FACIKLAMADUSEYBUYUTME_Specified := True;
end;

function BarkodTanim.ACIKLAMADUSEYBUYUTME_Specified(Index: Integer): boolean;
begin
  Result := FACIKLAMADUSEYBUYUTME_Specified;
end;

procedure BarkodTanim.SetACIKLAMAFONT(Index: Integer; const Astring: string);
begin
  FACIKLAMAFONT := Astring;
  FACIKLAMAFONT_Specified := True;
end;

function BarkodTanim.ACIKLAMAFONT_Specified(Index: Integer): boolean;
begin
  Result := FACIKLAMAFONT_Specified;
end;

procedure BarkodTanim.SetACIKLAMAYATAYBUYUTME(Index: Integer; const Astring: string);
begin
  FACIKLAMAYATAYBUYUTME := Astring;
  FACIKLAMAYATAYBUYUTME_Specified := True;
end;

function BarkodTanim.ACIKLAMAYATAYBUYUTME_Specified(Index: Integer): boolean;
begin
  Result := FACIKLAMAYATAYBUYUTME_Specified;
end;

procedure BarkodTanim.SetACIKLAMAYAZDIR(Index: Integer; const Astring: string);
begin
  FACIKLAMAYAZDIR := Astring;
  FACIKLAMAYAZDIR_Specified := True;
end;

function BarkodTanim.ACIKLAMAYAZDIR_Specified(Index: Integer): boolean;
begin
  Result := FACIKLAMAYAZDIR_Specified;
end;

procedure BarkodTanim.SetB1BARCODEINCDECTYPE(Index: Integer; const Astring: string);
begin
  FB1BARCODEINCDECTYPE := Astring;
  FB1BARCODEINCDECTYPE_Specified := True;
end;

function BarkodTanim.B1BARCODEINCDECTYPE_Specified(Index: Integer): boolean;
begin
  Result := FB1BARCODEINCDECTYPE_Specified;
end;

procedure BarkodTanim.SetB2BARCODEINCDECTYPE(Index: Integer; const Astring: string);
begin
  FB2BARCODEINCDECTYPE := Astring;
  FB2BARCODEINCDECTYPE_Specified := True;
end;

function BarkodTanim.B2BARCODEINCDECTYPE_Specified(Index: Integer): boolean;
begin
  Result := FB2BARCODEINCDECTYPE_Specified;
end;

procedure BarkodTanim.SetB2STARTSTOPCODEATTACH(Index: Integer; const Astring: string);
begin
  FB2STARTSTOPCODEATTACH := Astring;
  FB2STARTSTOPCODEATTACH_Specified := True;
end;

function BarkodTanim.B2STARTSTOPCODEATTACH_Specified(Index: Integer): boolean;
begin
  Result := FB2STARTSTOPCODEATTACH_Specified;
end;

procedure BarkodTanim.SetB3ECCTYPE(Index: Integer; const Astring: string);
begin
  FB3ECCTYPE := Astring;
  FB3ECCTYPE_Specified := True;
end;

function BarkodTanim.B3ECCTYPE_Specified(Index: Integer): boolean;
begin
  Result := FB3ECCTYPE_Specified;
end;

procedure BarkodTanim.SetB3FORMATID(Index: Integer; const Astring: string);
begin
  FB3FORMATID := Astring;
  FB3FORMATID_Specified := True;
end;

function BarkodTanim.B3FORMATID_Specified(Index: Integer): boolean;
begin
  Result := FB3FORMATID_Specified;
end;

procedure BarkodTanim.SetB4SECURITYLEVEL(Index: Integer; const Astring: string);
begin
  FB4SECURITYLEVEL := Astring;
  FB4SECURITYLEVEL_Specified := True;
end;

function BarkodTanim.B4SECURITYLEVEL_Specified(Index: Integer): boolean;
begin
  Result := FB4SECURITYLEVEL_Specified;
end;

procedure BarkodTanim.SetB5ERRORCORRECTIONLEVEL(Index: Integer; const Astring: string);
begin
  FB5ERRORCORRECTIONLEVEL := Astring;
  FB5ERRORCORRECTIONLEVEL_Specified := True;
end;

function BarkodTanim.B5ERRORCORRECTIONLEVEL_Specified(Index: Integer): boolean;
begin
  Result := FB5ERRORCORRECTIONLEVEL_Specified;
end;

procedure BarkodTanim.SetB5MODESELECTION(Index: Integer; const Astring: string);
begin
  FB5MODESELECTION := Astring;
  FB5MODESELECTION_Specified := True;
end;

function BarkodTanim.B5MODESELECTION_Specified(Index: Integer): boolean;
begin
  Result := FB5MODESELECTION_Specified;
end;

procedure BarkodTanim.SetB6MODESELECTION(Index: Integer; const Astring: string);
begin
  FB6MODESELECTION := Astring;
  FB6MODESELECTION_Specified := True;
end;

function BarkodTanim.B6MODESELECTION_Specified(Index: Integer): boolean;
begin
  Result := FB6MODESELECTION_Specified;
end;

procedure BarkodTanim.SetB7ECCLEVEL(Index: Integer; const Astring: string);
begin
  FB7ECCLEVEL := Astring;
  FB7ECCLEVEL_Specified := True;
end;

function BarkodTanim.B7ECCLEVEL_Specified(Index: Integer): boolean;
begin
  Result := FB7ECCLEVEL_Specified;
end;

procedure BarkodTanim.SetB7NOOFCHARBITS(Index: Integer; const Astring: string);
begin
  FB7NOOFCHARBITS := Astring;
  FB7NOOFCHARBITS_Specified := True;
end;

function BarkodTanim.B7NOOFCHARBITS_Specified(Index: Integer): boolean;
begin
  Result := FB7NOOFCHARBITS_Specified;
end;

procedure BarkodTanim.SetBARCODETYPE(Index: Integer; const Astring: string);
begin
  FBARCODETYPE := Astring;
  FBARCODETYPE_Specified := True;
end;

function BarkodTanim.BARCODETYPE_Specified(Index: Integer): boolean;
begin
  Result := FBARCODETYPE_Specified;
end;

procedure BarkodTanim.SetBARKODNUMARASIACI(Index: Integer; const Astring: string);
begin
  FBARKODNUMARASIACI := Astring;
  FBARKODNUMARASIACI_Specified := True;
end;

function BarkodTanim.BARKODNUMARASIACI_Specified(Index: Integer): boolean;
begin
  Result := FBARKODNUMARASIACI_Specified;
end;

procedure BarkodTanim.SetBNUMDUSEYBUYUTME(Index: Integer; const Astring: string);
begin
  FBNUMDUSEYBUYUTME := Astring;
  FBNUMDUSEYBUYUTME_Specified := True;
end;

function BarkodTanim.BNUMDUSEYBUYUTME_Specified(Index: Integer): boolean;
begin
  Result := FBNUMDUSEYBUYUTME_Specified;
end;

procedure BarkodTanim.SetBARKODNUMARASIFONT(Index: Integer; const Astring: string);
begin
  FBARKODNUMARASIFONT := Astring;
  FBARKODNUMARASIFONT_Specified := True;
end;

function BarkodTanim.BARKODNUMARASIFONT_Specified(Index: Integer): boolean;
begin
  Result := FBARKODNUMARASIFONT_Specified;
end;

procedure BarkodTanim.SetBNUMYATAYBUYUTME(Index: Integer; const Astring: string);
begin
  FBNUMYATAYBUYUTME := Astring;
  FBNUMYATAYBUYUTME_Specified := True;
end;

function BarkodTanim.BNUMYATAYBUYUTME_Specified(Index: Integer): boolean;
begin
  Result := FBNUMYATAYBUYUTME_Specified;
end;

procedure BarkodTanim.SetBARKODNUMARASIYAZDIR(Index: Integer; const Astring: string);
begin
  FBARKODNUMARASIYAZDIR := Astring;
  FBARKODNUMARASIYAZDIR_Specified := True;
end;

function BarkodTanim.BARKODNUMARASIYAZDIR_Specified(Index: Integer): boolean;
begin
  Result := FBARKODNUMARASIYAZDIR_Specified;
end;

procedure BarkodTanim.SetBASKIMODU(Index: Integer; const Astring: string);
begin
  FBASKIMODU := Astring;
  FBASKIMODU_Specified := True;
end;

function BarkodTanim.BASKIMODU_Specified(Index: Integer): boolean;
begin
  Result := FBASKIMODU_Specified;
end;

procedure BarkodTanim.SetCOMPORT(Index: Integer; const Astring: string);
begin
  FCOMPORT := Astring;
  FCOMPORT_Specified := True;
end;

function BarkodTanim.COMPORT_Specified(Index: Integer): boolean;
begin
  Result := FCOMPORT_Specified;
end;

procedure BarkodTanim.SetDARKERLIGHTER(Index: Integer; const Astring: string);
begin
  FDARKERLIGHTER := Astring;
  FDARKERLIGHTER_Specified := True;
end;

function BarkodTanim.DARKERLIGHTER_Specified(Index: Integer): boolean;
begin
  Result := FDARKERLIGHTER_Specified;
end;

procedure BarkodTanim.SetFORWARDREVERSE(Index: Integer; const Astring: string);
begin
  FFORWARDREVERSE := Astring;
  FFORWARDREVERSE_Specified := True;
end;

function BarkodTanim.FORWARDREVERSE_Specified(Index: Integer): boolean;
begin
  Result := FFORWARDREVERSE_Specified;
end;

procedure BarkodTanim.SetPARITY(Index: Integer; const Astring: string);
begin
  FPARITY := Astring;
  FPARITY_Specified := True;
end;

function BarkodTanim.PARITY_Specified(Index: Integer): boolean;
begin
  Result := FPARITY_Specified;
end;

procedure BarkodTanim.SetRIBBON(Index: Integer; const Astring: string);
begin
  FRIBBON := Astring;
  FRIBBON_Specified := True;
end;

function BarkodTanim.RIBBON_Specified(Index: Integer): boolean;
begin
  Result := FRIBBON_Specified;
end;

procedure BarkodTanim.SetSENSORTIPI(Index: Integer; const Astring: string);
begin
  FSENSORTIPI := Astring;
  FSENSORTIPI_Specified := True;
end;

function BarkodTanim.SENSORTIPI_Specified(Index: Integer): boolean;
begin
  Result := FSENSORTIPI_Specified;
end;

procedure BarkodTanim.SetACIKLAMA4ACI(Index: Integer; const Astring: string);
begin
  FACIKLAMA4ACI := Astring;
  FACIKLAMA4ACI_Specified := True;
end;

function BarkodTanim.ACIKLAMA4ACI_Specified(Index: Integer): boolean;
begin
  Result := FACIKLAMA4ACI_Specified;
end;

procedure BarkodTanim.SetACIKLAMA4DUSEYBUYUTME(Index: Integer; const Astring: string);
begin
  FACIKLAMA4DUSEYBUYUTME := Astring;
  FACIKLAMA4DUSEYBUYUTME_Specified := True;
end;

function BarkodTanim.ACIKLAMA4DUSEYBUYUTME_Specified(Index: Integer): boolean;
begin
  Result := FACIKLAMA4DUSEYBUYUTME_Specified;
end;

procedure BarkodTanim.SetACIKLAMA4FONT(Index: Integer; const Astring: string);
begin
  FACIKLAMA4FONT := Astring;
  FACIKLAMA4FONT_Specified := True;
end;

function BarkodTanim.ACIKLAMA4FONT_Specified(Index: Integer): boolean;
begin
  Result := FACIKLAMA4FONT_Specified;
end;

procedure BarkodTanim.SetACIKLAMA4YATAYBUYUTME(Index: Integer; const Astring: string);
begin
  FACIKLAMA4YATAYBUYUTME := Astring;
  FACIKLAMA4YATAYBUYUTME_Specified := True;
end;

function BarkodTanim.ACIKLAMA4YATAYBUYUTME_Specified(Index: Integer): boolean;
begin
  Result := FACIKLAMA4YATAYBUYUTME_Specified;
end;

procedure BarkodTanim.SetACIKLAMA4YAZDIR(Index: Integer; const Astring: string);
begin
  FACIKLAMA4YAZDIR := Astring;
  FACIKLAMA4YAZDIR_Specified := True;
end;

function BarkodTanim.ACIKLAMA4YAZDIR_Specified(Index: Integer): boolean;
begin
  Result := FACIKLAMA4YAZDIR_Specified;
end;

procedure BarkodTanim.SetACIKLAMA3ACI(Index: Integer; const Astring: string);
begin
  FACIKLAMA3ACI := Astring;
  FACIKLAMA3ACI_Specified := True;
end;

function BarkodTanim.ACIKLAMA3ACI_Specified(Index: Integer): boolean;
begin
  Result := FACIKLAMA3ACI_Specified;
end;

procedure BarkodTanim.SetACIKLAMA3DUSEYBUYUTME(Index: Integer; const Astring: string);
begin
  FACIKLAMA3DUSEYBUYUTME := Astring;
  FACIKLAMA3DUSEYBUYUTME_Specified := True;
end;

function BarkodTanim.ACIKLAMA3DUSEYBUYUTME_Specified(Index: Integer): boolean;
begin
  Result := FACIKLAMA3DUSEYBUYUTME_Specified;
end;

procedure BarkodTanim.SetACIKLAMA3FONT(Index: Integer; const Astring: string);
begin
  FACIKLAMA3FONT := Astring;
  FACIKLAMA3FONT_Specified := True;
end;

function BarkodTanim.ACIKLAMA3FONT_Specified(Index: Integer): boolean;
begin
  Result := FACIKLAMA3FONT_Specified;
end;

procedure BarkodTanim.SetACIKLAMA3YATAYBUYUTME(Index: Integer; const Astring: string);
begin
  FACIKLAMA3YATAYBUYUTME := Astring;
  FACIKLAMA3YATAYBUYUTME_Specified := True;
end;

function BarkodTanim.ACIKLAMA3YATAYBUYUTME_Specified(Index: Integer): boolean;
begin
  Result := FACIKLAMA3YATAYBUYUTME_Specified;
end;

procedure BarkodTanim.SetACIKLAMA3YAZDIR(Index: Integer; const Astring: string);
begin
  FACIKLAMA3YAZDIR := Astring;
  FACIKLAMA3YAZDIR_Specified := True;
end;

function BarkodTanim.ACIKLAMA3YAZDIR_Specified(Index: Integer): boolean;
begin
  Result := FACIKLAMA3YAZDIR_Specified;
end;

procedure BarkodTanim.SetTHERMAL(Index: Integer; const Astring: string);
begin
  FTHERMAL := Astring;
  FTHERMAL_Specified := True;
end;

function BarkodTanim.THERMAL_Specified(Index: Integer): boolean;
begin
  Result := FTHERMAL_Specified;
end;

procedure BarkodTanim.SetACIKLAMA2ACI(Index: Integer; const Astring: string);
begin
  FACIKLAMA2ACI := Astring;
  FACIKLAMA2ACI_Specified := True;
end;

function BarkodTanim.ACIKLAMA2ACI_Specified(Index: Integer): boolean;
begin
  Result := FACIKLAMA2ACI_Specified;
end;

procedure BarkodTanim.SetACIKLAMA2DUSEYBUYUTME(Index: Integer; const Astring: string);
begin
  FACIKLAMA2DUSEYBUYUTME := Astring;
  FACIKLAMA2DUSEYBUYUTME_Specified := True;
end;

function BarkodTanim.ACIKLAMA2DUSEYBUYUTME_Specified(Index: Integer): boolean;
begin
  Result := FACIKLAMA2DUSEYBUYUTME_Specified;
end;

procedure BarkodTanim.SetACIKLAMA2FONT(Index: Integer; const Astring: string);
begin
  FACIKLAMA2FONT := Astring;
  FACIKLAMA2FONT_Specified := True;
end;

function BarkodTanim.ACIKLAMA2FONT_Specified(Index: Integer): boolean;
begin
  Result := FACIKLAMA2FONT_Specified;
end;

procedure BarkodTanim.SetACIKLAMA2YATAYBUYUTME(Index: Integer; const Astring: string);
begin
  FACIKLAMA2YATAYBUYUTME := Astring;
  FACIKLAMA2YATAYBUYUTME_Specified := True;
end;

function BarkodTanim.ACIKLAMA2YATAYBUYUTME_Specified(Index: Integer): boolean;
begin
  Result := FACIKLAMA2YATAYBUYUTME_Specified;
end;

procedure BarkodTanim.SetACIKLAMA2YAZDIR(Index: Integer; const Astring: string);
begin
  FACIKLAMA2YAZDIR := Astring;
  FACIKLAMA2YAZDIR_Specified := True;
end;

function BarkodTanim.ACIKLAMA2YAZDIR_Specified(Index: Integer): boolean;
begin
  Result := FACIKLAMA2YAZDIR_Specified;
end;

procedure BarkodTanim.SetBARKOD_YAZICISI(Index: Integer; const Astring: string);
begin
  FBARKOD_YAZICISI := Astring;
  FBARKOD_YAZICISI_Specified := True;
end;

function BarkodTanim.BARKOD_YAZICISI_Specified(Index: Integer): boolean;
begin
  Result := FBARKOD_YAZICISI_Specified;
end;

procedure BarkodTanim.SetACIKLAMA5ACI(Index: Integer; const Astring: string);
begin
  FACIKLAMA5ACI := Astring;
  FACIKLAMA5ACI_Specified := True;
end;

function BarkodTanim.ACIKLAMA5ACI_Specified(Index: Integer): boolean;
begin
  Result := FACIKLAMA5ACI_Specified;
end;

procedure BarkodTanim.SetACIKLAMA5DUSEYBUYUTME(Index: Integer; const Astring: string);
begin
  FACIKLAMA5DUSEYBUYUTME := Astring;
  FACIKLAMA5DUSEYBUYUTME_Specified := True;
end;

function BarkodTanim.ACIKLAMA5DUSEYBUYUTME_Specified(Index: Integer): boolean;
begin
  Result := FACIKLAMA5DUSEYBUYUTME_Specified;
end;

procedure BarkodTanim.SetACIKLAMA5FONT(Index: Integer; const Astring: string);
begin
  FACIKLAMA5FONT := Astring;
  FACIKLAMA5FONT_Specified := True;
end;

function BarkodTanim.ACIKLAMA5FONT_Specified(Index: Integer): boolean;
begin
  Result := FACIKLAMA5FONT_Specified;
end;

procedure BarkodTanim.SetACIKLAMA5YATAYBUYUTME(Index: Integer; const Astring: string);
begin
  FACIKLAMA5YATAYBUYUTME := Astring;
  FACIKLAMA5YATAYBUYUTME_Specified := True;
end;

function BarkodTanim.ACIKLAMA5YATAYBUYUTME_Specified(Index: Integer): boolean;
begin
  Result := FACIKLAMA5YATAYBUYUTME_Specified;
end;

procedure BarkodTanim.SetACIKLAMA5YAZDIR(Index: Integer; const Astring: string);
begin
  FACIKLAMA5YAZDIR := Astring;
  FACIKLAMA5YAZDIR_Specified := True;
end;

function BarkodTanim.ACIKLAMA5YAZDIR_Specified(Index: Integer): boolean;
begin
  Result := FACIKLAMA5YAZDIR_Specified;
end;

procedure BarkodTanim.SetACIKLAMA6ACI(Index: Integer; const Astring: string);
begin
  FACIKLAMA6ACI := Astring;
  FACIKLAMA6ACI_Specified := True;
end;

function BarkodTanim.ACIKLAMA6ACI_Specified(Index: Integer): boolean;
begin
  Result := FACIKLAMA6ACI_Specified;
end;

procedure BarkodTanim.SetACIKLAMA6DUSEYBUYUTME(Index: Integer; const Astring: string);
begin
  FACIKLAMA6DUSEYBUYUTME := Astring;
  FACIKLAMA6DUSEYBUYUTME_Specified := True;
end;

function BarkodTanim.ACIKLAMA6DUSEYBUYUTME_Specified(Index: Integer): boolean;
begin
  Result := FACIKLAMA6DUSEYBUYUTME_Specified;
end;

procedure BarkodTanim.SetACIKLAMA6FONT(Index: Integer; const Astring: string);
begin
  FACIKLAMA6FONT := Astring;
  FACIKLAMA6FONT_Specified := True;
end;

function BarkodTanim.ACIKLAMA6FONT_Specified(Index: Integer): boolean;
begin
  Result := FACIKLAMA6FONT_Specified;
end;

procedure BarkodTanim.SetACIKLAMA6YATAYBUYUTME(Index: Integer; const Astring: string);
begin
  FACIKLAMA6YATAYBUYUTME := Astring;
  FACIKLAMA6YATAYBUYUTME_Specified := True;
end;

function BarkodTanim.ACIKLAMA6YATAYBUYUTME_Specified(Index: Integer): boolean;
begin
  Result := FACIKLAMA6YATAYBUYUTME_Specified;
end;

procedure BarkodTanim.SetACIKLAMA6YAZDIR(Index: Integer; const Astring: string);
begin
  FACIKLAMA6YAZDIR := Astring;
  FACIKLAMA6YAZDIR_Specified := True;
end;

function BarkodTanim.ACIKLAMA6YAZDIR_Specified(Index: Integer): boolean;
begin
  Result := FACIKLAMA6YAZDIR_Specified;
end;

procedure BarkodTanim.SetACIKLAMA7FONT(Index: Integer; const Astring: string);
begin
  FACIKLAMA7FONT := Astring;
  FACIKLAMA7FONT_Specified := True;
end;

function BarkodTanim.ACIKLAMA7FONT_Specified(Index: Integer): boolean;
begin
  Result := FACIKLAMA7FONT_Specified;
end;

procedure BarkodTanim.SetACIKLAMA7YATAYBUYUTME(Index: Integer; const Astring: string);
begin
  FACIKLAMA7YATAYBUYUTME := Astring;
  FACIKLAMA7YATAYBUYUTME_Specified := True;
end;

function BarkodTanim.ACIKLAMA7YATAYBUYUTME_Specified(Index: Integer): boolean;
begin
  Result := FACIKLAMA7YATAYBUYUTME_Specified;
end;

procedure BarkodTanim.SetACIKLAMA7DUSEYBUYUTME(Index: Integer; const Astring: string);
begin
  FACIKLAMA7DUSEYBUYUTME := Astring;
  FACIKLAMA7DUSEYBUYUTME_Specified := True;
end;

function BarkodTanim.ACIKLAMA7DUSEYBUYUTME_Specified(Index: Integer): boolean;
begin
  Result := FACIKLAMA7DUSEYBUYUTME_Specified;
end;

procedure BarkodTanim.SetACIKLAMA7ACI(Index: Integer; const Astring: string);
begin
  FACIKLAMA7ACI := Astring;
  FACIKLAMA7ACI_Specified := True;
end;

function BarkodTanim.ACIKLAMA7ACI_Specified(Index: Integer): boolean;
begin
  Result := FACIKLAMA7ACI_Specified;
end;

procedure BarkodTanim.SetACIKLAMA7YAZDIR(Index: Integer; const Astring: string);
begin
  FACIKLAMA7YAZDIR := Astring;
  FACIKLAMA7YAZDIR_Specified := True;
end;

function BarkodTanim.ACIKLAMA7YAZDIR_Specified(Index: Integer): boolean;
begin
  Result := FACIKLAMA7YAZDIR_Specified;
end;

procedure BarkodTanim.SetACIKLAMA8FONT(Index: Integer; const Astring: string);
begin
  FACIKLAMA8FONT := Astring;
  FACIKLAMA8FONT_Specified := True;
end;

function BarkodTanim.ACIKLAMA8FONT_Specified(Index: Integer): boolean;
begin
  Result := FACIKLAMA8FONT_Specified;
end;

procedure BarkodTanim.SetACIKLAMA8YATAYBUYUTME(Index: Integer; const Astring: string);
begin
  FACIKLAMA8YATAYBUYUTME := Astring;
  FACIKLAMA8YATAYBUYUTME_Specified := True;
end;

function BarkodTanim.ACIKLAMA8YATAYBUYUTME_Specified(Index: Integer): boolean;
begin
  Result := FACIKLAMA8YATAYBUYUTME_Specified;
end;

procedure BarkodTanim.SetACIKLAMA8DUSEYBUYUTME(Index: Integer; const Astring: string);
begin
  FACIKLAMA8DUSEYBUYUTME := Astring;
  FACIKLAMA8DUSEYBUYUTME_Specified := True;
end;

function BarkodTanim.ACIKLAMA8DUSEYBUYUTME_Specified(Index: Integer): boolean;
begin
  Result := FACIKLAMA8DUSEYBUYUTME_Specified;
end;

procedure BarkodTanim.SetACIKLAMA8ACI(Index: Integer; const Astring: string);
begin
  FACIKLAMA8ACI := Astring;
  FACIKLAMA8ACI_Specified := True;
end;

function BarkodTanim.ACIKLAMA8ACI_Specified(Index: Integer): boolean;
begin
  Result := FACIKLAMA8ACI_Specified;
end;

procedure BarkodTanim.SetACIKLAMA8YAZDIR(Index: Integer; const Astring: string);
begin
  FACIKLAMA8YAZDIR := Astring;
  FACIKLAMA8YAZDIR_Specified := True;
end;

function BarkodTanim.ACIKLAMA8YAZDIR_Specified(Index: Integer): boolean;
begin
  Result := FACIKLAMA8YAZDIR_Specified;
end;

procedure BarkodTanim.SetACIKLAMA9FONT(Index: Integer; const Astring: string);
begin
  FACIKLAMA9FONT := Astring;
  FACIKLAMA9FONT_Specified := True;
end;

function BarkodTanim.ACIKLAMA9FONT_Specified(Index: Integer): boolean;
begin
  Result := FACIKLAMA9FONT_Specified;
end;

procedure BarkodTanim.SetACIKLAMA9YATAYBUYUTME(Index: Integer; const Astring: string);
begin
  FACIKLAMA9YATAYBUYUTME := Astring;
  FACIKLAMA9YATAYBUYUTME_Specified := True;
end;

function BarkodTanim.ACIKLAMA9YATAYBUYUTME_Specified(Index: Integer): boolean;
begin
  Result := FACIKLAMA9YATAYBUYUTME_Specified;
end;

procedure BarkodTanim.SetACIKLAMA9DUSEYBUYUTME(Index: Integer; const Astring: string);
begin
  FACIKLAMA9DUSEYBUYUTME := Astring;
  FACIKLAMA9DUSEYBUYUTME_Specified := True;
end;

function BarkodTanim.ACIKLAMA9DUSEYBUYUTME_Specified(Index: Integer): boolean;
begin
  Result := FACIKLAMA9DUSEYBUYUTME_Specified;
end;

procedure BarkodTanim.SetACIKLAMA9ACI(Index: Integer; const Astring: string);
begin
  FACIKLAMA9ACI := Astring;
  FACIKLAMA9ACI_Specified := True;
end;

function BarkodTanim.ACIKLAMA9ACI_Specified(Index: Integer): boolean;
begin
  Result := FACIKLAMA9ACI_Specified;
end;

procedure BarkodTanim.SetACIKLAMA9YAZDIR(Index: Integer; const Astring: string);
begin
  FACIKLAMA9YAZDIR := Astring;
  FACIKLAMA9YAZDIR_Specified := True;
end;

function BarkodTanim.ACIKLAMA9YAZDIR_Specified(Index: Integer): boolean;
begin
  Result := FACIKLAMA9YAZDIR_Specified;
end;

procedure BarkodTanim.SetACIKLAMA10FONT(Index: Integer; const Astring: string);
begin
  FACIKLAMA10FONT := Astring;
  FACIKLAMA10FONT_Specified := True;
end;

function BarkodTanim.ACIKLAMA10FONT_Specified(Index: Integer): boolean;
begin
  Result := FACIKLAMA10FONT_Specified;
end;

procedure BarkodTanim.SetACIKLAMA10YATAYBUYUTME(Index: Integer; const Astring: string);
begin
  FACIKLAMA10YATAYBUYUTME := Astring;
  FACIKLAMA10YATAYBUYUTME_Specified := True;
end;

function BarkodTanim.ACIKLAMA10YATAYBUYUTME_Specified(Index: Integer): boolean;
begin
  Result := FACIKLAMA10YATAYBUYUTME_Specified;
end;

procedure BarkodTanim.SetACIKLAMA10DUSEYBUYUTME(Index: Integer; const Astring: string);
begin
  FACIKLAMA10DUSEYBUYUTME := Astring;
  FACIKLAMA10DUSEYBUYUTME_Specified := True;
end;

function BarkodTanim.ACIKLAMA10DUSEYBUYUTME_Specified(Index: Integer): boolean;
begin
  Result := FACIKLAMA10DUSEYBUYUTME_Specified;
end;

procedure BarkodTanim.SetACIKLAMA10ACI(Index: Integer; const Astring: string);
begin
  FACIKLAMA10ACI := Astring;
  FACIKLAMA10ACI_Specified := True;
end;

function BarkodTanim.ACIKLAMA10ACI_Specified(Index: Integer): boolean;
begin
  Result := FACIKLAMA10ACI_Specified;
end;

procedure BarkodTanim.SetACIKLAMA10YAZDIR(Index: Integer; const Astring: string);
begin
  FACIKLAMA10YAZDIR := Astring;
  FACIKLAMA10YAZDIR_Specified := True;
end;

function BarkodTanim.ACIKLAMA10YAZDIR_Specified(Index: Integer): boolean;
begin
  Result := FACIKLAMA10YAZDIR_Specified;
end;

procedure BarkodTanim.SetBARKODNOREVFONT(Index: Integer; const Astring: string);
begin
  FBARKODNOREVFONT := Astring;
  FBARKODNOREVFONT_Specified := True;
end;

function BarkodTanim.BARKODNOREVFONT_Specified(Index: Integer): boolean;
begin
  Result := FBARKODNOREVFONT_Specified;
end;

procedure BarkodTanim.SetACIK1REVFONT(Index: Integer; const Astring: string);
begin
  FACIK1REVFONT := Astring;
  FACIK1REVFONT_Specified := True;
end;

function BarkodTanim.ACIK1REVFONT_Specified(Index: Integer): boolean;
begin
  Result := FACIK1REVFONT_Specified;
end;

procedure BarkodTanim.SetACIK2REVFONT(Index: Integer; const Astring: string);
begin
  FACIK2REVFONT := Astring;
  FACIK2REVFONT_Specified := True;
end;

function BarkodTanim.ACIK2REVFONT_Specified(Index: Integer): boolean;
begin
  Result := FACIK2REVFONT_Specified;
end;

procedure BarkodTanim.SetACIK3REVFONT(Index: Integer; const Astring: string);
begin
  FACIK3REVFONT := Astring;
  FACIK3REVFONT_Specified := True;
end;

function BarkodTanim.ACIK3REVFONT_Specified(Index: Integer): boolean;
begin
  Result := FACIK3REVFONT_Specified;
end;

procedure BarkodTanim.SetACIK4REVFONT(Index: Integer; const Astring: string);
begin
  FACIK4REVFONT := Astring;
  FACIK4REVFONT_Specified := True;
end;

function BarkodTanim.ACIK4REVFONT_Specified(Index: Integer): boolean;
begin
  Result := FACIK4REVFONT_Specified;
end;

procedure BarkodTanim.SetACIK5REVFONT(Index: Integer; const Astring: string);
begin
  FACIK5REVFONT := Astring;
  FACIK5REVFONT_Specified := True;
end;

function BarkodTanim.ACIK5REVFONT_Specified(Index: Integer): boolean;
begin
  Result := FACIK5REVFONT_Specified;
end;

procedure BarkodTanim.SetACIK6REVFONT(Index: Integer; const Astring: string);
begin
  FACIK6REVFONT := Astring;
  FACIK6REVFONT_Specified := True;
end;

function BarkodTanim.ACIK6REVFONT_Specified(Index: Integer): boolean;
begin
  Result := FACIK6REVFONT_Specified;
end;

procedure BarkodTanim.SetACIK7REVFONT(Index: Integer; const Astring: string);
begin
  FACIK7REVFONT := Astring;
  FACIK7REVFONT_Specified := True;
end;

function BarkodTanim.ACIK7REVFONT_Specified(Index: Integer): boolean;
begin
  Result := FACIK7REVFONT_Specified;
end;

procedure BarkodTanim.SetACIK8REVFONT(Index: Integer; const Astring: string);
begin
  FACIK8REVFONT := Astring;
  FACIK8REVFONT_Specified := True;
end;

function BarkodTanim.ACIK8REVFONT_Specified(Index: Integer): boolean;
begin
  Result := FACIK8REVFONT_Specified;
end;

procedure BarkodTanim.SetACIK9REVFONT(Index: Integer; const Astring: string);
begin
  FACIK9REVFONT := Astring;
  FACIK9REVFONT_Specified := True;
end;

function BarkodTanim.ACIK9REVFONT_Specified(Index: Integer): boolean;
begin
  Result := FACIK9REVFONT_Specified;
end;

procedure BarkodTanim.SetACIK10REVFONT(Index: Integer; const Astring: string);
begin
  FACIK10REVFONT := Astring;
  FACIK10REVFONT_Specified := True;
end;

function BarkodTanim.ACIK10REVFONT_Specified(Index: Integer): boolean;
begin
  Result := FACIK10REVFONT_Specified;
end;

procedure BarkodTanim.SetYAZICI_IP(Index: Integer; const Astring: string);
begin
  FYAZICI_IP := Astring;
  FYAZICI_IP_Specified := True;
end;

function BarkodTanim.YAZICI_IP_Specified(Index: Integer): boolean;
begin
  Result := FYAZICI_IP_Specified;
end;

procedure BarkodTanim.SetBASKI_ONCESI(Index: Integer; const Astring: string);
begin
  FBASKI_ONCESI := Astring;
  FBASKI_ONCESI_Specified := True;
end;

function BarkodTanim.BASKI_ONCESI_Specified(Index: Integer): boolean;
begin
  Result := FBASKI_ONCESI_Specified;
end;

procedure BarkodTanim.SetBASKI_SONRASI(Index: Integer; const Astring: string);
begin
  FBASKI_SONRASI := Astring;
  FBASKI_SONRASI_Specified := True;
end;

function BarkodTanim.BASKI_SONRASI_Specified(Index: Integer): boolean;
begin
  Result := FBASKI_SONRASI_Specified;
end;

procedure BarkodTanim.SetislemSonuc(Index: Integer; const AIslemSonuc: IslemSonuc);
begin
  FislemSonuc := AIslemSonuc;
  FislemSonuc_Specified := True;
end;

function BarkodTanim.islemSonuc_Specified(Index: Integer): boolean;
begin
  Result := FislemSonuc_Specified;
end;

destructor EntegKodDurum.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FEntegKodArr)-1 do
    SysUtils.FreeAndNil(FEntegKodArr[I]);
  System.SetLength(FEntegKodArr, 0);
  SysUtils.FreeAndNil(FislemSonuc);
  inherited Destroy;
end;

procedure EntegKodDurum.SetislemSonuc(Index: Integer; const AIslemSonuc: IslemSonuc);
begin
  FislemSonuc := AIslemSonuc;
  FislemSonuc_Specified := True;
end;

function EntegKodDurum.islemSonuc_Specified(Index: Integer): boolean;
begin
  Result := FislemSonuc_Specified;
end;

procedure EntegKodDurum.SetEntegKodArr(Index: Integer; const AArrayOfEntegKodlar: ArrayOfEntegKodlar);
begin
  FEntegKodArr := AArrayOfEntegKodlar;
  FEntegKodArr_Specified := True;
end;

function EntegKodDurum.EntegKodArr_Specified(Index: Integer): boolean;
begin
  Result := FEntegKodArr_Specified;
end;

procedure EntegKodlar.SetTEST_KISA_ADI(Index: Integer; const Astring: string);
begin
  FTEST_KISA_ADI := Astring;
  FTEST_KISA_ADI_Specified := True;
end;

function EntegKodlar.TEST_KISA_ADI_Specified(Index: Integer): boolean;
begin
  Result := FTEST_KISA_ADI_Specified;
end;

procedure EntegKodlar.SetTEST_ADI(Index: Integer; const Astring: string);
begin
  FTEST_ADI := Astring;
  FTEST_ADI_Specified := True;
end;

function EntegKodlar.TEST_ADI_Specified(Index: Integer): boolean;
begin
  Result := FTEST_ADI_Specified;
end;

procedure EntegKodlar.SetENTEG_KODU(Index: Integer; const Astring: string);
begin
  FENTEG_KODU := Astring;
  FENTEG_KODU_Specified := True;
end;

function EntegKodlar.ENTEG_KODU_Specified(Index: Integer): boolean;
begin
  Result := FENTEG_KODU_Specified;
end;

procedure EntegKodlar.SetENTEG_KODU2(Index: Integer; const Astring: string);
begin
  FENTEG_KODU2 := Astring;
  FENTEG_KODU2_Specified := True;
end;

function EntegKodlar.ENTEG_KODU2_Specified(Index: Integer): boolean;
begin
  Result := FENTEG_KODU2_Specified;
end;

procedure EntegKodlar.SetUNITE_ADI(Index: Integer; const Astring: string);
begin
  FUNITE_ADI := Astring;
  FUNITE_ADI_Specified := True;
end;

function EntegKodlar.UNITE_ADI_Specified(Index: Integer): boolean;
begin
  Result := FUNITE_ADI_Specified;
end;

destructor PanelDurum.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FPanelArr)-1 do
    SysUtils.FreeAndNil(FPanelArr[I]);
  System.SetLength(FPanelArr, 0);
  SysUtils.FreeAndNil(FislemSonuc);
  inherited Destroy;
end;

procedure PanelDurum.SetislemSonuc(Index: Integer; const AIslemSonuc: IslemSonuc);
begin
  FislemSonuc := AIslemSonuc;
  FislemSonuc_Specified := True;
end;

function PanelDurum.islemSonuc_Specified(Index: Integer): boolean;
begin
  Result := FislemSonuc_Specified;
end;

procedure PanelDurum.SetPanelArr(Index: Integer; const AArrayOfPANEL: ArrayOfPANEL);
begin
  FPanelArr := AArrayOfPANEL;
  FPanelArr_Specified := True;
end;

function PanelDurum.PanelArr_Specified(Index: Integer): boolean;
begin
  Result := FPanelArr_Specified;
end;

destructor PANEL.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FPanelTestArr)-1 do
    SysUtils.FreeAndNil(FPanelTestArr[I]);
  System.SetLength(FPanelTestArr, 0);
  inherited Destroy;
end;

procedure PANEL.SetPANEL_ADI(Index: Integer; const Astring: string);
begin
  FPANEL_ADI := Astring;
  FPANEL_ADI_Specified := True;
end;

function PANEL.PANEL_ADI_Specified(Index: Integer): boolean;
begin
  Result := FPANEL_ADI_Specified;
end;

procedure PANEL.SetPanelTestArr(Index: Integer; const AArrayOfEntegKodlar: ArrayOfEntegKodlar);
begin
  FPanelTestArr := AArrayOfEntegKodlar;
  FPanelTestArr_Specified := True;
end;

function PANEL.PanelTestArr_Specified(Index: Integer): boolean;
begin
  Result := FPanelTestArr_Specified;
end;

destructor TalesemiSonucDurum.Destroy;
begin
  SysUtils.FreeAndNil(FislemSonuc);
  inherited Destroy;
end;

procedure TalesemiSonucDurum.SetislemSonuc(Index: Integer; const AIslemSonuc: IslemSonuc);
begin
  FislemSonuc := AIslemSonuc;
  FislemSonuc_Specified := True;
end;

function TalesemiSonucDurum.islemSonuc_Specified(Index: Integer): boolean;
begin
  Result := FislemSonuc_Specified;
end;

procedure TalesemiSonucDurum.SetSONUC1(Index: Integer; const Astring: string);
begin
  FSONUC1 := Astring;
  FSONUC1_Specified := True;
end;

function TalesemiSonucDurum.SONUC1_Specified(Index: Integer): boolean;
begin
  Result := FSONUC1_Specified;
end;

procedure TalesemiSonucDurum.SetSONUC2(Index: Integer; const Astring: string);
begin
  FSONUC2 := Astring;
  FSONUC2_Specified := True;
end;

function TalesemiSonucDurum.SONUC2_Specified(Index: Integer): boolean;
begin
  Result := FSONUC2_Specified;
end;

procedure TalesemiSonucDurum.SetACIKLAMA1(Index: Integer; const Astring: string);
begin
  FACIKLAMA1 := Astring;
  FACIKLAMA1_Specified := True;
end;

function TalesemiSonucDurum.ACIKLAMA1_Specified(Index: Integer): boolean;
begin
  Result := FACIKLAMA1_Specified;
end;

procedure TalesemiSonucDurum.SetACIKLAMA2(Index: Integer; const Astring: string);
begin
  FACIKLAMA2 := Astring;
  FACIKLAMA2_Specified := True;
end;

function TalesemiSonucDurum.ACIKLAMA2_Specified(Index: Integer): boolean;
begin
  Result := FACIKLAMA2_Specified;
end;

procedure TalesemiSonucDurum.SetDIGERTETKIK1(Index: Integer; const Astring: string);
begin
  FDIGERTETKIK1 := Astring;
  FDIGERTETKIK1_Specified := True;
end;

function TalesemiSonucDurum.DIGERTETKIK1_Specified(Index: Integer): boolean;
begin
  Result := FDIGERTETKIK1_Specified;
end;

procedure TalesemiSonucDurum.SetDIGERTETKIK2(Index: Integer; const Astring: string);
begin
  FDIGERTETKIK2 := Astring;
  FDIGERTETKIK2_Specified := True;
end;

function TalesemiSonucDurum.DIGERTETKIK2_Specified(Index: Integer): boolean;
begin
  Result := FDIGERTETKIK2_Specified;
end;

procedure TalesemiSonucDurum.SetISTEKNEDENI(Index: Integer; const Astring: string);
begin
  FISTEKNEDENI := Astring;
  FISTEKNEDENI_Specified := True;
end;

function TalesemiSonucDurum.ISTEKNEDENI_Specified(Index: Integer): boolean;
begin
  Result := FISTEKNEDENI_Specified;
end;

procedure TalesemiSonucDurum.SetDUZENLEYEN(Index: Integer; const Astring: string);
begin
  FDUZENLEYEN := Astring;
  FDUZENLEYEN_Specified := True;
end;

function TalesemiSonucDurum.DUZENLEYEN_Specified(Index: Integer): boolean;
begin
  Result := FDUZENLEYEN_Specified;
end;

procedure TalesemiSonucDurum.SetDUZENTARIH(Index: Integer; const Astring: string);
begin
  FDUZENTARIH := Astring;
  FDUZENTARIH_Specified := True;
end;

function TalesemiSonucDurum.DUZENTARIH_Specified(Index: Integer): boolean;
begin
  Result := FDUZENTARIH_Specified;
end;

procedure TalesemiSonucDurum.SetONAYLAYANADSOYAD(Index: Integer; const Astring: string);
begin
  FONAYLAYANADSOYAD := Astring;
  FONAYLAYANADSOYAD_Specified := True;
end;

function TalesemiSonucDurum.ONAYLAYANADSOYAD_Specified(Index: Integer): boolean;
begin
  Result := FONAYLAYANADSOYAD_Specified;
end;

procedure TalesemiSonucDurum.SetONAYLAYANUNVAN(Index: Integer; const Astring: string);
begin
  FONAYLAYANUNVAN := Astring;
  FONAYLAYANUNVAN_Specified := True;
end;

function TalesemiSonucDurum.ONAYLAYANUNVAN_Specified(Index: Integer): boolean;
begin
  Result := FONAYLAYANUNVAN_Specified;
end;

procedure TalesemiSonucDurum.SetONAYTARIH(Index: Integer; const Astring: string);
begin
  FONAYTARIH := Astring;
  FONAYTARIH_Specified := True;
end;

function TalesemiSonucDurum.ONAYTARIH_Specified(Index: Integer): boolean;
begin
  Result := FONAYTARIH_Specified;
end;

procedure OrnekDetayBilgi.SetUNITE_ADI(Index: Integer; const Astring: string);
begin
  FUNITE_ADI := Astring;
  FUNITE_ADI_Specified := True;
end;

function OrnekDetayBilgi.UNITE_ADI_Specified(Index: Integer): boolean;
begin
  Result := FUNITE_ADI_Specified;
end;

procedure OrnekDetayBilgi.SetKABUL_TARIHI(Index: Integer; const Astring: string);
begin
  FKABUL_TARIHI := Astring;
  FKABUL_TARIHI_Specified := True;
end;

function OrnekDetayBilgi.KABUL_TARIHI_Specified(Index: Integer): boolean;
begin
  Result := FKABUL_TARIHI_Specified;
end;

procedure OrnekDetayBilgi.SetRAPOR_TARIHI(Index: Integer; const Astring: string);
begin
  FRAPOR_TARIHI := Astring;
  FRAPOR_TARIHI_Specified := True;
end;

function OrnekDetayBilgi.RAPOR_TARIHI_Specified(Index: Integer): boolean;
begin
  Result := FRAPOR_TARIHI_Specified;
end;

procedure OrnekDetayBilgi.SetONAY_TARIHI(Index: Integer; const Astring: string);
begin
  FONAY_TARIHI := Astring;
  FONAY_TARIHI_Specified := True;
end;

function OrnekDetayBilgi.ONAY_TARIHI_Specified(Index: Integer): boolean;
begin
  Result := FONAY_TARIHI_Specified;
end;

procedure OrnekDetayBilgi.SetONAYLAYAN(Index: Integer; const Astring: string);
begin
  FONAYLAYAN := Astring;
  FONAYLAYAN_Specified := True;
end;

function OrnekDetayBilgi.ONAYLAYAN_Specified(Index: Integer): boolean;
begin
  Result := FONAYLAYAN_Specified;
end;

initialization
  InvRegistry.RegisterInterface(TypeInfo(AlisWSSoap), 'http://tempuri.org/', 'utf-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(AlisWSSoap), 'http://tempuri.org/%operationName%');
  InvRegistry.RegisterInvokeOptions(TypeInfo(AlisWSSoap), ioDocument);
  InvRegistry.RegisterInvokeOptions(TypeInfo(AlisWSSoap), ioSOAP12);
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfTetkik), 'http://tempuri.org/', 'ArrayOfTetkik');
  RemClassRegistry.RegisterXSInfo(TypeInfo(CINSIYET_TIPI), 'http://tempuri.org/', 'CINSIYET_TIPI');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ACIL_TIPI), 'http://tempuri.org/', 'ACIL_TIPI');
  RemClassRegistry.RegisterXSInfo(TypeInfo(YATAN_TIPI), 'http://tempuri.org/', 'YATAN_TIPI');
  RemClassRegistry.RegisterXSInfo(TypeInfo(SKRS_SGK), 'http://tempuri.org/', 'SKRS_SGK');
  RemClassRegistry.RegisterXSInfo(TypeInfo(SERPOL_TIPI), 'http://tempuri.org/', 'SERPOL_TIPI');
  RemClassRegistry.RegisterXSClass(EntegRec, 'http://tempuri.org/', 'EntegRec');
  RemClassRegistry.RegisterXSClass(Tetkik, 'http://tempuri.org/', 'Tetkik');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfBarkodInfo), 'http://tempuri.org/', 'ArrayOfBarkodInfo');
  RemClassRegistry.RegisterXSClass(IslemSonuc, 'http://tempuri.org/', 'IslemSonuc');
  RemClassRegistry.RegisterXSInfo(TypeInfo(BARKOD_TIPI), 'http://tempuri.org/', 'BARKOD_TIPI');
  RemClassRegistry.RegisterXSClass(BarkodInfo, 'http://tempuri.org/', 'BarkodInfo');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfKayitSorguTamamla), 'http://tempuri.org/', 'ArrayOfKayitSorguTamamla');
  RemClassRegistry.RegisterXSClass(KayitSorguTamamla, 'http://tempuri.org/', 'KayitSorguTamamla');
  RemClassRegistry.RegisterXSClass(KayitSorguTamamlaDurum, 'http://tempuri.org/', 'KayitSorguTamamlaDurum');
  RemClassRegistry.RegisterXSClass(OrnekDurum, 'http://tempuri.org/', 'OrnekDurum');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfSonucDurum), 'http://tempuri.org/', 'ArrayOfSonucDurum');
  RemClassRegistry.RegisterXSInfo(TypeInfo(DURUM), 'http://tempuri.org/', 'DURUM');
  RemClassRegistry.RegisterXSClass(SonucDurum, 'http://tempuri.org/', 'SonucDurum');
  RemClassRegistry.RegisterXSInfo(TypeInfo(UREME_DURUM_TIPI), 'http://tempuri.org/', 'UREME_DURUM_TIPI');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ENFEKSIYON_TIPI), 'http://tempuri.org/', 'ENFEKSIYON_TIPI');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfORGANIZMASONUC), 'http://tempuri.org/', 'ArrayOfORGANIZMASONUC');
  RemClassRegistry.RegisterXSClass(KULTURSONUC, 'http://tempuri.org/', 'KULTURSONUC');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfADTSONUC), 'http://tempuri.org/', 'ArrayOfADTSONUC');
  RemClassRegistry.RegisterXSClass(ORGANIZMASONUC, 'http://tempuri.org/', 'ORGANIZMASONUC');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ADTSONUC_TIPI), 'http://tempuri.org/', 'ADTSONUC_TIPI');
  RemClassRegistry.RegisterXSClass(ADTSONUC, 'http://tempuri.org/', 'ADTSONUC');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfIstem), 'http://tempuri.org/', 'ArrayOfIstem');
  RemClassRegistry.RegisterXSClass(IstemDurum, 'http://tempuri.org/', 'IstemDurum');
  RemClassRegistry.RegisterXSClass(Istem, 'http://tempuri.org/', 'Istem');
  RemClassRegistry.RegisterXSClass(SaglayiciSonucDurum, 'http://tempuri.org/', 'SaglayiciSonucDurum');
  RemClassRegistry.RegisterXSClass(DiyalizSonucDurum, 'http://tempuri.org/', 'DiyalizSonucDurum');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfKayitDurum), 'http://tempuri.org/', 'ArrayOfKayitDurum');
  RemClassRegistry.RegisterXSClass(KayitSorgulaDurum, 'http://tempuri.org/', 'KayitSorgulaDurum');
  RemClassRegistry.RegisterXSClass(KayitDurum, 'http://tempuri.org/', 'KayitDurum');
  RemClassRegistry.RegisterXSClass(OrnekKayitSorgulaDurum, 'http://tempuri.org/', 'OrnekKayitSorgulaDurum');
  RemClassRegistry.RegisterXSClass(DoktorBilgi, 'http://tempuri.org/', 'DoktorBilgi');
  RemClassRegistry.RegisterXSClass(BarkodTanim, 'http://tempuri.org/', 'BarkodTanim');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfEntegKodlar), 'http://tempuri.org/', 'ArrayOfEntegKodlar');
  RemClassRegistry.RegisterXSClass(EntegKodDurum, 'http://tempuri.org/', 'EntegKodDurum');
  RemClassRegistry.RegisterXSClass(EntegKodlar, 'http://tempuri.org/', 'EntegKodlar');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfPANEL), 'http://tempuri.org/', 'ArrayOfPANEL');
  RemClassRegistry.RegisterXSClass(PanelDurum, 'http://tempuri.org/', 'PanelDurum');
  RemClassRegistry.RegisterXSClass(PANEL, 'http://tempuri.org/', 'PANEL');
  RemClassRegistry.RegisterXSInfo(TypeInfo(EVET_HAYIR), 'http://tempuri.org/', 'EVET_HAYIR');
  RemClassRegistry.RegisterXSClass(TalesemiSonucDurum, 'http://tempuri.org/', 'TalesemiSonucDurum');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfOrnekDetayBilgi), 'http://tempuri.org/', 'ArrayOfOrnekDetayBilgi');
  RemClassRegistry.RegisterXSClass(OrnekDetayBilgi, 'http://tempuri.org/', 'OrnekDetayBilgi');

end.