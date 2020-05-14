unit Encode;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue, cxTextEdit,
  Menus, Vcl.StdCtrls, cxButtons,StrUtils,EncdDecd,IdCoderMIME,ComCtrls,
  GDIPOBJ, GDIPAPI,ActiveX, Vcl.ExtCtrls;

type
  TForm12 = class(TForm)
    txtOrd: TcxTextEdit;
    txtNew: TcxTextEdit;
    btnSifrele: TcxButton;
    cxButton1: TcxButton;
    CheckBox1: TCheckBox;
    procedure btnSifreleClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form12: TForm12;

implementation

{$R *.dfm}

procedure TForm12.btnSifreleClick(Sender: TObject);

begin

  if CheckBox1.Checked
  then
     txtNew.Text := EncodeString(txtOrd.Text)
  else
   txtNew.Text := EncodeString(EncodeString(EncodeString('mvnkt'))+#29+EncodeString(EncodeString(txtOrd.Text))+#29+EncodeString(EncodeString('YeM')));
end;

procedure TForm12.cxButton1Click(Sender: TObject);
Const
  a = 'YlhadWEzUT0='+#29;
  b = #29+'V1dWTg==';

begin
    //  YlhadWEzUT0=  V1dWTg==
  //  txtOrd.Text :=  DecodeString(txtNew.Text);
  if CheckBox1.Checked
  then
            txtOrd.Text :=  DecodeString(txtNew.Text)
  else
  begin
     try
       txtOrd.Text :=  DecodeString(txtNew.Text);
       txtOrd.Text := StringReplace(txtOrd.Text,a,'',[rfReplaceAll]);
       txtOrd.Text := StringReplace(txtOrd.Text,b,'',[rfReplaceAll]);
      // ExtractStrings(['|'], [], PChar(txtOrd.Text),List);
       txtOrd.Text := DecodeString(DecodeString(txtOrd.Text));
     finally
     end;
  end;

end;

end.
