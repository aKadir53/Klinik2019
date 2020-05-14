unit itsBildirim;

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
  xsBuiltIns,
  HastaneSarfBildirimi,MalAlimBildirimi, cxDropDownEdit, cxCalendar ;



type
  TfrmITS = class(TGirisForm)
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
  frmITS: TfrmITS;
  Gsindex : integer = 0;
  _index_ : integer = 0;
  karebarkod : TKareBarkod;

implementation
{$R *.dfm}



procedure TfrmITS.QRKodKeyPress(Sender: TObject; var Key: Char);
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

procedure TfrmITS.btnListClick(Sender: TObject);
begin
  inherited;

  datalar.QuerySelect(UrunlerGrid.Dataset,
                      'select * from itsBildirim where sirketKod = ' + QuotedStr(datalar.AktifSirket) +
                      ' and convert(varchar,date_create,112) between ' + txtilkTarih.GetSQLValue + ' and ' + txtsonTarih.GetSQLValue +
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

procedure TfrmITS.cxButtonCClick(Sender: TObject);
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


procedure TfrmITS.cxButtonEditPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
begin
  inherited;
  if length(datalar.ButtonEditSecimlist) > 0 then
  begin
    enabled;
  end;
end;

procedure TfrmITS.btnMalAlimYapClick(Sender: TObject);
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
                       ',AlimBildirimTarih = getdate()' +
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

procedure TfrmITS.btnSarfBildirClick(Sender: TObject);
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


procedure TfrmITS.ButtonClick(Sender: TObject);
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

procedure TfrmITS.cxEditEnter(Sender: TObject);
begin
  inherited;
  //

end;

procedure TfrmITS.cxEditExit(Sender: TObject);
begin
  inherited;
  //

end;



procedure TfrmITS.cxTextEditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   inherited;
  // if key  then


end;

procedure TfrmITS.FormCreate(Sender: TObject);
var
  IC : TcxImageComboKadir;
  Tarih,KTarih,TaniTarih : TcxDateEditKadir;

begin
    ClientHeight := 600;
    ClientWidth := 700;
    cxPanel.Visible := False;

    setDataString(Self,'QRKod','QR Kod',Kolon1,'btn',507);
    TcxTextEdit(FindComponent('QRKod')).OnKeyPress := QRKodKeyPress;

    setDataStringBLabel(Self,'bosSatir1',kolon1,'',200);

    setDataString(Self,'Barkod','Barkod',Kolon1,'pr',100,False,'',True);
    TcxTextEdit(FindComponent('Barkod')).Properties.Alignment.Horz := taCenter;
    setDataString(Self,'PartiNo','Parti No',Kolon1,'pr',100,False,'',True);
    TcxTextEdit(FindComponent('PartiNo')).Properties.Alignment.Horz := taCenter;
    setDataString(Self,'SiraNo','Sýra',Kolon1,'pr',100,False,'',True);
    TcxTextEdit(FindComponent('SiraNo')).Properties.Alignment.Horz := taCenter;
    setDataString(Self,'SonKulTarih','SKT',Kolon1,'pr',100,False,'',True);
    TcxTextEdit(FindComponent('SonKulTarih')).Properties.Alignment.Horz := taCenter;

    addButton(self,nil,'btnUrunEkle','','Ekle',Kolon1,'pr',50,ButtonClick);
    setDataStringChk(Self,'chkEkle','Otomatik Ekle',Kolon1,'pr',150);

    setDataStringBLabel(Self,'bosSatir2',kolon1,'',200);
    setDataStringKontrol(self,Bildirim_Sayfalar,'Bildirim_Sayfalar','',Kolon1,'',800,380,alNone);


    Kolon2.Visible := False;
    Kolon3.Visible := False;
    Kolon4.Visible := False;

    txtilkTarih.Date := date;
    txtsonTarih.Date := date;

    SayfaCaption('Ürün Bildirim','','','','');




 end;

procedure TfrmITS.PropertiesEditValueChanged(Sender: TObject);

begin
  inherited;
///
///
///
end;

procedure TfrmITS.Yazdir;
var
  TopluDataset : TDataSetKadir;
  sql : string;
begin
//
end;

procedure TfrmITS.cxKaydetClick(Sender: TObject);
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
