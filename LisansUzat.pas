unit LisansUzat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, sLabel, ExtCtrls, sPanel, kadir,noktaservice,
  cxControls, cxContainer, cxEdit, cxGroupBox, Buttons, sBitBtn,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, adodb, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue,
  InvokeRegistry, Rio, SOAPHTTPClient, Menus, cxButtons;


type
  TfrmLisansBilgisi = class(TForm)
    LisansAl: THTTPRIO;
    btnLisans: TcxButton;
    btnVazgec: TcxButton;
    txtLisans: TcxGroupBox;
    Label1: TLabel;
    txtLisansCaption: TLabel;
    Label2: TLabel;
    txtBitis: TEdit;
    txtBasla: TEdit;
    cxGroupBox1: TcxGroupBox;
    txtYeniBasla: TEdit;
    PnlBottom: TcxGroupBox;
    btnUygula: TcxButton;
    txtLisansTip: TEdit;

  procedure LisansBilgisi;
    procedure btnVazgecClick(Sender: TObject);
    procedure btnUygulaClick(Sender: TObject);
    procedure sBitBtn1Click(Sender: TObject);
    procedure btnLisansClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLisansBilgisi: TfrmLisansBilgisi;

implementation

uses data_modul;

{$R *.dfm}

procedure TfrmLisansBilgisi.LisansBilgisi;
var
  Tip : string;
  LisansTipDeger : integer;
begin
  //  LisansBilgileri(sistemnow,basla,bitis,kurum,limit);

 try
  case strToint(Datalar.LisansTipDeger) of
   1 : Tip := 'Standart';
   2 : Tip := 'Pro';
   3 : Tip := 'Pro Plus';
  end;

  txtBasla.Text := Datalar.LisansBasla;
  txtLisansTip.Text := Datalar.LisansTip;
  txtLisansCaption.Caption := FormattedTarih(Datalar.LisansBitis) + ' - ' + Tip;
 except
 end;

end;

procedure TfrmLisansBilgisi.btnVazgecClick(Sender: TObject);
begin
     close;
end;

procedure TfrmLisansBilgisi.btnUygulaClick(Sender: TObject);
var
  sql , Tip : string;
  key  : real;
  tipkey : double;
  ado : TADOQuery;
begin
//  datalar.Login;

  key := strtofloat(txtBasla.Text) - strtoint(datalar.osgbKodu);
  key := key / strtoint(datalar.osgbKodu);

  tipkey := strtofloat(txtLisansTip.Text) - strtoint(datalar.osgbKodu);
  tipkey := tipkey / strtoint(datalar.osgbKodu);

  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;
    sql := ' begin try select cast('+ QuotedStr(floattostr(key)) + ' as datetime) lisans   end try   BEGIN CATCH   END CATCH ';
    datalar.QuerySelect(ado,sql);
    if ado.Eof
    Then Begin
      ShowMessageSkin('Key Hatal�','','','info');
      exit;
    End;
  finally
    ado.Free;
  end;

  case Round(tipkey) of
   1 : Tip := 'Standart';
   2 : Tip := 'Pro';
   3 : Tip := 'Pro Plus';
  end;

  txtLisansCaption.Caption := FormattedTarih(floattostr(key)) + ' - ' + Tip;


  datalar.ADO_SQL11.Close;
  datalar.ADO_SQL11.SQL.Clear;
  sql := 'update parametreler set SLXX = ' + QuotedStr(txtBasla.Text) +
         ',SLXXX = ' + QuotedStr(txtLisansTip.Text) +
         ',SLVV = ' + QuotedStr('') +
         ' where SLK = ''GT'' and SLB = ''0004''';
  datalar.QueryExec(datalar.ADO_SQL11,sql);


end;

procedure TfrmLisansBilgisi.sBitBtn1Click(Sender: TObject);
begin
  (*
    Application.CreateForm(TfrmSozlesme, frmSozlesme);
    GorselAyar(frmSozlesme,frmAna.global_img_list4);
    frmSozlesme.kurumBilgisi;
    frmSozlesme.ShowModal;
    frmSozlesme := nil;
        *)
end;

procedure TfrmLisansBilgisi.btnLisansClick(Sender: TObject);
var
  Kb : KurumBilgi;
  K : KurumBilgiGrs;
  FHC : FaturaHastaCount;
  kurum : WideString;
  t : string;
  ado : TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
   datalar.QuerySelect(ado,'select * from OSGB_MASTER.dbo.musteri where kod = ' + QuotedStr(datalar.osgbKodu));
   txtBasla.Text := ado.FieldByName('LisansKey').AsString;
   txtLisansTip.Text := ado.FieldByName('LisansTipKey').AsString;
   btnUygula.Click;
  finally
    ado.free;
  end;
(*
//  datalar.login;
  datalar.LisansAlURL := 'www.noktayazilim.net';
  LisansAl.URL := 'https://'+datalar.LisansAlURL+'/noktaservice.asmx';

  kurum := datalar.osgbKodu;
  Kb := KurumBilgi.Create;
  try
    K := KurumBilgiGrs.Create;
    try
      K.kurumkod := kurum;
      FHC := FaturaHastaCount.Create;
      try
        t := copy(tarihal(Date-30),1,6);
        try
            FHC.KurumKod := kurum;
            Kb := (LisansAl as NoktaServiceSoap).LisansBitis(K);
            txtBasla.Text := Kb.Lisans;
            if Kb.SonucKodu = '0000'
            then begin
              btnUygula.Click;
              ShowMessageSkin(kb.SonucMesaj,'Lisans�n�z Uyguland�.','','info');
           end;
        except on e : Exception do
         begin
          ShowMessageSkin(e.Message,'','','info');
         end;
        end;
      finally
        FHC.Free;
      end;
    finally
      K.Free;
    end;
  finally
    kb.Free;
  end;

  *)
end;

end.
