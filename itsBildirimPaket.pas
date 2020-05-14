unit itsBildirimPaket;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, Menus, StdCtrls, cxButtons, cxGroupBox, DB, ADODB,
  cxTextEdit, cxMaskEdit, cxButtonEdit, cxDBEdit,kadirType,KadirLabel,Kadir,
  GirisUnit,Data_Modul, dxSkinsCore, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinsDefaultPainters, cxCheckBox, cxLabel,
  dxSkinscxPCPainter, cxPCdxBarPopupMenu, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxDBData, cxMemo, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxPC,
  xsBuiltIns,IdCoderMIME,System.ZLib, Zip,
  HastaneSarfBildirimi,MalAlimBildirimi, PaketAl,cxDropDownEdit, cxCalendar,
  Xml.xmldom, Xml.XMLIntf, Xmlxform, Xml.Win.msxmldom, XMLDoc,
  Datasnap.DBClient, Datasnap.Provider ;



type
  TfrmITSPaket = class(TGirisForm)
    PopupMenu1: TPopupMenu;
    Y1: TMenuItem;
    Bildirim_Sayfalar: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    UrunlerGrid: TcxGridKadir;
    GridIts: TcxGridDBTableView;
    GridItsbarkod: TcxGridDBColumn;
    GridItsColumn2: TcxGridDBColumn;
    GridItsColumn3: TcxGridDBColumn;
    GridItsdate_create: TcxGridDBColumn;
    GridItsColumn1: TcxGridDBColumn;
    GridItsColumn5: TcxGridDBColumn;
    GridItsColumn4: TcxGridDBColumn;
    GridItsColumn6: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    cxTabSheet2: TcxTabSheet;
    SarfGrid: TcxGridKadir;
    GrisItsS: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    GrisItsSColumn1: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    Log: TcxTabSheet;
    txtHatalar: TcxMemo;
    cxGroupBox1: TcxGroupBox;
    btnMalAlimYap: TcxButton;
    cxGroupBox3: TcxGroupBox;
    btnList: TcxButton;
    txtsonTarih: TcxDateEditKadir;
    txtilkTarih: TcxDateEditKadir;
    cxTabSheet3: TcxTabSheet;
    cxGroupBox2: TcxGroupBox;
    btnSarfBildir: TcxButton;
    AlimGrid: TcxGridKadir;
    GridItsAlim: TcxGridDBTableView;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBColumn14: TcxGridDBColumn;
    cxGridDBColumn15: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    cxTabSheet4: TcxTabSheet;
    cxGroupBox4: TcxGroupBox;
    btnPaketGetir: TcxButton;
    txtPaketID: TcxTextEdit;
    DataSetProvider1: TDataSetProvider;
    ClientDataSet1: TClientDataSet;
    XMLTransformProvider1: TXMLTransformProvider;
    DataSource1: TDataSource;
    cxMemo1: TcxMemo;
    GridItsColumn7: TcxGridDBColumn;
    txtPaketIDAra: TcxTextEdit;
    procedure FormCreate(Sender: TObject);
    procedure cxKaydetClick(Sender: TObject);override;
    procedure cxTextEditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxButtonEditPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);override;
    procedure cxEditEnter(Sender: TObject);
    procedure cxEditExit(Sender: TObject);
    procedure ButtonClick(Sender: TObject);
    procedure cxButtonCClick(Sender: TObject);
    procedure PropertiesEditValueChanged(Sender: TObject);override;
    procedure QRKodKeyPress(Sender: TObject; var Key: Char);
    procedure Yazdir;
    procedure btnMalAlimYapClick(Sender: TObject);
    procedure btnSarfBildirClick(Sender: TObject);
    procedure btnListClick(Sender: TObject);
    procedure btnPaketGetirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    // function Init(Sender: TObject) : Boolean; override;
  end;

const _TableName_ = 'itsBildirim';
      formGenislik = 500;
      formYukseklik = 500;
const
  GS = #29;

var
  frmITSPaket: TfrmITSPaket;
  Gsindex : integer = 0;
  _index_ : integer = 0;
  karebarkod : TKareBarkod;

implementation
{$R *.dfm}



procedure TfrmITSPaket.QRKodKeyPress(Sender: TObject; var Key: Char);
  var
  birim  : string;
  kdv : integer;
begin
   if (key = GS)
   Then Begin
         Gsindex := Length(TcxTextEdit(FindComponent('QRKod')).EditingValue)+1;
        // label5.Caption := inttostr(Gsindex);
   End;

  if key = #13
  Then Begin
     karebarkod := kareBarkodOku(TcxTextEdit(FindComponent('QRKod')).EditingValue,Gsindex);

     TcxTextEdit(FindComponent('Barkod')).EditValue := karebarkod.barkodNo;
     TcxTextEdit(FindComponent('PartiNo')).EditValue := karebarkod.partiNo;
     TcxTextEdit(FindComponent('SiraNo')).EditValue := karebarkod.seriNo;
     TcxTextEdit(FindComponent('SonKulTarih')).EditValue :=   FormattedTarihYYMMGG('20'+ karebarkod.SKT,'-');

     if TcxCheckBox(FindComponent('chkEkle')).Checked
     then begin
       TcxButton(FindComponentButtonName('btnUrunEkle',Self)).SetFocus;
     //  TcxButton(FindComponent('btnUrunEkle')).SetFocus;
         TcxButton(FindComponentButtonName('btnUrunEkle',Self)).Click;
      // TcxButton(FindComponent('btnUrunEkle')).Click;

     end
     else
       TcxButton(FindComponentButtonName('btnUrunEkle',Self)).SetFocus;
//       TcxButton(FindComponent('btnUrunEkle')).SetFocus;

     TcxTextEdit(FindComponent('QRKod')).EditValue := #0;
     key := #0;
     Gsindex := 0;
  End;
end;

procedure TfrmITSPaket.btnListClick(Sender: TObject);
begin
  inherited;

  if txtPaketIDAra.Text = ''
  then
    datalar.QuerySelect(UrunlerGrid.Dataset,
                      'select * from itsBildirim where sirketKod = ' + QuotedStr(datalar.AktifSirket) +
                      ' and convert(varchar,date_create,112) between ' + txtilkTarih.GetSQLValue + ' and ' + txtsonTarih.GetSQLValue +
                      ' and isnull(SarfBildirimId,'''') = ''''  and isnull(AlimBildirimId,'''') = '''' '
                      )
  else
    datalar.QuerySelect(UrunlerGrid.Dataset,
                      'select * from itsBildirim where sirketKod = ' + QuotedStr(datalar.AktifSirket) +
                      ' and PaketID = ' + QuotedStr(txtPaketIDAra.Text) +
                      ' and isnull(SarfBildirimId,'''') = ''''  and isnull(AlimBildirimId,'''') = '''' '
                      );



  datalar.QuerySelect(AlimGrid.Dataset,
                      'select * from itsBildirim where sirketKod = ' + QuotedStr(datalar.AktifSirket) +
                      ' and convert(varchar,isnull(AlimBildirimTarih,date_create),112) between ' + txtilkTarih.GetSQLValue + ' and ' + txtsonTarih.GetSQLValue +
                      ' and AlimBildirimId <> '''' and SarfBildirimId = '''''
                      );

  datalar.QuerySelect(SarfGrid.Dataset,
                      'select * from itsBildirim where sirketKod = ' + QuotedStr(datalar.AktifSirket) +
                      ' and SarfBildirimTarih between ' + txtilkTarih.GetSQLValue + ' and ' + txtsonTarih.GetSQLValue +
                      ' and SarfBildirimId <> '''' '
                      );

end;

procedure TfrmITSPaket.btnPaketGetirClick(Sender: TObject);
var
  Request : getStreamParameters;
  Cvp : stream;
  str : string;
  byt:tbytes;
  strm: TBytesStream;
  u: utf8string;
  a , i :integer;
  ZipFile: TZipFile;
  XMLDoc: IXMLDocument;
  XmlFile : TXMLDocument;
  P,MainNode, CustomerNodeC,CustomerNodeC1,CustomerNodeC2,CustomerNodeC3,CustomerNodeP : IXMLNode;
  PList: IXMLNodeList;
  XMLPath , GTIN, Lot, SonKulTarih : string;
  FilesList : TStringList;
begin

    datalar.QuerySelect(UrunlerGrid.Dataset,
                      'select * from itsBildirim where sirketKod = ' + QuotedStr(datalar.AktifSirket) +
                      ' and PaketID = ' + QuotedStr(txtPaketID.Text) +
                      ' and isnull(SarfBildirimId,'''') = ''''  and isnull(AlimBildirimId,'''') = '''' '
                      );


     Request := getStreamParameters.Create;
     Request.transferId := strToint(txtPaketID.Text);

     datalar.MalAlim.HTTPWebNode.UserName := datalar.itsUser;
     datalar.MalAlim.HTTPWebNode.Password := datalar.itsPass;
     datalar.MalAlim.URL := 'http://pts.saglik.gov.tr/PTS/GetPackage';

    try
      Cvp := (datalar.MalAlim as GetPackagePortType).asStream(Request);
    except on e : Exception do
       begin
          ShowMessageSkin(e.Message,'','','info');
       end;
    end;

  if not DirectoryExists('C:\NoktaV3\PTS')
  then
    MkDir('C:\NoktaV3\PTS\');

  if not DirectoryExists('C:\NoktaV3\PTS\XML')
  then
    MkDir('C:\NoktaV3\PTS\XML');

  ByteArrayToFile(CVp.fileStream,'c:\NoktaV3\PTS\paket.zip');

  TZipFile.ExtractZipFile('c:\NoktaV3\PTS\paket.zip', 'C:\NoktaV3\PTS\XML');

  FilesList := TStringList.Create;
  try
    FindFiles(FilesList, 'C:\NoktaV3\PTS\XML', 'PTS_*.xml');
    if FilesList.Count = 1
    then begin
       XMLPath := FilesList[0];
    end;
  finally
    FilesList.Free;
  end;

  if XMLPath = '' then exit;

  XmlFile :=  TXMLDocument.Create(Application);
  try
    XmlFile.LoadFromFile(XMLPath);
    XmlFile.Active := True;
    MainNode := XmlFile.DocumentElement;
    CustomerNodeC := MainNode.ChildNodes['carrier'];
    CustomerNodeC1 := CustomerNodeC.ChildNodes['carrier'];

    for i := 0 to CustomerNodeC.ChildNodes['carrier'].ChildNodes.Count - 1 do
    begin
      CustomerNodeC1 := CustomerNodeC.ChildNodes['carrier'].ChildNodes[i];
      GTIN := CustomerNodeC1.ChildNodes.Nodes['productList'].Attributes['GTIN'];
      Lot := CustomerNodeC1.ChildNodes.Nodes['productList'].Attributes['lotNumber'];
      SonKulTarih := CustomerNodeC1.ChildNodes.Nodes['productList'].Attributes['expirationDate'];

      PList := CustomerNodeC1.ChildNodes['productList'].ChildNodes;
      P := PList.First;
      while Assigned(P) do
      begin
        txtHatalar.Lines.Add(GTIN + '-' + Lot + '-' +  P.Text + '-'  +SonKulTarih);

        if UrunlerGrid.Dataset.Locate('barkod,seri,parti',VarArrayOf([GTIN,P.Text,Lot]),[]) = False
        then begin
          UrunlerGrid.Dataset.Append;
          UrunlerGrid.Dataset.FieldByName('barkod').AsString := GTIN;
          UrunlerGrid.Dataset.FieldByName('parti').AsString := Lot;
          UrunlerGrid.Dataset.FieldByName('SKT').AsString := SonKulTarih;
          UrunlerGrid.Dataset.FieldByName('PaketID').AsString := txtPaketID.Text;
          UrunlerGrid.Dataset.FieldByName('sirketKod').AsString := datalar.AktifSirket;
          UrunlerGrid.Dataset.FieldByName('Seri').AsString := P.Text;
          UrunlerGrid.Dataset.Post;
        end;

        P := P.NextSibling;
      end;
    end;

  finally
    FreeAndNil(XmlFile);
    DeleteFile(XMLPath);
  end;



end;

procedure TfrmITSPaket.cxButtonCClick(Sender: TObject);
var
  Ado : TADOQuery;
  sql : string;
  TopluDataset : TDataSetKadir;
begin
  inherited;
    case TMenuItem(sender).Tag  of
      -1 : begin
             Yazdir;
           end;

    end;
end;


procedure TfrmITSPaket.cxButtonEditPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
begin
  inherited;
  if length(datalar.ButtonEditSecimlist) > 0 then
  begin
    enabled;
  end;
end;

procedure TfrmITSPaket.btnMalAlimYapClick(Sender: TObject);
var
  AlimBildirim : ReceiptRequest;
  AlimBildirimCvp : ReceiptResponse;
  Urun : PRODUCT;
  Urunler : PRODUCTS;
  x , r : integer;
  barkod , seri , sira , id , sql, skt : string;
  ado : TADOQuery;
  xmlDate : TXSDate;
begin
   if mrYes = ShowMessageSkin('Mal Alým Yapýlacak ','','','msg')
   Then Begin
         AlimBildirim := ReceiptRequest.Create;
         AlimBildirimCvp := ReceiptResponse.Create;
         xmlDate := TXSDate.Create;

         r := GridIts.Controller.SelectedRowCount;
         SetLength(Urunler,r);

         for x := 0 to r - 1 do
         begin
             Application.ProcessMessages;
             barkod :=
             GridIts.DataController.GetValue(GridIts.Controller.SelectedRows[x].RecordIndex,GridIts.DataController.GetItemByFieldName('barkod').Index);
             seri :=
             GridIts.DataController.GetValue(GridIts.Controller.SelectedRows[x].RecordIndex,GridIts.DataController.GetItemByFieldName('Seri').Index);
             sira :=
             GridIts.DataController.GetValue(GridIts.Controller.SelectedRows[x].RecordIndex,GridIts.DataController.GetItemByFieldName('Parti').Index);
             id :=
             GridIts.DataController.GetValue(GridIts.Controller.SelectedRows[x].RecordIndex,GridIts.DataController.GetItemByFieldName('id').Index);
             skt :=
             GridIts.DataController.GetValue(GridIts.Controller.SelectedRows[x].RecordIndex,GridIts.DataController.GetItemByFieldName('SKT').Index);

             xmlDate.Year := strtoint(copy(skt,1,4));
             xmlDate.Month := strtoint(copy(skt,6,2));
             xmlDate.Day := strtoint(copy(skt,9,2));

             Urun := PRODUCT.Create;
             Urun.GTIN := barkod;
             Urun.BN := seri;
             Urun.SN := sira;
             Urun.XD := xmlDate;
             Urunler[x] := Urun;
         end;

         AlimBildirim.PRODUCTS := Urunler;

         datalar.MalAlim.HTTPWebNode.UserName := datalar.itsUser;
         datalar.MalAlim.HTTPWebNode.Password := datalar.itsPass;
         datalar.MalAlim.URL := 'https://its.saglik.gov.tr/ITSServices/ReceiptNotification';

        try
          AlimBildirimCvp := (datalar.MalAlim as ReceiptNotificationReceiver).sendReceiptNotification(AlimBildirim);
        except on e : Exception do
           begin

              ShowMessageSkin(e.Message,'','','info');
           end;
        end;


        if AlimBildirimCvp.NOTIFICATIONID <> ''
        Then Begin
          //ShowMessageSkin(SarfBildirimCvp.BILDIRIMID,'','','info');
          ado := TADOQuery.Create(nil);
          ado.Connection := datalar.ADOConnection2;
          try
            r := length(AlimBildirimCvp.PRODUCTS);
            for x := 0 to r - 1 do
            begin
                id := GridIts.DataController.GetValue(GridIts.Controller.SelectedRows[x].RecordIndex,GridIts.DataController.GetItemByFieldName('id').Index);
                sql := 'update itsBildirim set AlimBildirimId = ' +  QuotedStr(AlimBildirimCvp.NOTIFICATIONID) +
                       ',AlimBildirimTarih = gatdate()' +
                       ',Sonuc = ' + QuotedStr(AlimBildirimCvp.PRODUCTS[x].UC) +
                       ' where id = ' + id;
                datalar.QueryExec(ado,sql);

                sql := 'select HataName from itsHataKodlari where HataKod = ' + QuotedStr(AlimBildirimCvp.PRODUCTS[x].UC);
                datalar.QuerySelect(ado,sql);

                txtHatalar.Lines.Add(AlimBildirimCvp.PRODUCTS[x].GTIN+' ' +AlimBildirimCvp.PRODUCTS[x].SN + '   =>' +
                                     AlimBildirimCvp.PRODUCTS[x].UC + ' - ' + ado.Fields[0].AsString);

            end;
          finally
           ado.Free;
          end;
          UrunlerGrid.Dataset.Requery;
          AlimGrid.Dataset.Requery;
          xmlDate.Free;
        End;

   End;

end;

procedure TfrmITSPaket.btnSarfBildirClick(Sender: TObject);
var
  SarfBildirim : HastaneSarfBildirim;
  SarfBildirimCvp : HastaneSarfBildirimCevap;
  BilHata : BildirimHata;

  Ur : URUN;
  Uruns : URUNLER2;
  x , r : integer;
  barkod , seri , sira , id , sql , skt : string;
  ado : TADOQuery;
  xmlDate : TXSDate;
begin

   if mrYes = ShowMessageSkin('Sarf Bildirimi Yapýlacak , Ýþlem Geri Alýnamaz','','','msg')
   Then Begin
         SarfBildirim := HastaneSarfBildirim.Create;
         SarfBildirimCvp := HastaneSarfBildirimCevap.Create;
         SarfBildirim.DT := 'D';
         SarfBildirim.FR := datalar.itsGLN;
         xmlDate := TXSDate.Create;

         r := GridItsAlim.Controller.SelectedRowCount;
         SetLength(Uruns,r);

         for x := 0 to r - 1 do
         begin
             Application.ProcessMessages;
             barkod :=
             GridItsAlim.DataController.GetValue(GridItsAlim.Controller.SelectedRows[x].RecordIndex,GridItsAlim.DataController.GetItemByFieldName('barkod').Index);
             seri :=
             GridItsAlim.DataController.GetValue(GridItsAlim.Controller.SelectedRows[x].RecordIndex,GridItsAlim.DataController.GetItemByFieldName('Seri').Index);
             sira :=
             GridItsAlim.DataController.GetValue(GridItsAlim.Controller.SelectedRows[x].RecordIndex,GridItsAlim.DataController.GetItemByFieldName('Parti').Index);
             id :=
             GridItsAlim.DataController.GetValue(GridItsAlim.Controller.SelectedRows[x].RecordIndex,GridItsAlim.DataController.GetItemByFieldName('id').Index);
             skt :=
             GridItsAlim.DataController.GetValue(GridItsAlim.Controller.SelectedRows[x].RecordIndex,GridItsAlim.DataController.GetItemByFieldName('SKT').Index);

             xmlDate.Year := strtoint(copy(skt,1,4));
             xmlDate.Month := strtoint(copy(skt,6,2));
             xmlDate.Day := strtoint(copy(skt,9,2));

             Ur := URUN.Create;
             Ur.GTIN := barkod;
             Ur.BN := seri;
             Ur.SN := sira;
             Ur.XD := xmlDate;
             Uruns[x] := Ur;
         end;

         SarfBildirim.URUNLER := Uruns;



         datalar.ITS.HTTPWebNode.UserName := datalar.itsUser;
         datalar.ITS.HTTPWebNode.Password := datalar.itsPass;
         datalar.ITS.URL := 'https://its.saglik.gov.tr/HastaneSarf/HastaneSarfBildirimReceiverService';

        try
          SarfBildirimCvp := (datalar.ITS as HastaneSarfBildirimReceiver).HastaneSarfBildir(SarfBildirim);
        except on e : Exception do
           begin

              ShowMessageSkin(e.Message,'','','info');
           end;
        end;



        if SarfBildirimCvp.BILDIRIMID <> ''
        Then Begin
          //ShowMessageSkin(SarfBildirimCvp.BILDIRIMID,'','','info');
          ado := TADOQuery.Create(nil);
          ado.Connection := datalar.ADOConnection2;
          try
          r := length(SarfBildirimCvp.URUNLER);
          for x := 0 to r - 1 do
          begin
              id := GridItsAlim.DataController.GetValue(GridItsAlim.Controller.SelectedRows[x].RecordIndex,GridItsAlim.DataController.GetItemByFieldName('id').Index);
              sql := 'update itsBildirim set SarfBildirimId = ' +  QuotedStr(SarfBildirimCvp.BILDIRIMID) +
                     ',SarfBildirimTarih = getdate() ' +
                     ',Sonuc = ' + QuotedStr(SarfBildirimCvp.URUNLER[x].UC) +
                     ' where id = ' + id;
              datalar.QueryExec(ado,sql);

              sql := 'select HataName from itsHataKodlari where HataKod = ' + QuotedStr(SarfBildirimCvp.URUNLER[x].UC);
              datalar.QuerySelect(ado,sql);

              txtHatalar.Lines.Add(SarfBildirimCvp.URUNLER[x].GTIN+' ' +SarfBildirimCvp.URUNLER[x].SN + '   =>' +
                                   SarfBildirimCvp.URUNLER[x].UC + ' - ' + ado.Fields[0].AsString);

          end;

          finally
            ado.Free;
          end;
          AlimGrid.Dataset.Requery;
          SarfGrid.Dataset.Requery;
          xmlDate.Free;
        End;



   End;


end;


procedure TfrmITSPaket.ButtonClick(Sender: TObject);
var
  h : string;
begin
 try
  if AlimGrid.Dataset.Active = False
  then
   btnList.Click;

  AlimGrid.Dataset.Append;
  AlimGrid.Dataset.FieldByName('barkod').AsString := TcxTextEdit(FindComponent('Barkod')).EditValue;
  AlimGrid.Dataset.FieldByName('Seri').AsString := TcxTextEdit(FindComponent('PartiNo')).EditValue;
  AlimGrid.Dataset.FieldByName('parti').AsString := TcxTextEdit(FindComponent('SiraNo')).EditValue;
  AlimGrid.Dataset.FieldByName('SKT').AsString := TcxTextEdit(FindComponent('SonKulTarih')).EditValue;
  AlimGrid.Dataset.FieldByName('sirketKod').AsString := datalar.AktifSirket;

  AlimGrid.Dataset.Post;
 except on e : Exception do
   begin
      if pos('Cannot insert duplicate key in',e.Message) > 0
      Then h := 'Okuttuðunuz Barkod Daha Önceden Eklenmiþ'
      Else h := '';

      ShowMessageSkin(e.Message,h,'','info');
      AlimGrid.Dataset.Cancel;
   end;
 end;
  AlimGrid.Dataset.Requery;
  TcxTextEdit(FindComponent('QRKod')).SetFocus;
  TcxTextEdit(FindComponent('Barkod')).EditValue := '';
  TcxTextEdit(FindComponent('PartiNo')).EditValue := '';
  TcxTextEdit(FindComponent('SiraNo')).EditValue := '';
  TcxTextEdit(FindComponent('SonKulTarih')).EditValue := '';

end;

procedure TfrmITSPaket.cxEditEnter(Sender: TObject);
begin
  inherited;
  //

end;

procedure TfrmITSPaket.cxEditExit(Sender: TObject);
begin
  inherited;
  //

end;



procedure TfrmITSPaket.cxTextEditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   inherited;
  // if key  then


end;

procedure TfrmITSPaket.FormCreate(Sender: TObject);
var
  IC : TcxImageComboKadir;
  Tarih,KTarih,TaniTarih : TcxDateEditKadir;

begin
    ClientHeight := 600;
    ClientWidth := 700;
    cxPanel.Visible := False;


    setDataStringKontrol(self,Bildirim_Sayfalar,'Bildirim_Sayfalar','',Kolon1,'',800,450,alNone);


    Kolon2.Visible := False;
    Kolon3.Visible := False;
    Kolon4.Visible := False;

    txtilkTarih.Date := date;
    txtsonTarih.Date := date;

    SayfaCaption('PTS Bildirim','','','','');




 end;

procedure TfrmITSPaket.PropertiesEditValueChanged(Sender: TObject);

begin
  inherited;
///
///
///
end;

procedure TfrmITSPaket.Yazdir;
var
  TopluDataset : TDataSetKadir;
  sql : string;
begin
//
end;

procedure TfrmITSPaket.cxKaydetClick(Sender: TObject);
begin
  inherited;
  case TcxButton(sender).Tag  of
    Kaydet : begin
//

        end;
    1 : begin
         // post;
         //ShowMessage('Ýptal');
          end;
    yeni: begin

      end;
    end;






end;

end.
