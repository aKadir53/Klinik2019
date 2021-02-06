unit AylikSeansToplamlari;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, AdvToolBtn, ExtCtrls, Grids, BaseGrid, AdvGrid , kadir,
  cxControls, cxPC, Buttons, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinsDefaultPainters, dxSkinscxPCPainter,cxCheckGroup,
  cxPCdxBarPopupMenu, AdvObj, GirisUnit,KAdirType, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxProgressBar,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  KadirLabel, cxTextEdit, cxCurrencyEdit,StrUtils;

type
  TfrmAylikSeansToplamlari = class(TGirisForm)
    Aysayfalar: TcxTabControl;
    cxGrid_Seans: TcxGridKadir;
    ListeS: TcxGridDBBandedTableView;
    cxGrid2Level1: TcxGridLevel;
    ListeSColumn1: TcxGridDBBandedColumn;
    ListeSColumn2: TcxGridDBBandedColumn;
    ListeSColumn3: TcxGridDBBandedColumn;
    DataSource1: TDataSource;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    ListeSColumn4: TcxGridDBBandedColumn;
    ListeSColumn5: TcxGridDBBandedColumn;
    GridYil: TcxGridKadir;
    ListeYil: TcxGridDBBandedTableView;
    cxGridDBBandedColumn1: TcxGridDBBandedColumn;
    cxGridDBBandedColumn2: TcxGridDBBandedColumn;
    cxGridDBBandedColumn3: TcxGridDBBandedColumn;
    cxGridDBBandedColumn5: TcxGridDBBandedColumn;
    cxGridLevel1: TcxGridLevel;
    ListeYilColumn1: TcxGridDBBandedColumn;
    ListeYilColumn2: TcxGridDBBandedColumn;
    procedure AysayfalarChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TopPanelButonClick(Sender: TObject);
    procedure List;
    procedure ListeYilFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    function Init(Sender: TObject) : Boolean; override;
  end;

var
  frmAylikSeansToplamlari: TfrmAylikSeansToplamlari;
  ScrollOk : integer;
implementation
uses data_modul;
{$R *.dfm}




procedure TfrmAylikSeansToplamlari.AysayfalarChange(Sender: TObject);
begin
  List;
end;

procedure TfrmAylikSeansToplamlari.FormCreate(Sender: TObject);
var
 chk : TcxCheckGroupItem;
begin
  Tag := TagfrmAylikSeansToplamlari;
  ScrollOk := 0;
  chkList.Width := 150;
  chkList.Properties.Items.Clear;
  Chk := chkList.Properties.Items.Add;
  Chk.Caption := 'Sadece Misafir';
  Chk.Tag := 2;

  if datalar.UserGroup = '1'
  then begin
    chkList.Width := 260;
    Chk := chkList.Properties.Items.Add;
    Chk.Caption := 'Tüm Þirketlerim';
    Chk.Tag := 3;
  end;

  cxPanel.Visible := false;
  Sayfalar.Properties.HideTabs := True;

  KurumTipTopPanel.Filter := '';

  SayfaCaption('','','','','');

  kolon2.Width := 0;
  kolon3.Width := 0;
  kolon2.Visible := false;
  kolon3.Visible := false;
end;

function TfrmAylikSeansToplamlari.Init(Sender: TObject): Boolean;
var
   sql : string;
   i , j , toplam : integer;
begin
     Result := False;

     TopPanel.Visible := True;
     TapPanelElemanVisible(True,false,false,false,False,false,True,false,False,False,False,False,True,False,False);


   (*
     Aysayfalar.Properties.Tabs.Clear;

     for i := 1 to sqlRun.RecordCount  do
     begin
         Aysayfalar.Tabs.Add(sqlRun.fieldbyname('YIL').AsString+' : ' +
                          sqlRun.fieldbyname('Toplam').AsString);
         sqlRun.Next;
     end;

     if Aysayfalar.Tabs.Count > 0
     then
       List
     else
       ShowMessageSkin('Seans Bulunamadý','','','info');
     *)

     Result := True;
end;

procedure TfrmAylikSeansToplamlari.List;
var
   yil ,sql, ap , sirket  : string;
   i , j , toplam : integer;
begin
     DurumGoster(True);
     try
       ap := ifThen(copy(chkList.EditValue,1,1) = '1','2','1,2');
       yil := GridYil.Dataset.FieldByName('yil').AsString;
       sirket := GridYil.Dataset.FieldByName('Tanimi').AsString;
       //copy(Aysayfalar.Tabs.Strings[Aysayfalar.tabindex],1,4);

       ListeS.Bands[0].Caption := '[' + sirket + ' ' + yil + ']' + ' Yýlý Aylýk Seans Grafiði ';

       sqlRun.close;
       sql := 'exec sp_YillikSeansGostergesi' + QuotedStr(yil) + ',''1'',' + QuotedStr(GridYil.Dataset.FieldByName('sirketKod').AsString) + ',' +
               QuotedStr(varToStr(KurumTipTopPanel.EditValue)) + ',' +
               QuotedStr(ap) ;
       datalar.QuerySelect(sqlRun,sql);
       DataSource1.DataSet := sqlRun;

     finally
       DurumGoster(False);
     end;
end;

procedure TfrmAylikSeansToplamlari.ListeYilFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  if ScrollOk = 1 then
   List;
end;

procedure TfrmAylikSeansToplamlari.TopPanelButonClick(Sender: TObject);
var
  sql , ap , sirketler : string;
begin

     DurumGoster(True);
     try
       ScrollOk := 0;
       ap := ifThen(chkList.EditValue = '1','2','1,2');
       sirketler := ifThen(copy(chkList.EditValue,2,1) = '1','',datalar.AktifSirket);
       sqlRun.close;
       sql := 'exec sp_YillikSeansGostergesi '''',''T'',' +  QuotedStr(sirketler) + ',' +
              QuotedStr(varToStr(KurumTipTopPanel.EditValue)) + ',' +
              QuotedStr(ap) ;
       datalar.QuerySelect(GridYil.Dataset,sql);
       ScrollOk := 1;
     finally
       DurumGoster(False);
     end;
end;

end.
