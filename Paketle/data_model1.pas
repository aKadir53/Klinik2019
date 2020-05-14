unit data_model1;

interface

uses
  SysUtils , Classes, ADODB, DB,  IdBaseComponent,iniFiles,
  windows,Forms,StdCtrls,TlHelp32,XSBuiltIns,WinInet,KadirType,
  IdComponent, IdTCPConnection, IdTCPClient, IdHTTP, InvokeRegistry, Rio,SOAPHTTPTrans,
  SOAPHTTPClient,  ImgList, Controls, XMLDoc, FileCtrl,
  Dialogs, cxGraphics, dxmdaset, ExtCtrls, xmldom, Provider, Xmlxform, DBClient,XMLIntf,
  RxMemDS,strUtils,Registry, SQLMemMain, KadirLabel,jpeg,Graphics,PNGImage,
  IdIOHandler, IdIOHandlerSocket, IdIOHandlerStack, IdSSL, IdSSLOpenSSL,
  raporIslemleriWS, MedulaRaporIslem, Xml.Win.msxmldom;

type
  TDATALAR = class(TDataModule)
    Kaynak: TADOConnection;
    Hedef: TADOConnection;
    ADO_SQL: TADOQuery;
    ADO_SQL1: TADOQuery;
    ADO_SQL2: TADOQuery;
    ADO_SQL3: TADOQuery;
    Q_LogADO: TADOQuery;
    ADO_SQL4: TADOQuery;
    ADO_SQL5: TADOQuery;
    TempConnection: TADOConnection;
    ADOConnection1: TADOConnection;
    Master: TADOConnection;
    ADOConnection2: TADOConnection;
  private

    { Private declarations }
  public
   username : string;
   AktifSirket , _tesisKodu : string;
   _Kurumkod : string;
   _Tip , _database : string;
   versiyon: string;

   procedure QuerySelect (Q: TADOQuery; sql:string);
   procedure QueryExec (Q: TADOQuery; sql:string);
   function FindData (Q: TADOQuery; sql: string): integer;
   procedure Login;
   function MasterBaglan(db : string) : Boolean;
   function UygulamaBaglantiTanimi : String;

    { Public declarations }
  end;

var
  DATALAR: TDATALAR;
  servername : string;

const
    DBUserName : string = 'LyotVG05cmRHRT0=';
    DBPasword : string = 'LyotTlRNMU13PT0=';
    server : string = 'TVRnMUxqRTVPQzQzTWk0eE9EVXNNVFl3TURBPQ==';

implementation
       uses kadir;

{$R *.dfm}


function TDATALAR.UygulamaBaglantiTanimi: String;
begin
  Result := 'Mavi Nokta e-Reçete Masaüstü Uyg. v.'+ versiyon;
end;

procedure TDATALAR.Login;
var
  sql : string;
begin
  try
    sql := 'select slb,slt ,SLVV,SLXX,SLZ,SLYY,SLZZ,SLXXX,SLXXv from parametreler where slk = ''99''';
    datalar.QuerySelect(datalar.ADO_SQL2,sql);
    _Kurumkod := datalar.ADO_SQL2.fieldbyname('slb').AsString;
  except
  end;
end;


function TDatalar.FindData (Q: TADOQuery; sql: string): integer;
begin
  QuerySelect (Q, sql);
  Q.First;
  if ( Q.Eof )
  Then FindData := 0
  Else FindData := 1;
end;

procedure Tdatalar.QueryExec (Q: TADOQuery; sql:string);
begin
  Q.Close;
  Q.SQL.Text := sql;
  Q.ExecSQL;
end;


procedure Tdatalar.QuerySelect (Q: TADOQuery; sql:string);
begin
  Q.Close;
  Q.SQL.Text := sql;
  Q.Open;
end;

function TDatalar.MasterBaglan(db : string) : Boolean;
var
  ado : TADOQuery;
  pSQLUserName, pSQLPassword : string;
begin
  servername := Server;
  pSQLUserName := Decode64(copy(Decode64(DBUserName),4,100));
  pSQLPassword := Decode64(copy(Decode64(DBPasword),4,100));

  Master.Connected := false;
  Master.ConnectionString :=
  'Provider=SQLOLEDB.1;Password='+pSQLPassword+';Persist Security Info=True;User ID='+pSQLUserName+';Initial Catalog=OSGB_MASTER;Data Source='+ decode64(decode64(servername))+';Application Name=' + UygulamaBaglantiTanimi;
  Master.Connected := True;

  if Master.Connected = True then
  begin
  end
  else
    ShowMessageSkin('Master Sunucu Baðlantýsý Saðlanamadý','','','info');
end;

end.
