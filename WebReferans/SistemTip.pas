unit LabOrnekNo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,kadir,
  Dialogs, StdCtrls, Grids, BaseGrid, AdvGrid, ComCtrls, Mask, EditType, adodb,strutils,
  ExtCtrls, Buttons, sBitBtn, AdvToolBtn, cxGraphics, cxControls,Erguvan,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit,
  IMDLSHastaIslemleri1, IHastaEkle1, ITESTEKLE1,ISonucAl1, Winsoftservice,
  TenayService1,LabIslemleri,Bridge_delphi1, AlisWs,AEN1,
  Referans,BirlabService,Duzen,data_model1,alisHizmetler,IMeddataLabService1,
  cxMaskEdit, cxDropDownEdit, cxCalendar, Menus,XSBuiltIns,sGauge, sCheckBox,
  InvokeRegistry, SOAPHTTPClient, Rio,  XMLDoc , MidItems,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue,
  AdvObj, sButton, DB, dxmdaset, ImgList, cxGroupBox, cxRadioGroup, DBClient,LABserviceERBIL,
  Provider,NoktaFormUnit,TenayserviceV2, xmldom, XMLIntf, msxmldom, Xmlxform,
  DBGrids,comObj,dateutils,ErguvanCvp,Intermedia, acProgressBar, cxProgressBar,
  cxButtons, cxLabel, cxSpinEdit,SuperObject,IdHTTP, IdBaseComponent,LioasLab,
  IdComponent, IdTCPConnection, IdTCPClient,LabratuarIstek, SQLMemMain;

type
  TfrmLabOrnekNoGiris = class(TNoktaForm)
    pnlTitle: TPanel;
    pnlToolBar: TPanel;
    btnDegistir: TAdvToolButton;
    btnSil: TAdvToolButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    gridAktif: TAdvStringGrid;
    pnlOnay: TPanel;
    txtinfo: TLabel;
    txtTarih: TcxDateEdit;
    txttarih1: TcxDateEdit;
    TabSheet2: TTabSheet;
    txtLog: TMemo;
    PopupMenu1: TPopupMenu;
    mnSe1: TMenuItem;
    mptal1: TMenuItem;
    Panel1: TPanel;
    N1: TMenuItem;
    A1: TMenuItem;
    H1: TMenuItem;
    S1: TMenuItem;
    N2: TMenuItem;
    H2: TMenuItem;
    S2: TMenuItem;
    T1: TMenuItem;
    R1: TMenuItem;
    R2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    H3: TMenuItem;
    S3: TMenuItem;
    R3: TMenuItem;
    R4: TMenuItem;
    S4: TMenuItem;
    N6: TMenuItem;
    chkCikisTest: TCheckBox;
    N7: TMenuItem;
    V1: TMenuItem;
    N8: TMenuItem;
    s5: TMenuItem;
    cxImageList1: TcxImageList;
    DiyalizTip: TcxRadioGroup;
    T2: TMenuItem;
    H4: TMenuItem;
    S6: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    R5: TMenuItem;
    S7: TMenuItem;
    ClientDataSet1: TClientDataSet;
    DataSetProvider1: TDataSetProvider;
    d1: TMenuItem;
    Y1: TMenuItem;
    G1: TMenuItem;
    S8: TMenuItem;
    Durum: TcxRadioGroup;
    XMLDocument1: TXMLDocument;
    N11: TMenuItem;
    B1: TMenuItem;
    N12: TMenuItem;
    S9: TMenuItem;
    ListBox1: TListBox;
    Button1: TButton;
    N13: TMenuItem;
    D2: TMenuItem;
    H5: TMenuItem;
    S10: TMenuItem;
    XMLTransformProvider1: TXMLTransformProvider;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    DuzenHTTP: THTTPRIO;
    Memo1: TMemo;
    Referans: THTTPRIO;
    G2: TMenuItem;
    N14: TMenuItem;
    E1: TMenuItem;
    OpenDialog1: TOpenDialog;
    A2: TMenuItem;
    N15: TMenuItem;
    H6: TMenuItem;
    O1: TMenuItem;
    W1: TMenuItem;
    N16: TMenuItem;
    S11: TMenuItem;
    N17: TMenuItem;
    N18: TMenuItem;
    H7: TMenuItem;
    S12: TMenuItem;
    N19: TMenuItem;
    E2: TMenuItem;
    N20: TMenuItem;
    N21: TMenuItem;
    A3: TMenuItem;
    T3: TMenuItem;
    S13: TMenuItem;
    t4: TMenuItem;
    ErguvanHttp: THTTPRIO;
    ref: TCheckBox;
    K1: TMenuItem;
    H8: TMenuItem;
    s14: TMenuItem;
    N22: TMenuItem;
    C1: TMenuItem;
    N23: TMenuItem;
    H9: TMenuItem;
    s15: TMenuItem;
    K2: TMenuItem;
    N24: TMenuItem;
    btnList: TsBitBtn;
    sBitBtn4: TsBitBtn;
    btnSend: TsBitBtn;
    btnVazgec: TsBitBtn;
    progres: TsGauge;
    chkTestKod: TsCheckBox;
    chk: TsCheckBox;
    N25: TMenuItem;
    N26: TMenuItem;
    N27: TMenuItem;
    S16: TMenuItem;
    B2: TMenuItem;
    cxGroupBox1: TcxGroupBox;
    basla: TcxSpinEdit;
    cxLabel1: TcxLabel;
    bitir: TcxSpinEdit;
    cxLabel2: TcxLabel;
    adim: TcxSpinEdit;
    cxLabel3: TcxLabel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    sGauge1: TsGauge;
    IdHTTP1: TIdHTTP;
    N28: TMenuItem;
    G3: TMenuItem;
    N29: TMenuItem;
    N30: TMenuItem;
    memData: TSQLMemTable;
    S17: TMenuItem;
    A4: TMenuItem;
    N31: TMenuItem;
    L1: TMenuItem;
    S18: TMenuItem;
    procedure btnListClick(Sender: TObject);
    procedure btnSendClick(Sender: TObject);
    procedure btnDegistirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
 //   function OrderMNT(dosyaNo : string ; gelis : string) : TenayServiceMNT.Order;
  //  function OrderBIO(dosyaNo : string ; gelis : string) : TenayServiceBio.Order;
    function HastabilgileriDoldurSistem(dosyaNo : string ; gelis : string) : TenayService1.HastaBilgileri;
    function HastaGelisBilgileriDoldurSistem(dosyaNo : string ; gelis : string) : TenayService1.GelisBilgileri;
    function HastaIstekBilgileriSistem(dosyaNo : string ; gelisNo : string) : TenayService1.ArrayOfIstekBilgileri;
    function HastabilgileriDoldurMetdata(var Hasta : Tistekgiris;var tarih :string;dosyaNo : string ; gelis : string) : string;

    function HastaIstekBilgileriMetdata(dosyaNo : string ; gelisNo : string ; tarih : string;tip : string) : IMeddataLabService1.Array_of_Tistekler;

(*
    function HastaGelisBilgileriDoldurBio(dosyaNo : string ; gelis : string; Tip : string) : TenayServiceBio.GelisBilgileri;
    function HastaIstekBilgileriBio(dosyaNo : string ; gelisNo : string ; Tip : string) : TenayServiceBio.ArrayOfIstekBilgileri;
    function HastabilgileriDoldurBio(dosyaNo : string ; gelis : string) : TenayServiceBio.HastaBilgileri;
  *)


    function HastabilgileriDoldurV2(dosyaNo : string ; gelis : string) : TenayServicev2.HastaBilgileri;
    function HastaIstekBilgileriv2(dosyaNo : string ; gelisNo : string) : TenayServicev2.ArrayOfTetkikkayit;
    function HastaIstekBilgileriv2Cikis(dosyaNo : string ; gelisNo : string) : TenayServicev2.ArrayOfTetkikKayit;

    function HastabilgileriDoldurESY(dosyaNo : string ; gelis : string ; var adi : string ; var soyadi : string ;
                                     var tc : string ; var cins : string; var dtarihi : TXSDateTime) : ArrayOfInt;


    function HastabilgileriDoldurANKA(dosyaNo : string ; gelis : string) : IMDLSHastaIslemleri1.HastaBilgileri;
    function HastabilgileriDoldurVentura(var Hasta : EntegRec;dosyaNo : string ; gelis : string) : string;
    function HastaGelisBilgileriDoldurANKA(dosyaNo : string ; gelis : string) : IMDLSHastaIslemleri1.GelisBilgileri;
    function HastaIstekBilgileriANKA(dosyaNo : string ; gelisNo : string) : IMDLSHastaIslemleri1.ArrayOfIstekBilgileri;
    function HastabilgileriDoldurInVitro(dosyaNo : string ; gelis : string) : THastaGirisBilgileri;
    function HastaIstekBilgileriInVitro(dosyaNo : string ; gelisNo , Tip : string) : TTESTARRAY;
    function HastaIstekBilgileriVentura(dosyaNo : string ; gelisNo , Tip : string) : string;
    function HastabilgileriDoldurDerman(dosyaNo : string ; gelis : string ; id , ornekNo: string) : HastaTahlilBilgileriGiris;
    function HastabilgileriDoldurDermanCikis(dosyaNo : string ; gelis : string ; id,ornekno : string) : HastaTahlilBilgileriGiris;

    function HastabilgileriDoldurCentro(dosyaNo : string ; gelis : string ; id : string ; ornekNo: Array of string) : Job;

    procedure mnSe1Click(Sender: TObject);
    procedure mptal1Click(Sender: TObject);
    procedure LabSonucAlInVitroClick(Sender: TObject);
    procedure R1Click(Sender: TObject);
    procedure H1Click(Sender: TObject);
    procedure H2Click(Sender: TObject);
    procedure S4Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure s5Click(Sender: TObject);
    procedure sBitBtn4Click(Sender: TObject);
    procedure DiyalizTipPropertiesChange(Sender: TObject);
    procedure H4Click(Sender: TObject);
    procedure S6Click(Sender: TObject);
    procedure S7Click(Sender: TObject);
    procedure TenaySonucAl(_dosyaNo,_gelisNo,_RefId : string);
 //   procedure TenaySonucAlMNT(_dosyaNo,_gelisNo,_RefId : string);
//    procedure TenaySonucAlBio(_dosyaNo,_gelisNo,_RefId : string);
    procedure btnVazgecClick(Sender: TObject);
    procedure Y1Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure S9Click(Sender: TObject);
    procedure XMLOku;
    procedure Button1Click(Sender: TObject);
    procedure H5Click(Sender: TObject);
    function OrderDuzen(dosyaNo : string ; gelis : string) : THastaKabul;
    procedure S10Click(Sender: TObject);
    procedure DuzenHTTPAfterExecute(const MethodName: string;
      SOAPResponse: TStream);
    procedure ReferansAfterExecute(const MethodName: string;
      SOAPResponse: TStream);
    procedure E1Click(Sender: TObject);
    procedure H6Click(Sender: TObject);
    procedure O1Click(Sender: TObject);
    procedure N16Click(Sender: TObject);
    procedure S11Click(Sender: TObject);
    procedure H7Click(Sender: TObject);
    procedure E2Click(Sender: TObject);
    procedure T3Click(Sender: TObject);
    procedure S13Click(Sender: TObject);
    procedure t4Click(Sender: TObject);
    procedure ErguvanHttpAfterExecute(const MethodName: string;
      SOAPResponse: TStream);
    procedure S12Click(Sender: TObject);
    procedure H8Click(Sender: TObject);
    procedure s14Click(Sender: TObject);
    procedure H9Click(Sender: TObject);
    procedure s15Click(Sender: TObject);
    procedure K2Click(Sender: TObject);
    procedure N27Click(Sender: TObject);
    procedure B2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure gridAktifKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure N30Click(Sender: TObject);
    procedure N29Click(Sender: TObject);
    procedure A4Click(Sender: TObject);
    procedure S18Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
        procedure ornekdurumyaz(durum,id,refId : string);overload;
    procedure ornekdurumyaz(durum,id,refId,ornekNo,ornekNOCikis : string);overload;
  end;

var
  frmLabOrnekNoGiris: TfrmLabOrnekNoGiris;
  NEG : widestring = 'NEG';
  POZ : widestring = 'POZ';
  Hst : THastaKabul;
  v ,sayfa : variant;
  bas , bit , ad : int64;
  stop : boolean;
implementation

uses rapor , ReferansList , BioLab , MntLab, muhana;

{$R *.dfm}

procedure TfrmLabOrnekNoGiris.XMLOku;
var
   StartItemNode, ANode : IXMLNode;
   TESTREF, SONUC, HASTAADI , GELISREF: widestring;
begin
   XMLDocument1.Active := False;
   XMLDocument1.FileName := 'C:\NoktaV3\ReferansCvp.xml';
   XMLDocument1.Active := True;

   StartItemNode := XMLDocument1.DocumentElement.ChildNodes.First.ChildNodes.FindNode('hstsonuclar');
   if not Assigned(StartItemNode) then exit;

   StartItemNode := StartItemNode.ChildNodes.FindNode('ReLabSonucListesiResponse xmlns="http://tempuri.org/"');
   if Assigned(StartItemNode) then
   begin
     StartItemNode := StartItemNode.ChildNodes.FindNode('ReLabSonucListesiResult');
     if Assigned(StartItemNode) then
     begin
       StartItemNode := StartItemNode.ChildNodes.FindNode('hstsonuclar');
       if Assigned(StartItemNode) then
       begin
         StartItemNode := XMLDocument1.DocumentElement.ChildNodes.First.ChildNodes.FindNode('hstsonuclar');
         ANode := StartItemNode;
         repeat
           TESTREF :=   UTF8Decode(ANode.ChildNodes['TESTREF'].Text);
           SONUC  := UTF8Decode(ANode.ChildNodes['SONUC'].Text);
           HASTAADI  := UTF8Decode(ANode.ChildNodes['HASTAADI'].Text);
           GELISREF := UTF8Decode(ANode.ChildNodes['GELISREF'].Text);
           ListBox1.Items.Add(TESTREF+' - '+SONUC +' - '+HASTAADI);
           ANode  := ANode.NextSibling;
         until ANode = nil;

       end;
     end;
   end;

end;


procedure TfrmLabOrnekNoGiris.ornekdurumyaz(durum,id,refId : string);
var
  sql : string;
  ado : TADOQuery;
begin
   ado := TADOQuery.Create(nil);
   ado.Connection := datalar.ADOConnection2;

   sql := 'update gelisler set LabOrnekdurum = ' + QuotedStr(durum) +
          ',LabRefId = ' + QuotedStr(refId) +
          ' where SIRANO = ' + id;
   datalar.QueryExec(ado,sql);

   ado.Free;
end;


procedure TfrmLabOrnekNoGiris.ornekdurumyaz(durum,id,refId,ornekNo,ornekNOCikis : string);
var
  sql : string;
  ado : TADOQuery;
begin
   ado := TADOQuery.Create(nil);
   ado.Connection := datalar.ADOConnection2;


   sql := 'update gelisler set LabOrnekdurum = ' + QuotedStr(durum) +
          ',LabRefId = ' + QuotedStr(refId) +
          ',ornekNO = ' + QuotedStr(ornekNo) +
          ',CikisornekNo = ' + QuotedStr(ornekNOCikis) +
          ' where SIRANO = ' + id;
   datalar.QueryExec(ado,sql);

   ado.Free;
end;



procedure TfrmLabOrnekNoGiris.btnListClick(Sender: TObject);
var
   sql : string;
   x : integer;
begin
   sql := 'select g.dosyaNo,g.gelisNo,g.BHDAT ,ornekNo,CikisOrnekNo,' +
          ' h.HASTAADI+'' ''+h.HASTASOYADI as ADSOYAD,SIRANO,h.TCKIMLIKNO,' +
          ' isnull(LabOrnekdurum,''Yeni Kayýt'') LabOrnekdurum ' +
          ',dbo.hareketlercolumntostr(g.dosyaNo,g.gelisNo) testler , LabRefId' +
          ',OrnekNo_Plazma,OrnekNo_Serum,OrnekNo_TamKan ' +
          ' from gelisler g ' +
          ' join hastakart h on h.dosyaNO = g.dosyaNO ' +
          ' where bhdat between ' +  QuotedStr(tarihal(txtTarih.Date)) +
          ' and ' + QuotedStr(tarihal(txtTarih1.Date)) +
          ' and tip = ' + QuotedStr(DiyalizTip.EditValue) + ' and LabOrnekdurum = ' + QuotedStr(Durum.EditValue) +
          ' order by h.HASTAADI ' ;
   datalar.QuerySelect(datalar.ADO_SQL,sql);
   Grid_Temizle(gridAktif);
   for x := 1 to datalar.ADO_SQL.RecordCount do
   begin
       gridAktif.Cells[1,x] := datalar.ADO_SQL.fieldbyname('dosyaNo').AsString;
       gridAktif.AddCheckBox(1,x,false,false);
       gridAktif.Cells[2,x] := datalar.ADO_SQL.fieldbyname('GelisNo').AsString;
       gridAktif.Cells[3,x] := datalar.ADO_SQL.fieldbyname('ADSOYAD').AsString;
       gridAktif.Cells[4,x] := datalar.ADO_SQL.fieldbyname('OrnekNo').AsString;
       gridAktif.Cells[5,x] := datalar.ADO_SQL.fieldbyname('CikisOrnekNo').AsString;
       gridAktif.Cells[6,x] := datalar.ADO_SQL.fieldbyname('SIRANO').AsString;
       gridAktif.Cells[7,x] := datalar.ADO_SQL.fieldbyname('TCKIMLIKNO').AsString;
       gridAktif.Cells[8,x] := datalar.ADO_SQL.fieldbyname('LabOrnekdurum').AsString;
       gridAktif.Cells[9,x] := datalar.ADO_SQL.fieldbyname('LabRefId').AsString;
       gridAktif.Cells[10,x] := datalar.ADO_SQL.fieldbyname('OrnekNo_Plazma').AsString;
       gridAktif.Cells[11,x] := datalar.ADO_SQL.fieldbyname('OrnekNo_Serum').AsString;
       gridAktif.Cells[12,x] := datalar.ADO_SQL.fieldbyname('OrnekNo_TamKan').AsString;

       gridAktif.Cells[20,x] := datalar.ADO_SQL.fieldbyname('testler').AsString;
       gridAktif.Cells[21,x] := datalar.ADO_SQL.fieldbyname('bhdat').AsString;

        if gridAktif.Cells[8,x] = 'Yeni Kayýt'
        Then SatiriRenklendir(gridAktif,x,25,$00D9D9FF)
        else
        if gridAktif.Cells[8,x] = 'Gönderildi'
        Then SatiriRenklendir(gridAktif,x,25,$00B9FFFF)
        else
        if gridAktif.Cells[8,x] = 'Sonuç Alýndý'
        Then SatiriRenklendir(gridAktif,x,25,$0080FF80)
        else SatiriRenklendir(gridAktif,x,25,clwhite);


       datalar.ADO_SQL.Next;
       gridAktif.AddRow;
   end;

end;

procedure TfrmLabOrnekNoGiris.btnSendClick(Sender: TObject);
var
 x : integer;
 ado : TADOQuery;
 sql : string;
begin
    ado := TADOQuery.Create(nil);
    ado.Connection := datalar.ADOConnection2;

    for x := 1 to gridAktif.RowCount - 2 do
    begin
       Application.ProcessMessages;
      try
       sql := 'update gelisler set OrnekNo = ' + QuotedStr(gridAktif.Cells[4,x]) +  ', CikisOrnekNO = ' + QuotedStr(gridAktif.Cells[5,x]) +
              ',OrnekNo_Plazma = ' + QuotedStr(gridAktif.Cells[10,x]) +
              ',OrnekNo_Serum = ' + QuotedStr(gridAktif.Cells[11,x]) +
              ',OrnekNo_TamKan = ' + QuotedStr(gridAktif.Cells[12,x]) +
              ' where dosyaNo = ' + QuotedStr(gridAktif.Cells[1,x]) + ' and gelisNo = ' + gridAktif.Cells[2,x];
       datalar.QueryExec(ado,sql);
      except
      end;
    end;

    ShowMessageSkin('Ornek Numaralarý Kayýt Edildi','','','info');
    ado.Free;



end;

procedure TfrmLabOrnekNoGiris.btnVazgecClick(Sender: TObject);
begin
  stop := True;
  close;
end;

procedure TfrmLabOrnekNoGiris.Button1Click(Sender: TObject);
begin
  inherited;
   XMLOku;



end;

procedure TfrmLabOrnekNoGiris.cxButton1Click(Sender: TObject);
var
  sql : string;
  ado : TADOQuery;
  adet : integer;
begin

  sGauge1.Visible := true;
  bas := basla.Value;
  bit := bitir.Value;
  ad := adim.Value;

  adet := (bit-bas);


  sGauge1.MaxValue := adet;
  sGauge1.MinValue := ad;
  sGauge1.Progress := ad;

  if (bas <= 0) or (bit <= 0) or (ad <= 0)
  then begin
      ShowMessageSkin('Baþlangýç , Bitiþ , Adým Deðerleri Sýfýr Olamaz','','','info');
      exit;
  end;

  if (bit < bas)
  then begin
      ShowMessageSkin('Bitiþ Deðeri Baþlangýç Deðerinden Küçük Olamaz','','','info');
      exit;
  end;


  ado := TADOQuery.Create(nil);
  ado.Connection := datalar.ADOConnection2;

  while bas < bit do
  begin
   try
    sql := 'insert into Centro_barkodlar (barkodNo,durum) ' +
           ' values(' + floattostr(bas) + ',0)';
    datalar.QueryExec(ado,sql);
    bas := bas + ad;
    sGauge1.Progress := sGauge1.Progress + ad;
    Application.ProcessMessages;
   except on e : Exception do
    begin
      ShowMessageSkin(e.Message,'','','info');
      bas := bit + 1;
    end;
   end;
  end;
  ado.Free;

end;

procedure TfrmLabOrnekNoGiris.cxButton2Click(Sender: TObject);
begin
  inherited;
  bas := bit + 1;
  cxGroupBox1.Visible := false;
end;

procedure TfrmLabOrnekNoGiris.DiyalizTipPropertiesChange(Sender: TObject);
begin
  btnList.Click;
end;

procedure TfrmLabOrnekNoGiris.DuzenHTTPAfterExecute(const MethodName: string;
  SOAPResponse: TStream);
var
  XMLDoc: IXMLDocument;
begin
  SOAPResponse.Position := 0;
  Memo1.Lines.LoadFromStream(SOAPResponse);

  Memo1.Lines.SaveToFile('DuzenCevap.XML');

  ClientDataset1.Active := FALSE;
  SOAPResponse.Position := 0;
  XMLDoc := NewXMLDocument;
  XMLDoc.Encoding := 'UTF8';
  SOAPResponse.Position := 0;
  XMLDoc.LoadFromStream(SOAPResponse);

  XMLTransformProvider1.TransformRead.TransformationFile := 'duzen.xtr';

  XMLTransformProvider1.TransformRead.SourceXmlDocument := XMLDoc.GetDOMDocument;
  ClientDataset1.Active := TRUE;



end;

procedure TfrmLabOrnekNoGiris.E1Click(Sender: TObject);
var
  dosya : string;
  sonsatir , x : integer;
  liste ,sql : string;
  ad,soyadi,tc , testid , itemid , sonuc , _F_  , testKod,testad ,dosyaNo,gelisNo,id ,t1,t2,tip : string;
  ado : TADOQuery;
begin


  inherited;

  ado := TADOQuery.Create(nil);
  ado.Connection := datalar.ADOConnection2;

  openDialog1.execute;
  dosya := opendialog1.filename;

  v := CreateOleObject('Excel.Application');
  try
    v.Workbooks.Open(dosya);
    v.visible := true;//Exceli acip verileri goster
    sayfa := v.workbooks[1].worksheets[1];
  except
    v.DisplayAlerts := False;  //Excel mesajlarýný görünteleme
    v.Quit;
    v := Unassigned;
  end;

 try
   sonsatir := v.Range[Char(96 + 1) + IntToStr(65536)].end[3].Rows.Row;
   liste := sayfa.cells[1,2];

   progres.MaxValue := sonsatir-1;
   progres.Progress := 0;

   t1 := tarihal(txtTarih.Date);
   t2 := tarihal(txttarih1.Date);

   for x := 2 to sonsatir do
   begin
       tc := sayfa.cells[x,1];
       itemid := sayfa.cells[x,4];
       testid := sayfa.cells[x,11];
       sonuc := sayfa.cells[x,6];
       ad := sayfa.cells[x,2];
       soyadi := sayfa.cells[x,3];
       testad := sayfa.cells[x,10];
       tip := sayfa.cells[x,12];

       Application.ProcessMessages;
       dosyaNo := '0';
       gelisNo := '0';
       TCdenDosyaNoGelisNo(tc,t1,t2,dosyaNo,gelisNo,id);
       _F_ := '';
       testKod := KodEslestir(itemid+'.'+testid,_F_);
       if tip = 'Ç' then _F_ := 'cd';



       txtLog.Lines.Add(tc + ' ' +
                       ad +' '+soyadi + '/ ' +
                       dosyaNO + ' ' + gelisNo + ' - /  ' +
                       testKod + ' ' + testid +' '+
                       testad + ' - ' +
                       sonuc);


      if testKod <> ''
      Then Begin
         Sonuc := StringReplace(Sonuc,'Poz','POZ',[rfReplaceAll]);
         Sonuc := StringReplace(Sonuc,'Neg','NEG',[rfReplaceAll]);

         if (pos('NEG',Sonuc) > 0)
         Then sonuc := '-1'
         Else
         if (pos('POZ',Sonuc) > 0)
         Then sonuc := '1'
         Else
         sonuc := Sonuc;

        try
         sql := 'update hareketler set ' + _F_ + '= ' + sonuc +
                  ' where onay = 1 and code = ' + QuotedStr(testKod) + ' and dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNO = ' + gelisNo ;

         datalar.QueryExec(ado,sql);

        except on e : exception do
          begin
           sql := 'update hareketler set islemAciklamasi  = ' + QuotedStr(sonuc) +
                  ' where onay = 1 and code = ' + QuotedStr(testKod) + ' and dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNO = ' + gelisNo ;
           datalar.QueryExec(ado,sql);
           //ShowMessage(e.Message);
          end;
        end;
      end;
     progres.Progress := Progres.Progress + 1;
   end;

 except on e : exception do
   begin
     ShowMessageSkin(e.Message,'','','info');
   end;
 end;


 ado.free;


end;


procedure TfrmLabOrnekNoGiris.A4Click(Sender: TObject);
var
  Kullanici : C_LoginSecurity;
  Cvp : C_GeneralResult;
  I: integer;
  t : boolean;
  d1,d2 : TXSDateTime;
  tc ,sm ,kod,sonuc,_F_,sql,id,dosyaNo,gelisNo : string;
  ado : TADOQuery;

  procedure SonucYaz(Tip : string = '');
  var
    x,j,m  : integer;
  begin
         ado := TADOQuery.Create(nil);
         ado.Connection := datalar.ADOConnection2;

         for j := 0 to length(Cvp.Result_) - 1 do
         begin
           if Cvp.Result_[j].Appointment_Type = '5'
           then Begin
              for m := 0 to length(Cvp.Result_[j].LabResult) - 1 do
              begin
                kod := KodEslestirLabKodu(Cvp.Result_[j].LabResult[m].TCode,_F_);

                txtLog.Lines.Add(Cvp.Result_[j].PatDesc + '-' + Cvp.Result_[j].LabResult[m].TCode + '-' +
                                 Cvp.Result_[j].LabResult[m].TDesc + '-' + Cvp.Result_[j].LabResult[m].Result_Value + '-' + Cvp.Result_[j].App_IO_Type);

                if kod <> ''
                Then Begin
               //   a := HTSOCvp.Testler[x].Aciklama;

                   Cvp.Result_[j].LabResult[m].Result_Value := StringReplace(Cvp.Result_[j].LabResult[m].Result_Value,'Poz','POZ',[rfReplaceAll]);
                   Cvp.Result_[j].LabResult[m].Result_Value := StringReplace(Cvp.Result_[j].LabResult[m].Result_Value,'Neg','NEG',[rfReplaceAll]);
                   Cvp.Result_[j].LabResult[m].Result_Value := StringReplace(Cvp.Result_[j].LabResult[m].Result_Value,'-','',[rfReplaceAll]);

                //   HTSOCvp.Testler[x].Aciklama := StringReplace(HTSOCvp.Testler[x].Aciklama,'Neg','NEG',[rfReplaceAll]);
                //   HTSOCvp.Testler[x].Aciklama := StringReplace(HTSOCvp.Testler[x].Aciklama,'Poz','POZ',[rfReplaceAll]);

                   if (pos('NEG',Cvp.Result_[j].LabResult[m].Result_Value) > 0)
                   Then sonuc := '-1'
                   Else
                   if (pos('POZ',Cvp.Result_[j].LabResult[m].Result_Value) > 0)
                   Then sonuc := '1'
                   Else
                   if (pos('NEG',Cvp.Result_[j].LabResult[m].Result_Value) > 0)
                   Then sonuc := '-1'
                   Else
                   if (pos('POZ',Cvp.Result_[j].LabResult[m].Result_Value) > 0)
                   Then sonuc := '1'
                   Else sonuc := Cvp.Result_[j].LabResult[m].Result_Value;


                   if Cvp.Result_[j].App_IO_Type = '0' then _F_ := ' gd' else _F_ := 'cd';

                  try
                   sql := 'update hareketler set ' + _F_ + '= ' + sonuc +
                            ' where onay = 1 and code = ' + QuotedStr(Kod) + ' and dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNO = ' + gelisNo ;

                   datalar.QueryExec(ado,sql);

                  except
                     sql := 'update hareketler set islemAciklamasi  = ' + QuotedStr(sonuc) +
                            ' where onay = 1 and code = ' + QuotedStr(Kod) + ' and dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNO = ' + gelisNo ;
                     datalar.QueryExec(ado,sql);
                  end;

                End; // if kod <> ''

              end;  //for end m
           End; // if Appointment_Type
         end; // for end j

         ornekdurumyaz('Sonuç Alýndý',id,'');
         ado.Free;
  end;

begin

  datalar.Login;
  Cvp := C_GeneralResult.Create;
  kullanici := C_LoginSecurity.Create;
  kullanici.Username := 'AmwEN06';//datalar._labusername;
  Kullanici.Password := '1713eNmW';//datalar._labsifre;
  Kullanici.ID := 180;//datalar._kurumKod;

  datalar.AEN.URL := 'http://78.188.62.26:9192';//datalar._laburl;
  datalar.AEN.SOAPHeaders.Send(Kullanici);

  d1 := TXSDateTime.Create;
  d2 := TXSDateTime.Create;

  DatetoxsDate(d1,txtTarih.Date);
  DatetoxsDate(d2,txtTarih1.Date);

  For I := 1 to gridAktif.RowCount - 2 do
  Begin
      Application.ProcessMessages;
      gridAktif.GetCheckBoxState(1,I,t);

      tc := gridAktif.Cells[7,I];
      id := gridAktif.Cells[6,I];
      dosyaNo := gridAktif.Cells[1,I];
      gelisNo := gridAktif.Cells[2,I];

      if t = True then
      begin
        try
          Cvp := (datalar.AEN as UtilsSrvSoap).GetLabRadResultsDate(tc,d1,d2);
        except on e : Exception do
          begin
             sm := e.Message;
          end;
        end;

      if Cvp.Status = 1
      then begin
         SonucYaz('');
      end;

      end;







  End;



end;

procedure TfrmLabOrnekNoGiris.B2Click(Sender: TObject);
var
  Startseri , StopSeri , Step : double;
begin
   cxGroupBox1.Visible := True;




end;

procedure TfrmLabOrnekNoGiris.btnDegistirClick(Sender: TObject);
var
  a : TStringList;
begin
   a := TStringList.Create;

   split('|','kadir|koçali|deneme',a);

   a.Count;



end;

procedure TfrmLabOrnekNoGiris.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
 Action := cafree;
end;

procedure TfrmLabOrnekNoGiris.FormCreate(Sender: TObject);
begin

    datalar.Cup_Specified := True;
    datalar.Login;
    if (datalar._labfirma = 'Ankalab') or (datalar._labfirma = 'Ahenk') or (datalar._labfirma = 'UmitHast')
    Then Begin
   //   chkTestKod.Visible := True;
    //  chk.Visible := True;


    End else
    Begin
    // chkTestKod.Visible := false;
    // chk.Visible := false;
    End;

end;

procedure TfrmLabOrnekNoGiris.gridAktifKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 13 then
  Begin
    case gridAktif.Col of
      4 : gridAktif.Col := 5;
      5 : gridAktif.Col := 12;
     10 : gridAktif.Col := 11;
     11 : begin
            gridAktif.Row := gridAktif.Row + 1;
            gridAktif.Col := 4;
          end;
     12 : begin
            gridAktif.Row := gridAktif.Row + 1;
            gridAktif.Col := 4;
          end;
    end;
  End;
end;

function TfrmLabOrnekNoGiris.HastabilgileriDoldurInVitro(dosyaNo : string ; gelis : string) : THastaGirisBilgileri;
var
  sql : string;
  HastaGirisBilgileri : THastaGirisBilgileri;
  ado : TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  ado.Connection := datalar.ADOConnection2;
  HastaGirisBilgileri := THastaGirisBilgileri.Create;


  sql := 'select * from HastaKart where dosyano = ' + QuotedStr(dosyaNo);
  datalar.QuerySelect(ado,sql);

  HastaGirisBilgileri.TCKIMLIKNO := StrToInt64(ado.fieldbyname('TCKIMLIKNO').AsString);
  HastaGirisBilgileri.ADI := ado.fieldbyname('HASTAADI').AsString;
  HastaGirisBilgileri.SOYADI := ado.fieldbyname('HASTASOYADI').AsString;
  HastaGirisBilgileri.Cinsiyeti := strtoint(ifThen(ado.fieldbyname('CINSIYETI').AsString = '0','1','2'));
  HastaGirisBilgileri.BABAADI := ado.fieldbyname('BABAADI').AsString;

  HastaGirisBilgileri.DOGUMTARIHI := FormattedTarih(ado.fieldbyname('DOGUMTARIHI').Asstring);


  sql := 'select * from gelisler where dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNo = ' + gelis;
  datalar.QuerySelect(ado,sql);

  HastaGirisBilgileri.KLINIKKODU := strtoint(ado.Fieldbyname('SERVIS').AsString);


  HastaGirisBilgileri.HASTANEKODU := datalar._labusername;
  HastaGirisBilgileri.SIFRE := datalar._labsifre;





  ado.Free;
  result := HastaGirisBilgileri;
end;



procedure TfrmLabOrnekNoGiris.H1Click(Sender: TObject);
var
   HTI : HastaTetkikIstek;
   HastaAnka : IMDLSHastaIslemleri1.HastaBilgileri;
   Gelis : IMDLSHastaIslemleri1.GelisBilgileri;
   istek : IMDLSHastaIslemleri1.IstekBilgileri;
   istekler : IMDLSHastaIslemleri1.ArrayOfIstekBilgileri;
   HTICvp : HastaTetkikIstekDonus;
   I,s : integer;
   dosyaNo,gelisNo , sm , barkod ,id : string;
   t : boolean ;
   Http : THTTPRIO;
begin

    if (datalar._labfirma = 'Ankalab') or (datalar._labfirma = 'Ahenk') or (datalar._labfirma = 'UmitHast')
    Then Begin

          if datalar._labfirma = 'Ankalab'
          Then
           Http := DATALAR.Lab;

          if datalar._labfirma = 'Ahenk'
          Then
           Http := DATALAR.Ahenk;

          if datalar._labfirma = 'UmitHast'
          Then
           Http := DATALAR.UmitHast;

          HTI := HastaTetkikIstek.Create;
          HTICvp := HastaTetkikIstekDonus.Create;
          HastaAnka := IMDLSHastaIslemleri1.HastaBilgileri.Create;
          Gelis := IMDLSHastaIslemleri1.GelisBilgileri.Create;

          txtLog.Lines.Clear;
          progres.MaxValue := gridAktif.RowCount - 2;
          progres.Progress := 0;
          Progres.Visible := true;
          txtinfo.Caption := 'Gönderiliyor...';


          For I := 1 to gridAktif.RowCount - 2 do
          Begin
             Application.ProcessMessages;
            gridAktif.GetCheckBoxState(1,I,t);

            if  (t = True) and (gridAktif.Cells[8,I] = 'Yeni Kayýt')
            Then Begin

               dosyaNo := gridAktif.Cells[1,I];
               gelisNo := gridAktif.Cells[2,I];
               id := gridAktif.Cells[6,I];

               HTI.Hasta := HastabilgileriDoldurANKA(dosyaNo,gelisNo);
               HTI.Gelis := HastaGelisBilgileriDoldurANKA(dosyaNo,gelisNo);
               HTI.Istek := HastaIstekBilgileriANKA(dosyaNo,gelisNo);

               HTI.KullaniciKodu := datalar._labusername;
               HTI.GonderenKurumKodu := datalar._labkurumkod;
               HTI.Sifre := datalar._labsifre;
               http.URL := datalar._laburl;
               try
                HTICvp := (http as MedilisWebServiceSoap).HastaTetkikKaydet(HTI);
               except on e : Exception do
                 begin
                   sm := e.Message;
                   HTICvp.Sonuc := -1;
                 end;
               end;

               Progres.Progress := Progres.Progress + 1;

               s := HTICvp.Sonuc;
               if s = 0
               Then Begin
                 ornekdurumyaz('Gönderildi',id,inttostr(HTICvp.GelisId));
                 //gridAktif.Ints[5,I] := gridAktif.ints[6,I];
                 gridAktif.Cells[4,I] := gridAktif.Cells[6,I];
                 txtLog.Lines.Add(HTI.Gelis.ReferansId + ' - ' + HTICvp.SonucMesaji);
               End
               Else
                txtLog.Lines.Add(HTI.Gelis.ReferansId + ' - ' + HTICvp.SonucMesaji + '-' + sm);



            End;
          End; // for end
          Progres.Visible := false;
          txtinfo.Caption := '.';

    End;

end;

procedure TfrmLabOrnekNoGiris.H2Click(Sender: TObject);
var
   HastaGiris : THastaGirisBilgileri;
   TestGiris : TTestGirisInput;
   TestGirisCevap : TTestGirisCevap;
   Testler : TTESTARRAY;
   HastaGirisCevap : THastaGirisCevap;
   I,s,x : integer;
   dosyaNo,gelisNo , sm , barkod , sql , tip ,id : string;
   t : boolean ;
   ado : TADOQuery;

begin
   datalar.Login;

    if datalar._labfirma = 'InVitro'
    Then Begin
      HastaGiris := THastaGirisBilgileri.Create;
  //    HastaGirisCevap := THastaGirisCevap.Create;

          txtLog.Lines.Clear;
          progres.MaxValue := gridAktif.RowCount - 2;
          progres.Progress := 0;
          Progres.Visible := true;
          txtinfo.Caption := 'Gönderiliyor...';


          For I := 1 to gridAktif.RowCount - 2 do
          Begin
            Application.ProcessMessages;
            gridAktif.GetCheckBoxState(1,I,t);

            if  (t = True) and (gridAktif.Cells[8,I] = 'Yeni Kayýt')
            Then Begin
               dosyaNo := gridAktif.Cells[1,I];
               gelisNo := gridAktif.Cells[2,I];
               id := gridAktif.Cells[6,I];

               HastaGiris := HastabilgileriDoldurInVitro(dosyaNo,gelisNo);
               datalar.LabInVitro.URL := 'http://78.187.200.244/HastaEkleWsdl.exe/soap/IHastaEkle';

              for x := 0 to 1 do
              begin
                if x = 0
                Then
                  tip := 'G'
                Else
                  tip := 'C';

               HastaGirisCevap := THastaGirisCevap.Create;
               try
                HastaGirisCevap := (datalar.LabInVitro as IHastaEkle).HastaGiris(HastaGiris);
               except on e : Exception do
                 begin
                   sm := e.Message;
                 end;
               end;

               if HastaGirisCevap.HATAKODU = '0000'
               Then Begin
                  barkod := HastaGirisCevap.BARKOD;
                  gridAktif.Cells[4+x,I] := barkod;
                  TestGiris := TTestGirisInput.Create;
                  TestGirisCevap := TTestGirisCevap.Create;
                  TestGiris.HASTANEKODU := datalar._labusername;
                  TestGiris.SIFRE := datalar._labsifre;
                  TestGiris.BARKOD := barkod;
                  datalar.LabInVitroTest.URL := 'http://78.187.200.244/TestEkleWsdl.exe/soap/ITESTEKLE';


                    try
                     TestGirisCevap := (datalar.LabInVitroTest as ITESTEKLE).TESTEKLE(TestGiris,HastaIstekBilgileriInVitro(dosyaNo,gelisNo,tip));
                    except on e : Exception do
                     begin
                       sm := e.Message;
                     end;
                    end;

                    if TestGirisCevap.HATAKODU = '0000'
                    Then Begin
                        if tip = 'G'
                        Then
                           sql := 'update gelisler set OrnekNo = ' + QuotedStr(barkod) +
                                  ' where dosyaNO = ' + QuotedStr(dosyaNo) + ' and gelisNo = ' + gelisNo
                        Else
                           sql := 'update gelisler set CikisOrnekNo = ' + QuotedStr(barkod) +
                                  ' where dosyaNO = ' + QuotedStr(dosyaNo) + ' and gelisNo = ' + gelisNo;

                        ado := TADOQuery.Create(nil);
                        ado.Connection := datalar.ADOConnection2;
                        datalar.QueryExec(ado,sql);
                        txtLog.Lines.Add(barkod + ' - Testler Eklendi');
                        ado.Free;
                    End
                    Else
                    txtLog.Lines.Add(TestGirisCevap.HATAACIKLAMA);



                  ornekdurumyaz('Gönderildi',id,'');
               End
               Else
               txtLog.Lines.Add(HastaGirisCevap.HATAACIKLAMA);

              // HastaGirisCevap.Free;
              end;
            End;


          End; // for end

    End;

end;

procedure TfrmLabOrnekNoGiris.H4Click(Sender: TObject);
var

 {  HTIBIO : TenayServiceBIO.Order;
   KurumBIO : TenayServiceBIO.KurumBilgileri;
   GelisBIO : TenayServiceBIO.Gelis;
   istekBIO : TenayServiceBIO.Tetkik;
   isteklerBIO : TenayServiceBIO.Array_Of_Tetkik;
   doktorBIO : TenayServiceBIO.Doktor;
   HTICvpBIO : TenayServiceBIO.HastakaydetCevap;
  }

   HTI : Tenayservice1.HastaKaydetGiris;
   HastaTenay : TenayService1.HastaBilgileri;
   Gelis : TenayService1.GelisBilgileri;
   istek : TenayService1.IstekBilgileri;
   istekler : TenayService1.ArrayOfIstekBilgileri;
   HTICvp : TenayService1.HastaKaydetSonuc;

   HTIv2 : Tenayservicev2.HastaKaydetIstek;
   HastaTenayv2 : TenayServicev2.HastaBilgileri;
   istekv2 : TenayServicev2.Tetkik;
   isteklerv2 : TenayServicev2.ArrayOfTetkik;
   HTICvpv2 : TenayServicev2.HastaKaydetCevap;

   {
   HTIMNT : TenayServiceMNT.Order;
   KurumMNT : TenayServiceMNT.KurumBilgileri;
   GelisMNT : TenayServiceMNT.Gelis;
   istekMNT : TenayServiceMNT.Tetkik;
   isteklerMNT : TenayServiceMNT.Array_Of_Tetkik;
   doktorMNT : TenayServiceMNT.Doktor;
   HTICvpMNT : TenayServiceMNT.HastakaydetCevap;
    }

   I,s : integer;
   sv2,dosyaNo,gelisNo ,id , sm , barkod , ss , hh : string;
   t : boolean ;
   Http : THTTPRIO;
begin

  datalar.Login;


  if (datalar._labfirma = 'V2')
  then begin

      HTIv2 := TenayServiceV2.HastaKaydetIstek.Create;
      HTICvpv2 := TenayServicev2.HastaKaydetCevap.Create;
      HastaTenayv2 := TenayServicev2.HastaBilgileri.Create;

      txtLog.Lines.Clear;
      progres.MaxValue := gridAktif.RowCount - 2;
      progres.Progress := 0;
      Progres.Visible := true;
      txtinfo.Caption := 'Gönderiliyor...';


      For I := 1 to gridAktif.RowCount - 2 do
      Begin
        Application.ProcessMessages;
        gridAktif.GetCheckBoxState(1,I,t);

        if  (t = True) and (gridAktif.Cells[8,I] = 'Yeni Kayýt')
        Then Begin
           dosyaNo := gridAktif.Cells[1,I];
           gelisNo := gridAktif.Cells[2,I];
           id := gridAktif.Cells[6,I];

           HTIv2.Hasta := HastabilgileriDoldurv2(dosyaNo,gelisNo);
           HTIv2.Tetkik := HastaIstekBilgileriv2(dosyaNo,gelisNo);

           HTIv2.Kullanici := datalar._labusername;
           HTIv2.Sifre := datalar._labsifre;
           HTIv2.Barkod := gridAktif.ints[4,I];
           HTIv2.Tarih := '';


           datalar.TenayV2.URL := datalar._laburl;

           try
            HTICvpv2 := (datalar.TenayV2 as TenayServicev2.AHBSIslemleriSoap).HastaKaydet(HTIv2);
           except on e : Exception do
             begin
               sm := e.Message;
             end;
           end;


           if gridAktif.cells[5,I] <> ''
           Then Begin
               HTIv2.Barkod := gridAktif.ints[5,I];
               HTIv2.Tetkik := HastaIstekBilgileriv2Cikis(dosyaNo,gelisNo);

               try
                HTICvpv2 := (datalar.TenayV2 as TenayServicev2.AHBSIslemleriSoap).HastaKaydet(HTIv2);
               except on e : Exception do
                 begin
                   sm := e.Message;
                 end;
               end;
           End;




           Progres.Progress := Progres.Progress + 1;

           sv2 := HTICvpv2.SonucMesaji;
           if sv2 = ''
           Then Begin
             ornekdurumyaz('Gönderildi',id,'');
             txtLog.Lines.Add(inttostr(HTIv2.Barkod) + ' - ' + ' : ' + HTICvpv2.SonucMesaji + ' ' + sm);

           End
           Else
            txtLog.Lines.Add(inttostr(HTIv2.Barkod)  + ' - ' + HTICvpv2.SonucMesaji + ' ' + sm);

        End;
      End; // for end
      Progres.Visible := false;
      txtinfo.Caption := '.';



  end;



  if (datalar._labfirma = 'MNT')
  then begin
     TenayOrderKaydetMNT(gridAktif,txtLog,Progres);
  end;

  if (datalar._labfirma = 'Bio') //or (datalar._labfirma = 'Tenay')
  Then Begin
    TenayOrderKaydetBio(gridAktif,txtLog,Progres);
  End;


  // V3
  if (datalar._labfirma = 'Sistem') or (datalar._labfirma = 'Simge') or
     (datalar._labfirma = 'TenayV3')
  Then Begin
      HTI := TenayService1.HastaKaydetGiris.Create;
      HTICvp := TenayService1.HastaKaydetSonuc.Create;
      HastaTenay := TenayService1.HastaBilgileri.Create;
      Gelis := TenayService1.GelisBilgileri.Create;

      txtLog.Lines.Clear;
      progres.MaxValue := gridAktif.RowCount - 2;
      progres.Progress := 0;
      Progres.Visible := true;
      txtinfo.Caption := 'Gönderiliyor...';


      For I := 1 to gridAktif.RowCount - 2 do
      Begin
        Application.ProcessMessages;
        gridAktif.GetCheckBoxState(1,I,t);

        if  (t = True) and (gridAktif.Cells[8,I] = 'Yeni Kayýt')
        Then Begin
           dosyaNo := gridAktif.Cells[1,I];
           gelisNo := gridAktif.Cells[2,I];
           id := gridAktif.Cells[6,I];

           HTI.Hasta := HastabilgileriDoldurSistem(dosyaNo,gelisNo);
           HTI.Gelis := HastaGelisBilgileriDoldurSistem(dosyaNo,gelisNo);
           HTI.Istek := HastaIstekBilgileriSistem(dosyaNo,gelisNo);

           HTI.KullaniciAdi := datalar._labusername;
           HTI.GonderenKurumKodu := datalar._labkurumkod;
           HTI.Sifre := datalar._labsifre;
           datalar.Sistem.URL := datalar._laburl;

           try
            HTICvp := (datalar.Sistem as TenayService1.HastaIslemleriSoap).HastaKaydet(HTI);
           except on e : Exception do
             begin
               sm := e.Message;
             end;
           end;

           Progres.Progress := Progres.Progress + 1;

           s := HTICvp.Sonuc;
           if s = 0
           Then Begin
             ornekdurumyaz('Gönderildi',id,'');
             txtLog.Lines.Add(HTI.Gelis.ReferansId + ' - ' + inttostr(HTICvp.Sonuc) + ' : ' + HTICvp.SonucMesaji + ' ' + sm);

           End
           Else
            txtLog.Lines.Add(HTI.Gelis.ReferansId + ' - ' + HTICvp.SonucMesaji + ' ' + sm);

        End;
      End; // for end
      Progres.Visible := false;
      txtinfo.Caption := '.';

  End;






End;


procedure TfrmLabOrnekNoGiris.H5Click(Sender: TObject);
var
  HstCvp : duzen.addNPatients;
  I : integer;
  t : boolean;
  dosyaNo,gelisNo,id,sm ,testler , sql , cins : string;
  ado : TADOQuery;
begin
  inherited;
  datalar.Login;
  HstCvp := duzen.addNPatients.Create;

  for I := 1 to gridAktif.RowCount - 2 do
  Begin
    Application.ProcessMessages;
    gridAktif.GetCheckBoxState(1,I,t);
    if  (t = True) and (gridAktif.Cells[8,I] = 'Yeni Kayýt')
    Then Begin
      dosyaNo := gridAktif.Cells[1,I];
      gelisNo := gridAktif.Cells[2,I];
      id := gridAktif.Cells[6,I];
      testler := gridAktif.Cells[20,I];
      Hst := OrderDuzen(dosyaNo,gelisNo);

      cins := ifthen(Hst.Cinsiyet = '0','E','K');
      datalar.Duzen.URL := datalar._laburl;

      try
       HstCvp := (datalar.Duzen as PatientProcsSoap).addPatients(Hst.tckimlikNo,id,cins,Hst.Adi,
                                                                 Hst.Sadi,Hst.DT,'','','','','T',testler,
                                                                 strtoint(datalar._labkurumkod),datalar._labsifre);
      except on e : Exception do
       begin
         sm := e.Message;
       end;
      end;


      if HstCvp.resultCode = '0000'
      then Begin
          ado := TADOQuery.Create(nil);
          ado.Connection := datalar.ADOConnection2;

          sql := 'update gelisler set OrnekNo = ' + QuotedStr(HstCvp.resultPANo) +
                 ' where dosyaNO = ' + QuotedStr(dosyaNo) + ' and gelisNo = ' + gelisNo ;
          datalar.QueryExec(ado,sql);

          ornekdurumyaz('Gönderildi',id,'');
          txtLog.Lines.Add(HstCvp.resultCode +'-'+ HstCvp.resultClass);
          ado.Free;
      End
      else
        txtLog.Lines.Add('Hata' + HstCvp.resultClass);

    End;

  End;




end;

procedure TfrmLabOrnekNoGiris.H6Click(Sender: TObject);
var
  alisGon : HizmetOkuGirisDVO;
  alisCvp : HizmetOkuCevapDVO;
  kurum : KurumBilgileriDVO;
  d1,d2 : TXSDateTime;
  i : integer;
  p : TPoint;
  dosyaNo,gelisNo,sql,GC : string;
  ado : TADOQuery;
begin
  inherited;

  datalar.Login;
  ado := TADOQuery.Create(nil);
  ado.Connection := datalar.ADOConnection2;

  alisGon := HizmetOkuGirisDVO.Create;
  alisCvp := HizmetOkuCevapDVO.Create;
  kurum := KurumBilgileriDVO.Create;
  d1 := TXSDateTime.Create;
  d2 := TXSDateTime.Create;

  DatetoxsDate(d1,txtTarih.Date);
  DatetoxsDate(d2,txtTarih1.Date);
  kurum.UserName := datalar._labusername;
  kurum.PassWord := datalar._labsifre;
  kurum.KurumKodu := strtoint(datalar._labkurumkod);

  alisGon.KurumBilgileri := kurum;
  alisGon.BasTarih := txtTarih.Text;
  alisGon.BitTarih := txttarih1.Text;

  datalar.Alis.URL := datalar._laburl;
  //datalar.Alis.URL := 'http://services.asta.gen.tr/AlisHizmetler.asmx';

  try
   alisCvp := (datalar.Alis as AlisHizmetlerSoap).HastaListesiGetir(alisGon);
  except on e : exception do
   begin
      ShowMessage(e.Message);
   end;
  end;


  if length(alisCvp.Patients) > 0
  Then Begin
    for i := 0 to length(alisCvp.Patients) - 1 do
    begin
       p.X := 1;
       p.Y := 1;

       p := gridAktif.Find(p,alisCvp.Patients[i].TCKimlikNo,[fnAutoGoto]);
       if p.y > 0
       then begin
         dosyaNo := gridAktif.Cells[1,p.Y];
         gelisNo := gridAktif.Cells[2,p.y];

         if alisCvp.Patients[i].GirisCikis = 'G'
         Then begin
          GC := 'ornekNo';
          gridAktif.Cells[4,p.y] := inttostr(alisCvp.Patients[i].Ornekno);
         end
         Else begin
          GC := 'CikisOrnekNo';
          gridAktif.Cells[5,p.y] := inttostr(alisCvp.Patients[i].Ornekno);
         end;

         sql := 'update gelisler  set ' + GC + '=' + QuotedStr(inttostr(alisCvp.Patients[i].Ornekno)) +
                 ' from gelisler g ' +
                 ' join hastakart h on h.dosyaNo = g.dosyaNo ' +
                 ' where TCKIMLIKNO = ' + QuotedStr(alisCvp.Patients[i].TCKimlikNo) +
                 ' and BHDAT between ' + QuotedStr(tarihal(txtTarih.Date)) + ' and ' + QuotedStr(tarihal(txttarih1.Date));
         datalar.QueryExec(ado,sql);

       end; // p.y > 0
    end;  // for end
  End; // length(alisCvp.Patients) > 0


end;

procedure TfrmLabOrnekNoGiris.H7Click(Sender: TObject);


var
  MetGon : Tistekgiris;
  MetCvp : TistekSonuc;
  MetGonC : Tistekgiris;
  MetCvpC : TistekSonuc;
  I : integer;
  t : boolean;
  sm ,dosyaNo,gelisNo,id,barkod,tarih,soyad,sql,tip: string;
  ado : TADOQuery;

procedure MetdataTeslimyaz(t,teslimNo : string);
begin
  if t = 'G'
  Then
     sql := 'update gelisler set OrnekNo = ' + QuotedStr(teslimNo) +
            ' where dosyaNO = ' + QuotedStr(dosyaNo) + ' and gelisNo = ' + gelisNo
  Else
     sql := 'update gelisler set CikisOrnekNo = ' + QuotedStr(teslimNo) +
            ' where dosyaNO = ' + QuotedStr(dosyaNo) + ' and gelisNo = ' + gelisNo;

  ado := TADOQuery.Create(nil);
  ado.Connection := datalar.ADOConnection2;
  datalar.QueryExec(ado,sql);
  txtLog.Lines.Add(barkod + ' - Testler Eklendi');
  ado.Free;
  ornekdurumyaz('Gönderildi',id,'');

end;


begin

  datalar.Login;
  MetGon := Tistekgiris.Create;
  MetCvp := TIstekSonuc.Create;

  datalar.Metdata.URL := datalar._laburl;
  datalar.MetdataC.URL := datalar._laburl;

  For I := 1 to gridAktif.RowCount - 2 do
  Begin
    Application.ProcessMessages;
    gridAktif.GetCheckBoxState(1,I,t);
    if  (t = True) and (gridAktif.Cells[8,I] = 'Yeni Kayýt')
    Then Begin
      dosyaNo := gridAktif.Cells[1,I];
      gelisNo := gridAktif.Cells[2,I];
      id := gridAktif.Cells[6,I];
      tip := 'G';
      MetGon.giris_tipi := 'ISTEK';
    //  MetGon.dosya_no := strtod dosyaNo;
      barkod := gridAktif.Cells[6,I];
    //  MetGon.isteyenbarkod := strtofloat(barkod);
      HastabilgileriDoldurMetdata(MetGon,tarih,dosyaNo,gelisNo);
      MetGon.istekler := HastaIstekBilgileriMetdata(dosyaNo,gelisNo,tarih,tip);
   //   MetGon.aciklama := id;
      try
         MetCvp := (datalar.Metdata as IMeddataLabService).istekyap(Encode64(datalar._labusername),
                                                                    Encode64(datalar._labsifre),
                                                                    strtoint(datalar._labkurumkod),
                                                                    '',
                                                                    MetGon);
      except on e : Exception do
         begin
           sm := e.Message;
           MetCvp.hatakodu := -1;
           txtlog.Lines.Add(e.Message);
         end;
      end;



      if MetCvp.hatakodu = 0
      Then Begin
       MetdataTeslimyaz(tip,floattostr(MetCvp.meddatateslimNo));
      End
      Else begin
       txtlog.Lines.Add(MetCvp.hataAciklama);
      End;



      MetGonC := Tistekgiris.Create;
      MetCvpC := TIstekSonuc.Create;
      MetGonC.giris_tipi := 'ISTEK';
      tip := 'C';
      barkod := gridAktif.Cells[6,I];
    //  MetGonC.isteyenbarkod := strtofloat('9'+barkod);
      HastabilgileriDoldurMetdata(MetGonC,tarih,dosyaNo,gelisNo);
      MetGonC.istekler := HastaIstekBilgileriMetdata(dosyaNo,gelisNo,tarih,tip);
    //  MetGonC.aciklama := id;
      try
         MetCvpC := (datalar.MetdataC as IMeddataLabService).istekyap(Encode64(datalar._labusername),
                                                                    Encode64(datalar._labsifre),
                                                                    strtoint(datalar._labkurumkod),
                                                                    '',
                                                                    MetGonC);
      except on e : Exception do
         begin
           sm := e.Message;
           MetCvpC.hatakodu := -1;
         end;
      end;


        if MetCvpC.hatakodu = 0
        Then Begin
          MetdataTeslimyaz(tip,floattostr(MetCvpC.meddatateslimNo));
        End
        Else
         ShowMessage(MetCvpC.hataAciklama);

    End;
  End;

end;

procedure TfrmLabOrnekNoGiris.H8Click(Sender: TObject);
var
  TahlilGiris : HastaTahlilBilgileriGiris;
  TahlilGirisC : HastaTahlilBilgileriGiris;
  Cvp : HastaTahlilBilgileriKayitCikis;
  CvpC : HastaTahlilBilgileriKayitCikis;

  I : integer;
  t : boolean;
  dosyaNo , gelisNo , id , idC , sm , s , ornekNo , ornekNoC : string;
begin
    datalar.Login;
    TahlilGiris := HastaTahlilBilgileriGiris.Create;
    TahlilGirisC := HastaTahlilBilgileriGiris.Create;

    Cvp := HastaTahlilBilgileriKayitCikis.Create;
    CvpC := HastaTahlilBilgileriKayitCikis.Create;

    txtLog.Lines.Clear;
    progres.MaxValue := gridAktif.RowCount - 2;
    progres.Progress := 0;
    Progres.Visible := true;
    txtinfo.Caption := 'Gönderiliyor...';

    For I := 1 to gridAktif.RowCount - 2 do
    Begin
      Application.ProcessMessages;
      gridAktif.GetCheckBoxState(1,I,t);
      if  (t = True) and (gridAktif.Cells[8,I] = 'Yeni Kayýt')
      Then Begin
         dosyaNo := gridAktif.Cells[1,I];
         gelisNo := gridAktif.Cells[2,I];
         id := 'G'+gridAktif.Cells[6,I];
         ornekNo := gridAktif.Cells[4,I];
         ornekNoC := gridAktif.Cells[5,I];
         idC := 'C'+gridAktif.Cells[6,I];

         TahlilGiris := HastabilgileriDoldurDerman(dosyaNo,gelisNo,id,ornekNo);
         TahlilGiris.kullaniciadi := datalar._labusername;
         TahlilGiris.kullanicisifre := datalar._labsifre;
         TahlilGirisC := HastabilgileriDoldurDermanCikis(dosyaNo,gelisNo,idC,ornekNoC);
         TahlilGirisC.kullaniciadi := datalar._labusername;
         TahlilGirisC.kullanicisifre := datalar._labsifre;

         datalar.Derman.URL := datalar._laburl;

         try
         if length(ornekNo) > 0
         then
          Cvp := (datalar.Derman as LabIslemleriSoap).HastaTahlilBilgileriKaydet(TahlilGiris)
         else
          Cvp := (datalar.Derman as LabIslemleriSoap).HastaTahlilBilgileriKaydetorneknosuz(TahlilGiris);

         except on e : Exception do
           begin
             sm := e.Message;
             Cvp.Sonuc := '-1';
           end;
         end;

         s := Cvp.SonucKod;
         if s = '0'
         Then Begin
           ornekdurumyaz('Gönderildi',copy(id,2,10),'');
           txtLog.Lines.Add(Cvp.detay.GelenHastaid + ' - ' + Cvp.sonuc);
           gridAktif.Cells[4,I] := CVp.detay.OrnekNo;
         End
         Else
          txtLog.Lines.Add(Cvp.detay.GelenHastaid + ' - ' + Cvp.sonuc + '-' + sm);


         try
         if length(ornekNoC) > 0
         then
          CvpC := (datalar.Derman as LabIslemleriSoap).HastaTahlilBilgileriKaydet(TahlilGirisC)
         else
          CvpC := (datalar.Derman as LabIslemleriSoap).HastaTahlilBilgileriKaydetorneknosuz(TahlilGirisC);
          except on e : Exception do
           begin
             sm := e.Message;
             CvpC.Sonuc := '-1';
           end;
         end;

         s := CvpC.sonuckod;
         if s = '0'
         Then Begin
           ornekdurumyaz('Gönderildi',copy(idC,2,10),'');
           txtLog.Lines.Add(CvpC.detay.GelenHastaid + ' - ' + CvpC.sonuc);
           gridAktif.Cells[5,I] := CVpC.detay.OrnekNo;
         End
         Else
          txtLog.Lines.Add(CvpC.detay.GelenHastaid + ' - ' + CvpC.sonuc + '-' + sm);

         ornekdurumyaz('Gönderildi',copy(id,2,10),'',CVp.detay.OrnekNo,CVpC.detay.OrnekNo);

         Progres.Progress := Progres.Progress + 1;


      End;
    End; // for end
    Progres.Visible := false;
    txtinfo.Caption := '.';

end;

procedure TfrmLabOrnekNoGiris.H9Click(Sender: TObject);
var
  giris : Job;
  i  : integer;
  p : TPoint;
  dosyaNo,gelisNo,sql,GC,ss,ornekNo,id,_F_,testKod,min,max,sonuc,sonucA,sm : string;
  ado : TADOQuery;
  t : boolean;
  Ornekler : array of string;
begin
    datalar.Login;
    giris := Job.Create;

    txtLog.Lines.Clear;
    progres.MaxValue := gridAktif.RowCount - 2;
    progres.Progress := 0;
    Progres.Visible := true;
    txtinfo.Caption := 'Gönderiliyor...';

    For I := 1 to gridAktif.RowCount - 2 do
    Begin
      Application.ProcessMessages;
      gridAktif.GetCheckBoxState(1,I,t);
      SetLength(Ornekler,0);
      if  (t = True) and (gridAktif.Cells[8,I] = 'Yeni Kayýt')
      Then Begin
         dosyaNo := gridAktif.Cells[1,I];
         gelisNo := gridAktif.Cells[2,I];
         id := gridAktif.Cells[6,I];

         SetLength(Ornekler,5);
         Ornekler[0] := gridAktif.Cells[4,I];
         Ornekler[1] := gridAktif.Cells[5,I];
         Ornekler[2] := gridAktif.Cells[10,I];
         Ornekler[3] := gridAktif.Cells[11,I];
         Ornekler[4] := gridAktif.Cells[12,I];

         ornekNo := gridAktif.Cells[4,I];


         giris := HastabilgileriDoldurCentro(dosyaNo,gelisNo,id,Ornekler);
         datalar.Centro.URL := datalar._laburl;
         sm := '0';
         try
          (datalar.Centro as BridgeSoap).CreateJob(datalar._labusername,datalar._labsifre,giris);
          ornekdurumyaz('Gönderildi',id,'');
         except on e : Exception do
           begin
             sm := e.Message;
           end;
         end;
         txtLog.Lines.Add(datalar.CentroResponse);

         Progres.Progress := Progres.Progress + 1;
      End;
      sleep(2000);
    End; // for end
    Progres.Visible := false;
    txtinfo.Caption := '.';

end;

procedure TfrmLabOrnekNoGiris.O1Click(Sender: TObject);
var
  alisGon : hizmetOkuGirisOrnekNoDVO;
  alisCvp : HizmetOkuCevapDVO;
  kurum : KurumBilgileriDVO;
  i  : integer;
  p : TPoint;
  dosyaNo,gelisNo,sql,GC,ss,ornekNo,id,_F_,testKod,min,max,sonuc,sonucA : string;
  ado : TADOQuery;
  t : boolean;

procedure sonucYaz;
var
 x , testAdet : integer;

begin
      testAdet := length(alisCvp.Patients[0].TestResults);
      for x := 0 to testAdet - 1 do
      begin
        txtLog.Lines.Add(alisCvp.Patients[0].AdSoyad + ' - ' + alisCvp.Patients[0].TestResults[x].TestAd + ' ' +
        inttostr(alisCvp.Patients[0].TestResults[x].TestKodu)  + ' - ' + alisCvp.Patients[0].TestResults[x].TestSonuc);

        testKod := KodEslestirNormalDeger(inttostr(alisCvp.Patients[0].TestResults[x].TestKodu),'0',min,max, _F_);
        _F_ := TrtoEng(alisCvp.Patients[0].GirisCikis)+'D';

        if testKod <> ''
        Then Begin

           alisCvp.Patients[0].TestResults[x].TestSonuc := StringReplace(alisCvp.Patients[0].TestResults[x].TestSonuc,'Poz','POZ',[rfReplaceAll]);
           alisCvp.Patients[0].TestResults[x].TestSonuc:= StringReplace(alisCvp.Patients[0].TestResults[x].TestSonuc,'Neg','NEG',[rfReplaceAll]);
           alisCvp.Patients[0].TestResults[x].TestSonuc := StringReplace(alisCvp.Patients[0].TestResults[x].TestSonuc,',','.',[rfReplaceAll]);


           if (pos('NEG',alisCvp.Patients[0].TestResults[x].TestSonuc) > 0)
           Then sonuc := '-1'
           Else
           if (pos('POZ',alisCvp.Patients[0].TestResults[x].TestSonuc) > 0)
           Then sonuc := '1'
           Else sonuc := alisCvp.Patients[0].TestResults[x].TestSonuc;

           if (testKod = '907440') or
              (testKod = '906610') or
              (testKod = '906630') or
              (testKod = '906660')
           Then Begin
              sonuc := trim(StringReplace(StringReplace(alisCvp.Patients[0].TestResults[x].TestSonuc,'>','',[rfReplaceAll]),'<','',[rfReplaceAll]));
              sonucA := sonuc;
              if strtofloat(sonuc) < strtofloat(max)
              Then sonuc := '-1' else sonuc := '1';

              sql := 'update hareketler set islemAciklamasi  = ' + QuotedStr(sonucA) +
                     ' where onay = 1 and code = ' + QuotedStr(testKod) + ' and dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNO = ' + gelisNo ;
              datalar.QueryExec(ado,sql);
           End;


          try
           sql := 'update hareketler set ' + _F_ + '= ' + sonuc +
                    ' where onay = 1 and code = ' + QuotedStr(testKod) + ' and dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNO = ' + gelisNo ;

           datalar.QueryExec(ado,sql);
          except
             sql := 'update hareketler set islemAciklamasi  = ' + QuotedStr(sonuc) +
                    ' where onay = 1 and code = ' + QuotedStr(testKod) + ' and dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNO = ' + gelisNo ;
             datalar.QueryExec(ado,sql);

          end;


        End;
      end; // test for end
      ornekdurumyaz('Sonuç Alýndý',id,'');

end;

begin
  inherited;

  datalar.Login;
  ado := TADOQuery.Create(nil);
  ado.Connection := datalar.ADOConnection2;

//  alisCvp := HizmetOkuCevapDVO.Create;
  alisGon := hizmetOkuGirisOrnekNoDVO.Create;
  kurum := KurumBilgileriDVO.Create;

  kurum.UserName := datalar._labusername;
  kurum.PassWord := datalar._labsifre;
  kurum.KurumKodu := strtoint(datalar._labkurumkod);

  alisGon.KurumBilgileri := kurum;

  datalar.Alis.URL := datalar._laburl;
//  datalar.Alis.URL := 'http://services.asta.gen.tr/AlisHizmetler.asmx';

  Progres.Visible := True;
  Progres.MaxValue := gridAktif.RowCount - 1;

   for I := 1 to gridAktif.RowCount - 2 do
   begin
     Application.ProcessMessages;
     ss := '';
     gridAktif.GetCheckBoxState(1,I,t);

     if  (t = True) and (gridAktif.Cells[8,I] = 'Gönderildi')
     Then Begin
         dosyaNo := gridAktif.Cells[1,I];
         gelisNo := gridAktif.Cells[2,I];
         id := gridAktif.Cells[6,I];

         // giris oku
         alisGon.OrnekNo := gridAktif.ints[4,I];
         alisCvp := HizmetOkuCevapDVO.Create;
         try
           alisCvp := (datalar.Alis as AlisHizmetlerSoap).HastaSonucOkuOrnekNo(alisGon);
         except on e : exception do
           begin
              ShowMessage(e.Message);
           end;
         end;

        if alisCvp.SonucKodu = '00'
        Then Begin
          sonucYaz;
        End else txtLog.Lines.Add(inttostr(alisCvp.Patients[0].Ornekno) + ' - ' + alisCvp.SonucMesaj);

         // cýkýþ oku
         alisGon.OrnekNo := gridAktif.ints[5,I];
         alisCvp := HizmetOkuCevapDVO.Create;
         try
           alisCvp := (datalar.Alis as alisHizmetlerSoap).HastaSonucOkuOrnekNo(alisGon);
         except on e : exception do
           begin
              ShowMessage(e.Message);
           end;
         end;

        Progres.Progress := Progres.Progress + 1;

        if alisCvp.SonucKodu = '00'
        Then Begin
          sonucYaz;
        End else txtLog.Lines.Add(inttostr(alisCvp.Patients[0].Ornekno) + ' - ' + alisCvp.SonucMesaj);


       End; //* chk end
   end;  // for end
   Progres.Visible := false;
   txtinfo.Caption := '.';

end;

function TfrmLabOrnekNoGiris.OrderDuzen(dosyaNo : string ; gelis : string) : THastaKabul;
var
  sql : string;
  ado : TADOQuery;
  i , j : integer;
  ckod,kod,TurId : string;
  DTarih,TTarih , ATarih : TXSDateTime;
  Order : THastaKabul;
begin
  ado := TADOQuery.Create(nil);
  ado.Connection := datalar.ADOConnection2;

  sql := 'select * from HastaKart where dosyano = ' + QuotedStr(dosyaNo);
  datalar.QuerySelect(ado,sql);

  Order.DosyaNo  := dosyaNo;
  Order.tckimlikNo := ado.fieldbyname('TCKIMLIKNO').AsString;
  Order.Adi := ado.fieldbyname('HASTAADI').AsString;
  Order.Sadi := ado.fieldbyname('HASTASOYADI').AsString;
  Order.Cinsiyet := ado.fieldbyname('CINSIYETI').AsString;

  DTarih := TXSDateTime.Create;
  Dtarih.Year := strtoint(copy(ado.fieldbyname('DOGUMTARIHI').Asstring,1,4));
  Dtarih.Month := strtoint(copy(ado.fieldbyname('DOGUMTARIHI').Asstring,5,2));
  Dtarih.Day := strtoint(copy(ado.fieldbyname('DOGUMTARIHI').Asstring,7,2));
  Order.DT := DTarih;


  sql := 'select * from gelisler where dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNo = ' + gelis;
  datalar.QuerySelect(ado,sql);

  Order.TakipNo := ado.fieldbyname('OrnekNo').AsString;

  result := Order;
  ado.Free;

end;

 {
function TfrmLabOrnekNoGiris.OrderMNT(dosyaNo : string ; gelis : string) : TenayServiceMNT.Order;
var
  sql : string;
  HastaTenay : TenayServiceMNT.Order;
  GelisMNT : TenayServiceMNT.Gelis;
  istekler : TenayServiceMNt.Array_Of_Tetkik;
  istek : TenayServiceMNT.Tetkik;
  ado : TADOQuery;
  i , j : integer;
  ckod,kod,TurId : string;
  DTarih,TTarih , ATarih : TXSDateTime;
begin
  ado := TADOQuery.Create(nil);
  ado.Connection := datalar.ADOConnection2;
  HastaTenay := TenayServiceMNT.Order.Create;

  sql := 'select * from HastaKart where dosyano = ' + QuotedStr(dosyaNo);
  datalar.QuerySelect(ado,sql);

  HastaTenay.DosyaNo  := dosyaNo;
  HastaTenay.KimlikNo := ado.fieldbyname('TCKIMLIKNO').AsString;
  HastaTenay.Adi := ado.fieldbyname('HASTAADI').AsString;
  HastaTenay.Soyadi := ado.fieldbyname('HASTASOYADI').AsString;
  HastaTenay.BabaAdi := ado.fieldbyname('BABAADI').AsString;
  HastaTenay.AnneAdi := ado.fieldbyname('ANAADI').AsString;

  if (ado.fieldbyname('CINSIYETI').AsString = '0')
  Then HastaTenay.Cinsiyeti := TenayServiceMNT.Cinsiyet.Erkek
  else HastaTenay.Cinsiyeti := TenayServiceMNT.Cinsiyet.Kadin;

  DTarih := TXSDateTime.Create;
  Dtarih.Year := strtoint(copy(ado.fieldbyname('DOGUMTARIHI').Asstring,1,4));
  Dtarih.Month := strtoint(copy(ado.fieldbyname('DOGUMTARIHI').Asstring,5,2));
  Dtarih.Day := strtoint(copy(ado.fieldbyname('DOGUMTARIHI').Asstring,7,2));
  HastaTenay.DogumTarihi := DTarih;


    sql := 'select * from gelisler where dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNo = ' + gelis;
    datalar.QuerySelect(ado,sql);

    HastaTenay.OrnekNo := strtoint(ifthen(ado.fieldbyname('OrnekNo').AsString = '',
                               '0',ado.fieldbyname('OrnekNo').AsString));

    GelisMNT := TenayServiceMNT.Gelis.Create;
    GelisMNT.ReferansNo := ado.fieldbyname('SIRANO').AsString;
    GelisMNT.OrnekNo := strtoint(ifthen(ado.fieldbyname('OrnekNo').AsString = '',
                               '0',ado.fieldbyname('OrnekNo').AsString));

    TTarih := TXSDateTime.Create;
    TTarih.Year := strtoint(copy(ado.fieldbyname('BHDAT').Asstring,1,4));
    TTarih.Month := strtoint(copy(ado.fieldbyname('BHDAT').Asstring,5,2));
    TTarih.Day := strtoint(copy(ado.fieldbyname('BHDAT').Asstring,7,2));
    GelisMNT.Tarih := TTarih;

    GelisMNT.GelisTipi := TenayServiceMNT.GelisTipi.DiyalizGiris;

    sql := 'select * from hareketler h ' +
           ' join labtestler l on l.butKodu = h.code ' +
           ' where dosyaNo = ' + QuotedStr(dosyaNo) + ' and onay = 1 and gelisNo = ' + gelis +
           ' and charindex(''.'',code) = 0 and l.tip = 2';
    datalar.QuerySelect(ado,sql);
    j := ado.RecordCount;
    SetLength(istekler,j);

    while not ado.Eof do
    begin
      istek := TenayServiceMNT.Tetkik.Create;
     // istek.LogId := ado.fieldbyname('SIRANO').AsInteger;
      ckod := '';
      kod := KodEslestirKod(ado.fieldbyname('code').AsString,ckod,TurId);

      istek.Kodu := kod;
      istek.Adi := ado.fieldbyname('NAME1').AsString;
      istek.KapId := 26;
      istek.OrnekTurId := ifThen(TurId = '','0',TurId);
      ATarih := TXSDateTime.Create;
      ATarih.Year := strtoint(copy(ado.fieldbyname('Tarih').Asstring,1,4));
      ATarih.Month := strtoint(copy(ado.fieldbyname('Tarih').Asstring,5,2));
      ATarih.Day := strtoint(copy(ado.fieldbyname('Tarih').Asstring,7,2));
      istek.AlindigiTarih := ATarih;


      istekler[i] := istek;
      i := i + 1;

      if ckod <> ''
      Then begin
        j := j +1;
        SetLength(istekler,j);
        istek := TenayServiceMNT.Tetkik.Create;
       // istek.LogId := ado.fieldbyname('SIRANO').AsInteger+1000;
        istek.Kodu := ckod;
        istek.Adi := ado.fieldbyname('NAME1').AsString;
        istek.KapId := 26;
        istek.OrnekTurId := '147';
        istek.AlindigiTarih := ATarih;
        istekler[i] := istek;
        i := i + 1;
      end;
      ado.Next;
    end;

    GelisMNT.Tetkikler := istekler;
    HastaTenay.Gelis := GelisMNT;




  ado.Free;
  result := HastaTenay;
end;
     }
{
function TfrmLabOrnekNoGiris.OrderBIO(dosyaNo : string ; gelis : string) : TenayServiceBio.Order;
var
  sql : string;
  HastaTenay : TenayServiceBIO.Order;
  GelisBIO : TenayServiceBIO.Gelis;
  istekler : TenayServiceBIO.Array_Of_Tetkik;
  istek : TenayServiceBIO.Tetkik;
  ado : TADOQuery;
  i , j : integer;
  ckod,kod,TurId : string;
  DTarih,TTarih , ATarih : TXSDateTime;
begin
  ado := TADOQuery.Create(nil);
  ado.Connection := datalar.ADOConnection2;
  HastaTenay := TenayServiceBIO.Order.Create;

  sql := 'select * from HastaKart where dosyano = ' + QuotedStr(dosyaNo);
  datalar.QuerySelect(ado,sql);

  HastaTenay.DosyaNo  := dosyaNo;
  HastaTenay.KimlikNo := ado.fieldbyname('TCKIMLIKNO').AsString;
  HastaTenay.Adi := ado.fieldbyname('HASTAADI').AsString;
  HastaTenay.Soyadi := ado.fieldbyname('HASTASOYADI').AsString;
  HastaTenay.BabaAdi := ado.fieldbyname('BABAADI').AsString;
  HastaTenay.AnneAdi := ado.fieldbyname('ANAADI').AsString;

  if (ado.fieldbyname('CINSIYETI').AsString = '0')
  Then HastaTenay.Cinsiyeti := Cinsiyet.Erkek
  else HastaTenay.Cinsiyeti := Cinsiyet.Kadin;

  DTarih := TXSDateTime.Create;
  Dtarih.Year := strtoint(copy(ado.fieldbyname('DOGUMTARIHI').Asstring,1,4));
  Dtarih.Month := strtoint(copy(ado.fieldbyname('DOGUMTARIHI').Asstring,5,2));
  Dtarih.Day := strtoint(copy(ado.fieldbyname('DOGUMTARIHI').Asstring,7,2));
  HastaTenay.DogumTarihi := DTarih;


    sql := 'select * from gelisler where dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNo = ' + gelis;
    datalar.QuerySelect(ado,sql);

    HastaTenay.OrnekNo := strtoint(ifthen(ado.fieldbyname('OrnekNo').AsString = '',
                               '0',ado.fieldbyname('OrnekNo').AsString));

    GelisBIO := TenayServiceBIO.Gelis.Create;
    GelisBIO.ReferansNo := ado.fieldbyname('SIRANO').AsString;
    GelisBIO.OrnekNo := strtoint(ifthen(ado.fieldbyname('OrnekNo').AsString = '',
                               '0',ado.fieldbyname('OrnekNo').AsString));

    TTarih := TXSDateTime.Create;
    TTarih.Year := strtoint(copy(ado.fieldbyname('BHDAT').Asstring,1,4));
    TTarih.Month := strtoint(copy(ado.fieldbyname('BHDAT').Asstring,5,2));
    TTarih.Day := strtoint(copy(ado.fieldbyname('BHDAT').Asstring,7,2));
    GelisBIO.Tarih := TTarih;

    GelisBIO.GelisTipi := GelisTipi.DiyalizGiris;

    sql := 'select * from hareketler h ' +
           ' join labtestler l on l.butKodu = h.code ' +
           ' where dosyaNo = ' + QuotedStr(dosyaNo) + ' and onay = 1 and gelisNo = ' + gelis +
           ' and charindex(''.'',code) = 0 and l.tip = 2';
    datalar.QuerySelect(ado,sql);
    j := ado.RecordCount;
    SetLength(istekler,j);

    while not ado.Eof do
    begin
      istek := TenayServiceBIO.Tetkik.Create;
     // istek.LogId := ado.fieldbyname('SIRANO').AsInteger;
      ckod := '';
      kod := KodEslestirKod(ado.fieldbyname('code').AsString,ckod,TurId);

      istek.Kodu := kod;
      istek.Adi := ado.fieldbyname('NAME1').AsString;
      istek.KapId := 26;
      istek.OrnekTurId := ifThen(TurId = '','0',TurId);
      ATarih := TXSDateTime.Create;
      ATarih.Year := strtoint(copy(ado.fieldbyname('Tarih').Asstring,1,4));
      ATarih.Month := strtoint(copy(ado.fieldbyname('Tarih').Asstring,5,2));
      ATarih.Day := strtoint(copy(ado.fieldbyname('Tarih').Asstring,7,2));
      istek.AlindigiTarih := ATarih;


      istekler[i] := istek;
      i := i + 1;

      if ckod <> ''
      Then begin
        j := j +1;
        SetLength(istekler,j);
        istek := TenayServiceBIO.Tetkik.Create;
       // istek.LogId := ado.fieldbyname('SIRANO').AsInteger+1000;
        istek.Kodu := ckod;
        istek.Adi := ado.fieldbyname('NAME1').AsString;
        istek.KapId := 26;
        istek.OrnekTurId := '147';
        istek.AlindigiTarih := ATarih;
        istekler[i] := istek;
        i := i + 1;
      end;
      ado.Next;
    end;

    GelisBIO.Tetkikler := istekler;
    HastaTenay.Gelis := GelisBIO;




  ado.Free;
  result := HastaTenay;
end;
 }

function TfrmLabOrnekNoGiris.HastabilgileriDoldurSistem(dosyaNo : string ; gelis : string) : TenayService1.HastaBilgileri;
var
  sql : string;
  HastaTenay : TenayService1.HastaBilgileri;
  ado : TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  ado.Connection := datalar.ADOConnection2;
  HastaTenay := TenayService1.HastaBilgileri.Create;

  sql := 'select * from HastaKart where dosyano = ' + QuotedStr(dosyaNo);
  datalar.QuerySelect(ado,sql);

  HastaTenay.ReferansId := dosyaNo;
  HastaTenay.TCKimlik := ado.fieldbyname('TCKIMLIKNO').AsString;
  HastaTenay.Adi := ado.fieldbyname('HASTAADI').AsString;
  HastaTenay.Soyadi := ado.fieldbyname('HASTASOYADI').AsString;
  HastaTenay.Cinsiyeti := ifThen(ado.fieldbyname('CINSIYETI').AsString = '0','E','K');

  HastaTenay.DogumTarihi := FormattedTarih(ado.fieldbyname('DOGUMTARIHI').Asstring);
  ado.Free;
  result := HastaTenay;
end;


function TfrmLabOrnekNoGiris.HastabilgileriDoldurV2(dosyaNo : string ; gelis : string) : TenayServicev2.HastaBilgileri;
var
  sql : string;
  HastaTenay : TenayServicev2.HastaBilgileri;
  ado : TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  ado.Connection := datalar.ADOConnection2;
  HastaTenay := TenayServicev2.HastaBilgileri.Create;

  sql := 'select * from HastaKart where dosyano = ' + QuotedStr(dosyaNo);
  datalar.QuerySelect(ado,sql);
  HastaTenay.TCKimlik := ado.fieldbyname('TCKIMLIKNO').AsString;
  HastaTenay.Adi := ado.fieldbyname('HASTAADI').AsString;
  HastaTenay.Soyadi := ado.fieldbyname('HASTASOYADI').AsString;
  HastaTenay.Cinsiyeti := ifThen(ado.fieldbyname('CINSIYETI').AsString = '0','E','K');

  HastaTenay.DogumTarihi := FormattedTarih(ado.fieldbyname('DOGUMTARIHI').Asstring);
  ado.Free;
  result := HastaTenay;
end;

function TfrmLabOrnekNoGiris.HastabilgileriDoldurESY(dosyaNo : string ; gelis : string ; var adi : string ; var soyadi : string ;
                                     var tc : string ; var cins : string; var dtarihi : TXSDateTime) : ArrayOfInt;
var
  sql,ckod,turId ,kod: string;
  istekler: ArrayOfInt;
  ado : TADOQuery;
  i,j: integer;
begin
  ado := TADOQuery.Create(nil);
  ado.Connection := datalar.ADOConnection2;
//  HastaTenay := TenayServicev2.HastaBilgileri.Create;

  sql := 'select * from HastaKart where dosyano = ' + QuotedStr(dosyaNo);
  datalar.QuerySelect(ado,sql);
  TC := ado.fieldbyname('TCKIMLIKNO').AsString;
  Adi := ado.fieldbyname('HASTAADI').AsString;
  Soyadi := ado.fieldbyname('HASTASOYADI').AsString;
  Cins := ifThen(ado.fieldbyname('CINSIYETI').AsString = '0','Erkek','Kadýn');


  dtarihi.Year := strtoint(copy(ado.fieldbyname('DOGUMTARIHI').Asstring,1,4));
  dtarihi.Month := strtoint(copy(ado.fieldbyname('DOGUMTARIHI').Asstring,5,2));
  dtarihi.Day := strtoint(copy(ado.fieldbyname('DOGUMTARIHI').Asstring,7,2));

  i := 0;

  sql := 'select * from hareketler h' +
         ' join labtestler l on l.butKodu = h.code ' +
         ' where dosyaNo = ' + QuotedStr(dosyaNo) + ' and onay = 1 and gelisNo = ' + gelis +
         ' and charindex(''.'',code) = 0  and l.tip = 2';
  datalar.QuerySelect(ado,sql);
  j := ado.RecordCount;

  SetLength(istekler,j);
  kod := '0';
  while not ado.Eof do
  begin
    kod := KodEslestirKod(ado.fieldbyname('code').AsString,ckod,TurId);

    istekler[i] := strtoint(ifThen(kod='','0',kod));
    i := i + 1;

    if ckod <> ''
    Then begin
      j := j +1;
      SetLength(istekler,j);
      istekler[i] := strtoint(ifThen(ckod='','0',ckod));
      i := i + 1;
    end;
    ado.Next;
  end;

  ado.Free;
  result := istekler;
end;



(*
function TfrmLabOrnekNoGiris.HastabilgileriDoldurBio(dosyaNo : string ; gelis : string) : TenayServiceBio.HastaBilgileri;
var
  sql : string;
  HastaTenay : TenayServiceBio.HastaBilgileri;
  ado : TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  ado.Connection := datalar.ADOConnection2;
  HastaTenay := TenayServiceBio.HastaBilgileri.Create;

  sql := 'select * from HastaKart where dosyano = ' + QuotedStr(dosyaNo);
  datalar.QuerySelect(ado,sql);

  HastaTenay.ReferansId := dosyaNo;
  HastaTenay.TCKimlik := ado.fieldbyname('TCKIMLIKNO').AsString;
  HastaTenay.Adi := ado.fieldbyname('HASTAADI').AsString;
  HastaTenay.Soyadi := ado.fieldbyname('HASTASOYADI').AsString;
  HastaTenay.Cinsiyeti := ifThen(ado.fieldbyname('CINSIYETI').AsString = '0','E','K');

  HastaTenay.DogumTarihi := FormattedTarih(ado.fieldbyname('DOGUMTARIHI').Asstring);
  ado.Free;
  result := HastaTenay;
end;



function TfrmLabOrnekNoGiris.HastaGelisBilgileriDoldurBio(dosyaNo : string ; gelis : string ; Tip : string) : TenayServiceBio.GelisBilgileri;
var
  sql : string;
  HastaGelisBilgileriTenay : TenayServiceBio.GelisBilgileri;
  ado : TADOQuery;
begin
    ado := TADOQuery.Create(nil);
    ado.Connection := datalar.ADOConnection2;
    HastaGelisBilgileriTenay := TenayServiceBio.GelisBilgileri.Create;

    sql := 'select * from gelisler where dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNo = ' + gelis;
    datalar.QuerySelect(ado,sql);

    HastaGelisBilgileriTenay.ReferansId := Tip + ado.fieldbyname('SIRANO').Asstring;
    HastaGelisBilgileriTenay.Tarih := FormattedTarih(ado.fieldbyname('BHDAT').Asstring);


    ado.Free;
    result := HastaGelisBilgileriTenay;
end;
  *)

function TfrmLabOrnekNoGiris.HastaGelisBilgileriDoldurSistem(dosyaNo : string ; gelis : string) : TenayService1.GelisBilgileri;
var
  sql : string;
  HastaGelisBilgileriTenay : TenayService1.GelisBilgileri;
  ado : TADOQuery;
begin
    ado := TADOQuery.Create(nil);
    ado.Connection := datalar.ADOConnection2;
    HastaGelisBilgileriTenay := TenayService1.GelisBilgileri.Create;

    sql := 'select * from gelisler where dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNo = ' + gelis;
    datalar.QuerySelect(ado,sql);

    HastaGelisBilgileriTenay.ReferansId := ado.fieldbyname('SIRANO').Asstring;
    HastaGelisBilgileriTenay.Tarih := FormattedTarih(ado.fieldbyname('BHDAT').Asstring);

    HastaGelisBilgileriTenay.KurumKod := datalar._labkurumkod;
    HastaGelisBilgileriTenay.BolumKod := ado.fieldbyname('SERVIS').AsString;
    HastaGelisBilgileriTenay.DoktorKod := ado.fieldbyname('doktor').AsString;

    HastaGelisBilgileriTenay.NumuneAlmaTarihi := KanAlimTarihi(dosyaNO,gelis);



    ado.Free;
    result := HastaGelisBilgileriTenay;
end;




function TfrmLabOrnekNoGiris.HastaIstekBilgileriSistem(dosyaNo : string ; gelisNo : string) : TenayService1.ArrayOfIstekBilgileri;
var
  sql : string;
  istek : TenayService1.IstekBilgileri;
  istekler : TenayService1.ArrayOfIstekBilgileri;
  ado : TADOQuery;
  i , j , p : integer;
  kod , ckod,TurId : string;
begin
  i := 0;
  ado := TADOQuery.Create(nil);
  ado.Connection := datalar.ADOConnection2;

  sql := 'select * from hareketler h' +
         ' join labtestler l on l.butKodu = h.code ' +
         ' where dosyaNo = ' + QuotedStr(dosyaNo) + ' and onay = 1 and gelisNo = ' + gelisNo +
         ' and charindex(''.'',code) = 0  and l.tip = 2';
  datalar.QuerySelect(ado,sql);
  j := ado.RecordCount;
  SetLength(istekler,j);

  while not ado.Eof do
  begin
    istek := TenayService1.IstekBilgileri.Create;
    istek.ReferansId := strtoint('1' + ado.fieldbyname('SIRANO').AsString);
    ckod := '';

    kod := ado.fieldbyname('code').AsString;
    kod := KodEslestirKod(kod,ckod,TurId);


    istek.Kod := kod;
    istek.Adi := ado.fieldbyname('NAME1').AsString;

    istekler[i] := istek;
    i := i + 1;

    if ckod <> ''
    Then begin
      j := j +1;
      SetLength(istekler,j);
      istek := TenayService1.IstekBilgileri.Create;
      istek.ReferansId := strtoint('91' + ado.fieldbyname('SIRANO').AsString);
      istek.Kod := ckod;
      istek.Adi := ado.fieldbyname('NAME1').AsString;
      istekler[i] := istek;
      i := i + 1;
    end;
    ado.Next;
  end;

  result := istekler;
end;


function TfrmLabOrnekNoGiris.HastaIstekBilgileriMetdata(dosyaNo : string ; gelisNo : string ; tarih : string;tip : string) : IMeddataLabService1.Array_of_Tistekler;
var
  sql : string;
  istek : Tistekler;
  istekler : Array_of_Tistekler;
  ado : TADOQuery;
  i , j : integer;
  kod , ckod,TurId,sqlTip : string;
begin
  i := 1;
  ado := TADOQuery.Create(nil);
  ado.Connection := datalar.ADOConnection2;

  if tip = 'C'
  then
    sqlTip := ' and l.uygulamaAdet = 2'
  else
    sqlTip := '';

  sql := 'select * from hareketler h' +
         ' join labtestler l on l.butKodu = h.code ' +
         ' where dosyaNo = ' + QuotedStr(dosyaNo) + ' and onay = 1 and gelisNo = ' + gelisNo +
         ' and charindex(''.'',code) = 0  and l.tip = 2' + sqlTip;
  datalar.QuerySelect(ado,sql);
  j := ado.RecordCount;
  SetLength(istekler,j);

  while not ado.Eof do
  begin
    istek := Tistekler.Create;
    istek.hastane_rowid1 := tip+ado.fieldbyname('SIRANO').AsString;
    ckod := '';
    kod := ado.fieldbyname('code').AsString;;
    istek.sira_no := i;
    istek.Kodu := 0;//strtofloat(kod);
    istek.exkodu := KodEslestirKod(ado.fieldbyname('code').AsString,ckod,TurId);
    istek.girisyapan := '';
    istek.acilmi := 'F';
    istek.aciklama := ado.fieldbyname('NAME1').AsString;
    istek.tarih := FormattedTarih(ado.fieldbyname('TARIH').AsString);

    istekler[i-1] := istek;
    i := i + 1;

    (*
    if ckod <> ''
    Then begin
      j := j +1;
      SetLength(istekler,j);
      istek := Tistekler.Create;
      istek.sira_no := i;
      istek.hastane_rowid1 := inttostr(ado.fieldbyname('SIRANO').AsInteger+1000);
      istek.Kodu := strtofloat(ckod);
      istek.aciklama := ado.fieldbyname('NAME1').AsString;
      istek.tarih := tarih;
      istek.exkodu := ado.fieldbyname('code').AsString;
      istek.girisyapan := '';
      istek.acilmi := 'F';
      istekler[i] := istek;
      i := i + 1;
    end;
    *)


    ado.Next;
  end;

  result := istekler;
end;



function TfrmLabOrnekNoGiris.HastaIstekBilgileriv2(dosyaNo : string ; gelisNo : string) : TenayServicev2.ArrayOfTetkikKayit;
var
  sql : string;
  istek : TenayServicev2.TetkikKayit;
  istekler : TenayServicev2.ArrayOfTetkikKayit;
  ado : TADOQuery;
  i , j : integer;
  kod , ckod,TurId : string;
begin
  i := 0;
  ado := TADOQuery.Create(nil);
  ado.Connection := datalar.ADOConnection2;

  sql := 'select * from hareketler h' +
         ' join labtestler l on l.butKodu = h.code ' +
         ' where dosyaNo = ' + QuotedStr(dosyaNo) + ' and onay = 1 and gelisNo = ' + gelisNo +
         ' and charindex(''.'',code) = 0  and l.tip = 2';
  datalar.QuerySelect(ado,sql);
  j := ado.RecordCount;
  SetLength(istekler,j);

  while not ado.Eof do
  begin
    istek := TenayServicev2.tetkikkayit.Create;
    ckod := '';
    kod := KodEslestirKod(ado.fieldbyname('code').AsString,ckod,TurId);

    istek.Kodu := kod;
    istek.Adi := ado.fieldbyname('NAME1').AsString;

    istekler[i] := istek;
    i := i + 1;

    if ckod <> ''
    Then begin
      j := j +1;
      SetLength(istekler,j);
      istek := TenayServicev2.tetkikkayit.Create;
      istek.Kodu := ckod;
      istek.Adi := ado.fieldbyname('NAME1').AsString;
      istekler[i] := istek;
      i := i + 1;
    end;
    ado.Next;
  end;

  result := istekler;
end;


function TfrmLabOrnekNoGiris.HastaIstekBilgileriv2Cikis(dosyaNo : string ; gelisNo : string) : TenayServicev2.ArrayOfTetkikKayit;
var
  sql : string;
  istek : TenayServicev2.TetkikKayit;
  istekler : TenayServicev2.ArrayOfTetkikKayit;
  ado : TADOQuery;
  i , j : integer;
  kod , ckod,TurId : string;
begin
  i := 0;
  ado := TADOQuery.Create(nil);
  ado.Connection := datalar.ADOConnection2;

  sql := 'select * from hareketler h' +
         ' join labtestler l on l.butKodu = h.code ' +
         ' where dosyaNo = ' + QuotedStr(dosyaNo) + ' and onay = 1 and gelisNo = ' + gelisNo +
         ' and charindex(''.'',code) = 0  and l.tip = 2 and l.uygulamaAdet = 2';
  datalar.QuerySelect(ado,sql);
  j := ado.RecordCount;
  SetLength(istekler,j);

  while not ado.Eof do
  begin
    istek := TenayServicev2.tetkikkayit.Create;
    ckod := '';
    kod := KodEslestirKod(ado.fieldbyname('code').AsString,ckod,TurId);

    istek.Kodu := kod;
    istek.Adi := ado.fieldbyname('NAME1').AsString;

    istekler[i] := istek;
    i := i + 1;

    if ckod <> ''
    Then begin
      j := j +1;
      SetLength(istekler,j);
      istek := TenayServicev2.tetkikkayit.Create;
      istek.Kodu := ckod;
      istek.Adi := ado.fieldbyname('NAME1').AsString;
      istekler[i] := istek;
      i := i + 1;
    end;
    ado.Next;
  end;

  result := istekler;
end;


(*

function TfrmLabOrnekNoGiris.HastaIstekBilgileriBio(dosyaNo : string ; gelisNo : string ; Tip : string) : TenayServiceBio.ArrayOfIstekBilgileri;
var
  sql : string;
  istek : TenayServiceBio.IstekBilgileri;
  istekler : TenayServicebio.ArrayOfIstekBilgileri;
  ado : TADOQuery;
  i , j : integer;
  kod , ckod,TurId ,_tip_ : string;
begin

  if Tip = 'C'
  then _tip_ := ' and adet = 2'
  else _tip_ := '';


      i := 0;
      ado := TADOQuery.Create(nil);
      ado.Connection := datalar.ADOConnection2;

      sql := 'select * from hareketler h' +
             ' join labtestler l on l.butKodu = h.code ' +
             ' where dosyaNo = ' + QuotedStr(dosyaNo) + ' and onay = 1 and gelisNo = ' + gelisNo +
             ' and charindex(''.'',code) = 0 and l.tip = 2 ' + _tip_;
      datalar.QuerySelect(ado,sql);
      j := ado.RecordCount;
      SetLength(istekler,j);

      while not ado.Eof do
      begin
        istek := TenayServiceBio.IstekBilgileri.Create;
        istek.ReferansId := ado.fieldbyname('SIRANO').AsInteger;
        ckod := '';
        kod := KodEslestirKod(ado.fieldbyname('code').AsString,ckod,TurId);

        istek.Kod := kod;
        istek.Adi := ado.fieldbyname('NAME1').AsString;

        istekler[i] := istek;
        i := i + 1;
        ado.Next;
      end;
      result := istekler;

end;

  *)


function TfrmLabOrnekNoGiris.HastabilgileriDoldurANKA(dosyaNo : string ; gelis : string) : IMDLSHastaIslemleri1.HastaBilgileri;
var
  sql : string;
  HastaAnka : IMDLSHastaIslemleri1.HastaBilgileri;
  Tarih : TarihBilgisi;
  ado : TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  ado.Connection := datalar.ADOConnection2;
  HastaAnka := IMDLSHastaIslemleri1.HastaBilgileri.Create;
  Tarih := TarihBilgisi.Create;
  sql := 'select * from HastaKart where dosyano = ' + QuotedStr(dosyaNo);
  datalar.QuerySelect(ado,sql);

  HastaAnka.ReferansId := dosyaNo;
  HastaAnka.TCKimlik := ado.fieldbyname('TCKIMLIKNO').AsString;
  HastaAnka.Adi := ado.fieldbyname('HASTAADI').AsString;
  HastaAnka.Soyadi := ado.fieldbyname('HASTASOYADI').AsString;
  HastaAnka.Cinsiyeti := ifThen(ado.fieldbyname('CINSIYETI').AsString = '0','E','K');

  Tarih.Yil := strtoint(copy(ado.fieldbyname('DOGUMTARIHI').Asstring,1,4));
  Tarih.Ay :=  strtoint(copy(ado.fieldbyname('DOGUMTARIHI').Asstring,5,2));
  Tarih.Gun := strtoint(copy(ado.fieldbyname('DOGUMTARIHI').Asstring,7,2));

  HastaAnka.DogumTarihi := Tarih;


  ado.Free;
  result := HastaAnka;
end;


function TfrmLabOrnekNoGiris.HastabilgileriDoldurDerman(dosyaNo : string ; gelis : string ; id,ornekno : string) : HastaTahlilBilgileriGiris;
var
  sql : string;
  Hasta : HastaTahlilBilgileriGiris;
  Hizmet : string;
  Hizmetler : LabIslemleri.ArrayOfString;
  Tarih : TarihBilgisi;
  ado : TADOQuery;
  i,j : integer;
begin
  ado := TADOQuery.Create(nil);
  ado.Connection := datalar.ADOConnection2;
  Hasta := HastaTahlilBilgileriGiris.Create;
  Tarih := TarihBilgisi.Create;
  sql := 'select * from HastaKart where dosyano = ' + QuotedStr(dosyaNo);
  datalar.QuerySelect(ado,sql);

  Hasta.GelenHastaid := id;
  Hasta.OrnekNo := ornekNo;
  Hasta.TCKimlik := ado.fieldbyname('TCKIMLIKNO').AsString;
  Hasta.Adi := ado.fieldbyname('HASTAADI').AsString;
  Hasta.Soyadi := ado.fieldbyname('HASTASOYADI').AsString;
  Hasta.Cinsiyet := ifThen(ado.fieldbyname('CINSIYETI').AsString = '0','E','B');
  Hasta.DogumTarihi := FormattedTarih(ado.fieldbyname('DOGUMTARIHI').Asstring);
  Hasta.Serverid := '';


  sql := 'select islemKodu from hareketler h ' +
         ' join labtestler l on l.butkodu = h.code ' +
         ' where dosyaNo = ' + QuotedStr(dosyaNo) + ' and onay = 1 and gelisNo = ' + gelis +
         ' and charindex(''.'',code)= 0 ';

  datalar.QuerySelect(ado,sql);
  j := ado.RecordCount;
  SetLength(Hizmetler,j);
  i := 0;
  while not ado.Eof do
  begin
    Hizmet := ado.fieldbyname('islemKodu').AsString;
    Hizmetler[i] := Hizmet;
    i := i + 1;
    ado.Next;
  end;

  Hasta.HizmetListe := Hizmetler;

  ado.Free;
  result := Hasta;
end;


function TfrmLabOrnekNoGiris.HastabilgileriDoldurDermanCikis(dosyaNo : string ; gelis : string ; id,ornekno : string) : HastaTahlilBilgileriGiris;
var
  sql : string;
  Hasta : HastaTahlilBilgileriGiris;
  Hizmet : string;
  Hizmetler : LabIslemleri.ArrayOfString;
  Tarih : TarihBilgisi;
  ado : TADOQuery;
  i,j : integer;
begin
  ado := TADOQuery.Create(nil);
  ado.Connection := datalar.ADOConnection2;
  Hasta := HastaTahlilBilgileriGiris.Create;
  Tarih := TarihBilgisi.Create;
  sql := 'select * from HastaKart where dosyano = ' + QuotedStr(dosyaNo);
  datalar.QuerySelect(ado,sql);

  Hasta.GelenHastaid := id;
  Hasta.OrnekNo := ornekNo;
  Hasta.TCKimlik := ado.fieldbyname('TCKIMLIKNO').AsString;
  Hasta.Adi := ado.fieldbyname('HASTAADI').AsString;
  Hasta.Soyadi := ado.fieldbyname('HASTASOYADI').AsString;
  Hasta.Cinsiyet := ifThen(ado.fieldbyname('CINSIYETI').AsString = '0','E','B');
  Hasta.DogumTarihi := FormattedTarih(ado.fieldbyname('DOGUMTARIHI').Asstring);
  Hasta.Serverid := '';


  sql := 'select islemKodu from hareketler h ' +
         ' join labtestler l on l.butkodu = h.code ' +
         ' where dosyaNo = ' + QuotedStr(dosyaNo) +
         ' and onay = 1 and gelisNo = ' + gelis + ' and Adet = 2';


  datalar.QuerySelect(ado,sql);
  j := ado.RecordCount;
  SetLength(Hizmetler,j);
  i := 0;
  while not ado.Eof do
  begin
    Hizmet := ado.fieldbyname('islemKodu').AsString;
    Hizmetler[i] := Hizmet;
    i := i + 1;
    ado.Next;
  end;

  Hasta.HizmetListe := Hizmetler;

  ado.Free;
  result := Hasta;
end;



function TfrmLabOrnekNoGiris.HastabilgileriDoldurCentro(dosyaNo : string ; gelis : string ; id : string ; ornekno : Array of string) : Job;
var
  sql : string;
  Hasta : job;
  _Samples_ : Array_Of_Sample;
  _sample_ : Sample;
  _cup_ : Cup;
  _cups_ : Array_Of_Cup;
  _order_ : Order;
  _orders_ : Array_Of_Order;
  _sampleName_ : SampleName;
  _sampleNames_ : Array_Of_SampleName;
  ado : TADOQuery;
  i,j,ji : integer;
  d1 : TXSDateTime;
  _Lang_ : Language;
  _Langs_ : Array_Of_Language;
  datarow : TFieldList;

function fsample(code,name : string ; SampleTypeRef : Int64) : Sample;
var
  _Sample_ : Sample;
begin
  _Sample_ := Sample.Create;
  _sample_.Reference := id;
  _Sample_.SampleTypeRef := SampleTypeRef;
  d1 := TXSDateTime.Create;
  try
    DatetoxsDate(d1,strtodate(FormattedTarih(KanAlimTarihi(dosyaNo,gelis))));
  _Sample_.ExtractDt := d1;
  except
    ShowMessageSkin('Kan Alým Tarihi Hatalý','','','info');
    exit;
  end;

  if Code = ''
  then begin
  end
  else
  begin
    SetLength(_cups_,1);
   _cup_ := Cup.Create;
   _cup_.Code := code;
   _cups_[0] := _cup_;
   _sample_.Cup := _cups_;
  end;

 (*
  SetLength(_sampleNames_,1);
  _sampleName_ := SampleName.Create;
  _sampleName_.Name_ := name;
  _sampleName_.LanguageId := 1;
  _sampleNames_[0] := _sampleName_;
  _sample_.SampleName := _sampleNames_;   *)

  result := _Sample_;
end;


begin
  ado := TADOQuery.Create(nil);
  ado.Connection := datalar.ADOConnection2;
  Hasta := job.Create;

  sql := 'select * from HastaKart where dosyano = ' + QuotedStr(dosyaNo);
  datalar.QuerySelect(ado,sql);

  Hasta.Reference := dosyaNo;
  Hasta.IdentityNo := ado.fieldbyname('TCKIMLIKNO').AsString;
  Hasta.DonorName := ado.fieldbyname('HASTAADI').AsString + ' ' +ado.fieldbyname('HASTASOYADI').AsString;

  SetLength(_Langs_,1);
  _Lang_ := Language.Create;
  _Lang_.Id := 1;
  _Langs_[0] := _Lang_;
  Hasta.Language := _Langs_;

  sql := 'EXEC sp_CentroGrupList ' + QuotedStr(dosyaNo) + ',' + gelis;
  datalar.QuerySelect(ado,sql);
  j := ado.RecordCount;

  SetLength(_Samples_,j);
  i := 0;
  while not ado.Eof do
  begin
   _Samples_[i] := fsample(ornekNo[ado.Fields[0].AsInteger],ado.Fields[1].Value,ado.Fields[2].Value);
   ado.Next;
   i := i + 1;
  end;

  Hasta.Sample := _Samples_;

  sql := 'select case when CHARINDEX(''.'',islemKoduC) > 0 then substring(islemKoduC,1,(CHARINDEX(''.'',islemKoduC)-1)) ELSE islemKoduC end islemKoduC from hareketler h ' +
         ' join labtestler l on l.butkodu = h.code ' +
         ' where dosyaNo = ' + QuotedStr(dosyaNo) +
         ' and onay = 1 and gelisNo = ' + gelis + ' and Adet = 2 and l.Tip = 2' +
         ' Union All ' +
         'select case when CHARINDEX(''.'',islemKodu) > 0 then substring(islemKodu,1,(CHARINDEX(''.'',islemKodu)-1)) ELSE islemKodu end from hareketler h ' +
         ' join labtestler l on l.butkodu = h.code ' +
         ' where dosyaNo = ' + QuotedStr(dosyaNo) + ' and onay = 1 and gelisNo = ' + gelis +
         ' and charindex(''.'',code)= 0 and l.Tip = 2';

  datalar.QuerySelect(ado,sql);
  j := ado.RecordCount;
  SetLength(_orders_,j);
  i := 0;
  while not ado.Eof do
  begin
    _order_ := Order.Create;
    _order_.TestTypeCode := ado.fieldbyname('islemKoduC').AsString;
    _order_.Quantity := 1;
    _orders_[i] := _order_;
    i := i + 1;
    ado.Next;
  end;
  ado.Free;

  Hasta.Order := _orders_;
  result := Hasta;
end;


function TfrmLabOrnekNoGiris.HastabilgileriDoldurVentura(var Hasta : EntegRec;dosyaNo : string ; gelis : string) : string;
var
  sql : string;
  ado : TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  ado.Connection := datalar.ADOConnection2;
 // Hasta := EntegRec.Create;
  sql := 'select * from HastaKart where dosyano = ' + QuotedStr(dosyaNo);
  datalar.QuerySelect(ado,sql);

  if datalar.DosyaNOONEK = ''
  then
    Hasta.DOSYA_NO := dosyaNo
  else
    Hasta.DOSYA_NO := datalar.DosyaNOONEK + inttostr(strtoint(dosyaNo));

  Hasta.TC_KIMLIKNO := ado.fieldbyname('TCKIMLIKNO').AsString;
  Hasta.AD := ado.fieldbyname('HASTAADI').AsString;
  Hasta.SOYAD := ado.fieldbyname('HASTASOYADI').AsString;
  Hasta.GELIS_NO := gelis;
  if ado.fieldbyname('CINSIYETI').AsString = '0'
  then
   Hasta.CINSIYET := AlisWs.CINSIYET_TIPI.ERKEK
  else
   Hasta.CINSIYET := AlisWs.CINSIYET_TIPI.KADIN;

  Hasta.DOGUM_TARIHI := FormattedTarih(ado.fieldbyname('DOGUMTARIHI').AsString);
  hasta.SERPOL := AlisWs.SERPOL_TIPI.POLIKLINIK;
  hasta.YATAN := AlisWs.YATAN_TIPI.AYAKTAN;


  ado.Free;
  result := 'OK';
end;


function TfrmLabOrnekNoGiris.HastabilgileriDoldurMetdata(var Hasta : Tistekgiris;var tarih : string;dosyaNo : string ; gelis : string) : string;
var
  sql : string;
  ado : TADOQuery;
  kimlik : Tkimlik;
begin
  ado := TADOQuery.Create(nil);
  ado.Connection := datalar.ADOConnection2;
 // Hasta := EntegRec.Create;
  sql := 'select * from HastaKart where dosyano = ' + QuotedStr(dosyaNo);
  datalar.QuerySelect(ado,sql);

  Hasta.tckimlik_no := strtofloat(ado.fieldbyname('TCKIMLIKNO').AsString);

//  Hasta.dosya_no := dosyaNo;
 // soyad := ado.fieldbyname('HASTASOYADI').AsString;

  kimlik := Tkimlik.Create;
  kimlik.dosya_no := dosyaNo;
  kimlik.tckimlik_no := ado.fieldbyname('TCKIMLIKNO').AsString;
  kimlik.adi := TrtoEng(ado.fieldbyname('HASTAADI').AsString);
  kimlik.soyadi := TrtoEng(ado.fieldbyname('HASTASOYADI').AsString);
  kimlik.dogumtarihi := formattedtarih(ado.fieldbyname('DOGUMTARIHI').AsString);
  if ado.fieldbyname('CINSIYETI').AsString = '0'
  then
     kimlik.cins := 'E'
  else
     kimlik.cins := 'K';
  kimlik.anne_adi := ado.fieldbyname('ANAADI').AsString;

  hasta.kimlik := kimlik;


  hasta.istek_tarihi := formattedtarih(KanAlimTarihi(dosyaNO,gelis));
  tarih := hasta.istek_tarihi;




  ado.Free;
  result := 'OK';
end;



function TfrmLabOrnekNoGiris.HastaGelisBilgileriDoldurANKA(dosyaNo : string ; gelis : string) : IMDLSHastaIslemleri1.GelisBilgileri;
var
  sql : string;
  HastaGelisBilgileriAnka : IMDLSHastaIslemleri1.GelisBilgileri;
  Tarih : TarihBilgisi;
  ado : TADOQuery;
begin
    ado := TADOQuery.Create(nil);
    ado.Connection := datalar.ADOConnection2;
    HastaGelisBilgileriAnka := IMDLSHastaIslemleri1.GelisBilgileri.Create;
    Tarih := TarihBilgisi.Create;

    sql := 'select * from gelisler where dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNo = ' + gelis;
    datalar.QuerySelect(ado,sql);

    HastaGelisBilgileriAnka.ReferansId := ado.fieldbyname('SIRANO').Asstring;
    Tarih.Yil := strtoint(copy(ado.fieldbyname('BHDAT').Asstring,1,4));
    Tarih.Ay :=  strtoint(copy(ado.fieldbyname('BHDAT').Asstring,5,2));
    Tarih.Gun := strtoint(copy(ado.fieldbyname('BHDAT').Asstring,7,2));

    HastaGelisBilgileriAnka.Tarih := Tarih;
    HastaGelisBilgileriAnka.KurumKod := datalar._labkurumkod;
    HastaGelisBilgileriAnka.BolumKod := ado.fieldbyname('SERVIS').AsString;
    HastaGelisBilgileriAnka.DoktorTescilNo := doktorTescil(ado.fieldbyname('doktor').AsString);


    ado.Free;
    result := HastaGelisBilgileriAnka;

end;

function TfrmLabOrnekNoGiris.HastaIstekBilgileriInVitro(dosyaNo : string ; gelisNo , Tip : string) : TTESTARRAY;
var
  sql : string;
  Testler : TTESTARRAY;
  ado : TADOQuery;
  i , j : integer;
  kod , ckod : string;
begin
  i := 0;
  ado := TADOQuery.Create(nil);
  ado.Connection := datalar.ADOConnection2;

  if Tip = 'C'
  Then
    sql := 'select * from hareketler where dosyaNo = ' + QuotedStr(dosyaNo) +
           ' and onay = 1 and gelisNo = ' + gelisNo + ' and Adet = 2'
  Else
    sql := 'select * from hareketler where dosyaNo = ' + QuotedStr(dosyaNo) +
           ' and onay = 1 and gelisNo = ' + gelisNo +
           ' and charindex(''.'',code)= 0 ';


  datalar.QuerySelect(ado,sql);
  j := ado.RecordCount;
  SetLength(Testler,j);

  while not ado.Eof do
  begin

    Testler[i] := ado.fieldbyname('code').AsString;

    i := i + 1;

    ado.Next;
  end;

  result := Testler;
end;


function TfrmLabOrnekNoGiris.HastaIstekBilgileriVentura(dosyaNo : string ; gelisNo , Tip : string) : string;
var
  sql : string;
  Testler : string;
  ado : TADOQuery;
  i , j : integer;
  kod , ckod : string;
begin
  i := 0;
  ado := TADOQuery.Create(nil);
  ado.Connection := datalar.ADOConnection2;
  Testler := '';

//  if Tip = 'C'
//  Then
    sql := 'select islemKoduC from hareketler h ' +
           ' join labtestler l on l.butkodu = h.code ' +
           ' where dosyaNo = ' + QuotedStr(dosyaNo) +
           ' and onay = 1 and gelisNo = ' + gelisNo + ' and Adet = 2' +
           ' Union All ' +
           'select islemKodu from hareketler h ' +
           ' join labtestler l on l.butkodu = h.code ' +
           ' where dosyaNo = ' + QuotedStr(dosyaNo) + ' and onay = 1 and gelisNo = ' + gelisNo +
           ' and charindex(''.'',code)= 0 ';

  datalar.QuerySelect(ado,sql);
  j := ado.RecordCount;
  while not ado.Eof do
  begin
    Testler := Testler + '|' + ado.fieldbyname('islemKoduC').AsString;
    i := i + 1;
    ado.Next;
  end;


  result := copy(Testler,2,500);
end;


procedure TfrmLabOrnekNoGiris.K2Click(Sender: TObject);
var
  i , j , r : integer;
  p : TPoint;
  dosyaNo,gelisNo,sql,GC,ss,ornekNo,id,_F_,testKod,min,max,sonuc,sonucA,sm : string;
  ado,adoB : TADOQuery;
  t : boolean;
  Ornekler : array of string;
begin
    ado := TADOQuery.Create(nil);
    ado.Connection := datalar.ADOConnection2;
    adoB := TADOQuery.Create(nil);
    adoB.Connection := datalar.ADOConnection2;


    For r := 1 to gridAktif.RowCount - 2 do
    Begin
      Application.ProcessMessages;
      gridAktif.GetCheckBoxState(1,r,t);

      if  (t = True) and (gridAktif.Cells[8,r] = 'Yeni Kayýt')
      Then Begin
         dosyaNo := gridAktif.Cells[1,r];
         gelisNo := gridAktif.Cells[2,r];
         id := gridAktif.Cells[6,r];
         SetLength(Ornekler,0);

         sql := 'EXEC sp_CentroGrupList ' + QuotedStr(dosyaNo) + ',' + gelisNo;
         datalar.QuerySelect(ado,sql);
         j := ado.RecordCount;
         SetLength(Ornekler,j);

         sql := 'select top ' + inttostr(j)  + ' * from Centro_barkodlar where durum = 0';
         datalar.QuerySelect(adoB,sql);
         i := 0;
         while not adoB.Eof do
         begin
              Ornekler[i] := adoB.Fields[0].AsString;
              adoB.Next;
              i := i + 1;
         end;

         i := 0;
         while not ado.Eof do
         begin
              gridAktif.Cells[ado.FieldByName('colNo').AsInteger,r] := Ornekler[i];
              ado.Next;
              i := i + 1;
         end;


         sql := 'update gelisler set OrnekNo_Serum = ' + QuotedStr(gridAktif.Cells[11,r]) +
                ', OrnekNo_TamKan = ' + QuotedStr(gridAktif.Cells[12,r]) +
                ', OrnekNo_Plazma = ' + QuotedStr(gridAktif.Cells[10,r]) +
                ', OrnekNo = ' + QuotedStr(gridAktif.Cells[4,r]) +
                ', CikisOrnekNo = ' + QuotedStr(gridAktif.Cells[5,r]) +
                ' where dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNo = ' + gelisNo;
         datalar.QueryExec(adoB,sql);

         sql := 'update Centro_barkodlar set durum = 1 ' +
                ' where barkodNo in (select top ' + inttostr(j) + ' barkodNo from Centro_barkodlar where durum = 0)';
         datalar.QueryExec(adoB,sql);


      End;
    End;

    ado.Free;
    adoB.Free;



end;

function TfrmLabOrnekNoGiris.HastaIstekBilgileriANKA(dosyaNo : string ; gelisNo : string) : IMDLSHastaIslemleri1.ArrayOfIstekBilgileri;
var
  sql : string;
  istek : IMDLSHastaIslemleri1.IstekBilgileri;
  istekler : IMDLSHastaIslemleri1.ArrayOfIstekBilgileri;
  Tarih : TarihBilgisi;
  ado : TADOQuery;
  i , j : integer;
  kod , ckod , turId: string;
begin
  i := 0;
  ado := TADOQuery.Create(nil);
  ado.Connection := datalar.ADOConnection2;
  Tarih := TarihBilgisi.Create;
  sql := 'select * from hareketler where dosyaNo = ' + QuotedStr(dosyaNo) +
         ' and onay = 1 and gelisNo = ' + gelisNo;
  datalar.QuerySelect(ado,sql);
  j := ado.RecordCount;
  SetLength(istekler,j);

  while not ado.Eof do
  begin
    istek := IMDLSHastaIslemleri1.IstekBilgileri.Create;
    istek.ReferansId := ado.fieldbyname('SIRANO').AsString;
    ckod := '';
    kod := KodEslestirKod(ado.fieldbyname('code').AsString,ckod,turId);

    istek.Kod := strtoint(ifThen(kod='','0',kod));
    istek.Adi := ado.fieldbyname('NAME1').AsString;

    Tarih.Yil := strtoint(copy(ado.fieldbyname('TARIH').Asstring,1,4));
    Tarih.Ay :=  strtoint(copy(ado.fieldbyname('TARIH').Asstring,5,2));
    Tarih.Gun := strtoint(copy(ado.fieldbyname('TARIH').Asstring,7,2));

    istek.IstemTarihi := Tarih;
    istekler[i] := istek;
    i := i + 1;

    if ckod <> ''
    Then begin
      j := j +1;
      SetLength(istekler,j);
      istek := IMDLSHastaIslemleri1.IstekBilgileri.Create;
      istek.ReferansId := ado.fieldbyname('SIRANO').AsString;
      istek.Kod := strtoint(ifThen(ckod='','0',ckod));
      istek.Adi := ado.fieldbyname('NAME1').AsString;

      Tarih.Yil := strtoint(copy(ado.fieldbyname('TARIH').Asstring,1,4));
      Tarih.Ay :=  strtoint(copy(ado.fieldbyname('TARIH').Asstring,5,2));
      Tarih.Gun := strtoint(copy(ado.fieldbyname('TARIH').Asstring,7,2));

      istek.IstemTarihi := Tarih;
      istekler[i] := istek;
      i := i + 1;
    end;


    ado.Next;
  end;

  result := istekler;
end;

procedure TfrmLabOrnekNoGiris.mnSe1Click(Sender: TObject);
var
 i : integer;
begin

  for i := 1 to gridAktif.RowCount - 2 do
  begin
     gridAktif.SetCheckBoxState(1,i,true);
  end;

end;

procedure TfrmLabOrnekNoGiris.mptal1Click(Sender: TObject);
var
 i : integer;
begin

  for i := 1 to gridAktif.RowCount - 2 do
  begin
     gridAktif.SetCheckBoxState(1,i,false);
  end;

end;

procedure TfrmLabOrnekNoGiris.N12Click(Sender: TObject);
var
  OkuCvp : BirlabService.HastaListesiCevap;
  sm , VENPASS,VENUSER,KURUM_KODU , SERVIS_KODU ,t1,t2 ,dosyaNo,gelisNo,sql : string;
  x : integer;
  ado : TADOQuery;
  p : TPoint;
begin
  inherited;

    datalar.Login;

    VENPASS := datalar._labsifre;
    VENUSER := datalar._labusername;
    KURUM_KODU := datalar._labkurumkod;//datalar._labkurumkodText+datalar._labkurumkod;
    datalar.Birlab.URL := datalar._laburl;
    SERVIS_KODU := datalar.kontrolKod;

    t1 := tarihal(txtTarih.Date);
    t2 := tarihal(txttarih1.Date);

    OkuCvp := BirlabService.HastaListesiCevap.Create;

    ado := TADOQuery.Create(nil);
    ado.Connection := datalar.ADOConnection2;

    try
     OkuCvp := (datalar.Birlab as ServiceSoap).HastaListesi(KURUM_KODU,VENUSER,VENPASS,t1,t2);
    except on e : Exception do
     begin
       sm := e.Message;
     end;
    end;

    if OkuCvp.SonucKodu = '0'
    Then Begin
      if length(OkuCvp.Hst) > 0
      Then Begin
        for x := 0 to length(OkuCvp.Hst) - 1 do
        begin
           p.X := 1;
           p.Y := 1;
           p := gridAktif.Find(p,OkuCvp.Hst[x].TckimlikNo,[fnAutoGoto]);
           dosyaNo := gridAktif.Cells[1,p.Y];
           gelisNo := gridAktif.Cells[2,p.y];

           sql := 'update gelisler  set ornekNo = ' + QuotedStr(OkuCvp.Hst[x].ornekNo) +
                     ' from gelisler g ' +
                     ' join hastakart h on h.dosyaNo = g.dosyaNo ' +
                     ' where TCKIMLIKNO = ' + QuotedStr(OkuCvp.Hst[x].TckimlikNo) +
                     ' and between BHDAT ' + QuotedStr(t1) + ' and ' + QuotedStr(t2);
           datalar.QueryExec(ado,sql);

           gridAktif.Cells[4,p.y] := OkuCvp.Hst[x].ornekNo;

        end;
      End;
    End;

    ado.Free;
end;

procedure TfrmLabOrnekNoGiris.N16Click(Sender: TObject);
var
  alisGon : OrnekFiltre;
  alisCvp : OrnekListesi;
  Kullanici : KullaniciBilgisi;

  d1,d2 : TXSDateTime;
  i : integer;
  p : TPoint;
  dosyaNo,gelisNo,sql,GC : string;
  ado : TADOQuery;
begin
  inherited;

  datalar.Login;
  ado := TADOQuery.Create(nil);
  ado.Connection := datalar.ADOConnection2;

  alisGon := OrnekFiltre.Create;
  alisCvp := OrnekListesi.Create;
  kullanici := KullaniciBilgisi.Create;
  kullanici.KullaniciAdi := datalar._labusername;
  Kullanici.KullaniciSifresi := datalar._labsifre;

  d1 := TXSDateTime.Create;
  d2 := TXSDateTime.Create;

  DatetoxsDate(d1,txtTarih.Date);
  DatetoxsDate(d2,txtTarih1.Date);

  alisGon.KurumKodu := strtoint(datalar._labkurumkod);



  alisGon.KayitTarihiBaslangic := d1;
  alisGon.KayitTarihiBitis := d2;

  datalar.Winsoft.URL := datalar._laburl;
  datalar.Winsoft.SOAPHeaders.Send(Kullanici);

  //datalar.Alis.URL := 'http://services.asta.gen.tr/AlisHizmetler.asmx';

  try
   alisCvp := (datalar.Winsoft as WinLisWebServiceSoap).IstemTarihineGoreHastaListesiVer(alisGon);
  except on e : exception do
   begin
      ShowMessage(e.Message);
   end;
  end;


  if length(alisCvp.Liste) > 0
  Then Begin
    for i := 0 to length(alisCvp.Liste) - 1 do
    begin
       p.X := 1;
       p.Y := 1;

       p := gridAktif.Find(p,alisCvp.Liste[i].HastaTCKimlikNo,[fnAutoGoto]);
       if p.y > 0
       then begin
         dosyaNo := gridAktif.Cells[1,p.Y];
         gelisNo := gridAktif.Cells[2,p.y];

         if gridAktif.Cells[4,p.y] = ''
         Then begin
          GC := 'ornekNo';
          gridAktif.Cells[4,p.y] := floattostr(alisCvp.Liste[i].Ornekno);
         end
         Else begin
          GC := 'CikisOrnekNo';
          gridAktif.Cells[5,p.y] := floattostr(alisCvp.Liste[i].Ornekno);
         end;

         sql := 'update gelisler  set ' + GC + '=' + QuotedStr(floattostr(alisCvp.Liste[i].Ornekno)) +
                 ' from gelisler g ' +
                 ' join hastakart h on h.dosyaNo = g.dosyaNo ' +
                 ' where TCKIMLIKNO = ' + QuotedStr(alisCvp.Liste[i].HastaTCKimlikNo) +
                 ' and BHDAT between ' + QuotedStr(tarihal(txtTarih.Date)) + ' and ' + QuotedStr(tarihal(txttarih1.Date));
         datalar.QueryExec(ado,sql);

       end; // p.y > 0
    end;  // for end
  End // length(alisCvp.Patients) > 0
  else
   txtLog.Text := alisCvp.IslemSonucMesaji;

end;

procedure TfrmLabOrnekNoGiris.N27Click(Sender: TObject);
var
  alisCvp : HastaListesi;
  _Hasta_ : Intermedia.Hasta;
  Kullanici : AuthHeader;
  raporlar : HastaninRaporlari;
  d1,d2 : string;
  i : integer;
  p : TPoint;
  dosyaNo,gelisNo,sql,GC ,sm: string;
  ado : TADOQuery;
begin
  inherited;

  datalar.Login;
  ado := TADOQuery.Create(nil);
  ado.Connection := datalar.ADOConnection2;

  alisCvp := HastaListesi.Create;
  kullanici := AuthHeader.Create;
  kullanici.Username := 'ÇOKAYDÝYALÝZ';//datalar._labusername;
  Kullanici.Password := 'DAA903';//datalar._labsifre;

  datalar.Intermedia.URL := 'http://78.187.93.245/webservis/SoapServis.asmx';//datalar._laburl;
  datalar.Intermedia.SOAPHeaders.Send(Kullanici);

  d1 := datetostr(txtTarih.Date);
  d2 := datetostr(txtTarih1.Date);

  try
   alisCvp := (datalar.Intermedia as SoapServisSoap).HastaListesiGetir(d1,d2);
  except on e : Exception do
   begin
     sm := e.Message;
   end;
  end;

  for _hasta_ in alisCvp.Hastalar do
  begin
    try
     raporlar := (datalar.Intermedia as SoapServisSoap).HastaninRaporlariniGetir(_hasta_.HastaNo,d1,d2);
    except on e : Exception do
     begin
       sm := e.Message;
     end;
    end;




  end;



end;

procedure TfrmLabOrnekNoGiris.N29Click(Sender: TObject);
var
  Gon : HastaOrnekNoListele;
  Cvp : HastaOrnekNoListeleResponse;
  d1,d2 : TXSDateTime;
  i : integer;
  p : TPoint;
  dosyaNo,gelisNo,sql,GC : string;
  ado : TADOQuery;
begin
  inherited;

  datalar.Login;
  ado := TADOQuery.Create(nil);
  ado.Connection := datalar.ADOConnection2;

  Gon := HastaOrnekNoListele.Create;
  Cvp := HastaOrnekNoListeleResponse.Create;
  d1 := TXSDateTime.Create;
  d2 := TXSDateTime.Create;

  DatetoxsDate(d1,txtTarih.Date);
  DatetoxsDate(d2,txtTarih1.Date);
  Gon.kurumKodu := datalar._labusername;
  Gon.kurumSifre := datalar._labsifre;
  Gon.tarih1 := d1;
  Gon.tarih2 := d2;

  datalar.Gemsoft.URL := datalar._laburl;

  try
   Cvp := (datalar.Gemsoft as IstekGonderSoap).HastaOrnekNoListele(Gon);
  except on e : exception do
   begin
      ShowMessage(e.Message);
   end;
  end;


  if length(Cvp.tetkikSonuc) > 0
  Then Begin
    for i := 0 to length(Cvp.tetkikSonuc) - 1 do
    begin
       p.X := 1;
       p.Y := 1;

       p := gridAktif.Find(p,Cvp.tetkikSonuc[i].TcNo,[fnAutoGoto]);
       if p.y > 0
       then begin
         dosyaNo := gridAktif.Cells[1,p.Y];
         gelisNo := gridAktif.Cells[2,p.y];

//         if alisCvp.Patients[i].GirisCikis = 'G'
//         Then begin
          GC := 'ornekNo';
          gridAktif.Cells[4,p.y] := inttostr(Cvp.tetkikSonuc[i].OrnekNo);
//         end
//         Else begin
//          GC := 'CikisOrnekNo';
//          gridAktif.Cells[5,p.y] := inttostr(alisCvp.Patients[i].Ornekno);
//         end;

         sql := 'update gelisler  set ' + GC + '=' + QuotedStr(inttostr(Cvp.tetkikSonuc[i].OrnekNo)) +
                 ' from gelisler g ' +
                 ' join hastakart h on h.dosyaNo = g.dosyaNo ' +
                 ' where TCKIMLIKNO = ' + QuotedStr(Cvp.tetkikSonuc[i].TcNo) +
                 ' and BHDAT between ' + QuotedStr(tarihal(txtTarih.Date)) + ' and ' + QuotedStr(tarihal(txttarih1.Date));
         datalar.QueryExec(ado,sql);

       end; // p.y > 0
    end;  // for end
  End; // length(alisCvp.Patients) > 0


end;


procedure TfrmLabOrnekNoGiris.N30Click(Sender: TObject);
var
  Gon : OrnekNoyaGoreSorgula;
  Cvp : OrnekNoyaGoreSorgulaResponse;
  i  : integer;
  p : TPoint;
  dosyaNo,gelisNo,sql,GC,ss,ornekNo,id,_F_,testKod,min,max,sonuc,sonucA : string;
  ado : TADOQuery;
  t : boolean;

procedure sonucYaz;
var
 x , testAdet : integer;

begin
      testAdet := length(Cvp.tetkikSonuc);
      for x := 0 to testAdet - 1 do
      begin
        txtLog.Lines.Add(Cvp.tetkikSonuc[x].HastaAdi + ' - ' + Cvp.tetkikSonuc[x].HastaSoyadi + ' -' + Cvp.tetkikSonuc[x].KurumHizmetAdi + ' ' +
        Cvp.tetkikSonuc[x].KurumHizmetKodu  + ' - ' + Cvp.tetkikSonuc[x].Deger);

        testKod := KodEslestirNormalDeger(Cvp.tetkikSonuc[x].KurumHizmetKodu+Cvp.tetkikSonuc[x].GssKod,'0',min,max, _F_);

        if testKod <> ''
        Then Begin

           Cvp.tetkikSonuc[x].Deger := StringReplace(Cvp.tetkikSonuc[x].Deger,'Poz','POZ',[rfReplaceAll]);
           Cvp.tetkikSonuc[x].Deger:= StringReplace(Cvp.tetkikSonuc[x].Deger,'Neg','NEG',[rfReplaceAll]);
           Cvp.tetkikSonuc[x].Deger := StringReplace(Cvp.tetkikSonuc[x].Deger,',','.',[rfReplaceAll]);


           if (pos('NEG',Cvp.tetkikSonuc[x].Deger) > 0)
           Then sonuc := '-1'
           Else
           if (pos('POZ',Cvp.tetkikSonuc[x].Deger) > 0)
           Then sonuc := '1'
           Else sonuc := Cvp.tetkikSonuc[x].Deger;

          sonuc := trim(StringReplace(StringReplace(Cvp.tetkikSonuc[x].Deger,'>','',[rfReplaceAll]),'<','',[rfReplaceAll]));

           if (testKod = '907440') or
              (testKod = '906610') or
              (testKod = '906630') or
              (testKod = '906660')
           Then Begin
              sonuc := trim(StringReplace(sonuc,'(','',[rfReplaceAll]));
              sonuc := trim(StringReplace(sonuc,')','',[rfReplaceAll]));
              sonuc := trim(StringReplace(sonuc,'NEGATÝF','',[rfReplaceAll]));
              sonuc := trim(StringReplace(sonuc,'POZÝTÝF','',[rfReplaceAll]));
              sonuc := trim(StringReplace(sonuc,'-','',[rfReplaceAll]));

              sonucA := sonuc;
              try
               if strtofloat(sonuc) < strtofloat(max)
               Then sonuc := '-1' else sonuc := '1';
              except end;

              sql := 'update hareketler set islemAciklamasi  = ' + QuotedStr(sonucA) +
                     ' where onay = 1 and code = ' + QuotedStr(testKod) + ' and dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNO = ' + gelisNo ;
              datalar.QueryExec(ado,sql);
           End;


          try
           sql := 'update hareketler set ' + _F_ + '= ' + sonuc +
                    ' where onay = 1 and code = ' + QuotedStr(testKod) + ' and dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNO = ' + gelisNo ;

           datalar.QueryExec(ado,sql);
          except
             sql := 'update hareketler set islemAciklamasi  = ' + QuotedStr(sonuc) +
                    ' where onay = 1 and code = ' + QuotedStr(testKod) + ' and dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNO = ' + gelisNo ;
             datalar.QueryExec(ado,sql);

          end;

        End;
      end; // test for end
      ornekdurumyaz('Sonuç Alýndý',id,'');

end;

begin
  inherited;

  datalar.Login;
  ado := TADOQuery.Create(nil);
  ado.Connection := datalar.ADOConnection2;
  Gon := OrnekNoyaGoreSorgula.Create;

  Gon.kurumKodu := datalar._labusername;
  Gon.kurumSifre := datalar._labsifre;
 // gon. := strtoint(datalar._labkurumkod);



  datalar.Gemsoft.URL := datalar._laburl;

  Progres.Visible := True;
  Progres.MaxValue := gridAktif.RowCount - 1;

   for I := 1 to gridAktif.RowCount - 2 do
   begin
     Application.ProcessMessages;
     ss := '';
     gridAktif.GetCheckBoxState(1,I,t);

     if  (t = True) and (gridAktif.Cells[8,I] = 'Gönderildi')
     Then Begin
         dosyaNo := gridAktif.Cells[1,I];
         gelisNo := gridAktif.Cells[2,I];
         id := gridAktif.Cells[6,I];
         Gon.OrnekNo := gridAktif.ints[4,I];
         Cvp := OrnekNoyaGoreSorgulaResponse.Create;
         try
           Cvp := (datalar.Gemsoft as IstekGonderSoap).OrnekNoyaGoreSorgula(Gon);
         except on e : exception do
           begin
              ShowMessage(e.Message);
           end;
         end;

        if Cvp.OrnekNoyaGoreSorgulaResult.SonucKodu = '0000'
        Then Begin
          sonucYaz;
        End else txtLog.Lines.Add(inttostr(Cvp.OrnekNoyaGoreSorgulaResult.DonenId) + ' - ' + Cvp.OrnekNoyaGoreSorgulaResult.SonucMesaji);



        Progres.Progress := Progres.Progress + 1;



       End; //* chk end
   end;  // for end
   Progres.Visible := false;
   txtinfo.Caption := '.';


end;

procedure TfrmLabOrnekNoGiris.N8Click(Sender: TObject);
var
  IstekGon : EntegRec;
  Istekcvp : IslemSonuc;
  I ,x : integer;
  t : Boolean;
  dosyaNo,gelisNo ,sm ,tip ,sql , barkod,id : string;
  ado : TADOQuery;
begin

  IstekGon := EntegRec.Create;
  IstekCvp := IslemSonuc.Create;

  datalar.Login;


  IstekGon.VENPASS := datalar._labsifre;
  IstekGon.VENUSER := datalar._labusername;
  IstekGon.KURUM_KODU := datalar.kontrolKod ;//datalar._labkurumkodText+datalar._labkurumkod;
  datalar.Ventura.URL := datalar._laburl;
  IstekGon.ISTEM_TARIHI := datetostr(date);
  IstekGon.SERVIS_KODU := datalar.kontrolKod;

  For I := 1 to gridAktif.RowCount - 2 do
  Begin
    Application.ProcessMessages;
    gridAktif.GetCheckBoxState(1,I,t);
    if  (t = True) and (gridAktif.Cells[8,I] = 'Yeni Kayýt')
    Then Begin
      dosyaNo := gridAktif.Cells[1,I];
      gelisNo := gridAktif.Cells[2,I];
      id := gridAktif.Cells[6,I];

      barkod := ifThen(gridAktif.Cells[4,I] = '',dosyaNo + gelisNo,gridAktif.Cells[4,I]);
      HastabilgileriDoldurVentura(IstekGon,dosyaNo,gelisNo);

        IstekGon.ORNEKNO := strtoint(barkod);
        IstekGon.TETKIKLER := HastaIstekBilgileriVentura(dosyaNo,gelisNo,tip);

        try
         Istekcvp := (datalar.Ventura as AlisWSSoap).ALISKayitEkleAdv(IstekGon);
        except on e : Exception do
         begin
           sm := e.Message;
         end;
        end;

        if Istekcvp.Res = 1
        Then Begin
          //  if tip = 'G'
          //  Then
               sql := 'update gelisler set OrnekNo = ' + QuotedStr(inttostr(Istekcvp.OrnekNo)) +
                      ' where dosyaNO = ' + QuotedStr(dosyaNo) + ' and gelisNo = ' + gelisNo ;
       //     Else
       //        sql := 'update gelisler set CikisOrnekNo = ' + QuotedStr(inttostr(Istekcvp.OrnekNo)) +
       //               ' where dosyaNO = ' + QuotedStr(dosyaNo) + ' and gelisNo = ' + gelisNo;

            ado := TADOQuery.Create(nil);
            ado.Connection := datalar.ADOConnection2;
            datalar.QueryExec(ado,sql);
            txtLog.Lines.Add(barkod + ' - Testler Eklendi');
            ado.Free;
            ornekdurumyaz('Gönderildi',id,'');
        End
        Else
         ShowMessage(Istekcvp.HataMesaji + ' ; ' + Istekcvp.UyarýMesaji);


     // end;

    End;
  End;


end;

procedure TfrmLabOrnekNoGiris.R1Click(Sender: TObject);
var
  HTSO : HastaTetkikSonucOku;
  HTSOCvp : HastaTetkikSonucOkuDonus;
  HTSOCvpAr : ArrayHastaTetkikSonucOkuDonus;
  Tarih : TarihBilgisi;
  I,s , testAdet , j , x : integer;
  dosyaNo,gelisNo , testKod , sm , _F_ ,sql , sonuc , a,b,c,t1,t2,onaytarihi ,id : string;
  ado : TADOQuery;
  t : boolean;
  Http : THTTPRIO;
begin

   case TMenuItem(sender).Tag of
     0 : begin
       chkTestKod.Checked := False;
       chk.Checked := False;
     End;

     1 : begin
       chkTestKod.Checked := False;
       chk.Checked := True;
     end;

     2 : begin
       chkTestKod.Checked := True;
       chk.Checked := False;
     end;

   end;



    datalar.Login;
    if (datalar._labfirma = 'Ankalab') or (datalar._labfirma = 'Ahenk') or (datalar._labfirma = 'UmitHast')
    Then Begin

          if datalar._labfirma = 'Ankalab'
          Then
           Http := DATALAR.Lab;

          if datalar._labfirma = 'Ahenk'
          Then
           Http := DATALAR.Ahenk;

          if datalar._labfirma = 'UmitHast'
          Then
           Http := DATALAR.UmitHast;



       HTSO := HastaTetkikSonucOku.Create;
       HTSOCvp := HastaTetkikSonucOkuDonus.Create;
       HTSOCvpAr := ArrayHastaTetkikSonucOkuDonus.Create;
       Tarih := TarihBilgisi.Create;

       HTSO.KullaniciKodu := datalar._labusername;
       HTSO.GonderenKurumKodu := datalar._labkurumkod;
       HTSO.Sifre := datalar._labsifre;
       http.URL := datalar._laburl;


       ado := TADOQuery.Create(nil);
       ado.Connection := datalar.ADOConnection2;
       txtLog.Lines.Clear;

       progres.MaxValue := gridAktif.RowCount - 2;
       progres.Progress := 0;
       Progres.Visible := true;
       txtinfo.Caption := 'Alýnýyor...';


       for I := 1 to gridAktif.RowCount - 2 do
       begin
         Application.ProcessMessages;

         gridAktif.GetCheckBoxState(1,I,t);
         if  (t = True) and (gridAktif.Cells[8,I] = 'Gönderildi')
         Then Begin

             dosyaNo := gridAktif.Cells[1,I];
             gelisNo := gridAktif.Cells[2,I];
             id := gridAktif.Cells[6,I];

           if chk.Checked
           Then Begin
                t1 := tarihal(txtTarih.Date);
                t2 := tarihal(txttarih1.Date);

                Tarih.Yil := strtoint(copy(t1,1,4));
                Tarih.Ay :=  strtoint(copy(t1,5,2));
                Tarih.Gun := strtoint(copy(t1,7,2));
                HTSO.BasTarih := Tarih;
                Tarih.Yil := strtoint(copy(t2,1,4));
                Tarih.Ay :=  strtoint(copy(t2,5,2));
                Tarih.Gun := strtoint(copy(t2,7,2));
                HTSO.BitTarih := Tarih;
                HTSO.TCKimlikNo := gridAktif.Cells[7,I];

                 try
                  HTSOCvpAr := (http as MedilisWebServiceSoap).TarihAralikliyadaTCKimlikNoIleTetkikSonucOku(HTSO);
                 except on e : Exception do
                   begin
                     sm := e.Message;
                   end;
                 end;

                if HTSOCvpAr.Sonuc = 0
                Then Begin
                    testadet := Length(HTSOCvpAr.Testler);
                    for x := 0 to testAdet - 1 do
                    begin
                      Tarih.Yil := HTSOCvpAr.Testler[x].OnayTarihi.Yil;
                      Tarih.Ay := HTSOCvpAr.Testler[x].OnayTarihi.Ay;
                      Tarih.Gun := HTSOCvpAr.Testler[x].OnayTarihi.Gun;
                      onaytarihi := inttostr(Tarih.Yil)+inttostr(Tarih.Ay)+inttostr(Tarih.Gun);
                      txtLog.Lines.Add(HTSOCvpAr.Hasta[x].Adi+' '+HTSOCvpAr.Hasta[x].Soyadi
                                      + ' - ' + HTSOCvpAr.Testler[x].TetkikID + ' - '
                                      + HTSOCvpAr.Testler[x].Sonuc + ' - ' + OnayTarihi);
                      _F_ := '';
                      testKod := KodEslestir(HTSOCvpAr.Testler[x].TetkikID,_F_);
                      if testKod <> ''
                      Then Begin
                         a := HTSOCvpAr.Testler[x].Aciklama;
                         b := HTSOCvpAr.Testler[x].NormalDeger;
                         c := HTSOCvpAr.Testler[x].RichSonuc;

                         HTSOCvpAr.Testler[x].Sonuc := StringReplace(HTSOCvpAr.Testler[x].Sonuc,'Poz','POZ',[rfReplaceAll]);
                         HTSOCvpAr.Testler[x].Sonuc := StringReplace(HTSOCvpAr.Testler[x].Sonuc,'Neg','NEG',[rfReplaceAll]);

                         HTSOCvpAr.Testler[x].Aciklama := StringReplace(HTSOCvpAr.Testler[x].Aciklama,'Neg','NEG',[rfReplaceAll]);
                         HTSOCvpAr.Testler[x].Aciklama := StringReplace(HTSOCvpAr.Testler[x].Aciklama,'Poz','POZ',[rfReplaceAll]);

                         if (pos(NEG,RawByteString(HTSOCvpAr.Testler[x].Sonuc)) > 0)
                         Then sonuc := '-1'
                         Else
                         if (pos(POZ,RawByteString(HTSOCvpAr.Testler[x].Sonuc)) > 0)
                         Then sonuc := '1'
                         Else
                         if (pos(NEG,RawByteString(HTSOCvpAr.Testler[x].Aciklama)) > 0)
                         Then sonuc := '-1'
                         Else
                         if (pos(POZ,RawByteString(HTSOCvpAr.Testler[x].Aciklama)) > 0)
                         Then sonuc := '1'
                         Else sonuc := HTSOCvpAr.Testler[x].Sonuc;


                         if HTSOCvpAr.Testler[x].Kod <> ''
                         Then
                           sql := 'update hareketler set ' + _F_ + '= ' + sonuc +
                                  ' where onay = 1 and SIRANO = ' + HTSOCvpAr.Testler[x].Kod
                         Else
                           sql := 'update hareketler set ' + _F_ + '= ' + sonuc +
                                  ' where onay = 1 and code = ' + QuotedStr(testKod) +
                                  ' and dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNO = ' + gelisNo ;


                        try
                         datalar.QueryExec(ado,sql);
                        except
                           if HTSOCvpAr.Testler[x].Kod <> ''
                           Then
                             sql := 'update hareketler set islemAciklamasi = ' + QuotedStr(sonuc) +
                                    ' where onay = 1 and SIRANO = ' + HTSOCvpAr.Testler[x].Kod
                           Else
                             sql := 'update hareketler set islemAciklamasi = ' + QuotedStr(sonuc) +
                                    ' where onay = 1 and code = ' + QuotedStr(testKod) +
                                    ' and dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNO = ' + gelisNo ;

                           datalar.QueryExec(ado,sql);


                        end;


                      End;
                    end; // test for end
                    ornekdurumyaz('Sonuç Alýndý',id,'');
                End;

           End
           Else
           Begin

             HTSO.GelisReferansId := gridAktif.Cells[4,I];

             try
              HTSOCvp := (http as MedilisWebServiceSoap).HastaTetkikSonucOku(HTSO);
             except on e : Exception do
               begin
                 sm := e.Message;
               end;
             end;

            Progres.Progress := Progres.Progress + 1;
            if HTSOCvp.Sonuc = 0
            Then Begin
                testAdet := HTSOCvp.TestAdet;
                for x := 0 to testAdet - 1 do
                begin
                  Tarih.Yil := HTSOCvp.Testler[x].OnayTarihi.Yil;
                  Tarih.Ay := HTSOCvp.Testler[x].OnayTarihi.Ay;
                  Tarih.Gun := HTSOCvp.Testler[x].OnayTarihi.Gun;
                  onaytarihi := inttostr(Tarih.Yil)+inttostr(Tarih.Ay)+inttostr(Tarih.Gun);
                  txtLog.Lines.Add(HTSOCvp.Hasta.Adi+' '+HTSOCvp.Hasta.Soyadi + ' - '
                  + HTSOCvp.Testler[x].TetkikID + ' - ' + HTSOCvp.Testler[x].Sonuc
                  + ' - ' + onaytarihi);
                  _F_ := '';
                  testKod := KodEslestir(HTSOCvp.Testler[x].TetkikID,_F_);
                  if testKod <> ''
                  Then Begin
                    a := HTSOCvp.Testler[x].Aciklama;
                 //   b := HTSOCvp.Testler[x].NormalDeger;

                     HTSOCvp.Testler[x].Sonuc := StringReplace(HTSOCvp.Testler[x].Sonuc,'Poz','POZ',[rfReplaceAll]);
                     HTSOCvp.Testler[x].Sonuc := StringReplace(HTSOCvp.Testler[x].Sonuc,'Neg','NEG',[rfReplaceAll]);

                     HTSOCvp.Testler[x].Aciklama := StringReplace(HTSOCvp.Testler[x].Aciklama,'Neg','NEG',[rfReplaceAll]);
                     HTSOCvp.Testler[x].Aciklama := StringReplace(HTSOCvp.Testler[x].Aciklama,'Poz','POZ',[rfReplaceAll]);

                     if (pos(NEG,RawByteString(HTSOCvp.Testler[x].Sonuc)) > 0)
                     Then sonuc := '-1'
                     Else
                     if (pos(POZ,RawByteString(HTSOCvp.Testler[x].Sonuc)) > 0)
                     Then sonuc := '1'
                     Else
                     if (pos(NEG,RawByteString(HTSOCvp.Testler[x].Aciklama)) > 0)
                     Then sonuc := '-1'
                     Else
                     if (pos(POZ,RawByteString(HTSOCvp.Testler[x].Aciklama)) > 0)
                     Then sonuc := '1'
                     Else sonuc := HTSOCvp.Testler[x].Sonuc;

                     if HTSOCvp.Testler[x].Kod <> ''
                     Then Begin

                       if chkTestKod.Checked = False
                       Then
                         sql := 'update hareketler set ' + _F_ + '= ' + sonuc +
                                ' where onay = 1 and SIRANO = ' + HTSOCvp.Testler[x].Kod
                       Else
                         sql := 'update hareketler set ' + _F_ + '= ' + sonuc +
                                ' where onay = 1 and code = ' + QuotedStr(testKod) +
                                ' and dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNO = ' + gelisNo ;
                     end
                     Else
                       sql := 'update hareketler set ' + _F_ + '= ' + sonuc +
                              ' where onay = 1 and code = ' + QuotedStr(testKod) +
                              ' and dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNO = ' + gelisNo ;


                    try
                     datalar.QueryExec(ado,sql);
                    except
                    end;

//
                  End;
                end; // test for end
                ornekdurumyaz('Sonuç Alýndý',id,'');
            End else txtLog.Lines.Add(HTSO.GelisReferansId + ' - ' + HTSOCvp.SonucMesaji);
           End; //* chk end
         End;
       end;  // for end
       Progres.Visible := false;
       txtinfo.Caption := '.';
    End; //Anka Lab end







end;

procedure TfrmLabOrnekNoGiris.ReferansAfterExecute(const MethodName: string;
  SOAPResponse: TStream);
var
  XMLDoc: IXMLDocument;
  memo : Tmemo;
  m : TStringList;
  R: UTF8String;
  x , i: integer;
  s : string;
  sil : boolean;
begin
  SOAPResponse.Position := 0;
  //Memo1.Lines.LoadFromStream(SOAPResponse);

   SetLength(R, SOAPResponse.Size);
   SOAPResponse.Position := 0;
   SOAPResponse.Read(R[1], Length(R));
   memo1.Lines.Add(FormatXMLData(R));
   memo1.Lines.SaveToFile('ReferansCvp.XML');

  ClientDataset1.Active := FALSE;
  SOAPResponse.Position := 0;
  XMLDoc := NewXMLDocument;
  XMLDoc.Encoding := 'UTF8';
  SOAPResponse.Position := 0;
  XMLDoc.LoadFromStream(SOAPResponse);

  XMLTransformProvider1.TransformRead.TransformationFile := 'Referans.xtr';

  XMLTransformProvider1.TransformRead.SourceXmlDocument := XMLDoc.GetDOMDocument;
  ClientDataset1.Active := TRUE;
end;

procedure TfrmLabOrnekNoGiris.S10Click(Sender: TObject);
var
  HstCvp : duzen.getPResults;
  I : integer;
  t : boolean;
  dosyaNo,gelisNo,id,sm ,testler , sql , cins : string;
  testKod ,_F_ , sonuc : string;
  ado : TADOQuery;

procedure SonucYaz(dataset : TClientDataSet ; id : string);
var
  x : integer;
begin
    txtLog.Lines.Add('Tetkik Sayýsý : ' + inttostr(dataset.RecordCount));
    while not dataset.Eof do
    begin
      txtLog.Lines.Add(id + ' : ' + dataset.FieldByName('TESTNO').AsString +' '
      + dataset.FieldByName('BUTCEKODU').AsString + ' - ' +
       dataset.FieldByName('TESTADI').AsString + ' ' + dataset.FieldByName('SONUC').AsString);
      _F_ := '';
      testKod := KodEslestir(dataset.FieldByName('TESTNO').AsString,_F_);

      if testKod <> ''
      Then Begin
         sonuc := dataset.FieldByName('SONUC').AsString;

         Sonuc := StringReplace(Sonuc,'Poz','POZ',[rfReplaceAll]);
         Sonuc := StringReplace(Sonuc,'Neg','NEG',[rfReplaceAll]);

         if (pos('NEG',Sonuc) > 0)
         Then sonuc := '-1'
         Else
         if (pos('POZ',Sonuc) > 0)
         Then sonuc := '1'
         Else
         sonuc := Sonuc;


        try
         sql := 'update hareketler set ' + _F_ + '= ' + sonuc +
                  ' where onay = 1 and code = ' + QuotedStr(testKod) + ' and dosyaNo = ' +
                   QuotedStr(dosyaNo) + ' and gelisNO = ' + gelisNo ;

         datalar.QueryExec(ado,sql);

        except
           sql := 'update hareketler set islemAciklamasi  = ' + QuotedStr(sonuc) +
                  ' where onay = 1 and code = ' + QuotedStr(testKod) + ' and dosyaNo = ' +
                  QuotedStr(dosyaNo) + ' and gelisNO = ' + gelisNo ;
           datalar.QueryExec(ado,sql);
        end;


      End;
      dataset.Next;
    end; // test for end
    ornekdurumyaz('Sonuç Alýndý',id,'');
end;


begin
  inherited;
  datalar.Login;
  HstCvp := duzen.getPResults.Create;
  ado := TADOQuery.Create(nil);
  ado.Connection := datalar.ADOConnection2;
  for I := 1 to gridAktif.RowCount - 2 do
  Begin
    Application.ProcessMessages;
    gridAktif.GetCheckBoxState(1,I,t);
    if  (t = True) and (gridAktif.Cells[8,I] = 'Gönderildi')
    Then Begin
      dosyaNo := gridAktif.Cells[1,I];
      gelisNo := gridAktif.Cells[2,I];
      id := gridAktif.Cells[6,I];

      DuzenHttp.URL := datalar._laburl;

      try
       HstCvp := (DuzenHttp as PatientProcsSoap).getPatientResults(id,strtoint(datalar._labkurumkod),datalar._labsifre);
      except on e : Exception do
       begin
         sm := e.Message;
       end;
      end;

      if HstCvp.resultCode = '0000'
      then
      begin
         try
          SonucYaz(ClientDataSet1,id);
         except end;
      end
      Else
      Begin
        txtLog.Lines.Add(id + ' : ' + HstCvp.resultCode + '-' + HstCvp.resultClass + '-' + sm);
      End;
    End;
  End;
  ado.Free;

end;

procedure TfrmLabOrnekNoGiris.S11Click(Sender: TObject);
var
//  alisGon : hizmetOkuGirisOrnekNoDVO;
  alisCvp : OrnekTetkikBilgileri;
  kurum : KullaniciBilgisi;
  i  : integer;
  p : TPoint;
  dosyaNo,gelisNo,sql,GC,ss,ornekNo,id,_F_,testKod,min,max,sonuc,sonucA : string;
  ado : TADOQuery;
  t : boolean;

procedure sonucYaz(Tip : string);
var
 x , testAdet : integer;

begin
      testAdet := length(alisCvp.Liste);
      for x := 0 to testAdet - 1 do
      begin
        txtLog.Lines.Add(alisCvp.Liste[x].TestKodu + ' ' +
        alisCvp.Liste[x].TestAdi  + ' - ' + alisCvp.Liste[x].Sonuc);

        testKod := KodEslestirNormalDeger(alisCvp.Liste[x].TestKodu,'0',min,max, _F_);
        _F_ := Tip+'D';

        if testKod <> ''
        Then Begin

           alisCvp.Liste[x].Sonuc := StringReplace(alisCvp.Liste[x].Sonuc,'Poz','POZ',[rfReplaceAll]);
           alisCvp.Liste[x].Sonuc:= StringReplace(alisCvp.Liste[x].Sonuc,'Neg','NEG',[rfReplaceAll]);
           alisCvp.Liste[x].Sonuc := StringReplace(alisCvp.Liste[x].Sonuc,',','.',[rfReplaceAll]);


           if (pos('NEG',alisCvp.Liste[x].Sonuc) > 0)
           Then sonuc := '-1'
           Else
           if (pos('POZ',alisCvp.Liste[x].Sonuc) > 0)
           Then sonuc := '1'
           Else sonuc := alisCvp.Liste[x].Sonuc;

           if (testKod = '907440') or
              (testKod = '906610') or
              (testKod = '906630') or
              (testKod = '906660')
           Then Begin
              sonuc := trim(StringReplace(StringReplace(alisCvp.Liste[x].Sonuc,'>','',[rfReplaceAll]),'<','',[rfReplaceAll]));
              sonucA := sonuc;
              if strtofloat(sonuc) < strtofloat(max)
              Then sonuc := '-1' else sonuc := '1';

              sql := 'update hareketler set islemAciklamasi  = ' + QuotedStr(sonucA) +
                     ' where onay = 1 and code = ' + QuotedStr(testKod) + ' and dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNO = ' + gelisNo ;
              datalar.QueryExec(ado,sql);
           End;


          try
           sql := 'update hareketler set ' + _F_ + '= ' + sonuc +
                    ' where onay = 1 and code = ' + QuotedStr(testKod) + ' and dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNO = ' + gelisNo ;

           datalar.QueryExec(ado,sql);
          except
             sql := 'update hareketler set islemAciklamasi  = ' + QuotedStr(sonuc) +
                    ' where onay = 1 and code = ' + QuotedStr(testKod) + ' and dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNO = ' + gelisNo ;
             datalar.QueryExec(ado,sql);

          end;


        End;
      end; // test for end
      ornekdurumyaz('Sonuç Alýndý',id,'');

end;

begin
  inherited;

  datalar.Login;
  ado := TADOQuery.Create(nil);
  ado.Connection := datalar.ADOConnection2;

 // alisCvp := OrnekTetkikBilgileri.Create;
  //alisGon := hizmetOkuGirisOrnekNoDVO.Create;
  kurum := KullaniciBilgisi.Create;

  kurum.KullaniciAdi := datalar._labusername;
  kurum.KullaniciSifresi := datalar._labsifre;
//  kurum.KurumKodu := strtoint(datalar._labkurumkod);

  datalar.Winsoft.URL := datalar._laburl;
  datalar.Winsoft.SOAPHeaders.Send(kurum);

  //  datalar.Alis.URL := 'http://services.asta.gen.tr/AlisHizmetler.asmx';

  Progres.Visible := True;
  Progres.MaxValue := gridAktif.RowCount - 1;

   for I := 1 to gridAktif.RowCount - 2 do
   begin
     Application.ProcessMessages;
     ss := '';
     gridAktif.GetCheckBoxState(1,I,t);

     if  (t = True) and (gridAktif.Cells[8,I] = 'Gönderildi')
     Then Begin
         dosyaNo := gridAktif.Cells[1,I];
         gelisNo := gridAktif.Cells[2,I];
         id := gridAktif.Cells[6,I];

         // giris oku
         OrnekNo := gridAktif.cells[4,I];
         alisCvp := OrnekTetkikBilgileri.Create;
         try
           alisCvp := (datalar.Winsoft as WinLisWebServiceSoap).IstenenTetkikBilgisi(strtoint(ornekNo));
         except on e : exception do
           begin
              ShowMessage(e.Message);
           end;
         end;

        if alisCvp.IslemSonucKodu = '000'
        Then Begin
          sonucYaz('G');
        End else txtLog.Lines.Add(Ornekno + ' - ' + alisCvp.IslemSonucMesaji);

         // cýkýþ oku
         OrnekNo := gridAktif.cells[5,I];
         alisCvp := OrnekTetkikBilgileri.Create;
         try
           alisCvp := (datalar.Winsoft as WinLisWebServiceSoap).IstenenTetkikBilgisi(strtoint(ornekNo));
         except on e : exception do
           begin
              ShowMessage(e.Message);
           end;
         end;

        Progres.Progress := Progres.Progress + 1;

        if alisCvp.IslemSonucKodu = '000'
        Then Begin
          sonucYaz('C');
        End else txtLog.Lines.Add(Ornekno + ' - ' + alisCvp.IslemSonucKodu);


       End; //* chk end
   end;  // for end
   Progres.Visible := false;
   txtinfo.Caption := '.';

end;

procedure TfrmLabOrnekNoGiris.S12Click(Sender: TObject);
var
  sql,kadi,sifre,dosyaNo,gelisNo,id,go,co ,sm,_F_,testKod: string;
  I : integer;
  t : boolean;
  sonuclar1 : TLabsonuc;

procedure SonucYaz(Sonuclar : TLabsonuc ; c  : integer);
var
 x ,y : integer;
 sonuc , kod2 : string;
 ado : TADOQuery;
begin
      ado := TADOQuery.Create(nil);
      ado.Connection := datalar.ADOConnection2;
      _F_ := '';
      if c = 4 then _F_ := 'Gd';
      if c = 5 then _F_ := 'Cd';

      for y := 0 to length(sonuclar.labsonuc) - 1 do
      begin
        for x := 0 to length(sonuclar.labsonuc[y].sonuclar) - 1 do
        begin
          testKod := KodEslestir(sonuclar.labsonuc[y].sonuclar[x].HASTANE_OPTIK,_F_);
          if testKod <> ''
          Then Begin
             sonuclar.labsonuc[y].sonuclar[x].SONUC := StringReplace(sonuclar.labsonuc[y].sonuclar[x].Sonuc,'Poz','POZ',[rfReplaceAll]);
             sonuclar.labsonuc[y].sonuclar[x].Sonuc := StringReplace(sonuclar.labsonuc[y].sonuclar[x].Sonuc,'Neg','NEG',[rfReplaceAll]);

             sonuclar.labsonuc[y].sonuclar[x].SONUC := StringReplace(sonuclar.labsonuc[y].sonuclar[x].Sonuc,',','.',[rfReplaceAll]);


             sonuclar.labsonuc[y].sonuclar[x].Aciklama := StringReplace(sonuclar.labsonuc[y].sonuclar[x].Aciklama,'Neg','NEG',[rfReplaceAll]);
             sonuclar.labsonuc[y].sonuclar[x].Aciklama := StringReplace(sonuclar.labsonuc[y].sonuclar[x].Aciklama,'Poz','POZ',[rfReplaceAll]);

             if (pos('NEG',sonuclar.labsonuc[y].sonuclar[x].Sonuc) > 0)
             Then sonuc := '-1'
             Else
             if (pos('POZ',sonuclar.labsonuc[y].sonuclar[x].Sonuc) > 0)
             Then sonuc := '1'
             Else
             if (pos('NEG',sonuclar.labsonuc[y].sonuclar[x].Aciklama) > 0)
             Then sonuc := '-1'
             Else
             if (pos('POZ',sonuclar.labsonuc[y].sonuclar[x].Aciklama) > 0)
             Then sonuc := '1'
             Else sonuc := sonuclar.labsonuc[y].sonuclar[x].Sonuc;

             try
               sql := 'update hareketler set ' + _F_ + ' = ' + QuotedStr(sonuc) +
                      ' where onay = 1 and code = ' + QuotedStr(testKod) + ' and dosyaNo = ' +
                      QuotedStr(dosyaNo) + ' and gelisNO = ' + gelisNo ;
               datalar.QueryExec(ado,sql);
             except

               sql := 'update hareketler set islemAciklamasi  = ' + QuotedStr(sonuc) +
                      ' where onay = 1 and code = ' + QuotedStr(testKod) + ' and dosyaNo = ' +
                       QuotedStr(dosyaNo) + ' and gelisNO = ' + gelisNo ;
               datalar.QueryExec(ado,sql);

               txtLog.Lines.Add('**************HATA : ' + floattostr(sonuclar.labsonuc[y].sonuclar[x].ISTEK_NO) +'-'+
               floattostr(sonuclar.labsonuc[y].sonuclar[x].ISLEM_KODU) + '-' + sonuclar.labsonuc[y].sonuclar[x].ISLEM_KISA_ADI + '-' +sonuclar.labsonuc[y].sonuclar[x].ISLEM_ADI +'-'+ sonuclar.labsonuc[y].sonuclar[x].Sonuc);

             end;
          End;

               txtLog.Lines.Add(floattostr(sonuclar.labsonuc[y].sonuclar[x].ISTEK_NO) +'-'+
               floattostr(sonuclar.labsonuc[y].sonuclar[x].ISLEM_KODU) + '-' +
               sonuclar.labsonuc[y].sonuclar[x].HASTANE_OPTIK + '-' +
               sonuclar.labsonuc[y].sonuclar[x].ISLEM_KISA_ADI + '-' +
               sonuclar.labsonuc[y].sonuclar[x].ISLEM_ADI +'-'+
               sonuclar.labsonuc[y].sonuclar[x].Sonuc);
        end;
      end;
      ado.Free;
end;


begin
  datalar.Login;
  datalar.Metdata.URL := datalar._laburl;

  For I := 1 to gridAktif.RowCount - 2 do
  Begin
    Application.ProcessMessages;
    gridAktif.GetCheckBoxState(1,I,t);
    if  (t = True) and (gridAktif.Cells[8,I] = 'Gönderildi')
    Then Begin
      dosyaNo := gridAktif.Cells[1,I];
      gelisNo := gridAktif.Cells[2,I];
      id := gridAktif.Cells[6,I];
      go := gridAktif.cells[4,I];
      co := gridAktif.cells[5,I];
      _F_ := 'Gd';

      try

      if TMenuItem(sender).Tag = 0
      then
         Sonuclar1 := (datalar.metdata as IMeddataLabService).labsonuc('','',Encode64(datalar._labusername),
                                                                    Encode64(datalar._labsifre),0,0,strtoint(go),0,
                                                                    strtoint(datalar._labkurumkod))
      else
         Sonuclar1 := (datalar.metdata as IMeddataLabService).labsonuc('','',Encode64(datalar._labusername),
                                                                    Encode64(datalar._labsifre),0,strtoint(go),0,0,
                                                                    strtoint(datalar._labkurumkod));


      except on e : Exception do
       begin
         sm := e.Message;
       end;
      end;

      if Sonuclar1.hatakodu = 1
      Then Begin
        SonucYaz(Sonuclar1 ,4);
        ornekdurumyaz('Sonuç Alýndý',id,'');
      End
      else
       txtLog.Lines.Add(Sonuclar1.hataAciklama);


      _F_ := 'Cd';
      try
      if TMenuItem(sender).Tag = 0
      then
         Sonuclar1 := (datalar.metdata as IMeddataLabService).labsonuc('','',Encode64(datalar._labusername),
                                                                    Encode64(datalar._labsifre),0,0,strtoint(co),0,
                                                                    strtoint(datalar._labkurumkod))
      else
         Sonuclar1 := (datalar.metdata as IMeddataLabService).labsonuc('','',Encode64(datalar._labusername),
                                                                    Encode64(datalar._labsifre),0,strtoint(co),0,0,
                                                                    strtoint(datalar._labkurumkod));
      except on e : Exception do
       begin
         sm := e.Message;
       end;
      end;

      if Sonuclar1.hatakodu = 1
      Then Begin
        SonucYaz(Sonuclar1 ,5);
        ornekdurumyaz('Sonuç Alýndý',id,'');
      End
      else
       txtLog.Lines.Add(Sonuclar1.hataAciklama);


    End;
  End;
end;

procedure TfrmLabOrnekNoGiris.S13Click(Sender: TObject);
var
  sql,kadi,sifre,dosyaNo,gelisNo,id,go,co ,sm,_F_,testKod: string;
  I : integer;
  t : boolean;
  sonuclar1 : ArrayOfHastaSonucBilgisi;

procedure SonucYaz(Sonuclar : ArrayOfSonucBilgi ; c  : integer);
var
 x : integer;
 sonuc , kod2 : string;
 ado : TADOQuery;
begin
      ado := TADOQuery.Create(nil);
      ado.Connection := datalar.ADOConnection2;
      _F_ := '';
      if c = 4 then _F_ := 'Gd';
      if c = 5 then _F_ := 'Cd';

      for x := 0 to length(sonuclar) - 1 do
      begin
        //  kod2 := ifthen(Sonuclar[x].TETKIK_KODU2 = '0','' ,Sonuclar[x].TETKIK_KODU2);
          _F_ := '';

          if sonuclar[x].TestGrupAdi = 'Hematoloji'
          then
             testKod := KodEslestir(sonuclar[x].TestID+sonuclar[x].TestParametreAdi ,_F_)
          else
             testKod := KodEslestir(sonuclar[x].TestID ,_F_);


          if testKod <> ''
          Then Begin
             Sonuclar[x].Sonuc := StringReplace(Sonuclar[x].Sonuc,'Poz','POZ',[rfReplaceAll]);
             Sonuclar[x].Sonuc := StringReplace(Sonuclar[x].Sonuc,'Neg','NEG',[rfReplaceAll]);

             Sonuclar[x].SonucAciklama := StringReplace(Sonuclar[x].SonucAciklama,'Neg','NEG',[rfReplaceAll]);
             Sonuclar[x].SonucAciklama := StringReplace(Sonuclar[x].SonucAciklama,'Poz','POZ',[rfReplaceAll]);

             if (pos('NEG',Sonuclar[x].Sonuc) > 0)
             Then sonuc := '-1'
             Else
             if (pos('POZ',Sonuclar[x].Sonuc) > 0)
             Then sonuc := '1'
             Else
             if (pos('NEG',Sonuclar[x].SonucAciklama) > 0)
             Then sonuc := '-1'
             Else
             if (pos('POZ',Sonuclar[x].SonucAciklama) > 0)
             Then sonuc := '1'
             Else sonuc := Sonuclar[x].Sonuc;

             try
               sql := 'update hareketler set ' + _F_ + ' = ' + QuotedStr(sonuc) +
                      ' where onay = 1 and code = ' + QuotedStr(testKod) + ' and dosyaNo = ' +
                      QuotedStr(dosyaNo) + ' and gelisNO = ' + gelisNo ;
               datalar.QueryExec(ado,sql);
             except

               sql := 'update hareketler set islemAciklamasi  = ' + QuotedStr(sonuc) +
                      ' where onay = 1 and code = ' + QuotedStr(testKod) + ' and dosyaNo = ' +
                       QuotedStr(dosyaNo) + ' and gelisNO = ' + gelisNo ;
               datalar.QueryExec(ado,sql);

               txtLog.Lines.Add('**************HATA : ' + Sonuclar1[0].ORNEKNO +'-'+
               Sonuclar[x].TestID + '-' + Sonuclar[x].TestGrupAdi + '-' +Sonuclar[x].TestAdi + '-' + Sonuclar[x].TestParametreAdi +'-'+ Sonuclar[x].Sonuc);

             end;
          End;

          txtLog.Lines.Add(Sonuclar1[0].ORNEKNO + ' - '+_F_+ ' - ' +
          Sonuclar[x].TestID + '-' + Sonuclar[x].TestGrupAdi + '-' +
               Sonuclar[x].TestAdi + '-' + Sonuclar[x].TestParametreAdi +'-'+ Sonuclar[x].Sonuc);

      end;
      ado.Free;
end;


begin
  datalar.Login;
  sifre := datalar._labsifre;
  kadi := datalar._labusername;
  datalar.ESY.URL := datalar._laburl;

  For I := 1 to gridAktif.RowCount - 2 do
  Begin
    Application.ProcessMessages;
    gridAktif.GetCheckBoxState(1,I,t);
    if  (t = True) and (gridAktif.Cells[8,I] = 'Gönderildi')
    Then Begin
      dosyaNo := gridAktif.Cells[1,I];
      gelisNo := gridAktif.Cells[2,I];
      id := gridAktif.Cells[6,I];
      go := gridAktif.cells[4,I];
      co := gridAktif.cells[5,I];
      //_F_ := 'Gd';

      try
       Sonuclar1 := (datalar.ESY as LABserviceSoap).BarkodSonucBilgisi(go,kadi,sifre);
      except on e : Exception do
       begin
         sm := e.Message;
       end;
      end;

      if Sonuclar1[0].Hata = ''
      Then Begin
        SonucYaz(Sonuclar1[0].TestSonuclari ,4);
        ornekdurumyaz('Sonuç Alýndý',id,'');
      End
      else
       txtLog.Lines.Add(Sonuclar1[0].Hata);



    End;
  End;

end;

procedure TfrmLabOrnekNoGiris.s14Click(Sender: TObject);
var
  okuGiris : HastaTahlilOkuGiris;
  okuGirisC : HastaTahlilOkuGiris;
  CvpG : HastaTahlilSonuclariCevap;
  CvpC : HastaTahlilSonuclariCevap;

  ado : TADOQuery;
  I ,TestAdet , x : integer;
  ss , dosyaNo, gelisNo, id,idC, ornekNo,ornekNoC, sm , _F_  , testKod , _kod_ ,
  min , max , sonuc , sonucA ,sql : string;
  t : boolean;

procedure sonucyaz(Cvp : HastaTahlilSonuclariCevap ; Tip : string);
var
 x : integer;
begin
            testAdet := length(Cvp.SonucDetay);
            for x := 0 to testAdet - 1 do
            begin
              txtLog.Lines.Add(Cvp.SonucDetay[x].GelenHastaid + ' - ' +
              Cvp.SonucDetay[x].HizmetAdi + ' ' + 'Test Kodu : ' + Cvp.SonucDetay[x].HizmetKod + ' ' +
              'Sonuc : ' + Cvp.SonucDetay[x].SonucDeger + ' - ' + Cvp.SonucDetay[x].SonucTarih);

              _F_ := '';

              if Cvp.SonucDetay[x].TestNo = 0
              then
                _kod_ := Cvp.SonucDetay[x].HizmetKod
              else
                _kod_ := Cvp.SonucDetay[x].HizmetKod + '.' + inttostr(Cvp.SonucDetay[x].TestNo);

              testKod := KodEslestirNormalDeger(_kod_,'',min,max, _F_);
              _F_ :=  Tip;//copy(Cvp.SonucDetay[x].GelenHastaid,1,1)+'d';

              if testKod <> ''
              Then Begin
                 Cvp.SonucDetay[x].SonucDeger := StringReplace(Cvp.SonucDetay[x].SonucDeger,'Poz','POZ',[rfReplaceAll]);
                 Cvp.SonucDetay[x].SonucDeger := StringReplace(Cvp.SonucDetay[x].SonucDeger,'Neg','NEG',[rfReplaceAll]);
                 Cvp.SonucDetay[x].SonucDeger := StringReplace(Cvp.SonucDetay[x].SonucDeger,',','.',[rfReplaceAll]);
                 sonuc := Cvp.SonucDetay[x].SonucDeger;

                 if (pos('NEG',Cvp.SonucDetay[x].SonucDeger) > 0)
                 Then sonuc := '-1'
                 Else
                 if (pos('POZ',Cvp.SonucDetay[x].SonucDeger) > 0)
                 Then sonuc := '1';

                 if (testKod = '907440') or
                    (testKod = '906610') or
                    (testKod = '906630') or
                    (testKod = '906660')
                 Then Begin
                    sonucA := trim(StringReplace(StringReplace(Cvp.SonucDetay[x].SonucDeger,'>','',[rfReplaceAll]),'<','',[rfReplaceAll]));
                    sonucA := trim(StringReplace(StringReplace(SonucA,'NEGatif','',[rfReplaceAll]),'POZitif','',[rfReplaceAll]));
                    sonucA := trim(StringReplace(StringReplace(SonucA,'NEGATÝF','',[rfReplaceAll]),'POZÝTÝF','',[rfReplaceAll]));

                    //sonucA := sonuc;
                    try
                     if strtofloat(sonuc) < strtofloat(max)
                     Then sonuc := '-1' else sonuc := '1';
                    except end;

                    sql := 'update hareketler set islemAciklamasi  = ' + QuotedStr(sonucA) +
                           ' where onay = 1 and code = ' + QuotedStr(testKod) + ' and dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNO = ' + gelisNo ;
                    datalar.QueryExec(ado,sql);
                 End;


                try
                 sql := 'update hareketler set ' + _F_ + '= ' + sonuc +
                          ' where onay = 1 and code = ' + QuotedStr(testKod) + ' and dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNO = ' + gelisNo ;

                 datalar.QueryExec(ado,sql);
                except
                   sql := 'update hareketler set islemAciklamasi  = ' + QuotedStr(sonuc) +
                          ' where onay = 1 and code = ' + QuotedStr(testKod) + ' and dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNO = ' + gelisNo ;
                   datalar.QueryExec(ado,sql);

                end;


              End;
            end; // test for end
            ornekdurumyaz('Sonuç Alýndý',copy(id,2,10),'');
end;

begin
   datalar.Login;
   okuGiris := HastaTahlilOkuGiris.Create;
   okuGiris.kullaniciadi := datalar._labusername;
   okuGiris.kullanicisifre := datalar._labsifre;
   okuGirisC := HastaTahlilOkuGiris.Create;
   okuGirisC.kullaniciadi := datalar._labusername;
   okuGirisC.kullanicisifre := datalar._labsifre;

   CvpG := HastaTahlilSonuclariCevap.Create;
   CvpC := HastaTahlilSonuclariCevap.Create;

   datalar.Derman.URL := datalar._laburl;

   ado := TADOQuery.Create(nil);
   ado.Connection := datalar.ADOConnection2;
   txtLog.Lines.Clear;

   progres.MaxValue := gridAktif.RowCount - 2;
   progres.Progress := 0;
   Progres.Visible := true;
  //   txtinfo.Caption := 'Alýnýyor...';

   for I := 1 to gridAktif.RowCount - 2 do
   begin
     Application.ProcessMessages;
     ss := '';
     gridAktif.GetCheckBoxState(1,I,t);

     if  (t = True) and (gridAktif.Cells[8,I] = 'Gönderildi')
     Then Begin
         dosyaNo := gridAktif.Cells[1,I];
         gelisNo := gridAktif.Cells[2,I];
         id := 'G'+gridAktif.Cells[6,I];
         ornekNo := gridAktif.Cells[4,I];
         idC := 'C'+gridAktif.Cells[6,I];
         ornekNoC := gridAktif.Cells[5,I];

         okuGiris.OrnekNo := ornekNo;
         okuGiris.GelenHastaid := id;
         try
          CvpG := (datalar.Derman as LabIslemleriSoap).HastaTahlilSonuclariOku(okuGiris);
         except on e : Exception do
           begin
             sm := e.Message;
             ss := 'Hata';
           end;
         end;

        if ss <> 'Hata'
        Then Begin
         sonucyaz(CvpG,'Gd');
        End else txtLog.Lines.Add(CvpG.SonucDetay[x].OrnekNo + ' - ' + CvpG.SonucDetay[x].GelenHastaid + ' - ' + CvpG.sonuc);

         okuGirisC.OrnekNo := ornekNoC;
         okuGirisC.GelenHastaid := idC;
         try
          CvpC := (datalar.Derman as LabIslemleriSoap).HastaTahlilSonuclariOku(okuGirisC);
         except on e : Exception do
           begin
             sm := e.Message;
             ss := 'Hata';
           end;
         end;

        if ss <> 'Hata'
        Then Begin
         sonucyaz(CvpC,'Cd');
        End else txtLog.Lines.Add(CvpC.SonucDetay[x].OrnekNo + ' - ' + CvpC.SonucDetay[x].GelenHastaid + ' - ' + CvpC.sonuc);

        Progres.Progress := Progres.Progress + 1;
       End; //* chk end
   end;  // for end
   Progres.Visible := false;
  //   txtinfo.Caption := '.';


end;

procedure TfrmLabOrnekNoGiris.s15Click(Sender: TObject);
var
  CvpG : QueryResultResult;
  ado : TADOQuery;
  I , testAdet : integer;
  ss , sm , ornekNo ,tc : string;
  t : boolean;
  dosyaNo , gelisNo , id , _F_ ,_kod_ , min , max , testKod , sonuc , sonucA ,sql : string;
  t1,t2 : TXSDateTime;

procedure sonucyaz(Cvp : QueryResultResult ; Tip : string);
var
 x : integer;
 C : BridgeResult;
 R : Result;
 V : ResultValue;
begin
    for C in Cvp do
    begin
      txtLog.Lines.Add('*** Ýþ Referans :' + C.JobRef + ' - ' + C.SampleName + ' ' + 'Barkod : ' + C.Code);

        for R in C.Result do
        begin
          _F_ := '';
          _kod_ := R.TestTypeCode + '.' + R.ResultTypeRef.DecimalString;


          testKod := KodEslestirNormalDeger(_kod_,'',min,max, _F_);

        //  if C.SampleName = pos('Çýkýþ',C.SampleName) then  _F_ := 'Cd' else _F_ := 'Gd';
         // _F_ :=  Tip;
           txtLog.Lines.Add('****** Test Kodu :' + R.TestTypeCode + ' Ref Kodu :' + R.ResultTypeRef.DecimalString);

              for V in R.ResultValue do
              begin
                 txtLog.Lines.Add('********* Sonuc :' + V.ValueText);
                 sonuc := V.ValueText;
                 sonuc := UpperCase(sonuc);
               //  sonuc := StringReplace(sonuc,'Poz','POZ',[rfReplaceAll]);
               //  sonuc := StringReplace(sonuc,'Neg','NEG',[rfReplaceAll]);
                 sonuc := StringReplace(sonuc,',','.',[rfReplaceAll]);
                 sonuc := trim(sonuc);

                 if (testKod = '907440') or
                    (testKod = '906610') or
                    (testKod = '906630') or
                    (testKod = '906660')
                 Then Begin
                    sonucA := trim(StringReplace(StringReplace(V.ValueText,'>','',[rfReplaceAll]),'<','',[rfReplaceAll]));
                    sonucA := trim(StringReplace(StringReplace(SonucA,'NEGATÝF','',[rfReplaceAll]),'POZÝTÝF','',[rfReplaceAll]));
                    sonucA := trim(StringReplace(StringReplace(SonucA,'NEGATIF','',[rfReplaceAll]),'POZITIF','',[rfReplaceAll]));

                    //sonucA := sonuc;
                    //try
                  //   if strtofloat(sonuc) < strtofloat(max)
                  //   Then sonuc := '-1' else sonuc := '1';
                    // end;

                     if (pos('NEG',uppercase(String(V.ValueText))) > 0)
                     Then sonuc := '-1'
                     Else
                     if (pos('POZ',uppercase(string(V.ValueText))) > 0)
                     Then sonuc := '1';

                    sql := 'update hareketler set islemAciklamasi  = ' + QuotedStr(sonucA) +
                           ' where onay = 1 and code = ' + QuotedStr(testKod) + ' and dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNO = ' + gelisNo ;
                    datalar.QueryExec(ado,sql);
                 End;


                try
                 if (pos('<',V.ValueText) > 0) and (pos('>',V.ValueText) > 0)
                 Then begin
                   sql := 'update hareketler set islemAciklamasi  = ' + QuotedStr(sonuc) +
                          ' where onay = 1 and code = ' + QuotedStr(testKod) + ' and dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNO = ' + gelisNo ;
                   datalar.QueryExec(ado,sql);
                   sonuc := trim(StringReplace(StringReplace(V.ValueText,'>','',[rfReplaceAll]),'<','',[rfReplaceAll]));
                 end;

                 sql := 'update hareketler set ' + _F_ + '= ' + sonuc +
                          ' where onay = 1 and code = ' + QuotedStr(testKod) + ' and dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNO = ' + gelisNo ;

                 datalar.QueryExec(ado,sql);
                except
                   sql := 'update hareketler set islemAciklamasi  = ' + QuotedStr(sonuc) +
                          ' where onay = 1 and code = ' + QuotedStr(testKod) + ' and dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNO = ' + gelisNo ;
                   datalar.QueryExec(ado,sql);

                end;
              end; // for V
        end;  // for R
    end; // for C

    ornekdurumyaz('Sonuç Alýndý',id,'');
end;


begin
   stop := False;
   datalar.Login;

   CvpG := QueryResultResult.Create(nil);
   t1 := TXSDateTime.Create;
   t2 := TXSDateTime.Create;

   t1.Year := strtoint(copy(tarihal(txtTarih.Date),1,4));
   t1.Month := strtoint(copy(tarihal(txtTarih.Date),5,2));
   t1.Day := strtoint(copy(tarihal(txtTarih.Date),7,2));

   t2.Year := strtoint(copy(tarihal(txttarih1.Date),1,4));
   t2.Month := strtoint(copy(tarihal(txtTarih1.Date),5,2));
   t2.Day := strtoint(copy(tarihal(txtTarih1.Date),7,2));

   datalar.Centro.URL := datalar._laburl;

   ado := TADOQuery.Create(nil);
   ado.Connection := datalar.ADOConnection2;
   txtLog.Lines.Clear;

   progres.MaxValue := gridAktif.RowCount - 2;
   progres.Progress := 0;
   Progres.Visible := true;
   txtinfo.Caption := 'Sonuç Alýnýyor...';

   for I := 1 to gridAktif.RowCount - 2 do
   begin
     if stop = True then Break;

     Application.ProcessMessages;
     ss := '';
     sm := '';
     gridAktif.GetCheckBoxState(1,I,t);

     if  (t = True) and (gridAktif.Cells[8,I] = 'Gönderildi')
     Then Begin
         dosyaNo := gridAktif.Cells[1,I];
         gelisNo := gridAktif.Cells[2,I];
         id :=  gridAktif.Cells[6,I];
         ornekNo := gridAktif.Cells[4,I];
         tc := gridAktif.Cells[7,I];

         try
          CvpG := (datalar.Centro as BridgeSoap).QueryResultByAcceptDt(datalar._labusername,datalar._labsifre,tc,t1,t2);
         except on e : Exception do
           begin
             sm := e.Message;
             ss := 'Hata';
             txtLog.Lines.Add(Datalar.CentroResponse);
           end;
         end;

        if ss <> 'Hata'
        Then Begin
          sonucyaz(CvpG,'');
          Progres.Progress := Progres.Progress + 1;
         End;
         Sleep(5000);
     End; //* chk end

   end;  // for end
   Progres.Visible := false;
   txtinfo.Caption := '.';


end;

procedure TfrmLabOrnekNoGiris.S18Click(Sender: TObject);
var
  sql,kadi,sifre,dosyaNo,gelisNo,id,go,co ,sm,_F_,testKod,Tc: string;
  I : integer;
  t : boolean;
  List : TStringList;

begin
  datalar.Login;
  sifre := datalar._labsifre;
  kadi := datalar._labusername;
  datalar.Lios.URL := datalar._laburl;
  List := TStringList.Create;

  For I := 1 to gridAktif.RowCount - 2 do
  Begin
    List.Clear;
    Application.ProcessMessages;
    gridAktif.GetCheckBoxState(1,I,t);
    if  (t = True) and (gridAktif.Cells[8,I] = 'Gönderildi')
    Then Begin
      dosyaNo := gridAktif.Cells[1,I];
      gelisNo := gridAktif.Cells[2,I];
      id := gridAktif.Cells[6,I];
      tc := gridAktif.Cells[7,I];
      go := gridAktif.cells[4,I];
      co := gridAktif.cells[5,I];
      LioasLab.sonucAl(List,kadi,sifre,'',txtTarih.Text,txttarih1.Text,tc,id,dosyaNo,gelisNo);
      txtLog.Lines.AddStrings(List);
    End;
  End;
  List.Free;

end;

procedure TfrmLabOrnekNoGiris.S4Click(Sender: TObject);
var
  SonucAlGiris : TSonucAlInput;
  SonucAlCevap : TSonucAlCevap;

  I,s , testAdet , j , x : integer;
  dosyaNo,gelisNo , testKod , sm , _F_ ,sql , sonuc , a,b,c,t1,t2 , tt , tip , id: string;
  ado : TADOQuery;
  t : boolean;

procedure SonuzYaz(S : TSonucAlCevap ; c  : integer);
var
  x : integer;
  LabKod , k: string;
begin
   testadet := Length(S.HASTASONUCARRAY);

    for x := 0 to testAdet - 1 do
    begin
      tt:=   s.HASTASONUCARRAY[x].BUTCEKODU + ' - ' + s.HASTASONUCARRAY[x].TESTADI + ' - ' +
             s.HASTASONUCARRAY[x].PARAMETREADI + ' - ' + s.HASTASONUCARRAY[x].SONUC;

      txtLog.Lines.Add(gridAktif.Cells[c,I] + ' - ' + tt );

      LabKod := '';
      LabKod := KodEslestirLabKodu(s.HASTASONUCARRAY[x].PARAMETREADI,k);
      if LabKod = ''
      Then LabKod := KodEslestir(s.HASTASONUCARRAY[x].BUTCEKODU,tip);


         if (pos(NEG,s.HASTASONUCARRAY[x].SONUC) > 0)
         Then sonuc := '-1'
         Else
         if (pos(POZ,s.HASTASONUCARRAY[x].SONUC) > 0)
         Then sonuc := '1'
         Else sonuc := s.HASTASONUCARRAY[x].SONUC;


           sql := 'update hareketler set ' + _F_ + '= ' + sonuc +
                 // ',islemaciklamasi = ' + QuotedStr(s.HASTASONUCARRAY[x].SONUC) +
                  ' where onay = 1 and code = ' + QuotedStr(LabKod) +
                 // ' and NAME1 = ' + QuotedStr(s.HASTASONUCARRAY[x].PARAMETREADI) +
                  ' and dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNO = ' + gelisNo ;


        try
         datalar.QueryExec(ado,sql);
        except
          sql := 'update hareketler set islemaciklamasi = ' + QuotedStr(s.HASTASONUCARRAY[x].SONUC) +
                 ' where onay = 1 and code = ' + QuotedStr(LabKod) +
           // ' and NAME1 = ' + QuotedStr(s.HASTASONUCARRAY[x].PARAMETREADI) +
                 ' and dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNO = ' + gelisNo ;
               datalar.QueryExec(ado,sql);

        end;


    end; // test for end

end;



begin
    if TMenuItem(sender).Tag = 0
    Then chkCikisTest.Checked := False
    Else chkCikisTest.Checked := True;

    datalar.Login;
    if datalar._labfirma = 'InVitro'
    Then Begin

       SonucAlGiris := TSonucAlInput.Create;
       SonucAlCevap := TSonucAlCevap.Create;

       SonucAlGiris.HASTANEKODU := datalar._labusername;
       SonucAlGiris.SIFRE := datalar._labsifre;



       ado := TADOQuery.Create(nil);
       ado.Connection := datalar.ADOConnection2;
       txtLog.Lines.Clear;

       progres.MaxValue := gridAktif.RowCount - 2;
       progres.Progress := 0;
       Progres.Visible := true;
       txtinfo.Caption := 'Alýnýyor...';


       for I := 1 to gridAktif.RowCount - 2 do
       begin
         Application.ProcessMessages;

         gridAktif.GetCheckBoxState(1,I,t);
         if  (t = True) and (gridAktif.Cells[8,I] = 'Gönderildi')
         Then Begin

            dosyaNo := gridAktif.Cells[1,I];
            gelisNo := gridAktif.Cells[2,I];
            id := gridAktif.Cells[6,I];

            SonucAlGiris.BARKOD := gridAktif.Cells[4,I];
            _F_ := 'Gd';

            try
             SonucAlCevap := (datalar.LabSonucAlInVitro as ISonucAl).HASTASONUCAL(SonucAlGiris);
            except on e : Exception do
             begin
               sm := e.Message;
             end;
            end;


            if SonucAlCevap.HATAKODU = '0000'
            Then Begin
              SonuzYaz(SonucAlCevap,4);
              ornekdurumyaz('Sonuç Alýndý',id,'');
            End; // hatakodu


            SonucAlGiris.BARKOD := gridAktif.Cells[5,I];
            _F_ := 'Cd';

            try
             SonucAlCevap := (datalar.LabSonucAlInVitro as ISonucAl).HASTASONUCAL(SonucAlGiris);
            except on e : Exception do
             begin
               sm := e.Message;
             end;
            end;


            if SonucAlCevap.HATAKODU = '0000'
            Then Begin
              SonuzYaz(SonucAlCevap,5);
              ornekdurumyaz('Sonuç Alýndý',id,'');
            End; // hatakodu




         End;  // satýr secili ise end

       end; // for end
    end; // InVitro


end;
procedure TfrmLabOrnekNoGiris.s5Click(Sender: TObject);
var
  Sonuclar1,Sonuclar2 : ArrayOfSonucDurum;
  SonuclarDiyaliz : DiyalizSonucDurum;
  VENPASS,VENUSER ,dosyaNo,gelisNo ,sm , testKod , _F_ ,  sql ,id : string;
  OrnekNo ,I ,j,go , co : integer;
  t : boolean;

procedure SonucYazVen(Sonuclar : ArrayOfSonucDurum ; c  : integer);
var
 x : integer;
 sonuc , kod2 : string;
 ado : TADOQuery;
begin
      ado := TADOQuery.Create(nil);
      ado.Connection := datalar.ADOConnection2;
      _F_ := '';
      if c = 4 then _F_ := 'Gd';
      if c = 5 then _F_ := 'Cd';

      for x := 0 to length(sonuclar) - 1 do
      begin
          if Sonuclar[x].islemSonuc.Res = 1
          then begin
              kod2 := ifthen(Sonuclar[x].TETKIK_KODU2 = '0','' ,Sonuclar[x].TETKIK_KODU2);
              _F_ := '';
              testKod := KodEslestir(Sonuclar[x].TETKIK_KODU+kod2,_F_);

              if testKod <> ''
              Then Begin
                 Sonuclar[x].Sonuc := StringReplace(Sonuclar[x].Sonuc,'Poz','POZ',[rfReplaceAll]);
                 Sonuclar[x].Sonuc := StringReplace(Sonuclar[x].Sonuc,'Neg','NEG',[rfReplaceAll]);

                 Sonuclar[x].Aciklama := StringReplace(Sonuclar[x].Aciklama,'Neg','NEG',[rfReplaceAll]);
                 Sonuclar[x].Aciklama := StringReplace(Sonuclar[x].Aciklama,'Poz','POZ',[rfReplaceAll]);

                 if (pos('NEG',Sonuclar[x].Sonuc) > 0)
                 Then sonuc := '-1'
                 Else
                 if (pos('POZ',Sonuclar[x].Sonuc) > 0)
                 Then sonuc := '1'
                 Else
                 if (pos('NEG',Sonuclar[x].Aciklama) > 0)
                 Then sonuc := '-1'
                 Else
                 if (pos('POZ',Sonuclar[x].Aciklama) > 0)
                 Then sonuc := '1'
                 Else sonuc := Sonuclar[x].Sonuc;

                 try
                   sql := 'update hareketler set ' + _F_ + ' = ' + QuotedStr(sonuc) +
                          ' where onay = 1 and code = ' + QuotedStr(testKod) + ' and dosyaNo = ' +
                          QuotedStr(dosyaNo) + ' and gelisNO = ' + gelisNo ;
                   datalar.QueryExec(ado,sql);
                 except

                   sql := 'update hareketler set islemAciklamasi  = ' + QuotedStr(sonuc) +
                          ' where onay = 1 and code = ' + QuotedStr(testKod) + ' and dosyaNo = ' +
                           QuotedStr(dosyaNo) + ' and gelisNO = ' + gelisNo ;
                   datalar.QueryExec(ado,sql);

                   txtLog.Lines.Add('**************HATA : ' + inttostr(Sonuclar[x].ORNEKNO)+'-'+
                   Sonuclar[x].TETKIK_KODU+Sonuclar[x].TETKIK_KODU2+'-'+ Sonuclar[x].TEST_ADI+'-'+
                   inttostr(Sonuclar[x].islemSonuc.Res)+' - ' + Sonuclar[x].Sonuc);

                 end;
              End;

          end;

          txtLog.Lines.Add(inttostr(Sonuclar[x].ORNEKNO)+' - '+_F_+ ' - ' +
          Sonuclar[x].TETKIK_KODU+Sonuclar[x].TETKIK_KODU2+'-'+
          Sonuclar[x].TEST_ADI+'-'+inttostr(Sonuclar[x].islemSonuc.Res)+' - ' + Sonuclar[x].Sonuc);
      end;
      ado.Free;
end;


begin
  datalar.Login;
  VENPASS := datalar._labsifre;
  VENUSER := datalar._labusername;
  datalar.Ventura.URL := datalar._laburl;

  For I := 1 to gridAktif.RowCount - 2 do
  Begin
    Application.ProcessMessages;
    gridAktif.GetCheckBoxState(1,I,t);
    if  (t = True) and (gridAktif.Cells[8,I] = 'Gönderildi')
    Then Begin
      dosyaNo := gridAktif.Cells[1,I];
      gelisNo := gridAktif.Cells[2,I];
      id := gridAktif.Cells[6,I];
      go := gridAktif.ints[4,I];
      co := gridAktif.ints[5,I];
      //_F_ := 'Gd';

      try
       Sonuclar1 := (datalar.Ventura as AlisWSSoap).ALISSonucDurum(VENUSER,VENPASS,go);
 //       SonuclarDiyaliz := (datalar.Ventura as AlisWSSoap).ALISDiyalizSonucDurum(VENUSER,VENPASS,go,'01.02.2016','28.02.2016','','');

      except on e : Exception do
       begin
         sm := e.Message;
       end;
      end;

      SonucYazVen(Sonuclar1,4);
      ornekdurumyaz('Sonuç Alýndý',id,'');

     //_F_ := 'Cd';
     if co <> 0
     then begin
       try
         Sonuclar2 := (datalar.Ventura as AlisWSSoap).ALISSonucDurum(VENUSER,VENPASS,co);
        except on e : Exception do
         begin
           sm := e.Message;
         end;
       end;
        SonucYazVen(Sonuclar2,5);
        ornekdurumyaz('Sonuç Alýndý',id,'');
     end;

    End;
  End;

end;

{
procedure TfrmLabOrnekNoGiris.TenaySonucAlMNT(_dosyaNo,_gelisNo,_RefId : string);
var
  HTSO : TenayServiceMNT.OrderQuery;
  HTSOCvp : TenayServiceMNT.HastaSorguCevap;
  KurumMNT : TenayServiceMNT.KurumBilgileri;
  I,s , testAdet , j , x : integer;
  dosyaNo,gelisNo,testKod ,id, sm , _F_ ,sql , sonuc ,sonucA, a,b,c,t1,t2,onaytarihi,ss ,min ,max : string;
  ado : TADOQuery;
  t : boolean;
  Http : THTTPRIO;
begin
       HTSO := TenayServiceMNT.OrderQuery.Create;
       HTSOCvp := TenayServiceMNT.HastaSorguCevap.Create;
       KurumMNT := TenayServiceMNT.KurumBilgileri.Create;
       KurumMNT.KullaniciAdi := datalar._labusername;
       KurumMNT.Kodu := datalar._labkurumkod;
       KurumMNT.Sifre := datalar._labsifre;
       HTSO.KurumBilgileri := KurumMNT;


       datalar.TenayMNT.URL := datalar._laburl;
       ado := TADOQuery.Create(nil);
       ado.Connection := datalar.ADOConnection2;
       txtLog.Lines.Clear;

       progres.MaxValue := gridAktif.RowCount - 2;
       progres.Progress := 0;
       Progres.Visible := true;
       txtinfo.Caption := 'Alýnýyor...';


       for I := 1 to gridAktif.RowCount - 2 do
       begin
         Application.ProcessMessages;
         ss := '';
         gridAktif.GetCheckBoxState(1,I,t);

         if  (t = True) and (gridAktif.Cells[8,I] = 'Gönderildi')
         Then Begin
             dosyaNo := gridAktif.Cells[1,I];
             gelisNo := gridAktif.Cells[2,I];
             id := gridAktif.Cells[6,I];

             if gridAktif.Cells[4,I] = ''
             Then Begin
                 if ref.Checked
                 then
                   HTSO.ReferanId := gridAktif.ints[9,I]
                 else
                   HTSO.ReferanId := gridAktif.ints[6,I];
               try
                HTSOCvp := (datalar.TenayMNT as TenayServiceMNT.TenayWebServiceSoap).HastaSonucSorgula(HTSO);
               except on e : Exception do
                 begin
                   sm := e.Message;
                   ss := 'Hata';
                 end;
               end;
             End
             Else
             Begin
              // HTSO.GelisReferansId := '0';
               HTSO.OrnekNo := gridAktif.ints[4,I];
               try
                HTSOCvp := (datalar.TenayMNT as TenayServiceMNT.TenayWebServiceSoap).HastaSonucSorgulaOrnekNo(HTSO);
               except on e : Exception do
                 begin
                   sm := e.Message;
                   ss := 'Hata';
                 end;
               end;
             End;


            Progres.Progress := Progres.Progress + 1;

            if ss <> 'Hata'
            Then Begin
                testAdet := length(HTSOCvp.Tetkikler);
                for x := 0 to testAdet - 1 do
                begin
                  txtLog.Lines.Add(HTSOCvp.HastaBilgileri.Adi+ ' - ' +
                  HTSOCvp.Tetkikler[x].Adi + ' ' + 'Test Kodu : ' + HTSOCvp.Tetkikler[x].Kodu + ' ' +
                  'Alt Test Kodu : ' + HTSOCvp.Tetkikler[x].AltTestKodu + ' - ' + ' - ' + 'Tur Id : ' + inttostr(HTSOCvp.Tetkikler[x].OrnekTurId) + ' - ' +
                  'Sonuc : ' + HTSOCvp.Tetkikler[x].Sonuc + ' - ' +
                  onaytarihi);
                  _F_ := '';
                  testKod := KodEslestirNormalDeger(ifthen(HTSOCvp.Tetkikler[x].Kodu = '',HTSOCvp.Tetkikler[x].AltTestKodu,HTSOCvp.Tetkikler[x].Kodu),
                                                    inttostr(HTSOCvp.Tetkikler[x].OrnekTurId),min,max, _F_);

                  if HTSOCvp.Tetkikler[x].OrnekTurId = 147
                  Then _F_ := 'Cd';

                  if testKod <> ''
                  Then Begin
                    a := HTSOCvp.Tetkikler[x].Aciklama;
                 //   b := HTSOCvp.Testler[x].NormalDeger;

                     HTSOCvp.Tetkikler[x].Sonuc := StringReplace(HTSOCvp.Tetkikler[x].Sonuc,'Poz','POZ',[rfReplaceAll]);
                     HTSOCvp.Tetkikler[x].Sonuc := StringReplace(HTSOCvp.Tetkikler[x].Sonuc,'Neg','NEG',[rfReplaceAll]);
                     HTSOCvp.Tetkikler[x].Sonuc := StringReplace(HTSOCvp.Tetkikler[x].Sonuc,',','.',[rfReplaceAll]);


                     HTSOCvp.Tetkikler[x].Aciklama := StringReplace(HTSOCvp.Tetkikler[x].Aciklama,'Neg','NEG',[rfReplaceAll]);
                     HTSOCvp.Tetkikler[x].Aciklama := StringReplace(HTSOCvp.Tetkikler[x].Aciklama,'Poz','POZ',[rfReplaceAll]);

                     if (pos('NEG',HTSOCvp.Tetkikler[x].Sonuc) > 0)
                     Then sonuc := '-1'
                     Else
                     if (pos('POZ',HTSOCvp.Tetkikler[x].Sonuc) > 0)
                     Then sonuc := '1'
                     Else
                     if (pos('NEG',HTSOCvp.Tetkikler[x].Aciklama) > 0)
                     Then sonuc := '-1'
                     Else
                     if (pos('POZ',HTSOCvp.Tetkikler[x].Aciklama) > 0)
                     Then sonuc := '1'
                     Else sonuc := HTSOCvp.Tetkikler[x].Sonuc;

                     if (testKod = '907440') or
                        (testKod = '906610') or
                        (testKod = '906630') or
                        (testKod = '906660')
                     Then Begin
                        sonuc := trim(StringReplace(StringReplace(HTSOCvp.Tetkikler[x].Sonuc,'>','',[rfReplaceAll]),'<','',[rfReplaceAll]));
                        sonuc := trim(StringReplace(StringReplace(Sonuc,'NEGatif','',[rfReplaceAll]),'POZitif','',[rfReplaceAll]));
                        sonucA := sonuc;
                        try
                         if strtofloat(sonuc) < strtofloat(max)
                         Then sonuc := '-1' else sonuc := '1';
                        except end;

                        sql := 'update hareketler set islemAciklamasi  = ' + QuotedStr(sonucA) +
                               ' where onay = 1 and code = ' + QuotedStr(testKod) + ' and dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNO = ' + gelisNo ;
                        datalar.QueryExec(ado,sql);
                     End;




                    try
                     sql := 'update hareketler set ' + _F_ + '= ' + sonuc +
                              ' where onay = 1 and code = ' + QuotedStr(testKod) + ' and dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNO = ' + gelisNo ;

                     datalar.QueryExec(ado,sql);
                    except
                       sql := 'update hareketler set islemAciklamasi  = ' + QuotedStr(sonuc) +
                              ' where onay = 1 and code = ' + QuotedStr(testKod) + ' and dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNO = ' + gelisNo ;
                       datalar.QueryExec(ado,sql);

                    end;


                  End;
                end; // test for end
                ornekdurumyaz('Sonuç Alýndý',id,inttostr(HTSO.ReferanId));
            End else txtLog.Lines.Add(inttostr(HTSO.OrnekNo) + ' - ' + inttostr(HTSO.ReferanId) + ' - ' + HTSOCvp.Mesaj + ' - ' + datalar.TenayMNTRequest);

           End; //* chk end

       end;  // for end
       Progres.Visible := false;
       txtinfo.Caption := '.';

end;
 }


procedure TfrmLabOrnekNoGiris.Y1Click(Sender: TObject);
var
  I , r : integer;
  t : boolean;
  durum : string;
begin

     case TMenuItem(sender).Tag  of
       21 : durum := 'Yeni Kayýt';
       22 : durum := 'Gönderildi';
       23 : durum := 'Sonuç Alýndý';
     end;


    for I := 0 to gridAktif.SelectedRowCount - 1 do
    begin
       r := gridAktif.SelectedRow[I];
       gridAktif.cells[8,r] := durum;
    end;



end;

procedure TfrmLabOrnekNoGiris.T3Click(Sender: TObject);
var
  testEkleSonuc : ArrayOfHastaTestEklemeSonucu;
  I : integer;
  t : boolean;
  dosyaNo,gelisNo,id ,kadi,sifre,barkod,tc,adi,soyadi,cins ,sm: string;
  dtarih : TXSDateTime;
  testler : ArrayOfInt;
begin
      datalar.Login;

      txtLog.Lines.Clear;
      progres.MaxValue := gridAktif.RowCount - 2;
      progres.Progress := 0;
      Progres.Visible := true;
      txtinfo.Caption := 'Gönderiliyor...';


      For I := 1 to gridAktif.RowCount - 2 do
      Begin
        Application.ProcessMessages;
        gridAktif.GetCheckBoxState(1,I,t);

        if  (t = True) and (gridAktif.Cells[8,I] = 'Yeni Kayýt')
        Then Begin
           dosyaNo := gridAktif.Cells[1,I];
           gelisNo := gridAktif.Cells[2,I];
           id := gridAktif.Cells[6,I];
           dtarih := TXSDateTime.Create;
           testler := HastabilgileriDoldurESY(dosyaNo,gelisNo,adi,soyadi,tc,cins,dtarih);
           kadi := datalar._labusername;
           sifre := datalar._labsifre;
         //  Barkod := gridAktif.cells[6,I];
           datalar.ESY.URL := datalar._laburl;

           try
            testEkleSonuc := (datalar.ESY as LABserviceSoap).TestEkle(kadi,sifre,barkod,tc,adi,soyadi,
                                                                                 cins,dtarih,testler);
           except on e : Exception do
             begin
               sm := e.Message;
             end;
           end;


           Progres.Progress := Progres.Progress + 1;
           if testEkleSonuc[0].Sonuc = 'Baþarýlý'
           Then Begin
             gridAktif.Cells[4,I] := testEkleSonuc[0].ORNEKNO;
             ornekdurumyaz('Gönderildi',id,'',testEkleSonuc[0].ORNEKNO,'');
             txtLog.Lines.Add(Barkod + ' - ' + ' : ' + testEkleSonuc[0].Sonuc + ' ' + sm);
           End
           Else
            txtLog.Lines.Add(Barkod  + ' - ' + testEkleSonuc[0].Sonuc + ' ' + sm);

        End;
      End; // for end
      Progres.Visible := false;
      txtinfo.Caption := '.';

end;

procedure TfrmLabOrnekNoGiris.t4Click(Sender: TObject);
var
  testler : ArrayOfAktifTest;
  sm ,kadi,sifre : string;
begin
     datalar.Login;
     sifre := datalar._labsifre;
     kadi := datalar._labusername;
     datalar.ESY.URL := datalar._laburl;

     try
      testler := (datalar.ESY as LABserviceSoap).AktifTestler(kadi,sifre);
     except on e : Exception do
       begin
         sm := e.Message;
       end;
     end;

     if length(testler[0].Hata) = 0
     Then
       ShowMessageSkin('Ýþlem Tamam','','','info')
     Else
       ShowMessageSkin(testler[0].Hata,'','','info');

end;

procedure TfrmLabOrnekNoGiris.TenaySonucAl(_dosyaNo,_gelisNo,_RefId : string);
var
  HTSO : TenayService1.SonucOkuGiris;
  HTSOCvp : TenayService1.SonucOkuSonuc;
  I,s , testAdet , j , x : integer;
  dosyaNo,gelisNo,testKod , sm , _F_ ,sql , sonuc , a,b,c,t1,t2,onaytarihi ,id : string;
  ado : TADOQuery;
  t : boolean;
  Http : THTTPRIO;
  kod,tkod : string;
procedure SonucYaz(Tip : string = '');
var
  x : integer;
begin
    testAdet := HTSOCvp.TestAdet;
    for x := 0 to testAdet - 1 do
    begin
      txtLog.Lines.Add(HTSOCvp.Hasta.Adi+' '+HTSOCvp.Hasta.Soyadi + ' - ' +
      HTSOCvp.Testler[x].Adi + ' ' + HTSOCvp.Testler[x].Kod + ' ' +
      HTSOCvp.Testler[x].TestKod + ' - ' + HTSOCvp.Testler[x].Sonuc + ' - ' + onaytarihi);

      kod := HTSOCvp.Testler[x].Kod;
      tkod := HTSOCvp.Testler[x].TestKod;
      _F_ := '';
      testKod := KodEslestir(ifThen(HTSOCvp.Testler[x].Kod = '',HTSOCvp.Testler[x].TestKod,
                                    HTSOCvp.Testler[x].TestKod + '.' + HTSOCvp.Testler[x].Kod),_F_);

      if testKod <> ''
      Then Begin
        a := HTSOCvp.Testler[x].Aciklama;
     //   b := HTSOCvp.Testler[x].NormalDeger;

         HTSOCvp.Testler[x].Sonuc := StringReplace(HTSOCvp.Testler[x].Sonuc,'Poz','POZ',[rfReplaceAll]);
         HTSOCvp.Testler[x].Sonuc := StringReplace(HTSOCvp.Testler[x].Sonuc,'Neg','NEG',[rfReplaceAll]);
         HTSOCvp.Testler[x].Sonuc := StringReplace(HTSOCvp.Testler[x].Sonuc,'-','',[rfReplaceAll]);

         HTSOCvp.Testler[x].Aciklama := StringReplace(HTSOCvp.Testler[x].Aciklama,'Neg','NEG',[rfReplaceAll]);
         HTSOCvp.Testler[x].Aciklama := StringReplace(HTSOCvp.Testler[x].Aciklama,'Poz','POZ',[rfReplaceAll]);

         if (pos('NEG',HTSOCvp.Testler[x].Sonuc) > 0)
         Then sonuc := '-1'
         Else
         if (pos('POZ',HTSOCvp.Testler[x].Sonuc) > 0)
         Then sonuc := '1'
         Else
         if (pos('NEG',HTSOCvp.Testler[x].Aciklama) > 0)
         Then sonuc := '-1'
         Else
         if (pos('POZ',HTSOCvp.Testler[x].Aciklama) > 0)
         Then sonuc := '1'
         Else sonuc := HTSOCvp.Testler[x].Sonuc;


         if Tip = 'C' then _F_ := ' cd';

        try
         sql := 'update hareketler set ' + _F_ + '= ' + sonuc +
                  ' where onay = 1 and code = ' + QuotedStr(testKod) + ' and dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNO = ' + gelisNo ;

         datalar.QueryExec(ado,sql);

        except
           sql := 'update hareketler set islemAciklamasi  = ' + QuotedStr(sonuc) +
                  ' where onay = 1 and code = ' + QuotedStr(testKod) + ' and dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNO = ' + gelisNo ;
           datalar.QueryExec(ado,sql);
        end;


      End;
    end; // test for end
    ornekdurumyaz('Sonuç Alýndý',id,'');
end;

begin

       HTSO := TenayService1.SonucOkuGiris.Create;
       HTSOCvp := TenayService1.SonucOkuSonuc.Create;

       HTSO.KullaniciAdi := datalar._labusername;
       HTSO.GonderenKurumKodu := datalar._labkurumkod;
       HTSO.Sifre := datalar._labsifre;
       datalar.Sistem.URL := datalar._laburl;
       ado := TADOQuery.Create(nil);
       ado.Connection := datalar.ADOConnection2;
       txtLog.Lines.Clear;

       progres.MaxValue := gridAktif.RowCount - 2;
       progres.Progress := 0;
       Progres.Visible := true;
       txtinfo.Caption := 'Alýnýyor...';


       for I := 1 to gridAktif.RowCount - 2 do
       begin
         Application.ProcessMessages;

         gridAktif.GetCheckBoxState(1,I,t);
         if  (t = True) and (gridAktif.Cells[8,I] = 'Gönderildi')
         Then Begin
             dosyaNo := gridAktif.Cells[1,I];
             gelisNo := gridAktif.Cells[2,I];
             id := gridAktif.Cells[6,I];

             if gridAktif.Cells[4,I] = ''
             Then Begin
               HTSO.GelisReferansId := gridAktif.Cells[6,I];
               try
                HTSOCvp := (datalar.Sistem as TenayService1.HastaIslemleriSoap).SonucOku(HTSO);
               except on e : Exception do
                 begin
                   sm := e.Message;
                 end;
               end;
               if HTSOCvp.SonucMesaji = ''
               Then Begin
                 SonucYaz;
               End else txtLog.Lines.Add(inttostr(HTSO.OrnekNo) + ' - ' + HTSO.GelisReferansId + ' - ' + HTSOCvp.SonucMesaji + ' - ' + sm);
             End
             Else
             Begin
              // HTSO.GelisReferansId := '0';
               HTSO.OrnekNo := gridAktif.ints[4,I];
               HTSO.NoRef := True;
               try
                HTSOCvp := (datalar.Sistem as Tenayservice1.HastaIslemleriSoap).SonucOkuNoRef(HTSO);
               except on e : Exception do
                 begin
                   sm := e.Message;
                 end;
               end;
               if HTSOCvp.SonucMesaji = ''
               Then Begin
                 SonucYaz('');
               End else txtLog.Lines.Add(inttostr(HTSO.OrnekNo) + ' - ' + HTSO.GelisReferansId + ' - ' + HTSOCvp.SonucMesaji + ' - ' + sm);

               if gridAktif.cells[5,I] <> ''
               Then Begin
                 HTSO.OrnekNo := gridAktif.ints[5,I];
                 HTSO.NoRef := True;
                 try
                  HTSOCvp := (datalar.Sistem as Tenayservice1.HastaIslemleriSoap).SonucOkuNoRef(HTSO);
                 except on e : Exception do
                   begin
                     sm := e.Message;
                   end;
                 end;

                 if HTSOCvp.SonucMesaji = ''
                 Then Begin
                   SonucYaz('C');
                 End else txtLog.Lines.Add(inttostr(HTSO.OrnekNo) + ' - ' + HTSO.GelisReferansId + ' - ' + HTSOCvp.SonucMesaji + ' - ' + sm);
               End;

             End;
             Progres.Progress := Progres.Progress + 1;
         End; //* chk end
       end;  // for end
       Progres.Visible := false;
       txtinfo.Caption := '.';

end;


{
procedure TfrmLabOrnekNoGiris.TenaySonucAlBio(_dosyaNo,_gelisNo,_RefId : string);
var
  HTSO : TenayServiceBIO.OrderQuery;
  HTSOCvp : TenayServiceBIO.HastaSorguCevap;
  KurumBIO : TenayServiceBIO.KurumBilgileri;
  I,s , testAdet , j , x : integer;
  dosyaNo,gelisNo,testKod ,id, sm , _F_ ,sql , sonuc ,sonucA, a,b,c,t1,t2,onaytarihi,ss ,min ,max : string;
  ado : TADOQuery;
  t : boolean;
  Http : THTTPRIO;
begin
       HTSO := TenayServiceBIO.OrderQuery.Create;
       HTSOCvp := TenayServiceBIO.HastaSorguCevap.Create;
       KurumBIO := TenayServiceBIO.KurumBilgileri.Create;
       KurumBIO.KullaniciAdi := datalar._labusername;
       KurumBIO.Kodu := datalar._labkurumkod;
       KurumBIO.Sifre := datalar._labsifre;
       HTSO.KurumBilgileri := KurumBIO;


       datalar.TenayBIO.URL := datalar._laburl;
       ado := TADOQuery.Create(nil);
       ado.Connection := datalar.ADOConnection2;
       txtLog.Lines.Clear;

       progres.MaxValue := gridAktif.RowCount - 2;
       progres.Progress := 0;
       Progres.Visible := true;
       txtinfo.Caption := 'Alýnýyor...';


       for I := 1 to gridAktif.RowCount - 2 do
       begin
         Application.ProcessMessages;
         ss := '';
         gridAktif.GetCheckBoxState(1,I,t);

         if  (t = True) and (gridAktif.Cells[8,I] = 'Gönderildi')
         Then Begin
             dosyaNo := gridAktif.Cells[1,I];
             gelisNo := gridAktif.Cells[2,I];
             id := gridAktif.Cells[6,I];

             if gridAktif.Cells[4,I] = ''
             Then Begin
                 if ref.Checked
                 then
                   HTSO.ReferanId := gridAktif.ints[9,I]
                 else
                   HTSO.ReferanId := gridAktif.ints[6,I];
               try
                HTSOCvp := (datalar.TenayBIO as TenayServiceBIO.TenayWebServiceSoapBio).HastaSonucSorgula(HTSO);
               except on e : Exception do
                 begin
                   sm := e.Message;
                   ss := 'Hata';
                 end;
               end;
             End
             Else
             Begin
              // HTSO.GelisReferansId := '0';
               HTSO.OrnekNo := gridAktif.ints[4,I];
               try
                HTSOCvp := (datalar.TenayBIO as TenayServiceBIO.TenayWebServiceSoapBio).HastaSonucSorgulaOrnekNo(HTSO);
               except on e : Exception do
                 begin
                   sm := e.Message;
                   ss := 'Hata';
                 end;
               end;
             End;


            Progres.Progress := Progres.Progress + 1;

            if ss <> 'Hata'
            Then Begin
                testAdet := length(HTSOCvp.Tetkikler);
                for x := 0 to testAdet - 1 do
                begin
                  txtLog.Lines.Add(HTSOCvp.HastaBilgileri.Adi+ ' - ' +
                  HTSOCvp.Tetkikler[x].Adi + ' ' + 'Test Kodu : ' + HTSOCvp.Tetkikler[x].Kodu + ' ' +
                  'Alt Test Kodu : ' + HTSOCvp.Tetkikler[x].AltTestKodu + ' - ' + ' - ' + 'Tur Id : ' + inttostr(HTSOCvp.Tetkikler[x].OrnekTurId) + ' - ' +
                  'Sonuc : ' + HTSOCvp.Tetkikler[x].Sonuc + ' - ' +
                  onaytarihi);
                  _F_ := '';
                  testKod := KodEslestirNormalDeger(ifthen(HTSOCvp.Tetkikler[x].Kodu = '',HTSOCvp.Tetkikler[x].AltTestKodu,HTSOCvp.Tetkikler[x].Kodu),
                                                    inttostr(HTSOCvp.Tetkikler[x].OrnekTurId),min,max, _F_);

                  if HTSOCvp.Tetkikler[x].OrnekTurId = 147
                  Then _F_ := 'Cd';

                  if testKod <> ''
                  Then Begin
                    a := HTSOCvp.Tetkikler[x].Aciklama;
                 //   b := HTSOCvp.Testler[x].NormalDeger;

                     HTSOCvp.Tetkikler[x].Sonuc := StringReplace(HTSOCvp.Tetkikler[x].Sonuc,'Poz','POZ',[rfReplaceAll]);
                     HTSOCvp.Tetkikler[x].Sonuc := StringReplace(HTSOCvp.Tetkikler[x].Sonuc,'Neg','NEG',[rfReplaceAll]);
                     HTSOCvp.Tetkikler[x].Sonuc := StringReplace(HTSOCvp.Tetkikler[x].Sonuc,',','.',[rfReplaceAll]);


                     HTSOCvp.Tetkikler[x].Aciklama := StringReplace(HTSOCvp.Tetkikler[x].Aciklama,'Neg','NEG',[rfReplaceAll]);
                     HTSOCvp.Tetkikler[x].Aciklama := StringReplace(HTSOCvp.Tetkikler[x].Aciklama,'Poz','POZ',[rfReplaceAll]);

                     if (pos('NEG',HTSOCvp.Tetkikler[x].Sonuc) > 0)
                     Then sonuc := '-1'
                     Else
                     if (pos('POZ',HTSOCvp.Tetkikler[x].Sonuc) > 0)
                     Then sonuc := '1'
                     Else
                     if (pos('NEG',HTSOCvp.Tetkikler[x].Aciklama) > 0)
                     Then sonuc := '-1'
                     Else
                     if (pos('POZ',HTSOCvp.Tetkikler[x].Aciklama) > 0)
                     Then sonuc := '1'
                     Else sonuc := HTSOCvp.Tetkikler[x].Sonuc;

                     if (testKod = '907440') or
                        (testKod = '906610') or
                        (testKod = '906630') or
                        (testKod = '906660')
                     Then Begin
                        sonuc := trim(StringReplace(StringReplace(HTSOCvp.Tetkikler[x].Sonuc,'>','',[rfReplaceAll]),'<','',[rfReplaceAll]));
                        sonuc := trim(StringReplace(StringReplace(Sonuc,'NEGatif','',[rfReplaceAll]),'POZitif','',[rfReplaceAll]));
                        sonucA := sonuc;
                        try
                         if strtofloat(sonuc) < strtofloat(max)
                         Then sonuc := '-1' else sonuc := '1';
                        except end;

                        sql := 'update hareketler set islemAciklamasi  = ' + QuotedStr(sonucA) +
                               ' where onay = 1 and code = ' + QuotedStr(testKod) + ' and dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNO = ' + gelisNo ;
                        datalar.QueryExec(ado,sql);
                     End;




                    try
                     sql := 'update hareketler set ' + _F_ + '= ' + sonuc +
                              ' where onay = 1 and code = ' + QuotedStr(testKod) + ' and dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNO = ' + gelisNo ;

                     datalar.QueryExec(ado,sql);
                    except
                       sql := 'update hareketler set islemAciklamasi  = ' + QuotedStr(sonuc) +
                              ' where onay = 1 and code = ' + QuotedStr(testKod) + ' and dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNO = ' + gelisNo ;
                       datalar.QueryExec(ado,sql);

                    end;


                  End;
                end; // test for end
                ornekdurumyaz('Sonuç Alýndý',id,inttostr(HTSO.ReferanId));
            End else txtLog.Lines.Add(inttostr(HTSO.OrnekNo) + ' - ' + inttostr(HTSO.ReferanId) + ' - ' + HTSOCvp.Mesaj + ' - ' + datalar.TenayMNTRequest);

           End; //* chk end

       end;  // for end
       Progres.Visible := false;
       txtinfo.Caption := '.';

end;
}


procedure TfrmLabOrnekNoGiris.S6Click(Sender: TObject);
begin
  datalar.Login;
  if datalar._labfirma = 'MNT'
  then  begin
    TenaySonucAlMNT('','','',gridAktif,txtLog,progres,ref.Checked);
  end;

  if (datalar._labfirma = 'Sistem') or (datalar._labfirma = 'Gama') or (datalar._labfirma = 'Simge')
  Then begin
    TenaySonucAl('','','');
  end;

  if datalar._labfirma = 'Bio'
  Then begin
   TenaySonucAlBio('','','',gridAktif,txtLog,progres,ref.Checked);
  end;





end;

procedure TfrmLabOrnekNoGiris.S7Click(Sender: TObject);
var
  _dataset_ : TClientDataSet;
  gndref,gndrefs,tstref,hstref,glmref,fromglstar,toglstar,HataMesaji: string;
  XML : TXMLData;
  XMLString , sm , hata ,dosyaNo,gelisNo,id , sonuc ,testKod , _F_ ,sql , msj : string;
  SonucListesi : ReLabSonucListesiResult;
  I : integer;
  t : boolean;
  ado : TADOQuery;

procedure SonucYaz(dataset : TClientDataSet ; id : string);
var
  x : integer;
  t1,t2 ,sonucAciklama: string;
begin
    ado := TADOQuery.Create(nil);
    ado.Connection := datalar.ADOConnection2;

    t1 := tarihal(txtTarih.Date);
    t2 := tarihal(txttarih1.Date);
    Progres.Visible := True;
    Progres.MaxValue := dataset.RecordCount;

    while not dataset.Eof do
    begin
     Application.ProcessMessages;
     Progres.Progress := Progres.Progress + 1;

     try
        dosyaNO := '0';
        gelisNo := '0';
        TCdenDosyaNoGelisNo(dataset.FieldByName('HASTATCKNO').AsString,t1,t2,dosyaNo,gelisNo,id);
        _F_ := '';
        testKod := KodEslestir(dataset.FieldByName('TESTREF').AsString,_F_);

        txtLog.Lines.Add(dataset.FieldByName('HASTATCKNO').AsString + ' ' +
                       dataset.FieldByName('HASTAADI').AsString + '/ ' +
                       dosyaNO + ' ' + gelisNo + ' - /  ' +
                       testKod + ' ' + dataset.FieldByName('TESTREF').AsString +' '+
                       dataset.FieldByName('TESTADI').AsString + ' - ' +
                       dataset.FieldByName('SONUC').AsString + ' - ' +
                       dataset.FieldByName('SONUCTEXT').AsString);


      if testKod <> ''
      Then Begin
         sonuc := dataset.FieldByName('SONUC').AsString;
         sonucAciklama := dataset.FieldByName('SONUCTEXT').AsString;
         if pos('SAMPLE RESULT',sonucaciklama) > 0
         then begin
           sonucAciklama := StringReplace(sonucAciklama,'SAMPLE RESULT','',[rfReplaceAll]);
           sonucAciklama := StringReplace(sonucAciklama,':','',[rfReplaceAll]);
           sonucAciklama := TrimLeft(sonucAciklama);
           sonucAciklama := copy(sonucAciklama,1,5);
         end;


         Sonuc := StringReplace(Sonuc,'Poz','POZ',[rfReplaceAll]);
         Sonuc := StringReplace(Sonuc,'Neg','NEG',[rfReplaceAll]);

         if (pos('NEG',Sonuc) > 0)
         Then sonuc := '-1'
         Else
         if (pos('POZ',Sonuc) > 0)
         Then sonuc := '1'
         Else
         sonuc := Sonuc;


        try
         sql := 'update hareketler set ' + _F_ + '= ' + sonuc +
                  ' where onay = 1 and code = ' + QuotedStr(testKod) + ' and dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNO = ' + gelisNo ;

         datalar.QueryExec(ado,sql);

         sql := 'update hareketler set islemAciklamasi  = ' + QuotedStr(sonucAciklama) +
                ' where onay = 1 and code = ' + QuotedStr(testKod) + ' and dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNO = ' + gelisNo ;
         datalar.QueryExec(ado,sql);

        except on e : exception do
          begin
           sql := 'update hareketler set islemAciklamasi  = ' + QuotedStr(sonucAciklama) +
                  ' where onay = 1 and code = ' + QuotedStr(testKod) + ' and dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNO = ' + gelisNo ;
           datalar.QueryExec(ado,sql);
           //ShowMessage(e.Message);
          end;
        end;
      End;

     except on ee : Exception do
      begin
          txtLog.Lines.Add(dataset.FieldByName('HASTATCKNO').AsString + ' ' +
                       dataset.FieldByName('HASTAADI').AsString + '/ ' +
                       dosyaNO + ' ' + gelisNo + ' - /  ' +
                       testKod + ' ' + dataset.FieldByName('TESTREF').AsString +' '+
                       dataset.FieldByName('TESTADI').AsString + ' - ' +
                       dataset.FieldByName('SONUC').AsString + ';' + ee.Message+'; '+_F_);
      end;
     end;
      dataset.Next;
    end; // test for end
    ornekdurumyaz('Sonuç Alýndý',id,'');
    ado.Free;
end;

begin

  fromglstar := FormattedTarihYYMMGG(tarihal(txtTarih.Date),'-');
  toglstar := FormattedTarihYYMMGG(tarihal(txtTarih1.Date),'-');

  if TMenuItem(sender).Tag = 1
  Then begin
    glmref := gridAktif.Cells[4,gridAktif.Row];
    if glmref = ''
    then begin
      ShowMessageSkin('Örnek Numarasý Boþ olamaz !','','','info');
      exit;
    end;
  end;



  SonucListesi := ReLabSonucListesiResult.Create;
 // Referans.URL :='http://www.referanslab.com/Webservice/ReLabSonucOku.asmx';
  datalar.Login;
  Referans.URL := datalar._laburl;
  gndref := datalar._labusername;
  gndrefs := datalar._labsifre;

  txtinfo.Caption := 'Sonuçlar Servisten Okunuyor...';
  Application.ProcessMessages;
  try
   SonucListesi := (Referans as ReLabSonucOkuSoap).ReLabSonucListesi(gndref,gndrefs,tstref,hstref,glmref,fromglstar,toglstar,msj);
  except on e : Exception do
   begin
     sm := e.Message;
     txtLog.Lines.Add(e.Message);
   end;
  end;

  try
    txtinfo.Caption := 'Sonuçlar Sisteme Yazýlýyor...';
   Application.ProcessMessages;
    SonucYaz(ClientDataSet1,id);
  except
  end;

  txtinfo.Caption := '';

end;

procedure TfrmLabOrnekNoGiris.S9Click(Sender: TObject);
var
  Cvp : BirlabService.SorguCevap;
  Sql , VENPASS,VENUSER,KURUM_KODU , SERVIS_KODU ,ss ,sm, dosyaNo,tc,gelisNo,islemNo : string;
  testKod ,test , min,max, _F_,sonuc ,sonucA ,id ,tarih1,tarih2: string;
  ado : TADOQuery;
  x, testAdet : integer;
  t : boolean;
  url,_url_ : string;
  i,r: integer;
  idHttp: TIdHTTP;
  Response: TStringStream;
  Json: ISuperObject;
  JArr: TSuperArray;

begin
   VENUSER := datalar._labusername;
   KURUM_KODU := datalar._labkurumkod;
   VENPASS := datalar._labsifre;

   Response := TStringStream.Create;
   idHttp1.Request.UserName := VENUSER;
   idHttp1.Request.Password := VENPASS;
   url := datalar._laburl;                    // 2016-02-01   2016-02-010

   ado := TADOQuery.Create(nil);
   ado.Connection := datalar.ADOConnection2;
   txtLog.Lines.Clear;

   progres.MaxValue := gridAktif.RowCount - 2;
   progres.Progress := 0;
   Progres.Visible := true;
   txtinfo.Caption := 'Alýnýyor...';


   for I := 1 to gridAktif.RowCount - 2 do
   begin
     Application.ProcessMessages;
     ss := '';
     gridAktif.GetCheckBoxState(1,I,t);

     if  (t = True) and (gridAktif.Cells[8,I] = 'Gönderildi')
     Then Begin
         tc := gridAktif.Cells[7,I];
         dosyaNo := gridAktif.Cells[1,I];
         gelisNo := gridAktif.Cells[2,I];
         tarih1 := FormatDatetime('yyyy-mm-dd',txtTarih.Date);
         tarih2 := FormatDatetime('yyyy-mm-dd',txtTarih1.Date);
         id := gridAktif.Cells[6,I];

        try
          Response.Clear;
          url := datalar._laburl;
          idHttp1.Get(url+tc+'/'+tarih1+'/'+tarih2+'', Response);
          Response.SaveToFile('Birlab.txt');
          try
            Json := SO(Response.DataString);
            JArr := Json.AsArray;
             txtLog.Lines.Add(inttostr(JArr.LengtH));
          except on e : exception do
            begin
             txtLog.Lines.Add(e.Message);
            end;
          end;


          for r := 0 to JArr.LengtH - 1 do
          begin

                txtLog.Lines.Add(JArr.O[r].S['HASTA_ADI'] + ' ' +JArr.O[r].S['HASTA_SOYADI']+ ' - ' + JArr.O[r].S['TETKIK_ADI'] + ' ' +
                JArr.O[r].S['SUT_KODU']  + ' - ' + JArr.O[r].S['SONUC']);

                _F_ := '';
                testKod := KodEslestirNormalDeger(JArr.O[r].S['SUT_KODU']+'.'+JArr.O[r].S['PARAMETRE_ID']
                                                         ,'0',min,max, _F_);

                if testKod <> ''
                Then Begin
                   sonuc := JArr.O[r].S['SONUC'];
                   sonuc := StringReplace(sonuc,'Poz','POZ',[rfReplaceAll]);
                   sonuc := StringReplace(sonuc,'Neg','NEG',[rfReplaceAll]);
                   sonuc := StringReplace(sonuc,',','.',[rfReplaceAll]);
                   sonucA := JArr.O[r].S['SONUC'];

                   if (pos('NEG',sonuc) > 0)
                   Then sonuc := '-1'
                   Else
                   if (pos('POZ',sonuc) > 0)
                   Then sonuc := '1'
                   Else sonuc := sonuc;

                   if (testKod = '907440') or
                      (testKod = '906610') or
                      (testKod = '906630') or
                      (testKod = '906660')
                   Then Begin
                     try
                      sonuc := trim(StringReplace(StringReplace(sonuc,'>','',[rfReplaceAll]),'<','',[rfReplaceAll]));
                      if strtofloat(sonuc) < strtofloat(max)
                      Then sonuc := '-1' else sonuc := '1';

                      sql := 'update hareketler set islemAciklamasi  = ' + QuotedStr(sonucA) +
                             ' where onay = 1 and code = ' + QuotedStr(testKod) + ' and dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNO = ' + gelisNo ;
                      datalar.QueryExec(ado,sql);
                     except
                     end;
                   End;

                  try
                   sql := 'update hareketler set ' + _F_ + '= ' + sonuc +
                            ' where onay = 1 and code = ' + QuotedStr(testKod) + ' and dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNO = ' + gelisNo ;

                   datalar.QueryExec(ado,sql);
                  except
                     sql := 'update hareketler set islemAciklamasi  = ' + QuotedStr(sonuc) +
                            ' where onay = 1 and code = ' + QuotedStr(testKod) + ' and dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNO = ' + gelisNo ;
                     datalar.QueryExec(ado,sql);
                  end;
                End;
          end; // test for end
          ornekdurumyaz('Sonuç Alýndý',id,'');

         Except on e : Exception do
         begin
           txtLog.Lines.Add(e.Message);
           Response.Free;
         end;
        end;
     end;
     Progres.Progress := Progres.Progress + 1;
   end;  // for end
   Progres.Visible := false;
   txtinfo.Caption := '.';
   ado.Free;

end;

procedure TfrmLabOrnekNoGiris.sBitBtn4Click(Sender: TObject);
var
 I : integer;
 t : boolean;
 dosyaNo,gelisNo : string;
begin
  memData.Active := false;
  memData.Active := True;
  For I := 1 to gridAktif.RowCount - 2 do
  Begin
    Application.ProcessMessages;
    gridAktif.GetCheckBoxState(1,I,t);
    if  t = True
    Then Begin
      memData.Append;
      memData.FieldByName('dosyaNo').AsString := gridAktif.Cells[1,I];
      memData.FieldByName('gelisNo').AsInteger := gridAktif.ints[2,I];
      dosyaNo := gridAktif.Cells[1,I];
      gelisNo := gridAktif.Cells[2,I];
      memData.FieldByName('ornekNo').AsString :=
            ifThen(gridAktif.Cells[4,I] = '',dosyaNo + gelisNo,gridAktif.Cells[4,I]);

      memData.FieldByName('CikisornekNo').AsString := gridAktif.Cells[5,I];
      memData.FieldByName('SIRANO').AsString := gridAktif.cells[6,I];
      memData.FieldByName('TC').AsString := gridAktif.cells[7,I];
      memData.FieldByName('hasta').AsString := gridAktif.cells[3,I];
      memData.FieldByName('OrnekNo_Plazma').AsString := gridAktif.cells[10,I];
      memData.FieldByName('OrnekNo_Serum').AsString := gridAktif.cells[11,I];
      memData.FieldByName('OrnekNo_TamKan').AsString := gridAktif.cells[12,I];
      memData.Post
    End;
  End;


    frmRapor.topluset.Dataset0 := memData;
    frmRapor.raporData1(frmRapor.topluset ,'230','\Barkod Bas');
    frmRapor.ShowModal;


end;

procedure TfrmLabOrnekNoGiris.LabSonucAlInVitroClick(Sender: TObject);
var
  SonucAlGiris : TSonucAlInput;
  SonucAlCevap : TSonucAlCevap;

  I,s , testAdet , j , x : integer;
  dosyaNo,gelisNo , testKod , sm , _F_ ,sql , sonuc , a,b,c,t1,t2 , tt , tip : string;
  ado : TADOQuery;
  t : boolean;

procedure SonuzYaz(S : TSonucAlCevap ; c  : integer);
var
  x : integer;
  LabKod , k: string;
begin
   testadet := Length(S.HASTASONUCARRAY);

    for x := 0 to testAdet - 1 do
    begin
      tt:=   s.HASTASONUCARRAY[x].BUTCEKODU + ' - ' + s.HASTASONUCARRAY[x].TESTADI + ' - ' +
             s.HASTASONUCARRAY[x].PARAMETREADI + ' - ' + s.HASTASONUCARRAY[x].SONUC;

      txtLog.Lines.Add(gridAktif.Cells[c,I] + ' - ' + tt );

      LabKod := '';
      LabKod := KodEslestirLabKodu(s.HASTASONUCARRAY[x].PARAMETREADI,k);
      if LabKod = ''
      Then LabKod := KodEslestir(s.HASTASONUCARRAY[x].BUTCEKODU,tip);


         if (pos(NEG,s.HASTASONUCARRAY[x].SONUC) > 0)
         Then sonuc := '-1'
         Else
         if (pos(POZ,s.HASTASONUCARRAY[x].SONUC) > 0)
         Then sonuc := '1'
         Else sonuc := s.HASTASONUCARRAY[x].SONUC;


           sql := 'update hareketler set ' + _F_ + '= ' + sonuc +
                 // ',islemaciklamasi = ' + QuotedStr(s.HASTASONUCARRAY[x].SONUC) +
                  ' where onay = 1 and code = ' + QuotedStr(LabKod) +
                 // ' and NAME1 = ' + QuotedStr(s.HASTASONUCARRAY[x].PARAMETREADI) +
                  ' and dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNO = ' + gelisNo ;


        try
         datalar.QueryExec(ado,sql);
        except
          sql := 'update hareketler set islemaciklamasi = ' + QuotedStr(s.HASTASONUCARRAY[x].SONUC) +
                 ' where onay = 1 and code = ' + QuotedStr(LabKod) +
           // ' and NAME1 = ' + QuotedStr(s.HASTASONUCARRAY[x].PARAMETREADI) +
                 ' and dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNO = ' + gelisNo ;
               datalar.QueryExec(ado,sql);

        end;


    end; // test for end

end;



begin
    datalar.Login;
    if datalar._labfirma = 'InVitro'
    Then Begin

       SonucAlGiris := TSonucAlInput.Create;
       SonucAlCevap := TSonucAlCevap.Create;

       SonucAlGiris.HASTANEKODU := datalar._labusername;
       SonucAlGiris.SIFRE := datalar._labsifre;



       ado := TADOQuery.Create(nil);
       ado.Connection := datalar.ADOConnection2;
       txtLog.Lines.Clear;

       progres.MaxValue := gridAktif.RowCount - 2;
       progres.Progress := 0;
       Progres.Visible := true;
       txtinfo.Caption := 'Alýnýyor...';


       for I := 1 to gridAktif.RowCount - 2 do
       begin
         Application.ProcessMessages;

         gridAktif.GetCheckBoxState(1,I,t);
         if  t = True
         Then Begin


            dosyaNo := gridAktif.Cells[1,I];
            gelisNo := gridAktif.Cells[2,I];

            SonucAlGiris.BARKOD := gridAktif.Cells[4,I];
            _F_ := 'Gd';

            try
             SonucAlCevap := (datalar.LabSonucAlInVitro as ISonucAl).HASTASONUCAL(SonucAlGiris);
            except on e : Exception do
             begin
               sm := e.Message;
             end;
            end;


            if SonucAlCevap.HATAKODU = '0000'
            Then Begin
              SonuzYaz(SonucAlCevap,4);
            End; // hatakodu


            SonucAlGiris.BARKOD := gridAktif.Cells[5,I];
            _F_ := 'Cd';

            try
             SonucAlCevap := (datalar.LabSonucAlInVitro as ISonucAl).HASTASONUCAL(SonucAlGiris);
            except on e : Exception do
             begin
               sm := e.Message;
             end;
            end;


            if SonucAlCevap.HATAKODU = '0000'
            Then Begin
              SonuzYaz(SonucAlCevap,5);
            End; // hatakodu




         End;  // satýr secili ise end

       end; // for end
    end; // InVitro


end;

procedure TfrmLabOrnekNoGiris.E2Click(Sender: TObject);
var
  ado : TADOQuery;
  I : integer;
  ss ,dosyaNo,gelisNo,tc,id,kul,sif,testkod,sonuc,_F_,sql: string;
  t : boolean;
  xml : XSBuiltIns.TxmlData;
  t1,t2 : TXSDateTime;
  Bilgi : IXMLTestSonuclariType;

procedure SonucYaz(dataset : TClientDataSet ; id : string);
var
  x : integer;
  t1,t2 ,sonucAciklama: string;
begin
    ado := TADOQuery.Create(nil);
    ado.Connection := datalar.ADOConnection2;

    t1 := tarihal(txtTarih.Date);
    t2 := tarihal(txttarih1.Date);
    Progres.Visible := True;
    Progres.MaxValue := dataset.RecordCount;

    while not dataset.Eof do
    begin
     Application.ProcessMessages;
     Progres.Progress := Progres.Progress + 1;

     try
        dosyaNO := '0';
        gelisNo := '0';
        TCdenDosyaNoGelisNo(dataset.FieldByName('TCKIMLIKNO').AsString,t1,t2,dosyaNo,gelisNo,id);
        _F_ := '';
        testKod := KodEslestir(dataset.FieldByName('TEST_NO').AsString,_F_);

        txtLog.Lines.Add(dataset.FieldByName('TCKIMLIKNO').AsString + ' ' +
                       dataset.FieldByName('HASTA_ADI').AsString + '/ ' +
                       dosyaNO + ' ' + gelisNo + ' - /  ' +
                       testKod + ' ' + dataset.FieldByName('TEST_NO').AsString +' '+
                       dataset.FieldByName('ID').AsString + ' ' +
                      // dataset.FieldByName('TAHLIL_TIPI').AsString + ' ' +
                       dataset.FieldByName('TEST_ISMI').AsString + ' - ' +
                       dataset.FieldByName('SONUC').AsString);


      if testKod <> ''
      Then Begin
         sonuc := dataset.FieldByName('SONUC').AsString;
         sonucAciklama := sonuc;

         Sonuc := StringReplace(Sonuc,'Poz','POZ',[rfReplaceAll]);
         Sonuc := StringReplace(Sonuc,'Neg','NEG',[rfReplaceAll]);

         Sonuc := StringReplace(Sonuc,'>','',[rfReplaceAll]);
         Sonuc := StringReplace(Sonuc,'<','',[rfReplaceAll]);
         Sonuc := StringReplace(Sonuc,',','.',[rfReplaceAll]);


         if (pos('NEG',Sonuc) > 0)
         Then sonuc := '-1'
         Else
         if (pos('POZ',Sonuc) > 0)
         Then sonuc := '1'
         Else
         sonuc := Sonuc;


        try

         sql := 'DECLARE @sonuc float ' +
                ' SET @sonuc = ' + sonuc +
                ' UPDATE Hareketler ' +
                ' SET	Gd = (CASE WHEN @sonuc > gd THEN @sonuc ELSE gd END),' +
                ' Cd = (CASE WHEN @sonuc < gd THEN @sonuc ELSE cd END) ' +
                ' from hareketler h ' +
                ' join LabTestler t on h.code = t.butkodu ' +
                ' where onay = 1 and t.Uygulamaadet = 2 and code = ' + QuotedStr(testKod) + ' and dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNO = ' + gelisNo ;

         datalar.QueryExec(ado,sql);

         sql := 'DECLARE @sonuc float ' +
                ' SET @sonuc = ' + sonuc +
                ' UPDATE Hareketler ' +
                ' SET	Gd = @sonuc ' +
                ' from hareketler h ' +
                ' join LabTestler t on h.code = t.butkodu ' +
                ' where onay = 1 and t.Uygulamaadet = 1 and code = ' + QuotedStr(testKod) + ' and dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNO = ' + gelisNo ;

         datalar.QueryExec(ado,sql);



        (*
         sql := 'update hareketler set islemAciklamasi  = ' + QuotedStr(sonucAciklama) +
                ' where code = ' + QuotedStr(testKod) + ' and dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNO = ' + gelisNo ;
         datalar.QueryExec(ado,sql);
          *)
        except on e : exception do
          begin
           sql := 'update hareketler set islemAciklamasi  = ' + QuotedStr(sonucAciklama) +
                  ' where onay = 1 and code = ' + QuotedStr(testKod) + ' and dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNO = ' + gelisNo ;
           datalar.QueryExec(ado,sql);
           //ShowMessage(e.Message);
          end;
        end;
      End;

     except on ee : Exception do
      begin
          txtLog.Lines.Add(dataset.FieldByName('TCKIMLIKNO').AsString + ' ' +
                       dataset.FieldByName('HASTA_ADI').AsString + '/ ' +
                       dosyaNO + ' ' + gelisNo + ' - /  ' +
                       testKod + ' ' + dataset.FieldByName('TEST_NO').AsString +' '+
                       dataset.FieldByName('ID').AsString + ' - ' +
                       dataset.FieldByName('SONUC').AsString + ';' + ee.Message+'; '+_F_);
      end;
     end;
      dataset.Next;
    end; // test for end

      // markerlar için aralýk deðerine göre pozitif negatif yap
   (*
      sql := ' UPDATE Hareketler ' +
             ' SET islemAciklamasi = (case when onay = 1 and gd > 0 THEN cast(gd AS VARCHAR) ELSE '''' END),' +
             ' Gd = (CASE WHEN onay = 1 and gd between minD and MaxD THEN -1 ' +
             '  ELSE ' +
             '   CASE WHEN onay = 1 and gd not between minD and MaxD THEN 1 ELSE gd END ' +
             ' END) ' +
             ' from Hareketler h ' +
             ' join LabTestler t on h.code = t.butkodu ' +
             ' where onay = 1 and sonucTip = ''B'' and dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNO = ' + gelisNo ;
      datalar.QueryExec(ado,sql);
     *)


    ornekdurumyaz('Sonuç Alýndý',id,'');
    ado.Free;
end;

begin

  t1 := TXSDateTime.Create;
  t1.Day := dayof(txtTarih.Date);
  t1.Month := MonthOf(txtTarih.Date);
  t1.Year := YearOf(txtTarih.date);
  t2 := TXSDateTime.Create;
  t2.Day := dayof(txtTarih1.Date);
  t2.Month := MonthOf(txtTarih1.Date);
  t2.Year := YearOf(txtTarih1.date);


  datalar.Login;
  kul := datalar._labusername;
  sif := datalar._labsifre;

  ado := TADOQuery.Create(nil);
  ado.Connection := datalar.ADOConnection2;
  xml := XSBuiltIns.TXMLData.Create;
  ErguvanHttp.URL := datalar._laburl;

  Progres.Visible := True;
  Progres.MaxValue := gridAktif.RowCount - 1;

   for I := 1 to gridAktif.RowCount - 2 do
   begin
     Application.ProcessMessages;
     ss := '';
     gridAktif.GetCheckBoxState(1,I,t);

     if  (t = True) and (gridAktif.Cells[8,I] = 'Gönderildi')
     Then Begin
         dosyaNo := gridAktif.Cells[1,I];
         gelisNo := gridAktif.Cells[2,I];
         id := gridAktif.Cells[6,I];
         tc := gridAktif.Cells[7,I];

         try
           xml := (ErguvanHttp as Service1Soap).TetkikSonuclariGetir(kul,sif,t1,t2,tc).schema;
         except on e : exception do
           begin
              ShowMessage(e.Message);
           end;
         end;


        try
          txtinfo.Caption := 'Sonuçlar Sisteme Yazýlýyor...';
          Application.ProcessMessages;
          SonucYaz(ClientDataSet1,id);


        except
        end;


       End; //* chk end
   end;  // for end

   Progres.Visible := false;
   txtinfo.Caption := '.';




end;

procedure TfrmLabOrnekNoGiris.ErguvanHttpAfterExecute(const MethodName: string;
  SOAPResponse: TStream);
var
  XMLDoc: IXMLDocument;
begin
  SOAPResponse.Position := 0;
  Memo1.Lines.LoadFromStream(SOAPResponse);

  Memo1.Lines.SaveToFile('ErguvanCvp.XML');

  ClientDataset1.Active := FALSE;
  SOAPResponse.Position := 0;
  XMLDoc := NewXMLDocument;
  XMLDoc.Encoding := 'UTF8';
  SOAPResponse.Position := 0;
  XMLDoc.LoadFromStream(SOAPResponse);

  XMLTransformProvider1.TransformRead.TransformationFile := 'Erguvan.xtr';

  XMLTransformProvider1.TransformRead.SourceXmlDocument := XMLDoc.GetDOMDocument;
  ClientDataset1.Active := TRUE;
end;
end.
