unit SKSKriterTanim;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinscxPCPainter,GirisUnit,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,kadir,kadirType,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, Data.Win.ADODB,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinsDefaultPainters,
  KadirLabel,data_modul, cxTextEdit, Vcl.Menus;

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
    Grid_Sks_TanimDBTableView1Column1: TcxGridDBColumn;
    Grid_Sks_TanimDBTableView1Column2: TcxGridDBColumn;
    PopupMenu1: TPopupMenu;
    G1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Grid_Sks_TanimDBTableView1NavigatorButtonsButtonClick(
      Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
    procedure G1Click(Sender: TObject);
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
  Menu := PopupMenu1;
  Grid_Sks_Tanim.Dataset.Active := False;
  Grid_Sks_Tanim.Dataset.Connection := datalar.ADOConnection2;
  Grid_Sks_Tanim.Dataset.SQL.Text := 'select * from SKS_istatistik_Tanim_Tablosu';
  Grid_Sks_Tanim.Dataset.Active := True;
  cxPanel.Visible := False;
end;

procedure TfrmSKSKriter.G1Click(Sender: TObject);
var
  TopluDataset : TDataSetKadir;
begin
  try
    TopluDataset.Dataset0 := Grid_Sks_Tanim.Dataset;
    TopluDataset.Dataset1 := datalar.ADO_AktifSirket;
    TopluDataset.Dataset2 := datalar.ADO_aktifSirketLogo;
    PrintYap('IGK','Ýndikatör Taným Kartý','',TopluDataset,pTNone)
  finally
  end;
end;

procedure TfrmSKSKriter.Grid_Sks_TanimDBTableView1NavigatorButtonsButtonClick(
  Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
begin
  inherited;

   if (AButtonIndex = 9)
   then begin
       datalar.IndikatorTanim.gostergeKodu := Grid_Sks_Tanim.Dataset.FieldByName('gostergeKodu').AsString;
       datalar.IndikatorTanim.tanimi := Grid_Sks_Tanim.Dataset.FieldByName('tanimi').AsString;
       datalar.IndikatorTanim.amac := Grid_Sks_Tanim.Dataset.FieldByName('amac').AsString;
       datalar.IndikatorTanim.formul := Grid_Sks_Tanim.Dataset.FieldByName('formul').AsString;
       datalar.IndikatorTanim.altGosterge := Grid_Sks_Tanim.Dataset.FieldByName('altGosterge').AsString;
       datalar.IndikatorTanim.peryot := Grid_Sks_Tanim.Dataset.FieldByName('peryot').AsString;
       datalar.IndikatorTanim.veriKaynak := Grid_Sks_Tanim.Dataset.FieldByName('veriKaynak').AsString;
       datalar.IndikatorTanim.sorumlular := Grid_Sks_Tanim.Dataset.FieldByName('sorumlular').AsString;
       datalar.IndikatorTanim.paylasilacakKisiler := Grid_Sks_Tanim.Dataset.FieldByName('paylasilacakKisiler').AsString;
       datalar.IndikatorTanim.dikkatedilecekhususlar := Grid_Sks_Tanim.Dataset.FieldByName('dikkatedilecekhususlar').AsString;

       if mrYEs = ShowPopupForm('Ýndikator Taným Kartý('+Grid_Sks_Tanim.Dataset.FieldByName('TetkikAdi').AsString+')',indikatorKart,'','')
       then begin
           datalar.QueryExec('update SKS_istatistik_Tanim_Tablosu set ' +
                             'gostergeKodu = ' + QuotedStr(datalar.IndikatorTanim.gostergeKodu) +
                             ',tanimi = ' + QuotedStr(datalar.IndikatorTanim.tanimi) +
                             ',amac = ' +  QuotedStr(datalar.IndikatorTanim.amac) +
                             ',formul = ' + QuotedStr(datalar.IndikatorTanim.formul) +
                             ',altGosterge = ' +  QuotedStr(datalar.IndikatorTanim.altGosterge) +
                             ',HedefTanimi = ' +  QuotedStr(datalar.IndikatorTanim.HedefTanimi) +
                             ',peryot = ' +  QuotedStr(datalar.IndikatorTanim.peryot) +
                             ',sorumlular = ' +  QuotedStr(datalar.IndikatorTanim.sorumlular) +
                             ',paylasilacakKisiler = ' + QuotedStr(datalar.IndikatorTanim.paylasilacakKisiler) +
                             ',dikkatedilecekhususlar = ' + QuotedStr(datalar.IndikatorTanim.dikkatedilecekhususlar) +
                             ',veriKaynak = ' + QuotedStr(datalar.IndikatorTanim.veriKaynak) +
                             ' where sira = ' + Grid_Sks_Tanim.Dataset.FieldByName('sira').AsString);
          Grid_Sks_Tanim.Dataset.Requery();


       end;
   end;







end;

end.
