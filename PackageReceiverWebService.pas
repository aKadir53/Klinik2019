// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : D:\Projeler\DELPHI\Diyaliz\Diyaliz_Klinik2019\PackageReceiverWebService.wsdl
//  >Import : D:\Projeler\DELPHI\Diyaliz\Diyaliz_Klinik2019\PackageReceiverWebService.wsdl>0
// Encoding : UTF-8
// Version  : 1.0
// (01.05.2020 17:26:29 - - $Rev: 45757 $)
// ************************************************************************ //

unit PackageReceiverWebService;

interface

uses InvokeRegistry, SOAPHTTPClient, Types, XSBuiltIns;

const
  IS_UNQL = $0008;


type

  // ************************************************************************ //
  // The following types, referred to in the WSDL document are not being represented
  // in this file. They are either aliases[@] of other types represented or were referred
  // to but never[!] declared in the document. The types from the latter category
  // typically map to predefined/known XML or Embarcadero types; however, they could also 
  // indicate incorrect WSDL documents that failed to declare or import a schema type.
  // ************************************************************************ //
  // !:base64Binary    - "http://www.w3.org/2001/XMLSchema"[Lit][Gbl]
  // !:TSOAPAttachment - "http://www.borland.com/namespaces/Types"[Lit][]
  // !:long            - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:string          - "http://www.w3.org/2001/XMLSchema"[Gbl]

  receiveFileParametersType = class;            { "http://its.iegm.gov.tr/pts/receivepackage"[Lit][GblCplx] }
  receiveFileParameters = class;                { "http://its.iegm.gov.tr/pts/receivepackage"[Lit][GblElm] }
  receiveFileStreamParameters = class;          { "http://its.iegm.gov.tr/pts/receivepackage"[Lit][GblElm] }
  packageTransferError = class;                 { "http://its.iegm.gov.tr/pts/receivepackage"[Flt][GblElm] }
  packageTransferErrorType = class;             { "http://its.iegm.gov.tr/pts/receivepackage"[GblCplx] }

  responseFileStream =  type TByteDynArray;      { "http://its.iegm.gov.tr/pts/receivepackage"[Lit][GblElm] }
  sourceGLN       =  type string;      { "http://its.iegm.gov.tr/pts/receivepackage"[Smpl] }


  // ************************************************************************ //
  // XML       : receiveFileParametersType, global, <complexType>
  // Namespace : http://its.iegm.gov.tr/pts/receivepackage
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  receiveFileParametersType = class(TRemotable)
  private
    FsourceGLN: sourceGLN;
    FtransferId: Int64;
  public
    constructor Create; override;
  published
    property sourceGLN:  sourceGLN  Index (IS_UNQL) read FsourceGLN write FsourceGLN;
    property transferId: Int64      Index (IS_UNQL) read FtransferId write FtransferId;
  end;



  // ************************************************************************ //
  // XML       : receiveFileParameters, global, <element>
  // Namespace : http://its.iegm.gov.tr/pts/receivepackage
  // Info      : Wrapper
  // ************************************************************************ //
  receiveFileParameters = class(receiveFileParametersType)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : receiveFileStreamParameters, global, <element>
  // Namespace : http://its.iegm.gov.tr/pts/receivepackage
  // Info      : Wrapper
  // ************************************************************************ //
  receiveFileStreamParameters = class(receiveFileParametersType)
  private
  published
  end;

  faultCode       =  type string;      { "http://its.iegm.gov.tr/pts/receivepackage"[Smpl] }


  // ************************************************************************ //
  // XML       : packageTransferError, global, <element>
  // Namespace : http://its.iegm.gov.tr/pts/receivepackage
  // Info      : Fault
  // Base Types: packageTransferErrorType
  // ************************************************************************ //
  packageTransferError = class(ERemotableException)
  private
    FfaultCode: faultCode;
    FfaultMessage: string;
  published
    property faultCode:    faultCode  Index (IS_UNQL) read FfaultCode write FfaultCode;
    property faultMessage: string     Index (IS_UNQL) read FfaultMessage write FfaultMessage;
  end;



  // ************************************************************************ //
  // XML       : packageTransferErrorType, global, <complexType>
  // Namespace : http://its.iegm.gov.tr/pts/receivepackage
  // ************************************************************************ //
  packageTransferErrorType = class(TRemotable)
  private
    FfaultCode: faultCode;
    FfaultMessage: string;
  published
    property faultCode:    faultCode  Index (IS_UNQL) read FfaultCode write FfaultCode;
    property faultMessage: string     Index (IS_UNQL) read FfaultMessage write FfaultMessage;
  end;


  // ************************************************************************ //
  // Namespace : http://its.iegm.gov.tr/pts/receivepackage
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : document
  // use       : literal
  // binding   : PackageReceiverWSPortBinding
  // service   : PackageReceiverWebService
  // port      : PackageReceiverWSPort
  // URL       : http://pts.saglik.gov.tr:80/PTS/PackageReceiverWebService
  // ************************************************************************ //
  PackageReceiverWS = interface(IInvokable)
  ['{E1E63F9B-64F8-D54B-54B6-73831165854B}']

    // Cannot unwrap:
    //     - Input element wrapper name does not match operation's name
    function  receiveFile(const inputPart: receiveFileParameters): TSOAPAttachment; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - The output part is not a complex type
    function  receiveFileStream(const inputPart: receiveFileStreamParameters): responseFileStream; stdcall;
  end;

function GetPackageReceiverWS(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): PackageReceiverWS;


implementation
  uses SysUtils;

function GetPackageReceiverWS(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): PackageReceiverWS;
const
  defWSDL = 'D:\Projeler\DELPHI\Diyaliz\Diyaliz_Klinik2019\PackageReceiverWebService.wsdl';
  defURL  = 'http://pts.saglik.gov.tr:80/PTS/PackageReceiverWebService';
  defSvc  = 'PackageReceiverWebService';
  defPrt  = 'PackageReceiverWSPort';
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
    Result := (RIO as PackageReceiverWS);
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


constructor receiveFileParametersType.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

initialization
  { PackageReceiverWS }
  InvRegistry.RegisterInterface(TypeInfo(PackageReceiverWS), 'http://its.iegm.gov.tr/pts/receivepackage', 'UTF-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(PackageReceiverWS), '');
  InvRegistry.RegisterInvokeOptions(TypeInfo(PackageReceiverWS), ioDocument);
  InvRegistry.RegisterInvokeOptions(TypeInfo(PackageReceiverWS), ioLiteral);
  RemClassRegistry.RegisterXSInfo(TypeInfo(responseFileStream), 'http://its.iegm.gov.tr/pts/receivepackage', 'responseFileStream');
  RemClassRegistry.RegisterXSInfo(TypeInfo(sourceGLN), 'http://its.iegm.gov.tr/pts/receivepackage', 'sourceGLN');
  RemClassRegistry.RegisterXSClass(receiveFileParametersType, 'http://its.iegm.gov.tr/pts/receivepackage', 'receiveFileParametersType');
  RemClassRegistry.RegisterSerializeOptions(receiveFileParametersType, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(receiveFileParameters, 'http://its.iegm.gov.tr/pts/receivepackage', 'receiveFileParameters');
  RemClassRegistry.RegisterXSClass(receiveFileStreamParameters, 'http://its.iegm.gov.tr/pts/receivepackage', 'receiveFileStreamParameters');
  RemClassRegistry.RegisterXSInfo(TypeInfo(faultCode), 'http://its.iegm.gov.tr/pts/receivepackage', 'faultCode');
  RemClassRegistry.RegisterXSClass(packageTransferError, 'http://its.iegm.gov.tr/pts/receivepackage', 'packageTransferError');
  RemClassRegistry.RegisterXSClass(packageTransferErrorType, 'http://its.iegm.gov.tr/pts/receivepackage', 'packageTransferErrorType');

end.