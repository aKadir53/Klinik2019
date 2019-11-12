// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : http://212.253.85.61/LaboratuarSonuclariListele/TetkikSonuclari.asmx?wsdl
//  >Import : http://212.253.85.61/LaboratuarSonuclariListele/TetkikSonuclari.asmx?wsdl>0
// Encoding : utf-8
// Version  : 1.0
// (10.10.2019 14:19:03 - - $Rev: 45757 $)
// ************************************************************************ //

unit ErguvanServiceEKOL;

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
  // !:schema          - "http://www.w3.org/2001/XMLSchema"[GblElm]
  // !:string          - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:dateTime        - "http://www.w3.org/2001/XMLSchema"[Gbl]

  TetkikSonuclariGetirResult = class;           { "http://tempuri.org/"[Cplx] }



  // ************************************************************************ //
  // XML       : TetkikSonuclariGetirResult, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  TetkikSonuclariGetirResult = class(TRemotable)
  private
    Fschema: TXMLData;
  public
    destructor Destroy; override;
  published
    property schema: TXMLData  Index (IS_REF) read Fschema write Fschema;
  end;

  // ************************************************************************ //
  // Namespace : http://tempuri.org/
  // soapAction: http://tempuri.org/TetkikSonuclariGetir
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : document
  // use       : literal
  // binding   : Service1Soap12
  // service   : Service1
  // port      : Service1Soap12
  // URL       : http://212.253.85.61/LaboratuarSonuclariListele/TetkikSonuclari.asmx
  // ************************************************************************ //

  Service1Soap = interface(IInvokable)
  ['{25EA1FCE-3268-3CB3-32BB-6AA048AD8BB1}']

function  TetkikSonuclariGetir(const KullaniciAdi: string; const Sifre: string; const Tarih1: TXSDateTime; const
                              Tarih2: TXSDateTime; const TCKimlikNo: string): TetkikSonuclariGetirResult; stdcall;
       end;

function GetService1Soap(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): Service1Soap;

implementation
  uses SysUtils;

function GetService1Soap(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): Service1Soap;
const
  defWSDL = 'http://212.253.85.61/LaboratuarSonuclariListele/TetkikSonuclari.asmx?wsdl';
  defURL  = 'http://212.253.85.61/LaboratuarSonuclariListele/TetkikSonuclari.asmx';
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


destructor TetkikSonuclariGetirResult.Destroy;
begin
  SysUtils.FreeAndNil(Fschema);
  inherited Destroy;
end;

initialization
  { Service1Soap }
  InvRegistry.RegisterInterface(TypeInfo(Service1Soap), 'http://tempuri.org/', 'utf-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(Service1Soap), 'http://tempuri.org/TetkikSonuclariGetir');
  InvRegistry.RegisterInvokeOptions(TypeInfo(Service1Soap), ioDocument);
  InvRegistry.RegisterInvokeOptions(TypeInfo(Service1Soap), ioSOAP12);
  { Service1Soap.TetkikSonuclariGetir }
  InvRegistry.RegisterMethodInfo(TypeInfo(Service1Soap), 'TetkikSonuclariGetir', '',
                                 '[ReturnName="TetkikSonuclariGetirResult"]', IS_OPTN);
  RemClassRegistry.RegisterXSClass(TetkikSonuclariGetirResult, 'http://tempuri.org/', 'TetkikSonuclariGetirResult');

end.
