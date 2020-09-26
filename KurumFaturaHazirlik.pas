unit KurumFaturaHazirlik;

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
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxCheckGroup,
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
  TfrmKurumFaturaHazirlik = class(TGirisForm)
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
    cxStyle4: TcxStyle;
    TakiplerDurumDetay: TcxGridColumn;
    S4: TMenuItem;
    cxStyle5: TcxStyle;
    S5: TMenuItem;
    T2: TMenuItem;
    R2: TMenuItem;
    I1: TMenuItem;
    TakiplerColumn7: TcxGridDBColumn;
    TakiplerColumnEpikriz: TcxGridDBColumn;
    H3: TMenuItem;
    procedure cxButtonCClick(Sender: TObject);
    procedure mnSe1Click(Sender: TObject);
    procedure mptal1Click(Sender: TObject);
    procedure gridAktifCheckBoxClick(Sender: TObject; ACol, ARow: Integer;
      State: Boolean);
    procedure gridAktifClick(Sender: TObject);
    procedure btnVazgecClick(Sender: TObject);
    procedure akipDetayFormu1Click(Sender: TObject);
    procedure FaturayaAt1Click(Sender: TObject);
    procedure TakiplerFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure PopupMenu1Popup(Sender: TObject);
    procedure T1Click(Sender: TObject);
    procedure S1Click(Sender: TObject);
    procedure H1Click(Sender: TObject);
    procedure SeansSayiToplam;
    procedure cxButton1_kaydetClick(Sender: TObject);
    procedure M1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
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
  frmKurumFaturaHazirlik: TfrmKurumFaturaHazirlik;
  id: integer;
  dn, gn: string;

implementation

uses  rapor, //TedaviBilgisi, Seanslar,
      HastaKart, //HastaListe,
      SeansHakedis, TedaviKart,AnaUnit;
{$R *.dfm}

function TfrmKurumFaturaHazirlik.Init(Sender : TObject) : Boolean;
begin
  Result := False;
  txtTopPanelTarih2.Date := ayliktarih(date,txtTopPanelTarih2);
  if not inherited Init(Sender) then exit;
  Result := True;
end;

procedure TfrmKurumFaturaHazirlik.OrtakEventAta(Sender : TObject);
begin
  TcxButtonEditKadir(sender).Properties.OnButtonClick := cxButtonEditPropertiesButtonClick;
  TcxButtonEditKadir(sender).OnEnter := cxEditEnter;
  TcxButtonEditKadir(sender).OnExit := cxEditExit;
  TcxButtonEditKadir(sender).OnKeyDown := cxTextEditBKeyDown;
  TcxButtonEditKadir(sender).Properties.OnEditValueChanged := PropertiesEditValueChanged;
end;

procedure TfrmKurumFaturaHazirlik.OrtakEventAta(Sender : TcxImageComboKadir);
begin
  TcxImageComboKadir (sender).OnEnter := cxEditEnter;
  TcxImageComboKadir(sender).OnExit := cxEditExit;
  TcxImageComboKadir(sender).OnKeyDown := cxTextEditBKeyDown;
  TcxImageComboKadir(sender).Properties.OnEditValueChanged := PropertiesEditValueChanged;
end;


procedure TfrmKurumFaturaHazirlik.cxButtonCClick(Sender: TObject);
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

procedure TfrmKurumFaturaHazirlik.SeansSayiToplam;
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

procedure TfrmKurumFaturaHazirlik.MemDataToDataset(Dataset: TdxMemData);

begin



end;

procedure TfrmKurumFaturaHazirlik.MemDataToDataset(Dataset: TdxMemData;
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

procedure TfrmKurumFaturaHazirlik.mnSe1Click(Sender: TObject);
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

procedure TfrmKurumFaturaHazirlik.mptal1Click(Sender: TObject);
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

procedure TfrmKurumFaturaHazirlik.PopupMenu1Popup(Sender: TObject);
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

procedure TfrmKurumFaturaHazirlik.gridAktifCheckBoxClick(Sender: TObject;
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

procedure TfrmKurumFaturaHazirlik.gridAktifClick(Sender: TObject);
begin

  // ADO_SQL.Locate('TakýpNo',gridAktif.Cells[1,gridAktif.row],[]);

end;

procedure TfrmKurumFaturaHazirlik.btnVazgecClick(Sender: TObject);
begin
  close;
end;



procedure TfrmKurumFaturaHazirlik.TopPanelButonClick(Sender: TObject);
var
  sql, TakipVar, _Tip_, kurumTip: string;
  x, tip: integer;
begin

  DurumGoster(True,False,'Kayýtlarýnýz Yükleniyor...');
  try
      try
        ADO_TahlillSQL.Active := false;


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
                                               QuotedStr(datalar.AktifSirket) + ',' +
                                               QuotedStr('H') + ',' +
                                               QuotedStr(varToStr(KurumTipTopPanel.EditValue))
                                               ;
        datalar.QuerySelect(ADO_SQL, sql);


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

procedure TfrmKurumFaturaHazirlik.cxButton1_kaydetClick(Sender: TObject);
var
  ado: TADOQuery;
  sql: string;
begin
(*
  ado := TADOQuery.Create(nil);
  ado.Connection := datalar.ADOConnection2;

  sql := 'update Hasta_gelisler set Aciklama = ' + QuotedStr(cxMemo1.Text)
    + ' where dosyaNo = ' + QuotedStr(dn) + ' and gelisNo = ' + gn;

  datalar.QueryExec(ado, sql);
  ado.Free;
  *)
end;

procedure TfrmKurumFaturaHazirlik.akipDetayFormu1Click(Sender: TObject);
begin
  // DatasetiDoldur(gridAktif.Cells[1,gridAktif.row],'G');

 // DatasetiDoldur(Takipler.DataController.Values[id, 1], 'G', '');



  frmRapor.raporData1(frmRapor.topluset, '014', '\HizmetDetay');
  frmRapor.ShowModal;
end;

procedure TfrmKurumFaturaHazirlik.H1Click(Sender: TObject);
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

procedure TfrmKurumFaturaHazirlik.S1Click(Sender: TObject);
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

procedure TfrmKurumFaturaHazirlik.S3Click(Sender: TObject);
begin
(*
  Application.CreateForm(TfrmHakedis, frmHakedis);
  frmHakedis.list(tarihal(txtTarih.Date), tarihal(txttarih1.Date));
  frmHakedis.ShowModal;
  frmHakedis := nil;
  *)
end;

procedure TfrmKurumFaturaHazirlik.FaturayaAt1Click(Sender: TObject);
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
      takip := Takipler.DataController.GetValue(Takipler.Controller.SelectedRows[r].RecordIndex, Takipler.DataController.GetItemByFieldName('SIRANO').Index);
      sql := 'exec sp_kurumFaturaIsle_M3 ' + #39 + takip + #39 + ',' + #39 +
              txtTopPanelTarih1.GetValue + #39 + ',' + #39 + txtTopPanelTarih2.GetValue + #39 + ',' +
              QuotedStr(varToStr(KurumTipTopPanel.EditValue));

      datalar.QuerySelect(ado, sql);

    end;
    ShowMessageSkin('Kayýtlar Faturaya Atýldý', '', '', 'info');
  finally
    DurumGoster(False);
    ado.Free;
  end;

  btnListTopPanel.Click;

end;

procedure TfrmKurumFaturaHazirlik.FormCreate(Sender: TObject);
var
  ii : TcxCheckGroupItem;
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
  TapPanelElemanVisible(True,True,True,False,False,False,True,False,False,False,False,False,False);
//  Liste.DataController.DataSource := DataSource;

  (*
  chkList.Properties.Items.Clear;
  ii := chkList.Properties.Items.Add;
  ii.Caption := 'Takip Kontrol Yapma';
  chkList.Width := 200;
  chkList.EditValue := '0';
    *)


  Sayfa3_Kolon3.Visible := False;
  Sayfa3_Kolon2.Visible := False;
  SayfaCaption('','','','','');
end;

procedure TfrmKurumFaturaHazirlik.M1Click(Sender: TObject);
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

procedure TfrmKurumFaturaHazirlik.T1Click(Sender: TObject);
var
  r: integer;
 GirisFormRecord : TGirisFormRecord;
 F : TGirisForm;
begin
  inherited;

  GirisFormRecord.F_dosyaNo_ := ado_sql.FieldByName('dosyaNo').AsString;
  GirisFormRecord.F_gelisNo_ := ado_sql.FieldByName('gelisNo').AsString;
  GirisFormRecord.F_GelisSIRANO := ado_sql.FieldByName('SIRANO').AsString;
  GirisFormRecord.F_provizyonTarihi_ := FormatDateTime('YYYYMMDD', ado_sql.FieldByName('BHDAT').AsDateTime);
  GirisFormRecord.F_HastaAdSoyad_ := ado_sql.FieldByName('ADSOYAD').AsString;
  GirisFormRecord.F_TakipNo_ := ado_sql.FieldByName('TakipNO').AsString;


  F := FormINIT(TagfrmHastaTetkikEkle,GirisFormRecord);
  F._Foto_ := _foto_;
  if F <> nil then F.ShowModal;

 (*
  Application.CreateForm(TfrmTedaviBilgisi, frmTedaviBilgisi);
  GorselAyar(frmTedaviBilgisi, datalar.global_img_list4);
  frmTedaviBilgisi.TedaviBilgi(Takipler.DataController.Values[r, 3],
    Takipler.DataController.Values[r, 2], Takipler.DataController.Values[r,
    5], '', Takipler.DataController.Values[r, 4], '');
  frmTedaviBilgisi.ShowModal;
   *)
end;

procedure TfrmKurumFaturaHazirlik.TakiplerFocusedRecordChanged
  (Sender: TcxCustomGridTableView;
  APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  if AFocusedRecord = nil then exit;


end;

procedure TfrmKurumFaturaHazirlik.TakiplerStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
var
  i : integer;
begin
  inherited;

  if (varToStr(Takipler.DataController.GetValue(ARecord.RecordIndex,
       Takipler.DataController.GetItemByFieldName('DurumDetay').Index)) = '')
    Then
    AStyle := cxStyle2
  Else
    AStyle := cxStyle1;
end;

end.
