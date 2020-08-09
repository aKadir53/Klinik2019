unit MedulaKurumSifreDegis;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,MSHTML,data_modul, OleCtrls, SHDocVw, StdCtrls,GirisUnit;

type
  TKurumSifreDegisForm = class(TGirisForm)
    WebBrowser1: TWebBrowser;

    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure WebBrowser1DocumentComplete(ASender: TObject;
      const pDisp: IDispatch; const URL: OleVariant);
  private
    { Private declarations }
  public
    kullaniciAdi , sifre, mevcutSifre : string;
    kullaniciAdiD , sifreD, mevcutSifreD : string;

    { Public declarations }
  end;

var
  KurumSifreDegisForm: TKurumSifreDegisForm;
  sg : integer = 0;
implementation

{$R *.dfm}

procedure TKurumSifreDegisForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  sg := 0;
  inherited;
end;

procedure TKurumSifreDegisForm.FormCreate(Sender: TObject);
begin
//  Menu := PopupMenu1;
 // Olustur(self,_TableName_,'Kimlik Doðrula',71,sqlInsert);
  cxPanel.Visible := false;
  Sayfa3_Kolon3.Width := 0;
  Sayfa3_Kolon2.Width := 0;
  SayfaCaption('','','','','');
end;

procedure TKurumSifreDegisForm.WebBrowser1DocumentComplete(ASender: TObject;
  const pDisp: IDispatch; const URL: OleVariant);
var
   iDoc: IHTMLDocument2;
   i,j,x: integer;
   ov: OleVariant;
   ovTable: OleVariant;
   iDisp: IDispatch;
   iColl: IHTMLElementCollection;
   iInputElement : IHTMLInputElement;
   iTextElement:IHTMLTextAreaElement;
   formelement:IHtmlFormElement;
   menuelement : IHTMLTable;
   _goster : integer;
  bb , muayeneKayit , YeniSifreDogrulama , sifreDegistirildi , hosgeldin : integer;
  ss : string;
begin
 //  if ButtonClick = True then exit;
   ss := (Webbrowser1.Document as ihtmldocument2).body.parentelement.outerhtml;
 //  cxMemo1.Text := (Webbrowser1.Document as ihtmldocument2).body.parentelement.outerhtml;
   YeniSifreDogrulama := pos('Yeni Þifre Doðrulama',ss);
   muayeneKayit := pos('MUAYENE KAYIT',ss);
   sifreDegistirildi := pos('Deðiþtirildi',ss);
   hosgeldin := pos('Hoþgeldin',ss);

   if (hosgeldin > 0) and (YeniSifreDogrulama = 0)
   then begin
      WebBrowser1.Navigate('https://medula.sgk.gov.tr/hastane/pages/sifreDegistir.jsf');
   end;

      datalar.browserOk := 1;
      //datalar.Login;

      (*
      ovTable := WebBrowser1.OleObject.Document.all.tags('TABLE').item(1);
      for i := 0 to (ovTable.Rows.Length - 1) do
      begin
        for j := 0 to (ovTable.Rows.Item(i).Cells.Length - 1) do
        begin
         if sg <> 1 then
         if pos('Þifre Deðiþtir',ovTable.Rows.Item(i).Cells.Item(j).InnerText) > 0
         then begin
            WebBrowser1.Navigate('https://medula.sgk.gov.tr/medula/SifreDegistir.do');
            sg := 1;
         end;
        end;
      end;
      *)


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

                        (*
                         iDisp.QueryInterface(IHTMLTable,menuelement);
                         if assigned(menuelement)
                         then
                         if menuelement.i = 'Þifre Deðiþtir'
                         then begin
                           WebBrowser1.Navigate('/SifreDegistir.do');
                         end;
                          *)

                         iDisp.QueryInterface(IHTMLInputElement, iInputElement);
                         if assigned(iInputElement) then

                                    if iInputElement.Get_name = 'j_id_9:userName'
                                    then begin
                                      iInputElement.Set_value(kullaniciAdi);
                                    end;

                                    if iInputElement.Get_name = 'j_id_9:j_id_j'
                                    then begin
                                      iInputElement.Set_value(mevcutSifre);
                                    end;


                                    if iInputElement.Get_name = 'form:j_id_v'
                                    then begin
                                      iInputElement.Set_value(mevcutSifre);

                                    end;

                                    if iInputElement.Get_name = 'form:parola'
                                    then begin
                                       iInputElement.Set_value(sifre);

                                    end;

                                    if iInputElement.Get_name = 'form:pt'
                                    then begin
                                      iInputElement.Set_value(sifre);

                                    end;



                       //   if iInputElement.Get_type_ = 'submit'
                       //   then iInputElement.Get_form.submit;



                          end;
               end;
      end;

end;

end.
