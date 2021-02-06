unit IlacEtkenMadde;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinsDefaultPainters,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, cxStyles,GirisUnit,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, DB,
  cxDBData, Vcl.StdCtrls, Vcl.Buttons, sBitBtn, Vcl.ExtCtrls, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, GridsEh, DBGridEh, Vcl.DBCtrls, cxGroupBox,
  Data.Win.ADODB, Vcl.Menus, cxCheckBox, KadirLabel, cxTextEdit, cxSplitter,
  cxGridBandedTableView, cxGridDBBandedTableView, cxPCdxBarPopupMenu, cxPC,
  cxImageComboBox,data_modul;

type
  TfrmIlacEtkenMaddeSutKural = class(TGirisForm)
    PopupMenu1: TPopupMenu;
    KurumEkle1: TMenuItem;
    KurumSil1: TMenuItem;
    KurumDzenle1: TMenuItem;
    ado_BransKodlari: TADOQuery;
    DataSource1: TDataSource;
    cxGroupBox1: TcxGroupBox;
    cxGrid1: TcxGrid;
    gridIlacSarf: TcxGridDBTableView;
    gridIlacSarfkod: TcxGridDBColumn;
    gridIlacSarftanimi: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxGroupBox2: TcxGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBMemo1: TDBMemo;
    DBMemo2: TDBMemo;
    DBMemo3: TDBMemo;
    DataSource4: TDataSource;
    ADO_EtkenMaddeTetkik: TADOQuery;
    DataSource3: TDataSource;
    ADO_EtkenMaddeSUT: TADOQuery;
    chkTumu: TcxCheckBoxKadir;
    cxGroupBox4: TcxGroupBox;
    Edit1: TcxTextEdit;
    cxGroupBox5: TcxGroupBox;
    cxSplitter1: TcxSplitter;
    cxGroupBox6: TcxGroupBox;
    cxGrid2: TcxGrid;
    gridTetkikler: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    gridTetkiklerATC_Kodu: TcxGridDBColumn;
    gridTetkiklertetkikKodu: TcxGridDBColumn;
    gridTetkiklerid: TcxGridDBColumn;
    gridTetkiklersonuc: TcxGridDBColumn;
    gridTetkikleraciklama: TcxGridDBColumn;
    gridTetkiklersonuc2: TcxGridDBColumn;
    gridTetkiklerreceteEklenir: TcxGridDBColumn;
    cxGrid3: TcxGrid;
    cxGridLevel2: TcxGridLevel;
    gridSutKural: TcxGridDBBandedTableView;
    gridSutKuralATC_Kodu: TcxGridDBBandedColumn;
    gridSutKuralEtkenMaddeKodu: TcxGridDBBandedColumn;
    gridSutKuralTetkiksonuc: TcxGridDBBandedColumn;
    gridSutKuralDoz: TcxGridDBBandedColumn;
    gridSutKuralDiger: TcxGridDBBandedColumn;
    gridSutKuralid: TcxGridDBBandedColumn;
    gridSutKuralbDoz1: TcxGridDBBandedColumn;
    gridSutKuralbDoz2: TcxGridDBBandedColumn;
    gridSutKuralbDozPeryot: TcxGridDBBandedColumn;
    gridSutKuraliDoz1: TcxGridDBBandedColumn;
    gridSutKuraliDoz2: TcxGridDBBandedColumn;
    gridSutKuraliDozPeryot: TcxGridDBBandedColumn;
    gridSutKuralBirim: TcxGridDBBandedColumn;
    gridSutKuralbDozPeryotAdet: TcxGridDBBandedColumn;
    gridSutKuraliDozPeryotAdet: TcxGridDBBandedColumn;
    gridSutKuralAciklama: TcxGridDBBandedColumn;
    cxPageControl1: TcxPageControl;
    sayfa_EtkenMadde: TcxTabSheet;
    sayfa_Ilac: TcxTabSheet;
    cxGroupBox3: TcxGroupBox;
    cxGrid4: TcxGrid;
    ilacList: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    cxGroupBox7: TcxGroupBox;
    cxCheckBoxKadir1: TcxCheckBoxKadir;
    txtIlacAra: TcxTextEdit;
    ado_ilaclar: TADOQuery;
    DataSource2: TDataSource;
    ilacListColumn1: TcxGridDBColumn;
    ilacListColumn2: TcxGridDBColumn;
    ilacListColumn3: TcxGridDBColumn;
    ilacListColumn4: TcxGridDBColumn;
    ilacListColumn5: TcxGridDBColumn;
    ilacListColumn6: TcxGridDBColumn;
    gridIlacSarfTurKodu: TcxGridDBColumn;
    ilacListColumn7: TcxGridDBColumn;
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure ado_BransKodlariAfterScroll(DataSet: TDataSet);
    procedure ADO_EtkenMaddeSUTNewRecord(DataSet: TDataSet);
    procedure ADO_EtkenMaddeTetkikNewRecord(DataSet: TDataSet);
    procedure EtkenMaddeGetir(kod : string = '');
    procedure IlacGetir(kod: string = '');
    procedure chkTumuPropertiesEditValueChanged(Sender: TObject);
    procedure gridIlacSarfFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmIlacEtkenMaddeSutKural: TfrmIlacEtkenMaddeSutKural;
  _Focus_ : integer;
implementation

{$R *.dfm}

procedure TfrmIlacEtkenMaddeSutKural.ado_BransKodlariAfterScroll(
  DataSet: TDataSet);
begin
(*
       ADO_EtkenMaddeSUT.Active := False;
      ADO_EtkenMaddeSUT.Parameters[0].Value := ado_BransKodlari.FieldByName('tanimi').AsString;
      ADO_EtkenMaddeSUT.Active := True;

      ADO_EtkenMaddeTetkik.Active := False;
      ADO_EtkenMaddeTetkik.Parameters[0].Value := ado_BransKodlari.FieldByName('tanimi').AsString;
      ADO_EtkenMaddeTetkik.Active := True;
      *)
end;

procedure TfrmIlacEtkenMaddeSutKural.ADO_EtkenMaddeSUTNewRecord(
  DataSet: TDataSet);
begin
  // Dataset.FieldByName('EtkenMaddeKodu').AsString := ado_BransKodlari.FieldByName('tanimi').AsString;
end;

procedure TfrmIlacEtkenMaddeSutKural.ADO_EtkenMaddeTetkikNewRecord(
  DataSet: TDataSet);
begin
   Dataset.FieldByName('ATC_Kodu').AsString := ado_BransKodlari.FieldByName('kod').AsString;
end;

procedure TfrmIlacEtkenMaddeSutKural.chkTumuPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
 //  EtkenMaddeGetir;
end;

procedure TfrmIlacEtkenMaddeSutKural.Edit1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

  if key = 13
  then begin
   DurumGoster;
   try
     if TcxTextEdit(sender).Name = 'txtIlacAra'
     then
       IlacGetir(txtIlacAra.Text)
     else
       EtkenMaddeGetir(Edit1.Text);
   finally
     DurumGoster(false);
   end;
  end;
end;

procedure TfrmIlacEtkenMaddeSutKural.Edit1KeyPress(Sender: TObject;
  var Key: Char);
begin



    (*
      ADO_EtkenMaddeSUT.Parameters[0].Value := ado_BransKodlari.FieldByName('tanimi').AsString;
      ADO_EtkenMaddeSUT.Active := True;

      ADO_EtkenMaddeTetkik.Parameters[0].Value := ado_BransKodlari.FieldByName('tanimi').AsString;
      ADO_EtkenMaddeTetkik.Active := True;
      *)

end;

procedure TfrmIlacEtkenMaddeSutKural.EtkenMaddeGetir(kod: string = '');
begin
     _Focus_ := 0;
     ado_BransKodlari.active := False;
     ado_BransKodlari.Parameters[0].Value := kod + '%';
     ado_BransKodlari.Active := True;
     _Focus_ := 1;
end;

procedure TfrmIlacEtkenMaddeSutKural.IlacGetir(kod: string = '');
begin
     _Focus_ := 0;
     ado_ilaclar.active := False;
     ado_ilaclar.Parameters[0].Value := kod + '%';
     ado_ilaclar.Active := True;
     _Focus_ := 1;
end;


procedure TfrmIlacEtkenMaddeSutKural.FormCreate(Sender: TObject);
var
  IC : TcxImageComboKadir;
begin
    TopPanel.Visible := False;
    cxPanel.Visible := False;

    IC := TcxImageComboKadir.Create(nil);
    try
      IC.Conn := datalar.ADOConnection2;
     // IC.Name := 'ATC_Kodlari_Tur';
      IC.TableName := '(select * from osgb_master.dbo.ATC_Kodlari_Tur) t';
      IC.DisplayField := 'tanimi';
      IC.ValueField := 'kod';
      IC.Filter := '';
      TcxImageComboBoxProperties(gridIlacSarfTurKodu.Properties).Items := IC.Properties.Items;
    finally
      IC.Free;
    end;



end;

procedure TfrmIlacEtkenMaddeSutKural.gridIlacSarfFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
var
  kod : string;
  satir : integer;
begin
  inherited;
  try
    if _Focus_ = 1
    then begin
      satir := gridIlacSarf.Controller.SelectedRows[0].RecordIndex;
      kod := varToStr(gridIlacSarf.DataController.GetValue(satir,gridIlacSarf.DataController.GetItemByFieldName('kod').Index));
      if kod <> ''
      then begin
        ADO_EtkenMaddeTetkik.Active := False;
        ADO_EtkenMaddeTetkik.Parameters[0].Value := kod;
        ADO_EtkenMaddeTetkik.Active := True;

        ADO_EtkenMaddeSUT.Active := False;
        ADO_EtkenMaddeSUT.Parameters[0].Value := kod;
        ADO_EtkenMaddeSUT.Active := True;
      end;
    end;
  except
  end;
end;

end.
