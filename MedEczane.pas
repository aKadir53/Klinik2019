unit MedEczane;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ADODB,  DBGrids,  Grids, ComCtrls, Mask, ExtCtrls,
  Buttons, Gauges, MSHTML,  ToolWin, REGISTRY,
  BaseGrid, AdvGrid, DBAdvGrd, DBCtrls, AdvEdit,comobj,
  ImgList, sPanel, sButton, Menus, sBitBtn,  JvPageList,
  JvNavigationPane, JvExControls, JvComponent, JvButton, JvComponentBase,
  JvBalloonHint, SHDocVw, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdHTTP, HTTPApp, HTTPProd, jpeg, strutils,
  cxGraphics,  sGauge, sToolBar, sLabel, sSkinProvider, sSkinManager, OleCtrls;

type
  TfrmMedEczane = class(TForm)
    pnlBrowser: TsPanel;
    WebBrowser1: TWebBrowser;
    pnlAdres: TPanel;
    Label1: TLabel;
    txtAdres: TEdit;
    pnlButton: TPanel;
    procedure WebBrowser1DocumentComplete(ASender: TObject;
      const pDisp: IDispatch; var URL: OleVariant);
    procedure yukle(user,password,tc : string ; tip : string = 'E');
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMedEczane: TfrmMedEczane;
  _user , _pas , _tc , userKutuName,sifreKutuName : string;
implementation
  uses data_modul;
{$R *.dfm}

procedure TfrmMedEczane.yukle(user,password,tc : string ; tip : string = 'E');
begin
    _user := user;
    _pas := password;
    _tc := tc;
    if tip = 'E'
    then begin
      userKutuName := 'j_username';
      sifreKutuName := 'j_password';
      WebBrowser1.Navigate('https://medeczane.sgk.gov.tr/doktor/login.jsp');
    end
    else
    begin
      userKutuName := 'NQUser';
      sifreKutuName := 'NQPassword';
      WebBrowser1.Navigate('https://kds.sagliknet.saglik.gov.tr/analytics/saw.dll?bieehome&startPage=1');
    end;
end;


procedure TfrmMedEczane.WebBrowser1DocumentComplete(ASender: TObject;
  const pDisp: IDispatch; var URL: OleVariant);
var
   iDoc: IHTMLDocument2;
   i: integer;
   ov: OleVariant;
   iDisp: IDispatch;
   iColl: IHTMLElementCollection;
   iInputElement : IHTMLInputElement;
   iTextElement:IHTMLTextAreaElement;
   formelement:IHtmlFormElement;
   _goster : integer;
begin

      idoc := Webbrowser1.document as IHTMLDocument2;
      ov := 'INPUT';
      IDisp := iDoc.all.tags(ov);
      if assigned(IDisp)
      then begin
               IDisp.QueryInterface(IHTMLElementCollection, iColl);
               if assigned(iColl)
               then begin
                         for i := 1 to iColl.Get_length do begin
                         iDisp := iColl.item(pred(i), 0);
                         iDisp.QueryInterface(IHTMLInputElement, iInputElement);
                         if assigned(iInputElement) then

                         if iInputElement.Get_name = userKutuName
                         then iInputElement.Set_value(_user);

                         if iInputElement.Get_name = sifreKutuName
                         then iInputElement.Set_value(_pas);

                         if iInputElement.Get_name = 'form1:text2'
                         then iInputElement.Set_value(_tc);

                         if iInputElement.Get_name = 'form1:text3'
                         then iInputElement.Set_value(_tc);



                         if iInputElement.Get_name = 'form1:checkbox1'
                         then iInputElement.checked := True;


                         if (iInputElement.Get_type_ = 'submit') and
                            (iInputElement.Get_name = 'form1:buttonSorgula')
                             then iInputElement.select;

                             //  WebBrowser1.OleObject.Document.GetElementByID('form1:buttonSorgula').Click;



                          end;
               end;
      end;

end;

end.
