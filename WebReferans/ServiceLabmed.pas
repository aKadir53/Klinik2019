// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : D:\MyDOCS\WSDL dosyalarý\labmed.wsdl
//  >Import : D:\MyDOCS\WSDL dosyalarý\labmed.wsdl>0
// Encoding : utf-8
// Version  : 1.0
// (10.10.2019 14:48:48 - - $Rev: 45757 $)
// ************************************************************************ //

unit ServiceLabmed;

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
  // !:boolean         - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:string          - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:int             - "http://www.w3.org/2001/XMLSchema"[Gbl]

  OperationResultBilgi2 = class;                { "http://tempuri.org/"[GblCplx] }
  OperationResultBilgi = class;                 { "http://tempuri.org/"[GblElm] }
  OperationResult2     = class;                 { "http://tempuri.org/"[GblCplx] }
  OperationResult      = class;                 { "http://tempuri.org/"[GblElm] }



  // ************************************************************************ //
  // XML       : OperationResultBilgi, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  OperationResultBilgi2 = class(TRemotable)
  private
    FOperationSucceed: Boolean;
    FOperationResultCode: Integer;
    FOperationMessage: string;
    FOperationMessage_Specified: boolean;
    procedure SetOperationMessage(Index: Integer; const Astring: string);
    function  OperationMessage_Specified(Index: Integer): boolean;
  published
    property OperationSucceed:    Boolean  read FOperationSucceed write FOperationSucceed;
    property OperationResultCode: Integer  read FOperationResultCode write FOperationResultCode;
    property OperationMessage:    string   Index (IS_OPTN) read FOperationMessage write SetOperationMessage stored OperationMessage_Specified;
  end;



  // ************************************************************************ //
  // XML       : OperationResultBilgi, global, <element>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  OperationResultBilgi = class(OperationResultBilgi2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : OperationResult, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  OperationResult2 = class(TRemotable)
  private
    FOperationSucceed: Boolean;
    FOperationResultCode: Integer;
    FOperationMessage: string;
    FOperationMessage_Specified: boolean;
    FXmlResult: string;
    FXmlResult_Specified: boolean;
    procedure SetOperationMessage(Index: Integer; const Astring: string);
    function  OperationMessage_Specified(Index: Integer): boolean;
    procedure SetXmlResult(Index: Integer; const Astring: string);
    function  XmlResult_Specified(Index: Integer): boolean;
  published
    property OperationSucceed:    Boolean  read FOperationSucceed write FOperationSucceed;
    property OperationResultCode: Integer  read FOperationResultCode write FOperationResultCode;
    property OperationMessage:    string   Index (IS_OPTN) read FOperationMessage write SetOperationMessage stored OperationMessage_Specified;
    property XmlResult:           string   Index (IS_OPTN) read FXmlResult write SetXmlResult stored XmlResult_Specified;
  end;



  // ************************************************************************ //
  // XML       : OperationResult, global, <element>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  OperationResult = class(OperationResult2)
  private
  published
  end;


  // ************************************************************************ //
  // Namespace : http://tempuri.org/
  // soapAction: http://tempuri.org/%operationName%
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : document
  // use       : literal
  // binding   : labmedSoap12
  // service   : labmed
  // port      : labmedSoap12
  // URL       : https://213.194.106.80/Labmed/labmed.asmx
  // ************************************************************************ //
  labmedSoap = interface(IInvokable)
  ['{F1866D57-A891-502E-1690-3B08CDB5A270}']
    function  OrnekSonucKaydet(const userName: string; const password: string; const kurumkodu: string; const ornekno: string): OperationResult2; stdcall;
    function  OrnekBilgisiAl(const userName: string; const password: string; const kurumkodu: string; const ornekno: string; const xml: string): OperationResultBilgi2; stdcall;
  end;


  // ************************************************************************ //
  // Namespace : http://tempuri.org/
  // style     : ????
  // use       : ????
  // binding   : labmedHttpGet
  // service   : labmed
  // port      : labmedHttpGet
  // ************************************************************************ //
  labmedHttpGet = interface(IInvokable)
  ['{107D55F8-5A44-801C-4D2E-3F65CF9BB7EE}']
    function  OrnekSonucKaydet(const userName: string; const password: string; const kurumkodu: string; const ornekno: string): OperationResult; stdcall;
    function  OrnekBilgisiAl(const userName: string; const password: string; const kurumkodu: string; const ornekno: string; const xml: string): OperationResultBilgi; stdcall;
  end;


  // ************************************************************************ //
  // Namespace : http://tempuri.org/
  // style     : ????
  // use       : ????
  // binding   : labmedHttpPost
  // service   : labmed
  // port      : labmedHttpPost
  // ************************************************************************ //
  labmedHttpPost = interface(IInvokable)
  ['{44F499E5-2CC9-35F5-9E55-05D0A3820492}']
    function  OrnekSonucKaydet(const userName: string; const password: string; const kurumkodu: string; const ornekno: string): OperationResult; stdcall;
    function  OrnekBilgisiAl(const userName: string; const password: string; const kurumkodu: string; const ornekno: string; const xml: string): OperationResultBilgi; stdcall;
  end;

function GetlabmedSoap(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): labmedSoap;
function GetlabmedHttpGet(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): labmedHttpGet;
function GetlabmedHttpPost(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): labmedHttpPost;


implementation
  uses SysUtils;

function GetlabmedSoap(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): labmedSoap;
const
  defWSDL = 'D:\MyDOCS\WSDL dosyalarý\labmed.wsdl';
  defURL  = 'https://213.194.106.80/Labmed/labmed.asmx';
  defSvc  = 'labmed';
  defPrt  = 'labmedSoap12';
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
    Result := (RIO as labmedSoap);
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


function GetlabmedHttpGet(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): labmedHttpGet;
const
  defWSDL = 'D:\MyDOCS\WSDL dosyalarý\labmed.wsdl';
  defURL  = '';
  defSvc  = 'labmed';
  defPrt  = 'labmedHttpGet';
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
    Result := (RIO as labmedHttpGet);
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


function GetlabmedHttpPost(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): labmedHttpPost;
const
  defWSDL = 'D:\MyDOCS\WSDL dosyalarý\labmed.wsdl';
  defURL  = '';
  defSvc  = 'labmed';
  defPrt  = 'labmedHttpPost';
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
    Result := (RIO as labmedHttpPost);
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


procedure OperationResultBilgi2.SetOperationMessage(Index: Integer; const Astring: string);
begin
  FOperationMessage := Astring;
  FOperationMessage_Specified := True;
end;

function OperationResultBilgi2.OperationMessage_Specified(Index: Integer): boolean;
begin
  Result := FOperationMessage_Specified;
end;

procedure OperationResult2.SetOperationMessage(Index: Integer; const Astring: string);
begin
  FOperationMessage := Astring;
  FOperationMessage_Specified := True;
end;

function OperationResult2.OperationMessage_Specified(Index: Integer): boolean;
begin
  Result := FOperationMessage_Specified;
end;

procedure OperationResult2.SetXmlResult(Index: Integer; const Astring: string);
begin
  FXmlResult := Astring;
  FXmlResult_Specified := True;
end;

function OperationResult2.XmlResult_Specified(Index: Integer): boolean;
begin
  Result := FXmlResult_Specified;
end;

initialization
  { labmedSoap }
  InvRegistry.RegisterInterface(TypeInfo(labmedSoap), 'http://tempuri.org/', 'utf-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(labmedSoap), 'http://tempuri.org/%operationName%');
  InvRegistry.RegisterInvokeOptions(TypeInfo(labmedSoap), ioDocument);
  InvRegistry.RegisterInvokeOptions(TypeInfo(labmedSoap), ioSOAP12);
  { labmedSoap.OrnekSonucKaydet }
  InvRegistry.RegisterMethodInfo(TypeInfo(labmedSoap), 'OrnekSonucKaydet', '',
                                 '[ReturnName="OrnekSonucKaydetResult"]', IS_OPTN);
  { labmedSoap.OrnekBilgisiAl }
  InvRegistry.RegisterMethodInfo(TypeInfo(labmedSoap), 'OrnekBilgisiAl', '',
                                 '[ReturnName="OrnekBilgisiAlResult"]', IS_OPTN);
  { labmedHttpGet }
  InvRegistry.RegisterInterface(TypeInfo(labmedHttpGet), 'http://tempuri.org/', 'utf-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(labmedHttpGet), '');
  { labmedHttpPost }
  InvRegistry.RegisterInterface(TypeInfo(labmedHttpPost), 'http://tempuri.org/', 'utf-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(labmedHttpPost), '');
  RemClassRegistry.RegisterXSClass(OperationResultBilgi2, 'http://tempuri.org/', 'OperationResultBilgi2', 'OperationResultBilgi');
  RemClassRegistry.RegisterXSClass(OperationResultBilgi, 'http://tempuri.org/', 'OperationResultBilgi');
  RemClassRegistry.RegisterXSClass(OperationResult2, 'http://tempuri.org/', 'OperationResult2', 'OperationResult');
  RemClassRegistry.RegisterXSClass(OperationResult, 'http://tempuri.org/', 'OperationResult');

end.