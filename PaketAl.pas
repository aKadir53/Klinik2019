// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : D:\Projeler\DELPHI\Diyaliz\Diyaliz_Klinik2019\GetPackage.wsdl
//  >Import : D:\Projeler\DELPHI\Diyaliz\Diyaliz_Klinik2019\GetPackage.wsdl>0
// Encoding : UTF-8
// Version  : 1.0
// (11.05.2020 22:12:38 - - $Rev: 45757 $)
// ************************************************************************ //

unit PaketAl;

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
  // !:TSOAPAttachment - "http://www.borland.com/namespaces/Types"[]
  // !:base64Binary    - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:long            - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:string          - "http://www.w3.org/2001/XMLSchema"[Lit][Gbl]

  parametersType       = class;                 { "http://pts.titck.gov.tr/get"[Lit][GblCplx] }
  getFileParameters    = class;                 { "http://pts.titck.gov.tr/get"[Lit][GblElm] }
  getStreamParameters  = class;                 { "http://pts.titck.gov.tr/get"[Lit][GblElm] }
  streamType           = class;                 { "http://pts.titck.gov.tr/get"[Lit][GblCplx] }
  stream               = class;                 { "http://pts.titck.gov.tr/get"[Lit][GblElm] }
  packageTransferErrorType = class;             { "http://pts.titck.gov.tr/get"[GblCplx] }
  transferError        = class;                 { "http://pts.titck.gov.tr/get"[Flt][GblElm] }



  // ************************************************************************ //
  // XML       : parametersType, global, <complexType>
  // Namespace : http://pts.titck.gov.tr/get
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  parametersType = class(TRemotable)
  private
    FtransferId: Int64;
  public
    constructor Create; override;
  published
    property transferId: Int64  Index (IS_UNQL) read FtransferId write FtransferId;
  end;



  // ************************************************************************ //
  // XML       : getFileParameters, global, <element>
  // Namespace : http://pts.titck.gov.tr/get
  // Info      : Wrapper
  // ************************************************************************ //
  getFileParameters = class(parametersType)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : getStreamParameters, global, <element>
  // Namespace : http://pts.titck.gov.tr/get
  // Info      : Wrapper
  // ************************************************************************ //
  getStreamParameters = class(parametersType)
  private
  published
  end;

  md5checksumType =  type string;      { "http://pts.titck.gov.tr/get"[Lit][GblSmpl] }


  // ************************************************************************ //
  // XML       : streamType, global, <complexType>
  // Namespace : http://pts.titck.gov.tr/get
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  streamType = class(TRemotable)
  private
    FstreamMD5checksum: md5checksumType;
    FfileStream: TByteDynArray;
  public
    constructor Create; override;
  published
    property streamMD5checksum: md5checksumType  Index (IS_UNQL) read FstreamMD5checksum write FstreamMD5checksum;
    property fileStream:        TByteDynArray    Index (IS_UNQL) read FfileStream write FfileStream;
  end;



  // ************************************************************************ //
  // XML       : stream, global, <element>
  // Namespace : http://pts.titck.gov.tr/get
  // Info      : Wrapper
  // ************************************************************************ //
  stream = class(streamType)
  private
  published
  end;

  fileMD5checksum =  type md5checksumType;      { "http://pts.titck.gov.tr/get"[Lit][GblElm] }
  faultCode       =  type string;      { "http://pts.titck.gov.tr/get"[Smpl] }


  // ************************************************************************ //
  // XML       : packageTransferErrorType, global, <complexType>
  // Namespace : http://pts.titck.gov.tr/get
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
  // XML       : transferError, global, <element>
  // Namespace : http://pts.titck.gov.tr/get
  // Info      : Fault
  // Base Types: packageTransferErrorType
  // ************************************************************************ //
  transferError = class(ERemotableException)
  private
    FfaultCode: faultCode;
    FfaultMessage: string;
  published
    property faultCode:    faultCode  Index (IS_UNQL) read FfaultCode write FfaultCode;
    property faultMessage: string     Index (IS_UNQL) read FfaultMessage write FfaultMessage;
  end;


  // ************************************************************************ //
  // Namespace : http://pts.titck.gov.tr/get
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : document
  // use       : literal
  // binding   : GetPackagePortBinding
  // service   : GetPackage
  // port      : GetPackagePort
  // URL       : http://pts.saglik.gov.tr:80/PTS/GetPackage
  // ************************************************************************ //
  GetPackagePortType = interface(IInvokable)
  ['{5DFD0E89-0256-042D-9E12-256A642EE465}']

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    procedure asFile(const fileInput: getFileParameters; out md5checksum: fileMD5checksum; out file_: TSOAPAttachment); stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  asStream(const streamInput: getStreamParameters): stream; stdcall;
  end;

function GetGetPackagePortType(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): GetPackagePortType;


implementation
  uses SysUtils;

function GetGetPackagePortType(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): GetPackagePortType;
const
  defWSDL = 'D:\Projeler\DELPHI\Diyaliz\Diyaliz_Klinik2019\GetPackage.wsdl';
  defURL  = 'http://pts.saglik.gov.tr:80/PTS/GetPackage';
  defSvc  = 'GetPackage';
  defPrt  = 'GetPackagePort';
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
    Result := (RIO as GetPackagePortType);
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


constructor parametersType.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

constructor streamType.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

initialization
  { GetPackagePortType }
  InvRegistry.RegisterInterface(TypeInfo(GetPackagePortType), 'http://pts.titck.gov.tr/get', 'UTF-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(GetPackagePortType), '');
  InvRegistry.RegisterInvokeOptions(TypeInfo(GetPackagePortType), ioDocument);
  InvRegistry.RegisterInvokeOptions(TypeInfo(GetPackagePortType), ioLiteral);
  { GetPackagePortType.asFile }
  InvRegistry.RegisterParamInfo(TypeInfo(GetPackagePortType), 'asFile', 'file_', 'file', '');
  RemClassRegistry.RegisterXSClass(parametersType, 'http://pts.titck.gov.tr/get', 'parametersType');
  RemClassRegistry.RegisterSerializeOptions(parametersType, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(getFileParameters, 'http://pts.titck.gov.tr/get', 'getFileParameters');
  RemClassRegistry.RegisterXSClass(getStreamParameters, 'http://pts.titck.gov.tr/get', 'getStreamParameters');
  RemClassRegistry.RegisterXSInfo(TypeInfo(md5checksumType), 'http://pts.titck.gov.tr/get', 'md5checksumType');
  RemClassRegistry.RegisterXSClass(streamType, 'http://pts.titck.gov.tr/get', 'streamType');
  RemClassRegistry.RegisterSerializeOptions(streamType, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(stream, 'http://pts.titck.gov.tr/get', 'stream');
  RemClassRegistry.RegisterXSInfo(TypeInfo(fileMD5checksum), 'http://pts.titck.gov.tr/get', 'fileMD5checksum');
  RemClassRegistry.RegisterXSInfo(TypeInfo(faultCode), 'http://pts.titck.gov.tr/get', 'faultCode');
  RemClassRegistry.RegisterXSClass(packageTransferErrorType, 'http://pts.titck.gov.tr/get', 'packageTransferErrorType');
  RemClassRegistry.RegisterXSClass(transferError, 'http://pts.titck.gov.tr/get', 'transferError');

end.