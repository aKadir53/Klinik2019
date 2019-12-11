unit KiloOrder;

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
  TfrmKiloOrder = class(TGirisForm)
    cxGrid2: TcxGridKadir;
    cxGridLevel1: TcxGridLevel;
    ado: TADOQuery;
    DataSource1: TDataSource;
    PopupMenu1: TPopupMenu;
    K1: TMenuItem;
    N1: TMenuItem;
    B1: TMenuItem;
    Y1: TMenuItem;
    E1: TMenuItem;
    H1: TMenuItem;
    GridEkstre: TcxGridDBBandedTableView;
    GridEkstredosyaNo: TcxGridDBBandedColumn;
    GridEkstreGelisNo: TcxGridDBBandedColumn;
    GridEkstrehastaAdi: TcxGridDBBandedColumn;
    GridEkstresirano: TcxGridDBBandedColumn;
    GridEkstredurum: TcxGridDBBandedColumn;
    GridEkstreRTarihDateTime: TcxGridDBBandedColumn;
    GridEkstreUTarihDateTime: TcxGridDBBandedColumn;
    GridEkstreTCKIMLIKNO: TcxGridDBBandedColumn;
    GridEkstreGIRISKILO: TcxGridDBBandedColumn;
    GridEkstreCIKISKILO: TcxGridDBBandedColumn;
    GridEkstreIdealKilo: TcxGridDBBandedColumn;
    GridEkstreTanG: TcxGridDBBandedColumn;
    GridEkstreTanC: TcxGridDBBandedColumn;
    GridEkstreNabizG: TcxGridDBBandedColumn;
    GridEkstreNabizC: TcxGridDBBandedColumn;
    GridEkstreTanGK: TcxGridDBBandedColumn;
    GridEkstreTanCK: TcxGridDBBandedColumn;
    GridEkstreCins: TcxGridDBBandedColumn;
    GridEkstreYas: TcxGridDBBandedColumn;
    GridEkstreColumn1: TcxGridDBBandedColumn;
    procedure K1Click(Sender: TObject);
    procedure B1Click(Sender: TObject);
    procedure adoAfterPost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure E1Click(Sender: TObject);
    procedure Y1Click(Sender: TObject);
    procedure H1Click(Sender: TObject);
    procedure TopPanelButonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmKiloOrder: TfrmKiloOrder;

implementation
   uses data_modul,AnaUnit;
{$R *.dfm}

procedure TfrmKiloOrder.adoAfterPost(DataSet: TDataSet);
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

procedure TfrmKiloOrder.B1Click(Sender: TObject);
var
  sql , kilo , dosyaNo , gelisNo ,sira,rtarih : string;
  x : integer;
  ado_S : TADOQuery;
  konum : TBookmark;
begin
  ado_S := TADOQuery.Create(nil);
  ado_S.Connection := datalar.ADOConnection2;

  dosyaNo := _Dataset.FieldByName('dosyaNo').AsString;
  gelisNo := _Dataset.FieldByName('gelisNo').AsString;
  sira := _Dataset.FieldByName('siraNo').AsString;
  rtarih := _Dataset.FieldByName('UTarih').AsString;
  konum := _Dataset.Bookmark;

  kilo := InputBox('Tedavi Dosyas� �deal Kilo','�deal Kiloyu Girin : ','');
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


end;

procedure TfrmKiloOrder.E1Click(Sender: TObject);
begin
  ExceleGonder;
end;

procedure TfrmKiloOrder.FormCreate(Sender: TObject);
var
 chk : TcxCheckGroupItem;
begin
  Menu := PopupMenu1;
 // Olustur(self,_TableName_,'Kimlik Do�rula',71,sqlInsert);
  cxPanel.Visible := false;

  TopPanel.Visible := True;
  TapPanelElemanVisible(True,True,True,False,True,False,False,False,False,False,False,False,False);
 // GridEkstre.DataController.DataSource := DataSource;

   (*
   chkList.Properties.Items.Clear;
   Chk := chkList.Properties.Items.Add;
   Chk.Caption := 'Kilo De�erleri ��lenmemi� Hastalar';
   Chk.Tag := 0;
   Chk := chkList.Properties.Items.Add;
   Chk.Caption := 'Tansiyon De�erleri ��lenmemi� Hastalar';
   Chk.Tag := 1;
   Chk := chkList.Properties.Items.Add;
   Chk.Caption := 'Gelinmeyen Seanslar� G�ster';
   Chk.Tag := 2;
     *)

end;

procedure TfrmKiloOrder.H1Click(Sender: TObject);
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
      Form := FormINIT(TagfrmHastaKart,self,dosyaNo,NewTab(AnaForm.sayfalar,TagfrmHastaKart),ikEvet,'Giri�');
      if Form <> nil then Form.show;
     end;
  end;
end;

procedure TfrmKiloOrder.K1Click(Sender: TObject);
var
  dosyaNo , gelisNo , sira ,sql , tt , doktor: string;
begin
  if GridEkstre.Controller.SelectedRowCount > 0
  Then begin
     dosyaNo := ado.FieldByName('dosyaNo').AsString;
     gelisNo := ado.FieldByName('gelisNo').AsString;
     sira := ado.FieldByName('siraNo').AsString;

     datalar.QueryExec(
     'update hareketler set KanAlindimi = 0 where dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNo = ' + gelisNO
     +
     ' update hasta_gelisler set KanAlimZamani =  NULL ' +
     ' where dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNo = ' + gelisNO);

      datalar.QueryExec('update hareketler set kanAlindimi = 1 where siraNo = ' + sira
                        +
                        ' update hasta_gelisler set KanAlimZamani =  ' +  QuotedStr(FormatDateTime('YYYYMMDD',ado.FieldByName('Tarih').Asdatetime)) +
                        ' where dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNo = ' + gelisNO);


     ado.Requery();
  end;

end;

procedure TfrmKiloOrder.TopPanelButonClick(Sender: TObject);
var
  sql : string;
begin
  sql :='select h.dosyaNo,h.gelisNo, h.sirano,HK.TCKIMLIKNO, hk.HASTAADI+'' ''+hk.HASTASOYADI HastaAdi ,Tarih,' +
        ' hk.IdealKilo,GIRISKILO,CIKISKILO ,dbo.fn_yas(HK.dogumTARIHI) Yas, CINSIYETI cins,' +
        ' tanG,Tanc,NabizG,NabizC,TanGK,TanCK,KanAlindimi,h.durum ' +
        ' from hareketler h ' +
        ' join hastakart hk on hk.dosyaNo = h.dosyaNo ' +
        ' where Tarih between ' + txtTopPanelTarih1.GetSQLValue('YYYY-MM-DD') + ' and ' + txtTopPanelTarih2.GetSQLValue('YYYY-MM-DD') +
        ' and hk.sirketKod = ' + QuotedStr(datalar.AktifSirket) + ' and h.Tip = ''S''';

  datalar.QuerySelect(ado,sql);


end;

procedure TfrmKiloOrder.Y1Click(Sender: TObject);
var
  TopluDataset : TDataSetKadir;
begin
    TopluDataset.Dataset1 := _Dataset;
    PrintYap('211','\KiloOrder','',TopluDataset,pTNone);
end;

end.
