unit UyumSoftPortal;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ADODB,  DBGrids,  Grids, ComCtrls, Mask, ExtCtrls,
  Buttons, Gauges, MSHTML,  ToolWin, REGISTRY,
  BaseGrid, AdvGrid, DBAdvGrd, DBCtrls, AdvEdit,comobj,
  ImgList, sPanel, sButton, Menus,
  SHDocVw, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdHTTP, HTTPApp, HTTPProd, jpeg, strutils,
  cxGraphics, OleCtrls, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinsDefaultPainters, cxTextEdit, cxMemo;

type
  TfrmPortal = class(TForm)
    pnlBrowser: TsPanel;
    pnlAdres: TPanel;
    Label1: TLabel;
    txtAdres: TEdit;
    pnlButton: TPanel;
    WebBrowser1: TWebBrowser;
    procedure yukle(user,password,url,uygulama : string);
    procedure WebBrowser1DocumentComplete(ASender: TObject;
      const pDisp: IDispatch; const URL: OleVariant);
    procedure FormCreate(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPortal: TfrmPortal;
  _user , _pas , _tc , _uygulama : string;
  ButtonClick : Boolean;
implementation
  uses data_modul;
{$R *.dfm}



procedure TfrmPortal.FormCreate(Sender: TObject);
begin
  ButtonClick := false;
end;

procedure TfrmPortal.WebBrowser1DocumentComplete(ASender: TObject;
  const pDisp: IDispatch; const URL: OleVariant);
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
  Buttons: OleVariant;
  Button: OleVariant;
  bb : integer;
  ss : string;
begin
   if ButtonClick = True then exit;
   ss := (Webbrowser1.Document as ihtmldocument2).body.parentelement.outerhtml;
 //  cxMemo1.Text := (Webbrowser1.Document as ihtmldocument2).body.parentelement.outerhtml;
   bb := pos('Evrak Ref. No : </td><td class="ui-panelgrid-cell" role="gridcell">',ss);

  // ShowMessage(copy(ss,bb+67,6));

      idoc := Webbrowser1.document as IHTMLDocument2;
      ov := 'INPUT';
      IDisp := iDoc.all.tags(ov);
      if assigned(IDisp)
      then begin
               IDisp.QueryInterface(IHTMLElementCollection, iColl);
               if assigned(iColl)
               then begin
                         for i := 1 to iColl.Get_length do
                         begin
                            iDisp := iColl.item(pred(i), 0);
                            iDisp.QueryInterface(IHTMLInputElement, iInputElement);
                            if assigned(iInputElement) then


                            if _uygulama = 'Uyum'
                            then begin
                              if iInputElement.Get_name = 'Username'
                              then iInputElement.Set_value(_user);

                              if iInputElement.Get_name = 'Password'
                              then iInputElement.Set_value(_pas);
                            end;

                            if _uygulama = 'Medula'
                            Then begin
                              if iInputElement.Get_name = 'j_id_9:userName' //'j_username'
                              then iInputElement.Set_value(_user);

                              if iInputElement.Get_name = 'j_id_9:j_id_j' //'j_password'
                              then iInputElement.Set_value(_pas);
                            end;

                            if _uygulama = 'ENabiz'
                            then begin
                              if iInputElement.Get_name = 'NQUser'
                              then iInputElement.Set_value(_user);

                              if iInputElement.Get_name = 'NQPassword'
                              then iInputElement.Set_value(_pas);
                            end;
                           (*
                            if (iInputElement.Get_type_ = 'submit')
                         //  and (iInputElement.Get_name = 'form1:buttonSorgula')
                               then iInputElement.select;
                             *)
                          end;

                          Buttons := WebBrowser1.OleObject.Document.getElementsByTagName('button');
                          for I := 0 to Buttons.Length - 1 do
                          begin
                            Button := Buttons.item(I);
                            if Button.innerText = 'Giriþ' then
                            begin
                              Button.click();
                              ButtonClick := True;
                              Break;
                            end;
                          end;

               end;
      end;
end;

procedure TfrmPortal.yukle(user,password,url,uygulama : string);
begin
    _user := user;
    _pas := password;
    _uygulama := uygulama;
    WebBrowser1.Navigate(url);
end;

  (*
procedure TfrmPortal.WebBrowser1DocumentComplete(ASender: TObject;
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

                         if iInputElement.Get_name = 'Username'
                         then iInputElement.Set_value(_user);

                         if iInputElement.Get_name = 'Password'
                         then iInputElement.Set_value(_pas);


                         if (iInputElement.Get_type_ = 'submit')
                       //  and (iInputElement.Get_name = 'form1:buttonSorgula')
                             then iInputElement.select;

                             //  WebBrowser1.OleObject.Document.GetElementByID('form1:buttonSorgula').Click;



                          end;
               end;
      end;

end;
   *)
end.
