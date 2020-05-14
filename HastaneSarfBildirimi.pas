// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : C:\Dializ2007_M3\HastaneSarfBildirimi.wsdl
//  >Import : C:\Dializ2007_M3\HastaneSarfBildirimi.wsdl>0
// Encoding : utf-8
// Version  : 1.0
// (22.05.2013 11:13:10 - - $Rev: 25127 $)
// ************************************************************************ //

unit HastaneSarfBildirimi;

interface

uses InvokeRegistry, SOAPHTTPClient, Types, XSBuiltIns;

const
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
  // !:date            - "http://www.w3.org/2001/XMLSchema"[Gbl]

  HastaneSarfCevapType = class;                 { "http://its.iegm.gov.tr/bildirim/BR/v1/Sarf/Hastane"[Lit][GblCplx] }
  URUNDURUM            = class;                 { "http://its.iegm.gov.tr/bildirim/BR/v1/Sarf/Hastane"[Cplx] }
  BildirimHataType     = class;                 { "http://its.iegm.gov.tr/bildirim/BR/v1/Sarf/Hastane"[GblCplx] }
  BELGE                = class;                 { "http://its.iegm.gov.tr/bildirim/BR/v1/Sarf/Hastane"[Cplx] }
  HastaneSarfType      = class;                 { "http://its.iegm.gov.tr/bildirim/BR/v1/Sarf/Hastane"[Lit][GblCplx] }
  URUN                 = class;                 { "http://its.iegm.gov.tr/bildirim/BR/v1/Sarf/Hastane"[Cplx] }
  BildirimHata         = class;                 { "http://its.iegm.gov.tr/bildirim/BR/v1/Sarf/Hastane"[Flt][GblElm] }
  HastaneSarfBildirimCevap = class;             { "http://its.iegm.gov.tr/bildirim/BR/v1/Sarf/Hastane"[Lit][GblElm] }
  HastaneSarfBildirim  = class;                 { "http://its.iegm.gov.tr/bildirim/BR/v1/Sarf/Hastane"[Lit][GblElm] }

  URUNLER    = array of URUNDURUM;              { "http://its.iegm.gov.tr/bildirim/BR/v1/Sarf/Hastane"[Cplx] }


  // ************************************************************************ //
  // XML       : HastaneSarfCevapType, global, <complexType>
  // Namespace : http://its.iegm.gov.tr/bildirim/BR/v1/Sarf/Hastane
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  HastaneSarfCevapType = class(TRemotable)
  private
    FBILDIRIMID: string;
    FURUNLER: URUNLER;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property BILDIRIMID: string   Index (IS_UNQL) read FBILDIRIMID write FBILDIRIMID;
    property URUNLER:    URUNLER  Index (IS_UNQL) read FURUNLER write FURUNLER;
  end;

  GTIN            =  type string;      { "http://its.iegm.gov.tr/bildirim/BR/v1/Sarf/Hastane"[Smpl] }
  SN              =  type string;      { "http://its.iegm.gov.tr/bildirim/BR/v1/Sarf/Hastane"[Smpl] }
  UC              =  type string;      { "http://its.iegm.gov.tr/bildirim/BR/v1/Sarf/Hastane"[Smpl] }


  // ************************************************************************ //
  // XML       : URUNDURUM, <complexType>
  // Namespace : http://its.iegm.gov.tr/bildirim/BR/v1/Sarf/Hastane
  // ************************************************************************ //
  URUNDURUM = class(TRemotable)
  private
    FGTIN: GTIN;
    FSN: SN;
    FUC: UC;
  published
    property GTIN: GTIN  Index (IS_UNQL) read FGTIN write FGTIN;
    property SN:   SN    Index (IS_UNQL) read FSN write FSN;
    property UC:   UC    Index (IS_UNQL) read FUC write FUC;
  end;

  FC              =  type string;      { "http://its.iegm.gov.tr/bildirim/BR/v1/Sarf/Hastane"[Smpl] }


  // ************************************************************************ //
  // XML       : BildirimHataType, global, <complexType>
  // Namespace : http://its.iegm.gov.tr/bildirim/BR/v1/Sarf/Hastane
  // ************************************************************************ //
  BildirimHataType = class(TRemotable)
  private
    FFC: FC;
    FFM: string;
  published
    property FC: FC      Index (IS_UNQL) read FFC write FFC;
    property FM: string  Index (IS_UNQL) read FFM write FFM;
  end;

  DT              =  type string;      { "http://its.iegm.gov.tr/bildirim/BR/v1/Sarf/Hastane"[Smpl] }
  FR              =  type string;      { "http://its.iegm.gov.tr/bildirim/BR/v1/Sarf/Hastane"[Smpl] }
  ISACIKLAMA      =  type string;      { "http://its.iegm.gov.tr/bildirim/BR/v1/Sarf/Hastane"[Smpl] }
  DN              =  type string;      { "http://its.iegm.gov.tr/bildirim/BR/v1/Sarf/Hastane"[Smpl] }


  // ************************************************************************ //
  // XML       : BELGE, <complexType>
  // Namespace : http://its.iegm.gov.tr/bildirim/BR/v1/Sarf/Hastane
  // ************************************************************************ //
  BELGE = class(TRemotable)
  private
    FDD: TXSDate;
    FDN: DN;
  public
    destructor Destroy; override;
  published
    property DD: TXSDate  Index (IS_NLBL or IS_UNQL) read FDD write FDD;
    property DN: DN       Index (IS_NLBL or IS_UNQL) read FDN write FDN;
  end;

  URUNLER2   = array of URUN;                   { "http://its.iegm.gov.tr/bildirim/BR/v1/Sarf/Hastane"[Cplx] }


  // ************************************************************************ //
  // XML       : HastaneSarfType, global, <complexType>
  // Namespace : http://its.iegm.gov.tr/bildirim/BR/v1/Sarf/Hastane
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  HastaneSarfType = class(TRemotable)
  private
    FDT: DT;
    FFR: FR;
    FISACIKLAMA: ISACIKLAMA;
    FBELGE: BELGE;
    FURUNLER: URUNLER2;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property DT:         DT          Index (IS_UNQL) read FDT write FDT;
    property FR:         FR          Index (IS_UNQL) read FFR write FFR;
    property ISACIKLAMA: ISACIKLAMA  Index (IS_UNQL) read FISACIKLAMA write FISACIKLAMA;
    property BELGE:      BELGE       Index (IS_NLBL or IS_UNQL) read FBELGE write FBELGE;
    property URUNLER:    URUNLER2    Index (IS_UNQL) read FURUNLER write FURUNLER;
  end;

  GTIN2           =  type string;      { "http://its.iegm.gov.tr/bildirim/BR/v1/Sarf/Hastane"[Smpl] }
  BN              =  type string;      { "http://its.iegm.gov.tr/bildirim/BR/v1/Sarf/Hastane"[Smpl] }
  SN2             =  type string;      { "http://its.iegm.gov.tr/bildirim/BR/v1/Sarf/Hastane"[Smpl] }


  // ************************************************************************ //
  // XML       : URUN, <complexType>
  // Namespace : http://its.iegm.gov.tr/bildirim/BR/v1/Sarf/Hastane
  // ************************************************************************ //
  URUN = class(TRemotable)
  private
    FGTIN: GTIN2;
    FBN: BN;
    FSN: SN2;
    FXD: TXSDate;
  public
    destructor Destroy; override;
  published
    property GTIN: GTIN2    Index (IS_UNQL) read FGTIN write FGTIN;
    property BN:   BN       Index (IS_UNQL) read FBN write FBN;
    property SN:   SN2      Index (IS_UNQL) read FSN write FSN;
    property XD:   TXSDate  Index (IS_UNQL) read FXD write FXD;
  end;



  // ************************************************************************ //
  // XML       : BildirimHata, global, <element>
  // Namespace : http://its.iegm.gov.tr/bildirim/BR/v1/Sarf/Hastane
  // Info      : Fault
  // Base Types: BildirimHataType
  // ************************************************************************ //
  BildirimHata = class(ERemotableException)
  private
    FFC: FC;
    FFM: string;
  published
    property FC: FC      Index (IS_UNQL) read FFC write FFC;
    property FM: string  Index (IS_UNQL) read FFM write FFM;
  end;



  // ************************************************************************ //
  // XML       : HastaneSarfBildirimCevap, global, <element>
  // Namespace : http://its.iegm.gov.tr/bildirim/BR/v1/Sarf/Hastane
  // Info      : Wrapper
  // ************************************************************************ //
  HastaneSarfBildirimCevap = class(HastaneSarfCevapType)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : HastaneSarfBildirim, global, <element>
  // Namespace : http://its.iegm.gov.tr/bildirim/BR/v1/Sarf/Hastane
  // Info      : Wrapper
  // ************************************************************************ //
  HastaneSarfBildirim = class(HastaneSarfType)
  private
  published
  end;


  // ************************************************************************ //
  // Namespace : http://its.iegm.gov.tr/bildirim/BR/v1/Sarf/Hastane
  // soapAction: http://its.iegm.gov.tr/bildirim/BildirimReceiver/v1/DeaktivasyonBildirRequest
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : document
  // binding   : HastaneSarfBildirimReceiverBinding
  // service   : HastaneSarfBildirimReceiverService
  // port      : HastaneSarfBildirimReceiverBindingPort
  // URL       : http://itstest:8080/HastaneSarf/HastaneSarfBildirimReceiverService
  // ************************************************************************ //
  HastaneSarfBildirimReceiver = interface(IInvokable)
  ['{80D48AFA-1D7A-10CB-32EC-973F78EC302F}']

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  HastaneSarfBildir(const body: HastaneSarfBildirim): HastaneSarfBildirimCevap; stdcall;
  end;

function GetHastaneSarfBildirimReceiver(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): HastaneSarfBildirimReceiver;


implementation
  uses SysUtils;

function GetHastaneSarfBildirimReceiver(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): HastaneSarfBildirimReceiver;
const
  defWSDL = 'C:\Dializ2007_M3\HastaneSarfBildirimi.wsdl';
  defURL  = 'http://itstest:8080/HastaneSarf/HastaneSarfBildirimReceiverService';
  defSvc  = 'HastaneSarfBildirimReceiverService';
  defPrt  = 'HastaneSarfBildirimReceiverBindingPort';
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
    Result := (RIO as HastaneSarfBildirimReceiver);
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


constructor HastaneSarfCevapType.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor HastaneSarfCevapType.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FURUNLER)-1 do
    SysUtils.FreeAndNil(FURUNLER[I]);
  System.SetLength(FURUNLER, 0);
  inherited Destroy;
end;

destructor BELGE.Destroy;
begin
  SysUtils.FreeAndNil(FDD);
  inherited Destroy;
end;

constructor HastaneSarfType.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor HastaneSarfType.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FURUNLER)-1 do
    SysUtils.FreeAndNil(FURUNLER[I]);
  System.SetLength(FURUNLER, 0);
  SysUtils.FreeAndNil(FBELGE);
  inherited Destroy;
end;

destructor URUN.Destroy;
begin
  SysUtils.FreeAndNil(FXD);
  inherited Destroy;
end;

initialization
  InvRegistry.RegisterInterface(TypeInfo(HastaneSarfBildirimReceiver), 'http://its.iegm.gov.tr/bildirim/BR/v1/Sarf/Hastane', 'utf-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(HastaneSarfBildirimReceiver), 'http://its.iegm.gov.tr/bildirim/BildirimReceiver/v1/DeaktivasyonBildirRequest');
  InvRegistry.RegisterInvokeOptions(TypeInfo(HastaneSarfBildirimReceiver), ioDocument);
  InvRegistry.RegisterInvokeOptions(TypeInfo(HastaneSarfBildirimReceiver), ioLiteral);
  InvRegistry.RegisterExternalParamName(TypeInfo(HastaneSarfBildirimReceiver), 'HastaneSarfBildir', 'body1', 'body');
  RemClassRegistry.RegisterXSInfo(TypeInfo(URUNLER), 'http://its.iegm.gov.tr/bildirim/BR/v1/Sarf/Hastane', 'URUNLER');
  RemClassRegistry.RegisterXSClass(HastaneSarfCevapType, 'http://its.iegm.gov.tr/bildirim/BR/v1/Sarf/Hastane', 'HastaneSarfCevapType');
  RemClassRegistry.RegisterSerializeOptions(HastaneSarfCevapType, [xoLiteralParam]);
  RemClassRegistry.RegisterXSInfo(TypeInfo(GTIN), 'http://its.iegm.gov.tr/bildirim/BR/v1/Sarf/Hastane', 'GTIN');
  RemClassRegistry.RegisterXSInfo(TypeInfo(SN), 'http://its.iegm.gov.tr/bildirim/BR/v1/Sarf/Hastane', 'SN');
  RemClassRegistry.RegisterXSInfo(TypeInfo(UC), 'http://its.iegm.gov.tr/bildirim/BR/v1/Sarf/Hastane', 'UC');
  RemClassRegistry.RegisterXSClass(URUNDURUM, 'http://its.iegm.gov.tr/bildirim/BR/v1/Sarf/Hastane', 'URUNDURUM');
  RemClassRegistry.RegisterXSInfo(TypeInfo(FC), 'http://its.iegm.gov.tr/bildirim/BR/v1/Sarf/Hastane', 'FC');
  RemClassRegistry.RegisterXSClass(BildirimHataType, 'http://its.iegm.gov.tr/bildirim/BR/v1/Sarf/Hastane', 'BildirimHataType');
  RemClassRegistry.RegisterXSInfo(TypeInfo(DT), 'http://its.iegm.gov.tr/bildirim/BR/v1/Sarf/Hastane', 'DT');
  RemClassRegistry.RegisterXSInfo(TypeInfo(FR), 'http://its.iegm.gov.tr/bildirim/BR/v1/Sarf/Hastane', 'FR');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ISACIKLAMA), 'http://its.iegm.gov.tr/bildirim/BR/v1/Sarf/Hastane', 'ISACIKLAMA');
  RemClassRegistry.RegisterXSInfo(TypeInfo(DN), 'http://its.iegm.gov.tr/bildirim/BR/v1/Sarf/Hastane', 'DN');
  RemClassRegistry.RegisterXSClass(BELGE, 'http://its.iegm.gov.tr/bildirim/BR/v1/Sarf/Hastane', 'BELGE');
  RemClassRegistry.RegisterXSInfo(TypeInfo(URUNLER2), 'http://its.iegm.gov.tr/bildirim/BR/v1/Sarf/Hastane', 'URUNLER2', 'URUNLER');
  RemClassRegistry.RegisterXSClass(HastaneSarfType, 'http://its.iegm.gov.tr/bildirim/BR/v1/Sarf/Hastane', 'HastaneSarfType');
  RemClassRegistry.RegisterSerializeOptions(HastaneSarfType, [xoLiteralParam]);
  RemClassRegistry.RegisterXSInfo(TypeInfo(GTIN2), 'http://its.iegm.gov.tr/bildirim/BR/v1/Sarf/Hastane', 'GTIN2', 'GTIN');
  RemClassRegistry.RegisterXSInfo(TypeInfo(BN), 'http://its.iegm.gov.tr/bildirim/BR/v1/Sarf/Hastane', 'BN');
  RemClassRegistry.RegisterXSInfo(TypeInfo(SN2), 'http://its.iegm.gov.tr/bildirim/BR/v1/Sarf/Hastane', 'SN2', 'SN');
  RemClassRegistry.RegisterXSClass(URUN, 'http://its.iegm.gov.tr/bildirim/BR/v1/Sarf/Hastane', 'URUN');
  RemClassRegistry.RegisterXSClass(BildirimHata, 'http://its.iegm.gov.tr/bildirim/BR/v1/Sarf/Hastane', 'BildirimHata');
  RemClassRegistry.RegisterXSClass(HastaneSarfBildirimCevap, 'http://its.iegm.gov.tr/bildirim/BR/v1/Sarf/Hastane', 'HastaneSarfBildirimCevap');
  RemClassRegistry.RegisterXSClass(HastaneSarfBildirim, 'http://its.iegm.gov.tr/bildirim/BR/v1/Sarf/Hastane', 'HastaneSarfBildirim');

end.