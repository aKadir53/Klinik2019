unit MedEczane;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ADODB,  DBGrids,  Grids, ComCtrls, Mask, ExtCtrls,
  Buttons, Gauges, MSHTML,  ToolWin, REGISTRY,
  BaseGrid, DBCtrls,comobj,System.Variants,
  ImgList,   Menus, JvPageList,
  JvNavigationPane, JvExControls, JvComponent, JvButton, JvComponentBase,
  JvBalloonHint, SHDocVw, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdHTTP, HTTPApp, HTTPProd, jpeg, strutils,
  cxGraphics, OleCtrls, data_modul,
  KadirLabel,GirisUnit,KadirType,Kadir, AdvObj, AdvGrid, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinsDefaultPainters,
  cxSplitter, cxContainer, cxEdit, cxTextEdit, cxMemo;

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

    procedure ParseEdilsin( aDoc: IHTMLDocument2; aListe: TStrings );

    procedure Click( aDoc: IHTMLDocument2 ; id : string);
    procedure comboChange( aDoc: IHTMLDocument2 ; id : string; value : string);
    procedure FormShow(Sender: TObject);

  private
    { Private declarations }

  public
      receteForm : TGirisForm;
     _user , _pas , _tc , _url, userKutuName,sifreKutuName : string;
     _yer,_yapan,_zaman,_anaprm,_altprm,_konu,_tip : string;
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
       TagfrmENabiz : SayfaCaption('E-Nab�z','','','','');
       TagfrmMedula : SayfaCaption('Medula','','','','');
       TagfrmUyum : SayfaCaption('Portal','','','','');
    end;
    *)




end;

procedure TfrmMedEczane.FormShow(Sender: TObject);
begin
  inherited;
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

TagfrmOlayBildirimRaporlama
                  : begin
                        if _tip = 'HG' then _url := 'https://grs.saglik.gov.tr/B_HGHSS.aspx'
                        else
                        if _tip = 'H' then _url := 'https://grs.saglik.gov.tr/B_IHSS.aspx'
                        else
                        if _tip = 'AN' then _url := 'https://grs.saglik.gov.tr/B_LHSS.aspx';

                        WebBrowser1.Navigate(_url);
                        aStrGrid.Visible := False;
                        cxSplitter1.Visible := False;
                        pnlAdres.Align := alClient;

                    end;

    end;
end;

function TfrmMedEczane.Init(Sender: TObject): Boolean;
begin


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
      ifThen(pos('G�nde',aStrGrid.Cells[3,Arow])>0,'3',
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


       if pos('G�nde',aStrGrid.Cells[3,Arow]) > 0
       Then Begin
          p := pos('G�nde ',aStrGrid.Cells[3,Arow]);
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




procedure TfrmMedEczane.ParseEdilsin( aDoc: IHTMLDocument2; aListe: TStrings );
var
  aDIVtags,
  aTableRows,
  aTableCols        : OleVariant;
  iDiv, iRow, iCol  : Integer;
  strVeri           : String;
begin
  aListe.Clear;
  aDIVtags := aDoc.all.tags('DIV');
  for iDiv := 0 to aDIVtags.length - 1 do
  begin
    if Pos( 'Hata', aDIVtags.item(iDiv).className ) > 0
    then
    begin // Div Class = 'Container40 Responsive100' olana bakt�k... Sizin veriler burada...
      aTableRows := aDIVtags.item(iDiv).all.Tags['TR'];
      for iRow := 0 to aTableRows.Length-1 do
      begin
        strVeri    := '';
        aTableCols := aTableRows.item(iRow).all.Tags['TD'];
        for iCol := 0 to aTableCols.Length-1 do
        begin
          if strVeri = ''
            then strVeri := aTableCols.item(iCol).innerText
            else strVeri := strVeri + ', ' + aTableCols.item(iCol).innerText;
        end;
        if strVeri <> ''
          then aListe.Add( strVeri );
      end;
    end;
  end;
  aDIVtags    := Unassigned;
  aTableRows  := Unassigned;
  aTableCols  := Unassigned;
end;



procedure TfrmMedEczane.Click(aDoc: IHTMLDocument2; id: string);
var
   i,x: integer;
   ov: OleVariant;
   iDisp: IDispatch;
   iColl: IHTMLElementCollection;
   iInputElement : IHTMLInputElement;
   iTextElement:IHTMLTextAreaElement;
   iHTMLElement: IHTMLFormElement;
   InputImage: HTMLInputImage;
   FormElements: OleVariant;
   WebForm: IHTMLFormElement;
   Buttons: OleVariant;
   Button: OleVariant;
begin
        (*
         if Assigned(aDoc) then begin
          WebForm := aDoc.Forms.Item(0,0) as IHTMLFormElement;
          FormElements := WebForm.Elements;
          for x := 0 to FormElements.Length - 1 do begin
            if (FormElements.Item(x).id = id)
            then begin
              FormElements.Item(x).Click;
              break;
            end;
          end;
         end;
          *)
      ov := 'INPUT';
      IDisp := aDoc.all.tags(ov);
      if assigned(IDisp)
      then begin
               IDisp.QueryInterface(IHTMLElementCollection, iColl);
               if assigned(iColl)
               then begin
                         for i := 1 to iColl.Get_length do
                         begin
                           iDisp := iColl.item(pred(i), 0);
                           iDisp.QueryInterface(HTMLInputImage, InputImage);

                           if assigned(InputImage)
                           then begin
                               if InputImage.name = 'ctl00$ContentPlaceHolder1$ImageButton1'
                               Then
                                 InputImage.click;
                           end;

                         end;
               end;
      end;



  (*
  Buttons := WebBrowser1.OleObject.Document.getElementsByTagName('ctl00$ContentPlaceHolder1$ImageButton1');
  for I := 0 to Buttons.Length - 1 do
  begin
    Button := Buttons.item(I);
    if Button.innerText = 'Sign in' then
    begin
      Button.click();
      Break;
    end;
  end;
    *)

end;


procedure TfrmMedEczane.comboChange( aDoc: IHTMLDocument2 ; id : string ; value : string);
var
  doc : IHTMLDocument3;
  el  : OleVariant;
  v   : OleVariant;
begin
  if WebBrowser1.Document <> nil then begin
    if WebBrowser1.Document.QueryInterface(IHTMLDocument3,doc) = S_OK then begin
      el := doc.getElementById(id);
      el.value := value;
      el.FireEvent('onchange', v);
    end;
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
   HTMLElement: IHTMLSelectElement;
   FormElements: OleVariant;
   WebForm: IHTMLFormElement;
   Buttons: OleVariant;
   Button: OleVariant;
   _goster , selectedIndex ,selecti : integer;
   DocV , DocO : string;
   bb , muayeneKayit , YeniSifreDogrulama , sifreDegistirildi , hosgeldin : integer;
   ss ,selectedValue : string;
   List : TStringList;
     cb: IHTMLElement;
  v: OleVariant;
begin
     if ButtonClick = True then exit;

      List := TStringList.Create;

      idoc := Webbrowser1.document as IHTMLDocument2;

      DocV := idoc.body.innerHTML;
      DocO := idoc.body.outerHTML;

      DocV := StringReplace(DocV,#13#10,'',[rfReplaceAll]);
    //  Memo1.Text := DocV;


      if pos('Hata Kodu',DocO) > 0
      Then begin
        (*  ov := 'SPAN';
          IDisp := iDoc.all.tags(ov);
          if assigned(IDisp)
          then begin
                   IDisp.QueryInterface(IHTMLElementCollection, iColl);
                   if assigned(iColl)
                   then begin
                             for i := 1 to iColl.Get_length do
                             begin
                             iDisp := iColl.item(pred(i), 0);
                             iDisp.QueryInterface(IHTMLTextAreaElement, iTextElement);

                                    iTextElement.Get_name;

                             end;
                   end;
          end;
          *)
      end;


      if pos('�la�lar',DocV) > 0
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


      ov := 'DIV';
      IDisp := iDoc.all.tags(ov);
      if assigned(IDisp)
      then begin
        ParseEdilsin (idoc,List);

      end;

      ov := 'SELECT';
      IDisp := iDoc.all.tags(ov);
      if assigned(IDisp)
      then begin
               IDisp.QueryInterface(IHTMLElementCollection, iColl);
               if assigned(iColl)
               then begin
                         for i := 1 to iColl.Get_length do
                         begin
                         iDisp := iColl.item(pred(i), 0);
                         iDisp.QueryInterface(IHTMLSelectElement, HTMLElement);

                             if HTMLElement.Get_name = 'ctl00$ContentPlaceHolder1$DropDownList1'
                             Then begin
                              for selecti := 0 to HTMLElement.length - 1 do
                                if (HTMLElement.item(selecti, selecti) as IHTMLOptionElement).value = 'HGKL' then
                                begin
                                  selectedIndex := selecti;
                                  Break;
                                end;
                              HTMLElement.selectedIndex := selecti;
                             end;

                             if HTMLElement.Get_name = 'ctl00$ContentPlaceHolder1$DropDownList2'
                             Then begin
                             // HTMLElement.value := _yapan;
                              for selecti := 0 to HTMLElement.length - 1 do
                                if (HTMLElement.item(selecti, selecti) as IHTMLOptionElement).value = _yapan then
                                begin
                                  selectedIndex := selecti;
                                  Break;
                                end;
                              HTMLElement.selectedIndex := selecti;
                             end;

                             if HTMLElement.Get_name = 'ctl00$ContentPlaceHolder1$DropDownList3'
                             Then begin
                              HTMLElement.value := _zaman;
                              //HTMLElement.selectedIndex := 4;
                             end;

                             if HTMLElement.Get_name = 'ctl00$ContentPlaceHolder1$DropDownList4'
                             Then begin
                              for selecti := 0 to HTMLElement.length - 1 do
                                if (HTMLElement.item(selecti, selecti) as IHTMLOptionElement).value = _anaprm then
                                begin
                                  selectedIndex := selecti;
                                  Break;
                                end;
                              HTMLElement.selectedIndex := selecti;

                              comboChange(idoc,'ContentPlaceHolder1_DropDownList4',_anaprm);
                             // Click(iDoc,'ContentPlaceHolder1_ImageButton1');
                             end;

                             if HTMLElement.Get_name = 'ctl00$ContentPlaceHolder1$DropDownList5'
                             Then begin
                             //comboChange(idoc,'ContentPlaceHolder1_DropDownList5',_altprm);
                              for selecti := 0 to HTMLElement.length - 1 do
                              begin
                                selectedValue := (HTMLElement.item(selecti, selecti) as IHTMLOptionElement).text;// value;
                                if selectedValue = _altprm then
                                begin
                                  selectedIndex := selecti;
                                  Break;
                                end;
                              end;
                              HTMLElement.selectedIndex := selectedIndex;//selecti;
                               //comboChange(idoc,'ContentPlaceHolder1_DropDownList5',_altprm);
                             end;
                         end;
               end;
      end;

      (*
      ov := 'SPAN';
      IDisp := iDoc.all.tags(ov);
      if assigned(IDisp)
      then begin
               IDisp.QueryInterface(IHTMLElementCollection, iColl);
               if assigned(iColl)
               then begin
                         for i := 1 to iColl.Get_length do
                         begin
                         iDisp := iColl.item(pred(i), 0);
                         iDisp.QueryInterface(IHTMLTextAreaElement, iTextElement);

                                iTextElement.Get_name;

                         end;
               end;
      end;
      *)
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
