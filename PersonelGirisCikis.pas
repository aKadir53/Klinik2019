unit PersonelGirisCikis;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, adodb,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,strutils,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, Grids, AdvObj, BaseGrid, AdvGrid, cxTextEdit, kadir,
  cxDropDownEdit, cxCalendar, cxMaskEdit, StdCtrls, sComboBox, Buttons, sBitBtn,
  ExtCtrls, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, DB, cxDBData, cxGridLevel, cxGridCustomTableView,GirisUnit,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  cxCheckBox, cxImageComboBox, Menus, cxCurrencyEdit, cxLabel, dxGDIPlusClasses,
  cxGroupBox,cxCheckGroup,KadirLabel,KadirType,GetFormClass,cxGridExportLink,
  cxGridBandedTableView, cxGridDBBandedTableView;

type
  TfrmPersonelGirisCikis = class(TGirisForm)
    Grid_GirisCikislar: TcxGridKadir;
    cxGridLevel1: TcxGridLevel;
    ado: TADOQuery;
    DataSource1: TDataSource;
    PopupMenu1: TPopupMenu;
    Y1: TMenuItem;
    E1: TMenuItem;
    H1: TMenuItem;
    GridEkstre: TcxGridDBBandedTableView;
    GridEkstredosyaNo: TcxGridDBBandedColumn;
    GridEkstrehastaAdi: TcxGridDBBandedColumn;
    GridEkstreTCKIMLIKNO: TcxGridDBBandedColumn;
    GridEkstreIdealKilo: TcxGridDBBandedColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    GridEkstreColumn1: TcxGridDBBandedColumn;
    GridEkstreColumn2: TcxGridDBBandedColumn;
    GridEkstreColumn3: TcxGridDBBandedColumn;
    GridEkstreColumn4: TcxGridDBBandedColumn;
    GridEkstreColumn5: TcxGridDBBandedColumn;
    Grid_Raporlama: TcxGridKadir;
    Grid_RaporlamaList: TcxGridDBBandedTableView;
    cxGridLevel2: TcxGridLevel;
    PopupMenu2: TPopupMenu;
    T1: TMenuItem;
    O1: TMenuItem;
    MenuItem1: TMenuItem;
    E2: TMenuItem;
    N2: TMenuItem;
    E3: TMenuItem;
    vardiyaColumns: TcxGridDBBandedColumn;
    G1: TMenuItem;
    procedure K1Click(Sender: TObject);
    procedure B1Click(Sender: TObject);
    procedure adoAfterPost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure E1Click(Sender: TObject);
    procedure Y1Click(Sender: TObject);
    procedure TopPanelButonClick(Sender: TObject);
    procedure GridEkstreEditValueChanged(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem);
    procedure SayfalarChange(Sender: TObject);
    procedure O1Click(Sender: TObject);
    procedure SummaryGroup(ASummary: TcxDataSummary; AColumn: TcxGridDBBandedColumn;  AKind: TcxSummaryKind; AFormat: string);
  private
    { Private declarations }
  public
      function Init(Sender: TObject) : Boolean; override;
    { Public declarations }
  end;

var
  frmPersonelGirisCikis: TfrmPersonelGirisCikis;

implementation
   uses data_modul,AnaUnit;
{$R *.dfm}

procedure TfrmPersonelGirisCikis.SummaryGroup(ASummary: TcxDataSummary; AColumn: TcxGridDBBandedColumn;
  AKind: TcxSummaryKind; AFormat: string);
var
  sumGroup: TcxDataSummaryGroup;
  link: TcxGridTableSummaryGroupItemLink; //TcxDataSummaryGroupItemLink;
  item: TcxGridDBTableSummaryItem;
begin
  AColumn.Summary.FooterKind := AKind;
  AColumn.Summary.FooterFormat := AFormat;
  //AColumn.Summary.GroupKind := AKind;
  //AColumn.Summary.GroupFormat := AFormat;
  AColumn.Summary.GroupFooterKind := AKind;

  sumGroup := ASummary.SummaryGroups.Add;
  link := sumGroup.Links.Add as TcxGridTableSummaryGroupItemLink;
  link.Column := AColumn;


  item := sumGroup.SummaryItems.Add as TcxGridDBTableSummaryItem;
  item.Column := AColumn;
  item.Kind := AKind;
  item.Position := spFooter;
  item.Format := AColumn.Summary.FooterFormat;


 // link.ItemLink
end;

procedure TfrmPersonelGirisCikis.adoAfterPost(DataSet: TDataSet);
var
  sql , doktor , dosyaNo , gelisNo : string;
  adoRun : TADOQuery;
begin
(*
  doktor := copy(ado.FieldByName('doktor').AsString,1,4);
  dosyaNo := ado.FieldByName('dosyaNo').AsString;
  gelisNo := ado.FieldByName('gelisNo').AsString;

  if ado.FieldByName('KanAlindimi').AsInteger  = 1
  then begin
     adoRun := TADOQuery.Create(nil);
     adoRun.Connection := datalar.ADOConnection2;

      sql := 'update hareketler ' +
             ' set yapandoktor = ' + QuotedStr(doktor) + ' , isteyenDoktor = ' + QuotedStr(doktor) +
             ' where dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNo = ' + gelisNo;
     datalar.QueryExec(adoRun,sql);
     adoRun.Free;
  end;

  *)
end;

procedure TfrmPersonelGirisCikis.B1Click(Sender: TObject);
var
  sql , kilo , dosyaNo , gelisNo ,sira,rtarih : string;
  x : integer;
  ado_S : TADOQuery;
  konum : TBookmark;
begin
(*
  ado_S := TADOQuery.Create(nil);
  ado_S.Connection := datalar.ADOConnection2;

  dosyaNo := _Dataset.FieldByName('dosyaNo').AsString;
  gelisNo := _Dataset.FieldByName('gelisNo').AsString;
  sira := _Dataset.FieldByName('siraNo').AsString;
  rtarih := _Dataset.FieldByName('UTarih').AsString;
  konum := _Dataset.Bookmark;

  kilo := InputBox('Tedavi Dosyasý Ýdeal Kilo','Ýdeal Kiloyu Girin : ','');
  kilo := StringReplace(kilo,',','.',[rfReplaceAll]);
  try

    sql := 'update gelisdetay set IDEALKILO = ' + kilo +
         ' where dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNo = ' + gelisNo +
         ' and siraNo = ' + sira;
    datalar.QueryExec(ado_S,sql);

    sql := 'update gelisdetay set IDEALKILO = ' + kilo +
         ' where dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNo = ' + gelisNo +
         ' and RTarih > ' + QuotedStr(rTarih) + ' and durum = 0 ' ;
    datalar.QueryExec(ado_S,sql);

    sql := 'update Hastakart set IdealKilo = ' + kilo +
         ' where dosyaNo = ' + QuotedStr(dosyaNo);
    datalar.QueryExec(ado_S,sql);


  except on e : Exception do
   begin
      ShowMessageSkin(e.Message,'','','info');
   end;
  end;

//  sBitBtn1.Click;
  _Dataset.GotoBookmark(konum);

  ado_S.Free;

   *)
end;

procedure TfrmPersonelGirisCikis.E1Click(Sender: TObject);
begin
  ExceleGonder;
end;

procedure TfrmPersonelGirisCikis.FormCreate(Sender: TObject);
var
 chk : TcxCheckGroupItem;
 ic : TcxImageComboKadir;
begin
  Menu := PopupMenu1;
 // Olustur(self,_TableName_,'Kimlik Doðrula',71,sqlInsert);
  cxPanel.Visible := false;

  TopPanel.Visible := True;
  TapPanelElemanVisible(True,True,True,False,False,False,False,False,False,False,False,False,False);
 // GridEkstre.DataController.DataSource := DataSource;



  ENabizMesajTipi.Width := 200;
  ENabizMesajTipi.Conn := nil;
  ENabizMesajTipi.ItemList := 'sp_PDKS_CalismaSaatList;Mesai Saat Listesi';
  ENabizMesajTipi.Filter := '';

  //sayfalar.Width := AnaForm.sayfalar.Width;
  //sayfalar.Height := AnaForm.sayfalar.Height;

  (*
  setDataStringKontrol(self,TcxGridKadir(FindComponent('Grid_GirisCikislar')) ,'Grid_GirisCikislar','',Kolon1,'',sayfa1.Width-20,sayfa1.Height-30,alNone);

  setDataStringKontrol(self,TcxGridKadir(FindComponent('Grid_Raporlama')) ,'Grid_Raporlama','',sayfa2_Kolon1,'',sayfa2.Width-20,sayfa2.Height-30,alNone);
    *)


  ic := TcxImageComboKadir.Create(self);
  ic.Conn := datalar.ADOConnection2;
  ic.TableName := 'PDKS_Vardiya';
  ic.DisplayField := 'tanimi';
  ic.ValueField := 'kod';
  ic.Filter := '';
  ic.Visible := False;
  TcxImageComboBoxProperties(vardiyaColumns.Properties).Items := ic.Properties.Items;


  SayfaCaption('Giriþ Çýkýþlar','Raporlama','','','');


end;

procedure TfrmPersonelGirisCikis.GridEkstreEditValueChanged(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem);
var
 sql : string;
begin


end;

function TfrmPersonelGirisCikis.Init(Sender: TObject): Boolean;
var
 ww : integer;
begin
   inherited;
   Result := True;

   Kolon2.Visible := False;
   Kolon3.Visible := False;
   Kolon4.Visible := False;
   sayfa2_Kolon2.Visible := False;
   sayfa2_Kolon3.Visible := False;
   sayfa2_Kolon3.Visible := False;


   setDataStringKontrol(self,TcxGridKadir(FindComponent('Grid_GirisCikislar')) ,'Grid_GirisCikislar','',Kolon1,'',sayfa1.Width-20,sayfa1.Height-60,alNone);
   setDataStringKontrol(self,TcxGridKadir(FindComponent('Grid_Raporlama')) ,'Grid_Raporlama','',sayfa2_Kolon1,'',sayfa1.Width-20,sayfa1.Height-60,alNone);

end;

procedure TfrmPersonelGirisCikis.K1Click(Sender: TObject);
var
  dosyaNo , gelisNo , sira ,sql , tt , doktor: string;
begin

end;

procedure TfrmPersonelGirisCikis.O1Click(Sender: TObject);
var
  ic : integer;
  fieldTip : TFieldType;
  _Kind : TcxSummaryKind;
  GridV : TcxGridDBBandedTableView;
  Grid : TcxGrid;
  comp : TComponent;
  n : string;
  Dosya : TSaveDialog;
  summary: TcxDataSummary;
  col: TcxGridDBBandedColumn;
begin
  inherited;

  if (TMenuItem(sender).Tag = 0) or (TMenuItem(sender).Tag = 4)
  Then
   _Kind := skSum
  Else
  if TMenuItem(sender).Tag = 1
  Then
   _Kind := skAverage
  Else
  if TMenuItem(sender).Tag = 2
  Then
   _Kind := skMax
  Else
  if TMenuItem(sender).Tag = 3
  Then
   _Kind := skMin
   else   _Kind := skNone;


  comp := ((Sender as TMenuItem).GetParentMenu as TPopupMenu).PopupComponent;
  GridV := TcxGridDBBandedTableView(TcxGrid(comp).Views[0]);

  if TMenuItem(sender).Tag = 9
  then begin
    Dosya := TSaveDialog.Create(nil);
    try

      Dosya.Execute;
      ExportGridToExcel(Dosya.FileName+'.XLS',TcxGrid(comp),True,True);
    finally
      Dosya.Free;
    end;
  end
  else
  begin
     GridV.DataController.BeginFullUpdate;
     GridV.DataController.Summary.FooterSummaryItems.Clear; //Count > 0
     GridV.DataController.Summary.SummaryGroups.Clear;

     GridV.DataController.Summary.FooterSummaryItems.Add(GridV.Columns[0], spFooter, skCount,'');

     for ic := 0 to GridV.DataController.ItemCount - 1 do
     begin

           fieldTip := GridV.Columns[ic].DataBinding.Field.DataType;
           if (fieldTip in [ftFloat,ftInteger,ftCurrency])
           Then begin
               if TMenuItem(sender).Tag = 4
                Then
                   SummaryGroup(GridV.DataController.Summary , GridV.Columns[ic], skSum, '#.00');

                GridV.DataController.Summary.FooterSummaryItems.Add(GridV.Columns[ic], spFooter, _Kind,'');

           end ;
         //  else
       //   GridV.DataController.Summary.FooterSummaryItems.Add(GridV.Columns[0], spFooter, skCount,'');

     end;
    // GridV.OptionsView.GroupFooterMultiSummaries := True;
     GridV.OptionsView.GroupFooters := gfVisibleWhenExpanded;
     GridV.DataController.Refresh;
     GridV.DataController.EndFullUpdate;
  end;
end;

procedure TfrmPersonelGirisCikis.SayfalarChange(Sender: TObject);
begin
//
   if Sayfalar.ActivePageIndex = 0
   then
    ENabizMesajTipi.Visible := False
   else
    ENabizMesajTipi.Visible := True;


end;

procedure TfrmPersonelGirisCikis.TopPanelButonClick(Sender: TObject);
var
  sql , durum : string;
  ic : integer;
begin

  if Sayfalar.ActivePageIndex = 0
  then begin

    sql := 'sp_PDKS_GirisCikisList @sirketKod = '  + QuotedStr(datalar.AktifSirket) +
                                   ',@tarih1 = ' + txtTopPanelTarih1.GetSQLValue('YYYYMMDD') +
                                   ',@tarih2 = ' + txtTopPanelTarih2.GetSQLValue('YYYYMMDD');



    datalar.QuerySelect(Grid_GirisCikislar.Dataset,sql);

  end
  else
  begin
    if varTostr(ENabizMesajTipi.EditValue) <> ''
    then begin

        sql := 'exec ' + varTostr(ENabizMesajTipi.EditValue) + ' @sirketKod = '  + QuotedStr(datalar.AktifSirket) +
                                       ',@tarih1 = ' + txtTopPanelTarih1.GetSQLValue('YYYYMMDD') +
                                       ',@tarih2 = ' + txtTopPanelTarih2.GetSQLValue('YYYYMMDD');



        datalar.QuerySelect(Grid_Raporlama.Dataset,sql);

        Grid_RaporlamaList.ClearItems;
        Grid_RaporlamaList.DataController.CreateAllItems(true);
        Grid_RaporlamaList.OptionsView.ColumnAutoWidth := true;

        for ic := 0 to Grid_RaporlamaList.DataController.ItemCount - 1 do
        begin
           Grid_RaporlamaList.Columns[ic].HeaderAlignmentHorz := taCenter;
           Grid_RaporlamaList.Columns[ic].PropertiesClass := TcxTextEditProperties;
           Grid_RaporlamaList.Columns[ic].Properties.Alignment.Horz := taCenter;
           Grid_RaporlamaList.Columns[ic].Properties.Alignment.Vert := taVCenter;
        end;

    end;
  end;





end;

procedure TfrmPersonelGirisCikis.Y1Click(Sender: TObject);
var
  TopluDataset : TDataSetKadir;
begin
    TopluDataset.Dataset2 := datalar.ADO_AktifSirket;
    TopluDataset.Dataset0 := datalar.ADO_aktifSirketLogo;
    TopluDataset.Dataset1 := ado;
    PrintYap('VKI','\VKI','',TopluDataset,pTNone);
end;

end.
