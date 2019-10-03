// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : http://213.159.30.6/Service1.asmx?wsdl
//  >Import : http://213.159.30.6/Service1.asmx?wsdl>0
// Encoding : utf-8
// Version  : 1.0
// (03.10.2019 10:54:29 - - $Rev: 45757 $)
// ************************************************************************ //

unit NoktaService;

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

  LabTest              = class;                 { "http://tempuri.org/"[GblCplx] }

  ArrayOfLabTest = array of LabTest;            { "http://tempuri.org/"[GblCplx] }


  // ************************************************************************ //
  // XML       : LabTest, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  LabTest = class(TRemotable)
  private
    FLabID: Integer;
  published
    property LabID: Integer  read FLabID write FLabID;
  end;


  // ************************************************************************ //
  // Namespace : http://tempuri.org/
  // soapAction: http://tempuri.org/LabtestlerOku
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : document
  // use       : literal
  // binding   : Service1Soap12
  // service   : Service1
  // port      : Service1Soap12
  // URL       : http://213.159.30.6/Service1.asmx
  // ************************************************************************ //
  Service1Soap = interface(IInvokable)
  ['{25EA1FCE-3268-3CB3-32BB-6AA048AD8BB1}']
    function  LabtestlerOku(const LabID: string): ArrayOfLabTest; stdcall;
  end;

function GetService1Soap(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): Service1Soap;


implementation
  uses SysUtils;

function GetService1Soap(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): Service1Soap;
const
  defWSDL = 'http://213.159.30.6/Service1.asmx?wsdl';
  defURL  = 'http://213.159.30.6/Service1.asmx';
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
  InvRegistry.RegisterInterface(TypeInfo(Service1Soap), 'http://tempuri.org/', 'utf-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(Service1Soap), 'http://tempuri.org/LabtestlerOku');
  InvRegistry.RegisterInvokeOptions(TypeInfo(Service1Soap), ioDocument);
  InvRegistry.RegisterInvokeOptions(TypeInfo(Service1Soap), ioSOAP12);
  { Service1Soap.LabtestlerOku }
  InvRegistry.RegisterMethodInfo(TypeInfo(Service1Soap), 'LabtestlerOku', '',
                                 '[ReturnName="LabtestlerOkuResult"]', IS_OPTN);
  InvRegistry.RegisterParamInfo(TypeInfo(Service1Soap), 'LabtestlerOku', 'LabtestlerOkuResult', '',
                                '[ArrayItemName="LabTest"]');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfLabTest), 'http://tempuri.org/', 'ArrayOfLabTest');
  RemClassRegistry.RegisterXSClass(LabTest, 'http://tempuri.org/', 'LabTest');

end.