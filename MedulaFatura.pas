unit MedulaFatura;

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
  cxPC, cxCheckGroup;

type
  TfrmMedulaFatura = class(TGirisForm)
    pnlTitle: TPanel;
    pnlOnay: TPanel;
    txtinfo: TLabel;
    PopupMenu1: TPopupMenu;
    eyitNoKontrolYap1: TMenuItem;
    PopupMenu2: TPopupMenu;
    KurumFaturacmali1: TMenuItem;
    KurumFatura1: TMenuItem;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    txtLog: TMemo;
    N1: TMenuItem;
    FaturaptalTm1: TMenuItem;
    Button1: TButton;
    FaturaOkuTm1: TMenuItem;
    N2: TMenuItem;
    utarOnayTm1: TMenuItem;
    HizmetleriOku1: TMenuItem;
    gridBransKodlari: TDBAdvGrid;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    SaveDialog1: TSaveDialog;
    N4: TMenuItem;
    T1: TMenuItem;
    H1: TMenuItem;
    F1: TMenuItem;
    N5: TMenuItem;
    pnlFaturaList: TPanel;
    DBMemo1: TDBMemo;
    Panel2: TPanel;
    Splitter1: TSplitter;
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
    cxGridLevel4: TcxGridLevel;
    ADO_Detay: TADOQuery;
    DataSource2: TDataSource;
    ADO_Detay_toplam: TADOQuery;
    DataSource3: TDataSource;
    F2: TMenuItem;
    F3: TMenuItem;
    E1: TMenuItem;
    F5: TMenuItem;
    K1: TMenuItem;
    K2: TMenuItem;
    S1: TMenuItem;
    F4: TMenuItem;
    T2: TMenuItem;
    H2: TMenuItem;
    T3: TMenuItem;
    cxPageControl1: TcxPageControl;
    fatura_sayfa1: TcxTabSheet;
    fatura_sayfa2: TcxTabSheet;
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
    N6: TMenuItem;
    ENabzSGKBildirimPaketiGnder1: TMenuItem;
    ENabzGnderim1: TMenuItem;
    procedure TopPanelButonClick(Sender: TObject);
    procedure cxButtonCClick(Sender: TObject);
    procedure txtKurumTipiChange(Sender: TObject);
    procedure btnYazdirClick(Sender: TObject);
    procedure tarihbilgi;
    procedure SpeedButton1Click(Sender: TObject);
    procedure btnAraClick(Sender: TObject);
    procedure gridBransKodlariKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure gridBransKodlariDblClick(Sender: TObject);
    procedure TeyitNoKontrolYap;
    procedure RenkKontrol;
    procedure Faturaptal1Click(Sender: TObject);
    procedure eyitNoKontrolYapSatr1Click(Sender: TObject);
    procedure FaturaptalTm1Click(Sender: TObject);
    procedure txtLogKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FaturaOkuTm1Click(Sender: TObject);
    procedure utarOnayTm1Click(Sender: TObject);
    procedure Onay1Click(Sender: TObject);
    procedure HizmetleriOku1Click(Sender: TObject);
    procedure cxGridDBTableView2StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure T1Click(Sender: TObject);
    procedure H1Click(Sender: TObject);
    procedure F1Click(Sender: TObject);
    procedure FaturaCevapYaz(Cvp : FaturaCevapDVO);
    procedure FaturaOkuCevapYaz(Cvp: FaturaOkuCevapDVO);
    procedure HizmetDetayKodToplam;
    procedure FaturaListFocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FaturadanCikar;
    procedure Listele;
    procedure TeslimEt(_Tag_ : integer);
    procedure FaturaIcmal;
    procedure FaturaKes;
    procedure HakedisIcmal;
    procedure btnVazgecClick(Sender: TObject);
    procedure chkTutarTipClick(Sender: TObject);
    procedure ENabzSGKBildirimPaketiGnder1Click(Sender: TObject);
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
  frmMedulaFatura: TfrmMedulaFatura;
  _stop : integer;
  _teslimNumaralari : Array_Of_string;
  hasta : TTakipBilgisi;
  BirimFiyat : double;

implementation
uses AnaUnit,rapor;

{$R *.dfm}

function TfrmMedulaFatura.Init(Sender: TObject) : Boolean;
begin
 inherited;

   Result := True;
end;

procedure TfrmMedulaFatura.TopPanelButonClick(Sender: TObject);
var
 sql ,islemTip , OnayTip : string;
 maxFaturaNo : Double;
begin
 inherited;

     cxGrid4.Enabled := True;
     sql := 'select max(convert(float,faturaNo)) + 1 as fatno from kurumfatura';
     maxFaturaNo := datalar.QuerySelect(sql).Fields[0].AsFloat;
     _FaturaNo_ := floattostr(maxFaturaNo);


     islemTip := copy(varTostr(chkList.EditValue),1,1);
     onayTip := copy(varTostr(chkList.EditValue),2,1);

     sql := 'exec sp_kurumFatura_m3 ' + QuotedStr(varToStr(KurumTipTopPanel.EditValue)) + ',' +
            txtTopPanelTarih1.GetSQLValue + ',' + txtTopPanelTarih2.GetSQLValue + ',' +
            islemTip + ',' +
            onayTip + ',' +
            QuotedStr(datalar.AktifSirket);

     datalar.QuerySelect(cxGrid4.Dataset,sql);

   //  HizmetDetayKodToplam;
   //  RenkKontrol;
end;

procedure TfrmMedulaFatura.ENabzSGKBildirimPaketiGnder1Click(Sender: TObject);
var
  x ,i,ii,j,r,y,satir: integer;
  fark  : double;
  tip , msj , _bv_ , sql , teslimNo,_tn_ : string;
  state : boolean;
  ado : TADOQuery;
  sysTakipNo,islemRefNo,mesajTipi,HastaneRefNo,eNabizSonuc ,dosyaNO,gelisNo: string;
  FileSTR : TMemo;
begin

   DurumGoster(True,True,'700 Sgk Bildirim Pakete Gönderiliyor',0,FaturaList.Controller.SelectedRowCount);
   pBar.Position := 0;
   try
     for x := 0 to FaturaList.Controller.SelectedRowCount - 1 do
     begin
         Application.ProcessMessages;
         satir := FaturaList.Controller.SelectedRows[x].RecordIndex;
         sleep(2000);
         dosyaNo := FaturaList.DataController.GetValue(satir,FaturaList.DataController.GetItemByFieldName('dosyaNo').Index);
         gelisNo := FaturaList.DataController.GetValue(satir,FaturaList.DataController.GetItemByFieldName('gelisNo').Index);
         sysTakipNo := varToStr(FaturaList.DataController.GetValue(satir,FaturaList.DataController.GetItemByFieldName('sysTakipNo').Index));
         try
           try deleteFile('C:\NoktaV3\SGK ISLEM BILDIRCvp.xml');except end;
           ENabizHizmetKayit(HastaneRefNo,sysTakipNo,eNabizSonuc,'');
           txtLog.Lines.Add('ENabýz Hizmet Kayýt : ' + sysTakipNo + '-' + eNabizSonuc);
           ENabizSgkBildir(HastaneRefNo,sysTakipNo,eNabizSonuc,islemRefNo);
           txtLog.Lines.Add('ENabýz 700 SGK Bildirim Kayýt : ' + sysTakipNo + '-' + eNabizSonuc);
         except on e : exception do
          begin
            txtLog.Lines.Add(sysTakipNo + ' : ' + e.Message);
          end;
         end;
         pBar.Position := pBar.Position + 1;

     end;
   finally
     DurumGoster(False);
   end;

end;

procedure TfrmMedulaFatura.chkTutarTipClick(Sender: TObject);
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

procedure TfrmMedulaFatura.cxButtonCClick(Sender: TObject);
var
  Form : TGirisForm;
  GirisFormRecord : TGirisFormRecord;
begin
inherited;


  GirisFormRecord.F_dosyaNo_ :=  _Dataset.FieldByName('dosyaNo').AsString;
  GirisFormRecord.F_gelisNo_ := _Dataset.FieldByName('gelisNo').AsString;
  GirisFormRecord.F_HastaAdSoyad_ := _Dataset.FieldByName('HASTA').AsString;

  case Tcontrol(sender).Tag of
  -3,-2,-1 : begin
               TeslimEt(Tcontrol(sender).Tag);
             end;
  -10 : begin
         FaturaList.Controller.SelectAll;
        end;
  -15 : begin
         FaturadanCikar;  TeyitNoKontrolYap
        end;
  -16 : begin
          TeyitNoKontrolYap;
        end;

  -18 : begin
         FaturaIcmal;
        end;
  -19 : begin
         FaturaKes;
        end;

   -20 : begin
           HakedisIcmal;
         end;
  -25 : begin
           if FindTab(AnaForm.sayfalar,'TabfrmHastaKart')
           Then begin
             Form := TGirisForm(FormClassType(TagfrmHastaKart));
             TGirisForm(FormClassType(TagfrmHastaKart))._dosyaNO_ := _Dataset.FieldByName('dosyaNo').AsString;
             TGirisForm(FormClassType(TagfrmHastaKart)).Init(Form);
           end
           Else begin
            Form := FormINIT(TagfrmHastaKart,self,_Dataset.FieldByName('dosyaNo').AsString,NewTab(AnaForm.sayfalar,'TabfrmHastaKart'),ikEvet,'Giriþ');
            if Form <> nil then Form.show;
           end;
        end;

    -26 : begin
            Form := FormINIT(TagfrmHastaTetkikEkle,GirisFormRecord);
            if Form <> nil then Form.ShowModal;
          end;

  end;


end;



procedure TfrmMedulaFatura.HakedisIcmal;
begin
(*
   Application.CreateForm(TfrmHakedis, frmHakedis);
   frmHakedis.list(txtTopPanelTarih1.GetValue,txtTopPanelTarih2.GetValue);
   frmHakedis.ShowModal;
   frmHakedis := nil;
   *)
end;

procedure TfrmMedulaFatura.FaturaKes;
var
   sql , Tip , birimfiyat ,dosyaNo,tutar,adet : string;
begin
  (*
       Application.CreateForm(TfrmHizmetFaturasi, frmHizmetFaturasi);
       GorselAyar(frmHizmetFaturasi,datalar.global_img_list4);
       birimfiyat := floattostr(HizmetFiyat('P704230'));
       frmHizmetFaturasi.t1 := tarihal(txttarih1.Date);
       frmHizmetFaturasi.t2 := tarihal(txttarih2.Date);

       if trim(copy(ktip.Text,1,2)) = '1'
       then begin
         frmHizmetFaturasi.faturaDetayDoldur('',txtAdet.Text,birimfiyat,'8',txtTOtxt_M(txtToplam.Text),'','','','');
         frmHizmetFaturasi.ShowModal;
         frmHizmetFaturasi := nil;
       end;


       if trim(copy(ktip.Text,1,2)) = '99'
       then begin
         dosyaNo := ADO_SQL.FieldByName('dosyaNo').AsString;
         tutar := ADO_SQL.FieldByName('tutar').AsString;
         adet := ADO_SQL.FieldByName('adet').AsString;
         frmHizmetFaturasi.faturaDetayDoldur('',adet,birimfiyat,'8',txtTOtxt_M(tutar),'','','',dosyaNo);
         frmHizmetFaturasi.ShowModal;
         frmHizmetFaturasi := nil;
       end;

*)
end;


procedure TfrmMedulaFatura.FaturaIcmal;
var
  sql , Tip : string;
  TopluSet : TDataSetKadir;
begin
     frmRapor.topluset.Dataset2 := datalar.ADO_AktifSirket;
     frmRapor.topluset.Dataset1 := datalar.ADO_aktifSirketLogo;
     frmRapor.topluset.Dataset3 := cxGrid4.Dataset;
     PrintYap('033','\KurumFaturaIcmali',intToStr(TagfrmMedulaFatura),TopluSet);
end;

procedure TfrmMedulaFatura.TeslimEt(_Tag_ : integer);
var
  x ,i,ii,j,r,y: integer;
  fark  : double;
  tip , msj , basvuruNo , sql , teslimNo,_tn_ : string;
  state : boolean;
  ado : TADOQuery;
begin
 (*
   if datalar._donemSonlandir_ <> 'EVET'
   Then Begin
     ShowMessageSkin('Bakým Ýþlemi Yapýlýyor ','Lütfen , Fatura Teslim Ýçin Bakým Ýþleminin Bitmesini Bekleyin','','info');
     exit;
   End;
   *)
(*
   if LisansKontrol(fark) = False
   Then Begin
     ShowMessageSkin('Lisans Yenileyin','','','info');
     exit;
   End;
  *)


   tip := '';
   if _Tag_ = -2
   Then
    tip :=',tutarOkuGssFaturaTeslimNo = '
   else
    Tip := ',GSSFaturaTeslimNo = ';


   Application.ProcessMessages;
   gridBransKodlari.Enabled := false;
   x := 1;

   DurumGoster;
   try
      for x := 0 to FaturaList.Controller.SelectedRowCount - 1 do
      begin
         Application.ProcessMessages;
         pnlDurum.Caption := FaturaList.DataController.GetValue(
                                          FaturaList.Controller.SelectedRows[x].RecordIndex,FaturaList.DataController.GetItemByFieldName('HASTA').Index);
         basvuruNo := FaturaList.DataController.GetValue(
                                        FaturaList.Controller.SelectedRows[x].RecordIndex,FaturaList.DataController.GetItemByFieldName('basvuruNo').Index);
         teslimNo := FaturaList.DataController.GetValue(
                                          FaturaList.Controller.SelectedRows[x].RecordIndex,FaturaList.DataController.GetItemByFieldName('GSSFaturaTeslimNo').Index);

          _tn_ := FaturaList.DataController.GetValue(
                                          FaturaList.Controller.SelectedRows[x].RecordIndex,FaturaList.DataController.GetItemByFieldName('takipNo').Index);

         if _Tag_ = -1  // Fatura Teslim
         Then Begin
             FaturaKayit(basvuruNo,datetostr(txtTopPanelTarih2.Date),'')
         End
         Else
         if _Tag_ = -2  // Tutar Oku
         Then Begin
             msj := FaturaTutarOku(basvuruNo,datetostr(txtTopPanelTarih2.Date),'')
         End
         Else
         if _Tag_ = -3   // Fatura Detay Oku (TeslimNo)
         Then Begin
               if teslimNo = '' then Continue;

               msj := FaturaKayitOku(teslimNo,datetostr(txtTopPanelTarih2.date));

               if msj = '0000'
               Then Begin
                 FaturaOkuCevapYaz(datalar.FaturaKayitWS.FaturaOkucevap);
                 r := length(datalar.FaturaKayitWS.FaturaOkucevap.faturaDetaylari);
                 for j := 0 to r -1 do
                 begin
                   if datalar.FaturaKayitWS.FaturaOkucevap.faturaDetaylari[j].takipNo = _tn_
                   Then Begin
                     sql := 'delete from FaturaHizmetDetayTutarOku where takipNo = ' + QuotedStr(datalar.FaturaKayitWS.FaturaOkucevap.faturaDetaylari[j].takipNo);
                     datalar.QueryExec(sql);
                     for i := 0 to length(datalar.FaturaKayitWS.FaturaOkucevap.faturaDetaylari[j].islemDetaylari) - 1 do
                     begin
                            sql := ' insert into FaturaHizmetDetayTutarOku (takipNo,islemsiraNo,tutar,aciklama,protokol) '+
                                   ' values(' + QuotedStr(datalar.FaturaKayitWS.FaturaOkucevap.faturaDetaylari[j].takipNo) + ',' +
                                                QuotedStr(datalar.FaturaKayitWS.FaturaOkucevap.faturaDetaylari[j].islemDetaylari[i].islemSiraNo) + ',' +
                                                floattostr(datalar.FaturaKayitWS.FaturaOkucevap.faturaDetaylari[j].islemDetaylari[i].islemTutari) + ',' +
                                                QuotedStr(datalar.FaturaKayitWS.FaturaOkuCevap.faturaDetaylari[j].aciklama) + ',' +
                                                QuotedStr(datalar.FaturaKayitWS.FaturaOkuCevap.faturaDetaylari[j].protokolNo) + ')';
                            datalar.QueryExec(sql);
                     end;
                   End;
                 end;
               End
               Else
               begin
                txtLog.Lines.Add(msj);
               end;
               //Continue;

         end;


        if datalar.FaturaKayitWS.FaturaCevap.sonucKodu = '0000'
        Then Begin
             FaturaCevapYaz(datalar.FaturaKayitWS.FaturaCevap);
             try
              // FaturaList.Controller.FocusedRow := FaturaList.Controller.SelectedRows[x];
               FaturaList.DataController.SetValue(
                                          FaturaList.Controller.SelectedRows[x].RecordIndex,
                                          FaturaList.DataController.GetItemByFieldName('faturaTutar').Index,datalar.FaturaKayitWS.FaturaCevap.faturaTutari);
            //   FaturaList.DataController.SetValue(
           //                               FaturaList.Controller.SelectedRows[x].RecordIndex,FaturaList.DataController.GetItemByFieldName('Tutar').Index,
            //                              (datalar.FaturaKayitWS.FaturaCevap.faturaTutari  - roundTo((datalar.FaturaKayitWS.faturacevap.faturaTutari/1.08),2)));
               if tip = ',GSSFaturaTeslimNo = '
               Then Begin
                 FaturaList.DataController.SetValue(
                                          FaturaList.Controller.SelectedRows[x].RecordIndex,FaturaList.DataController.GetItemByFieldName('GSSFaturaTeslimNo').Index,
                                          datalar.FaturaKayitWS.FaturaCevap.faturaTeslimNo);
               end;
               FaturaList.DataController.SetValue(
                                          FaturaList.Controller.SelectedRows[x].RecordIndex,FaturaList.DataController.GetItemByFieldName('faturaTarihi').Index,
                                          txtTopPanelTarih2.GetValue);
             except
             end;


               txtLog.Lines.Add(datalar.FaturaKayitWS.FaturaCevap.hastaBasvuruNo+' ; ' + datalar.FaturaKayitWS.FaturaCevap.sonucMesaji);

               if length(datalar.FaturaKayitWS.FaturaCevap.faturaDetaylari[0].islemDetaylari) > 0
               then begin
                 ado := TADOQuery.Create(nil);
                 ado.Connection := datalar.ADOConnection2;

                 sql := 'delete from FaturaHizmetDetayTutarOku where takipNo = ' + QuotedStr(datalar.FaturaKayitWS.FaturaCevap.faturaDetaylari[0].takipNo);
                 datalar.QueryExec(sql);

                 for  i := 0 to length(datalar.FaturaKayitWS.FaturaCevap.faturaDetaylari[0].islemDetaylari) - 1 do
                 begin
                  try
                    txtLog.Lines.Add('Takip No : ' + datalar.FaturaKayitWS.FaturaCevap.faturaDetaylari[0].takipNo +
                                     ' Takip Tutar = ' + floattostr(datalar.FaturaKayitWS.FaturaCevap.faturaDetaylari[0].takipToplamTutar) +
                                     ' [' + datalar.FaturaKayitWS.FaturaCevap.faturaDetaylari[0].islemDetaylari[i].islemSiraNo + ' = ' +
                                     floattostr(datalar.FaturaKayitWS.FaturaCevap.faturaDetaylari[0].islemDetaylari[i].islemTutari) + ']');

                    sql := //'delete from FaturaHizmetDetayTutarOku where islemsiraNo = ' + QuotedStr(FaturaCevap.faturaDetaylari[0].islemDetaylari[i].islemSiraNo) +
                           ' insert into FaturaHizmetDetayTutarOku (takipNo,islemsiraNo,tutar) '+
                           ' values(' + QuotedStr(datalar.FaturaKayitWS.FaturaCevap.faturaDetaylari[0].takipNo) + ',' +
                                        QuotedStr(datalar.FaturaKayitWS.FaturaCevap.faturaDetaylari[0].islemDetaylari[i].islemSiraNo) + ',' +
                                        floattostr(datalar.FaturaKayitWS.FaturaCevap.faturaDetaylari[0].islemDetaylari[i].islemTutari) + ')';
                    datalar.QueryExec(sql);
                  except end;
                 end;
               end;
        End
        Else Begin
            txtLog.Lines.Add(datalar.FaturaKayitWS.FaturaCevap.hastaBasvuruNo+' ; ' + datalar.FaturaKayitWS.FaturaCevap.sonucMesaji + msj);
        End;
        sleep(2000);
      end; // for end

   finally
     DurumGoster(False);
   end;

end;


procedure TfrmMedulaFatura.Listele;
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


procedure TfrmMedulaFatura.FaturadanCikar;
var
   sql ,silinenSatir ,_takip ,dosyaNo , gelisNo , teslimNo : string;
   x : integer;
   state : boolean;
begin
   if mrYes = ShowMessageSkin('Kurum Fatura Bilgisi Ýptal Edilecek, Eminmsiniz ?','','','msg')
   then begin

     DurumGoster;
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
             teslimNo := FaturaList.DataController.GetValue(
                                      FaturaList.Controller.SelectedRows[x].RecordIndex,FaturaList.DataController.GetItemByFieldName('GSSFaturaTeslimNo').Index);
             except on e : Exception do
               begin
                 teslimNo := '';
                 //ShowMessage(e.Message,'','','info');
               end;

             end;
             datalar.ADO_SQL2.closE;
             datalar.ADO_SQL2.SQL.Clear;
             sql := 'delete from kurumFatura where dosyaNO = ' + QuotedStr(dosyaNo) +
                    ' and gelisNo = ' + gelisNo;

             if teslimNo = ''
             Then datalar.QueryExec(datalar.ADO_SQL2,sql);

     end;
         DurumGoster(false);
         ShowMessageSkin('Kurum Fatura Ýptal Edildi' , 'Kayýt Geriye Alýndý','','info');
         Listele;
   end;

end;


procedure TfrmMedulaFatura.HizmetDetayKodToplam;
var
 sql : string;
begin
  sql :=
  'SELECT sutkodu HizmetKodu,sum(tutar) Tutar,count(*) Adet ' +
  ' FROM FaturaHizmetDetayTutarOku fd ' +
  ' JOIN Gelisler g ON g.TakýpNo = fd.takipNo ' +
  ' JOIN gssTakipOkuDiger d ON d.islemSiraNo = fd.islemsiraNo ' +
  ' WHERE g.BHDAT BETWEEN ' + txtTopPanelTarih1.GetSQLValue + ' and ' + txtTopPanelTarih2.GetSQLValue +
  ' GROUP BY d.sutKodu ';

  datalar.QuerySelect(ADO_Detay_toplam,sql);


end;


procedure TfrmMedulaFatura.FaturaCevapYaz(Cvp: FaturaCevapDVO);
var
 ado : TADOQuery;
 sql , TNo , teslimNo,Ftarihi: string;
 r , j: integer;
 faturaTutar,Tutar,kdv,kdvTutar : Double;
begin
   r := length(Cvp.faturaDetaylari);
   for j := 0 to r - 1 do
   begin
      TNo := Cvp.faturaDetaylari[j].takipNo;
      teslimNo := Cvp.faturaTeslimNo;
      Ftarihi := txtTopPanelTarih2.GetValue;
      faturaTutar := Cvp.faturaDetaylari[j].takipToplamTutar;
   //   tutar := RoundTo((Cvp.faturaDetaylari[j].takipToplamTutar/1.08),-2);
      kdv := 8;
   //   kdvTutar := faturaTutar - tutar;
      if teslimNo = '0' Then teslimNo := '';
      sql := 'update kurumfatura set tutar = ' + floattostr(tutar) +
             ',faturatutar = ' + floattostr(faturaTutar) +
             ',kdvtutar = ' + floattostr(kdvTutar) +
             ',GssFaturaTeslimNo = ' + QuotedStr(teslimNo) +
             ',FaturaTarihi = ' + QuotedStr(Ftarihi) +
             ',birimFiyat = ' + floattostr(BirimFiyat) +
             ',kdv = ' + floattostr(kdv) +
             ' where takipNo = ' + QuotedStr(TNo);
      datalar.QueryExec(sql);
   end;



end;

procedure TfrmMedulaFatura.FaturaOkuCevapYaz(Cvp: FaturaOkuCevapDVO);
var
 ado : TADOQuery;
 sql , TNo , teslimNo,Ftarihi: string;
 r , j: integer;
 faturaTutar,Tutar,kdv,kdvTutar : Double;
begin
   r := length(Cvp.faturaDetaylari);
   for j := 0 to r - 1 do
   begin
      TNo := Cvp.faturaDetaylari[j].takipNo;
      teslimNo := Cvp.faturaTeslimNo;
      Ftarihi := txtTopPanelTarih2.GetValue;
      faturaTutar := Cvp.faturaDetaylari[j].takipToplamTutar;
     // tutar := RoundTo((Cvp.faturaDetaylari[j].takipToplamTutar/1.08),-2);
      kdv := 8;
     // kdvTutar := faturaTutar - tutar;
      if teslimNo = '0' Then teslimNo := '';
      sql := 'update kurumfatura set tutar = ' + floattostr(tutar) +
             ',faturatutar = ' + floattostr(faturaTutar) +
             ',kdvtutar = ' + floattostr(kdvTutar) +
             ',GssFaturaTeslimNo = ' + QuotedStr(teslimNo) +
             ',FaturaTarihi = ' + QuotedStr(Ftarihi) +
             ',birimFiyat = ' + floattostr(BirimFiyat) +
             ',kdv = ' + floattostr(kdv) +
             ' where takipNo = ' + QuotedStr(TNo);
      datalar.QueryExec(sql);
   end;
end;

procedure TfrmMedulaFatura.RenkKontrol;
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


procedure TfrmMedulaFatura.tarihbilgi;
begin
//   txtAylar.Text := aytoayadi(date());
//   txtAylarClick(txtAylar);
  // tarihata(txttarih1,txttarih2,txtAylar);


end;


procedure TfrmMedulaFatura.txtKurumTipiChange(Sender: TObject);
var
   sql : string;
   x : integer;
begin

   sql := 'select kurum,ADI1 from Kurumlar where KURUMTIPI like ' + #39 + copy('',1,1) + '%' + #39;
   datalar.QuerySelect(datalar.ADO_SQL3,sql);
  // txtKurum.Items.Clear;
   if not datalar.ADO_SQL3.Eof
   then begin
       for x := 1 to datalar.ADO_SQL3.RecordCount do
       begin
         // txtKurum.Items.Add(datalar.ADO_SQL3.Fields[0].AsString + '-' + datalar.ADO_SQL3.Fields[1].AsString);
          datalar.ADO_SQL3.Next;
       end;
   end;



end;

procedure TfrmMedulaFatura.btnYazdirClick(Sender: TObject);
var
  x , y , z , icmaldekiTakipAdedi : integer;
  basvuru , _tarih_  ,sql : string;
  _sonuc_ : FaturaCevapDVO;
  ado : TADOQuery;
begin
   ado := TADOQuery.Create(nil);
   ado.Connection := datalar.ADOConnection2;

   _sonuc_ := FaturaCevapDVO.Create;

   _Dataset.First;
   while not _Dataset.Eof do
   Begin
       basvuru := _Dataset.fieldbyname('basvuru').AsString;
       _tarih_ := tarih(txtTopPanelTarih2.GetValue);

    //   if FaturaKayit(basvuru,_tarih_,_sonuc_,datalar.FaturaKaydet,'') = '0000'
    //   Then Begin
    //       sql := 'update kurumfatura set GSSFaturaTeslimNo = ' + _sonuc_.faturaTeslimNo +
    //              ' where basvuruNo = ' + _sonuc_.hastaBasvuruNo;
    //
    //       datalar.QueryExec(ado,sql);
    //   End;

       _Dataset.Next;
   end;


   ado.Free;


end;

procedure TfrmMedulaFatura.SpeedButton1Click(Sender: TObject);
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


procedure TfrmMedulaFatura.T1Click(Sender: TObject);
begin
(*
  Application.CreateForm(TfrmTopluEpikriz, frmTopluEpikriz);
  frmTopluEpikriz.ShowModal;
  frmTopluEpikriz := nil;
  *)
end;

procedure TfrmMedulaFatura.btnAraClick(Sender: TObject);
begin
   //  gridara(gridBransKodlari,txtarama.Text);
end;

procedure TfrmMedulaFatura.btnVazgecClick(Sender: TObject);
begin
  inherited;
   _stop := 0;
   gridBransKodlari.Enabled := true;

end;

procedure TfrmMedulaFatura.gridBransKodlariKeyDown(Sender: TObject;
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

procedure TfrmMedulaFatura.gridBransKodlariDblClick(Sender: TObject);
begin

  ShowMessage(gridBransKodlari.Cells[14,gridBransKodlari.Row],'','','info');
//     ShowMessageSkin(TeyitNoBul(gridBransKodlari.Cells[13,gridBransKodlari.row]),'','','info');

end;

procedure TfrmMedulaFatura.TeyitNoKontrolYap;
var
   sql ,teyidNo , takipNo , faturaNo  , msg : string;
   x : integer;
   state : boolean;
begin
     DurumGoster;
     try
         for x := 0 to FaturaList.Controller.SelectedRowCount - 1 do
         begin
              if _stop = 0 then Break;
              Application.ProcessMessages;

              takipNo := FaturaList.DataController.GetValue(
                         FaturaList.Controller.SelectedRows[x].RecordIndex,FaturaList.DataController.GetItemByFieldName('takipNo').Index);
              pnlDurum.Caption := FaturaList.DataController.GetValue(
                         FaturaList.Controller.SelectedRows[x].RecordIndex,FaturaList.DataController.GetItemByFieldName('HASTA').Index);

               datalar.HastaKabulWS.TakipOkuGiris.takipNo := takipNo;
               datalar.HastaKabulWS.TakipOkuGiris.saglikTesisKodu := datalar._kurumKod;
               datalar.HastaKabulWS.KabulOku;

               if datalar.HastaKabulWS.Takip.sonucKodu = '0000'
               Then Begin
                    sql := 'update kurumfatura set ' +
                           'GSSFaturaTeslimNo = ' + QuotedStr(ifThen(datalar.HastaKabulWS.Takip.faturaTeslimNo = '0','',datalar.HastaKabulWS.Takip.faturaTeslimNo)) +
                           'where takipNo = ' + QuotedStr(takipNo);
                    datalar.QueryExec(datalar.ADO_SQL,sql);

                    txtLog.Lines.Add(takipNo + ' ; ' + datalar.HastaKabulWS.Takip.faturaTeslimNo);
                End
               Else Begin
                   txtLog.Lines.Add(takipNo + ' ; ' + datalar.HastaKabulWS.Takip.sonucMesaji);
               End;
         end;
     finally
       cxGrid4.Dataset.Requery();
       DurumGoster(false);
     end;


end;

procedure TfrmMedulaFatura.Faturaptal1Click(Sender: TObject);
var
  sonuc : string;
begin

   txtinfo.Caption := 'Fatura Ýptal Ediliyor...';
   Application.ProcessMessages;

   setlength(_teslimNumaralari,0);
   setlength(_teslimNumaralari,1);

   _teslimNumaralari[0] := _Dataset.fieldbyname('GSSFaturaTeslimNo').AsString;

 //   sonuc := FaturaKayitIptal(_teslimNumaralari,datalar.FaturaKaydet);

    if sonuc = '0000'
    Then Begin
           _Dataset.Edit;
           _Dataset.FieldByName('BirimFiyat').AsFloat := 0;
           _Dataset.FieldByName('tutar').AsFloat := 0;
           _Dataset.FieldByName('kdv').AsFloat := 8;
           _Dataset.FieldByName('KdvTutar').asfloat := 0;
           _Dataset.FieldByName('faturatutar').AsFloat := 0;
           _Dataset.FieldByName('GSSFaturaTeslimNo').AsString := '';
           _Dataset.Post;

           ShowMessageSkin('Fatura Ýptal Edildi','','','info');
           txtinfo.Caption := '';
    End
    Else ShowMessageSkin(sonuc,'','','info');


end;

procedure TfrmMedulaFatura.eyitNoKontrolYapSatr1Click(Sender: TObject);
var
   sql ,teyidNo , takipNo , faturaNo  , msg : string;
   x : integer;

begin

          txtinfo.Caption := 'TeyitNo Kontrol Yapýlýyor....';
          Application.ProcessMessages;
          takipNo := gridBransKodlari.Cells[14,gridBransKodlari.Row];
       //   msg := KabulOku(takipNo,hasta,datalar.HastaKabul,1);

           if msg = '0000'
           Then Begin

                begin
                    datalar.ADO_SQL.close;
                    datalar.ADO_SQL.SQL.clear;
                sql := 'update kurumfatura set ' +
                       'GSSFaturaTeslimNo = ' + QuotedStr(ifThen(hasta.faturaTeslimNo = '0','',hasta.faturaTeslimNo)) +
                       'where takipNo = ' + QuotedStr(takipNo);
                    datalar.QueryExec(datalar.ADO_SQL,sql);
                end;

               txtLog.Lines.Add(takipNo+' ; ' + hasta.faturaTeslimNo);


           End
           Else Begin
               txtLog.Lines.Add(takipNo+' ; ' + msg);
           End;

end;

procedure TfrmMedulaFatura.F1Click(Sender: TObject);
var
  x : integer;
  sql : string;
  ado : TADOQuery;
begin

  ado := TADOQuery.Create(nil);
  ado.Connection := datalar.ADOConnection2;

  sql := 'select code,name1,f.* from FaturaHizmetDetayTutarOku f ' +
         ' left join hareketler h on h.islemSiraNo = f.islemSirano ' +
         ' where takipno = ' + QuotedStr(_Dataset.FieldByName('takipno').AsString);

  datalar.QuerySelect(ado,sql);
  txtLog.Lines.Clear;
   while not ado.Eof do
   begin
    txtLog.Lines.Add(ado.Fields[0].AsString + ' - ' + ado.Fields[1].AsString + ' - ' +
                     ado.Fields[2].AsString + ' - ' + ado.Fields[3].AsString + ' - ' +
                     ado.Fields[4].AsString);
    ado.Next;
   end;

  ado.Free;

end;

procedure TfrmMedulaFatura.FaturaptalTm1Click(Sender: TObject);
var
  sonuc , sql : string;
  x : integer;
  state : boolean;
  ado : TADOQuery;
begin
     _stop := 1;

     DurumGoster;
     try
         for x := 0 to FaturaList.Controller.SelectedRowCount - 1 do
         begin
              if _stop = 0 then Break;
              Application.ProcessMessages;

              pnlDurum.Caption := FaturaList.DataController.GetValue(
                                      FaturaList.Controller.SelectedRows[x].RecordIndex,FaturaList.DataController.GetItemByFieldName('HASTA').Index);

              setlength(_teslimNumaralari,0);
              setlength(_teslimNumaralari,1);

              _teslimNumaralari[0] := FaturaList.DataController.GetValue(
                                      FaturaList.Controller.SelectedRows[x].RecordIndex,FaturaList.DataController.GetItemByFieldName('GSSFaturaTeslimNo').Index);

              datalar.FaturaKayitWS.FaturaIptalGiris.faturaTeslimNo :=  _teslimNumaralari;
              datalar.FaturaKayitWS.FaturaIptalGiris.saglikTesisKodu := datalar._kurumKod;
              datalar.FaturaKayitWS.FaturaIptal;

              if datalar.FaturaKayitWS.FaturaIptalCevap.sonucKodu = '0000'
              Then Begin
                   sql := 'update kurumFatura set BirimFiyat = 0 , tutar = 0 , kdv = 8 , KdvTutar = 0 ,faturatutar = 0 ,' +
                          'GSSFaturaTeslimNo = ' + QuotedStr('') +
                          ' where GSSFaturaTeslimNo = ' + QuotedStr(_teslimNumaralari[0]);
                   datalar.QueryExec(sql);
                   FaturaList.DataController.SetValue(
                                    FaturaList.Controller.SelectedRows[x].RecordIndex,FaturaList.DataController.GetItemByFieldName('GSSFaturaTeslimNo').Index,'');
                   txtLog.Lines.Add('Fatura Ýptal Edildi');
              End
              Else txtLog.Lines.Add(sonuc + ' - Fatura Ýptal Edilmedi');

         End; // while End
         cxGrid4.Dataset.Requery();
     finally
       DurumGoster(False);
     end;



end;

procedure TfrmMedulaFatura.FormCreate(Sender: TObject);
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
   TapPanelElemanVisible(True,True,True,false,false,false,True,false,False,False,false,True,True);

   chkList.Properties.OnEditValueChanged := nil;

   chkList.Properties.Items.Clear;
   Chk := chkList.Properties.Items.Add;
   Chk.Caption := 'Faturalanmamýþlar';
   Chk.Tag := 0;
   Chk := chkList.Properties.Items.Add;
   Chk.Caption := 'Kontrol Onay';
   Chk.Tag := 1;
   chkList.EditValue := '10';
   chkList.Width := 250;
   txtDonemTopPanel.Yil := copy(tarihal(date()),1,4);

 //  FaturaList.DataController.DataSource := DataSource;

(*
  inherited;
  setDataStringKontrol(self,txttarih1, 'Tarih1','Tarih Aralýðý',Kolon1,'trh',110);
  setDataStringKontrol(self,txttarih2, 'Tarih2','',Kolon1,'trh',110);
  setDataStringKontrol(self,txtAylar, 'Donem','Dönem',Kolon1,'trh',110);
  setDataStringKontrol(self,txtDosyaNo, 'DosyaNo','Dosya No',Kolon1,'trh',110);
  setDataStringKontrol(self,hastaTip, 'hastaTip','',Kolon1,'trh',110);
  setDataStringKontrol(self,ktip, 'ktip','',Kolon1,'trh',110);

  addButton(self,btnListe,'btnListe', '','Liste',Kolon1,'trh',60);
  *)
end;

procedure TfrmMedulaFatura.txtLogKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = VK_F10
   Then Begin
       Button1.Click;

   End;


end;

procedure TfrmMedulaFatura.FaturaOkuTm1Click(Sender: TObject);
var
   sql ,teyidNo , takipNo , faturaNo  , msg , teslimNo : string;
   x : integer;
   state : boolean;
   adet : integer;
begin
     _stop := 1;

     DurumGoster;
     try
       for x := 0 to FaturaList.Controller.SelectedRowCount - 1  do
       begin
            if _stop = 0 then Break;
            Application.ProcessMessages;

                   pnlDurum.Caption := FaturaList.DataController.GetValue(
                             FaturaList.Controller.SelectedRows[x].RecordIndex,FaturaList.DataController.GetItemByFieldName('HASTA').Index);


                   teslimNo := GridCellToString(FaturaList,'GSSFaturaTeslimNo',x);
                   adet :=   GridCellToString(FaturaList,'Adet',x);

                   datalar.FaturaKayitWS.FaturaOkuGiris.faturaTeslimNo := teslimNo;
                   datalar.FaturaKayitWS.FaturaOkuGiris.saglikTesisKodu := datalar._kurumKod;
                   datalar.FaturaKayitWS.FaturaOkuGiris.faturaTarihi:= '';
                   datalar.FaturaKayitWS.FaturaOkuGiris.faturaRefNo := '';
                   datalar.FaturaKayitWS.FaturaOku;


                   if datalar.FaturaKayitWS.FaturaOkuCevap.sonucKodu = '0000'
                   Then Begin
                        sql := 'update kurumfatura set ' +
                               'tutar = ' + floattostr(datalar.FaturaKayitWS.FaturaOkuCevap.faturaTutari) +
                               ',faturaTutar = ' + floattostr(datalar.FaturaKayitWS.FaturaOkuCevap.faturaTutari* 1.08) +
                               ',faturatarihi = ' + tarihal(strtodate(datalar.FaturaKayitWS.FaturaOkuCevap.faturaTarihi)) +
                               ',BirimFiyat = ' + floattostr(datalar.FaturaKayitWS.FaturaOkuCevap.faturaTutari / adet) +
                               'where GSSFaturaTeslimNo = ' + QuotedStr(teslimNo);
                            datalar.QueryExec(sql);


                       txtLog.Lines.Add(teslimNo+' ; ' + datalar.FaturaKayitWS.FaturaOkuCevap.faturaRefNo+';'+datalar.FaturaKayitWS.FaturaOkuCevap.faturaTarihi);

                   End
                   Else Begin
                       txtLog.Lines.Add(teslimNO +' ; ' + datalar.FaturaKayitWS.FaturaOkuCevap.sonucMesaji);
                   End;

       End;

     finally
       DurumGoster(False);
     end;

end;

procedure TfrmMedulaFatura.utarOnayTm1Click(Sender: TObject);
var
  x : integer;
  state : boolean;
begin
     _stop := 1;
     DurumGoster;
     try
         for x := 0 to FaturaList.Controller.SelectedRowCount - 1 do
         begin
                  if _stop = 0 then Break;
                  Application.ProcessMessages;
                  pnlDurum.Caption :=  GridCellToString(FaturaList,'HASTA',x);
                                 // FaturaList.DataController.GetValue(
                                 // FaturaList.Controller.SelectedRows[x].RecordIndex,2);

                  FaturaList.Controller.FocusedRow := FaturaList.Controller.SelectedRows[x];
                  cxGrid4.Dataset.Edit;
                  GridCellSetValue(FaturaList,'Kontrol',x,'1');
                  //FaturaList.DataController.SetValue(
                  //FaturaList.Controller.SelectedRows[x].RecordIndex,16,'O');


                  cxGrid4.Dataset.FieldByName('Kontrol').AsString := GridCellToString(FaturaList,'Kontrol',x);
                              // FaturaList.DataController.GetValue(
                              // FaturaList.Controller.SelectedRows[x].RecordIndex,16);

                  cxGrid4.Dataset.Post;
         End; // for End
     finally
       DurumGoster(False);
     end;


end;

procedure TfrmMedulaFatura.FaturaListFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;

(*
  ado_detay.Close;
  ADO_Detay.Parameters[0].Value := _Dataset.FieldByName('takipNo').AsString;
  ADO_Detay.Open;
  *)

end;

procedure TfrmMedulaFatura.cxGridDBTableView2StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
var
 r : integer;
begin
 (*
 try
  if  (ARecord.Values[6] * ARecord.Values[7]) <> ARecord.Values[8]
  Then
    AStyle := cxStyle2;
 except end;
   *)
end;

procedure TfrmMedulaFatura.Onay1Click(Sender: TObject);
begin
  _Dataset.Edit;
  _Dataset.FieldByName('Kontrol').AsString := '1';
  _Dataset.Post;

end;

procedure TfrmMedulaFatura.H1Click(Sender: TObject);
begin
(*
  DatasetiDoldur(ADO_SQL.FieldByName('takipNo').AsString,'G',ADO_SQL.FieldByName('basvuruNo').AsString);

  frmRapor.raporData1(frmRapor.topluset ,'014','\HizmetDetay');
  frmRapor.ShowModal;
  *)
end;

procedure TfrmMedulaFatura.HizmetleriOku1Click(Sender: TObject);
var
 GirisFormRecord : TGirisFormRecord;
begin
  GirisFormRecord.F_TakipNo_ := _Dataset.FieldByName('takipNo').AsString;
  GirisFormRecord.F_BasvuruNo_ := _Dataset.FieldByName('basvuruNo').AsString;
  FormINIT(TagfrmTakipBilgisiOku,GirisFormRecord).ShowModal;
end;

end.
