// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : http://85.105.200.79/IntertipServis/TestIstek.asmx?wsdl
//  >Import : http://85.105.200.79/IntertipServis/TestIstek.asmx?wsdl>0
// Encoding : utf-8
// Version  : 1.0
// (25.04.2020 12:49:49 - - $Rev: 45757 $)
// ************************************************************************ //

unit InterKomService;

interface

uses InvokeRegistry, SOAPHTTPClient, Types, XSBuiltIns;

const
  IS_OPTN = $0001;
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



  // ************************************************************************ //
  // Namespace : http://88.248.110.96/
  // soapAction: http://88.248.110.96/%operationName%
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : document
  // use       : literal
  // binding   : Service1Soap12
  // service   : Service1
  // port      : Service1Soap12
  // URL       : http://85.105.200.79/IntertipServis/TestIstek.asmx
  // ************************************************************************ //
  Service1Soap = interface(IInvokable)
  ['{22B2F87E-D23A-FC20-DABE-3163FEAD067F}']
    function  TestListesi(const FirmaKodu: string; const Sifre: string): string; stdcall;
    function  GrupListesi(const FirmaKodu: string; const Sifre: string): string; stdcall;
    function  TetkikIstek(const FirmaKodu: string; const Sifre: string; const Istek: string): string; stdcall;
    function  TetkikSil(const FirmaKodu: string; const Sifre: string; const BarkodNo: string; const Testler: string): string; stdcall;
    function  TetkikSorgula(const FirmaKodu: string; const Sifre: string; const BarkodNo: string): string; stdcall;
    function  HastaListesi(const FirmaKodu: string; const Sifre: string; const Tarih: string): string; stdcall;
    function  UzmanListesi(const FirmaKodu: string; const Sifre: string): string; stdcall;
    function  GelisTarihiDuzenle(const FirmaKodu: string; const Sifre: string; const TcKimlik: string; const Barkod: string; const Tarih: string): string; stdcall;
  end;

function GetService1Soap(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): Service1Soap;


implementation
  uses SysUtils;

function GetService1Soap(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): Service1Soap;
const
  defWSDL = 'http://85.105.200.79/IntertipServis/TestIstek.asmx?wsdl';
  defURL  = 'http://85.105.200.79/IntertipServis/TestIstek.asmx';
  defSvc  = 'Service1';
  defPrt  = 'Service1Soap12';
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
    Result := (RIO as Service1Soap);
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


initialization
  { Service1Soap }
  InvRegistry.RegisterInterface(TypeInfo(Service1Soap), 'http://88.248.110.96/', 'utf-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(Service1Soap), 'http://88.248.110.96/%operationName%');
  InvRegistry.RegisterInvokeOptions(TypeInfo(Service1Soap), ioDocument);
  InvRegistry.RegisterInvokeOptions(TypeInfo(Service1Soap), ioSOAP12);
  { Service1Soap.TestListesi }
  InvRegistry.RegisterMethodInfo(TypeInfo(Service1Soap), 'TestListesi', '',
                                 '[ReturnName="TestListesiResult"]', IS_OPTN);
  { Service1Soap.GrupListesi }
  InvRegistry.RegisterMethodInfo(TypeInfo(Service1Soap), 'GrupListesi', '',
                                 '[ReturnName="GrupListesiResult"]', IS_OPTN);
  { Service1Soap.TetkikIstek }
  InvRegistry.RegisterMethodInfo(TypeInfo(Service1Soap), 'TetkikIstek', '',
                                 '[ReturnName="TetkikIstekResult"]', IS_OPTN);
  { Service1Soap.TetkikSil }
  InvRegistry.RegisterMethodInfo(TypeInfo(Service1Soap), 'TetkikSil', '',
                                 '[ReturnName="TetkikSilResult"]', IS_OPTN);
  { Service1Soap.TetkikSorgula }
  InvRegistry.RegisterMethodInfo(TypeInfo(Service1Soap), 'TetkikSorgula', '',
                                 '[ReturnName="TetkikSorgulaResult"]', IS_OPTN);
  { Service1Soap.HastaListesi }
  InvRegistry.RegisterMethodInfo(TypeInfo(Service1Soap), 'HastaListesi', '',
                                 '[ReturnName="HastaListesiResult"]', IS_OPTN);
  { Service1Soap.UzmanListesi }
  InvRegistry.RegisterMethodInfo(TypeInfo(Service1Soap), 'UzmanListesi', '',
                                 '[ReturnName="UzmanListesiResult"]', IS_OPTN);
  { Service1Soap.GelisTarihiDuzenle }
  InvRegistry.RegisterMethodInfo(TypeInfo(Service1Soap), 'GelisTarihiDuzenle', '',
                                 '[ReturnName="GelisTarihiDuzenleResult"]', IS_OPTN);

end.