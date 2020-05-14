unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, Buttons, StdCtrls, Grids, DBGrids, DB, ADODB,
  DBTables, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdFTP, ComCtrls , kadir , data_model1, IdExplicitTLSClientServerBase,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxPCdxBarPopupMenu, cxPC, Vcl.Samples.Spin, IdHTTP,
  cxContainer, cxEdit, cxLabel ;

type
  TfrmPaket = class(TForm)
    DataSource1: TDataSource;
    OpenDialog1: TOpenDialog;
    IdFTP1: TIdFTP;
    Label1: TLabel;
    pb: TProgressBar;
    txtMemo1: TMemo;
    table1: TADOQuery;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    DBGrid1: TDBGrid;
    DBMemo1: TDBMemo;
    DBNavigator1: TDBNavigator;
    SpeedButton2: TSpeedButton;
    Panel1: TPanel;
    SpeedButton4: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton3: TSpeedButton;
    ComboBox1: TComboBox;
    DataSource2: TDataSource;
    ADO_Rapor_Dizayn: TADOQuery;
    DBMemo2: TDBMemo;
    DBNavigator2: TDBNavigator;
    DBGrid2: TDBGrid;
    txtVersiyon: TMemo;
    txtRev: TMemo;
    ado_sql: TADOQuery;
    btPanodanYapistir: TSpeedButton;
    SpinEdit1: TSpinEdit;
    label111: TLabel;
    btnGit: TSpeedButton;
    cbSonBirAy: TCheckBox;
    Label2: TLabel;
    Label3: TLabel;
    cxTabSheet3: TcxTabSheet;
    Klinik2019Dpr: TMemo;
    txtDLLVersiyon: TMemo;
    Label4: TLabel;
    HTTP1: TIdHTTP;
    progressFilename: TLabel;
    Panel2: TPanel;
    yvK: TMemo;
    Label5: TLabel;
    cxTabSheet4: TcxTabSheet;
    DataSource3: TDataSource;
    ADO_Databases: TADOQuery;
    Panel3: TPanel;
    Button1: TButton;
    Button2: TButton;
    Panel4: TPanel;
    DBGrid3: TDBGrid;
    txtLog: TMemo;
    Splitter1: TSplitter;
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    Function  DosyaKopyala(sSrc : string;sDest : string) : integer;
    procedure SpeedButton3Click(Sender: TObject);
    procedure IdFTP1Status(ASender: TObject; const AStatus: TIdStatus;
      const AStatusText: String);
    procedure IdFTP1WorkEnd(Sender: TObject; AWorkMode: TWorkMode);
    procedure IdFTP1Connected(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure IdFTP1WorkBegin(ASender: TObject; AWorkMode: TWorkMode;
      AWorkCountMax: Int64);
    procedure IdFTP1Work(ASender: TObject; AWorkMode: TWorkMode;
      AWorkCount: Int64);
    procedure table1NewRecord(DataSet: TDataSet);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btPanodanYapistirClick(Sender: TObject);
    procedure btnGitClick(Sender: TObject);
    procedure cbSonBirAyClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

const
  VersiyonURL : string = 'http://www.noktayazilim.net/Diyaliz_Klinik2019/Klinik2019Versiyon.txt';
  DLLVersiyonURL : string = 'http://www.noktayazilim.net/Diyaliz_Klinik2019/Klinik2019DLLVersiyon.txt';
  yvkVersiyonURL : string = 'http://www.noktayazilim.net/Diyaliz_Klinik2019/yvkVersiyon.txt';
var
  frmPaket: TfrmPaket;
  versiyon ,DLLversiyon, yvKversiyon ,yvkNewVersiyon : string;

implementation
 uses DosyadanpaketOlustur, clipbrd, NThermo, TransUtils;

{$R *.dfm}

procedure TfrmPaket.table1NewRecord(DataSet: TDataSet);
begin
  table1.FieldByName('MODUL').AsString := 'O';
  table1.FieldByName('TIPI').AsString := 'C';
  table1.FieldByName('TarIH').AsString := FormatDateTime ('yyyymmdd', Date);
end;

Function TfrmPaket.DosyaKopyala(sSrc : string;sDest : string) : integer;
var
  sonuc : integer; //0 Kopyalandý ; 1 Dosya Var ve Kopyalandý ; 2 Dosya Var ve Kopyalanamadý
begin
  if FileExists(sDest) then
    begin
      try
        DeleteFile(sDest);
        CopyFile(PChar(sSrc),PChar(sDest),False);
//        frmMain.txtKurulumGecmisi.Lines.Add(ZamanStr+sSrc + ' = ' +sDest + ' a kopyalandý' + #13);
        sonuc :=1;
      except
  //      frmMain.txtKurulumGecmisi.Lines.Add(ZamanStr+sDest + ' Dosyasý Zaten Var' + #13);
        sonuc:=2;
      end;
    end
  else
    begin
      CopyFile(PChar(sSrc),PChar(sDest),False);
   //   frmMain.txtKurulumGecmisi.Lines.Add(ZamanStr+sSrc + ' = ' +sDest + ' a kopyalandý' + #13);
      sonuc:=0;
    end;
  result:=sonuc;
end;

procedure TfrmPaket.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
//  if SpeedButton3.Enabled then SpeedButton3Click (SpeedButton3);
end;

procedure TfrmPaket.FormCreate(Sender: TObject);
begin

 txtRev.Lines.LoadFromFile('D:\Projeler\DELPHI\Diyaliz\Diyaliz_Klinik2019\Klinik2019Update.txt');
end;

procedure TfrmPaket.SpeedButton2Click(Sender: TObject);
begin
  if not OpenDialog1.Execute then Exit;
  DBMemo1.Lines.LoadFromFile(OpenDialog1.FileName);
end;

procedure TfrmPaket.SpeedButton1Click(Sender: TObject);
//var
//  yol : string;
begin
    frmDosyadanPaket.ShowModal;

 (*

//  yol := 'C:\NoktaDiyaliz\SQLBAKIM\UPDATE\paket\*.*';

  table1.Last;
  txtMemo1.Lines.Clear;
  txtMemo1.Lines.Add(table1.fieldbyname('ID').AsString);
  txtMemo1.Lines.SaveToFile('C:\NoktaDiyaliz\SQLBAKIM\UPDATE\update.txt');

//  Table1.Close;

  DeleteFile('C:\NoktaDiyaliz\UPDATE.EXE');
//  DeleteFile('C:\NoktaDiyaliz\SQLBAKIM\UPDATE\paket\UPDATEDB.db');
//  DeleteFile('C:\NoktaDiyaliz\SQLBAKIM\UPDATE\paket\UPDATEDB.mb');
  DeleteFile('C:\NoktaDiyaliz\SQLBAKIM\UPDATE\paket\muh.exe');
  DeleteFile('C:\NoktaDiyaliz\SQLBAKIM\UPDATE\paket\update.txt');


//  DosyaKopyala('C:\NoktaDiyaliz\SQLBAKIM\UPDATE\UpdateDB.db','C:\NoktaDiyaliz\SQLBAKIM\UPDATE\Paket\UpdateDB.db');
//  DosyaKopyala('C:\NoktaDiyaliz\SQLBAKIM\UPDATE\UpdateDB.mb','C:\NoktaDiyaliz\SQLBAKIM\UPDATE\Paket\UpdateDB.mb');
  DosyaKopyala('C:\NoktaDiyaliz\Muh.exe','C:\NoktaDiyaliz\SQLBAKIM\UPDATE\Paket\muh.exe');
  DosyaKopyala('C:\NoktaDiyaliz\SQLBAKIM\UPDATE\update.txt','C:\NoktaDiyaliz\SQLBAKIM\UPDATE\Paket\update.txt');

//  winexec('c:\program files\winrar\winrar a -sfx C:\NoktaDiyaliz\update.exe C:\NoktaDiyaliz\SQLBAKIM\UPDATE\paket\*.*',1);


  //winrar c -z[textdosya] [exedosya]




//  Table1.Open;

  ShowMessageskin('Paket Oluþturuldu','','','info');

  *)

end;

procedure TfrmPaket.btPanodanYapistirClick(Sender: TObject);
var
  aSL1, aSL2 : TStringList;
  i, iThermo, iLastID, iScripts : Integer;
  bTamam : Boolean;
begin
  aSL1 := TStringList.Create;
  try
    aSL2 := TStringList.Create;
    try
      aSL1.Text := Clipboard.AsText;
      if Trim (aSL1.Text) = '' then
      begin
        dialogs.ShowMessage('Pano Boþ.');
        Exit;
      end;
      table1.Last;
      iLastID := table1.FieldByName('ID').AsInteger;
      iScripts := 0;
      if not sametext (Trim (aSL1 [aSL1.Count - 1]), 'go') then aSL1.Add('GO');
      bTamam := False;
      BeginTrans (table1.Connection);
      try
        ShowThermo (iThermo, 'Scriptler yazýlýyor', 0, aSL1.Count, 0, True);
        try
          for i := 0 to aSL1.Count -1 do
          begin
            if not UpdateThermo (i, iThermo, IntToStr (i)) then Exit;
            //go'ya rastladým.
            if AnsiSameText (Trim (aSL1 [i]), 'go') then
            begin
              //biriken scriptin baþýndaki boþ satýrlarý sil.
              while (aSL2.Count > 0) and (TRim (aSL2 [0]) = '') do aSL2.Delete (0);
              //biriken scriptin sonundaki boþ satýrlarý sil.
              while (aSL2.Count > 0) and (TRim (aSL2 [aSL2.Count - 1]) = '') do aSL2.Delete (aSL2.Count - 1);
              if Trim (aSL2.Text) <> '' then
              begin
                iScripts := iScripts + SpinEdit1.Value;
                table1.Append;
                try
                  table1.FieldByName ('ID').AsInteger := iLastID + iScripts;
                  table1.FieldByName ('REV').AsInteger := iLastID + iScripts;
                  table1.FieldByName ('SQL_CMD').AsString := aSL2.Text;
                  if Copy (Trim (aSL2 [0]), 1, 2) = '--' then
                    table1.FieldByName('ACIKLAMA').AsString := Trim (Copy (Trim (aSL2 [0]), 3, Length (Trim (aSL2 [0])) - 2))
                   else
                    table1.FieldByName('ACIKLAMA').AsString := Trim (Copy (Trim (aSL2 [0]), 1, 100));
                  table1.Post;
                  aSL2.Clear;
                except
                  table1.Cancel;
                  raise;
                end;
              end;
              Continue;
            end;
            aSL2.Add (aSL1 [i]);
          end;
          bTamam := True;
        finally
          FreeThermo(iThermo);
        end;
      finally
        if bTamam then CommitTrans (table1.Connection)
        else begin
          RollbackTrans (table1.Connection);
          table1.Close;
          table1.Open;
          table1.Last;
        end;
      end;
      Clipboard.Clear;
    finally
      aSL2.Free;
    end;
  finally
    aSL1.Free;
  end;
end;

procedure TfrmPaket.Button1Click(Sender: TObject);
begin
  ADO_Databases.Active := False;
  ADO_Databases.Active := True;

end;

procedure TfrmPaket.Button2Click(Sender: TObject);
var
  sql : string;
  ado : TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  ado.Connection := datalar.Master;
  try
      sql := table1.FieldByName('SQL_CMD').AsString;
      ADO_Databases.First;
      while not ADO_Databases.Eof do
      begin
        datalar.Master.BeginTrans;
        try
          ado.Close;
          ado.SQL.Clear;
          ado.SQL.Text := 'USE ' + ADO_Databases.FieldByName('name').AsString;
          ado.ExecSQL;

          ado.SQL.Clear;
          ado.SQL.Text :=  sql;
          ado.ExecSQL;

          datalar.Master.CommitTrans;
          txtLog.Lines.Add(table1.FieldByName('ID').AsString + ' : ' + ADO_Databases.FieldByName('name').AsString + ' - BAÞARILI');
        except on e : exception do
         begin
           txtLog.Lines.Add(table1.FieldByName('ID').AsString + ' : ' + ADO_Databases.FieldByName('name').AsString + ' - HATA : ' + e.Message);
           datalar.Master.RollbackTrans;
         end;
        end;

        ADO_Databases.Next;
      end;

  finally
    ado.Free;
  end;


end;

procedure TfrmPaket.cbSonBirAyClick(Sender: TObject);
var
  bActive : Boolean;
begin
  bActive := table1.Active;
  if bActive then table1.Close;
  if not TCheckBox (Sender).Checked then
    table1.SQL.Text :=
      'select * from UPDATE_CMD where Modul = ' +QuotedStr ('K') + 'order by ID'
   else
    table1.SQL.Text :=
      'select * from UPDATE_CMD where Modul = ' +QuotedStr ('K') + ' and TARIH >= ' + QuotedStr (FormatDateTime('yyyymmdd', date - 30)) +' order by ID';
  if bActive then table1.Open;
end;

procedure TfrmPaket.SpeedButton3Click(Sender: TObject);
//var
//  dosya : TFileStream;
begin
  try
    versiyon := (HTTP1.Get(VersiyonURL));
    DLLversiyon := (HTTP1.Get(DLLVersiyonURL));
  except
    versiyon := txtVersiyon.Text;
    DLLversiyon := txtDLLVersiyon.Text;
  end;

  if versiyon = '' then versiyon := txtVersiyon.Text;
  if DLLversiyon = '' then DLLversiyon := txtDLLVersiyon.Text;


  if Dialogs.MessageDlg('Dosyalar Sunucuya Gönderilecek',
    mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrYes
  then begin
         Panel2.Visible := True;
         try
          try
            table1.Last;
            txtRev.Lines.Text := table1.FieldByName('ID').AsString;
            txtRev.Lines.SaveToFile('D:\Projeler\DELPHI\Diyaliz\Diyaliz_Klinik2019\Klinik2019Update.txt');
            txtDLLVersiyon.Lines.SaveToFile('D:\Projeler\DELPHI\Diyaliz\Diyaliz_Klinik2019\Klinik2019DLLVersiyon.txt');
            txtVersiyon.Lines.SaveToFile('D:\Projeler\DELPHI\Diyaliz\Diyaliz_Klinik2019\Klinik2019Versiyon.txt');
            yvK.Lines.SaveToFile('D:\Projeler\DELPHI\Diyaliz\Diyaliz_Klinik2019\Yv\Win32\Debug\yvkVersiyon.txt');

            IdFTP1.Connect();
            Application.ProcessMessages;

            if strToint(yvK.Text) > strToint(yvKversiyon)
            then begin
                progressFilename.Caption := yvk.Text;
                IdFTP1.Put('D:\Projeler\DELPHI\Diyaliz\Diyaliz_Klinik2019\Yv\Win32\Debug\yvK.exe','/httpdocs/Diyaliz_Klinik2019/'+yvK.Text);
                IdFTP1.Put('D:\Projeler\DELPHI\Diyaliz\Diyaliz_Klinik2019\Yv\Win32\Debug\yvkVersiyon.txt','/httpdocs/Diyaliz_Klinik2019/yvkVersiyon.txt');
            end;



            if (strtoint(txtDLLversiyon.text) > strtoint(DllVersiyon))
            Then Begin

                progressFilename.Caption := 'NoktaDLL.dll';
                IdFTP1.Put('D:\Projeler\DELPHI\Diyaliz\Diyaliz_Klinik2019\NoktaDLL.dll','/httpdocs/Diyaliz_Klinik2019/NoktaDLL.dll');

                progressFilename.Caption := 'EFaturaDLL.dll';
                IdFTP1.Put('D:\Projeler\DELPHI\Diyaliz\Diyaliz_Klinik2019\EFaturaDLL.dll','/httpdocs/Diyaliz_Klinik2019/EFaturaDLL.dll');

//                progressFilename.Caption := 'BouncyCastle.Crypto17.dll';
//                IdFTP1.Put('D:\Projeler\DELPHI\Diyaliz\Diyaliz_Klinik2019\BouncyCastle.Crypto17.dll','/httpdocs/Diyaliz_Klinik2019/BouncyCastle.Crypto17.dll');

//                progressFilename.Caption := 'BouncyCastle.Crypto18.dll';
//                IdFTP1.Put('D:\Projeler\DELPHI\Diyaliz\Diyaliz_Klinik2019\BouncyCastle.Crypto18.dll','/httpdocs/Diyaliz_Klinik2019/BouncyCastle.Crypto18.dll');

//                progressFilename.Caption := 'EdocLib.dll';
//                IdFTP1.Put('D:\Projeler\DELPHI\Diyaliz\Diyaliz_Klinik2019\EdocLib.dll','/httpdocs/Diyaliz_Klinik2019/EdocLib.dll');

//                progressFilename.Caption := 'Net.Pkcs11.dll';
//                IdFTP1.Put('D:\Projeler\DELPHI\Diyaliz\Diyaliz_Klinik2019\Net.Pkcs11.dll','/httpdocs/Diyaliz_Klinik2019/Net.Pkcs11.dll');

//                progressFilename.Caption := 'itextsharp.dll';
//                IdFTP1.Put('D:\Projeler\DELPHI\Diyaliz\Diyaliz_Klinik2019\itextsharp.dll','/httpdocs/Diyaliz_Klinik2019/itextsharp.dll');

//                progressFilename.Caption := 'Microsoft.VisualBasic.PowerPacks.Vs.dll';
//                IdFTP1.Put('D:\Projeler\DELPHI\Diyaliz\Diyaliz_Klinik2019\Microsoft.VisualBasic.PowerPacks.Vs.dll','/httpdocs/Diyaliz_Klinik2019/Microsoft.VisualBasic.PowerPacks.Vs.dll');

//                progressFilename.Caption := 'salt.dat';
//                IdFTP1.Put('D:\Projeler\DELPHI\Diyaliz\Diyaliz_Klinik2019\salt.dat','/httpdocs/Diyaliz_Klinik2019/salt.dat');

//                progressFilename.Caption := 'RenkliEncryption.dll';
//                IdFTP1.Put('D:\Projeler\DELPHI\Diyaliz\Diyaliz_Klinik2019\RenkliEncryption.dll','/httpdocs/Diyaliz_Klinik2019/RenkliEncryption.dll');

//                progressFilename.Caption := 'RenkliRsaPublicKey.pem';
//                IdFTP1.Put('D:\Projeler\DELPHI\Diyaliz\Diyaliz_Klinik2019\RenkliRsaPublicKey.pem','/httpdocs/Diyaliz_Klinik2019/RenkliRsaPublicKey.pem',false);

                progressFilename.Caption := 'Klinik2019Update.txt';
                IdFTP1.Put('D:\Projeler\DELPHI\Diyaliz\Diyaliz_Klinik2019\Klinik2019DLLVersiyon.txt','/httpdocs/Diyaliz_Klinik2019/Klinik2019DLLVersiyon.txt',false);
            End;

            if (strtoint(txtversiyon.text) > strtoint(versiyon))
            Then Begin
              progressFilename.Caption := 'Klinik2019.exe';
              IdFTP1.Put('D:\Projeler\DELPHI\Diyaliz\Diyaliz_Klinik2019\Klinik2019.exe','/httpdocs/Diyaliz_Klinik2019/Klinik2019.exe');
              progressFilename.Caption := 'NoktaDLL.dll';
              IdFTP1.Put('D:\Projeler\VS\c#\ListeDLL_Cades\ListeDLL\bin\x86\Debug\NoktaDLL.dll','/httpdocs/Diyaliz_Klinik2019/NoktaDLL.dll');
              progressFilename.Caption := 'EFaturaDLL.dll';
              IdFTP1.Put('D:\Projeler\VS\c#\EFatura\EFaturaDLL\ClassLibrary1\bin\Debug\EFaturaDLL.dll','/httpdocs/Diyaliz_Klinik2019/EFaturaDLL.dll');

              progressFilename.Caption := 'Klinik2019Update.txt';
              IdFTP1.Put('D:\Projeler\DELPHI\Diyaliz\Diyaliz_Klinik2019\Klinik2019Update.txt','/httpdocs/Diyaliz_Klinik2019/Klinik2019Update.txt',false);
              progressFilename.Caption := 'Klinik2019Update.txt';
              IdFTP1.Put('D:\Projeler\DELPHI\Diyaliz\Diyaliz_Klinik2019\Klinik2019Versiyon.txt','/httpdocs/Diyaliz_Klinik2019/Klinik2019Versiyon.txt',false);
             End;

            progressFilename.Caption := '';
            Panel2.Visible := False;

          except on e : Exception do
            begin
               ShowMessageSkin('Hata : ' + e.Message,'','','info');
            end;
          end;
        finally
         IdFTP1.Disconnect;
        end;
  end;
end;

procedure TfrmPaket.IdFTP1Status(ASender: TObject; const AStatus: TIdStatus;
  const AStatusText: String);
begin
  Label1.Caption := AStatusText;
end;

procedure TfrmPaket.IdFTP1Work(ASender: TObject; AWorkMode: TWorkMode;
  AWorkCount: Int64);
begin
  pb.Position := AWorkCount;
  Application.ProcessMessages;
end;

procedure TfrmPaket.IdFTP1WorkBegin(ASender: TObject; AWorkMode: TWorkMode;
  AWorkCountMax: Int64);
begin
  pb.Max := AWorkCountMax;
  Application.ProcessMessages;

end;

procedure TfrmPaket.IdFTP1WorkEnd(Sender: TObject; AWorkMode: TWorkMode);
begin
  pb.Position := 0;
  Label1.Caption := 'Gönderim Tamamlandý';
end;

procedure TfrmPaket.IdFTP1Connected(Sender: TObject);
begin

  Label1.Caption := 'Baðlanatý Saðlandý';

end;

procedure TfrmPaket.SpeedButton4Click(Sender: TObject);
var
  bActive : Boolean;
  p : integer;
  str : string;
begin
    Application.ProcessMessages;

     if datalar.MasterBaglan('')
     Then begin

          Klinik2019Dpr.Lines.LoadFromFile('D:\Projeler\DELPHI\Diyaliz\Diyaliz_Klinik2019\Klinik2019.dpr');

          p := pos('const',Klinik2019Dpr.Text);
          str := copy(Klinik2019Dpr.Text,p+6+length('AppalicationVer : integer = ')+3,4);
          txtversiyon.Text := str;

          p := pos('DllVersiyon : integer = ',Klinik2019Dpr.Text);
          str := copy(Klinik2019Dpr.Text,p+length('DllVersiyon : integer = '),4);
          txtDLLVersiyon.Text := str;

          yvKversiyon := (HTTP1.Get(yvkVersiyonURL));
          yvk.Text := yvKversiyon;


          bActive := table1.Active;
          table1.Close;

          if not cbSonBirAy.Checked then
            table1.SQL.Text :=
              'select * from UPDATE_CMD where Modul = ' +QuotedStr ('K') + 'order by ID'
           else
            table1.SQL.Text :=
              'select * from UPDATE_CMD where Modul = ' +QuotedStr ('K') +
              ' and TARIH >= ' + QuotedStr (FormatDateTime('yyyymmdd', date - 30)) +' order by ID';

          table1.Open;

          DBMemo1.DataField := 'SQL_CMD';

        //  ADO_Rapor_Dizayn.Active := true;
         // DBMemo2.DataField := 'rapor';


          SpeedButton1.Enabled := true;
          btPanodanYapistir.Enabled := True;
          btnGit.Enabled := True;
          cbSonBirAy.Enabled := True;
          SpeedButton3.Enabled := True;
     end;


end;

procedure TfrmPaket.btnGitClick(Sender: TObject);
var
  sID : String;
begin
  if not InputQuery ('ID''ye Git...', 'Gidilecek ID', sID) then Exit;
  if Trim (sID) = '' then Exit;
  if not table1.Locate ('ID', sID, [loCaseInsensitive]) then Dialogs.ShowMessage('Bulunamadý');
end;

procedure TfrmPaket.ComboBox1Change(Sender: TObject);
begin
     if ComboBox1.Text <> ''
     then SpeedButton3.Enabled := True;
end;

end.

