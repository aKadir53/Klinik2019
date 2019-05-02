unit SKSKriterTanim;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinscxPCPainter,GirisUnit,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, Data.Win.ADODB,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinsDefaultPainters,
  KadirLabel,data_modul;

type
  TfrmSKSKriter = class(TGirisForm)
    Grid_Sks_Tanim: TcxGridKadir;
    Grid_Sks_TanimDBTableView1: TcxGridDBTableView;
    Grid_Sks_TanimLevel1: TcxGridLevel;
    Grid_Sks_TanimDBTableView1sira: TcxGridDBColumn;
    Grid_Sks_TanimDBTableView1TetkikKod: TcxGridDBColumn;
    Grid_Sks_TanimDBTableView1TetkikAdi: TcxGridDBColumn;
    Grid_Sks_TanimDBTableView1Ref1: TcxGridDBColumn;
    Grid_Sks_TanimDBTableView1Ref2: TcxGridDBColumn;
    Grid_Sks_TanimDBTableView1Ref3: TcxGridDBColumn;
    Grid_Sks_TanimDBTableView1Ref4: TcxGridDBColumn;
    Grid_Sks_TanimDBTableView1Tip: TcxGridDBColumn;
    Grid_Sks_TanimDBTableView1RefTip: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSKSKriter: TfrmSKSKriter;

implementation

{$R *.dfm}

procedure TfrmSKSKriter.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Grid_Sks_Tanim.Dataset.Active := False;
end;

procedure TfrmSKSKriter.FormCreate(Sender: TObject);
begin
  Grid_Sks_Tanim.Dataset.Active := False;
  Grid_Sks_Tanim.Dataset.Connection := datalar.ADOConnection2;
  Grid_Sks_Tanim.Dataset.SQL.Text := 'select * from SKS_istatistik_Tanim_Tablosu';
  Grid_Sks_Tanim.Dataset.Active := True;
end;

end.
