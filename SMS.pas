unit SMS;

interface

uses
  Windows, Messages, SysUtils,StrUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxPCdxBarPopupMenu, cxContainer,
  cxEdit, Menus, cxTextEdit, cxMemo, StdCtrls, cxButtons, cxGroupBox, cxPC,
  cxLabel,shellApi,data_modul,adodb,kadir,KadirType;

type
  TfrmSMS = class(TForm)
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxGroupBox1: TcxGroupBox;
    btnMesajGonder: TcxButton;
    txtmsg: TcxMemo;
    procedure btnMesajGonderClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure txtmsgPropertiesChange(Sender: TObject);
    function findMethod(dllHandle : Cardinal; methodname : string) : FARPROC;
    function SendMesajGonder(tel,mesaj : string) : string;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    dosyaNo : string;
    hasta : string;
    MobilTel : string;
    mesaj : string;
    token : string;
    tip : string;
  end;


  const
   LIB_DLL = 'NoktaDLL.dll';

var
  frmSMS: TfrmSMS;

implementation
    uses AnaUnit;
{$R *.dfm}


function TfrmSMS.findMethod(dllHandle : Cardinal; methodname : string) : FARPROC;
begin
 Result := GetProcAddress(dllHandle,pchar(methodname));
end;

function TfrmSMS.SendMesajGonder(tel,mesaj : string) : string;
var
  SendMesaj : TSendMesaj;
  dllHandle: Cardinal;
  _sonuc_ : string;
begin
  SendMesajGonder := '';
  dllHandle := LoadLibrary(LIB_DLL);
  try
    if dllHandle = 0 then exit;
    @SendMesaj := findMethod(dllHandle, 'SmsGonder');

    if addr(SendMesaj) <> nil
    then
      SendMesaj(datalar.SMSHesapUser,datalar.SMSHesapSifre,datalar.SMSHesapFrom,tel,mesaj,_sonuc_);

    SendMesajGonder := _sonuc_;

    if not Assigned(SendMesaj)
    then
      raise Exception.Create(LIB_DLL + ' içersinde SmsGonder Method bulunamadý!');
  finally
    FreeLibrary(dllHandle);
  end;
end;




procedure TfrmSMS.btnMesajGonderClick(Sender: TObject);
var
  sonuc ,tel : string;
  SS : TStringList;
begin
//  if mrYes = ShowMessageSkin('SMS Bildirilecek','','','msg')
//  then begin
    try
      frmSMS.Caption := '[' + hasta + ']' + ' Mesaj Gönderiliyor...';
      Application.ProcessMessages;
      //datalar.Login;
      tel := MobilTel;
      if tel = ''
      then begin
        ShowMessageSkin('Mobil Telefon boþ olmamalýdýr','','','info');
        exit;
      end;

      if Tip = ''
      then
       sonuc := SendMesajGonder(tel,txtmsg.Text)
      else
       sonuc := SendMesajGonderWhatsapp(token,tel,txtmsg.Text);



      SS := TStringList.Create;
      try
        ExtractStrings(['|'], [], PChar(sonuc),SS);

        if (SS[1] = '200') or (SS[1] = 'OK')
        then begin
          ShowMessageSkin('Mesaj Gönderildi','','','info');
          (*
          datalar.QueryExec('insert into SmsGonderimLog (dosyaNO,tel,msj)' +
                            ' values(' + QuotedStr(dosyaNo) + ',' +
                            QuotedStr(tel) + ',' +
                            QuotedStr(txtmsg.Text) + ')');
          *)
        end
        else
         ShowMessageSkin('Hata : ' + SS[2] ,'','','info');



      finally
        SS.Free;
      end;
    finally
      frmSMS.Caption := 'SMS Gönderim  [' + hasta + ']';

    end;
 // end;

end;

procedure TfrmSMS.FormCreate(Sender: TObject);
begin
   //  btnMesajGonder.Images := datalar.imag24png;
end;

procedure TfrmSMS.FormShow(Sender: TObject);
var
 Bitmap : TBitmap;
begin
  Bitmap := TBitmap.Create;
  try
    if Tip = '' then
    begin
     frmSMS.Caption := 'SMS Gönderim  [' + hasta + ']';
     datalar.imag24png.GetImage(144,Bitmap);
    end
    else
    begin
     frmSMS.Caption := Tip +  ' [' + hasta + ']';
     datalar.imag24png.GetImage(143,Bitmap);
    end;

    btnMesajGonder.Glyph := Bitmap;
    frmSMS.txtmsg.Text := mesaj;
  finally
    Bitmap.free;
  end;
end;

procedure TfrmSMS.txtmsgPropertiesChange(Sender: TObject);
begin
   cxGroupBox1.Caption := 'Mesaj : ' + inttostr(length(txtmsg.Text));
end;

end.
