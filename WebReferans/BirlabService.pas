// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : C:\Dializ2007_M3\BirlabService.wsdl
//  >Import : C:\Dializ2007_M3\BirlabService.wsdl>0
// Encoding : utf-8
// Version  : 1.0
// (08.02.2014 11:39:19 - - $Rev: 25127 $)
// ************************************************************************ //

unit BirlabService;

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

  SorguCevap           = class;                 { "http://tempuri.org/"[GblCplx] }
  Test                 = class;                 { "http://tempuri.org/"[GblCplx] }
  HastaListesiCevap    = class;                 { "http://tempuri.org/"[GblCplx] }
  Hastalar             = class;                 { "http://tempuri.org/"[GblCplx] }

  ArrayOfTest = array of Test;                  { "http://tempuri.org/"[GblCplx] }


  // ************************************************************************ //
  // XML       : SorguCevap, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  SorguCevap = class(TRemotable)
  private
    Ftestler: ArrayOfTest;
    Ftestler_Specified: boolean;
    FSonucKodu: string;
    FSonucKodu_Specified: boolean;
    FsonucMesaj: string;
    FsonucMesaj_Specified: boolean;
    procedure Settestler(Index: Integer; const AArrayOfTest: ArrayOfTest);
    function  testler_Specified(Index: Integer): boolean;
    procedure SetSonucKodu(Index: Integer; const Astring: string);
    function  SonucKodu_Specified(Index: Integer): boolean;
    procedure SetsonucMesaj(Index: Integer; const Astring: string);
    function  sonucMesaj_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property testler:    ArrayOfTest  Index (IS_OPTN) read Ftestler write Settestler stored testler_Specified;
    property SonucKodu:  string       Index (IS_OPTN) read FSonucKodu write SetSonucKodu stored SonucKodu_Specified;
    property sonucMesaj: string       Index (IS_OPTN) read FsonucMesaj write SetsonucMesaj stored sonucMesaj_Specified;
  end;



  // ************************************************************************ //
  // XML       : Test, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  Test = class(TRemotable)
  private
    FTestTumNoField: string;
    FTestTumNoField_Specified: boolean;
    FTckimlikNo: string;
    FTckimlikNo_Specified: boolean;
    FHastaAdi: string;
    FHastaAdi_Specified: boolean;
    FornekNo: string;
    FornekNo_Specified: boolean;
    FtestNo: string;
    FtestNo_Specified: boolean;
    Ftestadi: string;
    Ftestadi_Specified: boolean;
    Fsonuc: string;
    Fsonuc_Specified: boolean;
    Ftarih: string;
    Ftarih_Specified: boolean;
    FtestAltNo: string;
    FtestAltNo_Specified: boolean;
    procedure SetTestTumNoField(Index: Integer; const Astring: string);
    function  TestTumNoField_Specified(Index: Integer): boolean;
    procedure SetTckimlikNo(Index: Integer; const Astring: string);
    function  TckimlikNo_Specified(Index: Integer): boolean;
    procedure SetHastaAdi(Index: Integer; const Astring: string);
    function  HastaAdi_Specified(Index: Integer): boolean;
    procedure SetornekNo(Index: Integer; const Astring: string);
    function  ornekNo_Specified(Index: Integer): boolean;
    procedure SettestNo(Index: Integer; const Astring: string);
    function  testNo_Specified(Index: Integer): boolean;
    procedure Settestadi(Index: Integer; const Astring: string);
    function  testadi_Specified(Index: Integer): boolean;
    procedure Setsonuc(Index: Integer; const Astring: string);
    function  sonuc_Specified(Index: Integer): boolean;
    procedure Settarih(Index: Integer; const Astring: string);
    function  tarih_Specified(Index: Integer): boolean;
    procedure SettestAltNo(Index: Integer; const Astring: string);
    function  testAltNo_Specified(Index: Integer): boolean;
  published
    property TestTumNoField: string  Index (IS_OPTN) read FTestTumNoField write SetTestTumNoField stored TestTumNoField_Specified;
    property TckimlikNo:     string  Index (IS_OPTN) read FTckimlikNo write SetTckimlikNo stored TckimlikNo_Specified;
    property HastaAdi:       string  Index (IS_OPTN) read FHastaAdi write SetHastaAdi stored HastaAdi_Specified;
    property ornekNo:        string  Index (IS_OPTN) read FornekNo write SetornekNo stored ornekNo_Specified;
    property testNo:         string  Index (IS_OPTN) read FtestNo write SettestNo stored testNo_Specified;
    property testadi:        string  Index (IS_OPTN) read Ftestadi write Settestadi stored testadi_Specified;
    property sonuc:          string  Index (IS_OPTN) read Fsonuc write Setsonuc stored sonuc_Specified;
    property tarih:          string  Index (IS_OPTN) read Ftarih write Settarih stored tarih_Specified;
    property testAltNo:      string  Index (IS_OPTN) read FtestAltNo write SettestAltNo stored testAltNo_Specified;
  end;

  ArrayOfHastalar = array of Hastalar;          { "http://tempuri.org/"[GblCplx] }


  // ************************************************************************ //
  // XML       : HastaListesiCevap, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  HastaListesiCevap = class(TRemotable)
  private
    FHst: ArrayOfHastalar;
    FHst_Specified: boolean;
    FSonucKodu: string;
    FSonucKodu_Specified: boolean;
    FSonucMesaj: string;
    FSonucMesaj_Specified: boolean;
    procedure SetHst(Index: Integer; const AArrayOfHastalar: ArrayOfHastalar);
    function  Hst_Specified(Index: Integer): boolean;
    procedure SetSonucKodu(Index: Integer; const Astring: string);
    function  SonucKodu_Specified(Index: Integer): boolean;
    procedure SetSonucMesaj(Index: Integer; const Astring: string);
    function  SonucMesaj_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property Hst:        ArrayOfHastalar  Index (IS_OPTN) read FHst write SetHst stored Hst_Specified;
    property SonucKodu:  string           Index (IS_OPTN) read FSonucKodu write SetSonucKodu stored SonucKodu_Specified;
    property SonucMesaj: string           Index (IS_OPTN) read FSonucMesaj write SetSonucMesaj stored SonucMesaj_Specified;
  end;



  // ************************************************************************ //
  // XML       : Hastalar, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  Hastalar = class(TRemotable)
  private
    FTckimlikNo: string;
    FTckimlikNo_Specified: boolean;
    FHastaAdi: string;
    FHastaAdi_Specified: boolean;
    FornekNo: string;
    FornekNo_Specified: boolean;
    Fprotokol: string;
    Fprotokol_Specified: boolean;
    FprotokolGelis: string;
    FprotokolGelis_Specified: boolean;
    FprotokolGelisKart: string;
    FprotokolGelisKart_Specified: boolean;
    Ftarih: string;
    Ftarih_Specified: boolean;
    procedure SetTckimlikNo(Index: Integer; const Astring: string);
    function  TckimlikNo_Specified(Index: Integer): boolean;
    procedure SetHastaAdi(Index: Integer; const Astring: string);
    function  HastaAdi_Specified(Index: Integer): boolean;
    procedure SetornekNo(Index: Integer; const Astring: string);
    function  ornekNo_Specified(Index: Integer): boolean;
    procedure Setprotokol(Index: Integer; const Astring: string);
    function  protokol_Specified(Index: Integer): boolean;
    procedure SetprotokolGelis(Index: Integer; const Astring: string);
    function  protokolGelis_Specified(Index: Integer): boolean;
    procedure SetprotokolGelisKart(Index: Integer; const Astring: string);
    function  protokolGelisKart_Specified(Index: Integer): boolean;
    procedure Settarih(Index: Integer; const Astring: string);
    function  tarih_Specified(Index: Integer): boolean;
  published
    property TckimlikNo:        string  Index (IS_OPTN) read FTckimlikNo write SetTckimlikNo stored TckimlikNo_Specified;
    property HastaAdi:          string  Index (IS_OPTN) read FHastaAdi write SetHastaAdi stored HastaAdi_Specified;
    property ornekNo:           string  Index (IS_OPTN) read FornekNo write SetornekNo stored ornekNo_Specified;
    property protokol:          string  Index (IS_OPTN) read Fprotokol write Setprotokol stored protokol_Specified;
    property protokolGelis:     string  Index (IS_OPTN) read FprotokolGelis write SetprotokolGelis stored protokolGelis_Specified;
    property protokolGelisKart: string  Index (IS_OPTN) read FprotokolGelisKart write SetprotokolGelisKart stored protokolGelisKart_Specified;
    property tarih:             string  Index (IS_OPTN) read Ftarih write Settarih stored tarih_Specified;
  end;


  // ************************************************************************ //
  // Namespace : http://tempuri.org/
  // soapAction: http://tempuri.org/%operationName%
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : document
  // binding   : ServiceSoap12
  // service   : Service
  // port      : ServiceSoap12
  // URL       : http://176.40.41.229/service.asmx
  // ************************************************************************ //
  ServiceSoap = interface(IInvokable)
  ['{89A44D6C-629E-14C5-0478-33BE4DB9ED3E}']
    function  TcdenSonucSorgula(const kurumKodu: string; const kullaniciadi: string; const sifre: string; const tc: string; const ilktarih: string; const sontarih: string
                                ): SorguCevap; stdcall;
    function  islemNodanSonucSorgula(const kurumKodu: string; const kullaniciadi: string; const sifre: string; const islemNo: string): SorguCevap; stdcall;
    function  HastaListesi(const kurumKodu: string; const kullaniciadi: string; const sifre: string; const ilktarih: string; const sontarih: string): HastaListesiCevap; stdcall;
  end;

function GetServiceSoap(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): ServiceSoap;


implementation
  uses SysUtils;

function GetServiceSoap(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): ServiceSoap;
const
  defWSDL = 'C:\Dializ2007_M3\BirlabService.wsdl';
  defURL  = 'http://176.40.41.229/service.asmx';
  defSvc  = 'Service';
  defPrt  = 'ServiceSoap12';
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
    Result := (RIO as ServiceSoap);
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


destructor SorguCevap.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Ftestler)-1 do
    SysUtils.FreeAndNil(Ftestler[I]);
  System.SetLength(Ftestler, 0);
  inherited Destroy;
end;

procedure SorguCevap.Settestler(Index: Integer; const AArrayOfTest: ArrayOfTest);
begin
  Ftestler := AArrayOfTest;
  Ftestler_Specified := True;
end;

function SorguCevap.testler_Specified(Index: Integer): boolean;
begin
  Result := Ftestler_Specified;
end;

procedure SorguCevap.SetSonucKodu(Index: Integer; const Astring: string);
begin
  FSonucKodu := Astring;
  FSonucKodu_Specified := True;
end;

function SorguCevap.SonucKodu_Specified(Index: Integer): boolean;
begin
  Result := FSonucKodu_Specified;
end;

procedure SorguCevap.SetsonucMesaj(Index: Integer; const Astring: string);
begin
  FsonucMesaj := Astring;
  FsonucMesaj_Specified := True;
end;

function SorguCevap.sonucMesaj_Specified(Index: Integer): boolean;
begin
  Result := FsonucMesaj_Specified;
end;

procedure Test.SetTestTumNoField(Index: Integer; const Astring: string);
begin
  FTestTumNoField := Astring;
  FTestTumNoField_Specified := True;
end;

function Test.TestTumNoField_Specified(Index: Integer): boolean;
begin
  Result := FTestTumNoField_Specified;
end;

procedure Test.SetTckimlikNo(Index: Integer; const Astring: string);
begin
  FTckimlikNo := Astring;
  FTckimlikNo_Specified := True;
end;

function Test.TckimlikNo_Specified(Index: Integer): boolean;
begin
  Result := FTckimlikNo_Specified;
end;

procedure Test.SetHastaAdi(Index: Integer; const Astring: string);
begin
  FHastaAdi := Astring;
  FHastaAdi_Specified := True;
end;

function Test.HastaAdi_Specified(Index: Integer): boolean;
begin
  Result := FHastaAdi_Specified;
end;

procedure Test.SetornekNo(Index: Integer; const Astring: string);
begin
  FornekNo := Astring;
  FornekNo_Specified := True;
end;

function Test.ornekNo_Specified(Index: Integer): boolean;
begin
  Result := FornekNo_Specified;
end;

procedure Test.SettestNo(Index: Integer; const Astring: string);
begin
  FtestNo := Astring;
  FtestNo_Specified := True;
end;

function Test.testNo_Specified(Index: Integer): boolean;
begin
  Result := FtestNo_Specified;
end;

procedure Test.Settestadi(Index: Integer; const Astring: string);
begin
  Ftestadi := Astring;
  Ftestadi_Specified := True;
end;

function Test.testadi_Specified(Index: Integer): boolean;
begin
  Result := Ftestadi_Specified;
end;

procedure Test.Setsonuc(Index: Integer; const Astring: string);
begin
  Fsonuc := Astring;
  Fsonuc_Specified := True;
end;

function Test.sonuc_Specified(Index: Integer): boolean;
begin
  Result := Fsonuc_Specified;
end;

procedure Test.Settarih(Index: Integer; const Astring: string);
begin
  Ftarih := Astring;
  Ftarih_Specified := True;
end;

function Test.tarih_Specified(Index: Integer): boolean;
begin
  Result := Ftarih_Specified;
end;

procedure Test.SettestAltNo(Index: Integer; const Astring: string);
begin
  FtestAltNo := Astring;
  FtestAltNo_Specified := True;
end;

function Test.testAltNo_Specified(Index: Integer): boolean;
begin
  Result := FtestAltNo_Specified;
end;

destructor HastaListesiCevap.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FHst)-1 do
    SysUtils.FreeAndNil(FHst[I]);
  System.SetLength(FHst, 0);
  inherited Destroy;
end;

procedure HastaListesiCevap.SetHst(Index: Integer; const AArrayOfHastalar: ArrayOfHastalar);
begin
  FHst := AArrayOfHastalar;
  FHst_Specified := True;
end;

function HastaListesiCevap.Hst_Specified(Index: Integer): boolean;
begin
  Result := FHst_Specified;
end;

procedure HastaListesiCevap.SetSonucKodu(Index: Integer; const Astring: string);
begin
  FSonucKodu := Astring;
  FSonucKodu_Specified := True;
end;

function HastaListesiCevap.SonucKodu_Specified(Index: Integer): boolean;
begin
  Result := FSonucKodu_Specified;
end;

procedure HastaListesiCevap.SetSonucMesaj(Index: Integer; const Astring: string);
begin
  FSonucMesaj := Astring;
  FSonucMesaj_Specified := True;
end;

function HastaListesiCevap.SonucMesaj_Specified(Index: Integer): boolean;
begin
  Result := FSonucMesaj_Specified;
end;

procedure Hastalar.SetTckimlikNo(Index: Integer; const Astring: string);
begin
  FTckimlikNo := Astring;
  FTckimlikNo_Specified := True;
end;

function Hastalar.TckimlikNo_Specified(Index: Integer): boolean;
begin
  Result := FTckimlikNo_Specified;
end;

procedure Hastalar.SetHastaAdi(Index: Integer; const Astring: string);
begin
  FHastaAdi := Astring;
  FHastaAdi_Specified := True;
end;

function Hastalar.HastaAdi_Specified(Index: Integer): boolean;
begin
  Result := FHastaAdi_Specified;
end;

procedure Hastalar.SetornekNo(Index: Integer; const Astring: string);
begin
  FornekNo := Astring;
  FornekNo_Specified := True;
end;

function Hastalar.ornekNo_Specified(Index: Integer): boolean;
begin
  Result := FornekNo_Specified;
end;

procedure Hastalar.Setprotokol(Index: Integer; const Astring: string);
begin
  Fprotokol := Astring;
  Fprotokol_Specified := True;
end;

function Hastalar.protokol_Specified(Index: Integer): boolean;
begin
  Result := Fprotokol_Specified;
end;

procedure Hastalar.SetprotokolGelis(Index: Integer; const Astring: string);
begin
  FprotokolGelis := Astring;
  FprotokolGelis_Specified := True;
end;

function Hastalar.protokolGelis_Specified(Index: Integer): boolean;
begin
  Result := FprotokolGelis_Specified;
end;

procedure Hastalar.SetprotokolGelisKart(Index: Integer; const Astring: string);
begin
  FprotokolGelisKart := Astring;
  FprotokolGelisKart_Specified := True;
end;

function Hastalar.protokolGelisKart_Specified(Index: Integer): boolean;
begin
  Result := FprotokolGelisKart_Specified;
end;

procedure Hastalar.Settarih(Index: Integer; const Astring: string);
begin
  Ftarih := Astring;
  Ftarih_Specified := True;
end;

function Hastalar.tarih_Specified(Index: Integer): boolean;
begin
  Result := Ftarih_Specified;
end;

initialization
  InvRegistry.RegisterInterface(TypeInfo(ServiceSoap), 'http://tempuri.org/', 'utf-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(ServiceSoap), 'http://tempuri.org/%operationName%');
  InvRegistry.RegisterInvokeOptions(TypeInfo(ServiceSoap), ioDocument);
  InvRegistry.RegisterInvokeOptions(TypeInfo(ServiceSoap), ioSOAP12);
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfTest), 'http://tempuri.org/', 'ArrayOfTest');
  RemClassRegistry.RegisterXSClass(SorguCevap, 'http://tempuri.org/', 'SorguCevap');
  RemClassRegistry.RegisterXSClass(Test, 'http://tempuri.org/', 'Test');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfHastalar), 'http://tempuri.org/', 'ArrayOfHastalar');
  RemClassRegistry.RegisterXSClass(HastaListesiCevap, 'http://tempuri.org/', 'HastaListesiCevap');
  RemClassRegistry.RegisterXSClass(Hastalar, 'http://tempuri.org/', 'Hastalar');

end.