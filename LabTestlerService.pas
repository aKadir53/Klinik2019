// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : http://213.159.30.6/Service1.asmx?wsdl
//  >Import : http://213.159.30.6/Service1.asmx?wsdl>0
// Encoding : utf-8
// Version  : 1.0
// (03.10.2019 11:01:19 - - $Rev: 45757 $)
// ************************************************************************ //

unit LabTestlerService;

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
    FbutKodu: string;
    FbutKodu_Specified: boolean;
    Ftanimi: string;
    Ftanimi_Specified: boolean;
    Fbirim: string;
    Fbirim_Specified: boolean;
    FislemKodu: string;
    FislemKodu_Specified: boolean;
    FislemKoduC: string;
    FislemKoduC_Specified: boolean;
    procedure SetbutKodu(Index: Integer; const Astring: string);
    function  butKodu_Specified(Index: Integer): boolean;
    procedure Settanimi(Index: Integer; const Astring: string);
    function  tanimi_Specified(Index: Integer): boolean;
    procedure Setbirim(Index: Integer; const Astring: string);
    function  birim_Specified(Index: Integer): boolean;
    procedure SetislemKodu(Index: Integer; const Astring: string);
    function  islemKodu_Specified(Index: Integer): boolean;
    procedure SetislemKoduC(Index: Integer; const Astring: string);
    function  islemKoduC_Specified(Index: Integer): boolean;
  published
    property LabID:      Integer  read FLabID write FLabID;
    property butKodu:    string   Index (IS_OPTN) read FbutKodu write SetbutKodu stored butKodu_Specified;
    property tanimi:     string   Index (IS_OPTN) read Ftanimi write Settanimi stored tanimi_Specified;
    property birim:      string   Index (IS_OPTN) read Fbirim write Setbirim stored birim_Specified;
    property islemKodu:  string   Index (IS_OPTN) read FislemKodu write SetislemKodu stored islemKodu_Specified;
    property islemKoduC: string   Index (IS_OPTN) read FislemKoduC write SetislemKoduC stored islemKoduC_Specified;
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


procedure LabTest.SetbutKodu(Index: Integer; const Astring: string);
begin
  FbutKodu := Astring;
  FbutKodu_Specified := True;
end;

function LabTest.butKodu_Specified(Index: Integer): boolean;
begin
  Result := FbutKodu_Specified;
end;

procedure LabTest.Settanimi(Index: Integer; const Astring: string);
begin
  Ftanimi := Astring;
  Ftanimi_Specified := True;
end;

function LabTest.tanimi_Specified(Index: Integer): boolean;
begin
  Result := Ftanimi_Specified;
end;

procedure LabTest.Setbirim(Index: Integer; const Astring: string);
begin
  Fbirim := Astring;
  Fbirim_Specified := True;
end;

function LabTest.birim_Specified(Index: Integer): boolean;
begin
  Result := Fbirim_Specified;
end;

procedure LabTest.SetislemKodu(Index: Integer; const Astring: string);
begin
  FislemKodu := Astring;
  FislemKodu_Specified := True;
end;

function LabTest.islemKodu_Specified(Index: Integer): boolean;
begin
  Result := FislemKodu_Specified;
end;

procedure LabTest.SetislemKoduC(Index: Integer; const Astring: string);
begin
  FislemKoduC := Astring;
  FislemKoduC_Specified := True;
end;

function LabTest.islemKoduC_Specified(Index: Integer): boolean;
begin
  Result := FislemKoduC_Specified;
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