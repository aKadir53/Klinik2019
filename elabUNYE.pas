// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : http://95.9.52.165:5252/webservices/elab/elab.php?wsdl
//  >Import : http://95.9.52.165:5252/webservices/elab/elab.php?wsdl>0
// Encoding : utf-8
// Version  : 1.0
// (12.06.2020 17:50:11 - - $Rev: 45757 $)
// ************************************************************************ //

unit elabUNYE;

interface

uses InvokeRegistry, SOAPHTTPClient, Types, XSBuiltIns;

const
  IS_OPTN = $0001;
  IS_UNBD = $0002;
  IS_UNQL = $0008;
  IS_REF  = $0080;


type

  // ************************************************************************ //
  // The following types, referred to in the WSDL document are not being represented
  // in this file. They are either aliases[@] of other types represented or were referred
  // to but never[!] declared in the document. The types from the latter category
  // typically map to predefined/known XML or Embarcadero types; however, they could also 
  // indicate incorrect WSDL documents that failed to declare or import a schema type.
  // ************************************************************************ //
  // !:boolean         - "http://95.9.52.165:5252/webservices/elab/elab.php"[Gbl]
  // !:base64Binary    - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:decimal         - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:int             - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:string          - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:dateTime        - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:date            - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:long            - "http://www.w3.org/2001/XMLSchema"[Gbl]

  GetTestResultWithBarcodeNoResponse = class;   { "http://95.9.52.165:5252/webservices/elab/elab.php"[Lit][GblElm] }
  GetTestResultWithProtocolNoResponse = class;   { "http://95.9.52.165:5252/webservices/elab/elab.php"[Lit][GblElm] }
  GetTestResultWithReferenceCodeResponse = class;   { "http://95.9.52.165:5252/webservices/elab/elab.php"[Lit][GblElm] }
  GetTestResultWithProcessNoResponse = class;   { "http://95.9.52.165:5252/webservices/elab/elab.php"[Lit][GblElm] }
  GetTestListWithDateRangeResponse = class;     { "http://95.9.52.165:5252/webservices/elab/elab.php"[Lit][GblElm] }
  GetTestListWithBarcodeNoResponse = class;     { "http://95.9.52.165:5252/webservices/elab/elab.php"[Lit][GblElm] }
  GetTestResultWithPatientNoResponse = class;   { "http://95.9.52.165:5252/webservices/elab/elab.php"[Lit][GblElm] }
  GetTestResultWithTCKNoResponse = class;       { "http://95.9.52.165:5252/webservices/elab/elab.php"[Lit][GblElm] }
  GetReportListResponse = class;                { "http://95.9.52.165:5252/webservices/elab/elab.php"[Lit][GblElm] }
  GetReportFileResponse = class;                { "http://95.9.52.165:5252/webservices/elab/elab.php"[Lit][GblElm] }
  SetTestResultWithBarcodeNoResponse = class;   { "http://95.9.52.165:5252/webservices/elab/elab.php"[Lit][GblElm] }
  GetTestResultWithDateRangeResponse = class;   { "http://95.9.52.165:5252/webservices/elab/elab.php"[Lit][GblElm] }
  GetPhoneNumberResponse = class;               { "http://95.9.52.165:5252/webservices/elab/elab.php"[Lit][GblElm] }
  SetAntibiogramResultWithBarcodeNoResponse = class;   { "http://95.9.52.165:5252/webservices/elab/elab.php"[Lit][GblElm] }
  Login                = class;                 { "http://95.9.52.165:5252/webservices/elab/elab.php"[GblCplx] }
  NewPatientRegisterInfo = class;               { "http://95.9.52.165:5252/webservices/elab/elab.php"[GblCplx] }
  ReportFile           = class;                 { "http://95.9.52.165:5252/webservices/elab/elab.php"[Cplx] }
  Test                 = class;                 { "http://95.9.52.165:5252/webservices/elab/elab.php"[GblCplx] }
  SetAntibiogramResultWithBarcodeNoRequest = class;   { "http://95.9.52.165:5252/webservices/elab/elab.php"[Lit][GblElm] }
  GetPhoneNumberRequest = class;                { "http://95.9.52.165:5252/webservices/elab/elab.php"[Lit][GblElm] }
  SetAntibiogramResultWithBarcodeNoResult = class;   { "http://95.9.52.165:5252/webservices/elab/elab.php"[Cplx] }
  SetTestResultWithBarcodeNoResult = class;     { "http://95.9.52.165:5252/webservices/elab/elab.php"[Cplx] }
  SetTestResultWithBarcodeNoRequest = class;    { "http://95.9.52.165:5252/webservices/elab/elab.php"[Lit][GblElm] }
  RequestFault         = class;                 { "http://95.9.52.165:5252/webservices/elab/elab.php"[Flt][GblElm] }
  GetReportFileResult  = class;                 { "http://95.9.52.165:5252/webservices/elab/elab.php"[Cplx] }
  GetReportListRequest = class;                 { "http://95.9.52.165:5252/webservices/elab/elab.php"[Lit][GblElm] }
  GetTestResultWithBarcodeNoRequest = class;    { "http://95.9.52.165:5252/webservices/elab/elab.php"[Lit][GblElm] }
  GetTestResultWithProtocolNoRequest = class;   { "http://95.9.52.165:5252/webservices/elab/elab.php"[Lit][GblElm] }
  GetTestResultWithReferenceCodeRequest = class;   { "http://95.9.52.165:5252/webservices/elab/elab.php"[Lit][GblElm] }
  GetTestResultWithProcessNoRequest = class;    { "http://95.9.52.165:5252/webservices/elab/elab.php"[Lit][GblElm] }
  GetTestListWithBarcodeNoRequest = class;      { "http://95.9.52.165:5252/webservices/elab/elab.php"[Lit][GblElm] }
  GetPhoneNumberResult = class;                 { "http://95.9.52.165:5252/webservices/elab/elab.php"[Cplx] }
  NewPatientContactInfo = class;                { "http://95.9.52.165:5252/webservices/elab/elab.php"[GblCplx] }
  NewTest              = class;                 { "http://95.9.52.165:5252/webservices/elab/elab.php"[GblCplx] }
  TestResult           = class;                 { "http://95.9.52.165:5252/webservices/elab/elab.php"[GblCplx] }
  GetTestResultWithDateRangeRequest = class;    { "http://95.9.52.165:5252/webservices/elab/elab.php"[Lit][GblElm] }
  GetTestResultWithTCKNoRequest = class;        { "http://95.9.52.165:5252/webservices/elab/elab.php"[Lit][GblElm] }
  GetTestResultWithPatientNoRequest = class;    { "http://95.9.52.165:5252/webservices/elab/elab.php"[Lit][GblElm] }
  GetTestListWithDateRangeRequest = class;      { "http://95.9.52.165:5252/webservices/elab/elab.php"[Lit][GblElm] }
  AddedTest            = class;                 { "http://95.9.52.165:5252/webservices/elab/elab.php"[GblCplx] }
  NewPatientInfo       = class;                 { "http://95.9.52.165:5252/webservices/elab/elab.php"[GblCplx] }
  PatientInfo          = class;                 { "http://95.9.52.165:5252/webservices/elab/elab.php"[GblCplx] }
  GetTestListWithTCKNoRequest = class;          { "http://95.9.52.165:5252/webservices/elab/elab.php"[Lit][GblElm] }
  AddNewPatientRecordResponse = class;          { "http://95.9.52.165:5252/webservices/elab/elab.php"[Lit][GblElm] }
  AddNewPatientRecordResult = class;            { "http://95.9.52.165:5252/webservices/elab/elab.php"[Cplx] }
  GetTestListWithProtocolNoRequest = class;     { "http://95.9.52.165:5252/webservices/elab/elab.php"[Lit][GblElm] }
  GetTestListWithProtocolNoResponse = class;    { "http://95.9.52.165:5252/webservices/elab/elab.php"[Lit][GblElm] }
  GetTestListWithTCKNoResponse = class;         { "http://95.9.52.165:5252/webservices/elab/elab.php"[Lit][GblElm] }
  GetTestListWithPatientNoRequest = class;      { "http://95.9.52.165:5252/webservices/elab/elab.php"[Lit][GblElm] }
  GetTestListWithPatientNoResponse = class;     { "http://95.9.52.165:5252/webservices/elab/elab.php"[Lit][GblElm] }
  NewPatientRecord     = class;                 { "http://95.9.52.165:5252/webservices/elab/elab.php"[GblCplx] }
  Antibiotic           = class;                 { "http://95.9.52.165:5252/webservices/elab/elab.php"[GblCplx] }
  Antibiogram          = class;                 { "http://95.9.52.165:5252/webservices/elab/elab.php"[GblCplx] }
  Report               = class;                 { "http://95.9.52.165:5252/webservices/elab/elab.php"[Cplx] }
  GetReportFileRequest = class;                 { "http://95.9.52.165:5252/webservices/elab/elab.php"[Lit][GblElm] }
  AddNewPatientRecordRequest = class;           { "http://95.9.52.165:5252/webservices/elab/elab.php"[Lit][GblElm] }
  PatientTests         = class;                 { "http://95.9.52.165:5252/webservices/elab/elab.php"[GblCplx] }
  PatientResults       = class;                 { "http://95.9.52.165:5252/webservices/elab/elab.php"[GblCplx] }

  {$SCOPEDENUMS ON}
  { "http://95.9.52.165:5252/webservices/elab/elab.php"[GblSmpl] }
  Flag = (H, L, H_, L_);

  { "http://95.9.52.165:5252/webservices/elab/elab.php"[GblSmpl] }
  PatientType = (_0, _1);

  { "http://95.9.52.165:5252/webservices/elab/elab.php"[GblSmpl] }
  Emergency = (_0, _1);

  { "http://95.9.52.165:5252/webservices/elab/elab.php"[GblSmpl] }
  ReportFileType = (PDF, DOC, DOCX, XLS, XLSX, TXT, JPG, PNG, BMP, TIFF);

  { "http://95.9.52.165:5252/webservices/elab/elab.php"[GblSmpl] }
  CivilStatus = (BEKÂR, EVLÝ, DUL);

  { "http://95.9.52.165:5252/webservices/elab/elab.php"[GblSmpl] }
  Gender = (ERKEK, KADIN, BÝLÝNMÝYOR);

  { "http://95.9.52.165:5252/webservices/elab/elab.php"[GblSmpl] }
  AntibioticResult = (DUYARLI, AZ_DUYARLI, DÝRENÇLÝ);

  { "http://95.9.52.165:5252/webservices/elab/elab.php"[GblSmpl] }
  ReportStatus = (ONAYLANDI, ONAYLANMADI);

  { "http://95.9.52.165:5252/webservices/elab/elab.php"[GblSmpl] }
  ReportType = (PDF, BASE64, ALL);

  {$SCOPEDENUMS OFF}

  GetTestResultWithBarcodeNoResult = array of PatientResults;   { "http://95.9.52.165:5252/webservices/elab/elab.php"[Cplx] }


  // ************************************************************************ //
  // XML       : GetTestResultWithBarcodeNoResponse, global, <element>
  // Namespace : http://95.9.52.165:5252/webservices/elab/elab.php
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetTestResultWithBarcodeNoResponse = class(TRemotable)
  private
    FGetTestResultWithBarcodeNoResult: GetTestResultWithBarcodeNoResult;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property GetTestResultWithBarcodeNoResult: GetTestResultWithBarcodeNoResult  Index (IS_UNQL) read FGetTestResultWithBarcodeNoResult write FGetTestResultWithBarcodeNoResult;
  end;

  GetTestResultWithProtocolNoResult = array of PatientResults;   { "http://95.9.52.165:5252/webservices/elab/elab.php"[Cplx] }


  // ************************************************************************ //
  // XML       : GetTestResultWithProtocolNoResponse, global, <element>
  // Namespace : http://95.9.52.165:5252/webservices/elab/elab.php
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetTestResultWithProtocolNoResponse = class(TRemotable)
  private
    FGetTestResultWithProtocolNoResult: GetTestResultWithProtocolNoResult;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property GetTestResultWithProtocolNoResult: GetTestResultWithProtocolNoResult  Index (IS_UNQL) read FGetTestResultWithProtocolNoResult write FGetTestResultWithProtocolNoResult;
  end;

  GetTestResultWithReferenceCodeResult = array of PatientResults;   { "http://95.9.52.165:5252/webservices/elab/elab.php"[Cplx] }


  // ************************************************************************ //
  // XML       : GetTestResultWithReferenceCodeResponse, global, <element>
  // Namespace : http://95.9.52.165:5252/webservices/elab/elab.php
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetTestResultWithReferenceCodeResponse = class(TRemotable)
  private
    FGetTestResultWithReferenceCodeResult: GetTestResultWithReferenceCodeResult;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property GetTestResultWithReferenceCodeResult: GetTestResultWithReferenceCodeResult  Index (IS_UNQL) read FGetTestResultWithReferenceCodeResult write FGetTestResultWithReferenceCodeResult;
  end;

  GetTestResultWithProcessNoResult = array of PatientResults;   { "http://95.9.52.165:5252/webservices/elab/elab.php"[Cplx] }


  // ************************************************************************ //
  // XML       : GetTestResultWithProcessNoResponse, global, <element>
  // Namespace : http://95.9.52.165:5252/webservices/elab/elab.php
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetTestResultWithProcessNoResponse = class(TRemotable)
  private
    FGetTestResultWithProcessNoResult: GetTestResultWithProcessNoResult;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property GetTestResultWithProcessNoResult: GetTestResultWithProcessNoResult  Index (IS_UNQL) read FGetTestResultWithProcessNoResult write FGetTestResultWithProcessNoResult;
  end;

  GetTestListWithDateRangeResult = array of PatientTests;   { "http://95.9.52.165:5252/webservices/elab/elab.php"[Cplx] }


  // ************************************************************************ //
  // XML       : GetTestListWithDateRangeResponse, global, <element>
  // Namespace : http://95.9.52.165:5252/webservices/elab/elab.php
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetTestListWithDateRangeResponse = class(TRemotable)
  private
    FGetTestListWithDateRangeResult: GetTestListWithDateRangeResult;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property GetTestListWithDateRangeResult: GetTestListWithDateRangeResult  Index (IS_UNQL) read FGetTestListWithDateRangeResult write FGetTestListWithDateRangeResult;
  end;

  GetTestListWithBarcodeNoResult = array of PatientTests;   { "http://95.9.52.165:5252/webservices/elab/elab.php"[Cplx] }


  // ************************************************************************ //
  // XML       : GetTestListWithBarcodeNoResponse, global, <element>
  // Namespace : http://95.9.52.165:5252/webservices/elab/elab.php
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetTestListWithBarcodeNoResponse = class(TRemotable)
  private
    FGetTestListWithBarcodeNoResult: GetTestListWithBarcodeNoResult;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property GetTestListWithBarcodeNoResult: GetTestListWithBarcodeNoResult  Index (IS_UNQL) read FGetTestListWithBarcodeNoResult write FGetTestListWithBarcodeNoResult;
  end;

  GetTestResultWithPatientNoResult = array of PatientResults;   { "http://95.9.52.165:5252/webservices/elab/elab.php"[Cplx] }


  // ************************************************************************ //
  // XML       : GetTestResultWithPatientNoResponse, global, <element>
  // Namespace : http://95.9.52.165:5252/webservices/elab/elab.php
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetTestResultWithPatientNoResponse = class(TRemotable)
  private
    FGetTestResultWithPatientNoResult: GetTestResultWithPatientNoResult;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property GetTestResultWithPatientNoResult: GetTestResultWithPatientNoResult  Index (IS_UNQL) read FGetTestResultWithPatientNoResult write FGetTestResultWithPatientNoResult;
  end;

  GetTestResultWithTCKNoResult = array of PatientResults;   { "http://95.9.52.165:5252/webservices/elab/elab.php"[Cplx] }


  // ************************************************************************ //
  // XML       : GetTestResultWithTCKNoResponse, global, <element>
  // Namespace : http://95.9.52.165:5252/webservices/elab/elab.php
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetTestResultWithTCKNoResponse = class(TRemotable)
  private
    FGetTestResultWithTCKNoResult: GetTestResultWithTCKNoResult;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property GetTestResultWithTCKNoResult: GetTestResultWithTCKNoResult  Index (IS_UNQL) read FGetTestResultWithTCKNoResult write FGetTestResultWithTCKNoResult;
  end;

  GetReportListResult = array of Report;        { "http://95.9.52.165:5252/webservices/elab/elab.php"[Cplx] }


  // ************************************************************************ //
  // XML       : GetReportListResponse, global, <element>
  // Namespace : http://95.9.52.165:5252/webservices/elab/elab.php
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetReportListResponse = class(TRemotable)
  private
    FGetReportListResult: GetReportListResult;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property GetReportListResult: GetReportListResult  Index (IS_UNQL) read FGetReportListResult write FGetReportListResult;
  end;

  Array_Of_NewPatientRecord = array of NewPatientRecord;   { "http://95.9.52.165:5252/webservices/elab/elab.php"[GblUbnd] }


  // ************************************************************************ //
  // XML       : GetReportFileResponse, global, <element>
  // Namespace : http://95.9.52.165:5252/webservices/elab/elab.php
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetReportFileResponse = class(TRemotable)
  private
    FGetReportFileResult: GetReportFileResult;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property GetReportFileResult: GetReportFileResult  Index (IS_UNQL) read FGetReportFileResult write FGetReportFileResult;
  end;



  // ************************************************************************ //
  // XML       : SetTestResultWithBarcodeNoResponse, global, <element>
  // Namespace : http://95.9.52.165:5252/webservices/elab/elab.php
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  SetTestResultWithBarcodeNoResponse = class(TRemotable)
  private
    FSetTestResultWithBarcodeNoResult: SetTestResultWithBarcodeNoResult;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property SetTestResultWithBarcodeNoResult: SetTestResultWithBarcodeNoResult  Index (IS_UNQL) read FSetTestResultWithBarcodeNoResult write FSetTestResultWithBarcodeNoResult;
  end;

  GetTestResultWithDateRangeResult = array of PatientResults;   { "http://95.9.52.165:5252/webservices/elab/elab.php"[Cplx] }


  // ************************************************************************ //
  // XML       : GetTestResultWithDateRangeResponse, global, <element>
  // Namespace : http://95.9.52.165:5252/webservices/elab/elab.php
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetTestResultWithDateRangeResponse = class(TRemotable)
  private
    FGetTestResultWithDateRangeResult: GetTestResultWithDateRangeResult;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property GetTestResultWithDateRangeResult: GetTestResultWithDateRangeResult  Index (IS_UNQL) read FGetTestResultWithDateRangeResult write FGetTestResultWithDateRangeResult;
  end;



  // ************************************************************************ //
  // XML       : GetPhoneNumberResponse, global, <element>
  // Namespace : http://95.9.52.165:5252/webservices/elab/elab.php
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetPhoneNumberResponse = class(TRemotable)
  private
    FGetPhoneNumberResult: GetPhoneNumberResult;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property GetPhoneNumberResult: GetPhoneNumberResult  Index (IS_UNQL) read FGetPhoneNumberResult write FGetPhoneNumberResult;
  end;

  AntibiogramList = array of Antibiogram;       { "http://95.9.52.165:5252/webservices/elab/elab.php"[Cplx] }


  // ************************************************************************ //
  // XML       : SetAntibiogramResultWithBarcodeNoResponse, global, <element>
  // Namespace : http://95.9.52.165:5252/webservices/elab/elab.php
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  SetAntibiogramResultWithBarcodeNoResponse = class(TRemotable)
  private
    FSetAntibiogramResultWithBarcodeNoResult: SetAntibiogramResultWithBarcodeNoResult;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property SetAntibiogramResultWithBarcodeNoResult: SetAntibiogramResultWithBarcodeNoResult  Index (IS_UNQL) read FSetAntibiogramResultWithBarcodeNoResult write FSetAntibiogramResultWithBarcodeNoResult;
  end;

  GetTestListWithProtocolNoResult = array of PatientTests;   { "http://95.9.52.165:5252/webservices/elab/elab.php"[Cplx] }
  ReportFiles = array of ReportFile;            { "http://95.9.52.165:5252/webservices/elab/elab.php"[GblCplx] }


  // ************************************************************************ //
  // XML       : Login, global, <complexType>
  // Namespace : http://95.9.52.165:5252/webservices/elab/elab.php
  // ************************************************************************ //
  Login = class(TRemotable)
  private
    FUserName: string;
    FPassWord: string;
  published
    property UserName: string  Index (IS_UNQL) read FUserName write FUserName;
    property PassWord: string  Index (IS_UNQL) read FPassWord write FPassWord;
  end;



  // ************************************************************************ //
  // XML       : NewPatientRegisterInfo, global, <complexType>
  // Namespace : http://95.9.52.165:5252/webservices/elab/elab.php
  // ************************************************************************ //
  NewPatientRegisterInfo = class(TRemotable)
  private
    FBirthplaceId: Integer;
    FBirthplaceId_Specified: boolean;
    FRegisteredCountyId: Integer;
    FRegisteredCountyId_Specified: boolean;
    FRegisteredWillageName: string;
    FRegisteredWillageName_Specified: boolean;
    FRegisteredBookNumber: Integer;
    FRegisteredBookNumber_Specified: boolean;
    FRegisteredFamilyLineNumber: Integer;
    FRegisteredFamilyLineNumber_Specified: boolean;
    FRegisteredLineNumber: Integer;
    FRegisteredLineNumber_Specified: boolean;
    FCivilStatus: CivilStatus;
    FCivilStatus_Specified: boolean;
    procedure SetBirthplaceId(Index: Integer; const AInteger: Integer);
    function  BirthplaceId_Specified(Index: Integer): boolean;
    procedure SetRegisteredCountyId(Index: Integer; const AInteger: Integer);
    function  RegisteredCountyId_Specified(Index: Integer): boolean;
    procedure SetRegisteredWillageName(Index: Integer; const Astring: string);
    function  RegisteredWillageName_Specified(Index: Integer): boolean;
    procedure SetRegisteredBookNumber(Index: Integer; const AInteger: Integer);
    function  RegisteredBookNumber_Specified(Index: Integer): boolean;
    procedure SetRegisteredFamilyLineNumber(Index: Integer; const AInteger: Integer);
    function  RegisteredFamilyLineNumber_Specified(Index: Integer): boolean;
    procedure SetRegisteredLineNumber(Index: Integer; const AInteger: Integer);
    function  RegisteredLineNumber_Specified(Index: Integer): boolean;
    procedure SetCivilStatus(Index: Integer; const ACivilStatus: CivilStatus);
    function  CivilStatus_Specified(Index: Integer): boolean;
  published
    property BirthplaceId:               Integer      Index (IS_OPTN or IS_UNQL) read FBirthplaceId write SetBirthplaceId stored BirthplaceId_Specified;
    property RegisteredCountyId:         Integer      Index (IS_OPTN or IS_UNQL) read FRegisteredCountyId write SetRegisteredCountyId stored RegisteredCountyId_Specified;
    property RegisteredWillageName:      string       Index (IS_OPTN or IS_UNQL) read FRegisteredWillageName write SetRegisteredWillageName stored RegisteredWillageName_Specified;
    property RegisteredBookNumber:       Integer      Index (IS_OPTN or IS_UNQL) read FRegisteredBookNumber write SetRegisteredBookNumber stored RegisteredBookNumber_Specified;
    property RegisteredFamilyLineNumber: Integer      Index (IS_OPTN or IS_UNQL) read FRegisteredFamilyLineNumber write SetRegisteredFamilyLineNumber stored RegisteredFamilyLineNumber_Specified;
    property RegisteredLineNumber:       Integer      Index (IS_OPTN or IS_UNQL) read FRegisteredLineNumber write SetRegisteredLineNumber stored RegisteredLineNumber_Specified;
    property CivilStatus:                CivilStatus  Index (IS_OPTN or IS_UNQL) read FCivilStatus write SetCivilStatus stored CivilStatus_Specified;
  end;



  // ************************************************************************ //
  // XML       : ReportFile, <complexType>
  // Namespace : http://95.9.52.165:5252/webservices/elab/elab.php
  // ************************************************************************ //
  ReportFile = class(TRemotable)
  private
    FFileName: string;
    FFileName_Specified: boolean;
    FFileType: ReportFileType;
    FFileData: TByteDynArray;
    procedure SetFileName(Index: Integer; const Astring: string);
    function  FileName_Specified(Index: Integer): boolean;
  published
    property FileName: string          Index (IS_OPTN or IS_UNQL) read FFileName write SetFileName stored FileName_Specified;
    property FileType: ReportFileType  Index (IS_UNQL) read FFileType write FFileType;
    property FileData: TByteDynArray   Index (IS_UNQL) read FFileData write FFileData;
  end;



  // ************************************************************************ //
  // XML       : Test, global, <complexType>
  // Namespace : http://95.9.52.165:5252/webservices/elab/elab.php
  // ************************************************************************ //
  Test = class(TRemotable)
  private
    FBarcodeNo: string;
    FTestNo: string;
    FTestName: string;
    FSampleType: string;
    FSampleName: string;
    FCupType: string;
    FCupName: string;
  published
    property BarcodeNo:  string  Index (IS_UNQL) read FBarcodeNo write FBarcodeNo;
    property TestNo:     string  Index (IS_UNQL) read FTestNo write FTestNo;
    property TestName:   string  Index (IS_UNQL) read FTestName write FTestName;
    property SampleType: string  Index (IS_UNQL) read FSampleType write FSampleType;
    property SampleName: string  Index (IS_UNQL) read FSampleName write FSampleName;
    property CupType:    string  Index (IS_UNQL) read FCupType write FCupType;
    property CupName:    string  Index (IS_UNQL) read FCupName write FCupName;
  end;



  // ************************************************************************ //
  // XML       : SetAntibiogramResultWithBarcodeNoRequest, global, <element>
  // Namespace : http://95.9.52.165:5252/webservices/elab/elab.php
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  SetAntibiogramResultWithBarcodeNoRequest = class(TRemotable)
  private
    FLogin: Login;
    FBarcodeNo: string;
    FTestNo: string;
    FTestName: string;
    FTestName_Specified: boolean;
    FAntibiogramList: AntibiogramList;
    procedure SetTestName(Index: Integer; const Astring: string);
    function  TestName_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property Login:           Login            Index (IS_UNQL) read FLogin write FLogin;
    property BarcodeNo:       string           Index (IS_UNQL) read FBarcodeNo write FBarcodeNo;
    property TestNo:          string           Index (IS_UNQL) read FTestNo write FTestNo;
    property TestName:        string           Index (IS_OPTN or IS_UNQL) read FTestName write SetTestName stored TestName_Specified;
    property AntibiogramList: AntibiogramList  Index (IS_UNQL) read FAntibiogramList write FAntibiogramList;
  end;



  // ************************************************************************ //
  // XML       : GetPhoneNumberRequest, global, <element>
  // Namespace : http://95.9.52.165:5252/webservices/elab/elab.php
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetPhoneNumberRequest = class(TRemotable)
  private
    FLogin: Login;
    FTCKNo: string;
    FUPN: Integer;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property Login: Login    Index (IS_UNQL) read FLogin write FLogin;
    property TCKNo: string   Index (IS_UNQL) read FTCKNo write FTCKNo;
    property UPN:   Integer  Index (IS_UNQL) read FUPN write FUPN;
  end;



  // ************************************************************************ //
  // XML       : SetAntibiogramResultWithBarcodeNoResult, <complexType>
  // Namespace : http://95.9.52.165:5252/webservices/elab/elab.php
  // ************************************************************************ //
  SetAntibiogramResultWithBarcodeNoResult = class(TRemotable)
  private
    FReturnCode: string;
    FComment: string;
  published
    property ReturnCode: string  Index (IS_UNQL) read FReturnCode write FReturnCode;
    property Comment:    string  Index (IS_UNQL) read FComment write FComment;
  end;



  // ************************************************************************ //
  // XML       : SetTestResultWithBarcodeNoResult, <complexType>
  // Namespace : http://95.9.52.165:5252/webservices/elab/elab.php
  // ************************************************************************ //
  SetTestResultWithBarcodeNoResult = class(TRemotable)
  private
    FReturnCode: string;
    FComment: string;
  published
    property ReturnCode: string  Index (IS_UNQL) read FReturnCode write FReturnCode;
    property Comment:    string  Index (IS_UNQL) read FComment write FComment;
  end;



  // ************************************************************************ //
  // XML       : SetTestResultWithBarcodeNoRequest, global, <element>
  // Namespace : http://95.9.52.165:5252/webservices/elab/elab.php
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  SetTestResultWithBarcodeNoRequest = class(TRemotable)
  private
    FLogin: Login;
    FBarcodeNo: string;
    FTestResult: TestResult;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property Login:      Login       Index (IS_UNQL) read FLogin write FLogin;
    property BarcodeNo:  string      Index (IS_UNQL) read FBarcodeNo write FBarcodeNo;
    property TestResult: TestResult  Index (IS_UNQL) read FTestResult write FTestResult;
  end;



  // ************************************************************************ //
  // XML       : RequestFault, global, <element>
  // Namespace : http://95.9.52.165:5252/webservices/elab/elab.php
  // Info      : Fault
  // ************************************************************************ //
  RequestFault = class(ERemotableException)
  private
    Fcode: string;
    Fcode_Specified: boolean;
    Fmessage_: string;
    Fmessage__Specified: boolean;
    Foffset: string;
    Foffset_Specified: boolean;
    Fsqltext: string;
    Fsqltext_Specified: boolean;
    procedure Setcode(Index: Integer; const Astring: string);
    function  code_Specified(Index: Integer): boolean;
    procedure Setmessage_(Index: Integer; const Astring: string);
    function  message__Specified(Index: Integer): boolean;
    procedure Setoffset(Index: Integer; const Astring: string);
    function  offset_Specified(Index: Integer): boolean;
    procedure Setsqltext(Index: Integer; const Astring: string);
    function  sqltext_Specified(Index: Integer): boolean;
  published
    property code:     string  Index (IS_OPTN or IS_UNQL) read Fcode write Setcode stored code_Specified;
    property message_: string  Index (IS_OPTN or IS_UNQL) read Fmessage_ write Setmessage_ stored message__Specified;
    property offset:   string  Index (IS_OPTN or IS_UNQL) read Foffset write Setoffset stored offset_Specified;
    property sqltext:  string  Index (IS_OPTN or IS_UNQL) read Fsqltext write Setsqltext stored sqltext_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetReportFileResult, <complexType>
  // Namespace : http://95.9.52.165:5252/webservices/elab/elab.php
  // ************************************************************************ //
  GetReportFileResult = class(TRemotable)
  private
    FPdfFile: TByteDynArray;
    FPdfFile_Specified: boolean;
    FPdfFilePath: string;
    FPdfFilePath_Specified: boolean;
    procedure SetPdfFile(Index: Integer; const ATByteDynArray: TByteDynArray);
    function  PdfFile_Specified(Index: Integer): boolean;
    procedure SetPdfFilePath(Index: Integer; const Astring: string);
    function  PdfFilePath_Specified(Index: Integer): boolean;
  published
    property PdfFile:     TByteDynArray  Index (IS_OPTN or IS_UNQL) read FPdfFile write SetPdfFile stored PdfFile_Specified;
    property PdfFilePath: string         Index (IS_OPTN or IS_UNQL) read FPdfFilePath write SetPdfFilePath stored PdfFilePath_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetReportListRequest, global, <element>
  // Namespace : http://95.9.52.165:5252/webservices/elab/elab.php
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetReportListRequest = class(TRemotable)
  private
    FLogin: Login;
    FTCKNo: string;
    FUPN: Integer;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property Login: Login    Index (IS_UNQL) read FLogin write FLogin;
    property TCKNo: string   Index (IS_UNQL) read FTCKNo write FTCKNo;
    property UPN:   Integer  Index (IS_UNQL) read FUPN write FUPN;
  end;

  MobilePhoneList = array of string;            { "http://95.9.52.165:5252/webservices/elab/elab.php"[Cplx] }


  // ************************************************************************ //
  // XML       : GetTestResultWithBarcodeNoRequest, global, <element>
  // Namespace : http://95.9.52.165:5252/webservices/elab/elab.php
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetTestResultWithBarcodeNoRequest = class(TRemotable)
  private
    FLogin: Login;
    FBarcodeNo: MobilePhoneList;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property Login:     Login            Index (IS_UNQL) read FLogin write FLogin;
    property BarcodeNo: MobilePhoneList  Index (IS_UNBD or IS_UNQL) read FBarcodeNo write FBarcodeNo;
  end;



  // ************************************************************************ //
  // XML       : GetTestResultWithProtocolNoRequest, global, <element>
  // Namespace : http://95.9.52.165:5252/webservices/elab/elab.php
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetTestResultWithProtocolNoRequest = class(TRemotable)
  private
    FLogin: Login;
    FProtocolNo: MobilePhoneList;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property Login:      Login            Index (IS_UNQL) read FLogin write FLogin;
    property ProtocolNo: MobilePhoneList  Index (IS_UNBD or IS_UNQL) read FProtocolNo write FProtocolNo;
  end;



  // ************************************************************************ //
  // XML       : GetTestResultWithReferenceCodeRequest, global, <element>
  // Namespace : http://95.9.52.165:5252/webservices/elab/elab.php
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetTestResultWithReferenceCodeRequest = class(TRemotable)
  private
    FLogin: Login;
    FReferenceCode: MobilePhoneList;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property Login:         Login            Index (IS_UNQL) read FLogin write FLogin;
    property ReferenceCode: MobilePhoneList  Index (IS_UNBD or IS_UNQL) read FReferenceCode write FReferenceCode;
  end;



  // ************************************************************************ //
  // XML       : GetTestResultWithProcessNoRequest, global, <element>
  // Namespace : http://95.9.52.165:5252/webservices/elab/elab.php
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetTestResultWithProcessNoRequest = class(TRemotable)
  private
    FLogin: Login;
    FProcessNo: MobilePhoneList;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property Login:     Login            Index (IS_UNQL) read FLogin write FLogin;
    property ProcessNo: MobilePhoneList  Index (IS_UNBD or IS_UNQL) read FProcessNo write FProcessNo;
  end;



  // ************************************************************************ //
  // XML       : GetTestListWithBarcodeNoRequest, global, <element>
  // Namespace : http://95.9.52.165:5252/webservices/elab/elab.php
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetTestListWithBarcodeNoRequest = class(TRemotable)
  private
    FLogin: Login;
    FBarcodeNo: MobilePhoneList;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property Login:     Login            Index (IS_UNQL) read FLogin write FLogin;
    property BarcodeNo: MobilePhoneList  Index (IS_UNBD or IS_UNQL) read FBarcodeNo write FBarcodeNo;
  end;



  // ************************************************************************ //
  // XML       : GetPhoneNumberResult, <complexType>
  // Namespace : http://95.9.52.165:5252/webservices/elab/elab.php
  // ************************************************************************ //
  GetPhoneNumberResult = class(TRemotable)
  private
    FMobilePhoneList: MobilePhoneList;
  published
    property MobilePhoneList: MobilePhoneList  Index (IS_UNQL) read FMobilePhoneList write FMobilePhoneList;
  end;



  // ************************************************************************ //
  // XML       : NewPatientContactInfo, global, <complexType>
  // Namespace : http://95.9.52.165:5252/webservices/elab/elab.php
  // ************************************************************************ //
  NewPatientContactInfo = class(TRemotable)
  private
    FMobilePhone: string;
    FMobilePhone_Specified: boolean;
    FWorkPhone: string;
    FWorkPhone_Specified: boolean;
    FHomePhone: string;
    FHomePhone_Specified: boolean;
    FEMail: string;
    FEMail_Specified: boolean;
    FQuarterName: string;
    FQuarterName_Specified: boolean;
    FAddress: string;
    FAddress_Specified: boolean;
    FOuterDoorNo: string;
    FOuterDoorNo_Specified: boolean;
    FInnerDoorNo: string;
    FInnerDoorNo_Specified: boolean;
    FCountyId: Integer;
    FCountyId_Specified: boolean;
    FCountryId: Integer;
    FCountryId_Specified: boolean;
    procedure SetMobilePhone(Index: Integer; const Astring: string);
    function  MobilePhone_Specified(Index: Integer): boolean;
    procedure SetWorkPhone(Index: Integer; const Astring: string);
    function  WorkPhone_Specified(Index: Integer): boolean;
    procedure SetHomePhone(Index: Integer; const Astring: string);
    function  HomePhone_Specified(Index: Integer): boolean;
    procedure SetEMail(Index: Integer; const Astring: string);
    function  EMail_Specified(Index: Integer): boolean;
    procedure SetQuarterName(Index: Integer; const Astring: string);
    function  QuarterName_Specified(Index: Integer): boolean;
    procedure SetAddress(Index: Integer; const Astring: string);
    function  Address_Specified(Index: Integer): boolean;
    procedure SetOuterDoorNo(Index: Integer; const Astring: string);
    function  OuterDoorNo_Specified(Index: Integer): boolean;
    procedure SetInnerDoorNo(Index: Integer; const Astring: string);
    function  InnerDoorNo_Specified(Index: Integer): boolean;
    procedure SetCountyId(Index: Integer; const AInteger: Integer);
    function  CountyId_Specified(Index: Integer): boolean;
    procedure SetCountryId(Index: Integer; const AInteger: Integer);
    function  CountryId_Specified(Index: Integer): boolean;
  published
    property MobilePhone: string   Index (IS_OPTN or IS_UNQL) read FMobilePhone write SetMobilePhone stored MobilePhone_Specified;
    property WorkPhone:   string   Index (IS_OPTN or IS_UNQL) read FWorkPhone write SetWorkPhone stored WorkPhone_Specified;
    property HomePhone:   string   Index (IS_OPTN or IS_UNQL) read FHomePhone write SetHomePhone stored HomePhone_Specified;
    property EMail:       string   Index (IS_OPTN or IS_UNQL) read FEMail write SetEMail stored EMail_Specified;
    property QuarterName: string   Index (IS_OPTN or IS_UNQL) read FQuarterName write SetQuarterName stored QuarterName_Specified;
    property Address:     string   Index (IS_OPTN or IS_UNQL) read FAddress write SetAddress stored Address_Specified;
    property OuterDoorNo: string   Index (IS_OPTN or IS_UNQL) read FOuterDoorNo write SetOuterDoorNo stored OuterDoorNo_Specified;
    property InnerDoorNo: string   Index (IS_OPTN or IS_UNQL) read FInnerDoorNo write SetInnerDoorNo stored InnerDoorNo_Specified;
    property CountyId:    Integer  Index (IS_OPTN or IS_UNQL) read FCountyId write SetCountyId stored CountyId_Specified;
    property CountryId:   Integer  Index (IS_OPTN or IS_UNQL) read FCountryId write SetCountryId stored CountryId_Specified;
  end;



  // ************************************************************************ //
  // XML       : NewTest, global, <complexType>
  // Namespace : http://95.9.52.165:5252/webservices/elab/elab.php
  // ************************************************************************ //
  NewTest = class(TRemotable)
  private
    FReferenceCode: string;
    FTestNo: string;
    FTestName: string;
    FSamplingTime: TXSDateTime;
  public
    destructor Destroy; override;
  published
    property ReferenceCode: string       Index (IS_UNQL) read FReferenceCode write FReferenceCode;
    property TestNo:        string       Index (IS_UNQL) read FTestNo write FTestNo;
    property TestName:      string       Index (IS_UNQL) read FTestName write FTestName;
    property SamplingTime:  TXSDateTime  Index (IS_UNQL) read FSamplingTime write FSamplingTime;
  end;



  // ************************************************************************ //
  // XML       : TestResult, global, <complexType>
  // Namespace : http://95.9.52.165:5252/webservices/elab/elab.php
  // ************************************************************************ //
  TestResult = class(TRemotable)
  private
    FTestNo: string;
    FTestName: string;
    FTestName_Specified: boolean;
    FResult: string;
    FFlag: Flag;
    FFlag_Specified: boolean;
    FUnit_: string;
    FUnit__Specified: boolean;
    FMinValue: TXSDecimal;
    FMinValue_Specified: boolean;
    FMaxValue: TXSDecimal;
    FMaxValue_Specified: boolean;
    FRefRange: string;
    FRefRange_Specified: boolean;
    FNote: string;
    FNote_Specified: boolean;
    FRWTime: TXSDateTime;
    FRWUser: string;
    FAppTime: TXSDateTime;
    FAppUser: string;
    FInstrumentNo: Integer;
    FInstrumentNo_Specified: boolean;
    FRerun: Integer;
    FRerun_Specified: boolean;
    FAcceptanceTime: TXSDateTime;
    FAcceptanceTime_Specified: boolean;
    FAcceptingUser: string;
    FAcceptingUser_Specified: boolean;
    FReportFiles: ReportFiles;
    FReportFiles_Specified: boolean;
    procedure SetTestName(Index: Integer; const Astring: string);
    function  TestName_Specified(Index: Integer): boolean;
    procedure SetFlag(Index: Integer; const AFlag: Flag);
    function  Flag_Specified(Index: Integer): boolean;
    procedure SetUnit_(Index: Integer; const Astring: string);
    function  Unit__Specified(Index: Integer): boolean;
    procedure SetMinValue(Index: Integer; const ATXSDecimal: TXSDecimal);
    function  MinValue_Specified(Index: Integer): boolean;
    procedure SetMaxValue(Index: Integer; const ATXSDecimal: TXSDecimal);
    function  MaxValue_Specified(Index: Integer): boolean;
    procedure SetRefRange(Index: Integer; const Astring: string);
    function  RefRange_Specified(Index: Integer): boolean;
    procedure SetNote(Index: Integer; const Astring: string);
    function  Note_Specified(Index: Integer): boolean;
    procedure SetInstrumentNo(Index: Integer; const AInteger: Integer);
    function  InstrumentNo_Specified(Index: Integer): boolean;
    procedure SetRerun(Index: Integer; const AInteger: Integer);
    function  Rerun_Specified(Index: Integer): boolean;
    procedure SetAcceptanceTime(Index: Integer; const ATXSDateTime: TXSDateTime);
    function  AcceptanceTime_Specified(Index: Integer): boolean;
    procedure SetAcceptingUser(Index: Integer; const Astring: string);
    function  AcceptingUser_Specified(Index: Integer): boolean;
    procedure SetReportFiles(Index: Integer; const AReportFiles: ReportFiles);
    function  ReportFiles_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property TestNo:         string       Index (IS_UNQL) read FTestNo write FTestNo;
    property TestName:       string       Index (IS_OPTN or IS_UNQL) read FTestName write SetTestName stored TestName_Specified;
    property Result:         string       Index (IS_UNQL) read FResult write FResult;
    property Flag:           Flag         Index (IS_OPTN or IS_UNQL) read FFlag write SetFlag stored Flag_Specified;
    property Unit_:          string       Index (IS_OPTN or IS_UNQL) read FUnit_ write SetUnit_ stored Unit__Specified;
    property MinValue:       TXSDecimal   Index (IS_OPTN or IS_UNQL) read FMinValue write SetMinValue stored MinValue_Specified;
    property MaxValue:       TXSDecimal   Index (IS_OPTN or IS_UNQL) read FMaxValue write SetMaxValue stored MaxValue_Specified;
    property RefRange:       string       Index (IS_OPTN or IS_UNQL) read FRefRange write SetRefRange stored RefRange_Specified;
    property Note:           string       Index (IS_OPTN or IS_UNQL) read FNote write SetNote stored Note_Specified;
    property RWTime:         TXSDateTime  Index (IS_UNQL) read FRWTime write FRWTime;
    property RWUser:         string       Index (IS_UNQL) read FRWUser write FRWUser;
    property AppTime:        TXSDateTime  Index (IS_UNQL) read FAppTime write FAppTime;
    property AppUser:        string       Index (IS_UNQL) read FAppUser write FAppUser;
    property InstrumentNo:   Integer      Index (IS_OPTN or IS_UNQL) read FInstrumentNo write SetInstrumentNo stored InstrumentNo_Specified;
    property Rerun:          Integer      Index (IS_OPTN or IS_UNQL) read FRerun write SetRerun stored Rerun_Specified;
    property AcceptanceTime: TXSDateTime  Index (IS_OPTN or IS_UNQL) read FAcceptanceTime write SetAcceptanceTime stored AcceptanceTime_Specified;
    property AcceptingUser:  string       Index (IS_OPTN or IS_UNQL) read FAcceptingUser write SetAcceptingUser stored AcceptingUser_Specified;
    property ReportFiles:    ReportFiles  Index (IS_OPTN or IS_UNQL) read FReportFiles write SetReportFiles stored ReportFiles_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetTestResultWithDateRangeRequest, global, <element>
  // Namespace : http://95.9.52.165:5252/webservices/elab/elab.php
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetTestResultWithDateRangeRequest = class(TRemotable)
  private
    FLogin: Login;
    FStartTime: TXSDateTime;
    FEndTime: TXSDateTime;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property Login:     Login        Index (IS_UNQL) read FLogin write FLogin;
    property StartTime: TXSDateTime  Index (IS_UNQL) read FStartTime write FStartTime;
    property EndTime:   TXSDateTime  Index (IS_UNQL) read FEndTime write FEndTime;
  end;



  // ************************************************************************ //
  // XML       : GetTestResultWithTCKNoRequest, global, <element>
  // Namespace : http://95.9.52.165:5252/webservices/elab/elab.php
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetTestResultWithTCKNoRequest = class(TRemotable)
  private
    FLogin: Login;
    FTCKNo: MobilePhoneList;
    FStartTime: TXSDateTime;
    FStartTime_Specified: boolean;
    FEndTime: TXSDateTime;
    FEndTime_Specified: boolean;
    procedure SetStartTime(Index: Integer; const ATXSDateTime: TXSDateTime);
    function  StartTime_Specified(Index: Integer): boolean;
    procedure SetEndTime(Index: Integer; const ATXSDateTime: TXSDateTime);
    function  EndTime_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property Login:     Login            Index (IS_UNQL) read FLogin write FLogin;
    property TCKNo:     MobilePhoneList  Index (IS_UNBD or IS_UNQL) read FTCKNo write FTCKNo;
    property StartTime: TXSDateTime      Index (IS_OPTN or IS_UNQL) read FStartTime write SetStartTime stored StartTime_Specified;
    property EndTime:   TXSDateTime      Index (IS_OPTN or IS_UNQL) read FEndTime write SetEndTime stored EndTime_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetTestResultWithPatientNoRequest, global, <element>
  // Namespace : http://95.9.52.165:5252/webservices/elab/elab.php
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetTestResultWithPatientNoRequest = class(TRemotable)
  private
    FLogin: Login;
    FPatientNo: MobilePhoneList;
    FStartTime: TXSDateTime;
    FStartTime_Specified: boolean;
    FEndTime: TXSDateTime;
    FEndTime_Specified: boolean;
    procedure SetStartTime(Index: Integer; const ATXSDateTime: TXSDateTime);
    function  StartTime_Specified(Index: Integer): boolean;
    procedure SetEndTime(Index: Integer; const ATXSDateTime: TXSDateTime);
    function  EndTime_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property Login:     Login            Index (IS_UNQL) read FLogin write FLogin;
    property PatientNo: MobilePhoneList  Index (IS_UNBD or IS_UNQL) read FPatientNo write FPatientNo;
    property StartTime: TXSDateTime      Index (IS_OPTN or IS_UNQL) read FStartTime write SetStartTime stored StartTime_Specified;
    property EndTime:   TXSDateTime      Index (IS_OPTN or IS_UNQL) read FEndTime write SetEndTime stored EndTime_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetTestListWithDateRangeRequest, global, <element>
  // Namespace : http://95.9.52.165:5252/webservices/elab/elab.php
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetTestListWithDateRangeRequest = class(TRemotable)
  private
    FLogin: Login;
    FStartTime: TXSDateTime;
    FEndTime: TXSDateTime;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property Login:     Login        Index (IS_UNQL) read FLogin write FLogin;
    property StartTime: TXSDateTime  Index (IS_UNQL) read FStartTime write FStartTime;
    property EndTime:   TXSDateTime  Index (IS_UNQL) read FEndTime write FEndTime;
  end;



  // ************************************************************************ //
  // XML       : AddedTest, global, <complexType>
  // Namespace : http://95.9.52.165:5252/webservices/elab/elab.php
  // ************************************************************************ //
  AddedTest = class(TRemotable)
  private
    FReferenceCode: string;
    FBarcodeNo: string;
    FProcessNo: string;
    FTestNo: string;
    FTestName: string;
  published
    property ReferenceCode: string  Index (IS_UNQL) read FReferenceCode write FReferenceCode;
    property BarcodeNo:     string  Index (IS_UNQL) read FBarcodeNo write FBarcodeNo;
    property ProcessNo:     string  Index (IS_UNQL) read FProcessNo write FProcessNo;
    property TestNo:        string  Index (IS_UNQL) read FTestNo write FTestNo;
    property TestName:      string  Index (IS_UNQL) read FTestName write FTestName;
  end;



  // ************************************************************************ //
  // XML       : NewPatientInfo, global, <complexType>
  // Namespace : http://95.9.52.165:5252/webservices/elab/elab.php
  // ************************************************************************ //
  NewPatientInfo = class(TRemotable)
  private
    FTCKNo: string;
    FTCKNo_Specified: boolean;
    FName_: string;
    FSurname: string;
    FFatherName: string;
    FFatherName_Specified: boolean;
    FMotherName: string;
    FMotherName_Specified: boolean;
    FBirthDate: TXSDate;
    FGender: Gender;
    FAssociationId: Integer;
    FPatientContactInfo: NewPatientContactInfo;
    FPatientContactInfo_Specified: boolean;
    FPatientRegisterInfo: NewPatientRegisterInfo;
    FPatientRegisterInfo_Specified: boolean;
    procedure SetTCKNo(Index: Integer; const Astring: string);
    function  TCKNo_Specified(Index: Integer): boolean;
    procedure SetFatherName(Index: Integer; const Astring: string);
    function  FatherName_Specified(Index: Integer): boolean;
    procedure SetMotherName(Index: Integer; const Astring: string);
    function  MotherName_Specified(Index: Integer): boolean;
    procedure SetPatientContactInfo(Index: Integer; const ANewPatientContactInfo: NewPatientContactInfo);
    function  PatientContactInfo_Specified(Index: Integer): boolean;
    procedure SetPatientRegisterInfo(Index: Integer; const ANewPatientRegisterInfo: NewPatientRegisterInfo);
    function  PatientRegisterInfo_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property TCKNo:               string                  Index (IS_OPTN or IS_UNQL) read FTCKNo write SetTCKNo stored TCKNo_Specified;
    property Name_:               string                  Index (IS_UNQL) read FName_ write FName_;
    property Surname:             string                  Index (IS_UNQL) read FSurname write FSurname;
    property FatherName:          string                  Index (IS_OPTN or IS_UNQL) read FFatherName write SetFatherName stored FatherName_Specified;
    property MotherName:          string                  Index (IS_OPTN or IS_UNQL) read FMotherName write SetMotherName stored MotherName_Specified;
    property BirthDate:           TXSDate                 Index (IS_UNQL) read FBirthDate write FBirthDate;
    property Gender:              Gender                  Index (IS_UNQL) read FGender write FGender;
    property AssociationId:       Integer                 Index (IS_UNQL) read FAssociationId write FAssociationId;
    property PatientContactInfo:  NewPatientContactInfo   Index (IS_OPTN or IS_UNQL) read FPatientContactInfo write SetPatientContactInfo stored PatientContactInfo_Specified;
    property PatientRegisterInfo: NewPatientRegisterInfo  Index (IS_OPTN or IS_UNQL) read FPatientRegisterInfo write SetPatientRegisterInfo stored PatientRegisterInfo_Specified;
  end;



  // ************************************************************************ //
  // XML       : PatientInfo, global, <complexType>
  // Namespace : http://95.9.52.165:5252/webservices/elab/elab.php
  // ************************************************************************ //
  PatientInfo = class(TRemotable)
  private
    FTCKNo: string;
    FPatientNo: string;
    FProtocolNo: string;
    FBarcodeNo: string;
    FName_: string;
    FSurname: string;
    FBirthDate: TXSDate;
    FGender: Gender;
    FDepartmentNo: Integer;
    FDepartmentName: string;
    FDoctorNo: Integer;
    FDoctorName: string;
    FPatientType: PatientType;
    FEmergency: Emergency;
    FRequestTime: TXSDateTime;
    FSamplingTime: TXSDateTime;
  public
    destructor Destroy; override;
  published
    property TCKNo:          string       Index (IS_UNQL) read FTCKNo write FTCKNo;
    property PatientNo:      string       Index (IS_UNQL) read FPatientNo write FPatientNo;
    property ProtocolNo:     string       Index (IS_UNQL) read FProtocolNo write FProtocolNo;
    property BarcodeNo:      string       Index (IS_UNQL) read FBarcodeNo write FBarcodeNo;
    property Name_:          string       Index (IS_UNQL) read FName_ write FName_;
    property Surname:        string       Index (IS_UNQL) read FSurname write FSurname;
    property BirthDate:      TXSDate      Index (IS_UNQL) read FBirthDate write FBirthDate;
    property Gender:         Gender       Index (IS_UNQL) read FGender write FGender;
    property DepartmentNo:   Integer      Index (IS_UNQL) read FDepartmentNo write FDepartmentNo;
    property DepartmentName: string       Index (IS_UNQL) read FDepartmentName write FDepartmentName;
    property DoctorNo:       Integer      Index (IS_UNQL) read FDoctorNo write FDoctorNo;
    property DoctorName:     string       Index (IS_UNQL) read FDoctorName write FDoctorName;
    property PatientType:    PatientType  Index (IS_UNQL) read FPatientType write FPatientType;
    property Emergency:      Emergency    Index (IS_UNQL) read FEmergency write FEmergency;
    property RequestTime:    TXSDateTime  Index (IS_UNQL) read FRequestTime write FRequestTime;
    property SamplingTime:   TXSDateTime  Index (IS_UNQL) read FSamplingTime write FSamplingTime;
  end;

  TestList   = array of AddedTest;              { "http://95.9.52.165:5252/webservices/elab/elab.php"[Cplx] }


  // ************************************************************************ //
  // XML       : GetTestListWithTCKNoRequest, global, <element>
  // Namespace : http://95.9.52.165:5252/webservices/elab/elab.php
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetTestListWithTCKNoRequest = class(TRemotable)
  private
    FLogin: Login;
    FTCKNo: MobilePhoneList;
    FStartTime: TXSDateTime;
    FStartTime_Specified: boolean;
    FEndTime: TXSDateTime;
    FEndTime_Specified: boolean;
    procedure SetStartTime(Index: Integer; const ATXSDateTime: TXSDateTime);
    function  StartTime_Specified(Index: Integer): boolean;
    procedure SetEndTime(Index: Integer; const ATXSDateTime: TXSDateTime);
    function  EndTime_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property Login:     Login            Index (IS_UNQL) read FLogin write FLogin;
    property TCKNo:     MobilePhoneList  Index (IS_UNBD or IS_UNQL) read FTCKNo write FTCKNo;
    property StartTime: TXSDateTime      Index (IS_OPTN or IS_UNQL) read FStartTime write SetStartTime stored StartTime_Specified;
    property EndTime:   TXSDateTime      Index (IS_OPTN or IS_UNQL) read FEndTime write SetEndTime stored EndTime_Specified;
  end;



  // ************************************************************************ //
  // XML       : AddNewPatientRecordResponse, global, <element>
  // Namespace : http://95.9.52.165:5252/webservices/elab/elab.php
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  AddNewPatientRecordResponse = class(TRemotable)
  private
    FAddNewPatientRecordResult: AddNewPatientRecordResult;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property AddNewPatientRecordResult: AddNewPatientRecordResult  Index (IS_UNQL) read FAddNewPatientRecordResult write FAddNewPatientRecordResult;
  end;



  // ************************************************************************ //
  // XML       : AddNewPatientRecordResult, <complexType>
  // Namespace : http://95.9.52.165:5252/webservices/elab/elab.php
  // ************************************************************************ //
  AddNewPatientRecordResult = class(TRemotable)
  private
    FPatientNo: Int64;
    FProtocolNo: Int64;
    FTestList: TestList;
  public
    destructor Destroy; override;
  published
    property PatientNo:  Int64     Index (IS_UNQL) read FPatientNo write FPatientNo;
    property ProtocolNo: Int64     Index (IS_UNQL) read FProtocolNo write FProtocolNo;
    property TestList:   TestList  Index (IS_UNQL) read FTestList write FTestList;
  end;

  GetTestListWithPatientNoResult = array of PatientTests;   { "http://95.9.52.165:5252/webservices/elab/elab.php"[Cplx] }


  // ************************************************************************ //
  // XML       : GetTestListWithProtocolNoRequest, global, <element>
  // Namespace : http://95.9.52.165:5252/webservices/elab/elab.php
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetTestListWithProtocolNoRequest = class(TRemotable)
  private
    FLogin: Login;
    FProtocolNo: MobilePhoneList;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property Login:      Login            Index (IS_UNQL) read FLogin write FLogin;
    property ProtocolNo: MobilePhoneList  Index (IS_UNBD or IS_UNQL) read FProtocolNo write FProtocolNo;
  end;



  // ************************************************************************ //
  // XML       : GetTestListWithProtocolNoResponse, global, <element>
  // Namespace : http://95.9.52.165:5252/webservices/elab/elab.php
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetTestListWithProtocolNoResponse = class(TRemotable)
  private
    FGetTestListWithProtocolNoResult: GetTestListWithProtocolNoResult;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property GetTestListWithProtocolNoResult: GetTestListWithProtocolNoResult  Index (IS_UNQL) read FGetTestListWithProtocolNoResult write FGetTestListWithProtocolNoResult;
  end;

  GetTestListWithTCKNoResult = array of PatientTests;   { "http://95.9.52.165:5252/webservices/elab/elab.php"[Cplx] }


  // ************************************************************************ //
  // XML       : GetTestListWithTCKNoResponse, global, <element>
  // Namespace : http://95.9.52.165:5252/webservices/elab/elab.php
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetTestListWithTCKNoResponse = class(TRemotable)
  private
    FGetTestListWithTCKNoResult: GetTestListWithTCKNoResult;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property GetTestListWithTCKNoResult: GetTestListWithTCKNoResult  Index (IS_UNQL) read FGetTestListWithTCKNoResult write FGetTestListWithTCKNoResult;
  end;



  // ************************************************************************ //
  // XML       : GetTestListWithPatientNoRequest, global, <element>
  // Namespace : http://95.9.52.165:5252/webservices/elab/elab.php
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetTestListWithPatientNoRequest = class(TRemotable)
  private
    FLogin: Login;
    FPatientNo: MobilePhoneList;
    FStartTime: TXSDateTime;
    FStartTime_Specified: boolean;
    FEndTime: TXSDateTime;
    FEndTime_Specified: boolean;
    procedure SetStartTime(Index: Integer; const ATXSDateTime: TXSDateTime);
    function  StartTime_Specified(Index: Integer): boolean;
    procedure SetEndTime(Index: Integer; const ATXSDateTime: TXSDateTime);
    function  EndTime_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property Login:     Login            Index (IS_UNQL) read FLogin write FLogin;
    property PatientNo: MobilePhoneList  Index (IS_UNBD or IS_UNQL) read FPatientNo write FPatientNo;
    property StartTime: TXSDateTime      Index (IS_OPTN or IS_UNQL) read FStartTime write SetStartTime stored StartTime_Specified;
    property EndTime:   TXSDateTime      Index (IS_OPTN or IS_UNQL) read FEndTime write SetEndTime stored EndTime_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetTestListWithPatientNoResponse, global, <element>
  // Namespace : http://95.9.52.165:5252/webservices/elab/elab.php
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetTestListWithPatientNoResponse = class(TRemotable)
  private
    FGetTestListWithPatientNoResult: GetTestListWithPatientNoResult;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property GetTestListWithPatientNoResult: GetTestListWithPatientNoResult  Index (IS_UNQL) read FGetTestListWithPatientNoResult write FGetTestListWithPatientNoResult;
  end;

  TestList2  = array of NewTest;                { "http://95.9.52.165:5252/webservices/elab/elab.php"[Cplx] }


  // ************************************************************************ //
  // XML       : NewPatientRecord, global, <complexType>
  // Namespace : http://95.9.52.165:5252/webservices/elab/elab.php
  // ************************************************************************ //
  NewPatientRecord = class(TRemotable)
  private
    FPatientInfo: NewPatientInfo;
    FTestList: TestList2;
  public
    destructor Destroy; override;
  published
    property PatientInfo: NewPatientInfo  Index (IS_UNQL) read FPatientInfo write FPatientInfo;
    property TestList:    TestList2       Index (IS_UNQL) read FTestList write FTestList;
  end;



  // ************************************************************************ //
  // XML       : Antibiotic, global, <complexType>
  // Namespace : http://95.9.52.165:5252/webservices/elab/elab.php
  // ************************************************************************ //
  Antibiotic = class(TRemotable)
  private
    FAntibioticNo: string;
    FAntibioticName: string;
    FAntibioticName_Specified: boolean;
    FResult: AntibioticResult;
    FResultMIC: string;
    FResultMIC_Specified: boolean;
    procedure SetAntibioticName(Index: Integer; const Astring: string);
    function  AntibioticName_Specified(Index: Integer): boolean;
    procedure SetResultMIC(Index: Integer; const Astring: string);
    function  ResultMIC_Specified(Index: Integer): boolean;
  published
    property AntibioticNo:   string            Index (IS_UNQL) read FAntibioticNo write FAntibioticNo;
    property AntibioticName: string            Index (IS_OPTN or IS_UNQL) read FAntibioticName write SetAntibioticName stored AntibioticName_Specified;
    property Result:         AntibioticResult  Index (IS_UNQL) read FResult write FResult;
    property ResultMIC:      string            Index (IS_OPTN or IS_UNQL) read FResultMIC write SetResultMIC stored ResultMIC_Specified;
  end;

  AntibioticList = array of Antibiotic;         { "http://95.9.52.165:5252/webservices/elab/elab.php"[Cplx] }


  // ************************************************************************ //
  // XML       : Antibiogram, global, <complexType>
  // Namespace : http://95.9.52.165:5252/webservices/elab/elab.php
  // ************************************************************************ //
  Antibiogram = class(TRemotable)
  private
    FBacteriaNo: string;
    FBacteriaName: string;
    FBacteriaName_Specified: boolean;
    FAntibioticList: AntibioticList;
    procedure SetBacteriaName(Index: Integer; const Astring: string);
    function  BacteriaName_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property BacteriaNo:     string          Index (IS_UNQL) read FBacteriaNo write FBacteriaNo;
    property BacteriaName:   string          Index (IS_OPTN or IS_UNQL) read FBacteriaName write SetBacteriaName stored BacteriaName_Specified;
    property AntibioticList: AntibioticList  Index (IS_UNQL) read FAntibioticList write FAntibioticList;
  end;



  // ************************************************************************ //
  // XML       : Report, <complexType>
  // Namespace : http://95.9.52.165:5252/webservices/elab/elab.php
  // ************************************************************************ //
  Report = class(TRemotable)
  private
    FHospitalID: Integer;
    FHospitalName: string;
    FDepartmentID: Integer;
    FDepartmentName: string;
    FDoctorID: Integer;
    FDoctorName: string;
    FReportName: string;
    FReportDate: TXSDateTime;
    FReportStatus: ReportStatus;
    FReportGUID: string;
  public
    destructor Destroy; override;
  published
    property HospitalID:     Integer       Index (IS_UNQL) read FHospitalID write FHospitalID;
    property HospitalName:   string        Index (IS_UNQL) read FHospitalName write FHospitalName;
    property DepartmentID:   Integer       Index (IS_UNQL) read FDepartmentID write FDepartmentID;
    property DepartmentName: string        Index (IS_UNQL) read FDepartmentName write FDepartmentName;
    property DoctorID:       Integer       Index (IS_UNQL) read FDoctorID write FDoctorID;
    property DoctorName:     string        Index (IS_UNQL) read FDoctorName write FDoctorName;
    property ReportName:     string        Index (IS_UNQL) read FReportName write FReportName;
    property ReportDate:     TXSDateTime   Index (IS_UNQL) read FReportDate write FReportDate;
    property ReportStatus:   ReportStatus  Index (IS_UNQL) read FReportStatus write FReportStatus;
    property ReportGUID:     string        Index (IS_UNQL) read FReportGUID write FReportGUID;
  end;



  // ************************************************************************ //
  // XML       : GetReportFileRequest, global, <element>
  // Namespace : http://95.9.52.165:5252/webservices/elab/elab.php
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetReportFileRequest = class(TRemotable)
  private
    FLogin: Login;
    FTCKNo: string;
    FUPN: Integer;
    FReportGUID: string;
    FReportType: ReportType;
    FUseSSL: Boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property Login:      Login       Index (IS_UNQL) read FLogin write FLogin;
    property TCKNo:      string      Index (IS_UNQL) read FTCKNo write FTCKNo;
    property UPN:        Integer     Index (IS_UNQL) read FUPN write FUPN;
    property ReportGUID: string      Index (IS_UNQL) read FReportGUID write FReportGUID;
    property ReportType: ReportType  Index (IS_UNQL) read FReportType write FReportType;
    property UseSSL:     Boolean     Index (IS_UNQL) read FUseSSL write FUseSSL;
  end;



  // ************************************************************************ //
  // XML       : AddNewPatientRecordRequest, global, <element>
  // Namespace : http://95.9.52.165:5252/webservices/elab/elab.php
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  AddNewPatientRecordRequest = class(TRemotable)
  private
    FLogin: Login;
    FPatientRecord: Array_Of_NewPatientRecord;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property Login:         Login                      Index (IS_UNQL) read FLogin write FLogin;
    property PatientRecord: Array_Of_NewPatientRecord  Index (IS_UNBD or IS_UNQL) read FPatientRecord write FPatientRecord;
  end;

  TestList3  = array of Test;                   { "http://95.9.52.165:5252/webservices/elab/elab.php"[Cplx] }


  // ************************************************************************ //
  // XML       : PatientTests, global, <complexType>
  // Namespace : http://95.9.52.165:5252/webservices/elab/elab.php
  // ************************************************************************ //
  PatientTests = class(TRemotable)
  private
    FPatientInfo: PatientInfo;
    FTestList: TestList3;
  public
    destructor Destroy; override;
  published
    property PatientInfo: PatientInfo  Index (IS_UNQL) read FPatientInfo write FPatientInfo;
    property TestList:    TestList3    Index (IS_UNQL) read FTestList write FTestList;
  end;

  TestList4  = array of TestResult;             { "http://95.9.52.165:5252/webservices/elab/elab.php"[Cplx] }


  // ************************************************************************ //
  // XML       : PatientResults, global, <complexType>
  // Namespace : http://95.9.52.165:5252/webservices/elab/elab.php
  // ************************************************************************ //
  PatientResults = class(TRemotable)
  private
    FPatientInfo: PatientInfo;
    FTestList: TestList4;
  public
    destructor Destroy; override;
  published
    property PatientInfo: PatientInfo  Index (IS_UNQL) read FPatientInfo write FPatientInfo;
    property TestList:    TestList4    Index (IS_UNQL) read FTestList write FTestList;
  end;


  // ************************************************************************ //
  // Namespace : http://95.9.52.165:5252/webservices/elab/elab.php
  // soapAction: http://95.9.52.165:5252/webservices/elab/elab.php
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : document
  // use       : literal
  // binding   : eLabBinding
  // service   : eLabService
  // port      : eLabPortType
  // URL       : http://95.9.52.165:5252/webservices/elab/elab.php
  // ************************************************************************ //
  eLabPortType = interface(IInvokable)
  ['{0B7434B8-F7AF-CC82-5982-74363E3A86CB}']

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    function  AddNewPatientRecord(const Parameters: AddNewPatientRecordRequest): AddNewPatientRecordResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    function  GetTestListWithTCKNo(const Parameters: GetTestListWithTCKNoRequest): GetTestListWithTCKNoResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    function  GetTestListWithPatientNo(const Parameters: GetTestListWithPatientNoRequest): GetTestListWithPatientNoResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    function  GetTestListWithProtocolNo(const Parameters: GetTestListWithProtocolNoRequest): GetTestListWithProtocolNoResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    function  GetTestListWithBarcodeNo(const Parameters: GetTestListWithBarcodeNoRequest): GetTestListWithBarcodeNoResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    function  GetTestListWithDateRange(const Parameters: GetTestListWithDateRangeRequest): GetTestListWithDateRangeResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    function  GetTestResultWithTCKNo(const Parameters: GetTestResultWithTCKNoRequest): GetTestResultWithTCKNoResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    function  GetTestResultWithPatientNo(const Parameters: GetTestResultWithPatientNoRequest): GetTestResultWithPatientNoResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    function  GetTestResultWithProtocolNo(const Parameters: GetTestResultWithProtocolNoRequest): GetTestResultWithProtocolNoResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    function  GetTestResultWithBarcodeNo(const Parameters: GetTestResultWithBarcodeNoRequest): GetTestResultWithBarcodeNoResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    function  GetTestResultWithProcessNo(const Parameters: GetTestResultWithProcessNoRequest): GetTestResultWithProcessNoResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    function  GetTestResultWithReferenceCode(const Parameters: GetTestResultWithReferenceCodeRequest): GetTestResultWithReferenceCodeResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    function  GetTestResultWithDateRange(const Parameters: GetTestResultWithDateRangeRequest): GetTestResultWithDateRangeResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    function  SetTestResultWithBarcodeNo(const Parameters: SetTestResultWithBarcodeNoRequest): SetTestResultWithBarcodeNoResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    function  SetAntibiogramResultWithBarcodeNo(const Parameters: SetAntibiogramResultWithBarcodeNoRequest): SetAntibiogramResultWithBarcodeNoResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    function  GetPhoneNumber(const Parameters: GetPhoneNumberRequest): GetPhoneNumberResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    function  GetReportList(const Parameters: GetReportListRequest): GetReportListResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    function  GetReportFile(const Parameters: GetReportFileRequest): GetReportFileResponse; stdcall;
  end;

function GeteLabPortType(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): eLabPortType;


implementation
  uses SysUtils;

function GeteLabPortType(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): eLabPortType;
const
  defWSDL = 'http://95.9.52.165:5252/webservices/elab/elab.php?wsdl';
  defURL  = 'http://95.9.52.165:5252/webservices/elab/elab.php';
  defSvc  = 'eLabService';
  defPrt  = 'eLabPortType';
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
    Result := (RIO as eLabPortType);
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


constructor GetTestResultWithBarcodeNoResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetTestResultWithBarcodeNoResponse.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FGetTestResultWithBarcodeNoResult)-1 do
    SysUtils.FreeAndNil(FGetTestResultWithBarcodeNoResult[I]);
  System.SetLength(FGetTestResultWithBarcodeNoResult, 0);
  inherited Destroy;
end;

constructor GetTestResultWithProtocolNoResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetTestResultWithProtocolNoResponse.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FGetTestResultWithProtocolNoResult)-1 do
    SysUtils.FreeAndNil(FGetTestResultWithProtocolNoResult[I]);
  System.SetLength(FGetTestResultWithProtocolNoResult, 0);
  inherited Destroy;
end;

constructor GetTestResultWithReferenceCodeResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetTestResultWithReferenceCodeResponse.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FGetTestResultWithReferenceCodeResult)-1 do
    SysUtils.FreeAndNil(FGetTestResultWithReferenceCodeResult[I]);
  System.SetLength(FGetTestResultWithReferenceCodeResult, 0);
  inherited Destroy;
end;

constructor GetTestResultWithProcessNoResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetTestResultWithProcessNoResponse.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FGetTestResultWithProcessNoResult)-1 do
    SysUtils.FreeAndNil(FGetTestResultWithProcessNoResult[I]);
  System.SetLength(FGetTestResultWithProcessNoResult, 0);
  inherited Destroy;
end;

constructor GetTestListWithDateRangeResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetTestListWithDateRangeResponse.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FGetTestListWithDateRangeResult)-1 do
    SysUtils.FreeAndNil(FGetTestListWithDateRangeResult[I]);
  System.SetLength(FGetTestListWithDateRangeResult, 0);
  inherited Destroy;
end;

constructor GetTestListWithBarcodeNoResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetTestListWithBarcodeNoResponse.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FGetTestListWithBarcodeNoResult)-1 do
    SysUtils.FreeAndNil(FGetTestListWithBarcodeNoResult[I]);
  System.SetLength(FGetTestListWithBarcodeNoResult, 0);
  inherited Destroy;
end;

constructor GetTestResultWithPatientNoResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetTestResultWithPatientNoResponse.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FGetTestResultWithPatientNoResult)-1 do
    SysUtils.FreeAndNil(FGetTestResultWithPatientNoResult[I]);
  System.SetLength(FGetTestResultWithPatientNoResult, 0);
  inherited Destroy;
end;

constructor GetTestResultWithTCKNoResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetTestResultWithTCKNoResponse.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FGetTestResultWithTCKNoResult)-1 do
    SysUtils.FreeAndNil(FGetTestResultWithTCKNoResult[I]);
  System.SetLength(FGetTestResultWithTCKNoResult, 0);
  inherited Destroy;
end;

constructor GetReportListResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetReportListResponse.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FGetReportListResult)-1 do
    SysUtils.FreeAndNil(FGetReportListResult[I]);
  System.SetLength(FGetReportListResult, 0);
  inherited Destroy;
end;

constructor GetReportFileResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetReportFileResponse.Destroy;
begin
  SysUtils.FreeAndNil(FGetReportFileResult);
  inherited Destroy;
end;

constructor SetTestResultWithBarcodeNoResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor SetTestResultWithBarcodeNoResponse.Destroy;
begin
  SysUtils.FreeAndNil(FSetTestResultWithBarcodeNoResult);
  inherited Destroy;
end;

constructor GetTestResultWithDateRangeResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetTestResultWithDateRangeResponse.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FGetTestResultWithDateRangeResult)-1 do
    SysUtils.FreeAndNil(FGetTestResultWithDateRangeResult[I]);
  System.SetLength(FGetTestResultWithDateRangeResult, 0);
  inherited Destroy;
end;

constructor GetPhoneNumberResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetPhoneNumberResponse.Destroy;
begin
  SysUtils.FreeAndNil(FGetPhoneNumberResult);
  inherited Destroy;
end;

constructor SetAntibiogramResultWithBarcodeNoResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor SetAntibiogramResultWithBarcodeNoResponse.Destroy;
begin
  SysUtils.FreeAndNil(FSetAntibiogramResultWithBarcodeNoResult);
  inherited Destroy;
end;

procedure NewPatientRegisterInfo.SetBirthplaceId(Index: Integer; const AInteger: Integer);
begin
  FBirthplaceId := AInteger;
  FBirthplaceId_Specified := True;
end;

function NewPatientRegisterInfo.BirthplaceId_Specified(Index: Integer): boolean;
begin
  Result := FBirthplaceId_Specified;
end;

procedure NewPatientRegisterInfo.SetRegisteredCountyId(Index: Integer; const AInteger: Integer);
begin
  FRegisteredCountyId := AInteger;
  FRegisteredCountyId_Specified := True;
end;

function NewPatientRegisterInfo.RegisteredCountyId_Specified(Index: Integer): boolean;
begin
  Result := FRegisteredCountyId_Specified;
end;

procedure NewPatientRegisterInfo.SetRegisteredWillageName(Index: Integer; const Astring: string);
begin
  FRegisteredWillageName := Astring;
  FRegisteredWillageName_Specified := True;
end;

function NewPatientRegisterInfo.RegisteredWillageName_Specified(Index: Integer): boolean;
begin
  Result := FRegisteredWillageName_Specified;
end;

procedure NewPatientRegisterInfo.SetRegisteredBookNumber(Index: Integer; const AInteger: Integer);
begin
  FRegisteredBookNumber := AInteger;
  FRegisteredBookNumber_Specified := True;
end;

function NewPatientRegisterInfo.RegisteredBookNumber_Specified(Index: Integer): boolean;
begin
  Result := FRegisteredBookNumber_Specified;
end;

procedure NewPatientRegisterInfo.SetRegisteredFamilyLineNumber(Index: Integer; const AInteger: Integer);
begin
  FRegisteredFamilyLineNumber := AInteger;
  FRegisteredFamilyLineNumber_Specified := True;
end;

function NewPatientRegisterInfo.RegisteredFamilyLineNumber_Specified(Index: Integer): boolean;
begin
  Result := FRegisteredFamilyLineNumber_Specified;
end;

procedure NewPatientRegisterInfo.SetRegisteredLineNumber(Index: Integer; const AInteger: Integer);
begin
  FRegisteredLineNumber := AInteger;
  FRegisteredLineNumber_Specified := True;
end;

function NewPatientRegisterInfo.RegisteredLineNumber_Specified(Index: Integer): boolean;
begin
  Result := FRegisteredLineNumber_Specified;
end;

procedure NewPatientRegisterInfo.SetCivilStatus(Index: Integer; const ACivilStatus: CivilStatus);
begin
  FCivilStatus := ACivilStatus;
  FCivilStatus_Specified := True;
end;

function NewPatientRegisterInfo.CivilStatus_Specified(Index: Integer): boolean;
begin
  Result := FCivilStatus_Specified;
end;

procedure ReportFile.SetFileName(Index: Integer; const Astring: string);
begin
  FFileName := Astring;
  FFileName_Specified := True;
end;

function ReportFile.FileName_Specified(Index: Integer): boolean;
begin
  Result := FFileName_Specified;
end;

constructor SetAntibiogramResultWithBarcodeNoRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor SetAntibiogramResultWithBarcodeNoRequest.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FAntibiogramList)-1 do
    SysUtils.FreeAndNil(FAntibiogramList[I]);
  System.SetLength(FAntibiogramList, 0);
  SysUtils.FreeAndNil(FLogin);
  inherited Destroy;
end;

procedure SetAntibiogramResultWithBarcodeNoRequest.SetTestName(Index: Integer; const Astring: string);
begin
  FTestName := Astring;
  FTestName_Specified := True;
end;

function SetAntibiogramResultWithBarcodeNoRequest.TestName_Specified(Index: Integer): boolean;
begin
  Result := FTestName_Specified;
end;

constructor GetPhoneNumberRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetPhoneNumberRequest.Destroy;
begin
  SysUtils.FreeAndNil(FLogin);
  inherited Destroy;
end;

constructor SetTestResultWithBarcodeNoRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor SetTestResultWithBarcodeNoRequest.Destroy;
begin
  SysUtils.FreeAndNil(FLogin);
  SysUtils.FreeAndNil(FTestResult);
  inherited Destroy;
end;

procedure RequestFault.Setcode(Index: Integer; const Astring: string);
begin
  Fcode := Astring;
  Fcode_Specified := True;
end;

function RequestFault.code_Specified(Index: Integer): boolean;
begin
  Result := Fcode_Specified;
end;

procedure RequestFault.Setmessage_(Index: Integer; const Astring: string);
begin
  Fmessage_ := Astring;
  Fmessage__Specified := True;
end;

function RequestFault.message__Specified(Index: Integer): boolean;
begin
  Result := Fmessage__Specified;
end;

procedure RequestFault.Setoffset(Index: Integer; const Astring: string);
begin
  Foffset := Astring;
  Foffset_Specified := True;
end;

function RequestFault.offset_Specified(Index: Integer): boolean;
begin
  Result := Foffset_Specified;
end;

procedure RequestFault.Setsqltext(Index: Integer; const Astring: string);
begin
  Fsqltext := Astring;
  Fsqltext_Specified := True;
end;

function RequestFault.sqltext_Specified(Index: Integer): boolean;
begin
  Result := Fsqltext_Specified;
end;

procedure GetReportFileResult.SetPdfFile(Index: Integer; const ATByteDynArray: TByteDynArray);
begin
  FPdfFile := ATByteDynArray;
  FPdfFile_Specified := True;
end;

function GetReportFileResult.PdfFile_Specified(Index: Integer): boolean;
begin
  Result := FPdfFile_Specified;
end;

procedure GetReportFileResult.SetPdfFilePath(Index: Integer; const Astring: string);
begin
  FPdfFilePath := Astring;
  FPdfFilePath_Specified := True;
end;

function GetReportFileResult.PdfFilePath_Specified(Index: Integer): boolean;
begin
  Result := FPdfFilePath_Specified;
end;

constructor GetReportListRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetReportListRequest.Destroy;
begin
  SysUtils.FreeAndNil(FLogin);
  inherited Destroy;
end;

constructor GetTestResultWithBarcodeNoRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetTestResultWithBarcodeNoRequest.Destroy;
begin
  SysUtils.FreeAndNil(FLogin);
  inherited Destroy;
end;

constructor GetTestResultWithProtocolNoRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetTestResultWithProtocolNoRequest.Destroy;
begin
  SysUtils.FreeAndNil(FLogin);
  inherited Destroy;
end;

constructor GetTestResultWithReferenceCodeRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetTestResultWithReferenceCodeRequest.Destroy;
begin
  SysUtils.FreeAndNil(FLogin);
  inherited Destroy;
end;

constructor GetTestResultWithProcessNoRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetTestResultWithProcessNoRequest.Destroy;
begin
  SysUtils.FreeAndNil(FLogin);
  inherited Destroy;
end;

constructor GetTestListWithBarcodeNoRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetTestListWithBarcodeNoRequest.Destroy;
begin
  SysUtils.FreeAndNil(FLogin);
  inherited Destroy;
end;

procedure NewPatientContactInfo.SetMobilePhone(Index: Integer; const Astring: string);
begin
  FMobilePhone := Astring;
  FMobilePhone_Specified := True;
end;

function NewPatientContactInfo.MobilePhone_Specified(Index: Integer): boolean;
begin
  Result := FMobilePhone_Specified;
end;

procedure NewPatientContactInfo.SetWorkPhone(Index: Integer; const Astring: string);
begin
  FWorkPhone := Astring;
  FWorkPhone_Specified := True;
end;

function NewPatientContactInfo.WorkPhone_Specified(Index: Integer): boolean;
begin
  Result := FWorkPhone_Specified;
end;

procedure NewPatientContactInfo.SetHomePhone(Index: Integer; const Astring: string);
begin
  FHomePhone := Astring;
  FHomePhone_Specified := True;
end;

function NewPatientContactInfo.HomePhone_Specified(Index: Integer): boolean;
begin
  Result := FHomePhone_Specified;
end;

procedure NewPatientContactInfo.SetEMail(Index: Integer; const Astring: string);
begin
  FEMail := Astring;
  FEMail_Specified := True;
end;

function NewPatientContactInfo.EMail_Specified(Index: Integer): boolean;
begin
  Result := FEMail_Specified;
end;

procedure NewPatientContactInfo.SetQuarterName(Index: Integer; const Astring: string);
begin
  FQuarterName := Astring;
  FQuarterName_Specified := True;
end;

function NewPatientContactInfo.QuarterName_Specified(Index: Integer): boolean;
begin
  Result := FQuarterName_Specified;
end;

procedure NewPatientContactInfo.SetAddress(Index: Integer; const Astring: string);
begin
  FAddress := Astring;
  FAddress_Specified := True;
end;

function NewPatientContactInfo.Address_Specified(Index: Integer): boolean;
begin
  Result := FAddress_Specified;
end;

procedure NewPatientContactInfo.SetOuterDoorNo(Index: Integer; const Astring: string);
begin
  FOuterDoorNo := Astring;
  FOuterDoorNo_Specified := True;
end;

function NewPatientContactInfo.OuterDoorNo_Specified(Index: Integer): boolean;
begin
  Result := FOuterDoorNo_Specified;
end;

procedure NewPatientContactInfo.SetInnerDoorNo(Index: Integer; const Astring: string);
begin
  FInnerDoorNo := Astring;
  FInnerDoorNo_Specified := True;
end;

function NewPatientContactInfo.InnerDoorNo_Specified(Index: Integer): boolean;
begin
  Result := FInnerDoorNo_Specified;
end;

procedure NewPatientContactInfo.SetCountyId(Index: Integer; const AInteger: Integer);
begin
  FCountyId := AInteger;
  FCountyId_Specified := True;
end;

function NewPatientContactInfo.CountyId_Specified(Index: Integer): boolean;
begin
  Result := FCountyId_Specified;
end;

procedure NewPatientContactInfo.SetCountryId(Index: Integer; const AInteger: Integer);
begin
  FCountryId := AInteger;
  FCountryId_Specified := True;
end;

function NewPatientContactInfo.CountryId_Specified(Index: Integer): boolean;
begin
  Result := FCountryId_Specified;
end;

destructor NewTest.Destroy;
begin
  SysUtils.FreeAndNil(FSamplingTime);
  inherited Destroy;
end;

destructor TestResult.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FReportFiles)-1 do
    SysUtils.FreeAndNil(FReportFiles[I]);
  System.SetLength(FReportFiles, 0);
  SysUtils.FreeAndNil(FMinValue);
  SysUtils.FreeAndNil(FMaxValue);
  SysUtils.FreeAndNil(FRWTime);
  SysUtils.FreeAndNil(FAppTime);
  SysUtils.FreeAndNil(FAcceptanceTime);
  inherited Destroy;
end;

procedure TestResult.SetTestName(Index: Integer; const Astring: string);
begin
  FTestName := Astring;
  FTestName_Specified := True;
end;

function TestResult.TestName_Specified(Index: Integer): boolean;
begin
  Result := FTestName_Specified;
end;

procedure TestResult.SetFlag(Index: Integer; const AFlag: Flag);
begin
  FFlag := AFlag;
  FFlag_Specified := True;
end;

function TestResult.Flag_Specified(Index: Integer): boolean;
begin
  Result := FFlag_Specified;
end;

procedure TestResult.SetUnit_(Index: Integer; const Astring: string);
begin
  FUnit_ := Astring;
  FUnit__Specified := True;
end;

function TestResult.Unit__Specified(Index: Integer): boolean;
begin
  Result := FUnit__Specified;
end;

procedure TestResult.SetMinValue(Index: Integer; const ATXSDecimal: TXSDecimal);
begin
  FMinValue := ATXSDecimal;
  FMinValue_Specified := True;
end;

function TestResult.MinValue_Specified(Index: Integer): boolean;
begin
  Result := FMinValue_Specified;
end;

procedure TestResult.SetMaxValue(Index: Integer; const ATXSDecimal: TXSDecimal);
begin
  FMaxValue := ATXSDecimal;
  FMaxValue_Specified := True;
end;

function TestResult.MaxValue_Specified(Index: Integer): boolean;
begin
  Result := FMaxValue_Specified;
end;

procedure TestResult.SetRefRange(Index: Integer; const Astring: string);
begin
  FRefRange := Astring;
  FRefRange_Specified := True;
end;

function TestResult.RefRange_Specified(Index: Integer): boolean;
begin
  Result := FRefRange_Specified;
end;

procedure TestResult.SetNote(Index: Integer; const Astring: string);
begin
  FNote := Astring;
  FNote_Specified := True;
end;

function TestResult.Note_Specified(Index: Integer): boolean;
begin
  Result := FNote_Specified;
end;

procedure TestResult.SetInstrumentNo(Index: Integer; const AInteger: Integer);
begin
  FInstrumentNo := AInteger;
  FInstrumentNo_Specified := True;
end;

function TestResult.InstrumentNo_Specified(Index: Integer): boolean;
begin
  Result := FInstrumentNo_Specified;
end;

procedure TestResult.SetRerun(Index: Integer; const AInteger: Integer);
begin
  FRerun := AInteger;
  FRerun_Specified := True;
end;

function TestResult.Rerun_Specified(Index: Integer): boolean;
begin
  Result := FRerun_Specified;
end;

procedure TestResult.SetAcceptanceTime(Index: Integer; const ATXSDateTime: TXSDateTime);
begin
  FAcceptanceTime := ATXSDateTime;
  FAcceptanceTime_Specified := True;
end;

function TestResult.AcceptanceTime_Specified(Index: Integer): boolean;
begin
  Result := FAcceptanceTime_Specified;
end;

procedure TestResult.SetAcceptingUser(Index: Integer; const Astring: string);
begin
  FAcceptingUser := Astring;
  FAcceptingUser_Specified := True;
end;

function TestResult.AcceptingUser_Specified(Index: Integer): boolean;
begin
  Result := FAcceptingUser_Specified;
end;

procedure TestResult.SetReportFiles(Index: Integer; const AReportFiles: ReportFiles);
begin
  FReportFiles := AReportFiles;
  FReportFiles_Specified := True;
end;

function TestResult.ReportFiles_Specified(Index: Integer): boolean;
begin
  Result := FReportFiles_Specified;
end;

constructor GetTestResultWithDateRangeRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetTestResultWithDateRangeRequest.Destroy;
begin
  SysUtils.FreeAndNil(FLogin);
  SysUtils.FreeAndNil(FStartTime);
  SysUtils.FreeAndNil(FEndTime);
  inherited Destroy;
end;

constructor GetTestResultWithTCKNoRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetTestResultWithTCKNoRequest.Destroy;
begin
  SysUtils.FreeAndNil(FLogin);
  SysUtils.FreeAndNil(FStartTime);
  SysUtils.FreeAndNil(FEndTime);
  inherited Destroy;
end;

procedure GetTestResultWithTCKNoRequest.SetStartTime(Index: Integer; const ATXSDateTime: TXSDateTime);
begin
  FStartTime := ATXSDateTime;
  FStartTime_Specified := True;
end;

function GetTestResultWithTCKNoRequest.StartTime_Specified(Index: Integer): boolean;
begin
  Result := FStartTime_Specified;
end;

procedure GetTestResultWithTCKNoRequest.SetEndTime(Index: Integer; const ATXSDateTime: TXSDateTime);
begin
  FEndTime := ATXSDateTime;
  FEndTime_Specified := True;
end;

function GetTestResultWithTCKNoRequest.EndTime_Specified(Index: Integer): boolean;
begin
  Result := FEndTime_Specified;
end;

constructor GetTestResultWithPatientNoRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetTestResultWithPatientNoRequest.Destroy;
begin
  SysUtils.FreeAndNil(FLogin);
  SysUtils.FreeAndNil(FStartTime);
  SysUtils.FreeAndNil(FEndTime);
  inherited Destroy;
end;

procedure GetTestResultWithPatientNoRequest.SetStartTime(Index: Integer; const ATXSDateTime: TXSDateTime);
begin
  FStartTime := ATXSDateTime;
  FStartTime_Specified := True;
end;

function GetTestResultWithPatientNoRequest.StartTime_Specified(Index: Integer): boolean;
begin
  Result := FStartTime_Specified;
end;

procedure GetTestResultWithPatientNoRequest.SetEndTime(Index: Integer; const ATXSDateTime: TXSDateTime);
begin
  FEndTime := ATXSDateTime;
  FEndTime_Specified := True;
end;

function GetTestResultWithPatientNoRequest.EndTime_Specified(Index: Integer): boolean;
begin
  Result := FEndTime_Specified;
end;

constructor GetTestListWithDateRangeRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetTestListWithDateRangeRequest.Destroy;
begin
  SysUtils.FreeAndNil(FLogin);
  SysUtils.FreeAndNil(FStartTime);
  SysUtils.FreeAndNil(FEndTime);
  inherited Destroy;
end;

destructor NewPatientInfo.Destroy;
begin
  SysUtils.FreeAndNil(FBirthDate);
  SysUtils.FreeAndNil(FPatientContactInfo);
  SysUtils.FreeAndNil(FPatientRegisterInfo);
  inherited Destroy;
end;

procedure NewPatientInfo.SetTCKNo(Index: Integer; const Astring: string);
begin
  FTCKNo := Astring;
  FTCKNo_Specified := True;
end;

function NewPatientInfo.TCKNo_Specified(Index: Integer): boolean;
begin
  Result := FTCKNo_Specified;
end;

procedure NewPatientInfo.SetFatherName(Index: Integer; const Astring: string);
begin
  FFatherName := Astring;
  FFatherName_Specified := True;
end;

function NewPatientInfo.FatherName_Specified(Index: Integer): boolean;
begin
  Result := FFatherName_Specified;
end;

procedure NewPatientInfo.SetMotherName(Index: Integer; const Astring: string);
begin
  FMotherName := Astring;
  FMotherName_Specified := True;
end;

function NewPatientInfo.MotherName_Specified(Index: Integer): boolean;
begin
  Result := FMotherName_Specified;
end;

procedure NewPatientInfo.SetPatientContactInfo(Index: Integer; const ANewPatientContactInfo: NewPatientContactInfo);
begin
  FPatientContactInfo := ANewPatientContactInfo;
  FPatientContactInfo_Specified := True;
end;

function NewPatientInfo.PatientContactInfo_Specified(Index: Integer): boolean;
begin
  Result := FPatientContactInfo_Specified;
end;

procedure NewPatientInfo.SetPatientRegisterInfo(Index: Integer; const ANewPatientRegisterInfo: NewPatientRegisterInfo);
begin
  FPatientRegisterInfo := ANewPatientRegisterInfo;
  FPatientRegisterInfo_Specified := True;
end;

function NewPatientInfo.PatientRegisterInfo_Specified(Index: Integer): boolean;
begin
  Result := FPatientRegisterInfo_Specified;
end;

destructor PatientInfo.Destroy;
begin
  SysUtils.FreeAndNil(FBirthDate);
  SysUtils.FreeAndNil(FRequestTime);
  SysUtils.FreeAndNil(FSamplingTime);
  inherited Destroy;
end;

constructor GetTestListWithTCKNoRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetTestListWithTCKNoRequest.Destroy;
begin
  SysUtils.FreeAndNil(FLogin);
  SysUtils.FreeAndNil(FStartTime);
  SysUtils.FreeAndNil(FEndTime);
  inherited Destroy;
end;

procedure GetTestListWithTCKNoRequest.SetStartTime(Index: Integer; const ATXSDateTime: TXSDateTime);
begin
  FStartTime := ATXSDateTime;
  FStartTime_Specified := True;
end;

function GetTestListWithTCKNoRequest.StartTime_Specified(Index: Integer): boolean;
begin
  Result := FStartTime_Specified;
end;

procedure GetTestListWithTCKNoRequest.SetEndTime(Index: Integer; const ATXSDateTime: TXSDateTime);
begin
  FEndTime := ATXSDateTime;
  FEndTime_Specified := True;
end;

function GetTestListWithTCKNoRequest.EndTime_Specified(Index: Integer): boolean;
begin
  Result := FEndTime_Specified;
end;

constructor AddNewPatientRecordResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor AddNewPatientRecordResponse.Destroy;
begin
  SysUtils.FreeAndNil(FAddNewPatientRecordResult);
  inherited Destroy;
end;

destructor AddNewPatientRecordResult.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FTestList)-1 do
    SysUtils.FreeAndNil(FTestList[I]);
  System.SetLength(FTestList, 0);
  inherited Destroy;
end;

constructor GetTestListWithProtocolNoRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetTestListWithProtocolNoRequest.Destroy;
begin
  SysUtils.FreeAndNil(FLogin);
  inherited Destroy;
end;

constructor GetTestListWithProtocolNoResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetTestListWithProtocolNoResponse.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FGetTestListWithProtocolNoResult)-1 do
    SysUtils.FreeAndNil(FGetTestListWithProtocolNoResult[I]);
  System.SetLength(FGetTestListWithProtocolNoResult, 0);
  inherited Destroy;
end;

constructor GetTestListWithTCKNoResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetTestListWithTCKNoResponse.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FGetTestListWithTCKNoResult)-1 do
    SysUtils.FreeAndNil(FGetTestListWithTCKNoResult[I]);
  System.SetLength(FGetTestListWithTCKNoResult, 0);
  inherited Destroy;
end;

constructor GetTestListWithPatientNoRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetTestListWithPatientNoRequest.Destroy;
begin
  SysUtils.FreeAndNil(FLogin);
  SysUtils.FreeAndNil(FStartTime);
  SysUtils.FreeAndNil(FEndTime);
  inherited Destroy;
end;

procedure GetTestListWithPatientNoRequest.SetStartTime(Index: Integer; const ATXSDateTime: TXSDateTime);
begin
  FStartTime := ATXSDateTime;
  FStartTime_Specified := True;
end;

function GetTestListWithPatientNoRequest.StartTime_Specified(Index: Integer): boolean;
begin
  Result := FStartTime_Specified;
end;

procedure GetTestListWithPatientNoRequest.SetEndTime(Index: Integer; const ATXSDateTime: TXSDateTime);
begin
  FEndTime := ATXSDateTime;
  FEndTime_Specified := True;
end;

function GetTestListWithPatientNoRequest.EndTime_Specified(Index: Integer): boolean;
begin
  Result := FEndTime_Specified;
end;

constructor GetTestListWithPatientNoResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetTestListWithPatientNoResponse.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FGetTestListWithPatientNoResult)-1 do
    SysUtils.FreeAndNil(FGetTestListWithPatientNoResult[I]);
  System.SetLength(FGetTestListWithPatientNoResult, 0);
  inherited Destroy;
end;

destructor NewPatientRecord.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FTestList)-1 do
    SysUtils.FreeAndNil(FTestList[I]);
  System.SetLength(FTestList, 0);
  SysUtils.FreeAndNil(FPatientInfo);
  inherited Destroy;
end;

procedure Antibiotic.SetAntibioticName(Index: Integer; const Astring: string);
begin
  FAntibioticName := Astring;
  FAntibioticName_Specified := True;
end;

function Antibiotic.AntibioticName_Specified(Index: Integer): boolean;
begin
  Result := FAntibioticName_Specified;
end;

procedure Antibiotic.SetResultMIC(Index: Integer; const Astring: string);
begin
  FResultMIC := Astring;
  FResultMIC_Specified := True;
end;

function Antibiotic.ResultMIC_Specified(Index: Integer): boolean;
begin
  Result := FResultMIC_Specified;
end;

destructor Antibiogram.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FAntibioticList)-1 do
    SysUtils.FreeAndNil(FAntibioticList[I]);
  System.SetLength(FAntibioticList, 0);
  inherited Destroy;
end;

procedure Antibiogram.SetBacteriaName(Index: Integer; const Astring: string);
begin
  FBacteriaName := Astring;
  FBacteriaName_Specified := True;
end;

function Antibiogram.BacteriaName_Specified(Index: Integer): boolean;
begin
  Result := FBacteriaName_Specified;
end;

destructor Report.Destroy;
begin
  SysUtils.FreeAndNil(FReportDate);
  inherited Destroy;
end;

constructor GetReportFileRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetReportFileRequest.Destroy;
begin
  SysUtils.FreeAndNil(FLogin);
  inherited Destroy;
end;

constructor AddNewPatientRecordRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor AddNewPatientRecordRequest.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FPatientRecord)-1 do
    SysUtils.FreeAndNil(FPatientRecord[I]);
  System.SetLength(FPatientRecord, 0);
  SysUtils.FreeAndNil(FLogin);
  inherited Destroy;
end;

destructor PatientTests.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FTestList)-1 do
    SysUtils.FreeAndNil(FTestList[I]);
  System.SetLength(FTestList, 0);
  SysUtils.FreeAndNil(FPatientInfo);
  inherited Destroy;
end;

destructor PatientResults.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FTestList)-1 do
    SysUtils.FreeAndNil(FTestList[I]);
  System.SetLength(FTestList, 0);
  SysUtils.FreeAndNil(FPatientInfo);
  inherited Destroy;
end;

initialization
  { eLabPortType }
  InvRegistry.RegisterInterface(TypeInfo(eLabPortType), 'http://95.9.52.165:5252/webservices/elab/elab.php', 'utf-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(eLabPortType), 'http://95.9.52.165:5252/webservices/elab/elab.php');
  InvRegistry.RegisterInvokeOptions(TypeInfo(eLabPortType), ioDocument);
  InvRegistry.RegisterInvokeOptions(TypeInfo(eLabPortType), ioLiteral);
  RemClassRegistry.RegisterXSInfo(TypeInfo(GetTestResultWithBarcodeNoResult), 'http://95.9.52.165:5252/webservices/elab/elab.php', 'GetTestResultWithBarcodeNoResult');
  RemClassRegistry.RegisterXSClass(GetTestResultWithBarcodeNoResponse, 'http://95.9.52.165:5252/webservices/elab/elab.php', 'GetTestResultWithBarcodeNoResponse');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(GetTestResultWithBarcodeNoResponse), 'GetTestResultWithBarcodeNoResult', '[ArrayItemName="PatientResults"]');
  RemClassRegistry.RegisterSerializeOptions(GetTestResultWithBarcodeNoResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSInfo(TypeInfo(GetTestResultWithProtocolNoResult), 'http://95.9.52.165:5252/webservices/elab/elab.php', 'GetTestResultWithProtocolNoResult');
  RemClassRegistry.RegisterXSClass(GetTestResultWithProtocolNoResponse, 'http://95.9.52.165:5252/webservices/elab/elab.php', 'GetTestResultWithProtocolNoResponse');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(GetTestResultWithProtocolNoResponse), 'GetTestResultWithProtocolNoResult', '[ArrayItemName="PatientResults"]');
  RemClassRegistry.RegisterSerializeOptions(GetTestResultWithProtocolNoResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSInfo(TypeInfo(GetTestResultWithReferenceCodeResult), 'http://95.9.52.165:5252/webservices/elab/elab.php', 'GetTestResultWithReferenceCodeResult');
  RemClassRegistry.RegisterXSClass(GetTestResultWithReferenceCodeResponse, 'http://95.9.52.165:5252/webservices/elab/elab.php', 'GetTestResultWithReferenceCodeResponse');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(GetTestResultWithReferenceCodeResponse), 'GetTestResultWithReferenceCodeResult', '[ArrayItemName="PatientResults"]');
  RemClassRegistry.RegisterSerializeOptions(GetTestResultWithReferenceCodeResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSInfo(TypeInfo(GetTestResultWithProcessNoResult), 'http://95.9.52.165:5252/webservices/elab/elab.php', 'GetTestResultWithProcessNoResult');
  RemClassRegistry.RegisterXSClass(GetTestResultWithProcessNoResponse, 'http://95.9.52.165:5252/webservices/elab/elab.php', 'GetTestResultWithProcessNoResponse');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(GetTestResultWithProcessNoResponse), 'GetTestResultWithProcessNoResult', '[ArrayItemName="PatientResults"]');
  RemClassRegistry.RegisterSerializeOptions(GetTestResultWithProcessNoResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSInfo(TypeInfo(GetTestListWithDateRangeResult), 'http://95.9.52.165:5252/webservices/elab/elab.php', 'GetTestListWithDateRangeResult');
  RemClassRegistry.RegisterXSClass(GetTestListWithDateRangeResponse, 'http://95.9.52.165:5252/webservices/elab/elab.php', 'GetTestListWithDateRangeResponse');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(GetTestListWithDateRangeResponse), 'GetTestListWithDateRangeResult', '[ArrayItemName="PatientTests"]');
  RemClassRegistry.RegisterSerializeOptions(GetTestListWithDateRangeResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSInfo(TypeInfo(GetTestListWithBarcodeNoResult), 'http://95.9.52.165:5252/webservices/elab/elab.php', 'GetTestListWithBarcodeNoResult');
  RemClassRegistry.RegisterXSClass(GetTestListWithBarcodeNoResponse, 'http://95.9.52.165:5252/webservices/elab/elab.php', 'GetTestListWithBarcodeNoResponse');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(GetTestListWithBarcodeNoResponse), 'GetTestListWithBarcodeNoResult', '[ArrayItemName="PatientTests"]');
  RemClassRegistry.RegisterSerializeOptions(GetTestListWithBarcodeNoResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSInfo(TypeInfo(GetTestResultWithPatientNoResult), 'http://95.9.52.165:5252/webservices/elab/elab.php', 'GetTestResultWithPatientNoResult');
  RemClassRegistry.RegisterXSClass(GetTestResultWithPatientNoResponse, 'http://95.9.52.165:5252/webservices/elab/elab.php', 'GetTestResultWithPatientNoResponse');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(GetTestResultWithPatientNoResponse), 'GetTestResultWithPatientNoResult', '[ArrayItemName="PatientResults"]');
  RemClassRegistry.RegisterSerializeOptions(GetTestResultWithPatientNoResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSInfo(TypeInfo(GetTestResultWithTCKNoResult), 'http://95.9.52.165:5252/webservices/elab/elab.php', 'GetTestResultWithTCKNoResult');
  RemClassRegistry.RegisterXSClass(GetTestResultWithTCKNoResponse, 'http://95.9.52.165:5252/webservices/elab/elab.php', 'GetTestResultWithTCKNoResponse');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(GetTestResultWithTCKNoResponse), 'GetTestResultWithTCKNoResult', '[ArrayItemName="PatientResults"]');
  RemClassRegistry.RegisterSerializeOptions(GetTestResultWithTCKNoResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSInfo(TypeInfo(GetReportListResult), 'http://95.9.52.165:5252/webservices/elab/elab.php', 'GetReportListResult');
  RemClassRegistry.RegisterXSClass(GetReportListResponse, 'http://95.9.52.165:5252/webservices/elab/elab.php', 'GetReportListResponse');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(GetReportListResponse), 'GetReportListResult', '[ArrayItemName="Report"]');
  RemClassRegistry.RegisterSerializeOptions(GetReportListResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_NewPatientRecord), 'http://95.9.52.165:5252/webservices/elab/elab.php', 'Array_Of_NewPatientRecord');
  RemClassRegistry.RegisterXSClass(GetReportFileResponse, 'http://95.9.52.165:5252/webservices/elab/elab.php', 'GetReportFileResponse');
  RemClassRegistry.RegisterSerializeOptions(GetReportFileResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(SetTestResultWithBarcodeNoResponse, 'http://95.9.52.165:5252/webservices/elab/elab.php', 'SetTestResultWithBarcodeNoResponse');
  RemClassRegistry.RegisterSerializeOptions(SetTestResultWithBarcodeNoResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSInfo(TypeInfo(GetTestResultWithDateRangeResult), 'http://95.9.52.165:5252/webservices/elab/elab.php', 'GetTestResultWithDateRangeResult');
  RemClassRegistry.RegisterXSClass(GetTestResultWithDateRangeResponse, 'http://95.9.52.165:5252/webservices/elab/elab.php', 'GetTestResultWithDateRangeResponse');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(GetTestResultWithDateRangeResponse), 'GetTestResultWithDateRangeResult', '[ArrayItemName="PatientResults"]');
  RemClassRegistry.RegisterSerializeOptions(GetTestResultWithDateRangeResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetPhoneNumberResponse, 'http://95.9.52.165:5252/webservices/elab/elab.php', 'GetPhoneNumberResponse');
  RemClassRegistry.RegisterSerializeOptions(GetPhoneNumberResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSInfo(TypeInfo(AntibiogramList), 'http://95.9.52.165:5252/webservices/elab/elab.php', 'AntibiogramList');
  RemClassRegistry.RegisterXSClass(SetAntibiogramResultWithBarcodeNoResponse, 'http://95.9.52.165:5252/webservices/elab/elab.php', 'SetAntibiogramResultWithBarcodeNoResponse');
  RemClassRegistry.RegisterSerializeOptions(SetAntibiogramResultWithBarcodeNoResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSInfo(TypeInfo(GetTestListWithProtocolNoResult), 'http://95.9.52.165:5252/webservices/elab/elab.php', 'GetTestListWithProtocolNoResult');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Flag), 'http://95.9.52.165:5252/webservices/elab/elab.php', 'Flag');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(Flag), 'H_', 'H+');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(Flag), 'L_', 'L-');
  RemClassRegistry.RegisterXSInfo(TypeInfo(PatientType), 'http://95.9.52.165:5252/webservices/elab/elab.php', 'PatientType');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(PatientType), '_0', '0');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(PatientType), '_1', '1');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Emergency), 'http://95.9.52.165:5252/webservices/elab/elab.php', 'Emergency');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(Emergency), '_0', '0');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(Emergency), '_1', '1');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ReportFileType), 'http://95.9.52.165:5252/webservices/elab/elab.php', 'ReportFileType');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ReportFiles), 'http://95.9.52.165:5252/webservices/elab/elab.php', 'ReportFiles');
  RemClassRegistry.RegisterXSInfo(TypeInfo(CivilStatus), 'http://95.9.52.165:5252/webservices/elab/elab.php', 'CivilStatus');
  RemClassRegistry.RegisterXSClass(Login, 'http://95.9.52.165:5252/webservices/elab/elab.php', 'Login');
  RemClassRegistry.RegisterXSClass(NewPatientRegisterInfo, 'http://95.9.52.165:5252/webservices/elab/elab.php', 'NewPatientRegisterInfo');
  RemClassRegistry.RegisterXSClass(ReportFile, 'http://95.9.52.165:5252/webservices/elab/elab.php', 'ReportFile');
  RemClassRegistry.RegisterXSClass(Test, 'http://95.9.52.165:5252/webservices/elab/elab.php', 'Test');
  RemClassRegistry.RegisterXSClass(SetAntibiogramResultWithBarcodeNoRequest, 'http://95.9.52.165:5252/webservices/elab/elab.php', 'SetAntibiogramResultWithBarcodeNoRequest');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(SetAntibiogramResultWithBarcodeNoRequest), 'AntibiogramList', '[ArrayItemName="Antibiogram"]');
  RemClassRegistry.RegisterSerializeOptions(SetAntibiogramResultWithBarcodeNoRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetPhoneNumberRequest, 'http://95.9.52.165:5252/webservices/elab/elab.php', 'GetPhoneNumberRequest');
  RemClassRegistry.RegisterSerializeOptions(GetPhoneNumberRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(SetAntibiogramResultWithBarcodeNoResult, 'http://95.9.52.165:5252/webservices/elab/elab.php', 'SetAntibiogramResultWithBarcodeNoResult');
  RemClassRegistry.RegisterXSClass(SetTestResultWithBarcodeNoResult, 'http://95.9.52.165:5252/webservices/elab/elab.php', 'SetTestResultWithBarcodeNoResult');
  RemClassRegistry.RegisterXSClass(SetTestResultWithBarcodeNoRequest, 'http://95.9.52.165:5252/webservices/elab/elab.php', 'SetTestResultWithBarcodeNoRequest');
  RemClassRegistry.RegisterSerializeOptions(SetTestResultWithBarcodeNoRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(RequestFault, 'http://95.9.52.165:5252/webservices/elab/elab.php', 'RequestFault');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(RequestFault), 'message_', '[ExtName="message"]');
  RemClassRegistry.RegisterXSClass(GetReportFileResult, 'http://95.9.52.165:5252/webservices/elab/elab.php', 'GetReportFileResult');
  RemClassRegistry.RegisterXSClass(GetReportListRequest, 'http://95.9.52.165:5252/webservices/elab/elab.php', 'GetReportListRequest');
  RemClassRegistry.RegisterSerializeOptions(GetReportListRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSInfo(TypeInfo(MobilePhoneList), 'http://95.9.52.165:5252/webservices/elab/elab.php', 'MobilePhoneList');
  RemClassRegistry.RegisterXSClass(GetTestResultWithBarcodeNoRequest, 'http://95.9.52.165:5252/webservices/elab/elab.php', 'GetTestResultWithBarcodeNoRequest');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(GetTestResultWithBarcodeNoRequest), 'BarcodeNo', '[ArrayItemName="MobilePhone"]');
  RemClassRegistry.RegisterSerializeOptions(GetTestResultWithBarcodeNoRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetTestResultWithProtocolNoRequest, 'http://95.9.52.165:5252/webservices/elab/elab.php', 'GetTestResultWithProtocolNoRequest');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(GetTestResultWithProtocolNoRequest), 'ProtocolNo', '[ArrayItemName="MobilePhone"]');
  RemClassRegistry.RegisterSerializeOptions(GetTestResultWithProtocolNoRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetTestResultWithReferenceCodeRequest, 'http://95.9.52.165:5252/webservices/elab/elab.php', 'GetTestResultWithReferenceCodeRequest');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(GetTestResultWithReferenceCodeRequest), 'ReferenceCode', '[ArrayItemName="MobilePhone"]');
  RemClassRegistry.RegisterSerializeOptions(GetTestResultWithReferenceCodeRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetTestResultWithProcessNoRequest, 'http://95.9.52.165:5252/webservices/elab/elab.php', 'GetTestResultWithProcessNoRequest');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(GetTestResultWithProcessNoRequest), 'ProcessNo', '[ArrayItemName="MobilePhone"]');
  RemClassRegistry.RegisterSerializeOptions(GetTestResultWithProcessNoRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetTestListWithBarcodeNoRequest, 'http://95.9.52.165:5252/webservices/elab/elab.php', 'GetTestListWithBarcodeNoRequest');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(GetTestListWithBarcodeNoRequest), 'BarcodeNo', '[ArrayItemName="MobilePhone"]');
  RemClassRegistry.RegisterSerializeOptions(GetTestListWithBarcodeNoRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetPhoneNumberResult, 'http://95.9.52.165:5252/webservices/elab/elab.php', 'GetPhoneNumberResult');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(GetPhoneNumberResult), 'MobilePhoneList', '[ArrayItemName="MobilePhone"]');
  RemClassRegistry.RegisterXSClass(NewPatientContactInfo, 'http://95.9.52.165:5252/webservices/elab/elab.php', 'NewPatientContactInfo');
  RemClassRegistry.RegisterXSClass(NewTest, 'http://95.9.52.165:5252/webservices/elab/elab.php', 'NewTest');
  RemClassRegistry.RegisterXSClass(TestResult, 'http://95.9.52.165:5252/webservices/elab/elab.php', 'TestResult');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(TestResult), 'Unit_', '[ExtName="Unit"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(TestResult), 'ReportFiles', '[ArrayItemName="ReportFile"]');
  RemClassRegistry.RegisterXSClass(GetTestResultWithDateRangeRequest, 'http://95.9.52.165:5252/webservices/elab/elab.php', 'GetTestResultWithDateRangeRequest');
  RemClassRegistry.RegisterSerializeOptions(GetTestResultWithDateRangeRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetTestResultWithTCKNoRequest, 'http://95.9.52.165:5252/webservices/elab/elab.php', 'GetTestResultWithTCKNoRequest');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(GetTestResultWithTCKNoRequest), 'TCKNo', '[ArrayItemName="MobilePhone"]');
  RemClassRegistry.RegisterSerializeOptions(GetTestResultWithTCKNoRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetTestResultWithPatientNoRequest, 'http://95.9.52.165:5252/webservices/elab/elab.php', 'GetTestResultWithPatientNoRequest');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(GetTestResultWithPatientNoRequest), 'PatientNo', '[ArrayItemName="MobilePhone"]');
  RemClassRegistry.RegisterSerializeOptions(GetTestResultWithPatientNoRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetTestListWithDateRangeRequest, 'http://95.9.52.165:5252/webservices/elab/elab.php', 'GetTestListWithDateRangeRequest');
  RemClassRegistry.RegisterSerializeOptions(GetTestListWithDateRangeRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(AddedTest, 'http://95.9.52.165:5252/webservices/elab/elab.php', 'AddedTest');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Gender), 'http://95.9.52.165:5252/webservices/elab/elab.php', 'Gender');
  RemClassRegistry.RegisterXSClass(NewPatientInfo, 'http://95.9.52.165:5252/webservices/elab/elab.php', 'NewPatientInfo');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(NewPatientInfo), 'Name_', '[ExtName="Name"]');
  RemClassRegistry.RegisterXSClass(PatientInfo, 'http://95.9.52.165:5252/webservices/elab/elab.php', 'PatientInfo');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(PatientInfo), 'Name_', '[ExtName="Name"]');
  RemClassRegistry.RegisterXSInfo(TypeInfo(TestList), 'http://95.9.52.165:5252/webservices/elab/elab.php', 'TestList');
  RemClassRegistry.RegisterXSClass(GetTestListWithTCKNoRequest, 'http://95.9.52.165:5252/webservices/elab/elab.php', 'GetTestListWithTCKNoRequest');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(GetTestListWithTCKNoRequest), 'TCKNo', '[ArrayItemName="MobilePhone"]');
  RemClassRegistry.RegisterSerializeOptions(GetTestListWithTCKNoRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(AddNewPatientRecordResponse, 'http://95.9.52.165:5252/webservices/elab/elab.php', 'AddNewPatientRecordResponse');
  RemClassRegistry.RegisterSerializeOptions(AddNewPatientRecordResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(AddNewPatientRecordResult, 'http://95.9.52.165:5252/webservices/elab/elab.php', 'AddNewPatientRecordResult');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(AddNewPatientRecordResult), 'TestList', '[ArrayItemName="Test"]');
  RemClassRegistry.RegisterXSInfo(TypeInfo(GetTestListWithPatientNoResult), 'http://95.9.52.165:5252/webservices/elab/elab.php', 'GetTestListWithPatientNoResult');
  RemClassRegistry.RegisterXSClass(GetTestListWithProtocolNoRequest, 'http://95.9.52.165:5252/webservices/elab/elab.php', 'GetTestListWithProtocolNoRequest');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(GetTestListWithProtocolNoRequest), 'ProtocolNo', '[ArrayItemName="MobilePhone"]');
  RemClassRegistry.RegisterSerializeOptions(GetTestListWithProtocolNoRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetTestListWithProtocolNoResponse, 'http://95.9.52.165:5252/webservices/elab/elab.php', 'GetTestListWithProtocolNoResponse');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(GetTestListWithProtocolNoResponse), 'GetTestListWithProtocolNoResult', '[ArrayItemName="PatientTests"]');
  RemClassRegistry.RegisterSerializeOptions(GetTestListWithProtocolNoResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSInfo(TypeInfo(GetTestListWithTCKNoResult), 'http://95.9.52.165:5252/webservices/elab/elab.php', 'GetTestListWithTCKNoResult');
  RemClassRegistry.RegisterXSClass(GetTestListWithTCKNoResponse, 'http://95.9.52.165:5252/webservices/elab/elab.php', 'GetTestListWithTCKNoResponse');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(GetTestListWithTCKNoResponse), 'GetTestListWithTCKNoResult', '[ArrayItemName="PatientTests"]');
  RemClassRegistry.RegisterSerializeOptions(GetTestListWithTCKNoResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetTestListWithPatientNoRequest, 'http://95.9.52.165:5252/webservices/elab/elab.php', 'GetTestListWithPatientNoRequest');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(GetTestListWithPatientNoRequest), 'PatientNo', '[ArrayItemName="MobilePhone"]');
  RemClassRegistry.RegisterSerializeOptions(GetTestListWithPatientNoRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetTestListWithPatientNoResponse, 'http://95.9.52.165:5252/webservices/elab/elab.php', 'GetTestListWithPatientNoResponse');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(GetTestListWithPatientNoResponse), 'GetTestListWithPatientNoResult', '[ArrayItemName="PatientTests"]');
  RemClassRegistry.RegisterSerializeOptions(GetTestListWithPatientNoResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSInfo(TypeInfo(TestList2), 'http://95.9.52.165:5252/webservices/elab/elab.php', 'TestList2', 'TestList');
  RemClassRegistry.RegisterXSClass(NewPatientRecord, 'http://95.9.52.165:5252/webservices/elab/elab.php', 'NewPatientRecord');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(NewPatientRecord), 'TestList', '[ArrayItemName="Test"]');
  RemClassRegistry.RegisterXSInfo(TypeInfo(AntibioticResult), 'http://95.9.52.165:5252/webservices/elab/elab.php', 'AntibioticResult');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(AntibioticResult), 'AZ_DUYARLI', 'AZ DUYARLI');
  RemClassRegistry.RegisterXSClass(Antibiotic, 'http://95.9.52.165:5252/webservices/elab/elab.php', 'Antibiotic');
  RemClassRegistry.RegisterXSInfo(TypeInfo(AntibioticList), 'http://95.9.52.165:5252/webservices/elab/elab.php', 'AntibioticList');
  RemClassRegistry.RegisterXSClass(Antibiogram, 'http://95.9.52.165:5252/webservices/elab/elab.php', 'Antibiogram');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(Antibiogram), 'AntibioticList', '[ArrayItemName="Antibiotic"]');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ReportStatus), 'http://95.9.52.165:5252/webservices/elab/elab.php', 'ReportStatus');
  RemClassRegistry.RegisterXSClass(Report, 'http://95.9.52.165:5252/webservices/elab/elab.php', 'Report');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ReportType), 'http://95.9.52.165:5252/webservices/elab/elab.php', 'ReportType');
  RemClassRegistry.RegisterXSClass(GetReportFileRequest, 'http://95.9.52.165:5252/webservices/elab/elab.php', 'GetReportFileRequest');
  RemClassRegistry.RegisterSerializeOptions(GetReportFileRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(AddNewPatientRecordRequest, 'http://95.9.52.165:5252/webservices/elab/elab.php', 'AddNewPatientRecordRequest');
  RemClassRegistry.RegisterSerializeOptions(AddNewPatientRecordRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSInfo(TypeInfo(TestList3), 'http://95.9.52.165:5252/webservices/elab/elab.php', 'TestList3', 'TestList');
  RemClassRegistry.RegisterXSClass(PatientTests, 'http://95.9.52.165:5252/webservices/elab/elab.php', 'PatientTests');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(PatientTests), 'TestList', '[ArrayItemName="Test"]');
  RemClassRegistry.RegisterXSInfo(TypeInfo(TestList4), 'http://95.9.52.165:5252/webservices/elab/elab.php', 'TestList4', 'TestList');
  RemClassRegistry.RegisterXSClass(PatientResults, 'http://95.9.52.165:5252/webservices/elab/elab.php', 'PatientResults');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(PatientResults), 'TestList', '[ArrayItemName="TestResult"]');

end.