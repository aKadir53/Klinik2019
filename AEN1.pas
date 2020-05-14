// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : C:\Dializ2007_M3\AEN.wsdl
//  >Import : C:\Dializ2007_M3\AEN.wsdl>0
// Encoding : utf-8
// Version  : 1.0
// (13.12.2016 16:31:05 - - $Rev: 25127 $)
// ************************************************************************ //

unit AEN1;

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
  // !:int             - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:string          - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:dateTime        - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:long            - "http://www.w3.org/2001/XMLSchema"[Gbl]

  C_Result             = class;                 { "http://tempuri.org/"[GblCplx] }
  Result_              = class;                 { "http://tempuri.org/"[Cplx] }
  C_LoginSecurity      = class;                 { "http://tempuri.org/"[Hdr][GblCplx] }
  C_GeneralResult      = class;                 { "http://tempuri.org/"[GblCplx] }
  C_LabRadResultMaster = class;                 { "http://tempuri.org/"[GblCplx] }
  C_LabResult          = class;                 { "http://tempuri.org/"[GblCplx] }
  C_RadResult          = class;                 { "http://tempuri.org/"[GblCplx] }
  C_LabTest            = class;                 { "http://tempuri.org/"[GblCplx] }
  C_Tests              = class;                 { "http://tempuri.org/"[GblCplx] }
  C_LoginSecurity2     = class;                 { "http://tempuri.org/"[Hdr][GblElm] }



  // ************************************************************************ //
  // XML       : C_Result, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  C_Result = class(TRemotable)
  private
    FStatus: Integer;
    FStatusTxt: string;
    FStatusTxt_Specified: boolean;
    FResult_: Result_;
    FResult__Specified: boolean;
    procedure SetStatusTxt(Index: Integer; const Astring: string);
    function  StatusTxt_Specified(Index: Integer): boolean;
    procedure SetResult_(Index: Integer; const AResult_: Result_);
    function  Result__Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property Status:    Integer  read FStatus write FStatus;
    property StatusTxt: string   Index (IS_OPTN) read FStatusTxt write SetStatusTxt stored StatusTxt_Specified;
    property Result_:   Result_  Index (IS_OPTN) read FResult_ write SetResult_ stored Result__Specified;
  end;



  // ************************************************************************ //
  // XML       : Result_, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  Result_ = class(TRemotable)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : C_LoginSecurity, global, <complexType>
  // Namespace : http://tempuri.org/
  // Info      : Header
  // ************************************************************************ //
  C_LoginSecurity = class(TSOAPHeader)
  private
    FUsername: string;
    FUsername_Specified: boolean;
    FPassword: string;
    FPassword_Specified: boolean;
    FID: Integer;
    procedure SetUsername(Index: Integer; const Astring: string);
    function  Username_Specified(Index: Integer): boolean;
    procedure SetPassword(Index: Integer; const Astring: string);
    function  Password_Specified(Index: Integer): boolean;
  published
    property Username: string   Index (IS_OPTN) read FUsername write SetUsername stored Username_Specified;
    property Password: string   Index (IS_OPTN) read FPassword write SetPassword stored Password_Specified;
    property ID:       Integer  read FID write FID;
  end;

  ArrayOfC_LabRadResultMaster = array of C_LabRadResultMaster;   { "http://tempuri.org/"[GblCplx] }


  // ************************************************************************ //
  // XML       : C_GeneralResult, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  C_GeneralResult = class(TRemotable)
  private
    FStatus: Integer;
    FStatusTxt: string;
    FStatusTxt_Specified: boolean;
    FResult_: ArrayOfC_LabRadResultMaster;
    FResult__Specified: boolean;
    procedure SetStatusTxt(Index: Integer; const Astring: string);
    function  StatusTxt_Specified(Index: Integer): boolean;
    procedure SetResult_(Index: Integer; const AArrayOfC_LabRadResultMaster: ArrayOfC_LabRadResultMaster);
    function  Result__Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property Status:    Integer                      read FStatus write FStatus;
    property StatusTxt: string                       Index (IS_OPTN) read FStatusTxt write SetStatusTxt stored StatusTxt_Specified;
    property Result_:   ArrayOfC_LabRadResultMaster  Index (IS_OPTN) read FResult_ write SetResult_ stored Result__Specified;
  end;

  ArrayOfC_LabResult = array of C_LabResult;    { "http://tempuri.org/"[GblCplx] }
  ArrayOfC_RadResult = array of C_RadResult;    { "http://tempuri.org/"[GblCplx] }


  // ************************************************************************ //
  // XML       : C_LabRadResultMaster, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  C_LabRadResultMaster = class(TRemotable)
  private
    FAppType_ID: string;
    FAppType_ID_Specified: boolean;
    FKeyfield: string;
    FKeyfield_Specified: boolean;
    FPTN: string;
    FPTN_Specified: boolean;
    FDate_: string;
    FDate__Specified: boolean;
    FAppointment_Type: string;
    FAppointment_Type_Specified: boolean;
    FUnitDesc: string;
    FUnitDesc_Specified: boolean;
    FDocDesc: string;
    FDocDesc_Specified: boolean;
    FSSN: string;
    FSSN_Specified: boolean;
    FPatient_Code: string;
    FPatient_Code_Specified: boolean;
    FPatDesc: string;
    FPatDesc_Specified: boolean;
    FBirth_Date: string;
    FBirth_Date_Specified: boolean;
    FGender: string;
    FGender_Specified: boolean;
    FApp_IO_Type: string;
    FApp_IO_Type_Specified: boolean;
    FLabResult: ArrayOfC_LabResult;
    FLabResult_Specified: boolean;
    FRadResult: ArrayOfC_RadResult;
    FRadResult_Specified: boolean;
    procedure SetAppType_ID(Index: Integer; const Astring: string);
    function  AppType_ID_Specified(Index: Integer): boolean;
    procedure SetKeyfield(Index: Integer; const Astring: string);
    function  Keyfield_Specified(Index: Integer): boolean;
    procedure SetPTN(Index: Integer; const Astring: string);
    function  PTN_Specified(Index: Integer): boolean;
    procedure SetDate_(Index: Integer; const Astring: string);
    function  Date__Specified(Index: Integer): boolean;
    procedure SetAppointment_Type(Index: Integer; const Astring: string);
    function  Appointment_Type_Specified(Index: Integer): boolean;
    procedure SetUnitDesc(Index: Integer; const Astring: string);
    function  UnitDesc_Specified(Index: Integer): boolean;
    procedure SetDocDesc(Index: Integer; const Astring: string);
    function  DocDesc_Specified(Index: Integer): boolean;
    procedure SetSSN(Index: Integer; const Astring: string);
    function  SSN_Specified(Index: Integer): boolean;
    procedure SetPatient_Code(Index: Integer; const Astring: string);
    function  Patient_Code_Specified(Index: Integer): boolean;
    procedure SetPatDesc(Index: Integer; const Astring: string);
    function  PatDesc_Specified(Index: Integer): boolean;
    procedure SetBirth_Date(Index: Integer; const Astring: string);
    function  Birth_Date_Specified(Index: Integer): boolean;
    procedure SetGender(Index: Integer; const Astring: string);
    function  Gender_Specified(Index: Integer): boolean;
    procedure SetApp_IO_Type(Index: Integer; const Astring: string);
    function  App_IO_Type_Specified(Index: Integer): boolean;
    procedure SetLabResult(Index: Integer; const AArrayOfC_LabResult: ArrayOfC_LabResult);
    function  LabResult_Specified(Index: Integer): boolean;
    procedure SetRadResult(Index: Integer; const AArrayOfC_RadResult: ArrayOfC_RadResult);
    function  RadResult_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property AppType_ID:       string              Index (IS_OPTN) read FAppType_ID write SetAppType_ID stored AppType_ID_Specified;
    property Keyfield:         string              Index (IS_OPTN) read FKeyfield write SetKeyfield stored Keyfield_Specified;
    property PTN:              string              Index (IS_OPTN) read FPTN write SetPTN stored PTN_Specified;
    property Date_:            string              Index (IS_OPTN) read FDate_ write SetDate_ stored Date__Specified;
    property Appointment_Type: string              Index (IS_OPTN) read FAppointment_Type write SetAppointment_Type stored Appointment_Type_Specified;
    property UnitDesc:         string              Index (IS_OPTN) read FUnitDesc write SetUnitDesc stored UnitDesc_Specified;
    property DocDesc:          string              Index (IS_OPTN) read FDocDesc write SetDocDesc stored DocDesc_Specified;
    property SSN:              string              Index (IS_OPTN) read FSSN write SetSSN stored SSN_Specified;
    property Patient_Code:     string              Index (IS_OPTN) read FPatient_Code write SetPatient_Code stored Patient_Code_Specified;
    property PatDesc:          string              Index (IS_OPTN) read FPatDesc write SetPatDesc stored PatDesc_Specified;
    property Birth_Date:       string              Index (IS_OPTN) read FBirth_Date write SetBirth_Date stored Birth_Date_Specified;
    property Gender:           string              Index (IS_OPTN) read FGender write SetGender stored Gender_Specified;
    property App_IO_Type:      string              Index (IS_OPTN) read FApp_IO_Type write SetApp_IO_Type stored App_IO_Type_Specified;
    property LabResult:        ArrayOfC_LabResult  Index (IS_OPTN) read FLabResult write SetLabResult stored LabResult_Specified;
    property RadResult:        ArrayOfC_RadResult  Index (IS_OPTN) read FRadResult write SetRadResult stored RadResult_Specified;
  end;



  // ************************************************************************ //
  // XML       : C_LabResult, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  C_LabResult = class(TRemotable)
  private
    FSUTCode: string;
    FSUTCode_Specified: boolean;
    FMCode: string;
    FMCode_Specified: boolean;
    FMDesc: string;
    FMDesc_Specified: boolean;
    FTCode: string;
    FTCode_Specified: boolean;
    FTDesc: string;
    FTDesc_Specified: boolean;
    FResult_Date: string;
    FResult_Date_Specified: boolean;
    FTest_Unit_Code: string;
    FTest_Unit_Code_Specified: boolean;
    FResult_Value: string;
    FResult_Value_Specified: boolean;
    FResult_Text: string;
    FResult_Text_Specified: boolean;
    FResult_Manuel_Text: string;
    FResult_Manuel_Text_Specified: boolean;
    FNValue_Def_Text: string;
    FNValue_Def_Text_Specified: boolean;
    FNValue_Text: string;
    FNValue_Text_Specified: boolean;
    FNValue_Min: string;
    FNValue_Min_Specified: boolean;
    FNValue_Max: string;
    FNValue_Max_Specified: boolean;
    procedure SetSUTCode(Index: Integer; const Astring: string);
    function  SUTCode_Specified(Index: Integer): boolean;
    procedure SetMCode(Index: Integer; const Astring: string);
    function  MCode_Specified(Index: Integer): boolean;
    procedure SetMDesc(Index: Integer; const Astring: string);
    function  MDesc_Specified(Index: Integer): boolean;
    procedure SetTCode(Index: Integer; const Astring: string);
    function  TCode_Specified(Index: Integer): boolean;
    procedure SetTDesc(Index: Integer; const Astring: string);
    function  TDesc_Specified(Index: Integer): boolean;
    procedure SetResult_Date(Index: Integer; const Astring: string);
    function  Result_Date_Specified(Index: Integer): boolean;
    procedure SetTest_Unit_Code(Index: Integer; const Astring: string);
    function  Test_Unit_Code_Specified(Index: Integer): boolean;
    procedure SetResult_Value(Index: Integer; const Astring: string);
    function  Result_Value_Specified(Index: Integer): boolean;
    procedure SetResult_Text(Index: Integer; const Astring: string);
    function  Result_Text_Specified(Index: Integer): boolean;
    procedure SetResult_Manuel_Text(Index: Integer; const Astring: string);
    function  Result_Manuel_Text_Specified(Index: Integer): boolean;
    procedure SetNValue_Def_Text(Index: Integer; const Astring: string);
    function  NValue_Def_Text_Specified(Index: Integer): boolean;
    procedure SetNValue_Text(Index: Integer; const Astring: string);
    function  NValue_Text_Specified(Index: Integer): boolean;
    procedure SetNValue_Min(Index: Integer; const Astring: string);
    function  NValue_Min_Specified(Index: Integer): boolean;
    procedure SetNValue_Max(Index: Integer; const Astring: string);
    function  NValue_Max_Specified(Index: Integer): boolean;
  published
    property SUTCode:            string  Index (IS_OPTN) read FSUTCode write SetSUTCode stored SUTCode_Specified;
    property MCode:              string  Index (IS_OPTN) read FMCode write SetMCode stored MCode_Specified;
    property MDesc:              string  Index (IS_OPTN) read FMDesc write SetMDesc stored MDesc_Specified;
    property TCode:              string  Index (IS_OPTN) read FTCode write SetTCode stored TCode_Specified;
    property TDesc:              string  Index (IS_OPTN) read FTDesc write SetTDesc stored TDesc_Specified;
    property Result_Date:        string  Index (IS_OPTN) read FResult_Date write SetResult_Date stored Result_Date_Specified;
    property Test_Unit_Code:     string  Index (IS_OPTN) read FTest_Unit_Code write SetTest_Unit_Code stored Test_Unit_Code_Specified;
    property Result_Value:       string  Index (IS_OPTN) read FResult_Value write SetResult_Value stored Result_Value_Specified;
    property Result_Text:        string  Index (IS_OPTN) read FResult_Text write SetResult_Text stored Result_Text_Specified;
    property Result_Manuel_Text: string  Index (IS_OPTN) read FResult_Manuel_Text write SetResult_Manuel_Text stored Result_Manuel_Text_Specified;
    property NValue_Def_Text:    string  Index (IS_OPTN) read FNValue_Def_Text write SetNValue_Def_Text stored NValue_Def_Text_Specified;
    property NValue_Text:        string  Index (IS_OPTN) read FNValue_Text write SetNValue_Text stored NValue_Text_Specified;
    property NValue_Min:         string  Index (IS_OPTN) read FNValue_Min write SetNValue_Min stored NValue_Min_Specified;
    property NValue_Max:         string  Index (IS_OPTN) read FNValue_Max write SetNValue_Max stored NValue_Max_Specified;
  end;



  // ************************************************************************ //
  // XML       : C_RadResult, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  C_RadResult = class(TRemotable)
  private
    FDate_: string;
    FDate__Specified: boolean;
    FReport_Title: string;
    FReport_Title_Specified: boolean;
    FReport_Text: string;
    FReport_Text_Specified: boolean;
    procedure SetDate_(Index: Integer; const Astring: string);
    function  Date__Specified(Index: Integer): boolean;
    procedure SetReport_Title(Index: Integer; const Astring: string);
    function  Report_Title_Specified(Index: Integer): boolean;
    procedure SetReport_Text(Index: Integer; const Astring: string);
    function  Report_Text_Specified(Index: Integer): boolean;
  published
    property Date_:        string  Index (IS_OPTN) read FDate_ write SetDate_ stored Date__Specified;
    property Report_Title: string  Index (IS_OPTN) read FReport_Title write SetReport_Title stored Report_Title_Specified;
    property Report_Text:  string  Index (IS_OPTN) read FReport_Text write SetReport_Text stored Report_Text_Specified;
  end;

  ArrayOfC_Tests = array of C_Tests;            { "http://tempuri.org/"[GblCplx] }


  // ************************************************************************ //
  // XML       : C_LabTest, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  C_LabTest = class(TRemotable)
  private
    FStatus: Integer;
    FStatusTxt: string;
    FStatusTxt_Specified: boolean;
    FSUTCode: string;
    FSUTCode_Specified: boolean;
    FLabResult: ArrayOfC_Tests;
    FLabResult_Specified: boolean;
    procedure SetStatusTxt(Index: Integer; const Astring: string);
    function  StatusTxt_Specified(Index: Integer): boolean;
    procedure SetSUTCode(Index: Integer; const Astring: string);
    function  SUTCode_Specified(Index: Integer): boolean;
    procedure SetLabResult(Index: Integer; const AArrayOfC_Tests: ArrayOfC_Tests);
    function  LabResult_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property Status:    Integer         read FStatus write FStatus;
    property StatusTxt: string          Index (IS_OPTN) read FStatusTxt write SetStatusTxt stored StatusTxt_Specified;
    property SUTCode:   string          Index (IS_OPTN) read FSUTCode write SetSUTCode stored SUTCode_Specified;
    property LabResult: ArrayOfC_Tests  Index (IS_OPTN) read FLabResult write SetLabResult stored LabResult_Specified;
  end;



  // ************************************************************************ //
  // XML       : C_Tests, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  C_Tests = class(TRemotable)
  private
    FSUTCode: string;
    FSUTCode_Specified: boolean;
    FMCode: string;
    FMCode_Specified: boolean;
    FMDesc: string;
    FMDesc_Specified: boolean;
    FTCode: string;
    FTCode_Specified: boolean;
    FTDesc: string;
    FTDesc_Specified: boolean;
    procedure SetSUTCode(Index: Integer; const Astring: string);
    function  SUTCode_Specified(Index: Integer): boolean;
    procedure SetMCode(Index: Integer; const Astring: string);
    function  MCode_Specified(Index: Integer): boolean;
    procedure SetMDesc(Index: Integer; const Astring: string);
    function  MDesc_Specified(Index: Integer): boolean;
    procedure SetTCode(Index: Integer; const Astring: string);
    function  TCode_Specified(Index: Integer): boolean;
    procedure SetTDesc(Index: Integer; const Astring: string);
    function  TDesc_Specified(Index: Integer): boolean;
  published
    property SUTCode: string  Index (IS_OPTN) read FSUTCode write SetSUTCode stored SUTCode_Specified;
    property MCode:   string  Index (IS_OPTN) read FMCode write SetMCode stored MCode_Specified;
    property MDesc:   string  Index (IS_OPTN) read FMDesc write SetMDesc stored MDesc_Specified;
    property TCode:   string  Index (IS_OPTN) read FTCode write SetTCode stored TCode_Specified;
    property TDesc:   string  Index (IS_OPTN) read FTDesc write SetTDesc stored TDesc_Specified;
  end;



  // ************************************************************************ //
  // XML       : C_LoginSecurity, global, <element>
  // Namespace : http://tempuri.org/
  // Info      : Header
  // ************************************************************************ //
  C_LoginSecurity2 = class(C_LoginSecurity)
  private
  published
  end;


  // ************************************************************************ //
  // Namespace : http://tempuri.org/
  // soapAction: http://tempuri.org/%operationName%
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : document
  // binding   : UtilsSrvSoap12
  // service   : UtilsSrv
  // port      : UtilsSrvSoap12
  // URL       : http://78.188.62.26:9192/UtilsSrv.asmx
  // ************************************************************************ //
  UtilsSrvSoap = interface(IInvokable)
  ['{011A160E-80AD-FBF2-33C4-27F0405B25A8}']

    // Headers: C_LoginSecurity:pIn
    function  GetLabRadMasterList(const SSN: string): C_Result; stdcall;

    // Headers: C_LoginSecurity:pIn
    function  GetLabRadMasterListDate(const SSN: string; const DateStart: TXSDateTime; const DateEnd: TXSDateTime): C_Result; stdcall;

    // Headers: C_LoginSecurity:pIn
    function  GetLabRadResultsDate(const SSN: string; const DateStart: TXSDateTime; const DateEnd: TXSDateTime): C_GeneralResult; stdcall;

    // Headers: C_LoginSecurity:pIn
    function  GetRadiologyResults(const AppType_ID: Int64): C_Result; stdcall;

    // Headers: C_LoginSecurity:pIn
    function  GetLabResults(const AppType_ID: Int64): C_Result; stdcall;

    // Headers: C_LoginSecurity:pIn
    function  GetSUTCodeTests(const SUTCode: string): C_LabTest; stdcall;
  end;

function GetUtilsSrvSoap(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): UtilsSrvSoap;


implementation
  uses SysUtils;

function GetUtilsSrvSoap(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): UtilsSrvSoap;
const
  defWSDL = 'C:\Dializ2007_M3\AEN.wsdl';
  defURL  = 'http://78.188.62.26:9192/UtilsSrv.asmx';
  defSvc  = 'UtilsSrv';
  defPrt  = 'UtilsSrvSoap12';
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
    Result := (RIO as UtilsSrvSoap);
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


destructor C_Result.Destroy;
begin
  SysUtils.FreeAndNil(FResult_);
  inherited Destroy;
end;

procedure C_Result.SetStatusTxt(Index: Integer; const Astring: string);
begin
  FStatusTxt := Astring;
  FStatusTxt_Specified := True;
end;

function C_Result.StatusTxt_Specified(Index: Integer): boolean;
begin
  Result := FStatusTxt_Specified;
end;

procedure C_Result.SetResult_(Index: Integer; const AResult_: Result_);
begin
  FResult_ := AResult_;
  FResult__Specified := True;
end;

function C_Result.Result__Specified(Index: Integer): boolean;
begin
  Result := FResult__Specified;
end;

procedure C_LoginSecurity.SetUsername(Index: Integer; const Astring: string);
begin
  FUsername := Astring;
  FUsername_Specified := True;
end;

function C_LoginSecurity.Username_Specified(Index: Integer): boolean;
begin
  Result := FUsername_Specified;
end;

procedure C_LoginSecurity.SetPassword(Index: Integer; const Astring: string);
begin
  FPassword := Astring;
  FPassword_Specified := True;
end;

function C_LoginSecurity.Password_Specified(Index: Integer): boolean;
begin
  Result := FPassword_Specified;
end;

destructor C_GeneralResult.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FResult_)-1 do
    SysUtils.FreeAndNil(FResult_[I]);
  System.SetLength(FResult_, 0);
  inherited Destroy;
end;

procedure C_GeneralResult.SetStatusTxt(Index: Integer; const Astring: string);
begin
  FStatusTxt := Astring;
  FStatusTxt_Specified := True;
end;

function C_GeneralResult.StatusTxt_Specified(Index: Integer): boolean;
begin
  Result := FStatusTxt_Specified;
end;

procedure C_GeneralResult.SetResult_(Index: Integer; const AArrayOfC_LabRadResultMaster: ArrayOfC_LabRadResultMaster);
begin
  FResult_ := AArrayOfC_LabRadResultMaster;
  FResult__Specified := True;
end;

function C_GeneralResult.Result__Specified(Index: Integer): boolean;
begin
  Result := FResult__Specified;
end;

destructor C_LabRadResultMaster.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FLabResult)-1 do
    SysUtils.FreeAndNil(FLabResult[I]);
  System.SetLength(FLabResult, 0);
  for I := 0 to System.Length(FRadResult)-1 do
    SysUtils.FreeAndNil(FRadResult[I]);
  System.SetLength(FRadResult, 0);
  inherited Destroy;
end;

procedure C_LabRadResultMaster.SetAppType_ID(Index: Integer; const Astring: string);
begin
  FAppType_ID := Astring;
  FAppType_ID_Specified := True;
end;

function C_LabRadResultMaster.AppType_ID_Specified(Index: Integer): boolean;
begin
  Result := FAppType_ID_Specified;
end;

procedure C_LabRadResultMaster.SetKeyfield(Index: Integer; const Astring: string);
begin
  FKeyfield := Astring;
  FKeyfield_Specified := True;
end;

function C_LabRadResultMaster.Keyfield_Specified(Index: Integer): boolean;
begin
  Result := FKeyfield_Specified;
end;

procedure C_LabRadResultMaster.SetPTN(Index: Integer; const Astring: string);
begin
  FPTN := Astring;
  FPTN_Specified := True;
end;

function C_LabRadResultMaster.PTN_Specified(Index: Integer): boolean;
begin
  Result := FPTN_Specified;
end;

procedure C_LabRadResultMaster.SetDate_(Index: Integer; const Astring: string);
begin
  FDate_ := Astring;
  FDate__Specified := True;
end;

function C_LabRadResultMaster.Date__Specified(Index: Integer): boolean;
begin
  Result := FDate__Specified;
end;

procedure C_LabRadResultMaster.SetAppointment_Type(Index: Integer; const Astring: string);
begin
  FAppointment_Type := Astring;
  FAppointment_Type_Specified := True;
end;

function C_LabRadResultMaster.Appointment_Type_Specified(Index: Integer): boolean;
begin
  Result := FAppointment_Type_Specified;
end;

procedure C_LabRadResultMaster.SetUnitDesc(Index: Integer; const Astring: string);
begin
  FUnitDesc := Astring;
  FUnitDesc_Specified := True;
end;

function C_LabRadResultMaster.UnitDesc_Specified(Index: Integer): boolean;
begin
  Result := FUnitDesc_Specified;
end;

procedure C_LabRadResultMaster.SetDocDesc(Index: Integer; const Astring: string);
begin
  FDocDesc := Astring;
  FDocDesc_Specified := True;
end;

function C_LabRadResultMaster.DocDesc_Specified(Index: Integer): boolean;
begin
  Result := FDocDesc_Specified;
end;

procedure C_LabRadResultMaster.SetSSN(Index: Integer; const Astring: string);
begin
  FSSN := Astring;
  FSSN_Specified := True;
end;

function C_LabRadResultMaster.SSN_Specified(Index: Integer): boolean;
begin
  Result := FSSN_Specified;
end;

procedure C_LabRadResultMaster.SetPatient_Code(Index: Integer; const Astring: string);
begin
  FPatient_Code := Astring;
  FPatient_Code_Specified := True;
end;

function C_LabRadResultMaster.Patient_Code_Specified(Index: Integer): boolean;
begin
  Result := FPatient_Code_Specified;
end;

procedure C_LabRadResultMaster.SetPatDesc(Index: Integer; const Astring: string);
begin
  FPatDesc := Astring;
  FPatDesc_Specified := True;
end;

function C_LabRadResultMaster.PatDesc_Specified(Index: Integer): boolean;
begin
  Result := FPatDesc_Specified;
end;

procedure C_LabRadResultMaster.SetBirth_Date(Index: Integer; const Astring: string);
begin
  FBirth_Date := Astring;
  FBirth_Date_Specified := True;
end;

function C_LabRadResultMaster.Birth_Date_Specified(Index: Integer): boolean;
begin
  Result := FBirth_Date_Specified;
end;

procedure C_LabRadResultMaster.SetGender(Index: Integer; const Astring: string);
begin
  FGender := Astring;
  FGender_Specified := True;
end;

function C_LabRadResultMaster.Gender_Specified(Index: Integer): boolean;
begin
  Result := FGender_Specified;
end;

procedure C_LabRadResultMaster.SetApp_IO_Type(Index: Integer; const Astring: string);
begin
  FApp_IO_Type := Astring;
  FApp_IO_Type_Specified := True;
end;

function C_LabRadResultMaster.App_IO_Type_Specified(Index: Integer): boolean;
begin
  Result := FApp_IO_Type_Specified;
end;

procedure C_LabRadResultMaster.SetLabResult(Index: Integer; const AArrayOfC_LabResult: ArrayOfC_LabResult);
begin
  FLabResult := AArrayOfC_LabResult;
  FLabResult_Specified := True;
end;

function C_LabRadResultMaster.LabResult_Specified(Index: Integer): boolean;
begin
  Result := FLabResult_Specified;
end;

procedure C_LabRadResultMaster.SetRadResult(Index: Integer; const AArrayOfC_RadResult: ArrayOfC_RadResult);
begin
  FRadResult := AArrayOfC_RadResult;
  FRadResult_Specified := True;
end;

function C_LabRadResultMaster.RadResult_Specified(Index: Integer): boolean;
begin
  Result := FRadResult_Specified;
end;

procedure C_LabResult.SetSUTCode(Index: Integer; const Astring: string);
begin
  FSUTCode := Astring;
  FSUTCode_Specified := True;
end;

function C_LabResult.SUTCode_Specified(Index: Integer): boolean;
begin
  Result := FSUTCode_Specified;
end;

procedure C_LabResult.SetMCode(Index: Integer; const Astring: string);
begin
  FMCode := Astring;
  FMCode_Specified := True;
end;

function C_LabResult.MCode_Specified(Index: Integer): boolean;
begin
  Result := FMCode_Specified;
end;

procedure C_LabResult.SetMDesc(Index: Integer; const Astring: string);
begin
  FMDesc := Astring;
  FMDesc_Specified := True;
end;

function C_LabResult.MDesc_Specified(Index: Integer): boolean;
begin
  Result := FMDesc_Specified;
end;

procedure C_LabResult.SetTCode(Index: Integer; const Astring: string);
begin
  FTCode := Astring;
  FTCode_Specified := True;
end;

function C_LabResult.TCode_Specified(Index: Integer): boolean;
begin
  Result := FTCode_Specified;
end;

procedure C_LabResult.SetTDesc(Index: Integer; const Astring: string);
begin
  FTDesc := Astring;
  FTDesc_Specified := True;
end;

function C_LabResult.TDesc_Specified(Index: Integer): boolean;
begin
  Result := FTDesc_Specified;
end;

procedure C_LabResult.SetResult_Date(Index: Integer; const Astring: string);
begin
  FResult_Date := Astring;
  FResult_Date_Specified := True;
end;

function C_LabResult.Result_Date_Specified(Index: Integer): boolean;
begin
  Result := FResult_Date_Specified;
end;

procedure C_LabResult.SetTest_Unit_Code(Index: Integer; const Astring: string);
begin
  FTest_Unit_Code := Astring;
  FTest_Unit_Code_Specified := True;
end;

function C_LabResult.Test_Unit_Code_Specified(Index: Integer): boolean;
begin
  Result := FTest_Unit_Code_Specified;
end;

procedure C_LabResult.SetResult_Value(Index: Integer; const Astring: string);
begin
  FResult_Value := Astring;
  FResult_Value_Specified := True;
end;

function C_LabResult.Result_Value_Specified(Index: Integer): boolean;
begin
  Result := FResult_Value_Specified;
end;

procedure C_LabResult.SetResult_Text(Index: Integer; const Astring: string);
begin
  FResult_Text := Astring;
  FResult_Text_Specified := True;
end;

function C_LabResult.Result_Text_Specified(Index: Integer): boolean;
begin
  Result := FResult_Text_Specified;
end;

procedure C_LabResult.SetResult_Manuel_Text(Index: Integer; const Astring: string);
begin
  FResult_Manuel_Text := Astring;
  FResult_Manuel_Text_Specified := True;
end;

function C_LabResult.Result_Manuel_Text_Specified(Index: Integer): boolean;
begin
  Result := FResult_Manuel_Text_Specified;
end;

procedure C_LabResult.SetNValue_Def_Text(Index: Integer; const Astring: string);
begin
  FNValue_Def_Text := Astring;
  FNValue_Def_Text_Specified := True;
end;

function C_LabResult.NValue_Def_Text_Specified(Index: Integer): boolean;
begin
  Result := FNValue_Def_Text_Specified;
end;

procedure C_LabResult.SetNValue_Text(Index: Integer; const Astring: string);
begin
  FNValue_Text := Astring;
  FNValue_Text_Specified := True;
end;

function C_LabResult.NValue_Text_Specified(Index: Integer): boolean;
begin
  Result := FNValue_Text_Specified;
end;

procedure C_LabResult.SetNValue_Min(Index: Integer; const Astring: string);
begin
  FNValue_Min := Astring;
  FNValue_Min_Specified := True;
end;

function C_LabResult.NValue_Min_Specified(Index: Integer): boolean;
begin
  Result := FNValue_Min_Specified;
end;

procedure C_LabResult.SetNValue_Max(Index: Integer; const Astring: string);
begin
  FNValue_Max := Astring;
  FNValue_Max_Specified := True;
end;

function C_LabResult.NValue_Max_Specified(Index: Integer): boolean;
begin
  Result := FNValue_Max_Specified;
end;

procedure C_RadResult.SetDate_(Index: Integer; const Astring: string);
begin
  FDate_ := Astring;
  FDate__Specified := True;
end;

function C_RadResult.Date__Specified(Index: Integer): boolean;
begin
  Result := FDate__Specified;
end;

procedure C_RadResult.SetReport_Title(Index: Integer; const Astring: string);
begin
  FReport_Title := Astring;
  FReport_Title_Specified := True;
end;

function C_RadResult.Report_Title_Specified(Index: Integer): boolean;
begin
  Result := FReport_Title_Specified;
end;

procedure C_RadResult.SetReport_Text(Index: Integer; const Astring: string);
begin
  FReport_Text := Astring;
  FReport_Text_Specified := True;
end;

function C_RadResult.Report_Text_Specified(Index: Integer): boolean;
begin
  Result := FReport_Text_Specified;
end;

destructor C_LabTest.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FLabResult)-1 do
    SysUtils.FreeAndNil(FLabResult[I]);
  System.SetLength(FLabResult, 0);
  inherited Destroy;
end;

procedure C_LabTest.SetStatusTxt(Index: Integer; const Astring: string);
begin
  FStatusTxt := Astring;
  FStatusTxt_Specified := True;
end;

function C_LabTest.StatusTxt_Specified(Index: Integer): boolean;
begin
  Result := FStatusTxt_Specified;
end;

procedure C_LabTest.SetSUTCode(Index: Integer; const Astring: string);
begin
  FSUTCode := Astring;
  FSUTCode_Specified := True;
end;

function C_LabTest.SUTCode_Specified(Index: Integer): boolean;
begin
  Result := FSUTCode_Specified;
end;

procedure C_LabTest.SetLabResult(Index: Integer; const AArrayOfC_Tests: ArrayOfC_Tests);
begin
  FLabResult := AArrayOfC_Tests;
  FLabResult_Specified := True;
end;

function C_LabTest.LabResult_Specified(Index: Integer): boolean;
begin
  Result := FLabResult_Specified;
end;

procedure C_Tests.SetSUTCode(Index: Integer; const Astring: string);
begin
  FSUTCode := Astring;
  FSUTCode_Specified := True;
end;

function C_Tests.SUTCode_Specified(Index: Integer): boolean;
begin
  Result := FSUTCode_Specified;
end;

procedure C_Tests.SetMCode(Index: Integer; const Astring: string);
begin
  FMCode := Astring;
  FMCode_Specified := True;
end;

function C_Tests.MCode_Specified(Index: Integer): boolean;
begin
  Result := FMCode_Specified;
end;

procedure C_Tests.SetMDesc(Index: Integer; const Astring: string);
begin
  FMDesc := Astring;
  FMDesc_Specified := True;
end;

function C_Tests.MDesc_Specified(Index: Integer): boolean;
begin
  Result := FMDesc_Specified;
end;

procedure C_Tests.SetTCode(Index: Integer; const Astring: string);
begin
  FTCode := Astring;
  FTCode_Specified := True;
end;

function C_Tests.TCode_Specified(Index: Integer): boolean;
begin
  Result := FTCode_Specified;
end;

procedure C_Tests.SetTDesc(Index: Integer; const Astring: string);
begin
  FTDesc := Astring;
  FTDesc_Specified := True;
end;

function C_Tests.TDesc_Specified(Index: Integer): boolean;
begin
  Result := FTDesc_Specified;
end;

initialization
  InvRegistry.RegisterInterface(TypeInfo(UtilsSrvSoap), 'http://tempuri.org/', 'utf-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(UtilsSrvSoap), 'http://tempuri.org/%operationName%');
  InvRegistry.RegisterInvokeOptions(TypeInfo(UtilsSrvSoap), ioDocument);
  InvRegistry.RegisterInvokeOptions(TypeInfo(UtilsSrvSoap), ioSOAP12);
  InvRegistry.RegisterHeaderClass(TypeInfo(UtilsSrvSoap), C_LoginSecurity2, 'C_LoginSecurity', 'http://tempuri.org/');
  RemClassRegistry.RegisterXSClass(C_Result, 'http://tempuri.org/', 'C_Result');
  RemClassRegistry.RegisterXSClass(Result_, 'http://tempuri.org/', 'Result_');
  RemClassRegistry.RegisterXSClass(C_LoginSecurity, 'http://tempuri.org/', 'C_LoginSecurity');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfC_LabRadResultMaster), 'http://tempuri.org/', 'ArrayOfC_LabRadResultMaster');
  RemClassRegistry.RegisterXSClass(C_GeneralResult, 'http://tempuri.org/', 'C_GeneralResult');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfC_LabResult), 'http://tempuri.org/', 'ArrayOfC_LabResult');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfC_RadResult), 'http://tempuri.org/', 'ArrayOfC_RadResult');
  RemClassRegistry.RegisterXSClass(C_LabRadResultMaster, 'http://tempuri.org/', 'C_LabRadResultMaster');
  RemClassRegistry.RegisterXSClass(C_LabResult, 'http://tempuri.org/', 'C_LabResult');
  RemClassRegistry.RegisterXSClass(C_RadResult, 'http://tempuri.org/', 'C_RadResult');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfC_Tests), 'http://tempuri.org/', 'ArrayOfC_Tests');
  RemClassRegistry.RegisterXSClass(C_LabTest, 'http://tempuri.org/', 'C_LabTest');
  RemClassRegistry.RegisterXSClass(C_Tests, 'http://tempuri.org/', 'C_Tests');
  RemClassRegistry.RegisterXSClass(C_LoginSecurity2, 'http://tempuri.org/', 'C_LoginSecurity2', 'C_LoginSecurity');

end.