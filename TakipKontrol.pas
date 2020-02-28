unit TakipKontrol;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  kadir, kadirMedula3,Data_Modul,KadirLabel,GetFormClass,KadirType,
  Dialogs, StdCtrls, Grids, BaseGrid, ComCtrls, Mask, EditType, adodb,
  strutils, ExtCtrls, Buttons, sBitBtn, AdvToolBtn, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, Menus, sGauge, sCheckBox,
  InvokeRegistry, SOAPHTTPClient, Rio, DB,cxMemo, cxPC, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxPCdxBarPopupMenu, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxDBData, cxCurrencyEdit, cxGridDBTableView,
  cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxClasses,
  cxGridCustomView, cxGrid, cxCheckBox, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxmdaset,dxSkinStardust, dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue,
  GirisUnit,cxGroupBox, cxRadioGroup, cxImageComboBox, cxLabel, cxButtons,
  dxGDIPlusClasses, dxLayoutContainer, dxLayoutControl, dxLayoutLookAndFeels,
  cxSplitter;

type
  TfrmTakipKontrol = class(TGirisForm)
    PopupMenu1: TPopupMenu;
    mnSe1: TMenuItem;
    mptal1: TMenuItem;
    DataSource1: TDataSource;
    ADO_SQL: TADOQuery;
    DataSource2: TDataSource;
    Panel3: TPanel;
    N1: TMenuItem;
    akipDetayFormu1: TMenuItem;
    N2: TMenuItem;
    HizmetleriptalEt1: TMenuItem;
    ahlilleriptalEt1: TMenuItem;
    MalzemeptalEt1: TMenuItem;
    N3: TMenuItem;
    SeanslarSistemeYaz1: TMenuItem;
    N4: TMenuItem;
    mHizmetleriKaydet1: TMenuItem;
    N5: TMenuItem;
    FaturayaAt1: TMenuItem;
    N6: TMenuItem;
    MedulaSistemKontrol1: TMenuItem;
    mHizmetleriptalEt1: TMenuItem;
    R1: TMenuItem;
    StatusBar1: TStatusBar;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    T1: TMenuItem;
    S1: TMenuItem;
    H1: TMenuItem;
    PopupMenu2: TPopupMenu;
    S2: TMenuItem;
    M1: TMenuItem;
    H2: TMenuItem;
    S3: TMenuItem;
    L1: TMenuItem;
    K1: TMenuItem;
    dxLayoutHizmetlerLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutHizmetlerSkinLookAndFeel1: TdxLayoutSkinLookAndFeel;
    ADO_TahlillSQL: TADOQuery;
    cxPageControl2: TcxPageControl;
    cxTabSheetTakipler: TcxTabSheet;
    cxTabSheetEAck: TcxTabSheet;
    cxTabSheetLog: TcxTabSheet;
    cxGrid4: TcxGridKadir;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBBandedTableView13: TcxGridDBBandedTableView;
    cxGridDBBandedColumn40: TcxGridDBBandedColumn;
    cxGridDBBandedColumn41: TcxGridDBBandedColumn;
    cxGridDBBandedColumn42: TcxGridDBBandedColumn;
    cxGridDBBandedColumn43: TcxGridDBBandedColumn;
    cxGridDBBandedColumn44: TcxGridDBBandedColumn;
    cxGridDBBandedTableView14: TcxGridDBBandedTableView;
    cxGridDBBandedColumn45: TcxGridDBBandedColumn;
    cxGridDBBandedColumn46: TcxGridDBBandedColumn;
    cxGridDBBandedTableView15: TcxGridDBBandedTableView;
    cxGridDBBandedTableView16: TcxGridDBBandedTableView;
    cxGridDBBandedColumn47: TcxGridDBBandedColumn;
    cxGridDBBandedColumn48: TcxGridDBBandedColumn;
    cxGridDBBandedColumn49: TcxGridDBBandedColumn;
    cxGridDBBandedColumn50: TcxGridDBBandedColumn;
    cxGridDBBandedColumn51: TcxGridDBBandedColumn;
    cxGridDBBandedColumn52: TcxGridDBBandedColumn;
    Takipler: TcxGridDBTableView;
    TakipNo: TcxGridColumn;
    HastaNo: TcxGridColumn;
    gelisNo: TcxGridColumn;
    Hasta: TcxGridColumn;
    TakipTarih: TcxGridColumn;
    SIRANO: TcxGridColumn;
    BasvuruNo: TcxGridColumn;
    TakiplerColumn1: TcxGridColumn;
    TakiplerColumn2: TcxGridColumn;
    TakiplerColumn3: TcxGridColumn;
    TakiplerColumn4: TcxGridColumn;
    TakiplerColumn5: TcxGridColumn;
    TakiplerColumn6: TcxGridColumn;
    cxGrid4Level1: TcxGridLevel;
    cxGroupBox1: TcxGroupBox;
    cxMemo1: TcxMemo;
    cxButton1_kaydet: TcxButton;
    txtHatalar: TcxMemo;
    cxPageControl1: TcxPageControl;
    cxTabSheetMedula: TcxTabSheet;
    grpSeans: TcxGroupBox;
    cxGrid8: TcxGrid;
    GridHizmetler: TcxGridDBTableView;
    GridHizmetlertakipNo: TcxGridDBColumn;
    GridHizmetlersutKodu: TcxGridDBColumn;
    GridHizmetlerTanm: TcxGridDBColumn;
    GridHizmetlerSonuc: TcxGridDBColumn;
    GridHizmetlerislemTarihi: TcxGridDBColumn;
    GridHizmetlerbransKodu: TcxGridDBColumn;
    GridHizmetlerdrTescilNo: TcxGridDBColumn;
    GridHizmetlerraporTakipno: TcxGridDBColumn;
    GridHizmetlerhizmetSunucuRefNo: TcxGridDBColumn;
    GridHizmetlerislemSiraNo: TcxGridDBColumn;
    GridHizmetlerHizmetTuru: TcxGridDBColumn;
    cxGridDBBandedTableView29: TcxGridDBBandedTableView;
    cxGridDBBandedColumn92: TcxGridDBBandedColumn;
    cxGridDBBandedColumn93: TcxGridDBBandedColumn;
    cxGridDBBandedColumn94: TcxGridDBBandedColumn;
    cxGridDBBandedColumn95: TcxGridDBBandedColumn;
    cxGridDBBandedColumn96: TcxGridDBBandedColumn;
    cxGridDBBandedTableView30: TcxGridDBBandedTableView;
    cxGridDBBandedColumn97: TcxGridDBBandedColumn;
    cxGridDBBandedColumn98: TcxGridDBBandedColumn;
    cxGridDBBandedTableView31: TcxGridDBBandedTableView;
    cxGridDBBandedTableView32: TcxGridDBBandedTableView;
    cxGridDBBandedColumn99: TcxGridDBBandedColumn;
    cxGridDBBandedColumn100: TcxGridDBBandedColumn;
    cxGridDBBandedColumn101: TcxGridDBBandedColumn;
    cxGridDBBandedColumn102: TcxGridDBBandedColumn;
    cxGridDBBandedColumn103: TcxGridDBBandedColumn;
    cxGridDBBandedColumn104: TcxGridDBBandedColumn;
    cxGridLevel7: TcxGridLevel;
    cxTabSheetSistem: TcxTabSheet;
    cxStyle4: TcxStyle;
    TakiplerDurumDetay: TcxGridColumn;
    cxSplitter1: TcxSplitter;
    S4: TMenuItem;
    cxStyle5: TcxStyle;
    procedure cxButtonCClick(Sender: TObject);
    procedure mnSe1Click(Sender: TObject);
    procedure mptal1Click(Sender: TObject);
    procedure gridAktifCheckBoxClick(Sender: TObject; ACol, ARow: Integer;
      State: Boolean);
    procedure gridAktifClick(Sender: TObject);
    procedure btnVazgecClick(Sender: TObject);
    procedure akipDetayFormu1Click(Sender: TObject);
    procedure HizmetleriptalEt1Click(Sender: TObject);
    procedure islemSiraDoldur(tag: integer);
    procedure SeanslarSistemeYaz1Click(Sender: TObject);
    procedure mHizmetleriKaydet1Click(Sender: TObject);
    procedure FaturayaAt1Click(Sender: TObject);
    procedure MedulaSistemKontrol1Click(Sender: TObject);
    procedure Sonucyaz(s, takip: string; x: integer; hatalar: TstringList);
    procedure TakiplerFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure PopupMenu1Popup(Sender: TObject);
    procedure GonderimSonuc(takip, s: string);
    procedure T1Click(Sender: TObject);
    procedure S1Click(Sender: TObject);
    procedure H1Click(Sender: TObject);
    procedure sBitBtn1Click(Sender: TObject);
    procedure SeansSayiToplam;
    procedure cxButton1_kaydetClick(Sender: TObject);
    procedure S2Click(Sender: TObject);
    procedure M1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure H2Click(Sender: TObject);
    procedure S3Click(Sender: TObject);
    procedure TopPanelButonClick(Sender: TObject);
    procedure TakiplerStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      out AStyle: TcxStyle);

  private
    { Private declarations }
  public
    { Public declarations }
    procedure MemDataToDataset(Dataset: TdxMemData; DatasetAdo: Tdataset); overload;
    procedure MemDataToDataset(Dataset: TdxMemData); overload;
    procedure OrtakEventAta(Sender : TObject);overload;
    procedure OrtakEventAta(Sender : TcxImageComboKadir);overload;
    function Init(Sender: TObject) : Boolean; override;

  end;

var
  frmTakipKontrol: TfrmTakipKontrol;
  id: integer;
  dn, gn: string;

implementation

uses  rapor, //TedaviBilgisi, Seanslar,
      HastaKart, //HastaListe,
      SeansHakedis, TedaviKart,AnaUnit;
{$R *.dfm}

function TfrmTakipKontrol.Init(Sender : TObject) : Boolean;
begin
  Result := False;
  txtTopPanelTarih2.Date := ayliktarih(date,txtTopPanelTarih2);
  if not inherited Init(Sender) then exit;
  Result := True;
end;

procedure TfrmTakipKontrol.OrtakEventAta(Sender : TObject);
begin
  TcxButtonEditKadir(sender).Properties.OnButtonClick := cxButtonEditPropertiesButtonClick;
  TcxButtonEditKadir(sender).OnEnter := cxEditEnter;
  TcxButtonEditKadir(sender).OnExit := cxEditExit;
  TcxButtonEditKadir(sender).OnKeyDown := cxTextEditBKeyDown;
  TcxButtonEditKadir(sender).Properties.OnEditValueChanged := PropertiesEditValueChanged;
end;

procedure TfrmTakipKontrol.OrtakEventAta(Sender : TcxImageComboKadir);
begin
  TcxImageComboKadir (sender).OnEnter := cxEditEnter;
  TcxImageComboKadir(sender).OnExit := cxEditExit;
  TcxImageComboKadir(sender).OnKeyDown := cxTextEditBKeyDown;
  TcxImageComboKadir(sender).Properties.OnEditValueChanged := PropertiesEditValueChanged;
end;


procedure TfrmTakipKontrol.cxButtonCClick(Sender: TObject);
begin
inherited;
  case Tcontrol(sender).Tag of

  17 : begin
         //ll
       end;

  -17 : begin
          H2.Click;
       end;
  -18 : begin
         S3.Click;
        end;

  end;


end;

procedure TfrmTakipKontrol.SeansSayiToplam;
var
  Toplam, P704230, P704233, P704234: integer;
begin
(*
  Toplam := TakipKontrolDonemSeansSayisi(copy(tarihal(txtTarih.Date), 1, 6),
    P704230, P704233, P704234);
  txt230Donem.Text := inttostr(P704230);
  txt233Donem.Text := inttostr(P704233);
  txt234Donem.Text := inttostr(P704234);
  *)
end;

procedure TfrmTakipKontrol.MemDataToDataset(Dataset: TdxMemData);
var
  sql : string;
begin
  try
    Dataset.First;
    while not Dataset.Eof do
    begin
      if Dataset.Name = 'RxDigerIslem'
      then begin
        datalar.QueryExec('insert into gssTakipOkuDiger(takipNo,sutKodu,islemTarihi,bransKodu,hizmetSunucuRefNo,islemSiraNo,drTescilNo,raporTakipno) ' +
                          'values(' + QuotedStr(dataset.FieldByName('takipNo').AsString) + ',' +
                                      QuotedStr(dataset.FieldByName('sutKodu').AsString) + ',' +
                                      QuotedStr(dataset.FieldByName('islemTarihi').AsString) + ',' +
                                      QuotedStr(dataset.FieldByName('bransKodu').AsString) + ',' +
                                      QuotedStr(dataset.FieldByName('hizmetSunucuRefNo').AsString) + ',' +
                                      QuotedStr(dataset.FieldByName('islemSiraNo').AsString) + ',' +
                                      QuotedStr(dataset.FieldByName('drTescilNo').AsString) + ',' +
                                      QuotedStr(dataset.FieldByName('raporTakipNo').AsString) + ')');
      end
      else
      if Dataset.Name = 'RxTahlilIslem'
      then begin
        datalar.QueryExec('insert into gssTakipOkuTahlil(takipNo,sutKodu,islemTarihi,bransKodu,hizmetSunucuRefNo,islemSiraNo,drTescilNo) ' +
                          'values(' + QuotedStr(dataset.FieldByName('takipNo').AsString) + ',' +
                                      QuotedStr(dataset.FieldByName('sutKodu').AsString) + ',' +
                                      QuotedStr(dataset.FieldByName('islemTarihi').AsString) + ',' +
                                      QuotedStr(dataset.FieldByName('bransKodu').AsString) + ',' +
                                      QuotedStr(dataset.FieldByName('hizmetSunucuRefNo').AsString) + ',' +
                                      QuotedStr(dataset.FieldByName('islemSiraNo').AsString) + ',' +
                                      QuotedStr(dataset.FieldByName('drTescilNo').AsString) + ')');
      end
      else
      if Dataset.Name = 'RxTahlilSonuc'
      then begin
        datalar.QueryExec('insert into gssTakipOkuTahlilSonuc(takipNo,islemSiraNo,sonuc,tip,birim,code,Tanim) ' +
                          'values(' + QuotedStr(dataset.FieldByName('takipNo').AsString) + ',' +
                                      QuotedStr(dataset.FieldByName('islemSiraNo').AsString) + ',' +
                                      QuotedStr(dataset.FieldByName('sonuc').AsString) + ',' +
                                      QuotedStr(dataset.FieldByName('tip').AsString) + ',' +
                                      QuotedStr(dataset.FieldByName('birim').AsString) + ',' +
                                      QuotedStr(dataset.FieldByName('code').AsString) + ',' +
                                      QuotedStr(dataset.FieldByName('Tanim').AsString) + ')');
      end
      else
      if Dataset.Name = 'RxRadIslem'
      then begin
        datalar.QueryExec('insert into gssTakipOkuTetkikvdRadyoloji(takipNo,sutKodu,islemTarihi,bransKodu,hizmetSunucuRefNo,islemSiraNo,drTescilNo) ' +
                          'values(' + QuotedStr(dataset.FieldByName('takipNo').AsString) + ',' +
                                      QuotedStr(dataset.FieldByName('sutKodu').AsString) + ',' +
                                      QuotedStr(dataset.FieldByName('islemTarihi').AsString) + ',' +
                                      QuotedStr(dataset.FieldByName('bransKodu').AsString) + ',' +
                                      QuotedStr(dataset.FieldByName('hizmetSunucuRefNo').AsString) + ',' +
                                      QuotedStr(dataset.FieldByName('islemSiraNo').AsString) + ',' +
                                      QuotedStr(dataset.FieldByName('drTescilNo').AsString) + ')');
      end
      else
      if Dataset.Name = 'RxTaniBilgisi'
      then begin
        datalar.QueryExec('insert into gssTakipOkuTani(takipNo,code,BIRINCIL,TANITURU,hizmetSunucuRefNo,islemSiraNo) ' +
                          'values(' + QuotedStr(dataset.FieldByName('takipNo').AsString) + ',' +
                                      QuotedStr(dataset.FieldByName('TaniKodu').AsString) + ',' +
                                      QuotedStr(dataset.FieldByName('birincilTani').AsString) + ',' +
                                      QuotedStr(dataset.FieldByName('TaniTipi').AsString) + ',' +
                                      QuotedStr(dataset.FieldByName('hizmetSunucuRefNo').AsString) + ',' +
                                      QuotedStr(dataset.FieldByName('islemSiraNo').AsString) +
                                      ')');
      end;

      Dataset.Next;

    end;
  except
    on e: Exception do
    begin
      ShowMessage(e.Message);
    end;
  end;


end;

procedure TfrmTakipKontrol.MemDataToDataset(Dataset: TdxMemData;
  DatasetAdo: Tdataset);
var
  I: integer;
  n, N1: string;
begin
  try
    Dataset.First;
    while not Dataset.Eof do
    begin
      try
        DatasetAdo.Append;
        for I := 0 to Dataset.FieldCount - 2 do
        begin
          n := DatasetAdo.Fields[I].FieldName;
          n := Dataset.Fields[I + 1].FieldName;
          DatasetAdo.Fields[I].Value := Dataset.Fields[I + 1].Value;
        end;
        DatasetAdo.Post;
      except
        on e: Exception do
        begin
          ShowMessage(e.Message);
        end;
      end;

      Dataset.Next;

    end;
  except
    on e: Exception do
    begin
      ShowMessage(e.Message);
    end;
  end;

end;

procedure TfrmTakipKontrol.mnSe1Click(Sender: TObject);
var
  i, r: integer;
begin
  (*
    for i := 1 to gridAktif.RowCount - 2 do
    begin
    gridAktif.SetCheckBoxState(1,i,true);
    gridAktif.Cells[25,i] := 'T';
    end;
    *)

  for i := 0 to Takipler.DataController.RowCount - 1 do
  begin
    Takipler.DataController.FocusedRowIndex := i;
    r := Takipler.DataController.GetFocusedRecordIndex;
    Takipler.DataController.Values[r, 0] := True;
  end;

end;

procedure TfrmTakipKontrol.mptal1Click(Sender: TObject);
var
  i, r: integer;
begin

  (*
    for i := 1 to gridAktif.RowCount - 2 do
    begin
    gridAktif.SetCheckBoxState(1,i,false);
    gridAktif.Cells[25,i] := 'F';
    end;
    *)

  for i := 0 to Takipler.DataController.RowCount - 1 do
  begin
    Takipler.DataController.FocusedRowIndex := i;
    r := Takipler.DataController.GetFocusedRecordIndex;
    Takipler.DataController.Values[i, 0] := false;
  end;

end;

procedure TfrmTakipKontrol.PopupMenu1Popup(Sender: TObject);
begin
(*
  if hastaTip.ItemIndex = 1 Then
  Begin
    HizmetleriptalEt1.Enabled := false;
    SeanslarSistemeYaz1.Enabled := false;
    MalzemeptalEt1.Enabled := false;
  End
  Else
  Begin
    HizmetleriptalEt1.Enabled := True;
    SeanslarSistemeYaz1.Enabled := True;
    MalzemeptalEt1.Enabled := True;
  End;
  *)
end;

procedure TfrmTakipKontrol.gridAktifCheckBoxClick(Sender: TObject;
  ACol, ARow: Integer; State: Boolean);
begin
  (*
    if state = true
    then begin
    gridAktif.Cells[25,arow] := 'T';
    //  gridHastalar.Dates[4,arow] := txtDonem.Date;
    //  doktorkod := doktorkod +  Grd_doktorlar.Cells[1,arow] + ',' ;

    end;

    if state = false
    then begin
    gridAktif.Cells[25,arow] := 'F';

    //    doktorkod := StringReplace(doktorkod,Grd_doktorlar.Cells[1,arow]+',','',[rfReplaceAll]);
    end;
    *)
end;

procedure TfrmTakipKontrol.gridAktifClick(Sender: TObject);
begin

  // ADO_SQL.Locate('TakýpNo',gridAktif.Cells[1,gridAktif.row],[]);

end;

procedure TfrmTakipKontrol.btnVazgecClick(Sender: TObject);
begin
  close;
end;



procedure TfrmTakipKontrol.TopPanelButonClick(Sender: TObject);
var
  sql, TakipVar, _Tip_, kurumTip: string;
  x, tip: integer;
begin

  DurumGoster(True,False,'Kayýtlarýnýz (Seans,Tahlil,Taný) Kontrol Edilip , Yükleniyor...');
  try
      try
        ADO_TahlillSQL.Active := false;

        if DiyalizTipTopPanel.EditValue = 'H' Then
          _Tip_ := 'H'
        Else
          _Tip_ := 'P,A';

        if chkList.EditValue = '100' Then
          TakipVar := 'and isnull(g.TakipNo,'''') <>  '''' '
        Else
          TakipVar := '';

       (*
        if ktip.Text = 'Tümü' Then
          kurumTip := '1,99'
        else
          kurumTip := KurumTipTopPanel.EditValue;// trim(copy(ktip.Text, 1, 2));
         *)

        sql :=
              'exec sp_TakipKontrolListesi ' + txtTopPanelTarih1.GetSQLValue + ',' +
                                               txtTopPanelTarih2.GetSQLValue + ',' +
                                               QuotedStr(datalar.AktifSirket);
        datalar.QuerySelect(ADO_SQL, sql);
       (*
        ADO_SQL.First;
        Takipler.DataController.RecordCount := 0;

        for x := 0 to ADO_SQL.RecordCount - 1 do
        begin
          Takipler.DataController.Values[x, 1] := ADO_SQL.fieldbyname('TakipNo').AsString;
          Takipler.DataController.Values[x, 2] := ADO_SQL.fieldbyname('dosyaNo').AsString;
          Takipler.DataController.Values[x, 3] := ADO_SQL.fieldbyname('GelisNo').AsString;
          Takipler.DataController.Values[x, 4] := ADO_SQL.fieldbyname('ADSOYAD').AsString;
          Takipler.DataController.Values[x, 5] := ADO_SQL.fieldbyname('BHDAT').Value;
          Takipler.DataController.Values[x, 6] := ADO_SQL.fieldbyname('SIRANO').AsString;
          Takipler.DataController.Values[x, 7] := ADO_SQL.fieldbyname('basvuruNo').AsString;
         // Takipler.DataController.Values[x, 8] := ADO_SQL.fieldbyname('TakýpSend').AsString;
          Takipler.DataController.Values[x, 9] := ADO_SQL.fieldbyname('SeansAdet').AsInteger;
          Takipler.DataController.Values[x, 10] := ADO_SQL.fieldbyname('MedulaSeansAdet').AsInteger;
          Takipler.DataController.Values[x, 11] := ADO_SQL.fieldbyname('TahlilAdet').AsInteger;
          Takipler.DataController.Values[x, 12] := ADO_SQL.fieldbyname('MedulaTahlilAdet').AsInteger;
          Takipler.DataController.Values[x, 13] := ADO_SQL.fieldbyname('RadAdet').AsInteger;
          Takipler.DataController.Values[x, 14] := ADO_SQL.fieldbyname('MedulaRadAdet').AsInteger;
          Takipler.DataController.Values[x, 15] := ADO_SQL.fieldbyname('aciklama').AsString;
          Takipler.DataController.Values[x, 16] := ADO_SQL.fieldbyname('Durum').AsInteger;
          Takipler.DataController.Values[x, 17] := ADO_SQL.fieldbyname('DurumDetay').AsString;

          ADO_SQL.Next;
        end;
               *)
        //SeansSayiToplam;

      except
        on e: Exception do
        begin
          ShowMessageSkin(e.Message, '', '', 'info');
        end;
      end;
  finally
   DurumGoster(False);
  end;


end;

procedure TfrmTakipKontrol.cxButton1_kaydetClick(Sender: TObject);
var
  ado: TADOQuery;
  sql: string;
begin
  ado := TADOQuery.Create(nil);
  ado.Connection := datalar.ADOConnection2;

  sql := 'update Hasta_gelisler set Aciklama = ' + QuotedStr(cxMemo1.Text)
    + ' where dosyaNo = ' + QuotedStr(dn) + ' and gelisNo = ' + gn;

  datalar.QueryExec(ado, sql);
  ado.Free;

end;

procedure TfrmTakipKontrol.akipDetayFormu1Click(Sender: TObject);
begin
  // DatasetiDoldur(gridAktif.Cells[1,gridAktif.row],'G');

 // DatasetiDoldur(Takipler.DataController.Values[id, 1], 'G', '');



  frmRapor.raporData1(frmRapor.topluset, '014', '\HizmetDetay');
  frmRapor.ShowModal;
end;

procedure TfrmTakipKontrol.islemSiraDoldur(tag: integer);
var
  sql: string;
  ado: TADOQuery;
  i, j: integer;
  SeansAdet,TahlilAdet,MalzemeAdet,RadAdet : integer;
begin
  SetLength(datalar.islemSiralari, 0);
  ADO_TahlillSQL.First;
  SeansAdet := ADO_TahlillSQL.FieldByName('SeansAdet').AsInteger;
  TahlilAdet := ADO_TahlillSQL.FieldByName('TahlilAdet').AsInteger;
  MalzemeAdet := ADO_TahlillSQL.FieldByName('MalzemeAdet').AsInteger;
  RadAdet := ADO_TahlillSQL.FieldByName('RadAdet').AsInteger;

  if tag = -11 then
  begin
    SetLength(datalar.islemSiralari, 0);
  end;

  if tag = -7 then
  begin
    i := 0;
    SetLength(datalar.islemSiralari, SeansAdet);
    for j := 0 to ADO_TahlillSQL.RecordCount - 1 do
    begin
      if ADO_TahlillSQL.fieldbyname('HizmetTuru').AsString = 'Diyaliz Seans'
      then begin
         datalar.islemSiralari[i] := ADO_TahlillSQL.fieldbyname('islemsiraNo').AsString;
         inc(i);
      end;
      ADO_TahlillSQL.Next;
    end;

  end;

  if tag = -8 then
  begin
    i := 0;
    SetLength(datalar.islemSiralari, TahlilAdet);
    for j := 0 to ADO_TahlillSQL.RecordCount - 1 do
    begin
      if ADO_TahlillSQL.fieldbyname('HizmetTuru').AsString = 'Tahlil'
      then begin
        datalar.islemSiralari[i] := ADO_TahlillSQL.fieldbyname('islemsiraNo').AsString;
        inc(i);
      end;
      ADO_TahlillSQL.Next;
    end;

  end;

  if tag = -9 then
  begin
    i := 0;
    SetLength(datalar.islemSiralari, MalzemeAdet);
    for j := 0 to ADO_TahlillSQL.RecordCount - 1 do
    begin
      if ADO_TahlillSQL.fieldbyname('HizmetTuru').AsString = 'Malzeme'
      then begin
        datalar.islemSiralari[i] := ADO_TahlillSQL.fieldbyname('islemsiraNo').AsString;
        inc(i);
      end;
      ADO_TahlillSQL.Next;
    end;
  end;

  if tag = -10 then
  begin
    i := 0;
    SetLength(datalar.islemSiralari, RadAdet);
    for j := 0 to ADO_TahlillSQL.RecordCount - 1 do
    begin
      if ADO_TahlillSQL.fieldbyname('HizmetTuru').AsString = 'Rad'
      then begin
        datalar.islemSiralari[i] := ADO_TahlillSQL.fieldbyname('islemsiraNo').AsString;
        inc(i);
      end;
      ADO_TahlillSQL.Next;
    end;

  end;

end;

procedure TfrmTakipKontrol.H1Click(Sender: TObject);
var
  r: integer;
  Form : TGirisForm;
begin
  r := Takipler.DataController.DataControllerInfo.FocusedRecordIndex;


 // datalar.Bilgi.dosyaNo := ado_BransKodlari.FieldByName('dosyaNo').AsString;
//  FormINIT(TagfrmHastaKart,AnaForm,ado_BransKodlari.FieldByName('dosyaNo').AsString);
 if FindTab(AnaForm.sayfalar,TagfrmHastaKart)
 Then begin
   Form := TGirisForm(FormClassType(TagfrmHastaKart));
   TGirisForm(FormClassType(TagfrmHastaKart))._dosyaNO_ := Takipler.DataController.Values[r, 1];
   TGirisForm(FormClassType(TagfrmHastaKart))._TC_ := '';
   TGirisForm(FormClassType(TagfrmHastaKart)).Init(Form);
 end
 Else begin
  Form := FormINIT(TagfrmHastaKart,self,Takipler.DataController.Values[r, 2],NewTab(AnaForm.sayfalar,TagfrmHastaKart),ikEvet,'Giriþ');
  if Form <> nil then Form.show;
 end;


end;

procedure TfrmTakipKontrol.H2Click(Sender: TObject);
var
  satir, satirlar, satirs, x, _s_: integer;
  Sonuc, BasvuruNo, sql, msj, takip: string;
  ado: TADOQuery;
  secili: Boolean;
begin
  if mrYes = ShowMessageSkin('Seçili Takipler Ýçin Okuma Ýþlemi Baþlayacak',
    'Onaylýyormusunuz ?', '', 'msg') then
  begin
    DurumGoster(True,True);
    pBar.Properties.Max := Takipler.Controller.SelectedRowCount;
    pBar.Position := 0;
    try
    for satir := 0 to Takipler.Controller.SelectedRowCount - 1 do
    begin
          Application.ProcessMessages;
          takip := Takipler.DataController.GetValue(Takipler.Controller.SelectedRows[satir].RecordIndex, Takipler.DataController.GetItemByFieldName('TakipNo').Index);
          DatalariBosalt;

          if takip <> '' then
            msj := HizmetKaydiOku(takip, BasvuruNo)
          else
            Continue;
            txtHatalar.Lines.Add(msj);
          try
            datalar.ADOConnection2.BeginTrans;
            if (msj = '0000') or (copy(msj, 1, 4) = '0631') Then
            Begin
              sql := 'update Hasta_gelisler set TakýpSend = ''0'' where TakipNo = ' + QuotedStr(takip);
              datalar.QueryExec(sql);
              sql := 'delete from gssTakipOkuDiger where TakipNO = ' + QuotedStr(takip);
              datalar.QueryExec(sql);
              sql := 'delete from gssTakipOkuTahlil where TakipNO = ' + QuotedStr(takip);
              datalar.QueryExec(sql);
              sql := 'delete from gssTakipOkuTahlilSonuc where TakipNO = ' + QuotedStr(takip);
              datalar.QueryExec(sql);
              sql :=
                'delete from gssTakipOkuTetkikvdRadyoloji where TakipNO = ' + QuotedStr(takip);
              datalar.QueryExec(sql);
              sql := 'delete from gssTakipOkuMalzeme where TakipNO = ' + QuotedStr(takip);
              datalar.QueryExec(sql);

              MemDataToDataset(datalar.RxDigerIslem);
              MemDataToDataset(datalar.RxTahlilIslem);
              MemDataToDataset(datalar.RxTahlilSonuc);
              MemDataToDataset(datalar.RxRadIslem);
              MemDataToDataset(datalar.RxTaniBilgisi);

             // ADO_TahlillSQL.Requery();

              if copy(msj, 1, 4) = '0631' Then
                txtHatalar.Lines.Add(msj);
            End
            Else
            Begin
              sql := 'update Hasta_gelisler set TakýpSend = ''1'' where TakipNO = ' + QuotedStr(takip);
              datalar.QueryExec(sql);
              txtHatalar.Lines.Add(msj);
            End; // if HizmetKaydýOku end
            datalar.ADOConnection2.CommitTrans;
          except on e : exception do
           begin
            datalar.ADOConnection2.RollbackTrans;
            txtHatalar.Lines.Add(msj + ' - ' + e.Message);
           end;
          end;
          pBar.Position := pBar.Position + 1;
        end; // for end
    finally
      DurumGoster(False);
    end;
  end; // end if

end;


procedure TfrmTakipKontrol.HizmetleriptalEt1Click(Sender: TObject);
var
  satir, satirlar, satirs, x: integer;
  Sonuc, BasvuruNo, sql, msg, takip, dosyaNo, gelisNo: string;
  ado: TADOQuery;
  secili: Boolean;
begin

  if UserRight('MEDULA ÝÞLEMLERÝ', 'Hizmet Ýptal') = false Then
  Begin
    ShowMessageSkin('Bu Ýþlem Ýçin Yetkiniz Yok',
      'Sistem Yöneticinizle Görüþün', '', 'info');
    exit;
  End;

  ado := TADOQuery.Create(nil);
  ado.Connection := datalar.ADOConnection2;

  satir := 1;
  satirlar := Takipler.DataController.RowCount - 1;


  StatusBar1.Panels[0].Text := 'Hizmetler Siliniyor...';

  if mrYes = ShowMessageSkin(
    'Seçilen Takipler Ýçin Hizmet Silme Ýþlemi Baþlayacak',
    'Onaylýyormusunuz ?', '', 'msg') then
  begin
    for satir := 0 to Takipler.Controller.SelectedRowCount - 1 do
    begin
      Takipler.DataController.FocusedRowIndex :=
        Takipler.Controller.SelectedRows[satir].RecordIndex;
      // x := Takipler.DataController.GetFocusedRecordIndex;
      Application.ProcessMessages;
      // gridAktif.GetCheckBoxState(1,satir,secili);

      takip := Takipler.DataController.GetValue
        (Takipler.Controller.SelectedRows[satir].RecordIndex, 1);
      dosyaNo := Takipler.DataController.GetValue
        (Takipler.Controller.SelectedRows[satir].RecordIndex, 2);
      gelisNo := Takipler.DataController.GetValue
        (Takipler.Controller.SelectedRows[satir].RecordIndex, 3);

      islemSiraDoldur(TMenuItem(Sender).tag);

      if length(datalar.islemSiralari) = 0 then
        Continue;

      if takip <> '' then
        msg := HizmetKaydiIptal(takip)
      else
        Continue;

      if msg = '0000' Then
      Begin
        if TMenuItem(Sender).tag = -7 then
        begin
          sql :=
            'update hareketler set islemSiraNo = '''''
            + ' where Tip = ''S'' and dosyaNo = ' + QuotedStr(dosyaNo)
            + ' and gelisNo = ' + gelisNo;
          datalar.QueryExec(ado, sql);
        end;

        if TMenuItem(Sender).tag = -8 then
        begin
          sql := ' update hareketler set islemSiraNo = ''''' +
            ' from hareketler h join labtestler l on l.butKodu = h.code ' +
            ' where dosyaNo = ' + QuotedStr(dosyaNo)
            + ' and gelisNo = ' + gelisNo + ' and l.tip = 2';
          datalar.QueryExec(ado, sql);
        end;

        if TMenuItem(Sender).tag = -9 then
        begin
          sql := ' update hareketlerIS set islemSiraNo = ''''' +
            ' where dosyaNo = ' + QuotedStr(dosyaNo)
            + ' and gelisNo = ' + gelisNo;
          datalar.QueryExec(ado, sql);
        end;

        if TMenuItem(Sender).tag = -10 then
        begin
          sql := ' update hareketler set islemSiraNo = ''''' +
            ' from hareketler h join labtestler l on l.butKodu = h.code ' +
            ' where dosyaNo = ' + QuotedStr(dosyaNo)
            + ' and gelisNo = ' + gelisNo + ' and l.tip = 3';
          datalar.QueryExec(ado, sql);
        end;

        if TMenuItem(Sender).tag = -11 then
        begin

          sql :=
            'update gelisDetay set TalepSira = '''''
            + ' where dosyaNo = ' + QuotedStr(dosyaNo)
            + ' and gelisNo = ' + gelisNo;
          datalar.QueryExec(ado, sql);

          sql :=
            'update gelisDetay set islemSiraNoYatak = '''''
            + ' where dosyaNo = ' + QuotedStr(dosyaNo)
            + ' and gelisNo = ' + gelisNo;
          datalar.QueryExec(ado, sql);

          sql := 'update hareketler set islemSiraNo = ''''' +
            ' where dosyaNo = ' + QuotedStr(dosyaNo)
            + ' and gelisNo = ' + gelisNo;
          datalar.QueryExec(ado, sql);

          sql := 'update Anamnez_Icd set islemSiraNo = ''''' +
            ' where dosyaNo = ' + QuotedStr(dosyaNo)
            + ' and gelisNo = ' + gelisNo;
          datalar.QueryExec(ado, sql);
        end;

        txtHatalar.Lines.Add(takip + ' : Hizmetler Ýptal Edildi');

      End
      Else
        txtHatalar.Lines.Add(msg);

    End;

  End;
  StatusBar1.Panels[0].Text := '.';

end;

procedure TfrmTakipKontrol.S1Click(Sender: TObject);
var
 _name_ : string;
 F : TGirisForm;
 GirisFormRecord : TGirisFormRecord;
 r : integer;
begin
  datalar.KontrolUserSet := False;
  inherited;
  if datalar.KontrolUserSet = True then exit;

  r := Takipler.DataController.DataControllerInfo.FocusedRecordIndex;

  datalar.Bilgi.dosyaNo := Takipler.DataController.Values[r, 2];
  datalar.Bilgi.tckimlikNo := _Tc_;
  datalar.Bilgi.Adi := Takipler.DataController.Values[r, 4];

  GirisFormRecord.F_dosyaNo_ := Takipler.DataController.Values[r, 2];
  GirisFormRecord.F_gelisNo_ := Takipler.DataController.Values[r, 3];
  GirisFormRecord.F_provizyonTarihi_ := NoktasizTarih(Takipler.DataController.Values[r, 5]);
  GirisFormRecord.F_TakipNo_ := Takipler.DataController.Values[r, 1];
  GirisFormRecord.F_HastaAdSoyad_ := Takipler.DataController.Values[r, 4];

  F := FormINIT(TagfrmHastaSeans,GirisFormRecord,ikEvet,'Giriþ');
  if F <> nil then F.ShowModal;

 (*
  r := Takipler.DataController.DataControllerInfo.FocusedRecordIndex;
  Application.CreateForm(TfrmSeanslar, frmSeanslar);
  GorselAyar(frmSeanslar, datalar.global_img_list4);
  // frmSeanslar.HastaBil(txtDosyaNo.Text , gridGelisler.Cells[1,gridgelisler.Row] , txtHastaAdi.text+' '+txtSoyadi.text , gridGelisler.Cells[3,gridgelisler.Row] ,gridGelisler.Cells[6,gridgelisler.Row],txtMakinaNo.text);
  frmSeanslar.SeansGetir(Takipler.DataController.Values[r, 2],
    Takipler.DataController.Values[r, 3]);
  frmSeanslar.ShowModal;
  frmSeanslar.Release;
  frmSeanslar := nil;
   *)
end;

procedure TfrmTakipKontrol.S2Click(Sender: TObject);
var
  _talepSira, _sonuc, msg, sql , HizmetTuru: string;
  i, j, k: integer;
  ado: TADOQuery;
begin

  if UserRight('MEDULA ÝÞLEMLERÝ', 'Hizmet Ýptal') = false Then
  Begin
    ShowMessageSkin('Bu Ýþlem Ýçin Yetkiniz Yok',
      'Sistem Yöneticinizle Görüþün',
      'Hizmet Ýptal', 'info');
    exit;
  End;

  try
    if mrYes = ShowMessageSkin('Hizmet Ýptal Edilecek Emin misiniz ?', '', '',
      'msg') then
    begin
      SetLength(datalar.islemSiralari, 1);
      HizmetTuru := ADO_TahlillSQL.fieldbyname('HizmetTuru').AsString;
      datalar.islemSiralari[0] := ADO_TahlillSQL.fieldbyname('islemSirano').AsString;

      msg := HizmetKaydiIptal(ADO_TahlillSQL.fieldbyname('takipno').AsString);

      if msg = '0000' Then
      Begin
        if (HizmetTuru = 'Diyaliz Seans') or (HizmetTuru = 'Tahlil') or (HizmetTuru = 'Rad') then
        begin
         sql := ' update hareketler set islemSiraNo = ''''' +
                ' where islemSiraNo = ' + QuotedStr(ADO_TahlillSQL.fieldbyname('islemSirano').AsString);
              datalar.QueryExec(sql);
        end;

        if (HizmetTuru = 'Malzeme') then
        begin
         sql := ' update hareketlerIS set islemSiraNo = ''''' +
                ' where islemSiraNo = ' + QuotedStr(ADO_TahlillSQL.fieldbyname('islemSirano').AsString);
              datalar.QueryExec(sql);
        end;

        ShowMessageSkin('Hizmet Ýptal Edildi', '', '', 'info');
        SetLength(datalar.islemSiralari, 0);
      End;
    end;
  except
    on e: Exception do
    begin
      ShowMessageSkin(e.Message, '', '', 'info');
    end;
  end;

end;

procedure TfrmTakipKontrol.S3Click(Sender: TObject);
begin
(*
  Application.CreateForm(TfrmHakedis, frmHakedis);
  frmHakedis.list(tarihal(txtTarih.Date), tarihal(txttarih1.Date));
  frmHakedis.ShowModal;
  frmHakedis := nil;
  *)
end;

procedure TfrmTakipKontrol.sBitBtn1Click(Sender: TObject);
begin
  inherited;
  frmTakipKontrol.Free;
end;

procedure TfrmTakipKontrol.SeanslarSistemeYaz1Click(Sender: TObject);
var
  satir, satirlar, satirs, r: integer;
  Sonuc, BasvuruNo, sql, msg, takip, dosyaNo, gelisNo , Tip,gelisSIRANO : string;
  ado: TADOQuery;
  secili: Boolean;
begin
(*
  if UserRight('Donem Sonlandýrma', 'Okunan Hizmet Sisteme Yaz') = false Then
  Begin
    ShowMessageSkin('Bu Ýþlem Ýçin Yetkiniz Yok',
      'Sistem Yöneticinizle Görüþün',
      'Okunan Hizmet Sisteme Yaz', 'info');
    exit;
  End;
  *)

  if mrYes = ShowMessageSkin(
    'Seçilen Takipler Ýçin Seans Alma Ýþlemi Baþlayacak', 'Onaylýyormusunuz ?',
    '', 'msg') then
  begin
    for satir := 0 to Takipler.Controller.SelectedRowCount - 1 do
    begin
      Application.ProcessMessages;
      Takipler.DataController.FocusedRowIndex := Takipler.Controller.SelectedRows[satir].RecordIndex;
      takip := varToStr(Takipler.DataController.GetValue(Takipler.Controller.SelectedRows[satir].RecordIndex, 0));
      dosyaNo := Takipler.DataController.GetValue(Takipler.Controller.SelectedRows[satir].RecordIndex, 1);
      gelisNo := Takipler.DataController.GetValue(Takipler.Controller.SelectedRows[satir].RecordIndex, 2);
      gelisSIRANO := Takipler.DataController.GetValue(Takipler.Controller.SelectedRows[satir].RecordIndex, Takipler.DataController.GetItemByFieldName('SIRANO').Index);

      DATALAR.ADOConnection2.BeginTrans;
      try
          sql := ' delete from hareketler ' +
                   ' where dosyaNo = ' + QuotedStr(dosyaNo) +
                   ' and gelisNo = ' + gelisNo + ' and Tip in (''S'',''L'')';
          datalar.QueryExec(sql);

          ADO_TahlillSQL.First;
          while not ADO_TahlillSQL.Eof do
          begin
            if (ADO_TahlillSQL.fieldbyname('HizmetTuru').AsString = 'Diyaliz Seans') or
               (ADO_TahlillSQL.fieldbyname('HizmetTuru').AsString = 'Tahlil')
            then begin
              if ADO_TahlillSQL.fieldbyname('HizmetTuru').AsString = 'Diyaliz Seans'
              then
                Tip := 'S'
              else
                Tip := 'L';

              sql := 'SET IDENTITY_INSERT Hareketler ON ' +
                'insert into hareketler(dosyaNo,gelisNo,gelisSIRANO,sirano,Code,Tarih,Durum,Doktor,islemSiraNo,Tip,Onay,RaporTakipNo)'
                + 'values(' + QuotedStr(dosyaNo) + ',' + gelisNo + ','
                + gelisSIRANO + ','
                + ADO_TahlillSQL.fieldbyname('hizmetSunucuRefNo').AsString + ','
                + QuotedStr(ADO_TahlillSQL.fieldbyname('sutKodu').AsString) + ','
                + QuotedStr(tarih(ADO_TahlillSQL.fieldbyname('islemTarihi').AsString)) + ','
                + '1' + ',' + QuotedStr(doktorTescilToKod(ADO_TahlillSQL.fieldbyname('drTescilNo').AsString)) + ','
                + QuotedStr(ADO_TahlillSQL.fieldbyname('islemSiraNo').AsString) + ','
                + QuotedStr(Tip) + ','
                + QuotedStr('1') + ','
                + QuotedStr(ADO_TahlillSQL.fieldbyname('raporTakipNo').AsString) +
                ')' +
                ' SET IDENTITY_INSERT Hareketler OFF ';

              datalar.QueryExec(sql);
            end;
            (*
            if (ADO_TahlillSQL.fieldbyname('HizmetTuru').AsString = 'Taný')
            Then begin
              sql :=
                'insert into hareketler(dosyaNo,gelisNo,Tarih,Durum,Doktor,islemSiraNo,Tip,Onay)'
                + 'values(' + QuotedStr(dosyaNo) + ',' + gelisNo + ','
                + QuotedStr(tarih(ADO_TahlillSQL.fieldbyname('islemTarihi').AsString)) + ','
                + '1' + ',' + QuotedStr(doktorTescilToKod(ADO_TahlillSQL.fieldbyname('drTescilNo').AsString)) + ','
                + QuotedStr(ADO_TahlillSQL.fieldbyname('islemSiraNo').AsString) + ','
                + QuotedStr(Tip) + ','
                + QuotedStr('1') +
                ')';
              datalar.QueryExec(sql);

            end;
              *)

            ADO_TahlillSQL.Next;
          end;
      datalar.ADOConnection2.CommitTrans;
      except on e : exception do
       begin
        datalar.ADOConnection2.RollbackTrans;
        txtHatalar.Lines.Add(takip + ' : ' + e.Message);
       end;
      end;
    end;
  end;

end;

procedure TfrmTakipKontrol.GonderimSonuc(takip, s: string);
var
  // hatali : TStringList;
  ado: TADOQuery;
  sql: string;
begin
  ado := TADOQuery.Create(nil);
  ado.Connection := datalar.ADOConnection2;

  sql := 'update Hasta_gelisler set TakýpSend = ' + QuotedStr(s)
    + ' where takipNo = ' + QuotedStr(takip);
  datalar.QueryExec(ado, sql);

  ado.Free;

end;

procedure TfrmTakipKontrol.Sonucyaz(s, takip: string; x: integer;
  hatalar: TstringList);
var
  // hatali : TStringList;
  ado: TADOQuery;
  sql: string;

begin
  if s = '0000' Then
  Begin
    ado := TADOQuery.Create(nil);
    ado.Connection := datalar.ADOConnection2;

    datalar.RxKayitliIslem.First;
    while not datalar.RxKayitliIslem.Eof do
    Begin
      ado.close;
      ado.sql.clear;
      if datalar.RxKayitliIslem.fieldbyname('hizmetSunucuRefNo')
        .AsString[1] = 'Y' Then
      Begin
        // gridYatak.Cells[8,gridYatak.row] := datalar.RxKayitliIslem.fieldbyname('islemSiraNo').AsString;
        sql := 'update gelisDetay set islemSiraNoYatak = ' + QuotedStr
          (datalar.RxKayitliIslem.fieldbyname('islemSiraNo').AsString)
          + ' where siraNoYatis = ' + QuotedStr
          (datalar.RxKayitliIslem.fieldbyname('hizmetSunucuRefNo').AsString);
        datalar.QueryExec(ado, sql);
      End
      Else if datalar.RxKayitliIslem.fieldbyname('hizmetSunucuRefNo')
        .AsString[1] = 'T' Then
      Begin
        sql := 'update Anamnez_Icd set islemSiraNo = ' + QuotedStr
          (datalar.RxKayitliIslem.fieldbyname('islemSiraNo').AsString)
          + ' where ID = ' + copy(datalar.RxKayitliIslem.fieldbyname
            ('hizmetSunucuRefNo').AsString, 2, 15);
        datalar.QueryExec(ado, sql);
      End
      Else if datalar.RxKayitliIslem.fieldbyname('hizmetSunucuRefNo')
        .AsString[1] = 'L' Then
      Begin
        sql := 'update hareketler set islemSiraNo = ' + QuotedStr
          (datalar.RxKayitliIslem.fieldbyname('islemSiraNo').AsString)
          + ' where SIRANO = ' + copy(datalar.RxKayitliIslem.fieldbyname
            ('hizmetSunucuRefNo').AsString, 2, 15);
        datalar.QueryExec(ado, sql);
      End
      Else if datalar.RxKayitliIslem.fieldbyname('hizmetSunucuRefNo')
        .AsString[1] = 'M' Then
      Begin
        sql := 'update hareketlerIS set islemSiraNo = ' + QuotedStr
          (datalar.RxKayitliIslem.fieldbyname('islemSiraNo').AsString)
          + ' where SIRANO = ' + copy(datalar.RxKayitliIslem.fieldbyname
            ('hizmetSunucuRefNo').AsString, 2, 15);
        datalar.QueryExec(ado, sql);
      End
      Else if datalar.RxKayitliIslem.fieldbyname('hizmetSunucuRefNo')
        .AsString[1] = 'P' Then
      Begin
        // gridGelisler.Cells[8,gridGelisler.row] := datalar.RxKayitliIslem.fieldbyname('islemSiraNo').AsString;
        sql := 'update gelisDetayPeriton set TalepSira = ' + QuotedStr
          (datalar.RxKayitliIslem.fieldbyname('islemSiraNo').AsString)
          + ' where siraNo = ' + copy(datalar.RxKayitliIslem.fieldbyname
            ('hizmetSunucuRefNo').AsString, 2, 15);
        datalar.QueryExec(ado, sql);
      End
      Else
      Begin
        // gridGelisler.Cells[8,gridGelisler.row] := datalar.RxKayitliIslem.fieldbyname('islemSiraNo').AsString;
        sql := 'update gelisDetay set TalepSira = ' + QuotedStr
          (datalar.RxKayitliIslem.fieldbyname('islemSiraNo').AsString)
          + ' where siraNo = ' + datalar.RxKayitliIslem.fieldbyname
          ('hizmetSunucuRefNo').AsString;
        datalar.QueryExec(ado, sql);
      End;

      datalar.RxKayitliIslem.Next;

    End;

    txtHatalar.Lines.Add(Takipler.DataController.GetValue
        (Takipler.Controller.SelectedRows[x].RecordIndex,
        4) + ' ' + takip + ' : Ýþlem Baþarýlý');
    ado.Free;

  End
  Else

    if hatalar.Count > 0 Then
    txtHatalar.Lines.Add(Takipler.DataController.GetValue
        (Takipler.Controller.SelectedRows[x].RecordIndex,
        4) + ' ' + takip + ' Hata : ' + s + ' ;' + hatalar[0])
  Else
    txtHatalar.Lines.Add(Takipler.DataController.GetValue
        (Takipler.Controller.SelectedRows[x].RecordIndex,
        4) + ' ' + takip + ' Hata : ' + s);

  StatusBar1.SimpleText := '.';

end;

procedure TfrmTakipKontrol.mHizmetleriKaydet1Click(Sender: TObject);
var
  fark: double;
  hatali: TstringList;
  ado: TADOQuery;
  tedavi, Sonuc, takipNo, BasvuruNo, sql, ts : string;
  x, r: integer;
Begin

  if not LisansKontrol(fark) = True Then
    exit;

  DurumGoster(True,True);
  pBar.Properties.Max := Takipler.Controller.SelectedRowCount;
  pBar.Position := 0;
  try
    for r := 0 to Takipler.Controller.SelectedRowCount - 1 do
    begin
      Takipler.DataController.FocusedRowIndex := Takipler.Controller.SelectedRows[r].RecordIndex;
      Application.ProcessMessages;
      takipNo := Takipler.DataController.GetValue(Takipler.Controller.SelectedRows[r].RecordIndex, 1);
      BasvuruNo := Takipler.DataController.GetValue(Takipler.Controller.SelectedRows[r].RecordIndex, 7);

      HizmetKayitVeriSeti(takipNo,BasvuruNo, 'D','G','Tümü','',sonuc);
      pBar.Position := pBar.Position + 1;
    End;

  finally
    DurumGoster(False);
  end;

End;

procedure TfrmTakipKontrol.FaturayaAt1Click(Sender: TObject);
var
  sql, takip: string;
  ado: TADOQuery;
  x, r: integer;
begin
  ado := TADOQuery.Create(nil);
  ado.Connection := datalar.ADOConnection2;
  DurumGoster(True,False,'Kayýtlarýnýz Faturaya, Atýlýyor...');

  try
    for r := 0 to Takipler.Controller.SelectedRowCount - 1 do
    begin
      takip := Takipler.DataController.GetValue(Takipler.Controller.SelectedRows[r].RecordIndex, Takipler.DataController.GetItemByFieldName('TakipNo').Index);
      sql := 'exec sp_kurumFaturaIsle_M3 ' + #39 + takip + #39 + ',' + #39 +
              txtTopPanelTarih1.GetValue + #39 + ',' + #39 + txtTopPanelTarih2.GetValue + #39;

      datalar.QuerySelect(ado, sql);

    end;
    ShowMessageSkin('Kayýtlar Faturaya Atýldý', '', '', 'info');
  finally
    DurumGoster(False);
    ado.Free;
  end;

  btnListTopPanel.Click;

end;

procedure TfrmTakipKontrol.FormCreate(Sender: TObject);
begin
  inherited;
  Menu := PopupMenu1;

//  Tag := TagfrmHastaKart;
//  ClientHeight := formYukseklik;
//  ClientWidth := formGenislik;


  indexFieldName := 'dosyaNo';
  TableName := _TableName_;
  Olustur(self,_TableName_,'Takip Kontrol',22,sqlInsert);
  cxPanel.Visible := false;

  TopPanel.Visible := True;
  TapPanelElemanVisible(True,True,True,False,False,False,True,False,False,False,True,False);
//  Liste.DataController.DataSource := DataSource;

  Sayfa3_Kolon3.Visible := False;
  Sayfa3_Kolon2.Visible := False;
  SayfaCaption('','','','','');
end;

procedure TfrmTakipKontrol.M1Click(Sender: TObject);
var
  sql, takip: string;
  ado: TADOQuery;
  x: integer;
  renk: Tcolor;
  satir, satirlar: integer;
begin
  try
    ado := TADOQuery.Create(nil);
    ado.Connection := datalar.ADOConnection2;

  //  sql := 'select count(*) from gelisler where

    sql := 'exec sp_HizmetKodToplamKontrol  ' + txtTopPanelTarih1.GetSQLValue + ',' + txtTopPanelTarih1.GetSQLValue;
    datalar.QueryExec(ado, sql);
    ShowMessageSkin('Ýþlem Tamamlandý', '', '', 'info');
    ado.Free;
  except
    on e: Exception do
    begin
      ShowMessageSkin(e.Message, '', '', 'info');
      ado.Free;
    end;
  end;

end;

procedure TfrmTakipKontrol.MedulaSistemKontrol1Click(Sender: TObject);
var
  sql, takip: string;
  ado: TADOQuery;
  x: integer;
  renk: Tcolor;
  satir, satirlar: integer;
begin
  ado := TADOQuery.Create(nil);
  ado.Connection := datalar.ADOConnection2;
  try
      satir := 1;
      satirlar := Takipler.DataController.RowCount - 1;


      StatusBar1.SimpleText := 'Hizmetler Okunuyor...';

      if mrYes = ShowMessageSkin('Seçili Takipler Ýçin Okuma Ýþlemi Baþlayacak',
        'Onaylýyormusunuz ?', '', 'msg') then
      begin
        for satir := 0 to Takipler.Controller.SelectedRowCount - 1 do
        begin
          // Takipler.DataController.FocusedRowIndex := satir;
          // x := Takipler.DataController.GetFocusedRecordIndex;
          Takipler.DataController.FocusedRowIndex :=
            Takipler.Controller.SelectedRows[satir].RecordIndex;
          Application.ProcessMessages;

          takip := varToStr(Takipler.DataController.GetValue(Takipler.Controller.SelectedRows[satir].RecordIndex, Takipler.DataController.GetItemByFieldName('TakipNo').Index));

          sql := 'select dbo.fn_TakipKontrol(' + QuotedStr(takip) + ')';
          datalar.QuerySelect(ado, sql);
          if not ado.Eof then
          begin
            ado.First;
            while not ado.Eof do
            begin
              txtHatalar.Lines.Add(takip + ' : ' + ado.Fields[0].AsString);
              txtHatalar.Lines.Add('----------------------------------');
              ado.Next;
            end;
          end
          else
          begin
          end;

        end;
      end;


  finally
    ado.Free;
  end;
end;

procedure TfrmTakipKontrol.T1Click(Sender: TObject);
var
  r: integer;
begin
  inherited;

  if UserRight('Hasta Kartý', 'Tedavi Kartý') = false then
  begin
    ShowMessageSkin('Bu Ýþlem Ýçin Yetkiniz Bulunmamaktadýr !', '', '', 'info');
    exit;
  end;
  r := Takipler.DataController.DataControllerInfo.FocusedRecordIndex;
 (*
  Application.CreateForm(TfrmTedaviBilgisi, frmTedaviBilgisi);
  GorselAyar(frmTedaviBilgisi, datalar.global_img_list4);
  frmTedaviBilgisi.TedaviBilgi(Takipler.DataController.Values[r, 3],
    Takipler.DataController.Values[r, 2], Takipler.DataController.Values[r,
    5], '', Takipler.DataController.Values[r, 4], '');
  frmTedaviBilgisi.ShowModal;
   *)
end;

procedure TfrmTakipKontrol.TakiplerFocusedRecordChanged
  (Sender: TcxCustomGridTableView;
  APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  if AFocusedRecord = nil then exit;

  cxGroupBox1.Caption := 'Açýklama  [ ' + AFocusedRecord.Values[3] + ' ]';
  dn := AFocusedRecord.Values[1];
  gn := AFocusedRecord.Values[2];

  ADO_TahlillSQL.close;
  ADO_TahlillSQL.Parameters[0].Value := AFocusedRecord.Values[0];
  ADO_TahlillSQL.Open;

 // ADO_DigerSistem.close;
 // ADO_DigerSistem.Parameters[0].Value := AFocusedRecord.Values[1];
 // ADO_DigerSistem.Open;

  cxMemo1.Lines.Text := AFocusedRecord.Values[11];
  GridHizmetler.ViewData.Expand(true);

  // ShowMessage(AFocusedRecord.Values[5]);
end;

procedure TfrmTakipKontrol.TakiplerStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
var
  i : integer;
begin
  inherited;


//  i := TcxGridDBTableView(Sender).FindItemByName('DurumDetay').Index;

  if (ARecord.Values[11] = '')
    Then
    AStyle := cxStyle2
  Else
    AStyle := cxStyle1;
end;

end.
