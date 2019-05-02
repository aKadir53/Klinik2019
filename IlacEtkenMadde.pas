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
  Data.Win.ADODB, Vcl.Menus, cxCheckBox, KadirLabel;

type
  TfrmIlacEtkenMaddeSutKural = class(TGirisForm)
    pnlOnay: TPanel;
    txtinfo: TLabel;
    btnSend: TsBitBtn;
    btnVazgec: TsBitBtn;
    PopupMenu1: TPopupMenu;
    KurumEkle1: TMenuItem;
    KurumSil1: TMenuItem;
    KurumDzenle1: TMenuItem;
    ado_BransKodlari: TADOQuery;
    DataSource1: TDataSource;
    cxGroupBox1: TcxGroupBox;
    Edit1: TEdit;
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
    cxGroupBox3: TcxGroupBox;
    DBGridEh1: TDBGridEh;
    DBGridEh2: TDBGridEh;
    DataSource4: TDataSource;
    ADO_EtkenMaddeTetkik: TADOQuery;
    DataSource3: TDataSource;
    ADO_EtkenMaddeSUT: TADOQuery;
    chkTumu: TcxCheckBoxKadir;
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure btnVazgecClick(Sender: TObject);
    procedure ado_BransKodlariAfterScroll(DataSet: TDataSet);
    procedure ADO_EtkenMaddeSUTNewRecord(DataSet: TDataSet);
    procedure ADO_EtkenMaddeTetkikNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmIlacEtkenMaddeSutKural: TfrmIlacEtkenMaddeSutKural;

implementation

{$R *.dfm}

procedure TfrmIlacEtkenMaddeSutKural.ado_BransKodlariAfterScroll(
  DataSet: TDataSet);
begin
       ADO_EtkenMaddeSUT.Active := False;
      ADO_EtkenMaddeSUT.Parameters[0].Value := ado_BransKodlari.FieldByName('tanimi').AsString;
      ADO_EtkenMaddeSUT.Active := True;

      ADO_EtkenMaddeTetkik.Active := False;
      ADO_EtkenMaddeTetkik.Parameters[0].Value := ado_BransKodlari.FieldByName('tanimi').AsString;
      ADO_EtkenMaddeTetkik.Active := True;
end;

procedure TfrmIlacEtkenMaddeSutKural.ADO_EtkenMaddeSUTNewRecord(
  DataSet: TDataSet);
begin
   Dataset.FieldByName('EtkenMaddeKodu').AsString := ado_BransKodlari.FieldByName('tanimi').AsString;
end;

procedure TfrmIlacEtkenMaddeSutKural.ADO_EtkenMaddeTetkikNewRecord(
  DataSet: TDataSet);
begin
   Dataset.FieldByName('EtkenMaddeKodu').AsString := ado_BransKodlari.FieldByName('tanimi').AsString;
end;

procedure TfrmIlacEtkenMaddeSutKural.btnVazgecClick(Sender: TObject);
begin
    ado_BransKodlari.Active := false;
    ADO_EtkenMaddeSUT.Active := false;
    ADO_EtkenMaddeTetkik.Active := false;
    close;
end;

procedure TfrmIlacEtkenMaddeSutKural.Edit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
   if (key in ['A'..'Z','a'..'z',#13]) and (Length(Edit1.Text) >= 2)
   then begin
      ado_BransKodlari.active := False;
      ado_BransKodlari.Parameters[0].Value := edit1.Text + '%';
      ado_BransKodlari.Parameters[1].Value := chkTumu.EditingValue;

      ado_BransKodlari.Active := True;

      ADO_EtkenMaddeSUT.Parameters[0].Value := ado_BransKodlari.FieldByName('tanimi').AsString;
      ADO_EtkenMaddeSUT.Active := True;

      ADO_EtkenMaddeTetkik.Parameters[0].Value := ado_BransKodlari.FieldByName('tanimi').AsString;
      ADO_EtkenMaddeTetkik.Active := True;
   end;
end;

procedure TfrmIlacEtkenMaddeSutKural.FormCreate(Sender: TObject);
begin
    TopPanel.Visible := False;
    cxPanel.Visible := False;
end;

end.
