unit message;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, ComCtrls, jpeg;

type
  TfrmMessage = class(TForm)
    lblMessage1: TLabel;
    lblMessage2: TLabel;
    btnYes: TBitBtn;
    btnIptal: TBitBtn;
    txtMsg: TRichEdit;
    imgSoru_: TImage;
    imgUnlem_: TImage;
    procedure FormCreate(Sender: TObject);
    procedure txtMsgEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMessage: TfrmMessage;

implementation

{$R *.DFM}
var
   frmTop_ :word = 0;
   frmLeft_ :word = 0;

procedure TfrmMessage.FormCreate(Sender: TObject);
begin
(*
    //imgUnlem.ResHandle := 0;
    //imgUnlem.ResName := 'info_avi';

    //imgSoru.ResHandle := 0;
    //imgSoru.ResName := 'qry_avi';
    txtMsg.Clear;
    case frmMessage.Tag of
      0: // msg, evet and iptal buttons are visible, hayir selected
        begin
         btnYes.Visible := True;
         btnYes.Caption := '&Evet';
         btnIptal.Visible := True;
         btnIptal.Caption := '&Hay�r';
         btnIptal.TabOrder := 0;
         btnYes.TabOrder := 1;
         btnIptal.Focused;
         imgSoru_.Visible := True;
         imgUnlem_.Visible := False;
         Caption := 'SORU ?';
        end;
      1: // info,only evet button is visible
        begin
         btnYes.Visible := True;
         btnYes.Caption := '&Tamam';
         btnIptal.Visible := False;
         btnYes.TabOrder := 0;
         imgUnlem_.Visible := True;
         imgSoru_.Visible := False;
         Caption := 'B�LG� !';
        end;
      2: //confirmation, evet and hayir buttons are visible, evet selected
        begin
         btnYes.Visible := True;
         btnYes.Caption := '&Evet';
         btnIptal.Visible := True;
         btnIptal.Caption := '&Hay�r';
         btnYes.TabOrder := 0;
         btnIptal.TabOrder := 1;
         imgSoru_.Visible := True;
         imgUnlem_.Visible := False;
         Caption := 'SORU ?';
        end;
      3: //chc, give choice, tamam, vazgec /tamam selected
        begin
         btnYes.Caption := '&Tamam';
         btnYes.Visible := True;
         btnIptal.Caption := '&Vazge�';
         btnIptal.Visible := True;
         btnYes.TabOrder := 0;
         btnIptal.TabOrder := 1;
         imgSoru_.Visible := False;
         imgUnlem_.Visible := True;
         Caption := 'ONAYLAMA ?';
        end;
      4: //chc2, give choice, tamam, vazgec/ vazgec selected
        begin
         btnYes.Caption := '&Tamam';
         btnYes.Visible := True;
         btnIptal.Caption := '&Vazge�';
         btnIptal.Visible := True;
         btnYes.TabOrder := 1;
         btnIptal.TabOrder := 0;
         imgSoru_.Visible := False;
         imgUnlem_.Visible := True;
         Caption := 'ONAYLAMA ?';
        end;
      5: //ozel1, give choice, �nta�, K��at/ K��at selected
        begin
         btnYes.Caption := '�&nta�';
         btnYes.Visible := True;
         btnIptal.Caption := '&K��at';
         btnIptal.Visible := True;
         btnYes.TabOrder := 0;
         btnIptal.TabOrder := 1;
         imgSoru_.Visible := True;
         imgUnlem_.Visible := False;
         Caption := 'SE��M�N�Z ?';
        end;
    end; // case

    //imgUnlem.Active := imgUnlem.Visible;
    //imgSoru.Active := imgSoru.Visible;
*)
end;

procedure TfrmMessage.txtMsgEnter(Sender: TObject);
begin
 //perform(wm_nextdlgctl,0,0);
 ActiveControl := btnYes;
end;

procedure TfrmMessage.FormShow(Sender: TObject);
begin
    //imgUnlem.ResHandle := 0;
    //imgUnlem.ResName := 'info_avi';

    //imgSoru.ResHandle := 0;
    //imgSoru.ResName := 'qry_avi';

    //txtMsg.Clear;
    case frmMessage.Tag of
      0: // msg, evet and iptal buttons are visible, hayir selected
        begin
         btnYes.Visible := True;
         btnYes.Caption := '&Evet';
         btnIptal.Visible := True;
         btnIptal.Caption := '&Hay�r';
         btnIptal.TabOrder := 0;
         btnYes.TabOrder := 1;
         btnIptal.SetFocus;// .Focused;
         //imgSoru.Visible := True;
         //imgUnlem.Visible := False;
         imgSoru_.Visible := True;
         imgUnlem_.Visible := False;
         Caption := 'SORU ?';
        end;
      1: // info,only evet button is visible
        begin
         btnYes.Visible := True;
         btnYes.Caption := '&Tamam';
         btnIptal.Visible := False;
         btnYes.TabOrder := 0;
         btnYes.SetFocus;
         //imgUnlem.Visible := True;
         //imgSoru.Visible := False;
         imgUnlem_.Visible := True;
         imgSoru_.Visible := False;
         Caption := 'B�LG� !';
        end;
      2: //confirmation, evet and hayir buttons are visible, evet selected
        begin
         btnYes.Visible := True;
         btnYes.Caption := '&Evet';
         btnIptal.Visible := True;
         btnIptal.Caption := '&Hay�r';
         btnYes.TabOrder := 0;
         btnIptal.TabOrder := 1;
         btnYes.SetFocus;
         //imgSoru.Visible := True;
         //imgUnlem.Visible := False;
         imgSoru_.Visible := True;
         imgUnlem_.Visible := False;
         Caption := 'SORU ?';
        end;
      3: //chc, give choice, tamam, vazgec /tamam selected
        begin
         btnYes.Caption := '&Tamam';
         btnYes.Visible := True;
         btnIptal.Caption := '&Vazge�';
         btnIptal.Visible := True;
         btnYes.TabOrder := 0;
         btnIptal.TabOrder := 1;
         btnYes.SetFocus;
         //imgSoru.Visible := False;
         //imgUnlem.Visible := True;
         imgSoru_.Visible := False;
         imgUnlem_.Visible := True;
         Caption := 'ONAYLAMA ?';
        end;
      4: //chc2, give choice, tamam, vazgec/ vazgec selected
        begin
         btnYes.Caption := '&Tamam';
         btnYes.Visible := True;
         btnIptal.Caption := '&Vazge�';
         btnIptal.Visible := True;
         btnYes.TabOrder := 1;
         btnIptal.TabOrder := 0;
         btnIptal.SetFocus;
         //imgSoru.Visible := False;
         //imgUnlem.Visible := True;
         imgSoru_.Visible := False;
         imgUnlem_.Visible := True;
         Caption := 'ONAYLAMA ?';
        end;
      5: //ozel1, give choice, �nta�, K��at/ K��at selected
        begin
         btnYes.Caption := '�&nta�';
         btnYes.Visible := True;
         btnIptal.Caption := '&K��at';
         btnIptal.Visible := True;
         btnYes.TabOrder := 0;
         btnIptal.TabOrder := 1;
         imgSoru_.Visible := True;
         imgUnlem_.Visible := False;
         Caption := 'SE��M�N�Z ?';
        end;
      6: // varyok, var and yok buttons are visible, yok selected
        begin
         btnYes.Visible := True;
         btnYes.Caption := '&VAR';
         btnIptal.Visible := True;
         btnIptal.Caption := '&YOK';
         btnIptal.TabOrder := 0;
         btnYes.TabOrder := 1;
         btnIptal.SetFocus; //.Focused;
         //imgSoru.Visible := True;
         //imgUnlem.Visible := False;
         imgSoru_.Visible := True;
         imgUnlem_.Visible := False;
         Caption := 'CEVAP ?';
        end;
    end; // case
    //imgUnlem.Active := imgUnlem.Visible;
    //imgSoru.Active := imgSoru.Visible;
    //if imgUnlem.Active Then imgUnlem
end;

procedure TfrmMessage.FormActivate(Sender: TObject);
begin
   if frmTop_ = 0
   Then frmTop_ := Trunc(TScreen(frmMessage).DesktopHeight/2);
   if frmLeft_ = 0
   Then frmLeft_ := Trunc(TScreen(frmMessage).DesktopWidth/2);

   Top := frmTop_ - Trunc(Height/2);
   Left := frmLeft_ - Trunc(Width/2);
end;

end.
