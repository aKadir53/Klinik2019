// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : C:\Dializ2007_M3\duzen.wsdl
//  >Import : C:\Dializ2007_M3\duzen.wsdl>0
// Encoding : utf-8
// Version  : 1.0
// (19.02.2014 10:49:22 - - $Rev: 25127 $)
// ************************************************************************ //

unit DuzenService;

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
  // !:base64Binary    - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:dateTime        - "http://www.w3.org/2001/XMLSchema"[Gbl]

  possTestTimeInf      = class;                 { "http://www.duzen.com.tr/WSs"[GblCplx] }
  getPResults          = class;                 { "http://www.duzen.com.tr/WSs"[GblCplx] }
  resultDataSet        = class;                 { "http://www.duzen.com.tr/WSs"[Cplx] }
  addNPatients         = class;                 { "http://www.duzen.com.tr/WSs"[GblCplx] }
  getPFResults         = class;                 { "http://www.duzen.com.tr/WSs"[GblCplx] }



  // ************************************************************************ //
  // XML       : possTestTimeInf, global, <complexType>
  // Namespace : http://www.duzen.com.tr/WSs
  // ************************************************************************ //
  possTestTimeInf = class(TRemotable)
  private
    FresultCode: string;
    FresultCode_Specified: boolean;
    FresultClass: string;
    FresultClass_Specified: boolean;
    FresultMessage: string;
    FresultMessage_Specified: boolean;
    procedure SetresultCode(Index: Integer; const Astring: string);
    function  resultCode_Specified(Index: Integer): boolean;
    procedure SetresultClass(Index: Integer; const Astring: string);
    function  resultClass_Specified(Index: Integer): boolean;
    procedure SetresultMessage(Index: Integer; const Astring: string);
    function  resultMessage_Specified(Index: Integer): boolean;
  published
    property resultCode:    string  Index (IS_OPTN) read FresultCode write SetresultCode stored resultCode_Specified;
    property resultClass:   string  Index (IS_OPTN) read FresultClass write SetresultClass stored resultClass_Specified;
    property resultMessage: string  Index (IS_OPTN) read FresultMessage write SetresultMessage stored resultMessage_Specified;
  end;



  // ************************************************************************ //
  // XML       : getPResults, global, <complexType>
  // Namespace : http://www.duzen.com.tr/WSs
  // ************************************************************************ //
  getPResults = class(TRemotable)
  private
    FresultCode: string;
    FresultCode_Specified: boolean;
    FresultClass: string;
    FresultClass_Specified: boolean;
    FresultMessage: string;
    FresultMessage_Specified: boolean;
    FresultDataSet: resultDataSet;
    FresultDataSet_Specified: boolean;
    procedure SetresultCode(Index: Integer; const Astring: string);
    function  resultCode_Specified(Index: Integer): boolean;
    procedure SetresultClass(Index: Integer; const Astring: string);
    function  resultClass_Specified(Index: Integer): boolean;
    procedure SetresultMessage(Index: Integer; const Astring: string);
    function  resultMessage_Specified(Index: Integer): boolean;
    procedure SetresultDataSet(Index: Integer; const AresultDataSet: resultDataSet);
    function  resultDataSet_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property resultCode:    string         Index (IS_OPTN) read FresultCode write SetresultCode stored resultCode_Specified;
    property resultClass:   string         Index (IS_OPTN) read FresultClass write SetresultClass stored resultClass_Specified;
    property resultMessage: string         Index (IS_OPTN) read FresultMessage write SetresultMessage stored resultMessage_Specified;
    property resultDataSet: resultDataSet  Index (IS_OPTN) read FresultDataSet write SetresultDataSet stored resultDataSet_Specified;
  end;



  // ************************************************************************ //
  // XML       : resultDataSet, <complexType>
  // Namespace : http://www.duzen.com.tr/WSs
  // ************************************************************************ //
  resultDataSet = class(TRemotable)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : addNPatients, global, <complexType>
  // Namespace : http://www.duzen.com.tr/WSs
  // ************************************************************************ //
  addNPatients = class(TRemotable)
  private
    FresultCode: string;
    FresultCode_Specified: boolean;
    FresultClass: string;
    FresultClass_Specified: boolean;
    FresultMessage: string;
    FresultMessage_Specified: boolean;
    FresultTPrice: string;
    FresultTPrice_Specified: boolean;
    FresultTTests: string;
    FresultTTests_Specified: boolean;
    FresultTSampTypes: string;
    FresultTSampTypes_Specified: boolean;
    FresultPossTestTime: string;
    FresultPossTestTime_Specified: boolean;
    FresultPANo: string;
    FresultPANo_Specified: boolean;
    procedure SetresultCode(Index: Integer; const Astring: string);
    function  resultCode_Specified(Index: Integer): boolean;
    procedure SetresultClass(Index: Integer; const Astring: string);
    function  resultClass_Specified(Index: Integer): boolean;
    procedure SetresultMessage(Index: Integer; const Astring: string);
    function  resultMessage_Specified(Index: Integer): boolean;
    procedure SetresultTPrice(Index: Integer; const Astring: string);
    function  resultTPrice_Specified(Index: Integer): boolean;
    procedure SetresultTTests(Index: Integer; const Astring: string);
    function  resultTTests_Specified(Index: Integer): boolean;
    procedure SetresultTSampTypes(Index: Integer; const Astring: string);
    function  resultTSampTypes_Specified(Index: Integer): boolean;
    procedure SetresultPossTestTime(Index: Integer; const Astring: string);
    function  resultPossTestTime_Specified(Index: Integer): boolean;
    procedure SetresultPANo(Index: Integer; const Astring: string);
    function  resultPANo_Specified(Index: Integer): boolean;
  published
    property resultCode:         string  Index (IS_OPTN) read FresultCode write SetresultCode stored resultCode_Specified;
    property resultClass:        string  Index (IS_OPTN) read FresultClass write SetresultClass stored resultClass_Specified;
    property resultMessage:      string  Index (IS_OPTN) read FresultMessage write SetresultMessage stored resultMessage_Specified;
    property resultTPrice:       string  Index (IS_OPTN) read FresultTPrice write SetresultTPrice stored resultTPrice_Specified;
    property resultTTests:       string  Index (IS_OPTN) read FresultTTests write SetresultTTests stored resultTTests_Specified;
    property resultTSampTypes:   string  Index (IS_OPTN) read FresultTSampTypes write SetresultTSampTypes stored resultTSampTypes_Specified;
    property resultPossTestTime: string  Index (IS_OPTN) read FresultPossTestTime write SetresultPossTestTime stored resultPossTestTime_Specified;
    property resultPANo:         string  Index (IS_OPTN) read FresultPANo write SetresultPANo stored resultPANo_Specified;
  end;

  ArrayOfInt = array of Integer;                { "http://www.duzen.com.tr/WSs"[GblCplx] }
  ArrayOfBase64Binary = array of TByteDynArray;   { "http://www.duzen.com.tr/WSs"[GblCplx] }


  // ************************************************************************ //
  // XML       : getPFResults, global, <complexType>
  // Namespace : http://www.duzen.com.tr/WSs
  // ************************************************************************ //
  getPFResults = class(TRemotable)
  private
    FresultCode: string;
    FresultCode_Specified: boolean;
    FresultClass: string;
    FresultClass_Specified: boolean;
    FresultMessage: string;
    FresultMessage_Specified: boolean;
    FresultPFLen: ArrayOfInt;
    FresultPFLen_Specified: boolean;
    FresultPFContent: ArrayOfBase64Binary;
    FresultPFContent_Specified: boolean;
    procedure SetresultCode(Index: Integer; const Astring: string);
    function  resultCode_Specified(Index: Integer): boolean;
    procedure SetresultClass(Index: Integer; const Astring: string);
    function  resultClass_Specified(Index: Integer): boolean;
    procedure SetresultMessage(Index: Integer; const Astring: string);
    function  resultMessage_Specified(Index: Integer): boolean;
    procedure SetresultPFLen(Index: Integer; const AArrayOfInt: ArrayOfInt);
    function  resultPFLen_Specified(Index: Integer): boolean;
    procedure SetresultPFContent(Index: Integer; const AArrayOfBase64Binary: ArrayOfBase64Binary);
    function  resultPFContent_Specified(Index: Integer): boolean;
  published
    property resultCode:      string               Index (IS_OPTN) read FresultCode write SetresultCode stored resultCode_Specified;
    property resultClass:     string               Index (IS_OPTN) read FresultClass write SetresultClass stored resultClass_Specified;
    property resultMessage:   string               Index (IS_OPTN) read FresultMessage write SetresultMessage stored resultMessage_Specified;
    property resultPFLen:     ArrayOfInt           Index (IS_OPTN) read FresultPFLen write SetresultPFLen stored resultPFLen_Specified;
    property resultPFContent: ArrayOfBase64Binary  Index (IS_OPTN) read FresultPFContent write SetresultPFContent stored resultPFContent_Specified;
  end;


  // ************************************************************************ //
  // Namespace : http://www.duzen.com.tr/WSs
  // soapAction: http://www.duzen.com.tr/WSs/%operationName%
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : document
  // binding   : PatientProcsSoap12
  // service   : PatientProcs
  // port      : PatientProcsSoap12
  // URL       : http://www.duzen.com.tr/WSsv_2/WSs.asmx
  // ************************************************************************ //
  PatientProcsSoap = interface(IInvokable)
  ['{9C9BE212-9C71-585B-4446-ED7CBA47DE14}']
    function  getPossibleTestTime(const testCodes: string; const insLogCode: Integer; const insLogPass: string): possTestTimeInf; stdcall;
    function  getSampleStat(const getBDate: string; const getEDate: string; const protcNo: string; const insLogCode: Integer; const insLogPass: string): getPResults; stdcall;
    function  getCargoInf(const getBDate: string; const getEDate: string; const insLogCode: Integer; const insLogPass: string): getPResults; stdcall;
    function  getTestList(const insLogCode: Integer; const insLogPass: string): getPResults; stdcall;
    function  addPatients(const addPFNo: string; const addPANo: string; const addPGender: string; const addPName: string; const addPLName: string; const addPBDate: TXSDateTime;
                          const addPAddress: string; const addPTel: string; const addPFax: string; const addPNote: string; const addPTType: string; 
                          const addPTests: string; const insLogCode: Integer; const insLogPass: string): addNPatients; stdcall;
    function  getPatientResults(const getPANo: string; const insLogCode: Integer; const insLogPass: string): getPResults; stdcall;
    function  getPatientDocuments(const getPANo: string; const insLogCode: Integer; const insLogPass: string): getPFResults; stdcall;
  end;

function GetPatientProcsSoap(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): PatientProcsSoap;


implementation
  uses SysUtils;

function GetPatientProcsSoap(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): PatientProcsSoap;
const
  defWSDL = 'C:\Dializ2007_M3\duzen.wsdl';
  defURL  = 'http://www.duzen.com.tr/WSsv_2/WSs.asmx';
  defSvc  = 'PatientProcs';
  defPrt  = 'PatientProcsSoap12';
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
    Result := (RIO as PatientProcsSoap);
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


procedure possTestTimeInf.SetresultCode(Index: Integer; const Astring: string);
begin
  FresultCode := Astring;
  FresultCode_Specified := True;
end;

function possTestTimeInf.resultCode_Specified(Index: Integer): boolean;
begin
  Result := FresultCode_Specified;
end;

procedure possTestTimeInf.SetresultClass(Index: Integer; const Astring: string);
begin
  FresultClass := Astring;
  FresultClass_Specified := True;
end;

function possTestTimeInf.resultClass_Specified(Index: Integer): boolean;
begin
  Result := FresultClass_Specified;
end;

procedure possTestTimeInf.SetresultMessage(Index: Integer; const Astring: string);
begin
  FresultMessage := Astring;
  FresultMessage_Specified := True;
end;

function possTestTimeInf.resultMessage_Specified(Index: Integer): boolean;
begin
  Result := FresultMessage_Specified;
end;

destructor getPResults.Destroy;
begin
  SysUtils.FreeAndNil(FresultDataSet);
  inherited Destroy;
end;

procedure getPResults.SetresultCode(Index: Integer; const Astring: string);
begin
  FresultCode := Astring;
  FresultCode_Specified := True;
end;

function getPResults.resultCode_Specified(Index: Integer): boolean;
begin
  Result := FresultCode_Specified;
end;

procedure getPResults.SetresultClass(Index: Integer; const Astring: string);
begin
  FresultClass := Astring;
  FresultClass_Specified := True;
end;

function getPResults.resultClass_Specified(Index: Integer): boolean;
begin
  Result := FresultClass_Specified;
end;

procedure getPResults.SetresultMessage(Index: Integer; const Astring: string);
begin
  FresultMessage := Astring;
  FresultMessage_Specified := True;
end;

function getPResults.resultMessage_Specified(Index: Integer): boolean;
begin
  Result := FresultMessage_Specified;
end;

procedure getPResults.SetresultDataSet(Index: Integer; const AresultDataSet: resultDataSet);
begin
  FresultDataSet := AresultDataSet;
  FresultDataSet_Specified := True;
end;

function getPResults.resultDataSet_Specified(Index: Integer): boolean;
begin
  Result := FresultDataSet_Specified;
end;

procedure addNPatients.SetresultCode(Index: Integer; const Astring: string);
begin
  FresultCode := Astring;
  FresultCode_Specified := True;
end;

function addNPatients.resultCode_Specified(Index: Integer): boolean;
begin
  Result := FresultCode_Specified;
end;

procedure addNPatients.SetresultClass(Index: Integer; const Astring: string);
begin
  FresultClass := Astring;
  FresultClass_Specified := True;
end;

function addNPatients.resultClass_Specified(Index: Integer): boolean;
begin
  Result := FresultClass_Specified;
end;

procedure addNPatients.SetresultMessage(Index: Integer; const Astring: string);
begin
  FresultMessage := Astring;
  FresultMessage_Specified := True;
end;

function addNPatients.resultMessage_Specified(Index: Integer): boolean;
begin
  Result := FresultMessage_Specified;
end;

procedure addNPatients.SetresultTPrice(Index: Integer; const Astring: string);
begin
  FresultTPrice := Astring;
  FresultTPrice_Specified := True;
end;

function addNPatients.resultTPrice_Specified(Index: Integer): boolean;
begin
  Result := FresultTPrice_Specified;
end;

procedure addNPatients.SetresultTTests(Index: Integer; const Astring: string);
begin
  FresultTTests := Astring;
  FresultTTests_Specified := True;
end;

function addNPatients.resultTTests_Specified(Index: Integer): boolean;
begin
  Result := FresultTTests_Specified;
end;

procedure addNPatients.SetresultTSampTypes(Index: Integer; const Astring: string);
begin
  FresultTSampTypes := Astring;
  FresultTSampTypes_Specified := True;
end;

function addNPatients.resultTSampTypes_Specified(Index: Integer): boolean;
begin
  Result := FresultTSampTypes_Specified;
end;

procedure addNPatients.SetresultPossTestTime(Index: Integer; const Astring: string);
begin
  FresultPossTestTime := Astring;
  FresultPossTestTime_Specified := True;
end;

function addNPatients.resultPossTestTime_Specified(Index: Integer): boolean;
begin
  Result := FresultPossTestTime_Specified;
end;

procedure addNPatients.SetresultPANo(Index: Integer; const Astring: string);
begin
  FresultPANo := Astring;
  FresultPANo_Specified := True;
end;

function addNPatients.resultPANo_Specified(Index: Integer): boolean;
begin
  Result := FresultPANo_Specified;
end;

procedure getPFResults.SetresultCode(Index: Integer; const Astring: string);
begin
  FresultCode := Astring;
  FresultCode_Specified := True;
end;

function getPFResults.resultCode_Specified(Index: Integer): boolean;
begin
  Result := FresultCode_Specified;
end;

procedure getPFResults.SetresultClass(Index: Integer; const Astring: string);
begin
  FresultClass := Astring;
  FresultClass_Specified := True;
end;

function getPFResults.resultClass_Specified(Index: Integer): boolean;
begin
  Result := FresultClass_Specified;
end;

procedure getPFResults.SetresultMessage(Index: Integer; const Astring: string);
begin
  FresultMessage := Astring;
  FresultMessage_Specified := True;
end;

function getPFResults.resultMessage_Specified(Index: Integer): boolean;
begin
  Result := FresultMessage_Specified;
end;

procedure getPFResults.SetresultPFLen(Index: Integer; const AArrayOfInt: ArrayOfInt);
begin
  FresultPFLen := AArrayOfInt;
  FresultPFLen_Specified := True;
end;

function getPFResults.resultPFLen_Specified(Index: Integer): boolean;
begin
  Result := FresultPFLen_Specified;
end;

procedure getPFResults.SetresultPFContent(Index: Integer; const AArrayOfBase64Binary: ArrayOfBase64Binary);
begin
  FresultPFContent := AArrayOfBase64Binary;
  FresultPFContent_Specified := True;
end;

function getPFResults.resultPFContent_Specified(Index: Integer): boolean;
begin
  Result := FresultPFContent_Specified;
end;

initialization
  InvRegistry.RegisterInterface(TypeInfo(PatientProcsSoap), 'http://www.duzen.com.tr/WSs', 'utf-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(PatientProcsSoap), 'http://www.duzen.com.tr/WSs/%operationName%');
  InvRegistry.RegisterInvokeOptions(TypeInfo(PatientProcsSoap), ioDocument);
  InvRegistry.RegisterInvokeOptions(TypeInfo(PatientProcsSoap), ioSOAP12);
  RemClassRegistry.RegisterXSClass(possTestTimeInf, 'http://www.duzen.com.tr/WSs', 'possTestTimeInf');
  RemClassRegistry.RegisterXSClass(getPResults, 'http://www.duzen.com.tr/WSs', 'getPResults');
  RemClassRegistry.RegisterXSClass(resultDataSet, 'http://www.duzen.com.tr/WSs', 'resultDataSet');
  RemClassRegistry.RegisterXSClass(addNPatients, 'http://www.duzen.com.tr/WSs', 'addNPatients');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfInt), 'http://www.duzen.com.tr/WSs', 'ArrayOfInt');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfBase64Binary), 'http://www.duzen.com.tr/WSs', 'ArrayOfBase64Binary');
  RemClassRegistry.RegisterXSClass(getPFResults, 'http://www.duzen.com.tr/WSs', 'getPFResults');

end.