unit KurumFatura;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, strUtils,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, Buttons, sBitBtn, AdvToolBtn,
  Grids, BaseGrid, AdvGrid, DBAdvGrd, DB, ADODB, data_modul,
  Mask,  Menus , kadirMedula3 , FaturaKayitIslemleriWS , ComObj, AdvObj,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxCurrencyEdit, cxGridDBTableView,cxGridExportlink,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxClasses, cxGridCustomView, cxGrid, rxAnimate,GirisUnit,
  rxGIFCtrl, DBCtrls,math, cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  JvExControls, JvAnimatedImage, JvGIFCtrl, DBAdvGrid, EditType,kadir,kadirType,KadirLabel,
  cxCalendar, cxGroupBox, cxRadioGroup, cxButtons, FScxGrid,getFormClass,
  cxCheckComboBox, cxLabel, cxImageComboBox, cxPCdxBarPopupMenu, cxCheckBox,
  cxPC, cxCheckGroup, cxSplitter, cxMemo;

type
  TfrmKurumFatura = class(TGirisForm)
    pnlTitle: TPanel;
    pnlOnay: TPanel;
    txtinfo: TLabel;
    PopupMenu1: TPopupMenu;
    PopupMenu2: TPopupMenu;
    KurumFaturacmali1: TMenuItem;
    KurumFatura1: TMenuItem;
    N2: TMenuItem;
    utarOnayTm1: TMenuItem;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    SaveDialog1: TSaveDialog;
    N4: TMenuItem;
    T1: TMenuItem;
    N5: TMenuItem;
    ADO_Detay: TADOQuery;
    DataSource2: TDataSource;
    ADO_Detay_toplam: TADOQuery;
    DataSource3: TDataSource;
    F2: TMenuItem;
    E1: TMenuItem;
    F5: TMenuItem;
    K1: TMenuItem;
    K2: TMenuItem;
    S1: TMenuItem;
    H2: TMenuItem;
    T3: TMenuItem;
    N6: TMenuItem;
    T4: TMenuItem;
    cxPageControl2: TcxPageControl;
    Sayfa_Faturalar: TcxTabSheet;
    Sayfa_Log: TcxTabSheet;
    cxGrid4: TcxGridKadir;
    FaturaList: TcxGridDBTableView;
    FaturaListdosyaNo: TcxGridDBColumn;
    FaturaListgelisNo: TcxGridDBColumn;
    FaturaListHASTA: TcxGridDBColumn;
    FaturaListTarih: TcxGridDBColumn;
    FaturaListButKodu: TcxGridDBColumn;
    FaturaListaciklama: TcxGridDBColumn;
    FaturaListadet: TcxGridDBColumn;
    FaturaListbirimFiyat: TcxGridDBColumn;
    FaturaListtutar: TcxGridDBColumn;
    FaturaListkdv: TcxGridDBColumn;
    FaturaListkdvTutar: TcxGridDBColumn;
    FaturaListfaturaTutar: TcxGridDBColumn;
    FaturaListfaturaNo: TcxGridDBColumn;
    FaturaListtakipNo: TcxGridDBColumn;
    FaturaListGSSFaturaTeslimNo: TcxGridDBColumn;
    FaturaListbasvuruNo: TcxGridDBColumn;
    FaturaListKontrol: TcxGridDBColumn;
    FaturaListfaturaTarihi: TcxGridDBColumn;
    FaturaListrefNo: TcxGridDBColumn;
    FaturaListchk: TcxGridDBColumn;
    FaturaListCOLUMN1: TcxGridDBColumn;
    FaturaListADI1: TcxGridDBColumn;
    FaturaListIlIlce: TcxGridDBColumn;
    FaturaListTCKIMLIKNO: TcxGridDBColumn;
    FaturaListKARNENO: TcxGridDBColumn;
    FaturaListSicilNo: TcxGridDBColumn;
    FaturaListilkTarih: TcxGridDBColumn;
    FaturaListbitisTarih: TcxGridDBColumn;
    FaturaListColumn2: TcxGridDBColumn;
    FaturaListColumn3: TcxGridDBColumn;
    FaturaListColumn4: TcxGridDBColumn;
    cxGridLevel4: TcxGridLevel;
    txtLog: TMemo;
    cxPageControl1: TcxPageControl;
    fatura_sayfa1: TcxTabSheet;
    chkTutarTip: TcxCheckBoxKadir;
    cxGrid2: TcxGridKadir;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBTableView3Column1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBTableView3Column2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBBandedTableView5: TcxGridDBBandedTableView;
    cxGridDBBandedColumn14: TcxGridDBBandedColumn;
    cxGridDBBandedColumn15: TcxGridDBBandedColumn;
    cxGridDBBandedColumn16: TcxGridDBBandedColumn;
    cxGridDBBandedColumn17: TcxGridDBBandedColumn;
    cxGridDBBandedColumn18: TcxGridDBBandedColumn;
    cxGridDBBandedTableView6: TcxGridDBBandedTableView;
    cxGridDBBandedColumn19: TcxGridDBBandedColumn;
    cxGridDBBandedColumn20: TcxGridDBBandedColumn;
    cxGridDBBandedTableView7: TcxGridDBBandedTableView;
    cxGridDBBandedTableView8: TcxGridDBBandedTableView;
    cxGridDBBandedColumn21: TcxGridDBBandedColumn;
    cxGridDBBandedColumn22: TcxGridDBBandedColumn;
    cxGridDBBandedColumn23: TcxGridDBBandedColumn;
    cxGridDBBandedColumn24: TcxGridDBBandedColumn;
    cxGridDBBandedColumn25: TcxGridDBBandedColumn;
    cxGridDBBandedColumn26: TcxGridDBBandedColumn;
    cxGridLevel2: TcxGridLevel;
    fatura_sayfa2: TcxTabSheet;
    cxGrid1: TcxGridKadir;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1HizmetKodu: TcxGridDBColumn;
    cxGridDBTableView1Tutar: TcxGridDBColumn;
    cxGridDBTableView1Adet: TcxGridDBColumn;
    cxGridDBBandedTableView1: TcxGridDBBandedTableView;
    cxGridDBBandedColumn1: TcxGridDBBandedColumn;
    cxGridDBBandedColumn2: TcxGridDBBandedColumn;
    cxGridDBBandedColumn3: TcxGridDBBandedColumn;
    cxGridDBBandedColumn4: TcxGridDBBandedColumn;
    cxGridDBBandedColumn5: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2: TcxGridDBBandedTableView;
    cxGridDBBandedColumn6: TcxGridDBBandedColumn;
    cxGridDBBandedColumn7: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3: TcxGridDBBandedTableView;
    cxGridDBBandedTableView4: TcxGridDBBandedTableView;
    cxGridDBBandedColumn8: TcxGridDBBandedColumn;
    cxGridDBBandedColumn9: TcxGridDBBandedColumn;
    cxGridDBBandedColumn10: TcxGridDBBandedColumn;
    cxGridDBBandedColumn11: TcxGridDBBandedColumn;
    cxGridDBBandedColumn12: TcxGridDBBandedColumn;
    cxGridDBBandedColumn13: TcxGridDBBandedColumn;
    cxGridLevel1: TcxGridLevel;
    cxSplitter1: TcxSplitter;
    cxTabSheet1: TcxTabSheet;
    FaturaListColumn5: TcxGridDBColumn;
    txtFaturaEpikriz: TcxMemo;
    M1: TMenuItem;
    popupYil: TPopupMenu;
    N3: TMenuItem;
    S3: TMenuItem;
    FaturaListColumn6: TcxGridDBColumn;
    ADOQuery1: TADOQuery;
    FaturaListColumn7: TcxGridDBColumn;
    H1: TMenuItem;
    procedure TopPanelButonClick(Sender: TObject);
    procedure cxButtonCClick(Sender: TObject);
    procedure tarihbilgi;
    procedure SpeedButton1Click(Sender: TObject);
    procedure btnAraClick(Sender: TObject);
    procedure gridBransKodlariKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure gridBransKodlariDblClick(Sender: TObject);
    procedure RenkKontrol;
    procedure txtLogKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Onay1Click(Sender: TObject);
    procedure T1Click(Sender: TObject);
    procedure H1Click(Sender: TObject);
    procedure TopPanelPropertiesChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Listele;
    procedure FaturaIcmal;
    procedure FaturaKes;
    procedure HakedisIcmal;
    procedure FaturadanCikar;
    procedure btnVazgecClick(Sender: TObject);
    procedure chkTutarTipClick(Sender: TObject);
    procedure D1Click(Sender: TObject);
    procedure S3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
       function Init(Sender: TObject) : Boolean; override;
  end;

const _TableName_ = 'kurumFatura';
      formGenislik = 780;
      formYukseklik = 480;

var
  frmKurumFatura: TfrmKurumFatura;
  _stop : integer;
  _teslimNumaralari : Array_Of_string;
  hasta : TTakipBilgisi;
  BirimFiyat : double;
  islemTip , OnayTip , SgkBildir : string;

implementation
uses AnaUnit,rapor,MedEczane, HastaListe;

{$R *.dfm}

function TfrmKurumFatura.Init(Sender: TObject) : Boolean;
begin
 inherited;

   txtTopPanelTarih1.Properties.ReadOnly := True;
   txtTopPanelTarih2.Properties.ReadOnly := True;
   txtDonemTopPanel.Yil := copy(tarihal(date()),1,4);
   txtDonemTopPanel.EditValue := copy(tarihal(date()),5,2);
   KurumTipTopPanel.ItemIndex := 1;
   chkList.EditValue := '10';

   chkList.Properties.OnEditValueChanged := TopPanelPropertiesChange;



   Result := True;
end;

procedure TfrmKurumFatura.TopPanelButonClick(Sender: TObject);
var
 sql  : string;
 maxFaturaNo : Double;
begin
 inherited;
     DurumGoster;
     try
       DatasetOpen := False;
       cxGrid4.Enabled := True;
       sql := 'select max(convert(float,faturaNo)) + 1 as fatno from kurumfatura';
       maxFaturaNo := datalar.QuerySelect(sql).Fields[0].AsFloat;
       _FaturaNo_ := floattostr(maxFaturaNo);


       islemTip := copy(varTostr(chkList.EditValue),1,1);


       PopupMenuToToolBarEnabled(self,ToolBar1,PopupMenu1);


       sql := 'exec sp_kurumFatura_m3 ' + QuotedStr(varToStr(KurumTipTopPanel.EditValue)) + ',' +
              txtTopPanelTarih1.GetSQLValue + ',' + txtTopPanelTarih2.GetSQLValue + ',' +
              QuotedStr(islemTip) + ',' +
              QuotedStr(onayTip) + ',' +
              QuotedStr(SgkBildir) + ',' +
              QuotedStr(datalar.AktifSirket) + ',' +
              QuotedStr('');

       datalar.QuerySelect(cxGrid4.dataset, sql);


     finally
       DatasetOpen := True;
       DurumGoster(False);
     end;

   //  HizmetDetayKodToplam;
   //  RenkKontrol;
end;

procedure TfrmKurumFatura.TopPanelPropertiesChange(Sender: TObject);
var
 chk : TcxCheckGroupItem;
begin
   islemTip := copy(varTostr(chkList.EditValue),1,1);


  // TopPanelButonClick(btnListTopPanel);


   inherited;



//  Bilgiler;

//
end;

procedure TfrmKurumFatura.chkTutarTipClick(Sender: TObject);
begin
  inherited;
  if chkTutarTip.Checked = True
  then begin
   cxGridDBTableView3.DataController.Filter.Active := False;
   cxGridDBTableView3.DataController.Filter.Active := True;
   cxGridDBTableView3.DataController.Filter.Root.Clear;
 //  sender.DataController.Filter.Options := [fcoCaseInsensitive];
   cxGridDBTableView3.DataController.Filter.Root.AddItem(cxGridDBTableView3.Columns[5],
   foNotEqual, 0 , '0');
   cxGridDBTableView3.DataController.Filter.Refresh;
  end
  else
    cxGridDBTableView3.DataController.Filter.Root.Clear;
end;


procedure TfrmKurumFatura.FaturadanCikar;
var
   sql ,silinenSatir ,_takip ,dosyaNo , gelisNo , teslimNo : string;
   x : integer;
   state : boolean;
begin
   if mrYes = ShowMessageSkin('Kurum Fatura Bilgisi Ýptal Edilecek, Eminmsiniz ?','','','msg')
   then begin

     DurumGoster;
     try
     for x := 0 to FaturaList.Controller.SelectedRowCount - 1 do
     begin
             Application.ProcessMessages;
             pnlDurum.Caption := FaturaList.DataController.GetValue(
                                      FaturaList.Controller.SelectedRows[x].RecordIndex,FaturaList.DataController.GetItemByFieldName('HASTA').Index);

             dosyaNo := FaturaList.DataController.GetValue(
                                      FaturaList.Controller.SelectedRows[x].RecordIndex,FaturaList.DataController.GetItemByFieldName('dosyaNo').Index);

             gelisNo := FaturaList.DataController.GetValue(
                                      FaturaList.Controller.SelectedRows[x].RecordIndex,FaturaList.DataController.GetItemByFieldName('gelisNo').Index);
             try
             teslimNo := varToStr(FaturaList.DataController.GetValue(
                                      FaturaList.Controller.SelectedRows[x].RecordIndex,FaturaList.DataController.GetItemByFieldName('id').Index));
             except on e : Exception do
               begin
                 teslimNo := '';
                 //ShowMessage(e.Message,'','','info');
               end;

             end;

             if datalar.QuerySelect('select * from Faturalar ' +
                                    'Where KurumFaturaID = ' + teslimNo +
                                    ' and iptal = 0').Eof
             Then begin
              sql :=
                    'delete from kurumFatura where dosyaNO = ' + QuotedStr(dosyaNo) +
                    ' and gelisNo = ' + gelisNo;
               datalar.QueryExec(sql);
               ShowMessageSkin('Kurum Fatura Ýptal Edildi' , 'Kayýt Geriye Alýndý','','info');
             end
             else
              ShowMessageSkin('Oluþturulmuþ Fatura Var','Ýptal Etmeden Kayýt Fatura Hazýrlýktan Çýkarýlamaz','','info');


     end;

     finally
         DurumGoster(false);
         Listele;
     end;
   end;

end;

procedure TfrmKurumFatura.cxButtonCClick(Sender: TObject);
var
  Form : TGirisForm;
  GirisFormRecord : TGirisFormRecord;
  TopluDataset : TDataSetKadir;
begin
inherited;

  GirisFormRecord.F_dosyaNo_ :=  cxGrid4.dataset.FieldByName('dosyaNo').AsString;
  GirisFormRecord.F_gelisNo_ := cxGrid4.dataset.FieldByName('gelisNo').AsString;
  GirisFormRecord.F_HastaAdSoyad_ := cxGrid4.dataset.FieldByName('HASTA').AsString;

  case Tcontrol(sender).Tag of
  -3,-2,-1 : begin

             end;
  -10 : begin
         FaturaList.Controller.SelectAll;
        end;
  -15 : begin
           FaturadanCikar;
        end;
  -16 : begin

        end;

  -18 : begin
         FaturaIcmal;
        end;
   18 : begin
          datasetiDoldurHD(GirisFormRecord.F_dosyaNo_ ,GirisFormRecord.F_gelisNo_,TopluDataset);
          PrintYap('014HD','Hizmet Detay','',TopluDataset,kadirType.pTNone);

        end;

  -19 : begin
         FaturaKes;
        end;

   -20 : begin
           HakedisIcmal;
         end;
  -25 : begin
           if FindTab(AnaForm.sayfalar,TagfrmHastaKart)
           Then begin
             Form := TGirisForm(FormClassType(TagfrmHastaKart));
             TGirisForm(FormClassType(TagfrmHastaKart))._dosyaNO_ := GirisFormRecord.F_dosyaNo_;
             TGirisForm(FormClassType(TagfrmHastaKart))._TC_ := '';
             TGirisForm(FormClassType(TagfrmHastaKart)).Init(Form);
           end
           Else begin
            Form := FormINIT(TagfrmHastaKart,self,GirisFormRecord.F_dosyaNo_,NewTab(AnaForm.sayfalar,TagfrmHastaKart),ikEvet,'Giriþ');
            if Form <> nil then Form.show;
           end;
        end;

    -26 : begin
            Form := FormINIT(TagfrmHastaTetkikEkle,GirisFormRecord);
            if Form <> nil then Form.ShowModal;
          end;

    -30 : begin
           if FindTab(AnaForm.sayfalar,TagfrmTopluEpikriz)
           Then begin
             Form := TGirisForm(FormClassType(TagfrmTopluEpikriz));
             TGirisForm(FormClassType(TagfrmTopluEpikriz))._dosyaNO_ := '';
             TGirisForm(FormClassType(TagfrmTopluEpikriz))._TC_ := '';
             TGirisForm(FormClassType(TagfrmTopluEpikriz)).Init(Form);
           end
           Else begin
            Form := FormINIT(TagfrmTopluEpikriz,self,'',NewTab(AnaForm.sayfalar,TagfrmTopluEpikriz),ikHayir,'Giriþ');
            if Form <> nil then Form.show;
           end;
          end;
  end;


end;



procedure TfrmKurumFatura.HakedisIcmal;
begin
(*
   Application.CreateForm(TfrmHakedis, frmHakedis);
   frmHakedis.list(txtTopPanelTarih1.GetValue,txtTopPanelTarih2.GetValue);
   frmHakedis.ShowModal;
   frmHakedis := nil;
   *)
end;

procedure TfrmKurumFatura.FaturaKes;
var
   sql , sonuc , sonucMesaj,dosyaNo,gelisSiraNo : string;
   ado : TADOQuery;
begin
    try

    dosyaNo := FaturaList.DataController.GetValue(
                                      FaturaList.Controller.SelectedRows[0].RecordIndex,FaturaList.DataController.GetItemByFieldName('dosyaNo').Index);

    gelisSiraNo := FaturaList.DataController.GetValue(
                                      FaturaList.Controller.SelectedRows[0].RecordIndex,FaturaList.DataController.GetItemByFieldName('HastaneRefNo').Index);

       sql := 'exec sp_kurumFatura_m3 ' + QuotedStr(varToStr(KurumTipTopPanel.EditValue)) + ',' +
              txtTopPanelTarih1.GetSQLValue + ',' + txtTopPanelTarih2.GetSQLValue + ',' +
              '4' + ',' +
              '1' + ',' +
              '1' + ',' +
              QuotedStr(datalar.AktifSirket) + ',' +
              QuotedStr(dosyaNo) + ',' +
              QuotedStr(gelisSiraNo);


       ado := datalar.QuerySelect(sql);
       sonuc := ado.FieldByName('sonuc').AsString;
       sonucMesaj := ado.FieldByName('mesaj').AsString;
       if sonuc = '0'
       Then
        ShowMessageSkin('Fatura Kayýt Edildi','Fatura ID : ' + ado.FieldByName('FaturaId').AsString,'','info')
       Else
         ShowMessageSkin('Fatura Kayýt Edilemedi',sonuc,sonucMesaj,'info');

    finally
      ado.free;
    end;
end;


procedure TfrmKurumFatura.FaturaIcmal;
var
  sql , Tip : string;
  TopluSet : TDataSetKadir;
begin
     DatasetOpen := False;

     sql := 'exec sp_kurumFatura_m3 ' + QuotedStr(varToStr(KurumTipTopPanel.EditValue)) + ',' +
            txtTopPanelTarih1.GetSQLValue + ',' + txtTopPanelTarih2.GetSQLValue + ',' +
            '3' + ',' +
            '1' + ',' +
            '1' + ',' +
            QuotedStr(datalar.AktifSirket);


     TopluSet.Dataset2 := datalar.ADO_AktifSirket;
     TopluSet.Dataset1 := datalar.ADO_aktifSirketLogo;
     TopluSet.Dataset3 := cxGrid4.Dataset;
     TopluSet.Dataset4 := datalar.QuerySelect(sql);

     PrintYap('033','\KurumFaturaIcmali',intToStr(TagfrmMedulaFatura),TopluSet);
end;

procedure TfrmKurumFatura.Listele;
var
   sql , Tip : string;
   maxFaturaNo : double;
   x : integer;
   Ado : TADOQuery;
begin
     cxGrid4.Enabled := True;
     sql := 'select max(convert(float,faturaNo)) + 1 as fatno from kurumfatura';
     maxFaturaNo := datalar.QuerySelect(sql).Fields[0].AsFloat;
     _FaturaNo_ := floattostr(maxFaturaNo);


   (*
     if txtFaturalanmamislar.Checked = False
     then Tip := '0' + ifthen(chkKontrol.Checked,'O','')
       else Tip := '1' +ifthen(chkKontrol.Checked,'O','');
     ADO_SQL.close;
     ADO_SQL.SQL.Clear;
     *)

//     sql := 'exec sp_kurumFatura_m3 ' +
  //   datalar.QuerySelect(ADO_SQL,sql);

   //  HizmetDetayKodToplam;
   //  RenkKontrol;
end;



procedure TfrmKurumFatura.RenkKontrol;
var
   x : integer;
begin
(*
     for x := 1 to gridBransKodlari.RowCount do
     begin
          if gridBransKodlari.Cells[25,x] = 'DEL'
          then SatiriRenklendir(gridBransKodlari,x,20,clred);
          if gridBransKodlari.Cells[25,x] = 'INS'
          then SatiriRenklendir(gridBransKodlari,x,20,clAqua);

           if
             (gridBransKodlari.ints[7,x] * gridBransKodlari.floats[8,x]) <>
             gridBransKodlari.floats[10,x]
           Then
             SatiriRenklendir(gridBransKodlari,x,20,clYellow);


     end;
     *)
end;


procedure TfrmKurumFatura.tarihbilgi;
begin
//   txtAylar.Text := aytoayadi(date());
//   txtAylarClick(txtAylar);
  // tarihata(txttarih1,txttarih2,txtAylar);


end;


procedure TfrmKurumFatura.S3Click(Sender: TObject);
var
 sql : string;
begin
    datalar.GelisDuzenleRecordK.dosyaNo := cxGrid4.Dataset.FieldByName('dosyaNo').AsString;
    datalar.GelisDuzenleRecordK.gelisNo := cxGrid4.Dataset.FieldByName('gelisNo').AsString;;
   // datalar.GelisDuzenleRecordK.TakipNo := cxGrid1.Dataset.FieldByName('TakipNo').AsString;
   // datalar.GelisDuzenleRecordK.basvuruNo := cxGrid1.Dataset.FieldByName('BasvuruNo').AsString;
    datalar.GelisDuzenleRecordK.sysTakipNo := cxGrid4.Dataset.FieldByName('sysTakipNo').AsString;

    if mrYes = ShowPopupForm('Hasta Geliþ Düzenle',hastaGelisDuzenle,'','frmSaglikNetOnline')
    Then Begin
       sql := 'update Hasta_Gelisler set ' +
              'sysTakipNo = ' + QuotedStr(datalar.GelisDuzenleRecordK.sysTakipNo) +
              ' where dosyaNo = ' + QuotedStr (datalar.GelisDuzenleRecordK.dosyaNo) +
              ' and gelisNo = ' + datalar.GelisDuzenleRecordK.gelisNo;
       datalar.QueryExec(sql);
    End;

end;

procedure TfrmKurumFatura.SpeedButton1Click(Sender: TObject);
var
  sql : string;
begin
 (*
  try
    Application.CreateForm(TrptFaturaIcmal, rptFaturaIcmal);
    rptFaturaIcmal.ADO_SQL.close;
    sql := 'exec sp_kurumFatura ' + #39 + copy('',1,1) + #39 + ',' +
          #39 + copy('',1,5) + #39 + ',' +
          #39 + tarihal(txttarih1.Date) + #39 + ',' +
          #39 + tarihal(txttarih2.Date) + #39 + ',' +
          #39 + txtDosyaNo.Text + #39;
    datalar.QuerySelect(rptFaturaIcmal.ADO_SQL,sql);

    rptFaturaIcmal.Preview;
    rptFaturaIcmal.Free;
  except
    rptFaturaIcmal.Free;
  end;
   *)
end;


procedure TfrmKurumFatura.T1Click(Sender: TObject);
begin
(*
  Application.CreateForm(TfrmTopluEpikriz, frmTopluEpikriz);
  frmTopluEpikriz.ShowModal;
  frmTopluEpikriz := nil;
  *)
end;

procedure TfrmKurumFatura.btnAraClick(Sender: TObject);
begin
   //  gridara(gridBransKodlari,txtarama.Text);
end;

procedure TfrmKurumFatura.btnVazgecClick(Sender: TObject);
begin
  inherited;
   _stop := 0;
  // gridBransKodlari.Enabled := true;

end;

procedure TfrmKurumFatura.gridBransKodlariKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var
   renk : TColor;

begin
(*
     if key = vk_delete
     then begin
               renk := gridBransKodlari.Colors[25,gridBransKodlari.Row];
               if gridBransKodlari.Cells[25,gridBransKodlari.Row] = 'DEL'
               then gridBransKodlari.Cells[25,gridBransKodlari.Row] := '' else
               gridBransKodlari.Cells[25,gridBransKodlari.Row] := 'DEL';
               if gridBransKodlari.Cells[25,gridBransKodlari.Row] = ''
               then SatiriRenklendir(gridBransKodlari,gridBransKodlari.Row,20,renk);
               RenkKontrol;
     end;

     if key = vk_insert
     then begin
              
               renk := gridBransKodlari.Colors[25,gridBransKodlari.Row];
               if gridBransKodlari.Cells[25,gridBransKodlari.Row] = 'INS'
               then gridBransKodlari.Cells[25,gridBransKodlari.Row] := '' else
               gridBransKodlari.Cells[25,gridBransKodlari.Row] := 'INS';
               if gridBransKodlari.Cells[25,gridBransKodlari.Row] = ''
               then SatiriRenklendir(gridBransKodlari,gridBransKodlari.Row,20,renk);
               RenkKontrol;
     end;
(*
     if key = vk_delete
     then begin
               btnSil.Click;

     end;
  *)
end;

procedure TfrmKurumFatura.gridBransKodlariDblClick(Sender: TObject);
begin

 // ShowMessage(gridBransKodlari.Cells[14,gridBransKodlari.Row],'','','info');
//     ShowMessageSkin(TeyitNoBul(gridBransKodlari.Cells[13,gridBransKodlari.row]),'','','info');

end;

procedure TfrmKurumFatura.FormCreate(Sender: TObject);
var
 chk : TcxCheckGroupItem;
begin


   cxPanel.Visible := false;
   dxStatusBar1.Visible := false;
   SayfaCaption('','','','','');
   TableName := _TableName_;
   Olustur(self,'','Fatura',28);
   Menu := PopupMenu1;

   TopPanel.Visible := True;
   TapPanelElemanVisible(True,True,True,false,false,false,True,false,False,False,false,True,True,false);

//   chkList.Properties.OnEditValueChanged := PropertiesEditValueChanged;

//   KurumTipTopPanel.ItemIndex := 1;




   chkList.Properties.Items.Clear;
   Chk := chkList.Properties.Items.Add;
   Chk.Caption := 'Faturalanmamýþ';
   Chk.Tag := 0;


   chkList.EditValue := '100';
//   chkList.Properties.OnEditValueChanged := TopPanelPropertiesChange;


   chkList.Width := 400;


  // DataSource1.DataSet := cxGrid4.Dataset;

end;

procedure TfrmKurumFatura.txtLogKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = VK_F10
   Then Begin
       //Button1.Click;

   End;


end;

procedure TfrmKurumFatura.D1Click(Sender: TObject);
var
  u,s : string;
  F : TGirisForm;
  GirisFormRecord : TGirisFormRecord;
begin
  //DonemSonlandir := 'C:\Users\Cmptr\Desktop\HTMLSAYFA.html';
//  UyumSoftPortalGit(datalar._donemuser,datalar._donemsifre,'https://medula.sgk.gov.tr/hastane/login.jsf','Medula');

   u := datalar._donemuser;
   s := datalar._donemsifre;

   if FindTab(AnaForm.sayfalar,TagfrmMedula)
   Then begin
    (*
     F := TGirisForm(FormClassType(TagfrmMedula));
     TfrmMedEczane(F)._user := u;
     TfrmMedEczane(F)._pas := s;
     TGirisForm(FormClassType(TagfrmMedula)).Init(F);
     *)
   end
   Else begin
    F := FormINIT(TagfrmMedula,self,GirisFormRecord,'',NewTab(AnaForm.sayfalar,TagfrmMedula),ikHayir,'Mesul Müdür Giriþ');
    TfrmMedEczane(F)._user := u;
    TfrmMedEczane(F)._pas := s;
    if F <> nil then F.show;
   end;
end;

procedure TfrmKurumFatura.Onay1Click(Sender: TObject);
begin
  _Dataset.Edit;
  _Dataset.FieldByName('Kontrol').AsString := '1';
  _Dataset.Post;

end;

procedure TfrmKurumFatura.H1Click(Sender: TObject);
begin
(*
  DatasetiDoldur(ADO_SQL.FieldByName('takipNo').AsString,'G',ADO_SQL.FieldByName('basvuruNo').AsString);

  frmRapor.raporData1(frmRapor.topluset ,'014','\HizmetDetay');
  frmRapor.ShowModal;
  *)
end;

end.
