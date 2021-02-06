unit VKI;

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
  cxGroupBox,cxCheckGroup,KadirLabel,KadirType,GetFormClass,
  cxGridBandedTableView, cxGridDBBandedTableView;

type
  TfrmVKI = class(TGirisForm)
    cxGrid2: TcxGridKadir;
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
    GridEkstreCins: TcxGridDBBandedColumn;
    GridEkstreYas: TcxGridDBBandedColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    GridEkstreColumn1: TcxGridDBBandedColumn;
    GridEkstreColumn2: TcxGridDBBandedColumn;
    procedure K1Click(Sender: TObject);
    procedure B1Click(Sender: TObject);
    procedure adoAfterPost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure E1Click(Sender: TObject);
    procedure Y1Click(Sender: TObject);
    procedure H1Click(Sender: TObject);
    procedure TopPanelButonClick(Sender: TObject);
    procedure GridEkstreEditKeyDown(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Word;
      Shift: TShiftState);
    procedure GridEkstreEditValueChanged(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem);
    procedure adoBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVKI: TfrmVKI;

implementation
   uses data_modul,AnaUnit;
{$R *.dfm}

procedure TfrmVKI.adoAfterPost(DataSet: TDataSet);
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

procedure TfrmVKI.adoBeforePost(DataSet: TDataSet);
begin

    try
     if DataSet.FieldByName('boy').AsVariant > 0
     then
       DataSet.FieldByName('VKI').AsVariant  :=
        DataSet.FieldByName('IdealKilo').AsVariant  /
        (sqr((DataSet.FieldByName('boy').AsVariant /100)))
     else
        DataSet.FieldByName('VKI').AsVariant := 0;
    except
      DataSet.FieldByName('VKI').AsVariant := 0;
    end;
end;

procedure TfrmVKI.B1Click(Sender: TObject);
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

procedure TfrmVKI.E1Click(Sender: TObject);
begin
  ExceleGonder;
end;

procedure TfrmVKI.FormCreate(Sender: TObject);
var
 chk : TcxCheckGroupItem;
begin
  Menu := PopupMenu1;
 // Olustur(self,_TableName_,'Kimlik Doðrula',71,sqlInsert);
  cxPanel.Visible := false;

  TopPanel.Visible := True;
  TapPanelElemanVisible(True,False,False,False,False,False,False,False,False,False,False,False,False);
 // GridEkstre.DataController.DataSource := DataSource;





 (*
   Chk := chkList.Properties.Items.Add;
   Chk.Caption := 'Gelinmeyen Seanslarý Göster';
   Chk.Tag := 2;
   *)

end;

procedure TfrmVKI.GridEkstreEditKeyDown(Sender: TcxCustomGridTableView;
  AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Word;
  Shift: TShiftState);
begin
  inherited;

  if key = VK_LEFT
  then begin
    TcxCustomGridTableView(sender).Controller.FocusedItem :=
    TcxGridDBTableView(sender).Columns[
    TcxCustomGridTableView(sender).Controller.FocusedItem.Index - 1];
  end;

  if key = VK_RIGHT then key := 13;




end;

procedure TfrmVKI.GridEkstreEditValueChanged(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem);
var
 sql : string;
begin


end;

procedure TfrmVKI.H1Click(Sender: TObject);
var
 satir : integer;
 dosyaNo : string;
 Form : TGirisForm;
begin
  if GridEkstre.Controller.SelectedRowCount > 0
  Then begin
     dosyaNo := ado.FieldByName('dosyaNo').AsString;
     if FindTab(AnaForm.sayfalar,TagfrmHastaKart)
     Then begin
       Form := TGirisForm(FormClassType(TagfrmHastaKart));
       TGirisForm(FormClassType(TagfrmHastaKart))._dosyaNO_ := dosyaNo;
       TGirisForm(FormClassType(TagfrmHastaKart))._TC_ := '';
       TGirisForm(FormClassType(TagfrmHastaKart)).Init(Form);
     end
     Else begin
      Form := FormINIT(TagfrmHastaKart,self,dosyaNo,NewTab(AnaForm.sayfalar,TagfrmHastaKart),ikEvet,'Giriþ');
      if Form <> nil then Form.show;
     end;
  end;
end;

procedure TfrmVKI.K1Click(Sender: TObject);
var
  dosyaNo , gelisNo , sira ,sql , tt , doktor: string;
begin

end;

procedure TfrmVKI.TopPanelButonClick(Sender: TObject);
var
  sql , durum : string;
begin


  sql :='select hk.dosyaNo,HK.TCKIMLIKNO, hk.HASTAADI+'' ''+hk.HASTASOYADI HastaAdi ,' +
        ' hk.IdealKilo,dbo.fn_yas(HK.dogumTARIHI) Yas, CINSIYETI cins,hk.boy,hk.VKI ' +
        ' from hastakart hk ' +
        ' where ' +
        '  hk.sirketKod = ' + QuotedStr(datalar.AktifSirket) + ' and aktif in (1,2) ';

  datalar.QuerySelect(ado,sql);


end;

procedure TfrmVKI.Y1Click(Sender: TObject);
var
  TopluDataset : TDataSetKadir;
begin
    TopluDataset.Dataset2 := datalar.ADO_AktifSirket;
    TopluDataset.Dataset0 := datalar.ADO_aktifSirketLogo;
    TopluDataset.Dataset1 := ado;
    PrintYap('VKI','\VKI','',TopluDataset,pTNone);
end;

end.
