unit StokDepoCikisList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, Menus, StdCtrls, cxButtons, cxGroupBox, DB, ADODB,
  cxTextEdit, cxMaskEdit, cxButtonEdit, cxDBEdit,kadirType,KadirLabel,Kadir,  GirisUnit,Data_Modul, dxSkinsCore, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinsDefaultPainters, cxCheckBox, cxLabel, cxcalendar,
  cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxDBData, cxDropDownEdit, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxClasses, cxGridCustomView,
  cxGrid, cxPC, cxCurrencyEdit, cxSplitter;



type
  TfrmStokDepoCikisList = class(TGirisForm)
    PersonelList: TListeAc;
    PopupMenu1: TPopupMenu;
    Y1: TMenuItem;
    Grid: TcxGridKadir;
    GridList: TcxGridDBBandedTableView;
    GridLevel1: TcxGridLevel;
    DataSource1: TDataSource;
    GridListiD: TcxGridDBBandedColumn;
    GridListTARiH: TcxGridDBBandedColumn;
    GridListevrakNo: TcxGridDBBandedColumn;
    GridListevrakTipi: TcxGridDBBandedColumn;
    GridListBORC: TcxGridDBBandedColumn;
    GridListALACAK: TcxGridDBBandedColumn;
    GridListBAKIYE: TcxGridDBBandedColumn;
    GridListBAKIYETIPI: TcxGridDBBandedColumn;
    GridToplam: TcxGridKadir;
    GridListToplam: TcxGridDBBandedTableView;
    cxGridDBBandedColumn1: TcxGridDBBandedColumn;
    cxGridDBBandedColumn2: TcxGridDBBandedColumn;
    cxGridDBBandedColumn3: TcxGridDBBandedColumn;
    cxGridDBBandedColumn4: TcxGridDBBandedColumn;
    cxGridLevel1: TcxGridLevel;
    GridListColumn1: TcxGridDBBandedColumn;
    GridListColumn2: TcxGridDBBandedColumn;
    cxSplitter1: TcxSplitter;
    procedure FormCreate(Sender: TObject);
    procedure TopPanelButonClick(Sender: TObject);
    procedure ButtonClick(Sender: TObject);
    procedure cxKaydetClick(Sender: TObject);override;
    procedure cxTextEditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxButtonEditPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);override;
    procedure cxEditEnter(Sender: TObject);
    procedure cxEditExit(Sender: TObject);
    procedure SayfalarPageChanging(Sender: TObject; NewPage: TcxTabSheet;
       var AllowChange: Boolean);
    procedure SayfalarChange(Sender: TObject);
    procedure cxButtonCClick(Sender: TObject);
    procedure PropertiesEditValueChanged(Sender: TObject);override;
    procedure DataAfterScroll(DataSet: TDataSet);

  private
    { Private declarations }
  protected
    function GetEgitimPersonelSQL : String;
    procedure ResetDetayDataset;
  public
    { Public declarations }
    function Init(Sender: TObject) : Boolean; override;
  end;

const _TableName_ = 'cariHareketler';
      formGenislik = 600;
      formYukseklik = 600;

var
  frmStokDepoCikisList: TfrmStokDepoCikisList;


implementation

uses StrUtils;

{$R *.dfm}

procedure TfrmStokDepoCikisList.PropertiesEditValueChanged(Sender: TObject);
var
  xDeger : String;
begin

end;

procedure TfrmStokDepoCikisList.ButtonClick(Sender: TObject);
begin
//
end;

procedure TfrmStokDepoCikisList.cxButtonCClick(Sender: TObject);
var
  TopluDataset : TDataSetKadir;
  sql : string;
begin
  inherited;

  case TmenuItem(Sender).Tag of
   0 : begin
        TopluDataset.Dataset1 := GridToplam.Dataset;

           sql := 'exec sp_StokDepoCikisList @tarih1 = ' + txtTopPanelTarih1.GetSQLValue +
                                   ', @tarih2 = ' + txtTopPanelTarih2.GetSQLValue +
                                   ', @seans = ' + QuotedStr(txtSeansTopPanel.Text) +
                                   ', @tip = ''D''';


        TopluDataset.Dataset2 := datalar.QuerySelect(sql);

        PrintYap('DCL','Depo Çýkýþ Listesi','',TopluDataset,KAdirType.pTNone, frmStokDepoCikisList);

       end;
  end;


end;

procedure TfrmStokDepoCikisList.cxButtonEditPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
begin
  inherited;
  if length(datalar.ButtonEditSecimlist) > 0 then
  begin
    enabled;
    FormInputZorunluKontrolPaint(self,$00FCDDD1);
  end;
  //if TcxButtonEditKadir(FindComponent('id')).Text = '' then exit;
  ResetDetayDataset;
end;

procedure TfrmStokDepoCikisList.cxEditEnter(Sender: TObject);
begin
  inherited;
  //

end;

procedure TfrmStokDepoCikisList.cxEditExit(Sender: TObject);
begin
  inherited;
  //

end;

procedure TfrmStokDepoCikisList.cxTextEditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   inherited;
  // if key  then


end;

procedure TfrmStokDepoCikisList.DataAfterScroll(DataSet: TDataSet);
var
  sql : string;
begin

   sql := 'exec sp_StokDepoCikisList @tarih1 = ' + txtTopPanelTarih1.GetSQLValue +
                                   ', @tarih2 = ' + txtTopPanelTarih2.GetSQLValue +
                                   ', @seans = ' + QuotedStr(txtSeansTopPanel.Text) +
                                   ', @stokkod = ' + QuotedStr(GridToplam.Dataset.FieldByName('Kod').AsString) +
                                   ', @tip = ''D''';
   datalar.QuerySelect(Grid.Dataset,sql);

end;

procedure TfrmStokDepoCikisList.TopPanelButonClick(Sender: TObject);
var
  sql : string;
begin
 //inherited;
   sql := 'exec sp_StokDepoCikisList @tarih1 = ' + txtTopPanelTarih1.GetSQLValue +
                                   ', @tarih2 = ' + txtTopPanelTarih2.GetSQLValue +
                                   ', @seans = ' + QuotedStr(txtSeansTopPanel.Text) +
                                   ', @tip = ''T''';
   datalar.QuerySelect(GridToplam.Dataset,sql);

end;

procedure TfrmStokDepoCikisList.FormCreate(Sender: TObject);
begin
  cxPanel.Visible := false;
  TopPanel.Visible := true;
  ClientHeight := formYukseklik;
  ClientWidth := formGenislik;
  indexFieldName := 'id';
  TableName := _TableName_;


  Menu := PopupMenu1;
 // Olustur(self,_TableName_,'Personel Eðitimleri',22);


  TopPanel.Visible := True;
  TapPanelElemanVisible(True,True,True,False,True,False,False,False,False,False,False,False);
  SeansKriter.EditValue := '';

  GridToplam.Dataset.AfterScroll := DataAfterScroll;

  SayfaCaption('Depo Çýkýþ List', '', '', '', '');
end;

function TfrmStokDepoCikisList.GetEgitimPersonelSQL: String;

begin

end;

function TfrmStokDepoCikisList.Init(Sender: TObject): Boolean;
begin
   result := True;
end;

procedure TfrmStokDepoCikisList.ResetDetayDataset;
begin

end;

procedure TfrmStokDepoCikisList.SayfalarChange(Sender: TObject);
begin
  //d
end;

procedure TfrmStokDepoCikisList.SayfalarPageChanging(Sender: TObject;
  NewPage: TcxTabSheet; var AllowChange: Boolean);
begin
  cxPanel.Visible := (newPage <> sayfa2);

end;

procedure TfrmStokDepoCikisList.cxKaydetClick(Sender: TObject);
var
  xObj : TcxButtonEditKadir;
begin
  //SirketKodx.Text := datalar.AktifSirket; giriþ formuna eklendi.
  inherited;
  //post ettikten sonra veritabanýndan Identity deðeri alýp edit kutusuna yazmasý için....
  case TControl(sender).Tag  of
    0 : begin
      xObj := TcxButtonEditKadir (FindComponent('id'));
      if IsNull (xObj.EditingValue) then
      begin
        xObj.Text := IntToStr (F_IDENTITY);

      end;
    end;
    2 : begin
      xObj := TcxButtonEditKadir (FindComponent('id'));
      xObj.Text := '';

    end;
  end;
end;

end.
