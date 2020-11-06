// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : https://sgkt.sgk.gov.tr/medula/eczane/saglikTesisiYardimciIslemleriWS?wsdl
//  >Import : https://sgkt.sgk.gov.tr/medula/eczane/saglikTesisiYardimciIslemleriWS?wsdl>0
//  >Import : https://sgkt.sgk.gov.tr/medula/eczane/saglikTesisiYardimciIslemleriWS.xsd2.xsd
// Encoding : UTF-8
// Version  : 1.0
// (01.08.2020 13:25:05 - - $Rev: 45757 $)
// ************************************************************************ //

unit saglikTesisiEczaneYardimciIslemleriWS;

interface

uses InvokeRegistry, SOAPHTTPClient, Types, XSBuiltIns;

const
  IS_OPTN = $0001;
  IS_UNBD = $0002;
  IS_NLBL = $0004;
  IS_UNQL = $0008;


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
  // !:long            - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:double          - "http://www.w3.org/2001/XMLSchema"[Gbl]

  etkinMaddeSutListesiSorguIstekDVO = class;    { "http://servisler.ws.eczane.gss.sgk.gov.tr"[GblCplx] }
  etkinMaddeSutListesiSorguCevapDVO = class;    { "http://servisler.ws.eczane.gss.sgk.gov.tr"[GblCplx] }
  raporTeshisListesiSorguIstekDVO = class;      { "http://servisler.ws.eczane.gss.sgk.gov.tr"[GblCplx] }
  etkinMaddeDVO        = class;                 { "http://servisler.ws.eczane.gss.sgk.gov.tr"[GblCplx] }
  etkinMaddeListesiSorguIstekDVO = class;       { "http://servisler.ws.eczane.gss.sgk.gov.tr"[GblCplx] }
  etkinMaddeListesiSorguCevapDVO = class;       { "http://servisler.ws.eczane.gss.sgk.gov.tr"[GblCplx] }
  ilacDVO              = class;                 { "http://servisler.ws.eczane.gss.sgk.gov.tr"[GblCplx] }
  raporTeshisDVO       = class;                 { "http://servisler.ws.eczane.gss.sgk.gov.tr"[GblCplx] }
  etkinMaddeSutDVO     = class;                 { "http://servisler.ws.eczane.gss.sgk.gov.tr"[GblCplx] }
  ilacListesiSorguIstekDVO = class;             { "http://servisler.ws.eczane.gss.sgk.gov.tr"[GblCplx] }
  ilacListesiSorguCevapDVO = class;             { "http://servisler.ws.eczane.gss.sgk.gov.tr"[GblCplx] }
  raporTeshisListesiSorguCevapDVO = class;      { "http://servisler.ws.eczane.gss.sgk.gov.tr"[GblCplx] }



  // ************************************************************************ //
  // XML       : etkinMaddeSutListesiSorguIstekDVO, global, <complexType>
  // Namespace : http://servisler.ws.eczane.gss.sgk.gov.tr
  // ************************************************************************ //
  etkinMaddeSutListesiSorguIstekDVO = class(TRemotable)
  private
    FtesisKodu: Integer;
    FdoktorTcKimlikNo: Int64;
    FetkinMaddeKodu: string;
    FraporTarihi: string;
  published
    property tesisKodu:        Integer  Index (IS_NLBL or IS_UNQL) read FtesisKodu write FtesisKodu;
    property doktorTcKimlikNo: Int64    Index (IS_NLBL or IS_UNQL) read FdoktorTcKimlikNo write FdoktorTcKimlikNo;
    property etkinMaddeKodu:   string   Index (IS_UNQL) read FetkinMaddeKodu write FetkinMaddeKodu;
    property raporTarihi:      string   Index (IS_UNQL) read FraporTarihi write FraporTarihi;
  end;

  Array_Of_ilacDVO = array of ilacDVO;          { "http://servisler.ws.eczane.gss.sgk.gov.tr"[GblUbnd] }
  Array_Of_etkinMaddeDVO = array of etkinMaddeDVO;   { "http://servisler.ws.eczane.gss.sgk.gov.tr"[GblUbnd] }
  Array_Of_string = array of string;            { "http://www.w3.org/2001/XMLSchema"[GblUbnd] }
  Array_Of_etkinMaddeSutDVO = array of etkinMaddeSutDVO;   { "http://servisler.ws.eczane.gss.sgk.gov.tr"[GblUbnd] }
  Array_Of_raporTeshisDVO = array of raporTeshisDVO;   { "http://servisler.ws.eczane.gss.sgk.gov.tr"[GblUbnd] }


  // ************************************************************************ //
  // XML       : etkinMaddeSutListesiSorguCevapDVO, global, <complexType>
  // Namespace : http://servisler.ws.eczane.gss.sgk.gov.tr
  // ************************************************************************ //
  etkinMaddeSutListesiSorguCevapDVO = class(TRemotable)
  private
    FetkinMaddeSutListesi: Array_Of_etkinMaddeSutDVO;
    FetkinMaddeSutListesi_Specified: boolean;
    FsonucKodu: string;
    FsonucKodu_Specified: boolean;
    FsonucMesaji: string;
    FsonucMesaji_Specified: boolean;
    FuyariMesaji: string;
    FuyariMesaji_Specified: boolean;
    procedure SetetkinMaddeSutListesi(Index: Integer; const AArray_Of_etkinMaddeSutDVO: Array_Of_etkinMaddeSutDVO);
    function  etkinMaddeSutListesi_Specified(Index: Integer): boolean;
    procedure SetsonucKodu(Index: Integer; const Astring: string);
    function  sonucKodu_Specified(Index: Integer): boolean;
    procedure SetsonucMesaji(Index: Integer; const Astring: string);
    function  sonucMesaji_Specified(Index: Integer): boolean;
    procedure SetuyariMesaji(Index: Integer; const Astring: string);
    function  uyariMesaji_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property etkinMaddeSutListesi: Array_Of_etkinMaddeSutDVO  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FetkinMaddeSutListesi write SetetkinMaddeSutListesi stored etkinMaddeSutListesi_Specified;
    property sonucKodu:            string                     Index (IS_OPTN or IS_UNQL) read FsonucKodu write SetsonucKodu stored sonucKodu_Specified;
    property sonucMesaji:          string                     Index (IS_OPTN or IS_UNQL) read FsonucMesaji write SetsonucMesaji stored sonucMesaji_Specified;
    property uyariMesaji:          string                     Index (IS_OPTN or IS_UNQL) read FuyariMesaji write SetuyariMesaji stored uyariMesaji_Specified;
  end;



  // ************************************************************************ //
  // XML       : raporTeshisListesiSorguIstekDVO, global, <complexType>
  // Namespace : http://servisler.ws.eczane.gss.sgk.gov.tr
  // ************************************************************************ //
  raporTeshisListesiSorguIstekDVO = class(TRemotable)
  private
    FtesisKodu: Integer;
    FdoktorTcKimlikNo: Int64;
  published
    property tesisKodu:        Integer  Index (IS_NLBL or IS_UNQL) read FtesisKodu write FtesisKodu;
    property doktorTcKimlikNo: Int64    Index (IS_NLBL or IS_UNQL) read FdoktorTcKimlikNo write FdoktorTcKimlikNo;
  end;



  // ************************************************************************ //
  // XML       : etkinMaddeDVO, global, <complexType>
  // Namespace : http://servisler.ws.eczane.gss.sgk.gov.tr
  // ************************************************************************ //
  etkinMaddeDVO = class(TRemotable)
  private
    Fkodu: string;
    Fadi: string;
    Fadi_Specified: boolean;
    FicerikMiktari: string;
    Fformu: string;
    procedure Setadi(Index: Integer; const Astring: string);
    function  adi_Specified(Index: Integer): boolean;
  published
    property kodu:          string  Index (IS_UNQL) read Fkodu write Fkodu;
    property adi:           string  Index (IS_OPTN or IS_NLBL or IS_UNQL) read Fadi write Setadi stored adi_Specified;
    property icerikMiktari: string  Index (IS_UNQL) read FicerikMiktari write FicerikMiktari;
    property formu:         string  Index (IS_UNQL) read Fformu write Fformu;
  end;



  // ************************************************************************ //
  // XML       : etkinMaddeListesiSorguIstekDVO, global, <complexType>
  // Namespace : http://servisler.ws.eczane.gss.sgk.gov.tr
  // ************************************************************************ //
  etkinMaddeListesiSorguIstekDVO = class(TRemotable)
  private
    FtesisKodu: Integer;
    FdoktorTcKimlikNo: Int64;
  published
    property tesisKodu:        Integer  Index (IS_NLBL or IS_UNQL) read FtesisKodu write FtesisKodu;
    property doktorTcKimlikNo: Int64    Index (IS_NLBL or IS_UNQL) read FdoktorTcKimlikNo write FdoktorTcKimlikNo;
  end;



  // ************************************************************************ //
  // XML       : etkinMaddeListesiSorguCevapDVO, global, <complexType>
  // Namespace : http://servisler.ws.eczane.gss.sgk.gov.tr
  // ************************************************************************ //
  etkinMaddeListesiSorguCevapDVO = class(TRemotable)
  private
    FetkinMaddeListesi: Array_Of_etkinMaddeDVO;
    FetkinMaddeListesi_Specified: boolean;
    FsonucKodu: string;
    FsonucKodu_Specified: boolean;
    FsonucMesaji: string;
    FsonucMesaji_Specified: boolean;
    FuyariMesaji: string;
    FuyariMesaji_Specified: boolean;
    procedure SetetkinMaddeListesi(Index: Integer; const AArray_Of_etkinMaddeDVO: Array_Of_etkinMaddeDVO);
    function  etkinMaddeListesi_Specified(Index: Integer): boolean;
    procedure SetsonucKodu(Index: Integer; const Astring: string);
    function  sonucKodu_Specified(Index: Integer): boolean;
    procedure SetsonucMesaji(Index: Integer; const Astring: string);
    function  sonucMesaji_Specified(Index: Integer): boolean;
    procedure SetuyariMesaji(Index: Integer; const Astring: string);
    function  uyariMesaji_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property etkinMaddeListesi: Array_Of_etkinMaddeDVO  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FetkinMaddeListesi write SetetkinMaddeListesi stored etkinMaddeListesi_Specified;
    property sonucKodu:         string                  Index (IS_OPTN or IS_UNQL) read FsonucKodu write SetsonucKodu stored sonucKodu_Specified;
    property sonucMesaji:       string                  Index (IS_OPTN or IS_UNQL) read FsonucMesaji write SetsonucMesaji stored sonucMesaji_Specified;
    property uyariMesaji:       string                  Index (IS_OPTN or IS_UNQL) read FuyariMesaji write SetuyariMesaji stored uyariMesaji_Specified;
  end;



  // ************************************************************************ //
  // XML       : ilacDVO, global, <complexType>
  // Namespace : http://servisler.ws.eczane.gss.sgk.gov.tr
  // ************************************************************************ //
  ilacDVO = class(TRemotable)
  private
    Fbarkod: Int64;
    FilacAdi: string;
    FilacAdi_Specified: boolean;
    FsgkIlacKodu: Integer;
    FambalajMiktari: Double;
    FtekDozMiktari: Double;
    FkutuBirimMiktari: Double;
    FayaktanOdenmeSarti: string;
    FayaktanOdenmeSarti_Specified: boolean;
    FyatanOdenmeSarti: string;
    FyatanOdenmeSarti_Specified: boolean;
    FetkinMaddeKodu: string;
    FetkinMaddeKodu_Specified: boolean;
    procedure SetilacAdi(Index: Integer; const Astring: string);
    function  ilacAdi_Specified(Index: Integer): boolean;
    procedure SetayaktanOdenmeSarti(Index: Integer; const Astring: string);
    function  ayaktanOdenmeSarti_Specified(Index: Integer): boolean;
    procedure SetyatanOdenmeSarti(Index: Integer; const Astring: string);
    function  yatanOdenmeSarti_Specified(Index: Integer): boolean;
    procedure SetetkinMaddeKodu(Index: Integer; const Astring: string);
    function  etkinMaddeKodu_Specified(Index: Integer): boolean;
  published
    property barkod:             Int64    Index (IS_UNQL) read Fbarkod write Fbarkod;
    property ilacAdi:            string   Index (IS_OPTN or IS_UNQL) read FilacAdi write SetilacAdi stored ilacAdi_Specified;
    property sgkIlacKodu:        Integer  Index (IS_UNQL) read FsgkIlacKodu write FsgkIlacKodu;
    property ambalajMiktari:     Double   Index (IS_UNQL) read FambalajMiktari write FambalajMiktari;
    property tekDozMiktari:      Double   Index (IS_UNQL) read FtekDozMiktari write FtekDozMiktari;
    property kutuBirimMiktari:   Double   Index (IS_UNQL) read FkutuBirimMiktari write FkutuBirimMiktari;
    property ayaktanOdenmeSarti: string   Index (IS_OPTN or IS_UNQL) read FayaktanOdenmeSarti write SetayaktanOdenmeSarti stored ayaktanOdenmeSarti_Specified;
    property yatanOdenmeSarti:   string   Index (IS_OPTN or IS_UNQL) read FyatanOdenmeSarti write SetyatanOdenmeSarti stored yatanOdenmeSarti_Specified;
    property etkinMaddeKodu:     string   Index (IS_OPTN or IS_UNQL) read FetkinMaddeKodu write SetetkinMaddeKodu stored etkinMaddeKodu_Specified;
  end;



  // ************************************************************************ //
  // XML       : raporTeshisDVO, global, <complexType>
  // Namespace : http://servisler.ws.eczane.gss.sgk.gov.tr
  // ************************************************************************ //
  raporTeshisDVO = class(TRemotable)
  private
    FraporTeshisKodu: string;
    FraporTeshisKodu_Specified: boolean;
    Faciklama: string;
    Faciklama_Specified: boolean;
    procedure SetraporTeshisKodu(Index: Integer; const Astring: string);
    function  raporTeshisKodu_Specified(Index: Integer): boolean;
    procedure Setaciklama(Index: Integer; const Astring: string);
    function  aciklama_Specified(Index: Integer): boolean;
  published
    property raporTeshisKodu: string  Index (IS_OPTN or IS_UNQL) read FraporTeshisKodu write SetraporTeshisKodu stored raporTeshisKodu_Specified;
    property aciklama:        string  Index (IS_OPTN or IS_UNQL) read Faciklama write Setaciklama stored aciklama_Specified;
  end;



  // ************************************************************************ //
  // XML       : etkinMaddeSutDVO, global, <complexType>
  // Namespace : http://servisler.ws.eczane.gss.sgk.gov.tr
  // ************************************************************************ //
  etkinMaddeSutDVO = class(TRemotable)
  private
    FetkinMaddeSutNo: string;
    FetkinMaddeSutNo_Specified: boolean;
    FraporTeshisListesi: Array_Of_raporTeshisDVO;
    FraporTeshisListesi_Specified: boolean;
    FdoktorBransListesi: Array_Of_string;
    FdoktorBransListesi_Specified: boolean;
    FdoktorSertifikaListesi: Array_Of_string;
    FdoktorSertifikaListesi_Specified: boolean;
    FtesisAnaGrupListesi: Array_Of_string;
    FtesisAnaGrupListesi_Specified: boolean;
    FraporDuzenlemeTuru: string;
    FraporDuzenlemeTuru_Specified: boolean;
    Fcinsiyeti: string;
    Fcinsiyeti_Specified: boolean;
    FmaksimumRaporTarihi: string;
    FmaksimumRaporTarihi_Specified: boolean;
    FminimumYasi: string;
    FminimumYasi_Specified: boolean;
    FmaksimumYasi: string;
    FmaksimumYasi_Specified: boolean;
    FmaksimumRaporSuresi: string;
    FmaksimumRaporSuresi_Specified: boolean;
    FmaksimumRaporSuresiBirimi: string;
    FmaksimumRaporSuresiBirimi_Specified: boolean;
    procedure SetetkinMaddeSutNo(Index: Integer; const Astring: string);
    function  etkinMaddeSutNo_Specified(Index: Integer): boolean;
    procedure SetraporTeshisListesi(Index: Integer; const AArray_Of_raporTeshisDVO: Array_Of_raporTeshisDVO);
    function  raporTeshisListesi_Specified(Index: Integer): boolean;
    procedure SetdoktorBransListesi(Index: Integer; const AArray_Of_string: Array_Of_string);
    function  doktorBransListesi_Specified(Index: Integer): boolean;
    procedure SetdoktorSertifikaListesi(Index: Integer; const AArray_Of_string: Array_Of_string);
    function  doktorSertifikaListesi_Specified(Index: Integer): boolean;
    procedure SettesisAnaGrupListesi(Index: Integer; const AArray_Of_string: Array_Of_string);
    function  tesisAnaGrupListesi_Specified(Index: Integer): boolean;
    procedure SetraporDuzenlemeTuru(Index: Integer; const Astring: string);
    function  raporDuzenlemeTuru_Specified(Index: Integer): boolean;
    procedure Setcinsiyeti(Index: Integer; const Astring: string);
    function  cinsiyeti_Specified(Index: Integer): boolean;
    procedure SetmaksimumRaporTarihi(Index: Integer; const Astring: string);
    function  maksimumRaporTarihi_Specified(Index: Integer): boolean;
    procedure SetminimumYasi(Index: Integer; const Astring: string);
    function  minimumYasi_Specified(Index: Integer): boolean;
    procedure SetmaksimumYasi(Index: Integer; const Astring: string);
    function  maksimumYasi_Specified(Index: Integer): boolean;
    procedure SetmaksimumRaporSuresi(Index: Integer; const Astring: string);
    function  maksimumRaporSuresi_Specified(Index: Integer): boolean;
    procedure SetmaksimumRaporSuresiBirimi(Index: Integer; const Astring: string);
    function  maksimumRaporSuresiBirimi_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property etkinMaddeSutNo:           string                   Index (IS_OPTN or IS_UNQL) read FetkinMaddeSutNo write SetetkinMaddeSutNo stored etkinMaddeSutNo_Specified;
    property raporTeshisListesi:        Array_Of_raporTeshisDVO  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FraporTeshisListesi write SetraporTeshisListesi stored raporTeshisListesi_Specified;
    property doktorBransListesi:        Array_Of_string          Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FdoktorBransListesi write SetdoktorBransListesi stored doktorBransListesi_Specified;
    property doktorSertifikaListesi:    Array_Of_string          Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FdoktorSertifikaListesi write SetdoktorSertifikaListesi stored doktorSertifikaListesi_Specified;
    property tesisAnaGrupListesi:       Array_Of_string          Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FtesisAnaGrupListesi write SettesisAnaGrupListesi stored tesisAnaGrupListesi_Specified;
    property raporDuzenlemeTuru:        string                   Index (IS_OPTN or IS_UNQL) read FraporDuzenlemeTuru write SetraporDuzenlemeTuru stored raporDuzenlemeTuru_Specified;
    property cinsiyeti:                 string                   Index (IS_OPTN or IS_UNQL) read Fcinsiyeti write Setcinsiyeti stored cinsiyeti_Specified;
    property maksimumRaporTarihi:       string                   Index (IS_OPTN or IS_UNQL) read FmaksimumRaporTarihi write SetmaksimumRaporTarihi stored maksimumRaporTarihi_Specified;
    property minimumYasi:               string                   Index (IS_OPTN or IS_UNQL) read FminimumYasi write SetminimumYasi stored minimumYasi_Specified;
    property maksimumYasi:              string                   Index (IS_OPTN or IS_UNQL) read FmaksimumYasi write SetmaksimumYasi stored maksimumYasi_Specified;
    property maksimumRaporSuresi:       string                   Index (IS_OPTN or IS_UNQL) read FmaksimumRaporSuresi write SetmaksimumRaporSuresi stored maksimumRaporSuresi_Specified;
    property maksimumRaporSuresiBirimi: string                   Index (IS_OPTN or IS_UNQL) read FmaksimumRaporSuresiBirimi write SetmaksimumRaporSuresiBirimi stored maksimumRaporSuresiBirimi_Specified;
  end;



  // ************************************************************************ //
  // XML       : ilacListesiSorguIstekDVO, global, <complexType>
  // Namespace : http://servisler.ws.eczane.gss.sgk.gov.tr
  // ************************************************************************ //
  ilacListesiSorguIstekDVO = class(TRemotable)
  private
    FtesisKodu: Integer;
    FdoktorTcKimlikNo: Int64;
    FislemTarihi: string;
  published
    property tesisKodu:        Integer  Index (IS_NLBL or IS_UNQL) read FtesisKodu write FtesisKodu;
    property doktorTcKimlikNo: Int64    Index (IS_NLBL or IS_UNQL) read FdoktorTcKimlikNo write FdoktorTcKimlikNo;
    property islemTarihi:      string   Index (IS_UNQL) read FislemTarihi write FislemTarihi;
  end;



  // ************************************************************************ //
  // XML       : ilacListesiSorguCevapDVO, global, <complexType>
  // Namespace : http://servisler.ws.eczane.gss.sgk.gov.tr
  // ************************************************************************ //
  ilacListesiSorguCevapDVO = class(TRemotable)
  private
    FilacListesi: Array_Of_ilacDVO;
    FilacListesi_Specified: boolean;
    FsonucKodu: string;
    FsonucKodu_Specified: boolean;
    FsonucMesaji: string;
    FsonucMesaji_Specified: boolean;
    FuyariMesaji: string;
    FuyariMesaji_Specified: boolean;
    procedure SetilacListesi(Index: Integer; const AArray_Of_ilacDVO: Array_Of_ilacDVO);
    function  ilacListesi_Specified(Index: Integer): boolean;
    procedure SetsonucKodu(Index: Integer; const Astring: string);
    function  sonucKodu_Specified(Index: Integer): boolean;
    procedure SetsonucMesaji(Index: Integer; const Astring: string);
    function  sonucMesaji_Specified(Index: Integer): boolean;
    procedure SetuyariMesaji(Index: Integer; const Astring: string);
    function  uyariMesaji_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property ilacListesi: Array_Of_ilacDVO  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FilacListesi write SetilacListesi stored ilacListesi_Specified;
    property sonucKodu:   string            Index (IS_OPTN or IS_UNQL) read FsonucKodu write SetsonucKodu stored sonucKodu_Specified;
    property sonucMesaji: string            Index (IS_OPTN or IS_UNQL) read FsonucMesaji write SetsonucMesaji stored sonucMesaji_Specified;
    property uyariMesaji: string            Index (IS_OPTN or IS_UNQL) read FuyariMesaji write SetuyariMesaji stored uyariMesaji_Specified;
  end;



  // ************************************************************************ //
  // XML       : raporTeshisListesiSorguCevapDVO, global, <complexType>
  // Namespace : http://servisler.ws.eczane.gss.sgk.gov.tr
  // ************************************************************************ //
  raporTeshisListesiSorguCevapDVO = class(TRemotable)
  private
    FraporTeshisListesi: Array_Of_raporTeshisDVO;
    FraporTeshisListesi_Specified: boolean;
    FsonucKodu: string;
    FsonucKodu_Specified: boolean;
    FsonucMesaji: string;
    FsonucMesaji_Specified: boolean;
    FuyariMesaji: string;
    FuyariMesaji_Specified: boolean;
    procedure SetraporTeshisListesi(Index: Integer; const AArray_Of_raporTeshisDVO: Array_Of_raporTeshisDVO);
    function  raporTeshisListesi_Specified(Index: Integer): boolean;
    procedure SetsonucKodu(Index: Integer; const Astring: string);
    function  sonucKodu_Specified(Index: Integer): boolean;
    procedure SetsonucMesaji(Index: Integer; const Astring: string);
    function  sonucMesaji_Specified(Index: Integer): boolean;
    procedure SetuyariMesaji(Index: Integer; const Astring: string);
    function  uyariMesaji_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property raporTeshisListesi: Array_Of_raporTeshisDVO  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FraporTeshisListesi write SetraporTeshisListesi stored raporTeshisListesi_Specified;
    property sonucKodu:          string                   Index (IS_OPTN or IS_UNQL) read FsonucKodu write SetsonucKodu stored sonucKodu_Specified;
    property sonucMesaji:        string                   Index (IS_OPTN or IS_UNQL) read FsonucMesaji write SetsonucMesaji stored sonucMesaji_Specified;
    property uyariMesaji:        string                   Index (IS_OPTN or IS_UNQL) read FuyariMesaji write SetuyariMesaji stored uyariMesaji_Specified;
  end;


  // ************************************************************************ //
  // Namespace : http://servisler.ws.eczane.gss.sgk.gov.tr
  // soapAction: %operationName%
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : document
  // use       : literal
  // binding   : SaglikTesisiYardimciIslemleriPortBinding
  // service   : SaglikTesisiYardimciIslemleriService
  // port      : SaglikTesisiYardimciIslemleriPort
  // URL       : https://sgkt.sgk.gov.tr:443/medula/eczane/saglikTesisiYardimciIslemleriWS
  // ************************************************************************ //
  SaglikTesisiYardimciIslemleri = interface(IInvokable)
  ['{3281F561-BE4D-A18F-CE2E-D74D27B52698}']
    function  aktifIlacListesiSorgula(const arg0: ilacListesiSorguIstekDVO): ilacListesiSorguCevapDVO; stdcall;
    function  aktifYurtdisiIlacListesiSorgula(const arg0: ilacListesiSorguIstekDVO): ilacListesiSorguCevapDVO; stdcall;
    function  etkinMaddeListesiSorgula(const arg0: etkinMaddeListesiSorguIstekDVO): etkinMaddeListesiSorguCevapDVO; stdcall;
    function  etkinMaddeSutListesiSorgula(const arg0: etkinMaddeSutListesiSorguIstekDVO): etkinMaddeSutListesiSorguCevapDVO; stdcall;
    function  kirmiziReceteIlacListesiSorgula(const arg0: ilacListesiSorguIstekDVO): ilacListesiSorguCevapDVO; stdcall;
    function  kirmiziReceteYurtdisiIlacListesiSorgula(const arg0: ilacListesiSorguIstekDVO): ilacListesiSorguCevapDVO; stdcall;
    function  morReceteIlacListesiSorgula(const arg0: ilacListesiSorguIstekDVO): ilacListesiSorguCevapDVO; stdcall;
    function  morReceteYurtdisiIlacListesiSorgula(const arg0: ilacListesiSorguIstekDVO): ilacListesiSorguCevapDVO; stdcall;
    function  normalReceteIlacListesiSorgula(const arg0: ilacListesiSorguIstekDVO): ilacListesiSorguCevapDVO; stdcall;
    function  normalReceteYurtdisiIlacListesiSorgula(const arg0: ilacListesiSorguIstekDVO): ilacListesiSorguCevapDVO; stdcall;
    function  pasifIlacListesiSorgula(const arg0: ilacListesiSorguIstekDVO): ilacListesiSorguCevapDVO; stdcall;
    function  pasifYurtdisiIlacListesiSorgula(const arg0: ilacListesiSorguIstekDVO): ilacListesiSorguCevapDVO; stdcall;
    function  raporTeshisListesiSorgula(const arg0: raporTeshisListesiSorguIstekDVO): raporTeshisListesiSorguCevapDVO; stdcall;
    function  turuncuReceteIlacListesiSorgula(const arg0: ilacListesiSorguIstekDVO): ilacListesiSorguCevapDVO; stdcall;
    function  turuncuReceteYurtdisiIlacListesiSorgula(const arg0: ilacListesiSorguIstekDVO): ilacListesiSorguCevapDVO; stdcall;
    function  yesilReceteIlacListesiSorgula(const arg0: ilacListesiSorguIstekDVO): ilacListesiSorguCevapDVO; stdcall;
    function  yesilReceteYurtdisiIlacListesiSorgula(const arg0: ilacListesiSorguIstekDVO): ilacListesiSorguCevapDVO; stdcall;
    function  yurtdisiIlacEtkinMaddeListesiSorgula(const arg0: etkinMaddeListesiSorguIstekDVO): etkinMaddeListesiSorguCevapDVO; stdcall;
  end;

function GetSaglikTesisiYardimciIslemleri(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): SaglikTesisiYardimciIslemleri;


implementation
  uses SysUtils;

function GetSaglikTesisiYardimciIslemleri(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): SaglikTesisiYardimciIslemleri;
const
  defWSDL = 'https://sgkt.sgk.gov.tr/medula/eczane/saglikTesisiYardimciIslemleriWS?wsdl';
  defURL  = 'https://sgkt.sgk.gov.tr:443/medula/eczane/saglikTesisiYardimciIslemleriWS';
  defSvc  = 'SaglikTesisiYardimciIslemleriService';
  defPrt  = 'SaglikTesisiYardimciIslemleriPort';
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
    Result := (RIO as SaglikTesisiYardimciIslemleri);
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


destructor etkinMaddeSutListesiSorguCevapDVO.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FetkinMaddeSutListesi)-1 do
    SysUtils.FreeAndNil(FetkinMaddeSutListesi[I]);
  System.SetLength(FetkinMaddeSutListesi, 0);
  inherited Destroy;
end;

procedure etkinMaddeSutListesiSorguCevapDVO.SetetkinMaddeSutListesi(Index: Integer; const AArray_Of_etkinMaddeSutDVO: Array_Of_etkinMaddeSutDVO);
begin
  FetkinMaddeSutListesi := AArray_Of_etkinMaddeSutDVO;
  FetkinMaddeSutListesi_Specified := True;
end;

function etkinMaddeSutListesiSorguCevapDVO.etkinMaddeSutListesi_Specified(Index: Integer): boolean;
begin
  Result := FetkinMaddeSutListesi_Specified;
end;

procedure etkinMaddeSutListesiSorguCevapDVO.SetsonucKodu(Index: Integer; const Astring: string);
begin
  FsonucKodu := Astring;
  FsonucKodu_Specified := True;
end;

function etkinMaddeSutListesiSorguCevapDVO.sonucKodu_Specified(Index: Integer): boolean;
begin
  Result := FsonucKodu_Specified;
end;

procedure etkinMaddeSutListesiSorguCevapDVO.SetsonucMesaji(Index: Integer; const Astring: string);
begin
  FsonucMesaji := Astring;
  FsonucMesaji_Specified := True;
end;

function etkinMaddeSutListesiSorguCevapDVO.sonucMesaji_Specified(Index: Integer): boolean;
begin
  Result := FsonucMesaji_Specified;
end;

procedure etkinMaddeSutListesiSorguCevapDVO.SetuyariMesaji(Index: Integer; const Astring: string);
begin
  FuyariMesaji := Astring;
  FuyariMesaji_Specified := True;
end;

function etkinMaddeSutListesiSorguCevapDVO.uyariMesaji_Specified(Index: Integer): boolean;
begin
  Result := FuyariMesaji_Specified;
end;

procedure etkinMaddeDVO.Setadi(Index: Integer; const Astring: string);
begin
  Fadi := Astring;
  Fadi_Specified := True;
end;

function etkinMaddeDVO.adi_Specified(Index: Integer): boolean;
begin
  Result := Fadi_Specified;
end;

destructor etkinMaddeListesiSorguCevapDVO.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FetkinMaddeListesi)-1 do
    SysUtils.FreeAndNil(FetkinMaddeListesi[I]);
  System.SetLength(FetkinMaddeListesi, 0);
  inherited Destroy;
end;

procedure etkinMaddeListesiSorguCevapDVO.SetetkinMaddeListesi(Index: Integer; const AArray_Of_etkinMaddeDVO: Array_Of_etkinMaddeDVO);
begin
  FetkinMaddeListesi := AArray_Of_etkinMaddeDVO;
  FetkinMaddeListesi_Specified := True;
end;

function etkinMaddeListesiSorguCevapDVO.etkinMaddeListesi_Specified(Index: Integer): boolean;
begin
  Result := FetkinMaddeListesi_Specified;
end;

procedure etkinMaddeListesiSorguCevapDVO.SetsonucKodu(Index: Integer; const Astring: string);
begin
  FsonucKodu := Astring;
  FsonucKodu_Specified := True;
end;

function etkinMaddeListesiSorguCevapDVO.sonucKodu_Specified(Index: Integer): boolean;
begin
  Result := FsonucKodu_Specified;
end;

procedure etkinMaddeListesiSorguCevapDVO.SetsonucMesaji(Index: Integer; const Astring: string);
begin
  FsonucMesaji := Astring;
  FsonucMesaji_Specified := True;
end;

function etkinMaddeListesiSorguCevapDVO.sonucMesaji_Specified(Index: Integer): boolean;
begin
  Result := FsonucMesaji_Specified;
end;

procedure etkinMaddeListesiSorguCevapDVO.SetuyariMesaji(Index: Integer; const Astring: string);
begin
  FuyariMesaji := Astring;
  FuyariMesaji_Specified := True;
end;

function etkinMaddeListesiSorguCevapDVO.uyariMesaji_Specified(Index: Integer): boolean;
begin
  Result := FuyariMesaji_Specified;
end;

procedure ilacDVO.SetilacAdi(Index: Integer; const Astring: string);
begin
  FilacAdi := Astring;
  FilacAdi_Specified := True;
end;

function ilacDVO.ilacAdi_Specified(Index: Integer): boolean;
begin
  Result := FilacAdi_Specified;
end;

procedure ilacDVO.SetayaktanOdenmeSarti(Index: Integer; const Astring: string);
begin
  FayaktanOdenmeSarti := Astring;
  FayaktanOdenmeSarti_Specified := True;
end;

function ilacDVO.ayaktanOdenmeSarti_Specified(Index: Integer): boolean;
begin
  Result := FayaktanOdenmeSarti_Specified;
end;

procedure ilacDVO.SetyatanOdenmeSarti(Index: Integer; const Astring: string);
begin
  FyatanOdenmeSarti := Astring;
  FyatanOdenmeSarti_Specified := True;
end;

function ilacDVO.yatanOdenmeSarti_Specified(Index: Integer): boolean;
begin
  Result := FyatanOdenmeSarti_Specified;
end;

procedure ilacDVO.SetetkinMaddeKodu(Index: Integer; const Astring: string);
begin
  FetkinMaddeKodu := Astring;
  FetkinMaddeKodu_Specified := True;
end;

function ilacDVO.etkinMaddeKodu_Specified(Index: Integer): boolean;
begin
  Result := FetkinMaddeKodu_Specified;
end;

procedure raporTeshisDVO.SetraporTeshisKodu(Index: Integer; const Astring: string);
begin
  FraporTeshisKodu := Astring;
  FraporTeshisKodu_Specified := True;
end;

function raporTeshisDVO.raporTeshisKodu_Specified(Index: Integer): boolean;
begin
  Result := FraporTeshisKodu_Specified;
end;

procedure raporTeshisDVO.Setaciklama(Index: Integer; const Astring: string);
begin
  Faciklama := Astring;
  Faciklama_Specified := True;
end;

function raporTeshisDVO.aciklama_Specified(Index: Integer): boolean;
begin
  Result := Faciklama_Specified;
end;

destructor etkinMaddeSutDVO.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FraporTeshisListesi)-1 do
    SysUtils.FreeAndNil(FraporTeshisListesi[I]);
  System.SetLength(FraporTeshisListesi, 0);
  inherited Destroy;
end;

procedure etkinMaddeSutDVO.SetetkinMaddeSutNo(Index: Integer; const Astring: string);
begin
  FetkinMaddeSutNo := Astring;
  FetkinMaddeSutNo_Specified := True;
end;

function etkinMaddeSutDVO.etkinMaddeSutNo_Specified(Index: Integer): boolean;
begin
  Result := FetkinMaddeSutNo_Specified;
end;

procedure etkinMaddeSutDVO.SetraporTeshisListesi(Index: Integer; const AArray_Of_raporTeshisDVO: Array_Of_raporTeshisDVO);
begin
  FraporTeshisListesi := AArray_Of_raporTeshisDVO;
  FraporTeshisListesi_Specified := True;
end;

function etkinMaddeSutDVO.raporTeshisListesi_Specified(Index: Integer): boolean;
begin
  Result := FraporTeshisListesi_Specified;
end;

procedure etkinMaddeSutDVO.SetdoktorBransListesi(Index: Integer; const AArray_Of_string: Array_Of_string);
begin
  FdoktorBransListesi := AArray_Of_string;
  FdoktorBransListesi_Specified := True;
end;

function etkinMaddeSutDVO.doktorBransListesi_Specified(Index: Integer): boolean;
begin
  Result := FdoktorBransListesi_Specified;
end;

procedure etkinMaddeSutDVO.SetdoktorSertifikaListesi(Index: Integer; const AArray_Of_string: Array_Of_string);
begin
  FdoktorSertifikaListesi := AArray_Of_string;
  FdoktorSertifikaListesi_Specified := True;
end;

function etkinMaddeSutDVO.doktorSertifikaListesi_Specified(Index: Integer): boolean;
begin
  Result := FdoktorSertifikaListesi_Specified;
end;

procedure etkinMaddeSutDVO.SettesisAnaGrupListesi(Index: Integer; const AArray_Of_string: Array_Of_string);
begin
  FtesisAnaGrupListesi := AArray_Of_string;
  FtesisAnaGrupListesi_Specified := True;
end;

function etkinMaddeSutDVO.tesisAnaGrupListesi_Specified(Index: Integer): boolean;
begin
  Result := FtesisAnaGrupListesi_Specified;
end;

procedure etkinMaddeSutDVO.SetraporDuzenlemeTuru(Index: Integer; const Astring: string);
begin
  FraporDuzenlemeTuru := Astring;
  FraporDuzenlemeTuru_Specified := True;
end;

function etkinMaddeSutDVO.raporDuzenlemeTuru_Specified(Index: Integer): boolean;
begin
  Result := FraporDuzenlemeTuru_Specified;
end;

procedure etkinMaddeSutDVO.Setcinsiyeti(Index: Integer; const Astring: string);
begin
  Fcinsiyeti := Astring;
  Fcinsiyeti_Specified := True;
end;

function etkinMaddeSutDVO.cinsiyeti_Specified(Index: Integer): boolean;
begin
  Result := Fcinsiyeti_Specified;
end;

procedure etkinMaddeSutDVO.SetmaksimumRaporTarihi(Index: Integer; const Astring: string);
begin
  FmaksimumRaporTarihi := Astring;
  FmaksimumRaporTarihi_Specified := True;
end;

function etkinMaddeSutDVO.maksimumRaporTarihi_Specified(Index: Integer): boolean;
begin
  Result := FmaksimumRaporTarihi_Specified;
end;

procedure etkinMaddeSutDVO.SetminimumYasi(Index: Integer; const Astring: string);
begin
  FminimumYasi := Astring;
  FminimumYasi_Specified := True;
end;

function etkinMaddeSutDVO.minimumYasi_Specified(Index: Integer): boolean;
begin
  Result := FminimumYasi_Specified;
end;

procedure etkinMaddeSutDVO.SetmaksimumYasi(Index: Integer; const Astring: string);
begin
  FmaksimumYasi := Astring;
  FmaksimumYasi_Specified := True;
end;

function etkinMaddeSutDVO.maksimumYasi_Specified(Index: Integer): boolean;
begin
  Result := FmaksimumYasi_Specified;
end;

procedure etkinMaddeSutDVO.SetmaksimumRaporSuresi(Index: Integer; const Astring: string);
begin
  FmaksimumRaporSuresi := Astring;
  FmaksimumRaporSuresi_Specified := True;
end;

function etkinMaddeSutDVO.maksimumRaporSuresi_Specified(Index: Integer): boolean;
begin
  Result := FmaksimumRaporSuresi_Specified;
end;

procedure etkinMaddeSutDVO.SetmaksimumRaporSuresiBirimi(Index: Integer; const Astring: string);
begin
  FmaksimumRaporSuresiBirimi := Astring;
  FmaksimumRaporSuresiBirimi_Specified := True;
end;

function etkinMaddeSutDVO.maksimumRaporSuresiBirimi_Specified(Index: Integer): boolean;
begin
  Result := FmaksimumRaporSuresiBirimi_Specified;
end;

destructor ilacListesiSorguCevapDVO.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FilacListesi)-1 do
    SysUtils.FreeAndNil(FilacListesi[I]);
  System.SetLength(FilacListesi, 0);
  inherited Destroy;
end;

procedure ilacListesiSorguCevapDVO.SetilacListesi(Index: Integer; const AArray_Of_ilacDVO: Array_Of_ilacDVO);
begin
  FilacListesi := AArray_Of_ilacDVO;
  FilacListesi_Specified := True;
end;

function ilacListesiSorguCevapDVO.ilacListesi_Specified(Index: Integer): boolean;
begin
  Result := FilacListesi_Specified;
end;

procedure ilacListesiSorguCevapDVO.SetsonucKodu(Index: Integer; const Astring: string);
begin
  FsonucKodu := Astring;
  FsonucKodu_Specified := True;
end;

function ilacListesiSorguCevapDVO.sonucKodu_Specified(Index: Integer): boolean;
begin
  Result := FsonucKodu_Specified;
end;

procedure ilacListesiSorguCevapDVO.SetsonucMesaji(Index: Integer; const Astring: string);
begin
  FsonucMesaji := Astring;
  FsonucMesaji_Specified := True;
end;

function ilacListesiSorguCevapDVO.sonucMesaji_Specified(Index: Integer): boolean;
begin
  Result := FsonucMesaji_Specified;
end;

procedure ilacListesiSorguCevapDVO.SetuyariMesaji(Index: Integer; const Astring: string);
begin
  FuyariMesaji := Astring;
  FuyariMesaji_Specified := True;
end;

function ilacListesiSorguCevapDVO.uyariMesaji_Specified(Index: Integer): boolean;
begin
  Result := FuyariMesaji_Specified;
end;

destructor raporTeshisListesiSorguCevapDVO.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FraporTeshisListesi)-1 do
    SysUtils.FreeAndNil(FraporTeshisListesi[I]);
  System.SetLength(FraporTeshisListesi, 0);
  inherited Destroy;
end;

procedure raporTeshisListesiSorguCevapDVO.SetraporTeshisListesi(Index: Integer; const AArray_Of_raporTeshisDVO: Array_Of_raporTeshisDVO);
begin
  FraporTeshisListesi := AArray_Of_raporTeshisDVO;
  FraporTeshisListesi_Specified := True;
end;

function raporTeshisListesiSorguCevapDVO.raporTeshisListesi_Specified(Index: Integer): boolean;
begin
  Result := FraporTeshisListesi_Specified;
end;

procedure raporTeshisListesiSorguCevapDVO.SetsonucKodu(Index: Integer; const Astring: string);
begin
  FsonucKodu := Astring;
  FsonucKodu_Specified := True;
end;

function raporTeshisListesiSorguCevapDVO.sonucKodu_Specified(Index: Integer): boolean;
begin
  Result := FsonucKodu_Specified;
end;

procedure raporTeshisListesiSorguCevapDVO.SetsonucMesaji(Index: Integer; const Astring: string);
begin
  FsonucMesaji := Astring;
  FsonucMesaji_Specified := True;
end;

function raporTeshisListesiSorguCevapDVO.sonucMesaji_Specified(Index: Integer): boolean;
begin
  Result := FsonucMesaji_Specified;
end;

procedure raporTeshisListesiSorguCevapDVO.SetuyariMesaji(Index: Integer; const Astring: string);
begin
  FuyariMesaji := Astring;
  FuyariMesaji_Specified := True;
end;

function raporTeshisListesiSorguCevapDVO.uyariMesaji_Specified(Index: Integer): boolean;
begin
  Result := FuyariMesaji_Specified;
end;

initialization
  { SaglikTesisiYardimciIslemleri }
  InvRegistry.RegisterInterface(TypeInfo(SaglikTesisiYardimciIslemleri), 'http://servisler.ws.eczane.gss.sgk.gov.tr', 'UTF-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(SaglikTesisiYardimciIslemleri), '%operationName%');
  InvRegistry.RegisterInvokeOptions(TypeInfo(SaglikTesisiYardimciIslemleri), ioDocument);
  { SaglikTesisiYardimciIslemleri.aktifIlacListesiSorgula }
  InvRegistry.RegisterMethodInfo(TypeInfo(SaglikTesisiYardimciIslemleri), 'aktifIlacListesiSorgula', '',
                                 '[ReturnName="aktifIlacListesiSorgulaReturn"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(SaglikTesisiYardimciIslemleri), 'aktifIlacListesiSorgula', 'arg0', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(SaglikTesisiYardimciIslemleri), 'aktifIlacListesiSorgula', 'aktifIlacListesiSorgulaReturn', '',
                                '', IS_UNQL);
  { SaglikTesisiYardimciIslemleri.aktifYurtdisiIlacListesiSorgula }
  InvRegistry.RegisterMethodInfo(TypeInfo(SaglikTesisiYardimciIslemleri), 'aktifYurtdisiIlacListesiSorgula', '',
                                 '[ReturnName="aktifYurtdisiIlacListesiSorgulaReturn"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(SaglikTesisiYardimciIslemleri), 'aktifYurtdisiIlacListesiSorgula', 'arg0', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(SaglikTesisiYardimciIslemleri), 'aktifYurtdisiIlacListesiSorgula', 'aktifYurtdisiIlacListesiSorgulaReturn', '',
                                '', IS_UNQL);
  { SaglikTesisiYardimciIslemleri.etkinMaddeListesiSorgula }
  InvRegistry.RegisterMethodInfo(TypeInfo(SaglikTesisiYardimciIslemleri), 'etkinMaddeListesiSorgula', '',
                                 '[ReturnName="etkinMaddeListesiSorgulaReturn"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(SaglikTesisiYardimciIslemleri), 'etkinMaddeListesiSorgula', 'arg0', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(SaglikTesisiYardimciIslemleri), 'etkinMaddeListesiSorgula', 'etkinMaddeListesiSorgulaReturn', '',
                                '', IS_UNQL);
  { SaglikTesisiYardimciIslemleri.etkinMaddeSutListesiSorgula }
  InvRegistry.RegisterMethodInfo(TypeInfo(SaglikTesisiYardimciIslemleri), 'etkinMaddeSutListesiSorgula', '',
                                 '[ReturnName="etkinMaddeSutListesiSorgulaReturn"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(SaglikTesisiYardimciIslemleri), 'etkinMaddeSutListesiSorgula', 'arg0', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(SaglikTesisiYardimciIslemleri), 'etkinMaddeSutListesiSorgula', 'etkinMaddeSutListesiSorgulaReturn', '',
                                '', IS_UNQL);
  { SaglikTesisiYardimciIslemleri.kirmiziReceteIlacListesiSorgula }
  InvRegistry.RegisterMethodInfo(TypeInfo(SaglikTesisiYardimciIslemleri), 'kirmiziReceteIlacListesiSorgula', '',
                                 '[ReturnName="kirmiziReceteIlacListesiSorgulaReturn"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(SaglikTesisiYardimciIslemleri), 'kirmiziReceteIlacListesiSorgula', 'arg0', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(SaglikTesisiYardimciIslemleri), 'kirmiziReceteIlacListesiSorgula', 'kirmiziReceteIlacListesiSorgulaReturn', '',
                                '', IS_UNQL);
  { SaglikTesisiYardimciIslemleri.kirmiziReceteYurtdisiIlacListesiSorgula }
  InvRegistry.RegisterMethodInfo(TypeInfo(SaglikTesisiYardimciIslemleri), 'kirmiziReceteYurtdisiIlacListesiSorgula', '',
                                 '[ReturnName="kirmiziReceteYurtdisiIlacListesiSorgulaReturn"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(SaglikTesisiYardimciIslemleri), 'kirmiziReceteYurtdisiIlacListesiSorgula', 'arg0', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(SaglikTesisiYardimciIslemleri), 'kirmiziReceteYurtdisiIlacListesiSorgula', 'kirmiziReceteYurtdisiIlacListesiSorgulaReturn', '',
                                '', IS_UNQL);
  { SaglikTesisiYardimciIslemleri.morReceteIlacListesiSorgula }
  InvRegistry.RegisterMethodInfo(TypeInfo(SaglikTesisiYardimciIslemleri), 'morReceteIlacListesiSorgula', '',
                                 '[ReturnName="morReceteIlacListesiSorgulaReturn"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(SaglikTesisiYardimciIslemleri), 'morReceteIlacListesiSorgula', 'arg0', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(SaglikTesisiYardimciIslemleri), 'morReceteIlacListesiSorgula', 'morReceteIlacListesiSorgulaReturn', '',
                                '', IS_UNQL);
  { SaglikTesisiYardimciIslemleri.morReceteYurtdisiIlacListesiSorgula }
  InvRegistry.RegisterMethodInfo(TypeInfo(SaglikTesisiYardimciIslemleri), 'morReceteYurtdisiIlacListesiSorgula', '',
                                 '[ReturnName="morReceteYurtdisiIlacListesiSorgulaReturn"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(SaglikTesisiYardimciIslemleri), 'morReceteYurtdisiIlacListesiSorgula', 'arg0', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(SaglikTesisiYardimciIslemleri), 'morReceteYurtdisiIlacListesiSorgula', 'morReceteYurtdisiIlacListesiSorgulaReturn', '',
                                '', IS_UNQL);
  { SaglikTesisiYardimciIslemleri.normalReceteIlacListesiSorgula }
  InvRegistry.RegisterMethodInfo(TypeInfo(SaglikTesisiYardimciIslemleri), 'normalReceteIlacListesiSorgula', '',
                                 '[ReturnName="normalReceteIlacListesiSorgulaReturn"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(SaglikTesisiYardimciIslemleri), 'normalReceteIlacListesiSorgula', 'arg0', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(SaglikTesisiYardimciIslemleri), 'normalReceteIlacListesiSorgula', 'normalReceteIlacListesiSorgulaReturn', '',
                                '', IS_UNQL);
  { SaglikTesisiYardimciIslemleri.normalReceteYurtdisiIlacListesiSorgula }
  InvRegistry.RegisterMethodInfo(TypeInfo(SaglikTesisiYardimciIslemleri), 'normalReceteYurtdisiIlacListesiSorgula', '',
                                 '[ReturnName="normalReceteYurtdisiIlacListesiSorgulaReturn"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(SaglikTesisiYardimciIslemleri), 'normalReceteYurtdisiIlacListesiSorgula', 'arg0', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(SaglikTesisiYardimciIslemleri), 'normalReceteYurtdisiIlacListesiSorgula', 'normalReceteYurtdisiIlacListesiSorgulaReturn', '',
                                '', IS_UNQL);
  { SaglikTesisiYardimciIslemleri.pasifIlacListesiSorgula }
  InvRegistry.RegisterMethodInfo(TypeInfo(SaglikTesisiYardimciIslemleri), 'pasifIlacListesiSorgula', '',
                                 '[ReturnName="pasifIlacListesiSorgulaReturn"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(SaglikTesisiYardimciIslemleri), 'pasifIlacListesiSorgula', 'arg0', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(SaglikTesisiYardimciIslemleri), 'pasifIlacListesiSorgula', 'pasifIlacListesiSorgulaReturn', '',
                                '', IS_UNQL);
  { SaglikTesisiYardimciIslemleri.pasifYurtdisiIlacListesiSorgula }
  InvRegistry.RegisterMethodInfo(TypeInfo(SaglikTesisiYardimciIslemleri), 'pasifYurtdisiIlacListesiSorgula', '',
                                 '[ReturnName="pasifYurtdisiIlacListesiSorgulaReturn"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(SaglikTesisiYardimciIslemleri), 'pasifYurtdisiIlacListesiSorgula', 'arg0', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(SaglikTesisiYardimciIslemleri), 'pasifYurtdisiIlacListesiSorgula', 'pasifYurtdisiIlacListesiSorgulaReturn', '',
                                '', IS_UNQL);
  { SaglikTesisiYardimciIslemleri.raporTeshisListesiSorgula }
  InvRegistry.RegisterMethodInfo(TypeInfo(SaglikTesisiYardimciIslemleri), 'raporTeshisListesiSorgula', '',
                                 '[ReturnName="raporTeshisListesiSorgulaReturn"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(SaglikTesisiYardimciIslemleri), 'raporTeshisListesiSorgula', 'arg0', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(SaglikTesisiYardimciIslemleri), 'raporTeshisListesiSorgula', 'raporTeshisListesiSorgulaReturn', '',
                                '', IS_UNQL);
  { SaglikTesisiYardimciIslemleri.turuncuReceteIlacListesiSorgula }
  InvRegistry.RegisterMethodInfo(TypeInfo(SaglikTesisiYardimciIslemleri), 'turuncuReceteIlacListesiSorgula', '',
                                 '[ReturnName="turuncuReceteIlacListesiSorgulaReturn"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(SaglikTesisiYardimciIslemleri), 'turuncuReceteIlacListesiSorgula', 'arg0', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(SaglikTesisiYardimciIslemleri), 'turuncuReceteIlacListesiSorgula', 'turuncuReceteIlacListesiSorgulaReturn', '',
                                '', IS_UNQL);
  { SaglikTesisiYardimciIslemleri.turuncuReceteYurtdisiIlacListesiSorgula }
  InvRegistry.RegisterMethodInfo(TypeInfo(SaglikTesisiYardimciIslemleri), 'turuncuReceteYurtdisiIlacListesiSorgula', '',
                                 '[ReturnName="turuncuReceteYurtdisiIlacListesiSorgulaReturn"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(SaglikTesisiYardimciIslemleri), 'turuncuReceteYurtdisiIlacListesiSorgula', 'arg0', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(SaglikTesisiYardimciIslemleri), 'turuncuReceteYurtdisiIlacListesiSorgula', 'turuncuReceteYurtdisiIlacListesiSorgulaReturn', '',
                                '', IS_UNQL);
  { SaglikTesisiYardimciIslemleri.yesilReceteIlacListesiSorgula }
  InvRegistry.RegisterMethodInfo(TypeInfo(SaglikTesisiYardimciIslemleri), 'yesilReceteIlacListesiSorgula', '',
                                 '[ReturnName="yesilReceteIlacListesiSorgulaReturn"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(SaglikTesisiYardimciIslemleri), 'yesilReceteIlacListesiSorgula', 'arg0', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(SaglikTesisiYardimciIslemleri), 'yesilReceteIlacListesiSorgula', 'yesilReceteIlacListesiSorgulaReturn', '',
                                '', IS_UNQL);
  { SaglikTesisiYardimciIslemleri.yesilReceteYurtdisiIlacListesiSorgula }
  InvRegistry.RegisterMethodInfo(TypeInfo(SaglikTesisiYardimciIslemleri), 'yesilReceteYurtdisiIlacListesiSorgula', '',
                                 '[ReturnName="yesilReceteYurtdisiIlacListesiSorgulaReturn"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(SaglikTesisiYardimciIslemleri), 'yesilReceteYurtdisiIlacListesiSorgula', 'arg0', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(SaglikTesisiYardimciIslemleri), 'yesilReceteYurtdisiIlacListesiSorgula', 'yesilReceteYurtdisiIlacListesiSorgulaReturn', '',
                                '', IS_UNQL);
  { SaglikTesisiYardimciIslemleri.yurtdisiIlacEtkinMaddeListesiSorgula }
  InvRegistry.RegisterMethodInfo(TypeInfo(SaglikTesisiYardimciIslemleri), 'yurtdisiIlacEtkinMaddeListesiSorgula', '',
                                 '[ReturnName="yurtdisiIlacEtkinMaddeListesiSorgulaReturn"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(SaglikTesisiYardimciIslemleri), 'yurtdisiIlacEtkinMaddeListesiSorgula', 'arg0', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(SaglikTesisiYardimciIslemleri), 'yurtdisiIlacEtkinMaddeListesiSorgula', 'yurtdisiIlacEtkinMaddeListesiSorgulaReturn', '',
                                '', IS_UNQL);
  RemClassRegistry.RegisterXSClass(etkinMaddeSutListesiSorguIstekDVO, 'http://servisler.ws.eczane.gss.sgk.gov.tr', 'etkinMaddeSutListesiSorguIstekDVO');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_ilacDVO), 'http://servisler.ws.eczane.gss.sgk.gov.tr', 'Array_Of_ilacDVO');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_etkinMaddeDVO), 'http://servisler.ws.eczane.gss.sgk.gov.tr', 'Array_Of_etkinMaddeDVO');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_string), 'http://www.w3.org/2001/XMLSchema', 'Array_Of_string');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_etkinMaddeSutDVO), 'http://servisler.ws.eczane.gss.sgk.gov.tr', 'Array_Of_etkinMaddeSutDVO');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_raporTeshisDVO), 'http://servisler.ws.eczane.gss.sgk.gov.tr', 'Array_Of_raporTeshisDVO');
  RemClassRegistry.RegisterXSClass(etkinMaddeSutListesiSorguCevapDVO, 'http://servisler.ws.eczane.gss.sgk.gov.tr', 'etkinMaddeSutListesiSorguCevapDVO');
  RemClassRegistry.RegisterXSClass(raporTeshisListesiSorguIstekDVO, 'http://servisler.ws.eczane.gss.sgk.gov.tr', 'raporTeshisListesiSorguIstekDVO');
  RemClassRegistry.RegisterXSClass(etkinMaddeDVO, 'http://servisler.ws.eczane.gss.sgk.gov.tr', 'etkinMaddeDVO');
  RemClassRegistry.RegisterXSClass(etkinMaddeListesiSorguIstekDVO, 'http://servisler.ws.eczane.gss.sgk.gov.tr', 'etkinMaddeListesiSorguIstekDVO');
  RemClassRegistry.RegisterXSClass(etkinMaddeListesiSorguCevapDVO, 'http://servisler.ws.eczane.gss.sgk.gov.tr', 'etkinMaddeListesiSorguCevapDVO');
  RemClassRegistry.RegisterXSClass(ilacDVO, 'http://servisler.ws.eczane.gss.sgk.gov.tr', 'ilacDVO');
  RemClassRegistry.RegisterXSClass(raporTeshisDVO, 'http://servisler.ws.eczane.gss.sgk.gov.tr', 'raporTeshisDVO');
  RemClassRegistry.RegisterXSClass(etkinMaddeSutDVO, 'http://servisler.ws.eczane.gss.sgk.gov.tr', 'etkinMaddeSutDVO');
  RemClassRegistry.RegisterXSClass(ilacListesiSorguIstekDVO, 'http://servisler.ws.eczane.gss.sgk.gov.tr', 'ilacListesiSorguIstekDVO');
  RemClassRegistry.RegisterXSClass(ilacListesiSorguCevapDVO, 'http://servisler.ws.eczane.gss.sgk.gov.tr', 'ilacListesiSorguCevapDVO');
  RemClassRegistry.RegisterXSClass(raporTeshisListesiSorguCevapDVO, 'http://servisler.ws.eczane.gss.sgk.gov.tr', 'raporTeshisListesiSorguCevapDVO');

end.