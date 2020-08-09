unit hizliKayit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, sBitBtn, ExtCtrls, cxControls, cxPC,adodb,db,
  cxGraphics, cxDropDownEdit, cxMaskEdit, cxCalendar, cxLabel, cxContainer,
  cxEdit, cxTextEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,kadir,data_modul,
  cxDBEdit, dxmdaset, InvokeRegistry, Rio, SOAPHTTPClient,strUtils,kadirType,GetFormClass,
  cxMemo, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxPCdxBarPopupMenu,
  cxGroupBox, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData,
  cxGridLevel, cxGridBandedTableView, cxGridDBBandedTableView, cxGridCardView,
  cxGridDBCardView, cxGridCustomLayoutView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  SQLMemMain, cxImageComboBox, KadirLabel,KadirMedula3,GirisUnit, Menus, cxButtons;

type
  TfrmHizliKayit = class(TGirisForm)
    pnlToolBar: TPanel;
    cxPageControl1: TcxPageControl;
    TakipData: TdxMemData;
    TakipDataTcKimlikNo: TStringField;
    TakipDataTakipTarihi: TStringField;
    TakipDataPTuru: TStringField;
    TakipDatatturu: TStringField;
    TakipDatatedevitipi: TStringField;
    TakipDatadurum: TStringField;
    TakipDatakurum: TStringField;
    TakipDataservis: TStringField;
    TakipDatadoktor: TStringField;
    DataSource1: TDataSource;
    cxGroupBox1: TcxGroupBox;
    cxLabel1: TcxLabel;
    txtTcKimlikNoAra: TcxTextEdit;
    txtTakipTarihi: TcxDateEdit;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    txtProvizyonTuru: TcxComboBox;
    txtTakipTuru: TcxComboBox;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    txtTedaviTipi: TcxComboBox;
    txtBranslar: TcxDBLookupComboBox;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    txtdoktorlar: TcxDBLookupComboBox;
    cxGroupBox2: TcxGroupBox;
    cxPageControl2: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    txtCinsiyet: TRadioGroup;
    btnKabul: TsBitBtn;
    btnVazgec: TsBitBtn;
    cxLabel12: TcxLabel;
    cxLabel11: TcxLabel;
    txtHastaSoyadi: TcxTextEdit;
    txtHastaAdi: TcxTextEdit;
    cxLabel10: TcxLabel;
    txtTakipNo: TcxTextEdit;
    txtBasvuruNo: TcxTextEdit;
    cxTabSheet2: TcxTabSheet;
    txtHata: TcxMemo;
    cxLabel7: TcxLabel;
    cxLabel6: TcxLabel;
    memDataRaporlar: TdxMemData;
    memDataRaporlarRaporTuru: TStringField;
    memDataRaporlarRaporNo: TStringField;
    memDataRaporlarRaporTarihi: TStringField;
    memDataRaporlarVerenTesis: TStringField;
    memDataRaporlarTedaviRaporTuru: TStringField;
    memDataRaporlarraporTakipNo: TStringField;
    memDataRaporlarseansGun: TIntegerField;
    memDataRaporlarseansSayi: TIntegerField;
    memDataRaporlarbaslangicTarihi: TDateTimeField;
    memDataRaporlarbitisTarihi: TDateField;
    memDataRaporlarprotokolNo: TStringField;
    memDataRaporlarbutKodu: TStringField;
    memDataRaporlartani: TStringField;
    memDataRaporlarprotokolTarihi: TDateField;
    memDataRaporlaraciklama: TStringField;
    cxGroupBox3: TcxGroupBox;
    cxGrid2: TcxGrid;
    GridEkstre: TcxGridDBTableView;
    GridEkstreRaporTuru: TcxGridDBColumn;
    GridEkstreRaporNo: TcxGridDBColumn;
    GridEkstreRaporTarihi: TcxGridDBColumn;
    GridEkstreVerenTesis: TcxGridDBColumn;
    GridEkstreTedaviRaporTuru: TcxGridDBColumn;
    GridEkstreraporTakipNo: TcxGridDBColumn;
    GridEkstreseansGun: TcxGridDBColumn;
    GridEkstreseansSayi: TcxGridDBColumn;
    GridEkstrebaslangicTarihi: TcxGridDBColumn;
    GridEkstrebitisTarihi: TcxGridDBColumn;
    GridEkstreprotokolNo: TcxGridDBColumn;
    GridEkstrebutKodu: TcxGridDBColumn;
    GridEkstretani: TcxGridDBColumn;
    GridEkstreprotokolTarihi: TcxGridDBColumn;
    GridEkstreaciklama: TcxGridDBColumn;
    cxGrid2DBCardView1: TcxGridDBCardView;
    cxGrid2DBCardView1RecId1: TcxGridDBCardViewRow;
    cxGrid2DBCardView1drTescil1: TcxGridDBCardViewRow;
    cxGrid2DBCardView1drAdi1: TcxGridDBCardViewRow;
    cxGrid2DBCardView1drSoyadi1: TcxGridDBCardViewRow;
    cxGrid2DBCardView1brans1: TcxGridDBCardViewRow;
    cxGrid2DBCardView1tip1: TcxGridDBCardViewRow;
    cxGrid2DBCardView1raporTakipNo: TcxGridDBCardViewRow;
    cxGrid2DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid2DBBandedTableView1drtescil: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1dradi: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1drSoyadi: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1drbrans: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1tip: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1raporTakipNo: TcxGridDBBandedColumn;
    cxGridLevel1: TcxGridLevel;
    cxGrid2Level2: TcxGridLevel;
    DataSource3: TDataSource;
    MemTable_Doktorlar: TSQLMemTable;
    MemTable_Doktorlardrtescil: TStringField;
    MemTable_Doktorlardradi: TStringField;
    MemTable_DoktorlardrSoyadi: TStringField;
    MemTable_Doktorlardrbrans: TStringField;
    MemTable_DoktorlarraporTakipNo: TStringField;
    DataSource2: TDataSource;
    RbTc: TRadioButton;
    RbRt: TRadioButton;
    txtTcKimlikNo: TcxTextEdit;
    cxLabel13: TcxLabel;
    txtilkTakip: TcxTextEdit;
    txtSigortaliTuru: TcxImageComboKadir;
    btnAra: TcxButton;
    Panel1: TPanel;
    txtdogumTarihi: TcxDateEditKadir;
    cxLabel14: TcxLabel;
    txtAdres: TcxTextEdit;
    cxLabel15: TcxLabel;
    txtDevredilenKurum: TcxImageComboKadir;
    txtTel: TcxMaskEdit;
    procedure txtBranslarPropertiesChange(Sender: TObject);
    procedure btnKabulClick(Sender: TObject);
    procedure btnAraClick(Sender: TObject);
    procedure btnVazgecClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure txtBranslarClick(Sender: TObject);
    procedure MemTable_DoktorlarAfterScroll(DataSet: TDataSet);
    procedure RbRtClick(Sender: TObject);
    procedure RbTcClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
 //   procedure Rapor(RaporCvp : RaporIslemleriWS.RaporCevapTCKimlikNodanDVO);overload;
    procedure Rapor;
     function Init(Sender: TObject) : Boolean; override;
  end;

var
  frmHizliKayit: TfrmHizliKayit;
  ado , adodoktor : TADOQuery;
  datasource  ,datasourcedoktor : TDataSource;
  _dosyaNo , _gelisNo , _tedaviTur ,    sgk , sgkk  : string;
 _msg : string;
  DS : TDataSource;

implementation
  uses Anaunit;
{$R *.dfm}



 {
procedure TfrmHizliKayit.Rapor(RaporCvp :  RaporIslemleriWS.RaporCevapTCKimlikNodanDVO);
var
  x , i ,y : integer;
  tanilar : string;
begin
       if Length(RaporCvp.raporlar) > 0
       Then Begin


          for x := 0 to Length(RaporCvp.raporlar) - 1 do
          Begin
            memDataRaporlar.Append;
            memDataRaporlar.FieldByName('raporTuru').AsString := RaporCvp.raporlar[x].raporTuru;
            if  RaporCvp.raporlar[x].raporTuru = '1'
            Then begin
              if RaporCvp.raporlar[x].tedaviRapor.tedaviRaporTuru = 1
              Then Begin
               memDataRaporlar.FieldByName('raporTakipNo').AsString := inttostr(RaporCvp.raporlar[x].raporTakipNo);
               memDataRaporlar.FieldByName('raporTarihi').AsString := RaporCvp.raporlar[x].tedaviRapor.raporDVO.raporBilgisi.tarih;
               memDataRaporlar.FieldByName('raporNo').AsString := RaporCvp.raporlar[x].tedaviRapor.raporDVO.raporBilgisi.no;
               memDataRaporlar.FieldByName('verenTesis').AsString := inttostr(RaporCvp.raporlar[x].tedaviRapor.raporDVO.raporBilgisi.raporTesisKodu);
               memDataRaporlar.FieldByName('baslangicTarihi').AsString := RaporCvp.raporlar[x].tedaviRapor.raporDVO.baslangicTarihi;
               memDataRaporlar.FieldByName('bitisTarihi').AsString := RaporCvp.raporlar[x].tedaviRapor.raporDVO.bitisTarihi;
               memDataRaporlar.FieldByName('tedaviRaporTuru').AsString := inttostr(RaporCvp.raporlar[x].tedaviRapor.tedaviRaporTuru);
               memDataRaporlar.FieldByName('protokolNo').AsString := RaporCvp.raporlar[x].tedaviRapor.raporDVO.protokolNo;
               memDataRaporlar.FieldByName('protokolTarihi').AsString := RaporCvp.raporlar[x].tedaviRapor.raporDVO.protokolTarihi;
               memDataRaporlar.FieldByName('Aciklama').AsString := raporCvp.raporlar[x].tedaviRapor.raporDVO.aciklama;
  //            memDataRaporlar.FieldByName('tani').AsString :=
               memDataRaporlar.FieldByName('seansGun').AsInteger := RaporCvp.raporlar[x].tedaviRapor.islemler[0].diyalizRaporBilgisi.seansGun;
               memDataRaporlar.FieldByName('seansSayi').AsInteger := RaporCvp.raporlar[x].tedaviRapor.islemler[0].diyalizRaporBilgisi.seansSayi;
               memDataRaporlar.FieldByName('butKodu').AsString := RaporCvp.raporlar[x].tedaviRapor.islemler[0].diyalizRaporBilgisi.butKodu;
               tanilar := '';

               for y := 0 to Length(RaporCvp.raporlar[x].tedaviRapor.raporDVO.tanilar) - 1 do
               begin
                 tanilar := tanilar + ',' +
                 RaporCvp.raporlar[x].tedaviRapor.raporDVO.tanilar[y].taniKodu;
               end;

               if copy(tanilar,1,1) = ','
               then
                tanilar := copy(tanilar,2,100);

               if (length(tanilar) > 0) and (tanilar[length(tanilar)] = ',')
               then
                tanilar := copy(tanilar,1,length(tanilar)-1);

                memDataRaporlar.FieldByName('tani').AsString := tanilar;

               if pos('N18',upperCase(tanilar)) = 0
               Then ShowMessageSkin('Rapor Tanýlarý içinde N18 Tanýsý Yoktur',
                                    'Lütfen Kontrol Ediniz. !','','info');

               MemTable_Doktorlar.Active := false;
               MemTable_Doktorlar.Active := True;
               for y := 0 to Length(RaporCvp.raporlar[x].tedaviRapor.raporDVO.doktorlar) - 1 do
               begin
                 if RaporCvp.raporlar[x].tedaviRapor.raporDVO.doktorlar[y].drBransKodu <> '1062'
                 Then Showmessageskin('Doktor Branþ Nefroloji Deðildir','Lütfen Kontrol Edin','','info');
                 MemTable_Doktorlar.Append;
                 MemTable_Doktorlardrtescil.Value := RaporCvp.raporlar[x].tedaviRapor.raporDVO.doktorlar[y].drTescilNo;
                 MemTable_Doktorlardradi.Value := RaporCvp.raporlar[x].tedaviRapor.raporDVO.doktorlar[y].drAdi;
                 MemTable_DoktorlardrSoyadi.Value := RaporCvp.raporlar[x].tedaviRapor.raporDVO.doktorlar[y].drSoyadi;
                 MemTable_Doktorlardrbrans.Value := RaporCvp.raporlar[x].tedaviRapor.raporDVO.doktorlar[y].drBransKodu;
                 MemTable_DoktorlarraporTakipNo.Value := inttostr(RaporCvp.raporlar[x].raporTakipNo);
                 MemTable_Doktorlar.Post;
               end;

              End;
            End;


            if  RaporCvp.raporlar[x].raporTuru = '10'
            Then Begin
              memDataRaporlar.FieldByName('raporTakipNo').AsString := inttostr(RaporCvp.raporlar[x].raporTakipNo);
              memDataRaporlar.FieldByName('raporTarihi').AsString := RaporCvp.raporlar[x].ilacRapor.raporDVO.raporBilgisi.tarih;
              memDataRaporlar.FieldByName('raporNo').AsString := RaporCvp.raporlar[x].ilacRapor.raporDVO.raporBilgisi.no;
              memDataRaporlar.FieldByName('verenTesis').AsString := inttostr(RaporCvp.raporlar[x].ilacRapor.raporDVO.raporBilgisi.raporTesisKodu);
              memDataRaporlar.FieldByName('baslangicTarihi').AsString := RaporCvp.raporlar[x].ilacRapor.raporDVO.baslangicTarihi;
              memDataRaporlar.FieldByName('bitisTarihi').AsString := RaporCvp.raporlar[x].ilacRapor.raporDVO.bitisTarihi;
            //  memDataRaporlar.FieldByName('tedaviRaporTuru').AsString := inttostr(RaporCvp.raporlar[x].ilacRapor.tedaviRaporTuru);
              memDataRaporlar.FieldByName('protokolNo').AsString := RaporCvp.raporlar[x].ilacRapor.raporDVO.protokolNo;
              memDataRaporlar.FieldByName('protokolTarihi').AsString := RaporCvp.raporlar[x].ilacRapor.raporDVO.protokolTarihi;
              memDataRaporlar.FieldByName('Aciklama').AsString := raporCvp.raporlar[x].ilacRapor.raporDVO.aciklama;


            End;
            (*
            for i := 0 to length(RaporCvp.raporlar[x].tedaviRapor.raporDVO.doktorlar) - 1 do
            begin

               memDataRaporDoktor.Append;
               memDataRaporDoktor.FieldByName('raporTakipNo').AsString := inttostr(RaporCvp.raporlar[x].raporTakipNo);
               memDataRaporDoktor.FieldByName('drTescil').AsString :=
               RaporCvp.raporlar[x].tedaviRapor.raporDVO.doktorlar[i].drTescilNo;
               memDataRaporDoktor.FieldByName('dradi').AsString := RaporCvp.raporlar[x].tedaviRapor.raporDVO.doktorlar[i].drAdi;
               memDataRaporDoktor.FieldByName('drSoyadi').AsString := RaporCvp.raporlar[x].tedaviRapor.raporDVO.doktorlar[i].drSoyadi;
               memDataRaporDoktor.FieldByName('drbrans').AsString := RaporCvp.raporlar[x].tedaviRapor.raporDVO.doktorlar[i].drBransKodu;
               memDataRaporDoktor.FieldByName('tip').AsString := RaporCvp.raporlar[x].tedaviRapor.raporDVO.doktorlar[i].tipi;
               memDataRaporDoktor.Post;

            end;

              *)
            memDataRaporlar.Post;
          End;
       End;

       memDataRaporlar.First;



end;
    }

procedure TfrmHizliKayit.Rapor;
var
  x , i ,y : integer;
  tanilar : string;
begin
       if datalar.RaporIslemWS.RaporAraCevap.sonucKodu = 0
       Then Begin
          for x := 0 to Length(datalar.RaporIslemWS.RaporAraCevap.raporlar) - 1 do
          Begin
            memDataRaporlar.Append;
            memDataRaporlar.FieldByName('raporTuru').AsString := datalar.RaporIslemWS.RaporAraCevap.raporlar[x].raporTuru;
            if  datalar.RaporIslemWS.RaporAraCevap.raporlar[x].raporTuru = '1'
            Then begin
              if datalar.RaporIslemWS.RaporAraCevap.raporlar[x].tedaviRapor.tedaviRaporTuru = 1
              Then Begin
               memDataRaporlar.FieldByName('raporTakipNo').AsString := inttostr(datalar.RaporIslemWS.RaporAraCevap.raporlar[x].raporTakipNo);
               memDataRaporlar.FieldByName('raporTarihi').AsString := datalar.RaporIslemWS.RaporAraCevap.raporlar[x].tedaviRapor.raporDVO.raporBilgisi.tarih;
               memDataRaporlar.FieldByName('raporNo').AsString := datalar.RaporIslemWS.RaporAraCevap.raporlar[x].tedaviRapor.raporDVO.raporBilgisi.no;
               memDataRaporlar.FieldByName('verenTesis').AsString := inttostr(datalar.RaporIslemWS.RaporAraCevap.raporlar[x].tedaviRapor.raporDVO.raporBilgisi.raporTesisKodu);
               memDataRaporlar.FieldByName('baslangicTarihi').AsString := datalar.RaporIslemWS.RaporAraCevap.raporlar[x].tedaviRapor.raporDVO.baslangicTarihi;
               memDataRaporlar.FieldByName('bitisTarihi').AsString := datalar.RaporIslemWS.RaporAraCevap.raporlar[x].tedaviRapor.raporDVO.bitisTarihi;
               memDataRaporlar.FieldByName('tedaviRaporTuru').AsString := inttostr(datalar.RaporIslemWS.RaporAraCevap.raporlar[x].tedaviRapor.tedaviRaporTuru);
               memDataRaporlar.FieldByName('protokolNo').AsString := datalar.RaporIslemWS.RaporAraCevap.raporlar[x].tedaviRapor.raporDVO.protokolNo;
               memDataRaporlar.FieldByName('protokolTarihi').AsString := datalar.RaporIslemWS.RaporAraCevap.raporlar[x].tedaviRapor.raporDVO.protokolTarihi;
               memDataRaporlar.FieldByName('Aciklama').AsString := datalar.RaporIslemWS.RaporAraCevap.raporlar[x].tedaviRapor.raporDVO.aciklama;
  //            memDataRaporlar.FieldByName('tani').AsString :=
               memDataRaporlar.FieldByName('seansGun').AsInteger := datalar.RaporIslemWS.RaporAraCevap.raporlar[x].tedaviRapor.islemler[0].diyalizRaporBilgisi.seansGun;
               memDataRaporlar.FieldByName('seansSayi').AsInteger := datalar.RaporIslemWS.RaporAraCevap.raporlar[x].tedaviRapor.islemler[0].diyalizRaporBilgisi.seansSayi;
               memDataRaporlar.FieldByName('butKodu').AsString := datalar.RaporIslemWS.RaporAraCevap.raporlar[x].tedaviRapor.islemler[0].diyalizRaporBilgisi.butKodu;
               tanilar := '';
               for y := 0 to Length(datalar.RaporIslemWS.RaporAraCevap.raporlar[x].tedaviRapor.raporDVO.tanilar) - 1 do
               begin
                 tanilar := tanilar + ',' +
                 datalar.RaporIslemWS.RaporAraCevap.raporlar[x].tedaviRapor.raporDVO.tanilar[y].taniKodu;
               end;

               if copy(tanilar,1,1) = ','
               then
                tanilar := copy(tanilar,2,100);

               if (length(tanilar) > 0) and (tanilar[length(tanilar)] = ',')
               then
                tanilar := copy(tanilar,1,length(tanilar)-1);

                memDataRaporlar.FieldByName('tani').AsString := tanilar;

               if pos('N18',upperCase(tanilar)) = 0
               Then ShowMessageSkin('Rapor Tanýlarý içinde N18 Tanýsý Yoktur',
                                    'Lütfen Kontrol Ediniz. !','','info');

               MemTable_Doktorlar.Active := false;
               MemTable_Doktorlar.Active := True;
               for y := 0 to Length(datalar.RaporIslemWS.RaporAraCevap.raporlar[x].tedaviRapor.raporDVO.doktorlar) - 1 do
               begin
                 if datalar.RaporIslemWS.RaporAraCevap.raporlar[x].tedaviRapor.raporDVO.doktorlar[y].drBransKodu <> '1062'
                 Then Showmessageskin('Doktor Branþ Nefroloji Deðildir','Lütfen Kontrol Edin','','info');
                 MemTable_Doktorlar.Append;
                 MemTable_Doktorlardrtescil.Value := datalar.RaporIslemWS.RaporAraCevap.raporlar[x].tedaviRapor.raporDVO.doktorlar[y].drTescilNo;
                 MemTable_Doktorlardradi.Value := datalar.RaporIslemWS.RaporAraCevap.raporlar[x].tedaviRapor.raporDVO.doktorlar[y].drAdi;
                 MemTable_DoktorlardrSoyadi.Value := datalar.RaporIslemWS.RaporAraCevap.raporlar[x].tedaviRapor.raporDVO.doktorlar[y].drSoyadi;
                 MemTable_Doktorlardrbrans.Value := datalar.RaporIslemWS.RaporAraCevap.raporlar[x].tedaviRapor.raporDVO.doktorlar[y].drBransKodu;
                 MemTable_DoktorlarraporTakipNo.Value := inttostr(datalar.RaporIslemWS.RaporAraCevap.raporlar[x].raporTakipNo);
                 MemTable_Doktorlar.Post;
               end;

              End;
            End;


            memDataRaporlar.Post;
         // End;
       End;

       memDataRaporlar.First;

end;

end;


procedure TfrmHizliKayit.RbRtClick(Sender: TObject);
begin
  cxLabel1.Caption := 'Rapor Takip No';
  cxLabel2.Visible := false;
  cxLabel4.Visible := false;
  txtTakipTarihi.Visible := false;
  txtilkTakip.Text := '';
  txtilkTakip.Visible := false;

end;

procedure TfrmHizliKayit.RbTcClick(Sender: TObject);
begin
  cxLabel1.Caption := 'TC Kimlik No';
  cxLabel2.Visible := True;
  cxLabel4.Visible := True;
  txtTakipTarihi.Visible := True;
  txtilkTakip.Visible := True;
end;



procedure TfrmHizliKayit.MemTable_DoktorlarAfterScroll(DataSet: TDataSet);
begin
 // if MemTable_Doktorlardrbrans.Value <> '1062'
 // Then Showmessageskin('Doktor Branþ Nefroloji Deðildir','Lütfen Kontrol Edin','','info');
end;


function TfrmHizliKayit.Init(Sender: TObject): Boolean;
begin
   if not inherited Init(Sender) then exit;
   txtSigortaliTuru.Filter := '';
   txtDevredilenKurum.Filter := '';

   txtTakipTarihi.Date := Date;
   txtTcKimlikNoAra.Text := _TC_;
   txtTel.Text := _mobilTel_;
   txtAdres.Text := ifThen(_adres_= '','.',_adres_);

   if _Tc_ <> ''
   then
    btnKabul.Visible := False
   else
    btnKabul.Visible := True;


   Result := True;
end;

procedure TfrmHizliKayit.FormCreate(Sender: TObject);
begin
     ClientHeight := 600;
     cxPanel.Visible := false;

end;

procedure TfrmHizliKayit.txtBranslarPropertiesChange(Sender: TObject);
var
  sql : string;
begin

  //   ShowMessage(ado.fieldbyname('SLX').AsString);

     sql := 'exec sp_KabulBransDoktorlari' + #39 + ado.fieldbyname('SLX').AsString + #39;
     datalar.QuerySelect(adodoktor,sql);
     txtdoktorlar.Properties.ListSource := datasourcedoktor;
end;

procedure TfrmHizliKayit.btnKabulClick(Sender: TObject);
var
   sql  , servis , gelisTip , Flist , Kontrol , _ord , _tip_ , ktip ,error : string;
   asim , yasi : integer;
   ado : TADOQuery;
   FTR : Boolean;
   _tutar_ : double;
   Form : TGirisForm;
begin

  ado := TADOQuery.Create(nil);
  datalar.ADOConnection2.BeginTrans;

  try
  ado.Connection := datalar.ADOConnection2;

  _tedaviTur := 'G';

  try
    sql := 'exec sp_YeniHastaKarti ' +
           '@KURUM = ' + #39 + '1000' + #39 +
           ',@SIGORTANO = ' + #39 + '0000' + #39 +
           ',@CINSIYETI = ' + #39 + inttostr(txtCinsiyet.ItemIndex) + #39 +
           ',@MEDENI = ' + #39 + '0' + #39 +
           ',@HASTAADI = ' + #39 + txtHastaAdi.Text + #39 +
           ',@HASTASOYADI = ' + #39 + txtHastaSoyAdi.Text + #39 +
           ',@BABAADI = ' + #39 + '' + #39 +
           ',@ANAADI = ' + #39 + '' + #39 +
           ',@EV_ADRES = ' + #39 + txtAdres.Text + #39 +
           ',@EV_PK = ' + #39 + '' + #39 +
           ',@EV_SEHIR = ' + #39 + '' + #39 +
           ',@EV_TEL1 = ' + #39 + txtTel.Text + #39 +
           ',@EV_TEL2 = ' + #39 + '' + #39 +
           ',@EMAIL = ' + #39 + 'a@' + #39 +
           ',@DOGUMYERI = ' + #39 + '' + #39 +
           ',@DOGUMTARIHI = ' + #39 + txtDogumTarihi.GetValue + #39 +
           ',@UYRUGU = ' + #39 + 'TR' + #39 +
           ',@TCKIMLIKNO = ' + #39 + txtTcKimlikNo.Text + #39 +
           ',@HUVIYETTIPI = ' + #39 + '1' + #39 +
           ',@HUVIYETNO = ' + #39 + '' + #39 +
           ',@KURUMTIPI = ' + #39 + varToStr(txtDevredilenKurum.EditValue) + #39 +
           ',@SICILNO = ' + #39 + '' + #39 +
           ',@KARNENO = ' + #39 + '' + #39 +
           ',@seans = ' + #39 + '1' + #39 +
           ',@seansSaat = ' + '4' +
           ',@SigortaliTur = ' + #39 + vartoStr(txtSigortaliTuru.EditValue)+ #39 +
           ',@seansTip = ' + #39 + '0' + #39 +
          (*
           ',@RaporTarih = ' + #39 + tarih(txtRaporTarihi.Text) + #39 +
           ',@GecerlikTarihi = ' + #39 + tarih (txtGecerlik.Text) + #39 +
           ',@sevkEdenTesis = ' + #39 + txtSevkEdenTesisKodu.Text + #39 +
           ',@sevkEdilenBrans = ' + #39 + txtSevkEdilenBrans.Text + #39 +
           ',@sevkEdenDoktor = ' + #39 + txtSevkEdenDoktorTescilNo.Text + #39 +
           ',@muayenAcilis = ' + #39 + tarih(txtMuayeneAcilisT.Text) + #39 +
            *)
           ',@PBH = ' + #39 + '' + #39 +
           ',@KH = ' + #39 + '' + #39 +
           ',@TS = ' + #39 + '' + #39 +
           ',@DS = ' + #39 + '' + #39 +
           ',@DC = ' + #39 + '' + #39 +
           ',@YA = ' + #39 + '' + #39 +
           ',@SD = ' + #39 + '' + #39 +
           ',@D = ' + #39 + '' + #39 +
           ',@DG = ' + #39 + '' + #39 +
           ',@H = ' + #39 + '' + #39 +
           ',@Yakinlik = ' + #39 + '' + #39 +
           ',@Baslangic = ' + #39 + '' + #39 +
           ',@hastaNot = ' + #39 + '' + #39 +
           ',@merkezdeBaslangic = ' + #39 + '' + #39 +
           ',@Istel1 = ' +  #39 + '' + #39 +
           ',@Istel2 = ' + #39 + '' + #39 +
           ',@vyer = ' + #39 + '' + #39 +
           ',@huviyetTarih = ' + #39 + '' + #39 +
           ',@kanGrubu = ' + #39 + '8' + #39 +
           ',@USER_ID = ' + #39 + kullanici + #39 +
           ',@DATE_CREATE = ' + #39 + tarihal(date) + #39 +
          // ',@raporNo = ' + #39 + txtRaporNo.Text + #39 +
           ',@hastaTip = ' + #39 + '0' + #39 +
           ',@makinaNo = ' + #39 + '' + #39 +
           ',@idealKilo = ' + QuotedStr('0') +
           ',@Hepatit = ' + QuotedStr('') +
           ',@HIV = ' + QuotedStr('') +
           ',@aday = ' + QuotedStr('') +
           ',@Sandalye = ' + '0' +
           ',@APH = ' + QuotedStr('') +
           ',@Na = ' + QuotedStr('') +
           ',@Boy = ' + '0' +
           ',@Tip = ' + QuotedStr('H') +
           ',@vatandasTip = ' + QuotedStr('1') +
           ',@sirketKod = ' + QuotedStr(datalar.AktifSirket);


    datalar.QuerySelect(ado,sql);
    _dosyaNo := FormatFloat('000000',ado.fieldbyname('DosyaNo').Asfloat);


   sql := 'exec sp_HastaGelisKaydet ' +
          '@dosyaNo = ' + #39 + _dosyaNo + #39 + ',' +
          '@gelisNo = 0' + ',' +
          '@BHDAT = ' + #39 + tarihal(txtTakipTarihi.Date)  + #39 + ',' +
          '@doktor = ' + #39 + '' + #39 + ',' +
          '@SERVIS = ' + #39 + datalar.KurumBransi + #39 + ',' +
          '@TEDAVITURU = ' + #39 + 'G' + #39 + ',' +
          '@Kullanici = ' + #39 + datalar.username + #39 + ',' +
          '@TakipNo = '   + QuotedStr(txtTakipNo.Text) + ',' +
          '@basvuruNo = ' + QuotedStr(txtBasvuruNo.Text) ;


           datalar.QuerySelect(ado,sql);
          _gelisNo := ado.Fieldbyname('Gelis').AsString;
          error := ado.Fieldbyname('error').AsString;



   if memDataRaporlar.fieldbyname('raporNo').AsString <> ''
   then begin
       sql := 'select * from raporlar where dosyaNo = ' + QuotedStr(_dosyaNo) +
              ' and raporNo = ' + QuotedStr(memDataRaporlar.fieldbyname('raporNo').AsString);

       datalar.QuerySelect(ado,sql);

       if ado.Eof
       Then Begin
             sql := 'insert into raporlar (dosyaNo,raporNo,raporTarihi,verenTesisKodu,raporTakipno,turu,baslangicTarihi,bitisTarihi,' +
                    'protokolNo,protokolTarihi,tedaviRaporTuru,seansGun,SeansSayi,aktif,butKodu) ' +
                    ' values ( ' + QuotedStr(_dosyaNo) + ','
                                 + QuotedStr(memDataRaporlar.fieldbyname('raporNo').AsString) + ','
                                 + QuotedStr(Tarih(memDataRaporlar.fieldbyname('raporTarihi').AsString)) + ','
                                 + QuotedStr(memDataRaporlar.fieldbyname('verenTesis').AsString)  + ','
                                 + QuotedStr(memDataRaporlar.fieldbyname('raporTakipNo').AsString) + ','
                                 + QuotedStr(memDataRaporlar.fieldbyname('raporTuru').AsString) + ','
                                 + ' cast( ' + QuotedStr(tarihal(memDataRaporlar.fieldbyname('baslangicTarihi').Asdatetime)) + '  as datetime) ' + ','
                                 + ' cast( ' + QuotedStr(tarihal(memDataRaporlar.fieldbyname('bitisTarihi').AsDateTime)) + '  as datetime) ' + ','
                                 + QuotedStr(memDataRaporlar.fieldbyname('protokolNo').AsString) + ','
                                 + ' cast( ' + QuotedStr(tarihal(memDataRaporlar.fieldbyname('protokolTarihi').AsDateTime)) + '  as datetime) ' + ','
                                 + QuotedStr(memDataRaporlar.fieldbyname('tedaviRaporTuru').AsString) + ','
                                 + memDataRaporlar.fieldbyname('seansGun').AsString + ','
                                 + memDataRaporlar.fieldbyname('seansSayi').AsString + ',1' + ','
                                 + QuotedStr(memDataRaporlar.FieldByName('butKodu').AsString) +

                                 ')' ;
                               //  + memDataRaporlar.fieldbyname('seansSayi').AsString + ','
                                // + memDataRaporlar.fieldbyname('Tani').AsString + ')';

             datalar.QueryExec(sql);
             ShowMessageSkin('Hasta Sisteme Aktarýldý',
                             error,'','info');
        End
       Else
         ShowMessageSkin('Rapor Sistemde Kayýtlý','','','info');
   end;


   // datalar.Bilgi.dosyaNo := ado_BransKodlari.FieldByName('dosyaNo').AsString;
  //  FormINIT(TagfrmHastaKart,AnaForm,ado_BransKodlari.FieldByName('dosyaNo').AsString);
   if FindTab(AnaForm.sayfalar,TagfrmHastaKart)
   Then begin
     Form := TGirisForm(FormClassType(TagfrmHastaKart));
     TGirisForm(FormClassType(TagfrmHastaKart))._dosyaNO_ := _dosyaNo;
     TGirisForm(FormClassType(TagfrmHastaKart))._TC_ := '';
     TGirisForm(FormClassType(TagfrmHastaKart)).Init(Form);
   end
   Else begin
    Form := FormINIT(TagfrmHastaKart,self,_dosyaNo,NewTab(AnaForm.sayfalar,TagfrmHastaKart),ikEvet,'Giriþ');
    if Form <> nil then Form.show;
   end;



   datalar.ADOConnection2.CommitTrans;
   close;
  except on e : Exception do
    begin
        datalar.ADOConnection2.RollbackTrans;
       ShowMessageSkin('Ýþlem Yapýlýrken Hata Oluþtu',e.Message,'','info');
       exit;
    end;
  end;

  finally
    ado.free;
  end;


end;

procedure TfrmHizliKayit.btnAraClick(Sender: TObject);
var
  cvp : string;
  _s_ : integer;
  _msg , tel : string;

 // RaporCvp1 :  RaporIslemleriWS.RaporCevapTCKimlikNodanDVO;
 // RaporCvpR : RaporIslemleriWS.RaporCevapDVO;
begin
   tel := trim(StringReplace(StringReplace(StringReplace(txtTel.Text,'(','',[rfReplaceAll]),')','',[rfReplaceAll]),'-','',[rfReplaceAll]));
   if (Length(tel) <> 10) or
      (txtAdres.Text = '') or
      (txtTcKimlikNoAra.Text = '') or
      (txtTakipTarihi.Text = '')
   then begin
     ShowMessageSkin('Sorgulama Bilgileri Eksik , yada Hatalý','','','info');
     exit;
   end;


   if RbTc.Checked
   then begin
        DurumGoster(True);
        try
          Application.ProcessMessages;

          datalar.HastaKabulWS.GirisParametre.saglikTesisKodu := datalar._kurumKod;
          datalar.HastaKabulWS.GirisParametre.takipTipi := copy(txtTakipturu.Text,1,1);
          datalar.HastaKabulWS.GirisParametre.tedaviTuru := 'G';
          datalar.HastaKabulWS.GirisParametre.tedaviTipi := trim(copy(txtTedaviTipi.Text,1,2));
          datalar.HastaKabulWS.GirisParametre.devredilenKurum := varToStr(txtDevredilenKurum.EditValue);
          datalar.HastaKabulWS.GirisParametre.provizyonTipi := copy(txtProvizyonTuru.Text,1,1);
          datalar.HastaKabulWS.GirisParametre.sigortaliTuru := varToStr(txtSigortaliTuru.EditValue);
          datalar.HastaKabulWS.GirisParametre.hastaTCKimlikNo := txtTcKimlikNoAra.Text;
          datalar.HastaKabulWS.GirisParametre.bransKodu := datalar.KurumBransi;
          datalar.HastaKabulWS.GirisParametre.provizyonTarihi := txtTakipTarihi.Text;
          datalar.HastaKabulWS.GirisParametre.takipNo := txtilkTakip.Text;
          datalar.HastaKabulWS.GirisParametre.hastaTelefon :=  tel;
          datalar.HastaKabulWS.GirisParametre.hastaAdres :=   TrtoEng(txtAdres.Text);

          //HastaKabul.GirisParametre.yeniDoganBilgisi := nil;

          datalar.HastaKabulWS.TakipAl_3KimlikDorulama;

       if (datalar.HastaKabulWS.Cevap.sonucKodu = '0000') or
          (datalar.HastaKabulWS.Cevap.sonucKodu = '0008') or
          (datalar.HastaKabulWS.Cevap.sonucKodu = '9000')
       Then BEgin
          txtTakipNo.Text := datalar.HastaKabulWS.Cevap.takipNo;
          txtBasvuruNo.Text := datalar.HastaKabulWS.Cevap.hastaBasvuruNo;
          txtHastaAdi.Text := datalar.HastaKabulWS.Cevap.hastaBilgileri.ad;
          txtHastaSoyadi.Text := datalar.HastaKabulWS.Cevap.hastaBilgileri.soyad;
          txtTcKimlikNo.Text := datalar.HastaKabulWS.Cevap.hastaBilgileri.tcKimlikNo;
          txtdogumTarihi.EditValue := strTodate(datalar.HastaKabulWS.Cevap.hastaBilgileri.dogumTarihi);
          txtCinsiyet.ItemIndex := strtoint(ifThen(datalar.HastaKabulWS.Cevap.hastaBilgileri.cinsiyet = 'E','0','1'));
          btnKabul.Enabled := true;
          txtSigortaliTuru.EditValue := datalar.HastaKabulWS.Cevap.hastaBilgileri.sigortaliTuru;
          txtDevredilenKurum.EditValue := datalar.HastaKabulWS.Cevap.hastaBilgileri.devredilenKurum;

          _value_ := txtTcKimlikNoAra.Text;
          HastaRaporlariBul(_value_,'1');
          txtilkTakip.Text := '';
          txtTcKimlikNoAra.Text := '';

         if datalar.RaporIslemWS.RaporAraCevap.sonucKodu = 0
         Then
           Rapor
         Else
         cxPageControl2.ActivePageIndex := 1;
         txtHata.Lines.Add(datalar.RaporIslemWS.RaporAraCevap.sonucAciklamasi);


       End
       Else
         cxPageControl2.ActivePageIndex := 1;
         txtHata.Lines.Add(datalar.HastaKabulWS.Cevap.sonucKodu + ' : ' + datalar.HastaKabulWS.Cevap.sonucMesaji);

        finally
          DurumGoster(false);
        end;

   end;


   if RbRt.Checked
   then begin
      (*
       txtinfo.Caption := 'Rapor Bilgisi Sorgulanýyor.....';
       Application.ProcessMessages;

          memDataRaporlar.Close;
          memDataRaporlar.Active := True;
          RaporCvpR := RaporCevapDVO.Create;
          _msg := raporOkuRaporTakip(txtTcKimlikNoAra.Text,'1',RaporCvpR,datalar.Rapor_);

         if _msg = '0'
         Then begin
           Rapor(RaporCvpR);
           txtilkTakip.Text := '';
           txtTakipNo.Text := '';
           txtBasvuruNo.Text := '';
           txtHastaAdi.Text := RaporCvpR.tedaviRapor.raporDVO.hakSahibi.adi; //copy(HastaBilgi.Adi,1,_s_-1);
           txtHastaSoyadi.Text := RaporCvpR.tedaviRapor.raporDVO.hakSahibi.soyadi; //copy(HastaBilgi.Adi,_s_+1,50);
           txtTcKimlikNo.Text := RaporCvpR.tedaviRapor.raporDVO.hakSahibi.tckimlikNo;
          // txtdogumTarihi.Text := '';//HastaBilgi.DTarihi;
          // txtCinsiyet.ItemIndex := strtoint(ifThen(HastaBilgi.Cinsiyet = 'E','0','1'));
           btnKabul.Enabled := true;
           txtSigortaliTuru.Text := RaporCvpR.tedaviRapor.raporDVO.hakSahibi.sigortaliTuru;
           txtDevredilenKurum.Text := RaporCvpR.tedaviRapor.raporDVO.hakSahibi.devredilenKurum;
         end
         Else
         cxPageControl2.ActivePageIndex :=1;
         txtHata.Lines.Add(_msg);


       End
       Else begin
         cxPageControl2.ActivePageIndex := 1;
         txtHata.Lines.Add(cvp);

          *)

   end;




end;

procedure TfrmHizliKayit.btnVazgecClick(Sender: TObject);
var
  cvp : string;
begin

   cvp := TakipSil_3(txtTakipNo.Text);

   if datalar.HastaKabulWS.CevapSil.sonucKodu  = '0000'
   Then Begin
     txtTakipNo.Text := '';
     txtBasvuruNo.Text := '';
     txtHastaAdi.Text := '';
     txtHastaSoyadi.Text := '';
     txtdogumTarihi.Text := '';
     memDataRaporlar.Close;
     ShowMessageSkin('Takip Ýptal Edildi','','','info');
     close;
   End
   Else
   Begin
     cxPageControl2.ActivePageIndex := 1; 
     txtHata.Lines.Add(cvp);
   End;


end;

procedure TfrmHizliKayit.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   inherited;

   if key = vk_f5
   Then btnAra.Click;

   if key = vk_f4
   Then btnKabul.Click;

 (*
  if (key = VK_ESCAPE) and (Shift = [ssCtrl])
  then begin
     close;
  end;
   *)



end;

procedure TfrmHizliKayit.txtBranslarClick(Sender: TObject);
begin

   if (copy(txtBranslar.Text,1,4) = '9999') or
      (copy(txtBranslar.Text,1,4) = '4400')
  Then txtProvizyonTuru.text := 'A-ACÝL'
  Else txtProvizyonTuru.text := 'N-NORMAL';
  

end;

end.
