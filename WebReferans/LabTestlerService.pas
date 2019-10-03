// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : http://213.159.30.6/Service1.asmx?wsdl
//  >Import : http://213.159.30.6/Service1.asmx?wsdl>0
// Encoding : utf-8
// Version  : 1.0
// (03.10.2019 13:29:51 - - $Rev: 45757 $)
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
  // !:float           - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:int             - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:string          - "http://www.w3.org/2001/XMLSchema"[Gbl]

  LabTest              = class;                 { "http://tempuri.org/"[GblCplx] }

  ArrayOfLabTest = array of LabTest;            { "http://tempuri.org/"[GblCplx] }


  // ************************************************************************ //
  // XML       : LabTest, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  LabTest = class(TRemotable)
  private
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
    FDurum: string;
    FDurum_Specified: boolean;
    FuygulamaSuresi: Integer;
    FuygulamaAdet: Integer;
    Ftip: Integer;
    Fsira: Integer;
    FminD: Single;
    FmaxD: Single;
    FSGKTip: string;
    FSGKTip_Specified: boolean;
    FhepatitMarker: string;
    FhepatitMarker_Specified: boolean;
    FSonucTip: string;
    FSonucTip_Specified: boolean;
    FTurId: string;
    FTurId_Specified: boolean;
    FgrupKodu: string;
    FgrupKodu_Specified: boolean;
    FgrupKodu_Centro: string;
    FgrupKodu_Centro_Specified: boolean;
    Fref_Aciklama: string;
    Fref_Aciklama_Specified: boolean;
    FLoinc: string;
    FLoinc_Specified: boolean;
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
    procedure SetDurum(Index: Integer; const Astring: string);
    function  Durum_Specified(Index: Integer): boolean;
    procedure SetSGKTip(Index: Integer; const Astring: string);
    function  SGKTip_Specified(Index: Integer): boolean;
    procedure SethepatitMarker(Index: Integer; const Astring: string);
    function  hepatitMarker_Specified(Index: Integer): boolean;
    procedure SetSonucTip(Index: Integer; const Astring: string);
    function  SonucTip_Specified(Index: Integer): boolean;
    procedure SetTurId(Index: Integer; const Astring: string);
    function  TurId_Specified(Index: Integer): boolean;
    procedure SetgrupKodu(Index: Integer; const Astring: string);
    function  grupKodu_Specified(Index: Integer): boolean;
    procedure SetgrupKodu_Centro(Index: Integer; const Astring: string);
    function  grupKodu_Centro_Specified(Index: Integer): boolean;
    procedure Setref_Aciklama(Index: Integer; const Astring: string);
    function  ref_Aciklama_Specified(Index: Integer): boolean;
    procedure SetLoinc(Index: Integer; const Astring: string);
    function  Loinc_Specified(Index: Integer): boolean;
  published
    property butKodu:         string   Index (IS_OPTN) read FbutKodu write SetbutKodu stored butKodu_Specified;
    property tanimi:          string   Index (IS_OPTN) read Ftanimi write Settanimi stored tanimi_Specified;
    property birim:           string   Index (IS_OPTN) read Fbirim write Setbirim stored birim_Specified;
    property islemKodu:       string   Index (IS_OPTN) read FislemKodu write SetislemKodu stored islemKodu_Specified;
    property islemKoduC:      string   Index (IS_OPTN) read FislemKoduC write SetislemKoduC stored islemKoduC_Specified;
    property Durum:           string   Index (IS_OPTN) read FDurum write SetDurum stored Durum_Specified;
    property uygulamaSuresi:  Integer  Index (IS_NLBL) read FuygulamaSuresi write FuygulamaSuresi;
    property uygulamaAdet:    Integer  Index (IS_NLBL) read FuygulamaAdet write FuygulamaAdet;
    property tip:             Integer  Index (IS_NLBL) read Ftip write Ftip;
    property sira:            Integer  Index (IS_NLBL) read Fsira write Fsira;
    property minD:            Single   Index (IS_NLBL) read FminD write FminD;
    property maxD:            Single   Index (IS_NLBL) read FmaxD write FmaxD;
    property SGKTip:          string   Index (IS_OPTN) read FSGKTip write SetSGKTip stored SGKTip_Specified;
    property hepatitMarker:   string   Index (IS_OPTN) read FhepatitMarker write SethepatitMarker stored hepatitMarker_Specified;
    property SonucTip:        string   Index (IS_OPTN) read FSonucTip write SetSonucTip stored SonucTip_Specified;
    property TurId:           string   Index (IS_OPTN) read FTurId write SetTurId stored TurId_Specified;
    property grupKodu:        string   Index (IS_OPTN) read FgrupKodu write SetgrupKodu stored grupKodu_Specified;
    property grupKodu_Centro: string   Index (IS_OPTN) read FgrupKodu_Centro write SetgrupKodu_Centro stored grupKodu_Centro_Specified;
    property ref_Aciklama:    string   Index (IS_OPTN) read Fref_Aciklama write Setref_Aciklama stored ref_Aciklama_Specified;
    property Loinc:           string   Index (IS_OPTN) read FLoinc write SetLoinc stored Loinc_Specified;
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

procedure LabTest.SetDurum(Index: Integer; const Astring: string);
begin
  FDurum := Astring;
  FDurum_Specified := True;
end;

function LabTest.Durum_Specified(Index: Integer): boolean;
begin
  Result := FDurum_Specified;
end;

procedure LabTest.SetSGKTip(Index: Integer; const Astring: string);
begin
  FSGKTip := Astring;
  FSGKTip_Specified := True;
end;

function LabTest.SGKTip_Specified(Index: Integer): boolean;
begin
  Result := FSGKTip_Specified;
end;

procedure LabTest.SethepatitMarker(Index: Integer; const Astring: string);
begin
  FhepatitMarker := Astring;
  FhepatitMarker_Specified := True;
end;

function LabTest.hepatitMarker_Specified(Index: Integer): boolean;
begin
  Result := FhepatitMarker_Specified;
end;

procedure LabTest.SetSonucTip(Index: Integer; const Astring: string);
begin
  FSonucTip := Astring;
  FSonucTip_Specified := True;
end;

function LabTest.SonucTip_Specified(Index: Integer): boolean;
begin
  Result := FSonucTip_Specified;
end;

procedure LabTest.SetTurId(Index: Integer; const Astring: string);
begin
  FTurId := Astring;
  FTurId_Specified := True;
end;

function LabTest.TurId_Specified(Index: Integer): boolean;
begin
  Result := FTurId_Specified;
end;

procedure LabTest.SetgrupKodu(Index: Integer; const Astring: string);
begin
  FgrupKodu := Astring;
  FgrupKodu_Specified := True;
end;

function LabTest.grupKodu_Specified(Index: Integer): boolean;
begin
  Result := FgrupKodu_Specified;
end;

procedure LabTest.SetgrupKodu_Centro(Index: Integer; const Astring: string);
begin
  FgrupKodu_Centro := Astring;
  FgrupKodu_Centro_Specified := True;
end;

function LabTest.grupKodu_Centro_Specified(Index: Integer): boolean;
begin
  Result := FgrupKodu_Centro_Specified;
end;

procedure LabTest.Setref_Aciklama(Index: Integer; const Astring: string);
begin
  Fref_Aciklama := Astring;
  Fref_Aciklama_Specified := True;
end;

function LabTest.ref_Aciklama_Specified(Index: Integer): boolean;
begin
  Result := Fref_Aciklama_Specified;
end;

procedure LabTest.SetLoinc(Index: Integer; const Astring: string);
begin
  FLoinc := Astring;
  FLoinc_Specified := True;
end;

function LabTest.Loinc_Specified(Index: Integer): boolean;
begin
  Result := FLoinc_Specified;
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