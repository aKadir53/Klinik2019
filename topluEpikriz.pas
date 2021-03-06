unit topluEpikriz;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinMcSkin, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxCurrencyEdit,dateUtils,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxClasses, cxGridCustomView, cxGridDBTableView, adodb,
  cxGrid, StdCtrls, ExtCtrls, sComboBox,kadir,data_modul, cxMemo,cxGridExportlink,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMoneyTwins,GirisUnit,kadirType,GetFormClass,
  dxSkinsDefaultPainters, cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  KadirLabel, Menus, cxButtons;

type
  TfrmTopluEpikriz = class(TGirisForm)
    Panel1: TPanel;
    cxGrid2: TcxGridKadir;
    Detay: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    ADO_SQL: TADOQuery;
    DataSource1: TDataSource;
    DetayColumn1: TcxGridDBColumn;
    DetayColumn2: TcxGridDBColumn;
    DetayColumn3: TcxGridDBColumn;
    DetayColumn4: TcxGridDBColumn;
    Button3: TButton;
    SaveDialog1: TSaveDialog;
    txtDonem: TcxComboBox;
    txtYil: TcxComboBox;
    btnList: TcxButton;
    PopupMenu1: TPopupMenu;
    T1: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure btnListClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure T1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTopluEpikriz: TfrmTopluEpikriz;

implementation

{$R *.dfm}



procedure TfrmTopluEpikriz.btnListClick(Sender: TObject);
var
 txtTarih1 , txtTarih2 , ay1 ,sql : string;
 gun : integer;
 _tarih_ : Tdate;

begin

   if (varToStr(txtDonem.EditValue) = '') or (varToStr(txtYil.EditValue) = '') then exit;

   DurumGoster(True);
   try
     ay1 := formatfloat('00',txtDonem.ItemIndex);
     txtTarih1 := txtYil.Text + ay1 + '01';
     _tarih_ := tarihyap(txtTarih1);
     gun := DaysInMonth(_tarih_);
     txtTarih2 := txtYil.Text + ay1 + inttostr(gun);

     sql := 'set nocount on ' +
            'update Hasta_gelisler  ' +
            ' set MedulaEpikriz = dbo.HizmetDetay(g.basvuruno) ' +
            ' from Hasta_gelisler g ' +
            ' join HastaKart hk on hk.dosyaNo = g.dosyaNo ' +
            ' left join kurumFatura f on g.basvuruNo = f.basvuruNo ' +
            ' where bhdat between ' + QuotedStr(txtTarih1) + ' and ' + QuotedStr(txtTarih2) +
            ' and hk.sirketKod = ' + QuotedStr(datalar.AktifSirket) +
            ' and isnull(f.GSSFaturaTeslimNo,'''') = '''' ' +
            ' set nocount off' ;

     datalar.QueryExec(sql);
     sql :=
            ' select HASTAADI+'' ''+HASTASOYADI ad ,BHDAT tarih ,MedulaEpikriz ,aciklama ' +
            ' from Hasta_gelisler g ' +
            ' join hastakart h on g.dosyaNo = h.dosyaNO ' +
            ' where bhdat between ' + QuotedStr(txtTarih1) + ' and ' + QuotedStr(txtTarih2) +
            ' and h.sirketKod = ' + QuotedStr(datalar.AktifSirket) +
            ' order by HASTAADI+'' ''+HASTASOYADI ';
     datalar.QuerySelect(ado_sql,sql);

   finally
      DurumGoster(False);
   end;
end;

procedure TfrmTopluEpikriz.Button3Click(Sender: TObject);
begin
    SaveDialog1.FileName := 'Toplu_Epikriz.xls';
    if SaveDialog1.Execute = True
    Then
      ExportGridToExcel(SaveDialog1.FileName,cxGrid2 ,False,True);
end;

procedure TfrmTopluEpikriz.FormCreate(Sender: TObject);
begin
  inherited;
  //

  cxPanel.Visible := False;
  Menu := PopupMenu1;
end;

procedure TfrmTopluEpikriz.FormShow(Sender: TObject);
var
   sql : string;
   i : integer;
   ado : TADOQuery;
begin
   inherited;
   ado := TADOQuery.Create(nil);
   try
     ado.Connection := datalar.ADOConnection2;
     txtYil.Text :=  copy(tarihal(date()),1,4);
     sql := 'exec sp_YillikSeansGostergesi @Yil = ' + QuotedStr('') + ',' +
                                          '@tip = ' + QuotedStr('T') + ',' +
                                          '@sirketKod = ' + QuotedStr(datalar.AktifSirket);
     datalar.QuerySelect(ado,sql);

     txtYil.Properties.Items.Clear;

     for i := 1 to ado.RecordCount  do
     begin
           txtYil.Properties.Items.Add(ado.fieldbyname('YIL').AsString);
           ado.Next;
     end;
   finally
     ado.free;
   end;
end;
procedure TfrmTopluEpikriz.T1Click(Sender: TObject);
var
  F : TGirisForm;
  GirisRecord : TGirisFormRecord;
begin
  inherited;   //

    F := FormINIT(TagfrmMadulaEpiktizTanim,GirisRecord,ikHayir,'');
    if F <> nil then F.ShowModal;
end;

end.
