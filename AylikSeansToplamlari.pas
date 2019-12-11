unit AylikSeansToplamlari;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, AdvToolBtn, ExtCtrls, Grids, BaseGrid, AdvGrid , kadir,
  cxControls, cxPC, Buttons, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  cxPCdxBarPopupMenu, AdvObj, GirisUnit,KAdirType, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxProgressBar,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  KadirLabel, cxTextEdit;

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
    procedure AysayfalarChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure List;
  private
    { Private declarations }
  public
    { Public declarations }
    function Init(Sender: TObject) : Boolean; override;
  end;

var
  frmAylikSeansToplamlari: TfrmAylikSeansToplamlari;

implementation
uses data_modul;
{$R *.dfm}




procedure TfrmAylikSeansToplamlari.AysayfalarChange(Sender: TObject);
begin
  List;
end;

procedure TfrmAylikSeansToplamlari.FormCreate(Sender: TObject);
begin
  Tag := TagfrmAylikSeansToplamlari;


  cxPanel.Visible := false;
  Sayfalar.Properties.HideTabs := True;


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
     sqlRun.close;
     sql := 'exec sp_YillikSeansGostergesi '''',''T'',' +  QuotedStr(datalar.AktifSirket);
     datalar.QuerySelect(sqlRun,sql);

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

     Result := True;
end;

procedure TfrmAylikSeansToplamlari.List;
var
   yil ,sql : string;
   i , j , toplam : integer;
begin


     yil := copy(Aysayfalar.Tabs.Strings[Aysayfalar.tabindex],1,4);

     sqlRun.close;
     sql := 'exec sp_YillikSeansGostergesi' + QuotedStr(yil) + ',''1'',' + QuotedStr(datalar.AktifSirket) ;
     datalar.QuerySelect(sqlRun,sql);
     DataSource1.DataSet := sqlRun;

end;

end.
