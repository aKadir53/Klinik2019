unit MedEczane;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ADODB,  DBGrids,  Grids, ComCtrls, Mask, ExtCtrls,
  Buttons, Gauges, MSHTML,  ToolWin, REGISTRY,
  BaseGrid, DBCtrls,comobj,
  ImgList,   Menus, JvPageList,
  JvNavigationPane, JvExControls, JvComponent, JvButton, JvComponentBase,
  JvBalloonHint, SHDocVw, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdHTTP, HTTPApp, HTTPProd, jpeg, strutils,
  cxGraphics, OleCtrls, data_modul,
  KadirLabel,GirisUnit,KadirType,Kadir, AdvObj, AdvGrid, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinsDefaultPainters,
  cxSplitter;

type
  TfrmMedEczane = class(TGirisForm)
    pnlAdres: TPanel;
    txtAdres: TEdit;
    pnlButton: TPanel;
    aStrGrid: TAdvStringGrid;
    cxSplitter1: TcxSplitter;
    WebBrowser1: TWebBrowser;
    procedure WebBrowser1DocumentComplete(ASender: TObject;
      const pDisp: IDispatch; const URL: OleVariant);
    procedure FormCreate(Sender: TObject);
    procedure FillStringGridWithHTMLTable(aStrGrid:TAdvStringGrid;HTMLTable:String);
    procedure aStrGridButtonClick(Sender: TObject; ACol, ARow: Integer);
  private
    { Private declarations }

  public
      receteForm : TGirisForm;
     _user , _pas , _tc , _url, userKutuName,sifreKutuName : string;
      function Init(Sender: TObject) : Boolean; override;
    { Public declarations }
  end;

var
  frmMedEczane: TfrmMedEczane;
  ButtonClick : Boolean;

implementation
        uses hastaRecete;
{$R *.dfm}


procedure TfrmMedEczane.FormCreate(Sender: TObject);
begin
  inherited;
  cxPanel.Visible := false;
 // ToolBar1.Visible := false;
  TopPanel.Visible := False;
  _HastaBilgileriniCaptionGoster_ := True;
  SayfaCaption('','','','','');
  (*
    case tag of
       TagfrmMedEczane : SayfaCaption('MedEczane','','','','');
       TagfrmENabiz : SayfaCaption('E-Nabýz','','','','');
       TagfrmMedula : SayfaCaption('Medula','','','','');
       TagfrmUyum : SayfaCaption('Portal','','','','');
    end;
    *)
end;

function TfrmMedEczane.Init(Sender: TObject): Boolean;
begin
  inherited;
    case tag of
       TagfrmMedEczane : begin
                           userKutuName := 'j_username';
                           sifreKutuName := 'j_password';
                           _tc := _TC_;
                           WebBrowser1.Navigate('https://medeczane.sgk.gov.tr/doktor/login.jsp');
                           aStrGrid.Visible := True;
                           cxSplitter1.Visible := True;
                           pnlAdres.Align := alTop;
                         end;

       TagfrmENabiz : begin
                        userKutuName := 'NQUser';
                        sifreKutuName := 'NQPassword';
                        WebBrowser1.Navigate('https://kds.sagliknet.saglik.gov.tr/analytics/saw.dll?bieehome&startPage=1');
                        aStrGrid.Visible := False;
                        cxSplitter1.Visible := False;
                        pnlAdres.Align := alClient;
                      end;

       TagfrmMedula : begin
                        userKutuName := 'j_id_9:userName';
                        sifreKutuName := 'j_id_9:j_id_j';
                        WebBrowser1.Navigate('https://medula.sgk.gov.tr/hastane/login.jsf');
                        aStrGrid.Visible := False;
                        cxSplitter1.Visible := False;
                        pnlAdres.Align := alClient;
                      end;
      TagfrmUyum  : begin
                        userKutuName := 'Username';
                        sifreKutuName := 'Password';
                        WebBrowser1.Navigate(datalar.portalUrl);
                        aStrGrid.Visible := False;
                        cxSplitter1.Visible := False;
                        pnlAdres.Align := alClient;
                    end;

    end;

  Result := True;
end;


procedure TfrmMedEczane.aStrGridButtonClick(Sender: TObject; ACol,
  ARow: Integer);
var
  p , x  , i : integer;
  t , t1 : string;
begin


  for x := 0 to aStrGrid.SelectedRowCount - 1 do
  begin
          ARow := aStrGrid.SelectedRow[x];
         // aStrGrid.Cells[2,i];



    //  ShowMessageSkin(aStrGrid.Cells[1,Arow] + ' - ' + aStrGrid.Cells[2,Arow],'','','info');
      datalar.MedEczaneIlac.kodu := '';
      datalar.MedEczaneIlac.adi := aStrGrid.Cells[2,Arow];
      datalar.MedEczaneIlac.kullanimPeryotBirim :=
      ifThen(pos('Günde',aStrGrid.Cells[3,Arow])>0,'3',
        ifThen(pos('Haftada ',aStrGrid.Cells[3,Arow])>0,'4','5'));

      datalar.MedEczaneIlac.kutuAdet :=  aStrGrid.Cells[7,Arow];

      if (copy(aStrGrid.Cells[3,Arow],1,1) = 'G')
         or
         (copy(aStrGrid.Cells[3,Arow],1,1) = 'H')
       Then begin
           datalar.MedEczaneIlac.kullanimZaman := '1';
       end
       else
       begin
         if pos('G',aStrGrid.Cells[3,Arow]) > 1
         then begin
           p := pos('G',aStrGrid.Cells[3,Arow]);
           datalar.MedEczaneIlac.kullanimZaman := copy(aStrGrid.Cells[3,Arow],1,p-1);
         end
         else
         if pos('H',aStrGrid.Cells[3,Arow]) > 1
         then begin
            p := pos('G',aStrGrid.Cells[3,Arow]);
            datalar.MedEczaneIlac.kullanimZaman := copy(aStrGrid.Cells[3,Arow],1,p-1);
         end;
       end;


       if pos('Günde',aStrGrid.Cells[3,Arow]) > 0
       Then Begin
          p := pos('Günde ',aStrGrid.Cells[3,Arow]);
          t := trim(copy(aStrGrid.Cells[3,Arow],p+6,10));
          t1 := trim(copy(aStrGrid.Cells[3,Arow],p+6,10));
          p := pos('x',t);
          t := copy(t,1,p-1);
          t1 := copy(t1,p+1,10);

       End
       else
       if pos('Haftada ',aStrGrid.Cells[3,Arow]) > 0
       then begin
          p := pos('Haftada',aStrGrid.Cells[3,Arow]);
          t := trim(copy(aStrGrid.Cells[3,Arow],p+8,10));
          t1 := trim(copy(aStrGrid.Cells[3,Arow],p+8,10));
          p := pos('x',t);
          t := copy(t,1,p-1);
          t1 := copy(t1,p+1,10);
       end;

       datalar.MedEczaneIlac.adoz := strToFloat(t);
       datalar.MedEczaneIlac.tekdoz := strToFloat(t1);

       datalar.MedEczaneIlac.kodu := IlacAdiToBarkod(aStrGrid.Cells[2,Arow]);


       if Assigned(receteForm)
       then begin

          if datalar.MedEczaneIlac.kodu <> ''
          Then
           TfrmHastaRecete(receteForm).ADO_RECETE_DETAY.Append;
          TfrmHastaRecete(receteForm).ADO_RECETE_DETAY.FieldByName('ilacKodu').AsString := datalar.MedEczaneIlac.kodu;
          TfrmHastaRecete(receteForm).ADO_RECETE_DETAY.FieldByName('ilacAdi').AsString := datalar.MedEczaneIlac.adi;
          TfrmHastaRecete(receteForm).ADO_RECETE_DETAY.FieldByName('kullanZamanUnit').AsString := datalar.MedEczaneIlac.kullanimPeryotBirim;
          TfrmHastaRecete(receteForm).ADO_RECETE_DETAY.FieldByName('kullanimZaman').AsString := datalar.MedEczaneIlac.kullanimZaman;
          TfrmHastaRecete(receteForm).ADO_RECETE_DETAY.FieldByName('adet').AsString := datalar.MedEczaneIlac.kutuAdet;
          TfrmHastaRecete(receteForm).ADO_RECETE_DETAY.FieldByName('kullanimAdet2').AsFloat := datalar.MedEczaneIlac.adoz;
          TfrmHastaRecete(receteForm).ADO_RECETE_DETAY.FieldByName('kullanimAdet').AsFloat := datalar.MedEczaneIlac.tekdoz;

       end;


  end;

end;

Procedure TfrmMedEczane.FillStringGridWithHTMLTable(aStrGrid:TAdvStringGrid;HTMLTable:String);
Var
 P,TagStart , p1 , row , col  :Integer;
 textCell : string;
 Function GetNextTag(Var Tag:String):Boolean;
 Var
  P2:Integer;
 begin
  Result:=False;
  Repeat
   P:=PosEx('<',HTMLTable,P);
   if P<1 then Exit;
   TagStart:=P;
   P2:=PosEx('>',HTMLTable,P);
   if P2<1 then Exit;
   Tag:=Trim(Copy(HTMLTable,P+1,P2-P-1));
   P:=P2+1;
   P2:=Pos(' ',Tag);
   if P2>0 then Tag:=Copy(Tag,1,P2-1);
   Tag:=UpperCase(Tag);
   Result:=(Tag='TR') Or (Tag='/TR') Or (Tag='TD') Or (Tag='/TD') Or (Tag='/TABLE');
  Until Result;
 end;

 procedure AddCell(L,C:Integer;Text:String);
 begin
  if L >= aStrGrid.RowCount
   then begin
    aStrGrid.RowCount := aStrGrid.RowCount + 1;
  end;
  if C >= aStrGrid.ColCount then
   begin
    aStrGrid.ColCount := aStrGrid.ColCount + 1;
    //Caption
    aStrGrid.Cells[aStrGrid.ColCount-2,0] := 'Col'+IntToStr(aStrGrid.ColCount);
   end;
  try
   aStrGrid.Cells[C,L] := Text;
  except
   // should not happen
  end;
 end;

Var
 L,C,CellStart:Integer;
 Tag:String;
begin
 P := 1;
 L := 1;
 C := 1;
 aStrGrid.RowCount := 2;
 aStrGrid.ColCount := 2;
 aStrGrid.Cells[0,0]:='';

 while GetNextTag(Tag) do
  begin
   if Tag='TR' then C := 1;
   if Tag='/TR' then Inc(L);
   if Tag='TD' then CellStart := P;
   if Tag='/TD' then
    begin
     textCell := Copy(HTMLTable,CellStart,TagStart-CellStart);
     p1 := pos('class=outputText>',textCell);
     textCell := StringReplace(Copy(textCell,p1+17,500),'</SPAN>','',[rfReplaceAll]);
     textCell := StringReplace(textCell,'&nbsp;','',[rfReplaceAll]);

     AddCell(L,C,textCell);
     Inc(C);
    end;
   if Tag='/TABLE' then Exit;
  end;

  for row := 1 to aStrGrid.RowCount - 1 do
  begin
    aStrGrid.AddButton(0,row,50,20,'Ekle',haCenter,vaCenter);
  end;

end;




procedure TfrmMedEczane.WebBrowser1DocumentComplete(ASender: TObject;
  const pDisp: IDispatch; const URL: OleVariant);
var
   iDoc: IHTMLDocument2;
   Doc : IHTMLDocument2;
   i,x: integer;
   ov: OleVariant;
   iDisp: IDispatch;
   iColl: IHTMLElementCollection;
   iInputElement : IHTMLInputElement;
   iTextElement:IHTMLTextAreaElement;
   FormElements: OleVariant;
   WebForm: IHTMLFormElement;
   Buttons: OleVariant;
   Button: OleVariant;
   _goster : integer;
   DocV : string;
begin
      if ButtonClick = True then exit;

      idoc := Webbrowser1.document as IHTMLDocument2;

      DocV := idoc.body.innerHTML;
      DocV := StringReplace(DocV,#13#10,'',[rfReplaceAll]);
    //  Memo1.Text := DocV;
      if pos('Ýlaçlar',DocV) > 0
      Then begin
        if pos('</THEAD><TBODY>',DocV) > 0
        Then begin
          aStrGrid.Visible := True;
          FillStringGridWithHTMLTable(aStrGrid,
             copy(DocV,pos('</THEAD><TBODY>',DocV)+16,
             pos('</TBODY><TFOOT>',DocV)-pos('</THEAD><TBODY>',DocV)+16));
        end;
      end
      else
        aStrGrid.Visible := False;

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
                         if assigned(iInputElement)
                         then begin

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
                         end;



                         if Assigned(idoc) then begin
                          WebForm := idoc.Forms.Item(0,'') as IHTMLFormElement;
                          FormElements := WebForm.Elements;
                          for x := 0 to FormElements.Length - 1 do begin
                            if (FormElements.Item(x).id = 'form1:buttonSorgula')
                            then begin
                              FormElements.Item(x).Click;
                              break;
                            end;
                          end;
                         end;


                    end;
               end;
      end;

end;


end.
