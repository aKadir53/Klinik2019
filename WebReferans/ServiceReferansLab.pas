// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : http://www.referanslab.com/WebService/ReLabSonucOku.asmx?wsdl
//  >Import : http://www.referanslab.com/WebService/ReLabSonucOku.asmx?wsdl>0
// Encoding : utf-8
// Version  : 1.0
// (10.10.2019 12:29:17 - - $Rev: 45757 $)
// ************************************************************************ //

unit ServiceReferansLab;

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

  ReLabSonucListesiResult = class;              { "http://tempuri.org/"[Cplx] }



  // ************************************************************************ //
  // XML       : ReLabSonucListesiResult, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  ReLabSonucListesiResult = class(TRemotable)
  private
    Fschema: TXMLData;
  public
    destructor Destroy; override;
  published
    property schema: TXMLData  Index (IS_REF) read Fschema write Fschema;
  end;


  // ************************************************************************ //
  // Namespace : http://tempuri.org/
  // soapAction: http://tempuri.org/ReLabSonucListesi
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : document
  // use       : literal
  // binding   : ReLabSonucOkuSoap12
  // service   : ReLabSonucOku
  // port      : ReLabSonucOkuSoap12
  // URL       : http://www.referanslab.com/WebService/ReLabSonucOku.asmx
  // ************************************************************************ //
  ReLabSonucOkuSoap = interface(IInvokable)
  ['{5AD03194-D71B-8096-0A35-B0E220A971A7}']
    function  ReLabSonucListesi(var gndref: string; var gndrefs: string; var tstref: string; var hstref: string; var glmref: string; var fromglstar: string; 
                                var toglstar: string; var HataMesaji: string): ReLabSonucListesiResult; stdcall;
  end;

function GetReLabSonucOkuSoap(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): ReLabSonucOkuSoap;


implementation
  uses SysUtils;

function GetReLabSonucOkuSoap(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): ReLabSonucOkuSoap;
const
  defWSDL = 'http://www.referanslab.com/WebService/ReLabSonucOku.asmx?wsdl';
  defURL  = 'http://www.referanslab.com/WebService/ReLabSonucOku.asmx';
  defSvc  = 'ReLabSonucOku';
  defPrt  = 'ReLabSonucOkuSoap12';
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
    Result := (RIO as ReLabSonucOkuSoap);
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


destructor ReLabSonucListesiResult.Destroy;
begin
  SysUtils.FreeAndNil(Fschema);
  inherited Destroy;
end;

initialization
  { ReLabSonucOkuSoap }
  InvRegistry.RegisterInterface(TypeInfo(ReLabSonucOkuSoap), 'http://tempuri.org/', 'utf-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(ReLabSonucOkuSoap), 'http://tempuri.org/ReLabSonucListesi');
  InvRegistry.RegisterInvokeOptions(TypeInfo(ReLabSonucOkuSoap), ioDocument);
  InvRegistry.RegisterInvokeOptions(TypeInfo(ReLabSonucOkuSoap), ioSOAP12);
  { ReLabSonucOkuSoap.ReLabSonucListesi }
  InvRegistry.RegisterMethodInfo(TypeInfo(ReLabSonucOkuSoap), 'ReLabSonucListesi', '',
                                 '[ReturnName="ReLabSonucListesiResult"]', IS_OPTN);
  RemClassRegistry.RegisterXSClass(ReLabSonucListesiResult, 'http://tempuri.org/', 'ReLabSonucListesiResult');

end.