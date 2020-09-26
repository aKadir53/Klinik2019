unit HastaBesinDegerlendirme;

interface

uses
  Windows, Messages, SysUtils, strUtils, Variants, Classes, Graphics, Controls,
  Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, DB, ADODB, AdvMemo, cxGroupBox, ExtCtrls, StdCtrls, Mask,
  sMaskEdit, sCustomComboEdit, sTooledit, sButton, cxStyles, DISWS,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  XSBuiltIns,
  cxClasses, cxGridCustomView, cxGrid, AdvmPS, cxDropDownEdit, cxCheckComboBox,
  cxRadioGroup, Buttons, sBitBtn, cxGridExportLink, cxImageComboBox,
  Menus, cxCheckGroup, cxCheckBox, cxGridDBBandedTableView,
  cxGridBandedTableView, cxButtons, cxLabel, cxTextEdit, cxMaskEdit, cxCalendar,
  cxCurrencyEdit, GirisUnit, kadir, KadirLabel, KadirType, GetFormClass,
  Data_modul, cxMemo,
  cxGridCardView, cxGridDBCardView, dxLayoutContainer, cxGridLayoutView,
  cxGridDBLayoutView, cxGridCustomLayoutView, cxImage;

type
  TfrmBesinDegerlendirme = class(TGirisForm)
    Panel2: TPanel;
    Splitter1: TSplitter;
    cxGroupBox2: TcxGroupBox;
    Hastalar: TADOQuery;
    DataSource1: TDataSource;
    SaveDialog1: TSaveDialog;
    PopupMenu1: TPopupMenu;
    O1: TMenuItem;
    O2: TMenuItem;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    N1: TMenuItem;
    T1: TMenuItem;
    K1: TMenuItem;
    cxStyle2: TcxStyle;
    cxStyleRepository2: TcxStyleRepository;
    cxStyle3: TcxStyle;
    cxStyleRepository3: TcxStyleRepository;
    cxStyle4: TcxStyle;
    N2: TMenuItem;
    U1: TMenuItem;
    ExceleGnder1: TMenuItem;
    H2: TMenuItem;
    cxGrid1: TcxGridKadir;
    gridHastalar: TcxGridDBBandedTableView;
    gridHastalarbhdat: TcxGridDBBandedColumn;
    gridHastalardosyaNo: TcxGridDBBandedColumn;
    gridHastalargelisNo: TcxGridDBBandedColumn;
    gridHastalarTarih: TcxGridDBBandedColumn;
    gridHastalarHASTAADI: TcxGridDBBandedColumn;
    gridHastalarHASTASOYADI: TcxGridDBBandedColumn;
    gridHastalarColumn1: TcxGridDBBandedColumn;
    gridHastalarColumn3: TcxGridDBBandedColumn;
    gridHastalarColumn4: TcxGridDBBandedColumn;
    cxGrid1Level1: TcxGridLevel;
    gridHastalarColumn2: TcxGridDBBandedColumn;
    gridHastalarColumn5: TcxGridDBBandedColumn;
    gridHastalarColumn6: TcxGridDBBandedColumn;
    gridHastalarColumn7: TcxGridDBBandedColumn;
    gridHastalarColumn8: TcxGridDBBandedColumn;
    gridHastalarColumn9: TcxGridDBBandedColumn;
    gridHastalarColumn10: TcxGridDBBandedColumn;
    gridHastalarColumn11: TcxGridDBBandedColumn;
    gridHastalarColumn12: TcxGridDBBandedColumn;
    gridHastalarColumn13: TcxGridDBBandedColumn;
    NtrisyonRiskDeerlendirme1: TMenuItem;
    NtrisyonRiskDeerlendirme2: TMenuItem;

    procedure TopPanelButonClick(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure txtAciklamaChange(Sender: TObject);
    procedure gridHastalarInitEdit(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit);
    procedure gridHastalarDblClick(Sender: TObject);
    procedure sBitBtn1Click(Sender: TObject);
    procedure gridHastalarStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      out AStyle: TcxStyle);
    procedure ListeDblClick(Sender: TObject);
    procedure T1Click(Sender: TObject);
    procedure H1Click(Sender: TObject);
    procedure btnUzmanMYazdirClick(Sender: TObject);
    procedure gridHastalarSelectionChanged(Sender: TcxCustomGridTableView);
    procedure btnIptalClick(Sender: TObject);
    procedure U1Click(Sender: TObject);
    procedure gridHastalarkanahPropertiesEditValueChanged(Sender: TObject);
    procedure cxButtonCClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure H2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBesinDegerlendirme: TfrmBesinDegerlendirme;
  Tc: Int64;
  stop: integer;
  UDoktor: string;

implementation

{$R *.dfm}

uses rapor, AnaUnit;

procedure TfrmBesinDegerlendirme.ListeDblClick(Sender: TObject);
var
  dosyaNo, gelisNo, hasta: string;
begin
  dosyaNo := Hastalar.fieldbyname('dosyaNo').AsString;
  gelisNo := Hastalar.fieldbyname('gelisNo').AsString;
  hasta := Hastalar.fieldbyname('HASTAADI').AsString + ' ' +
    Hastalar.fieldbyname('HASTASOYADI').AsString;
  (*
    Application.CreateForm(TfrmTahlilsonucGir, frmTahlilsonucGir);
    frmTahlilsonucGir.HastaSonuc(dosyaNo,gelisNo,hasta);
    frmTahlilsonucGir.ShowModal;
    frmTahlilsonucGir := nil;
  *)
end;

procedure TfrmBesinDegerlendirme.sBitBtn1Click(Sender: TObject);
begin
  stop := 1;
end;

procedure TfrmBesinDegerlendirme.T1Click(Sender: TObject);
var
  sql, t2: string;
  T1: tdate;
begin
  inherited;
  (*
    t2 := tarihal(ayliktarih(tarih1.Date,t1));
    cxGrid2.Visible := True;
    sql := 'exec sp_hastaTahlilSonuclari ' +
    QuotedStr(tarihal(t1)) + ',' + QuotedStr(t2) +
    ',@tip = ' + QuotedStr(DiyalizTip.EditValue) +
    ',@dosyaNo = ' + QuotedStr(hastalar.FieldByName('dosyaNo').AsString);

    datalar.QuerySelect(ADO_Tetkikler,sql);
  *)
end;

procedure TfrmBesinDegerlendirme.TopPanelButonClick(Sender: TObject);
var
  sql, tip, t2, islem: string;
  T1: tdate;
  st: Tstrings;
  ado: TADOQuery;
begin

  DurumGoster(True, False, KayitYukleMesaj);
  try
    sql := 'exec sp_BeslenmeList @tarih1 = ' + txtTopPanelTarih1.GetSQLValue +
      ',@tarih2 = ' + txtTopPanelTarih2.GetSQLValue + ',@sirketKod = ' +
      QuotedStr(datalar.AktifSirket) +
      ',@seans = ' + QuotedStr(txtSeansTopPanel.Text);

    datalar.QuerySelect(Hastalar, sql);

  finally
    DurumGoster(False);
  end;

end;

procedure TfrmBesinDegerlendirme.btnIptalClick(Sender: TObject);
begin
  inherited;
  // pnlUzmanTarihUpdate.Visible := false;
end;

procedure TfrmBesinDegerlendirme.btnPostClick(Sender: TObject);
begin
  Hastalar.Post;
end;

procedure TfrmBesinDegerlendirme.btnUzmanMYazdirClick(Sender: TObject);
begin
  frmRapor.topluset.Dataset0 := Hastalar;
  frmRapor.raporData1(frmRapor.topluset, '200T',
    '\Uzman Muayene Tutanak(Toplu)');
  frmRapor.ShowModal;
end;

procedure TfrmBesinDegerlendirme.cxButtonCClick(Sender: TObject);
var
  TopluDataset: TDataSetKadir;
  F: TGirisForm;
  GirisFormRecord: TGirisFormRecord;
  x: integer;
  dosyaNo, gelisNo, sql, SIRANOS: string;
  satir: integer;
  _Tarih_: tdate;
  ado: TADOQuery;
begin
  inherited;

  if Hastalar.Eof then
    exit;

  GirisFormRecord.F_dosyaNo_ := Hastalar.fieldbyname('dosyaNo').AsString;;
  GirisFormRecord.F_gelisNo_ := Hastalar.fieldbyname('gelisNo').AsString;
  GirisFormRecord.F_HastaAdSoyad_ := Hastalar.fieldbyname('HASTAADI').AsString +
    ' ' + Hastalar.fieldbyname('HASTASOYADI').AsString;


    case Tcontrol(Sender).Tag of
      - 10, -11:
        begin

        end;

      -1:
        begin
          DurumGoster(True);
          try
            SIRANOS := '';
            for x := 0 to gridHastalar.Controller.SelectedRowCount - 1 do
            begin
              satir := gridHastalar.Controller.SelectedRows[x].RecordIndex;
              SIRANOS := ifThen(SIRANOS='',SIRANOS+'',SIRANOS+',') +
              varToStr(gridHastalar.DataController.GetValue(satir,gridHastalar.DataController.GetItemByFieldName('id').Index));
            end;

            sql := 'exec sp_BeslenmeList @tarih1 = ' + txtTopPanelTarih1.GetSQLValue +
              ',@tarih2 = ' + txtTopPanelTarih2.GetSQLValue + ',@sirketKod = ' +
              QuotedStr(datalar.AktifSirket) +
              ',@seans = ' + QuotedStr(txtSeansTopPanel.Text) +
              ',@HBD_id = ' + QuotedStr(SIRANOS) ;

            ado := TADOQuery.Create(nil);
            try
              datalar.QuerySelect(ado,sql);
              TopluDataset.Dataset1 := ado;
              TopluDataset.Dataset2 := datalar.ADO_AktifSirket;
              TopluDataset.Dataset3 := datalar.ADO_aktifSirketLogo;

              PrintYap('BDF','Beslenme Deðerlendirme Formu',intToStr(TagfrmBesinDegerlendirme), TopluDataset);
            finally
              ado.free;
            end;

          finally
            DurumGoster(False);
           end;
        end;

      -38:
        begin
            datalar.Nutrisyon.id := Hastalar.fieldbyname('NutrisyonRiskID').AsString;
            datalar.Nutrisyon.Hbd_id := Hastalar.fieldbyname('id').AsString;
            if datalar.Nutrisyon.id <> ''
            then begin
                try
                  ado := datalar.QuerySelect('select * from NutrisyonRiski where id = ' + datalar.Nutrisyon.id);
                  datalar.Nutrisyon.Tarih := ado.fieldbyname('Tarih').AsDateTime;
                  datalar.Nutrisyon.VKI205kucuk := ado.fieldbyname('VKI205kucuk').AsInteger;
                  datalar.Nutrisyon.kiloKaybi := ado.fieldbyname('kiloKaybi').AsInteger;
                  datalar.Nutrisyon.gidaAlim := ado.fieldbyname('gidaAlim').AsInteger;
                  datalar.Nutrisyon.albumin := ado.fieldbyname('albumin').AsInteger;
                  datalar.Nutrisyon.kronik := ado.fieldbyname('kronik').AsInteger;
                  datalar.Nutrisyon.kronikDetay := ado.fieldbyname('kronikDetay').AsString;
                  datalar.Nutrisyon.baskaBirim := ado.fieldbyname('baskaBirim').AsString;
                  datalar.Nutrisyon.hekimNot := ado.fieldbyname('hekimNot').AsString;
                  datalar.Nutrisyon.diyetisyenNot := ado.fieldbyname('diyetisyenNot').AsString;
                finally
                  ado.free;
                end;

            end
            else
              datalar.Nutrisyon.Tarih := date;

            if mrYes = ShowPopupForm('Nutrisyon Risk Deðerlendirme', NutrisyonYeni) then
            begin
              if datalar.Nutrisyon.id <> ''
              then begin
                 datalar.QueryExec('update NutrisyonRiski set ' +
                                   ' Tarih = ' + QuotedStr(tarihal(datalar.Nutrisyon.Tarih)) +
                                   ',VKI205kucuk = ' + intTostr(datalar.Nutrisyon.VKI205kucuk) +
                                   ',kiloKaybi = ' + intTostr(datalar.Nutrisyon.kiloKaybi) +
                                   ',gidaAlim = ' + intTostr(datalar.Nutrisyon.gidaAlim) +
                                   ',albumin = ' + intTostr(datalar.Nutrisyon.albumin) +
                                   ',kronik = ' + intTostr(datalar.Nutrisyon.kronik) +
                                   ',kronikDetay = ' +  QuotedStr(datalar.Nutrisyon.kronikDetay) +
                                   ',baskaBirim = ' + QuotedStr(datalar.Nutrisyon.baskaBirim) +
                                   ',hekimNot = ' + QuotedStr(datalar.Nutrisyon.hekimNot) +
                                   ',diyetisyenNot = ' + QuotedStr(datalar.Nutrisyon.diyetisyenNot) +
                                   ' where id = ' + datalar.Nutrisyon.id
                                  );

              end
              else
              begin
                 datalar.QueryExec('insert into NutrisyonRiski (Hbd_id,Tarih,VKI205kucuk,kiloKaybi,gidaAlim,albumin,kronik,kronikDetay,baskaBirim,hekimNot,diyetisyenNot) ' +
                                   ' values('
                                       + datalar.Nutrisyon.Hbd_id +
                                   ',' + QuotedStr(tarihal(datalar.Nutrisyon.Tarih)) +
                                   ',' + intTostr(datalar.Nutrisyon.VKI205kucuk) +
                                   ',' + intTostr(datalar.Nutrisyon.kiloKaybi) +
                                   ',' + intTostr(datalar.Nutrisyon.gidaAlim) +
                                   ',' + intTostr(datalar.Nutrisyon.albumin) +
                                   ',' + intTostr(datalar.Nutrisyon.kronik) +
                                   ',' + QuotedStr(datalar.Nutrisyon.kronikDetay) +
                                   ',' + QuotedStr(datalar.Nutrisyon.baskaBirim) +
                                   ',' + QuotedStr(datalar.Nutrisyon.hekimNot) +
                                   ',' + QuotedStr(datalar.Nutrisyon.diyetisyenNot) + ')'
                                  );
              end;
              TopPanelButonClick(self);
            end;

        (*
          F := FormINIT(TagfrmUzmanMuayene, GirisFormRecord, ikEvet);
          // F._Foto_ := foto;
          if F <> nil then
            F.ShowModal;
            *)
        end;
      -39:
        begin
          DurumGoster(True);
          try
            sql := 'select h.HASTAADI,h.HASTASOYADI,h.dosyaNo,h.CINSIYETI ,h.Boy,h.IdealKilo,dbo.fn_yasTarih(h.DOGUMTARIHI,BD.Tarih) yas, ' +
                   ' Nr.* from NutrisyonRiski NR ' +
                   ' join Hasta_Besin_Degerlendirme BD on NR.Hbd_id = BD.id ' +
                   ' join HastaKart h on BD.dosyaNo = h.dosyaNo ' +
                   'where Hbd_id = ' + Hastalar.fieldbyname('id').AsString;

            ado := TADOQuery.Create(nil);
            try
              datalar.QuerySelect(ado,sql);
              TopluDataset.Dataset1 := ado;
              TopluDataset.Dataset2 := datalar.ADO_AktifSirket;
              TopluDataset.Dataset3 := datalar.ADO_aktifSirketLogo;

              PrintYap('NRDF','Nutrisyon Risk Deðerlendirme Formu',intToStr(TagfrmBesinDegerlendirme), TopluDataset);
            finally
              ado.free;
            end;

          finally
            DurumGoster(False);
           end;
        end;

      -100:
        begin


        end;
    end;


end;

procedure TfrmBesinDegerlendirme.FormCreate(Sender: TObject);
var
  IC: TcxImageComboKadir;
  C: TcxComboBox;
  chk: TcxCheckGroupItem;
begin
  Menu := PopupMenu1;
  // Olustur(self,_TableName_,'Kimlik Doðrula',71,sqlInsert);
  cxPanel.Visible := False;
  TopPanel.Visible := True;
  TapPanelElemanVisible(True, True, True, False, True, False, False, False,
    False, False, False, False, False);

end;

procedure TfrmBesinDegerlendirme.gridHastalarDblClick(Sender: TObject);
var
  F: TForm;
  bBasarili: Boolean;
begin
  Self._firmaKod_ := datalar.AktifSirket;

  F := Self;

  datalar.Beslenme.Tarih := Hastalar.fieldbyname('Tarih').AsDateTime;
  datalar.Beslenme.ack := Hastalar.fieldbyname('Aciklama').AsString;

  if mrYes = ShowPopupForm('Beslenme Deðerlendirme', BeslenmeDuzenle, F) then
  begin
    datalar.QueryExec('update Hasta_Besin_Degerlendirme set ' + ' Tarih = ' +
      QuotedStr(tarihal(datalar.Beslenme.Tarih)) + ',Aciklama = ' +
      QuotedStr(datalar.Beslenme.ack) + ' where id = ' +
      Hastalar.fieldbyname('id').AsString);

      TopPanelButonClick(self);

    //Hastalar.Requery();
  end;
end;

procedure TfrmBesinDegerlendirme.gridHastalarInitEdit
  (Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  AEdit: TcxCustomEdit);
var
  st: Tstrings;
begin
  (*
    st := TStringList.Create;
    if (AEdit is TcxComboBox) and (AItem.Index = 15)
    then begin
    ItemsDoldurName('txtDamarGiris',st);
    TcxComboBox(AEdit).Properties.Items.Clear;
    TcxComboBox(AEdit).Properties.Items.AddStrings(st);
    end;

    if (AEdit is TcxComboBox) and (AItem.Index = 14)
    then begin
    ItemsDoldurName('txtYA',st);
    TcxComboBox(AEdit).Properties.Items.Clear;
    TcxComboBox(AEdit).Properties.Items.AddStrings(st);
    end;

    st.Free;
  *)
end;

procedure TfrmBesinDegerlendirme.gridHastalarkanahPropertiesEditValueChanged
  (Sender: TObject);
begin
  inherited;
  gridHastalar.DataController.Post;

end;

procedure TfrmBesinDegerlendirme.gridHastalarSelectionChanged
  (Sender: TcxCustomGridTableView);
begin
  inherited;

  // cxGridDBTableView1.DataController.SelectRows(gridHastalar.Controller.SelectedRecords[0].R,
end; // gridHastalar.Controller.SelectedRecords[0].

procedure TfrmBesinDegerlendirme.gridHastalarStylesGetContentStyle
  (Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  inherited;
  // if ARecord.Values[20] = '1'
  // Then AStyle := cxStyle1;
end;

procedure TfrmBesinDegerlendirme.H1Click(Sender: TObject);
var
  List: ArrayOfHASTAKAYIT;
  H: HASTAKAYIT;
  sql: string;
  ado: TADOQuery;
begin
  (*
    datalar.DYOB.URL := DyopURL;
    DyobKodlar.Active := True;


    if not DirectoryExists('C:\NoktaV3\DYOB')
    then MkDir('C:\NoktaV3\DYOB');


    datalar.HTTP_XMLDosya_Name := 'C:\NoktaV3\DYOB\LOADHASTALIST';

    try
    List := (datalar.DYOB as KRIZMA_DIS_TREATMENTSERVICESoap).LOADHASTALIST(datalar._DyobKurumKodu_,datalar._DyobSifre_,datalar._DyobServiceKodu_);
    //'8DCC2CC82FF34396A9859014E7350A3E','C7865A18D8244AF88122468808EE1397','4BC01A01CDA14EF2ABCD98728B05FB9A');
    except on e : Exception do
    begin
    ShowMessageSkin(e.Message,'','','info') ;
    end;
    end;

    if length(list) > 0
    then begin
    Cursor := crSQLWait;
    for H in List do
    begin
    Application.ProcessMessages;
    sql := 'update hastakart set YKARTNO = ' + inttostr(H.ID) +
    ' where TCKIMLIKNO = ' + QuotedStr(inttostr(H.HASTA.TCKIMLIK));
    datalar.QueryExec(sql);
    end;
    Cursor := crDefault;
    end;
  *)
end;

procedure TfrmBesinDegerlendirme.H2Click(Sender: TObject);
var
  r, satir: integer;
  Form: TGirisForm;
  dosyaNo: string;
begin
  satir := gridHastalar.Controller.SelectedRows[0].RecordIndex;
  dosyaNo := varToSTr(gridHastalar.DataController.GetValue(satir,
    gridHastalar.DataController.GetItemByFieldName('dosyaNo').Index));

  if FindTab(AnaForm.sayfalar, TagfrmHastaKart) Then
  begin
    Form := TGirisForm(FormClassType(TagfrmHastaKart));
    TGirisForm(FormClassType(TagfrmHastaKart))._dosyaNO_ := dosyaNo;
    TGirisForm(FormClassType(TagfrmHastaKart))._TC_ := '';
    TGirisForm(FormClassType(TagfrmHastaKart)).Init(Form);
  end
  Else
  begin
    Form := FormINIT(TagfrmHastaKart, Self, dosyaNo,
      NewTab(AnaForm.sayfalar, TagfrmHastaKart), ikEvet, 'Giriþ');
    if Form <> nil then
      Form.show;
  end;
end;

procedure TfrmBesinDegerlendirme.txtAciklamaChange(Sender: TObject);
begin
  // Hastalar.Edit;
end;

procedure TfrmBesinDegerlendirme.U1Click(Sender: TObject);
begin
  inherited;
  // pnlUzmanTarihUpdate.Visible := true;
  // txtUzmanDate.EditValue := hastalar.FieldByName('UzmanGozlemTarihi').AsDateTime;
  // txtUzmanDate.PostEditValue;
end;

end.
