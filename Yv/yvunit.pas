unit yvunit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls,
  cxLookAndFeelPainters, dxSkinsCore,  dxSkinsDefaultPainters,Registry,
   cxContainer, cxEdit, cxLabel, cxProgressBar,ShellApi,TlHelp32,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP,
  Vcl.StdCtrls, cxButtons, dxStatusBar, Vcl.ExtCtrls,ShlObj,ActiveX,ComObj,
  dxSkinsdxStatusBarPainter, acPNG, WinInet,
  Menus,cxLookAndFeels, dxSkinsForm, IdIOHandler, IdIOHandlerSocket,
  IdIOHandlerStack, IdSSL, IdSSLOpenSSL, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky;

type
  TfrmYv = class(TForm)
    Progress: TcxProgressBar;
    txtinfo: TcxLabel;
    HTTP1: TIdHTTP;
    cxButton1: TcxButton;
    dxStatusBar1: TdxStatusBar;
    Timer1: TTimer;
    UyumImage: TImage;
    NoktaImage: TImage;
    dxSkinController1: TdxSkinController;
    HTTP1id: TIdHTTP;
    IdSSLIOHandlerSocketOpenSSL1: TIdSSLIOHandlerSocketOpenSSL;
    IdTCPClient1: TIdTCPClient;
    procedure HTTP1WorkBegin(ASender: TObject; AWorkMode: TWorkMode;
      AWorkCountMax: Int64);
    procedure cxButton1Click(Sender: TObject);
    procedure HTTP1Work(ASender: TObject; AWorkMode: TWorkMode;
      AWorkCount: Int64);
    procedure HTTP1WorkEnd(ASender: TObject; AWorkMode: TWorkMode);
    procedure Timer1Timer(Sender: TObject);
    function KillTaskt(Dosyadi: string): integer;
    function DesktopPath : string;
    procedure FormShow(Sender: TObject);
    function Download(URL, User, Pass, FileName :  string ; FullURL : string = '443'): Boolean;
    function Download_NOCache(const aUrl: string; var s: String): Boolean;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

const
  UYUM = 'UYUMOSGB.exe';
  Nokta = 'Klinik2019.exe';
  ver = 2;

var
  frmYv: TfrmYv;
  filename : string;
  _max_,_ps_,_step_ : double;

  implementation

{$R *.dfm}

function TfrmYv.Download_NOCache(const aUrl: string; var s: String): Boolean;
var
  hSession: HINTERNET;
  hService: HINTERNET;
  lpBuffer: array[0..1024 + 1] of Char;
  dwBytesRead: DWORD;
begin
  Result := False;
  s := '';
  // hSession := InternetOpen( 'MyApp', INTERNET_OPEN_TYPE_DIRECT, nil, nil, 0);
  hSession := InternetOpen('Yv', INTERNET_OPEN_TYPE_PRECONFIG, nil, nil, 0);
  try
    if Assigned(hSession) then
    begin
      hService := InternetOpenUrl(hSession, PChar(aUrl), nil, 0, INTERNET_FLAG_RELOAD, 0);
      if Assigned(hService) then
        try
          while True do
          begin
            dwBytesRead := 1024;
            InternetReadFile(hService, @lpBuffer, 1024, dwBytesRead);
            if dwBytesRead = 0 then break;
            lpBuffer[dwBytesRead] := #0;
            s := s + lpBuffer;
          end;
          Result := True;
        finally
          InternetCloseHandle(hService);
        end;
    end;
  finally
    InternetCloseHandle(hSession);
  end;
end;



function TfrmYv.Download(URL, User, Pass, FileName :  string ; FullURL : string = '443'): Boolean;
const
  BufferSize = 1024;
var
  hSession, hURL: HInternet;
  Buffer: array[1..BufferSize] of Byte;
  BufferLen: DWORD;
  F: File;
begin
   Progress.Position := 0;
   Result := False;
   hSession := InternetOpen('', INTERNET_OPEN_TYPE_PRECONFIG, nil, nil, 0) ;

   // Establish the secure connection
   InternetConnect (
     hSession,
     PChar(FullURL),
     INTERNET_DEFAULT_HTTPS_PORT,
     PChar(User),
     PChar(Pass),
     INTERNET_SERVICE_HTTP,
     0,
     0
   );

  try
    hURL := InternetOpenURL(hSession, PChar(URL), nil, 0, INTERNET_FLAG_RELOAD, 0) ;
    try
      AssignFile(f, FileName);
      Rewrite(f,1);
      try
        repeat
          InternetReadFile(hURL, @Buffer, SizeOf(Buffer), BufferLen) ;
          BlockWrite(f, Buffer,BufferLen);



          Progress.Position := Progress.Position + BufferSize;
          Application.ProcessMessages;

        until BufferLen = 0;
      finally
        CloseFile(f) ;
        Result := True;
        //Progress.Position := Progress.Position + BufferSize;
        //Application.ProcessMessages;
      end;
    finally
      InternetCloseHandle(hURL)
    end
  finally
    InternetCloseHandle(hSession)
  end;
end;



function TfrmYv.DesktopPath : string;
var
 theReg  : TRegistry;
 KeyName : String;
begin
 theReg := TRegistry.Create;
 KeyName := 'Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders';
 if (theReg.KeyExists(KeyName)) then
   begin
     theReg.OpenKey(KeyName, False);
     DesktopPath := theReg.ReadString('Desktop');
   end
 else
   begin
     theReg.OpenKey(KeyName, True);
     DesktopPath := 'Error';
   end;
 theReg.Free;
end;


procedure TfrmYv.FormShow(Sender: TObject);
var
  p : string;
begin
(*
  p := paramStr(0);
  if pos('UYUM',p) > 0
  then begin
    Caption := 'Uyumsoft Bilgi Sistemleri ve Teknolojileri A.Þ.';
    UyumImage.Visible := True;
    NoktaImage.Visible := False;
  end
  Else
  Begin
    Caption := 'Mavi Nokta Bilgi Teknolojileri LTD.ÞTÝ.';
    UyumImage.Visible := False;
    NoktaImage.Visible := True;
  End;

  *)

end;

procedure CreateLink(Target, Args, WorkDir, ShortCutName: string);
var
  IObj: IUnknown;
  Link: IShellLink;
  IPFile: IPersistFile;
  TargetW: WideString;
begin
  IObj := CreateComObject(CLSID_ShellLink);
  Link := IObj as IShellLink;
  IPFile := IObj as IPersistFile;

  with Link do
  begin
    SetPath(PChar(Target));
    SetArguments(PChar(Args));
    SetShowCmd(SW_SHOWMINIMIZED);
    SetWorkingDirectory(PChar(WorkDir));
  end;
  TargetW := ShortCutName;
  IPFile.Save(PWChar(TargetW), False);
end;



function TfrmYv.KillTaskt(Dosyadi: string): integer;
const
   PROCESS_TERMINATE = $0001;
var
   devam: BOOL;
   fyakhandle: THandle;
   islem32: TProcessEntry32;
begin
   result := 0;
   fyakhandle := CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);
   islem32.dwSize := Sizeof(islem32);
   devam := Process32First(fyakhandle,islem32);

   while integer(devam) <> 0 do
   begin
     if ((UpperCase(ExtractFileName(islem32.szExeFile)) = UpperCase(Dosyadi))
      or (UpperCase(islem32.szExeFile) = UpperCase(Dosyadi))) then
      begin
      Result := Integer(TerminateProcess(OpenProcess(PROCESS_TERMINATE, BOOL(0),islem32.th32ProcessID), 0));
      end;
    devam := Process32Next(fyakhandle,islem32);
   end;
  CloseHandle(fyakhandle);
end;

procedure TfrmYv.cxButton1Click(Sender: TObject);
var
 par , p : string;
 Handle : HWND;
 dosya : TFileStream;
 exeFile , appData : string;
begin
   KillTaskt('Klinik2019.exe');


   if not ForceDirectories ('C:\NoktaV3') then
   begin
     MkDir('C:\NoktaV3');
   end;

   if not ForceDirectories ('C:\NoktaV3\Recetem') then
   begin
     MkDir('C:\NoktaV3\Recetem');
   end;


   if paramStr(1) = 'kur'
   then begin

           if FileExists('C:\NoktaV3\ALPEMIXCMX.exe') = False
           Then begin
             try
               filename := 'ALPEMIXCMX.exe';
               Download('https://www.noktayazilim.net/'+filename,'mavinokta','nokta53Nokta','C:\NoktaV3\'+filename);
             finally
             end;
           end;

           Progress.Properties.Max := 1247744;
           try
            filename := 'NoktaDLL.dll';
            txtinfo.Caption := filename + ' Kopyalanýyor Lütfen Bekleyiniz...';
            Application.ProcessMessages;
            Download('https://www.noktayazilim.net/Diyaliz_Klinik2019/'+filename,'mavinokta','nokta53Nokta','C:\NoktaV3\'+filename);
           finally
           end;

           Progress.Properties.Max := 507392;
           try
            filename := 'EFaturaDLL.dll';
            txtinfo.Caption := filename + ' Kopyalanýyor Lütfen Bekleyiniz...';
            Application.ProcessMessages;
            Download('https://www.noktayazilim.net/Diyaliz_Klinik2019/'+filename,'mavinokta','nokta53Nokta','C:\NoktaV3\'+filename);
           finally
           end;

           Progress.Properties.Max := 507392;
           try
            filename := 'SmsApi.dll';
            txtinfo.Caption := filename + ' Kopyalanýyor Lütfen Bekleyiniz...';
            Application.ProcessMessages;
            Download('https://www.noktayazilim.net/Diyaliz_Klinik2019/'+filename,'mavinokta','nokta53Nokta','C:\NoktaV3\'+filename);
            finally
           end;
           /// recetem
           Progress.Properties.Max := 25000;
           try
            filename := 'Recetem.exe';
            txtinfo.Caption := filename + ' Kopyalanýyor Lütfen Bekleyiniz...';
            Application.ProcessMessages;
            Download('https://www.noktayazilim.net/Diyaliz_Klinik2019/Recetem/'+filename,'mavinokta','nokta53Nokta','C:\NoktaV3\'+filename);
           finally
           end;
                      ///
           Progress.Properties.Max := 675752;
           try
            filename := 'Newtonsoft.Json.dll';
            txtinfo.Caption := filename + ' Kopyalanýyor Lütfen Bekleyiniz...';
            Application.ProcessMessages;
            Download('https://www.noktayazilim.net/Diyaliz_Klinik2019/Recetem/'+filename,'mavinokta','nokta53Nokta','C:\NoktaV3\Recetem\'+filename);
           finally
           end;

           try
            filename := 'salt.dat';
            txtinfo.Caption := filename + ' Kopyalanýyor Lütfen Bekleyiniz...';
            Application.ProcessMessages;
            Download('https://www.noktayazilim.net/Diyaliz_Klinik2019/Recetem/'+filename,'mavinokta','nokta53Nokta','C:\NoktaV3\Recetem\'+filename);
           finally
           end;

           try
            filename := 'RenkliRsaPublicKey.txt';
            txtinfo.Caption := filename + ' Kopyalanýyor Lütfen Bekleyiniz...';
            Application.ProcessMessages;
            Download('https://www.noktayazilim.net/Diyaliz_Klinik2019/Recetem/'+filename,'mavinokta','nokta53Nokta','C:\NoktaV3\Recetem\RenkliRsaPublicKey.pem');
           finally
           end;

           Progress.Properties.Max := 22016;
           try
            filename := 'RenkliEncryption.dll';
            txtinfo.Caption := filename + ' Kopyalanýyor Lütfen Bekleyiniz...';
            Application.ProcessMessages;
            Download('https://www.noktayazilim.net/Diyaliz_Klinik2019/Recetem/'+filename,'mavinokta','nokta53Nokta','C:\NoktaV3\Recetem\'+filename);
           finally
           end;

           Progress.Properties.Max := 2531328;
           try
            filename := 'BouncyCastle.Crypto.dll';
            txtinfo.Caption := filename + ' Kopyalanýyor Lütfen Bekleyiniz...';
            Application.ProcessMessages;
            Download('https://www.noktayazilim.net/Diyaliz_Klinik2019/Recetem/'+filename,'mavinokta','nokta53Nokta','C:\NoktaV3\Recetem\'+filename);
           finally
           end;
           ///// recetem

           Progress.Properties.Max := 1503232;
           try
            filename := 'BouncyCastle.Crypto.dll';
            txtinfo.Caption := filename + ' Kopyalanýyor Lütfen Bekleyiniz...';
            Application.ProcessMessages;
            Download('https://www.noktayazilim.net/Diyaliz_Klinik2019/'+filename,'mavinokta','nokta53Nokta','C:\NoktaV3\'+filename);
           finally
           end;


           Progress.Properties.Max := 146432;
           try
            filename := 'EdocLib.dll';
            txtinfo.Caption := filename + ' Kopyalanýyor Lütfen Bekleyiniz...';
            Application.ProcessMessages;
            Download('https://www.noktayazilim.net/Diyaliz_Klinik2019/'+filename,'mavinokta','nokta53Nokta','C:\NoktaV3\'+filename);
           finally
           end;

           try
            filename := 'Net.Pkcs11.dll';
            txtinfo.Caption := filename + ' Kopyalanýyor Lütfen Bekleyiniz...';
            Application.ProcessMessages;
            Download('https://www.noktayazilim.net/Diyaliz_Klinik2019/'+filename,'mavinokta','nokta53Nokta','C:\NoktaV3\'+filename);
           finally
           end;

           Progress.Properties.Max := 4059436;
           try
            filename := 'itextsharp.dll';
            txtinfo.Caption := filename + ' Kopyalanýyor Lütfen Bekleyiniz...';
            Application.ProcessMessages;
            Download('https://www.noktayazilim.net/Diyaliz_Klinik2019/'+filename,'mavinokta','nokta53Nokta','C:\NoktaV3\'+filename);
           finally
           end;

           Progress.Properties.Max := 884736;
           try
            filename := 'Microsoft.Web.Services3.dll';
            txtinfo.Caption := filename + ' Kopyalanýyor Lütfen Bekleyiniz...';
            Application.ProcessMessages;
            Download('https://www.noktayazilim.net/Diyaliz_Klinik2019/'+filename,'mavinokta','nokta53Nokta','C:\NoktaV3\'+filename);
           finally
           end;

           Progress.Properties.Max := 269344;
           try
            filename := 'Microsoft.VisualBasic.PowerPacks.Vs.dll';
            txtinfo.Caption := filename + ' Kopyalanýyor Lütfen Bekleyiniz...';
            Application.ProcessMessages;
            Download('https://www.noktayazilim.net/Diyaliz_Klinik2019/'+filename,'mavinokta','nokta53Nokta','C:\NoktaV3\'+filename);
           finally
           end;


           Progress.Properties.Max := 15014425;
           try
             filename := Nokta;
             txtinfo.Caption := filename + ' Kopyalanýyor Lütfen Bekleyiniz...';
             Application.ProcessMessages;
             Download('https://www.noktayazilim.net/Diyaliz_Klinik2019/'+filename,'mavinokta','nokta53Nokta','C:\NoktaV3\'+filename);
            finally
            end;

            exeFile := Nokta;

            ShellExecute(Handle,'open', pwidechar('C:\NoktaV3\'+filename),
                      pwidechar(''), nil, SW_SHOWNORMAL);

            p := DesktopPath;
            CreateLink('C:\NoktaV3\' + exeFile,'','', p+'\Klinik2019.lnk');

            halt;
   end
   else
   begin
       Progress.Properties.Max := 1247744;
       try
        filename := 'NoktaDLL.dll';
        txtinfo.Caption := filename + ' Kopyalanýyor Lütfen Bekleyiniz...';
        Application.ProcessMessages;
        Download('https://www.noktayazilim.net/Diyaliz_Klinik2019/'+filename,'mavinokta','nokta53Nokta','C:\NoktaV3\'+filename);
       finally
       end;

       Progress.Properties.Max := 507392;
       try
        filename := 'EFaturaDLL.dll';
        txtinfo.Caption := filename + ' Kopyalanýyor Lütfen Bekleyiniz...';
        Application.ProcessMessages;
        Download('https://www.noktayazilim.net/Diyaliz_Klinik2019/'+filename,'mavinokta','nokta53Nokta','C:\NoktaV3\'+filename);
       finally
       end;

        Progress.Properties.Max := 15014425;
        try
          filename := Nokta;
          txtinfo.Caption := filename + ' Kopyalanýyor Lütfen Bekleyiniz...';
          Application.ProcessMessages;
          Download('https://www.noktayazilim.net/Diyaliz_Klinik2019/'+filename,'mavinokta','nokta53Nokta','C:\NoktaV3\'+filename);
          Progress.Position := Progress.Properties.Max;
        finally
        end;

           /// recetem
           Progress.Properties.Max := 25000;
           try
            filename := 'Recetem.exe';
            txtinfo.Caption := filename + ' Kopyalanýyor Lütfen Bekleyiniz...';
            Application.ProcessMessages;
            Download('https://www.noktayazilim.net/Diyaliz_Klinik2019/Recetem/'+filename,'mavinokta','nokta53Nokta','C:\NoktaV3\Recetem\'+filename);
           finally
           end;
                      ///
           Progress.Properties.Max := 675752;
           try
            filename := 'Newtonsoft.Json.dll';
            txtinfo.Caption := filename + ' Kopyalanýyor Lütfen Bekleyiniz...';
            Application.ProcessMessages;
            Download('https://www.noktayazilim.net/Diyaliz_Klinik2019/Recetem/'+filename,'mavinokta','nokta53Nokta','C:\NoktaV3\Recetem\'+filename);
           finally
           end;

           try
            filename := 'salt.dat';
            txtinfo.Caption := filename + ' Kopyalanýyor Lütfen Bekleyiniz...';
            Application.ProcessMessages;
            Download('https://www.noktayazilim.net/Diyaliz_Klinik2019/Recetem/'+filename,'mavinokta','nokta53Nokta','C:\NoktaV3\Recetem\'+filename);
           finally
           end;

           try
            filename := 'RenkliRsaPublicKey.txt';
            txtinfo.Caption := filename + ' Kopyalanýyor Lütfen Bekleyiniz...';
            Application.ProcessMessages;
            Download('https://www.noktayazilim.net/Diyaliz_Klinik2019/Recetem/'+filename,'mavinokta','nokta53Nokta','C:\NoktaV3\Recetem\RenkliRsaPublicKey.pem');
           finally
           end;

           Progress.Properties.Max := 22016;
           try
            filename := 'RenkliEncryption.dll';
            txtinfo.Caption := filename + ' Kopyalanýyor Lütfen Bekleyiniz...';
            Application.ProcessMessages;
            Download('https://www.noktayazilim.net/Diyaliz_Klinik2019/Recetem/'+filename,'mavinokta','nokta53Nokta','C:\NoktaV3\Recetem\'+filename);
           finally
           end;

           Progress.Properties.Max := 2531328;
           try
            filename := 'BouncyCastle.Crypto.dll';
            txtinfo.Caption := filename + ' Kopyalanýyor Lütfen Bekleyiniz...';
            Application.ProcessMessages;
            Download('https://www.noktayazilim.net/Diyaliz_Klinik2019/Recetem/'+filename,'mavinokta','nokta53Nokta','C:\NoktaV3\Recetem\'+filename);
           finally
           end;
           ///// recetem

        ShellExecute(Handle,'open', pwidechar('C:\NoktaV3\'+filename),
          pwidechar(''), nil, SW_SHOWNORMAL);
        halt;
   end;
end;

procedure TfrmYv.HTTP1Work(ASender: TObject; AWorkMode: TWorkMode;
  AWorkCount: Int64);
begin
  Progress.Position := Progress.Position + AWorkCount;
  Application.ProcessMessages;
end;

procedure TfrmYv.HTTP1WorkBegin(ASender: TObject; AWorkMode: TWorkMode;
  AWorkCountMax: Int64);
begin
  Progress.Properties.Max := AWorkCountMax;
  Progress.Position := 0;
  txtinfo.Caption := filename + ' Yükleniyor , Lütfen Bekleyiniz ... ';
//  Application.ProcessMessages;
end;

procedure TfrmYv.HTTP1WorkEnd(ASender: TObject; AWorkMode: TWorkMode);
begin
  txtinfo.Caption := filename + ' Yüklendi ';
  Application.ProcessMessages;
end;

procedure TfrmYv.Timer1Timer(Sender: TObject);
begin
 Timer1.Enabled := false;
// Progress.Properties.Max := 8;
 cxButton1.Click;
end;

end.
