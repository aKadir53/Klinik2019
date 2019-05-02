unit HastaSeansIsle;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, Menus, StdCtrls, cxButtons, cxGroupBox, DB, ADODB,
  cxTextEdit, cxMaskEdit, cxButtonEdit, cxDBEdit,kadirType,KadirLabel,Kadir,
  GirisUnit,Data_Modul, cxDropDownEdit, cxImageComboBox, cxStyles,KadirMedula3,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, dxSkinsCore, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinsDefaultPainters,
  cxPCdxBarPopupMenu, cxCheckBox, cxCalendar, cxDBLookupComboBox, cxImage,
  cxCurrencyEdit, cxMemo, cxLabel, cxVGrid, cxDBVGrid, cxInplaceContainer,
  cxGridBandedTableView, cxGridDBBandedTableView, dxLayoutContainer,
  dxLayoutControl, cxPC, Vcl.Buttons,cxDataUtils,GetformClass;

type
  TfrmHastaSeans = class(TGirisForm)
    PageControl_Seans: TcxPageControl;
    Seanslar_Sayfa: TcxTabSheet;
    PageControl_Sayfa_Panel: TcxGroupBox;
    cxGrid_Seans: TcxGridKadir;
    ListeS: TcxGridDBBandedTableView;
    ListeSiraNumarasi: TcxGridDBBandedColumn;
    cxGridDBBandedColumn1: TcxGridDBBandedColumn;
    cxGridDBBandedColumn2: TcxGridDBBandedColumn;
    ListehastaAdi: TcxGridDBBandedColumn;
    ListeSColumn1: TcxGridDBBandedColumn;
    Listesirano: TcxGridDBBandedColumn;
    Listedurum: TcxGridDBBandedColumn;
    ListeDiyalizorTipi: TcxGridDBBandedColumn;
    ListeUTarih: TcxGridDBBandedColumn;
    ListeUTarihDateTime: TcxGridDBBandedColumn;
    ListeDoktorKod: TcxGridDBBandedColumn;
    cxGridDBBandedColumn3: TcxGridDBBandedColumn;
    ListeTalepSira: TcxGridDBBandedColumn;
    ListeislemSiraNoYatak: TcxGridDBBandedColumn;
    ListesiranoYatis: TcxGridDBBandedColumn;
    ListeTakpNo: TcxGridDBBandedColumn;
    ListeSERVIS: TcxGridDBBandedColumn;
    ListemakinaNo: TcxGridDBBandedColumn;
    ListebasvuruNo: TcxGridDBBandedColumn;
    ListeraporTakipNo: TcxGridDBBandedColumn;
    ListeraporNo: TcxGridDBBandedColumn;
    ListeraporTarihi: TcxGridDBBandedColumn;
    ListeverenTesisKodu: TcxGridDBBandedColumn;
    ListeseansGun: TcxGridDBBandedColumn;
    ListeseansSayi: TcxGridDBBandedColumn;
    ListebaslangicTarihi: TcxGridDBBandedColumn;
    ListeBitisTarihi: TcxGridDBBandedColumn;
    ListeADI: TcxGridDBBandedColumn;
    Listefoto: TcxGridDBBandedColumn;
    ListeSeans: TcxGridDBBandedColumn;
    ListeTCKIMLIKNO: TcxGridDBBandedColumn;
    ListeSNProtokolNo: TcxGridDBBandedColumn;
    ListeGIRISKILO: TcxGridDBBandedColumn;
    ListeCIKISKILO: TcxGridDBBandedColumn;
    ListeIdealKilo: TcxGridDBBandedColumn;
    ListeseansKontrol: TcxGridDBBandedColumn;
    ListeGIRISYOLU: TcxGridDBBandedColumn;
    ListeDC: TcxGridDBBandedColumn;
    ListeD: TcxGridDBBandedColumn;
    ListeYA: TcxGridDBBandedColumn;
    ListeAPH: TcxGridDBBandedColumn;
    ListeKanAlindimi: TcxGridDBBandedColumn;
    ListeVatandasTip: TcxGridDBBandedColumn;
    Listebhdat: TcxGridDBBandedColumn;
    Listesebeb: TcxGridDBBandedColumn;
    ListeTanG: TcxGridDBBandedColumn;
    ListeTanC: TcxGridDBBandedColumn;
    ListeNabizG: TcxGridDBBandedColumn;
    ListeNabizC: TcxGridDBBandedColumn;
    ListeTanGK: TcxGridDBBandedColumn;
    ListeTanCK: TcxGridDBBandedColumn;
    ListeHemodiyalizTip: TcxGridDBBandedColumn;
    ListeCins: TcxGridDBBandedColumn;
    ListeseansRaporKontrol: TcxGridDBBandedColumn;
    Listekod: TcxGridDBBandedColumn;
    ListeMedulaDonenKod: TcxGridDBBandedColumn;
    cxGridDBBandedColumn4: TcxGridDBBandedColumn;
    cxGridDBBandedColumn5: TcxGridDBBandedColumn;
    ListeColumn3: TcxGridDBBandedColumn;
    ListeColumn4: TcxGridDBBandedColumn;
    ListeSColumn2: TcxGridDBBandedColumn;
    cxGrid2Level1: TcxGridLevel;
    Sayfa_Log: TcxTabSheet;
    txtHatalar1: TcxMemo;
    PopupMenu5: TPopupMenu;
    S2: TMenuItem;
    S3: TMenuItem;
    N6: TMenuItem;
    s5: TMenuItem;
    S4: TMenuItem;
    D1: TMenuItem;
    N7: TMenuItem;
    S6: TMenuItem;
    N8: TMenuItem;
    H1: TMenuItem;
    ADO_Detay_toplam: TADOQuery;
    DataSource5: TDataSource;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyleRepository2: TcxStyleRepository;
    cxStyle2: TcxStyle;
    cxStyleRepository3: TcxStyleRepository;
    cxStyle3: TcxStyle;
    cxGroupBox2: TcxGroupBox;
    chkTahlil: TcxCheckBox;
    chkMesai: TcxCheckBox;
    cxDBVerticalGrid1: TcxDBVerticalGrid;
    ListeAc2: TListeAc;
    ListeSColumn3: TcxGridDBBandedColumn;
    ListeSColumn4: TcxGridDBBandedColumn;
    S1: TMenuItem;
    S7: TMenuItem;
    cxDBVerticalGrid1DBMultiEditorRow1: TcxDBMultiEditorRow;
    ListeSColumn5: TcxGridDBBandedColumn;
    ENabzHizmetKayt1: TMenuItem;
    N1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure cxKaydetClick(Sender: TObject);override;
    procedure cxTextEditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxEditEnter(Sender: TObject);
    procedure cxEditExit(Sender: TObject);
    procedure cxTextEditBKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxButtonCClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SeansGetir;
    procedure ListeSFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure ListeSCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure SeansSil;
    procedure MedulayaGonder;
    procedure MEduladanSil;
    procedure DamarIziKontrol;
    procedure IzlemFormu;
    procedure SeansDuzenle;
    procedure DoktorBilgisiDegis;
    procedure SeansOlustur;
    Procedure SeansOnay(Durum : integer);
    function digerIslemTalepDoldur(satir : integer) : Boolean;
    procedure ListeraporTakipNoPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);

  private
    { Private declarations }
  public
      function Init(Sender: TObject) : Boolean; override;
    { Public declarations }

  end;

const _TableName_ = 'Hareketler';
      formGenislik = 900;
      formYukseklik = 580;
      SQL = 'select * from Hareketler where dosyaNO = %s and gelisNo = %s and Tip = ''S''';
var
  frmHastaSeans: TfrmHastaSeans;


implementation
    uses AnaUnit, SeansDetayKarti;
{$R *.dfm}

function TfrmHastaSeans.Init(Sender : TObject) : Boolean;
begin
  Result := False;
  if not inherited Init(Sender) then exit;
  _HastaBilgileriniCaptionGoster_ := false;
  cxTab.Tabs[0].Caption := _HastaAdSoyad_;
  Image2.Visible := False;
  SeansGetir;
  Result := True;
end;

procedure TfrmHastaSeans.SeansOlustur;
var
  _gun , x , y  : integer;
  gun : integer;
  _tarih , _btarih,_starih : tDate;
  diyalizor : string;
  gunler : string;
  dosyaNo , kod ,sql : string;
  ado : TADOQuery;
begin
    datalar.SeansOlusturPrm.ilkSeansTarihi := tarihyap(_provizyonTarihi_);
    if mrYes = ShowPopupForm('Seans Oluþtur',SeansInsert)
    Then Begin
         if datalar.SeansOlusturPrm.araSeans = True
         then datalar.SeansOlusturPrm.sonSeansTarihi := datalar.SeansOlusturPrm.ilkSeansTarihi;

         if HastaKontrol(_dosyaNo_) = false
         then begin
             ShowMessageSkin('Hasta Pasif Durumda Seans Açýlamaz...','','','info');
             exit;
         end;

         gun := round(datalar.SeansOlusturPrm.gunSayisi);
         gunler := seansgun(_dosyaNo_);

         x := 1;

         if gun = 0
         then begin
             _tarih := datalar.SeansOlusturPrm.ilkSeansTarihi;
             _starih := datalar.SeansOlusturPrm.ilkSeansTarihi;
             _btarih := datalar.SeansOlusturPrm.sonSeansTarihi;
             while _btarih >= _tarih do
             begin
                 if datalar.SeansOlusturPrm.ilkSeansTarihi = null
                 then begin
                     ShowMessageSkin('Seans Baþlangýç tarihi belirtilmemiþ','','','info');
                     exit;
                 end;
                _gun := DayOfWeek(datalar.SeansOlusturPrm.ilkSeansTarihi);

                if (pos(inttostr(_gun),gunler) <> 0) or
                   (datalar.SeansOlusturPrm.araSeans = True)
                then begin


                   kod := datalar.SeansOlusturPrm.SeansKodu;

                   sql := 'if not exists(SELECT * FROM hareketler WHERE dosyaNo = ' + QuotedStr(_dosyaNo_) +
                          ' AND gelisNo = ' + _gelisNo_ +
                          ' AND Tarih = ' + QuotedStr(tarihal(datalar.SeansOlusturPrm.ilkSeansTarihi)) + 'and Tip = ''S'')' +
                          '  BEGIN ' +
                          'insert into Hareketler (dosyaNo,gelisNo,gelisSIRANO,Tarih,durum,DiyalizorTipi,DiyalizorCinsi,D,GIRISYOLU,' +
                                                  'APH,Na,Igne,IgneV,HEPARIN,HEPARINTIP,HEPARINUYG,IdealKilo,Doktor,makinaNo,sebeb,Seans,code,Tip) ' +
                          'values ( ' + #39 + _dosyaNo_ + #39+ ','+ _gelisNo_ + ',' + _gelisSiraNo_ + ','
                          + #39 + tarihal(datalar.SeansOlusturPrm.ilkSeansTarihi) + #39 + ','
                          + #39 + '0' + #39 + ','
                          + #39 + _SeansBilgi.DiyalizorTipi + #39 + ',' //DiyalizorTipi
                          + #39 + _SeansBilgi.DiyalizorCinsi + #39 + ','  //DiyalizorCinsi
                          + #39 + _SeansBilgi.Diyalizat + #39 + ','
                          + #39 + _SeansBilgi.GirisYolu + #39 + ','
                          + #39 + _SeansBilgi.APH + #39 + ','
                          + #39 + _SeansBilgi.Na + #39 + ','
                          + #39 + _SeansBilgi.Igne + #39 + ','
                          + #39 + _SeansBilgi.IgneV + #39 + ','
                          + #39 + _SeansBilgi.Heparin + #39 + ','
                          + #39 + _SeansBilgi.HeparinTip + #39 + ','
                          + #39 + _SeansBilgi.HeparinUyg + #39 + ','
                          + #39 + _SeansBilgi.Kilo + #39 + ','
                          + #39 + copy(_doktor_,1,4) + #39 + ','
                          + #39 + _Makina_ + #39 + ','
                          + QuotedStr('') + ','
                          + QuotedStr(_Seans_[1]) + ','
                          + QuotedStr(kod) + ','
                          + QuotedStr('S') +
                          ')' +
                          ' END ';
                   datalar.QueryExec(sql);
                  end;
                _tarih := datalar.SeansOlusturPrm.ilkSeansTarihi;
                _tarih := _tarih + 1;
                datalar.SeansOlusturPrm.ilkSeansTarihi := _tarih;
                if _tarih > _btarih Then Break;
             end; // while end
         end; // gun = 0 end


         if gun > 0
         then begin
             while gun >= x do
             begin
                 if datalar.SeansOlusturPrm.ilkSeansTarihi = null
                 then begin
                     ShowMessageSkin('Seans Baþlangýç tarihi belirtilmemiþ','','','info');
                     exit;
                 end;
                _gun := DayOfWeek(datalar.SeansOlusturPrm.ilkSeansTarihi);

                if pos(inttostr(_gun),gunler) <> 0
                then begin

                     kod := datalar.SeansOlusturPrm.SeansKodu;

                     sql := 'if not exists(SELECT * FROM Hareketler WHERE dosyaNo = ' + QuotedStr(_dosyaNo_) +
                            ' AND gelisNo = ' + _gelisNo_ +
                            ' AND tarih = ' + QuotedStr(tarihal(datalar.SeansOlusturPrm.ilkSeansTarihi)) + ' and Tip = ''S'')' +
                            '  BEGIN ' +
                            'insert into Hareketler (dosyaNo,gelisNo,gelisSIRANO,tarih,durum,DiyalizorTipi, DiyalizorCinsi,D,GIRISYOLU,' +
                                                    'APH,Na,Igne,IgneV,HEPARIN,HEPARINTIP,HEPARINUYG,IdealKilo,Doktor,makinaNo,sebeb,Seans,code,Tip) ' +
                            'values ( ' + #39 + _dosyaNo_ + #39+ ','+ _gelisNo_ + ',' + _gelisSiraNo_ + ','
                            + #39 + tarihal(datalar.SeansOlusturPrm.ilkSeansTarihi) + #39 + ','
                            + #39 + '0' + #39 + ','

                            + #39 + _SeansBilgi.DiyalizorTipi + #39 + ',' //DiyalizorTipi
                            + #39 + _SeansBilgi.DiyalizorCinsi + #39 + ','  //DiyalizorCinsi
                            + #39 + _SeansBilgi.Diyalizat + #39 + ','
                            + #39 + _SeansBilgi.GirisYolu + #39 + ','
                            + #39 + _SeansBilgi.APH + #39 + ','
                            + #39 + _SeansBilgi.Na + #39 + ','
                            + #39 + _SeansBilgi.Igne + #39 + ','
                            + #39 + _SeansBilgi.IgneV + #39 + ','
                            + #39 + _SeansBilgi.Heparin + #39 + ','
                            + #39 + _SeansBilgi.HeparinTip + #39 + ','
                            + #39 + _SeansBilgi.HeparinUyg + #39 + ','
                            + #39 + _SeansBilgi.Kilo + #39 + ','
                            + #39 + copy(_doktor_,1,4) + #39 + ','
                            + #39 + _Makina_ + #39 + ','
                            + QuotedStr('') + ','
                            + QuotedStr(_seans_[1]) + ','
                            + QuotedStr(kod) + ','
                            + QuotedStr('S') +
                            ')' +
                            ' END ';
                     datalar.QueryExec(sql);
                end;
                _tarih := datalar.SeansOlusturPrm.ilkSeansTarihi;
                _tarih := _tarih + 1;
                inc(x);
                datalar.SeansOlusturPrm.ilkSeansTarihi := _tarih;
             end;
         end;

         cxGrid_Seans.Dataset.Requery();
         cxGrid_Seans.Dataset.Next;
         ADO_Detay_toplam.Requery();

    End;

end;

procedure TfrmHastaSeans.SeansOnay(Durum: integer);
var
  sql,talep : string;
  St : TCheckBoxState;
  _r_,satir,sirano : integer;
begin
(*
   if UserRight('SEANS iÞLEMLERÝ', 'Sil') = False
   then begin
       ShowMessageSkin('Bu Ýþlem Ýçin Yetkiniz Bulunmamaktadýr !','','','info');
       exit;
   end;
  *)

  Datalar.SeansBilgi.hizmetSunucuRefNo := cxGrid_Seans.Dataset.FieldByName('siraNo').AsString;

  if (talep = '')
  then begin
       sql := 'update hareketler set ' +
              'Durum = ' + inttoStr(Durum) +
              ' where sirano = ' + Datalar.SeansBilgi.hizmetSunucuRefNo;
       datalar.QueryExec(sql);
       cxGrid_Seans.Dataset.Requery();
       cxGrid_Seans.Dataset.Next;
  end else
  begin
       ShowMessageSkin('Seans Medulaya Kayýtlý Ýken Onay Deðiþikliði Yapýlamaz','','','info');
  end;

end;

procedure TfrmHastaSeans.DoktorBilgisiDegis;
var
   x ,sirano , satir , durum : integer;
   secim : boolean;
   _secim ,sql , kod , talepSira: string;
begin
  inherited;

    if mrYes = ShowPopupForm('Seans Doktor Bilgisi Deðiþtir',SeansDoktorUpdate)
    Then Begin
        for x := 0 to ListeS.Controller.SelectedRowCount - 1 do
        begin
           Application.ProcessMessages;
           satir := ListeS.Controller.SelectedRows[x].RecordIndex;
           ListeS.DataController.FocusedRecordIndex := satir;
           sirano := ListeS.DataController.GetValue(satir,ListeS.DataController.GetItemByFieldName('sirano').Index);
           kod := ListeS.DataController.GetValue(satir,ListeS.DataController.GetItemByFieldName('HemodiyalizTip').Index);
           durum := ListeS.DataController.GetValue(satir,ListeS.DataController.GetItemByFieldName('Durum').Index);
           talepSira := ListeS.DataController.GetValue(satir,ListeS.DataController.GetItemByFieldName('TalepSira').Index);

           if  talepSira = ''
           then begin
               ListeS.DataController.SetEditValue(ListeS.DataController.GetItemByFieldName('DoktorKod').Index,datalar.SeansBilgi.drTescilNo,evsValue);
               ListeS.DataController.post;
           end; // talep end

        end; // for end
    End;

end;


procedure TfrmHastaSeans.SeansDuzenle;
var
  satir,durum : integer;
  Tarih , Talep,sql : string;
  Year, Month, Day: Word;
begin
  inherited;

  if (durum = 0) and (Talep = '')
  then begin
    if mrYes = ShowPopupForm('Seans Duzenle',SeansTarihiUpdate,_dosyaNO_)
    Then BEgin
       Application.ProcessMessages;
       if  talep = ''
       then begin
          sql := 'update Hareketler set ' +
                 'Tarih = ' +  QuotedStr(NoktasizTarih(Datalar.SeansBilgi.islemTarihi)) +
                 ',Doktor = ' +  QuotedStr(Datalar.SeansBilgi.doktor) +
                 ',hemsire = ' + QuotedStr(Datalar.SeansBilgi.hemsire) +
                 ',raporTakipNo = ' + QuotedStr(Datalar.SeansBilgi.raporTakipNo) +
                 ',DiyalizorCinsi = ' +  QuotedStr(Datalar.SeansBilgi.DiyalizorCinsi) +
                 ',DiyalizorTipi = ' +  QuotedStr(Datalar.SeansBilgi.DiyalizorTipi) +
                 ',DIYALIZOR = ' +  QuotedStr(Datalar.SeansBilgi.Diyalizor) +
                 ',D = ' +  QuotedStr(Datalar.SeansBilgi.Diyalizat) +
                 ',HEPARINTIP = ' +  QuotedStr(Datalar.SeansBilgi.HeparinTip) +
                 ',HEPARIN = ' +  QuotedStr(Datalar.SeansBilgi.Heparin) +
                 ',HEPARINUYG = ' +  QuotedStr(Datalar.SeansBilgi.HeparinUyg) +
                 ',YA = ' +  QuotedStr(Datalar.SeansBilgi.YA) +
                 ',APH = ' +  QuotedStr(Datalar.SeansBilgi.APH) +
                 ',MakinaNo = ' +  QuotedStr(Datalar.SeansBilgi.MakinaNo) +
                 ',Seans = ' +  QuotedStr(Datalar.SeansBilgi.Seans) +
                 ',DIYALIZSURESI = ' +  QuotedStr(Datalar.SeansBilgi.SeansSure) +
                 ',KanAlindimi = ' +  intToStr(Datalar.SeansBilgi.KanAlimi) +
                 ',IdealKilo = ' +  QuotedStr(Datalar.SeansBilgi.Kilo) +
                 ',GIRISKILO = ' +  QuotedStr(Datalar.SeansBilgi.girisKilo) +
                 ',CIKISKILO = ' +  QuotedStr(Datalar.SeansBilgi.cikisKilo) +
                 ',GIRISYOLU = ' +  QuotedStr(Datalar.SeansBilgi.GirisYolu) +
                 ',aldigiKilo = ' +  QuotedStr(Datalar.SeansBilgi.AldigiKilo) +
                 ',CEKILECEKSIVI = ' +  QuotedStr(Datalar.SeansBilgi.CekilecekSivi) +
                 ',verilecekSivi = ' +  QuotedStr(Datalar.SeansBilgi.VerilecekSivi) +
                 ',UF = ' +  QuotedStr(Datalar.SeansBilgi.UF) +
                 ',HCOOO = ' +  QuotedStr(Datalar.SeansBilgi.HCOOO) +
                 ',Na = ' +  QuotedStr(Datalar.SeansBilgi.Na) +
                 ',Igne = ' +  QuotedStr(Datalar.SeansBilgi.Igne) +
                 ',IgneV = ' +  QuotedStr(Datalar.SeansBilgi.IgneV) +
                 ',Durum = ' +  intToStr(Datalar.SeansBilgi.Durum) +
                 ' where siraNo = ' + Datalar.SeansBilgi.hizmetSunucuRefNo;
          datalar.QueryExec(sql);
          cxGrid_Seans.Dataset.Requery();
          cxGrid_Seans.Dataset.Next;

          ADO_Detay_toplam.Requery();
       end;
    End;
  end;
end;


procedure TfrmHastaSeans.IzlemFormu;
var
 state : boolean;
 satir,durum  : integer;
 sirano , tarih , doktor , seans : string;
 Form : TGirisForm;
  GirisFormRecord : TGirisFormRecord;
begin
       satir := ListeS.Controller.SelectedRows[0].RecordIndex;
       sirano := ListeS.DataController.GetValue(satir,ListeS.DataController.GetItemByFieldName('sirano').Index);
       tarih := ListeS.DataController.GetValue(satir,ListeS.DataController.GetItemByFieldName('RTarihDateTime').Index);
       doktor := ListeS.DataController.GetValue(satir,ListeS.DataController.GetItemByFieldName('doktorKod').Index);
       durum := ListeS.DataController.GetValue(satir,ListeS.DataController.GetItemByFieldName('durum').Index);
       seans := ListeS.DataController.GetValue(satir,ListeS.DataController.GetItemByFieldName('seans').Index);

       if seans = ''
       Then Begin
        ShowMessageSkin('Seans Belirtilmemiþ','','','info');
        exit;
       End;

 //      gridSeanslar.GetCheckBoxState(4,gridSeanslar.Row,state);
       if durum = 0
       then begin
        ShowMessageSkin('Seans Onaylý Deðil','','','info');
        exit;
       end;

       GirisFormRecord.F_SeansSira_ := sirano;
       GirisFormRecord.F_HastaAdSoyad_ := _HastaAdSoyad_;
       Form := FormINIT(TagfrmSeansDetayKart,GirisFormRecord);
       if Form <> nil then Form.showModal;

      (*
       Application.CreateForm(TfrmSeansDetayKart, frmSeansDetayKart);
       frmSeansDetayKart.SeansId := siraNo;
       frmSeansDetayKart._spSQL_ := 'exec sp_SeansGetir_SiraNo @siraNo = %s';
       frmSeansDetayKart._SqlUpdate_ := 'update gelisDetay set %s where sirano = %s';
       frmSeansDetayKart.sqlTip := sql_sp;
       frmSeansDetayKart.Yukle;
       frmSeansDetayKart.ShowModal;
       FreeAndNil(frmSeansDetayKart); *)

       (*
       Application.CreateForm(TfrmHemsireTkp, frmHemsireTkp);
       frmHemsireTkp.dosyaNo := txtDosyaNo.Text;
       frmHemsireTkp.gelisNO := gridGelisler.Cells[1,gridGelisler.row];
       frmHemsireTkp.TakipFaturadaVarmi := TakipFaturadami(gridGelisler.Cells[2,gridGelisler.row]);

       frmHemsireTkp.FormAc(sirano,dosyaNo , gelisNO , tarih,doktor);
    //   frmHemsireTkp.TedaviGetir(gridSeanslar.Cells[7,gridSeanslar.Row] , DiyalizBilgisi);
     //  frmHemsireTkp.Seanslar;
       GorselAyar(frmHemsireTkp,datalar.global_img_list4);
       frmHemsireTkp.ShowModal;
       SeansGetir(dosyaNo,gelisNO);
       frmHemsireTkp := nil;
       *)
end;



procedure TfrmHastaSeans.DamarIziKontrol;
var
   tc , tarih , tesis , cvp ,msj , yas ,ad,sql : string;
   satir : integer;
begin

  pnlDurum.Visible := True;
  pnlDurum.Parent := sayfa1;
  pnlDurum.Align := alBottom;
  Application.ProcessMessages;

  datalar.YardimciIslemWS.DamarIziDogrulamaSorguGiris.saglikTesisKodu := datalar._kurumKod;
  datalar.YardimciIslemWS.DamarIziDogrulamaSorguGiris.tckNo := _TC_;
  datalar.YardimciIslemWS.DamarIziDogrulamaSorguGiris.islemTarihi := datalar.SeansBilgi.islemTarihi;

  datalar.YardimciIslemWS.DamarIziDogrulamaSorgula;

  if datalar.YardimciIslemWS.DamarIziDogrulamaSorguCevap.sonucKodu = '0000'
  then begin
    if length(datalar.YardimciIslemWS.DamarIziDogrulamaSorguCevap.damarIziSorguDetay) > 0
    then begin
        sql := 'update hareketler set DamarIziKontrol = 1 ' +
               'where sirano = ' + datalar.SeansBilgi.hizmetSunucuRefNo;
        datalar.QueryExec(sql);
        cxGrid_Seans.Dataset.Requery();
        cxGrid_Seans.Dataset.Next;
    end;
  end;

end;




procedure TfrmHastaSeans.MEduladanSil;
var
   _talepSira , _sonuc ,msg ,sql,talep,takip: string;
   i , j , k ,satir,sirano,durum: integer;
begin

   if UserRight('MEDULA ÝÞLEMLERÝ', 'Hizmet Ýptal') = False
   Then Begin
      ShowMessageSkin('Bu Ýþlem Ýçin Yetkiniz Yok','Sistem Yöneticinizle Görüþün','Hizmet Ýptal','info');
      exit;
   End;

   satir := ListeS.Controller.SelectedRows[0].RecordIndex;
   sirano := ListeS.DataController.GetValue(satir,ListeS.DataController.GetItemByFieldName('sirano').Index);
   talep := ListeS.DataController.GetValue(satir,ListeS.DataController.GetItemByFieldName('islemSiraNo').Index);
   durum := ListeS.DataController.GetValue(satir,ListeS.DataController.GetItemByFieldName('durum').Index);
   takip := ListeS.DataController.GetValue(satir,ListeS.DataController.GetItemByFieldName('TakipNo').Index);

   pnlDurum.Visible := True;
   setlength(datalar.islemSiralari,1);
   datalar.islemSiralari[0] :=  talep;
   try
     if mrYes = ShowMessageSkin('Hizmet Ýptal Edilecek Emin misiniz ?','','','msg')
     then begin
        datalar.HizmetKayitWs.GirisSil.takipNo := takip;
        datalar.HizmetKayitWs.GirisSil.islemSiraNumaralari := datalar.islemSiralari;
        datalar.HizmetKayitWs.HizmetIptal;

        if datalar.HizmetKayitWs.CevapSil.sonucKodu = '0000'
        Then Begin
               sql := 'update hareketler set islemSiraNo = '''' ' +
                      ' where islemSiraNo = ' + QuotedStr(talep);
               datalar.QueryExec(sql);
               ListeS.DataController.SetValue(satir,ListeS.DataController.GetItemByFieldName('TalepSira').Index,'');

         // ShowMessageSkin('Hizmet Ýptal Edildi','','','info');
          setlength(datalar.islemSiralari,0);
        End
        Else
        if copy(msg,1,4) = '0799'
        Then Begin
           sql := 'update hareketler set islemSiraNo = '''' ' +
                  ' where islemSiraNo = ' + QuotedStr(talep);
           datalar.QueryExec(sql);
           ListeS.DataController.SetValue(satir,ListeS.DataController.GetItemByFieldName('TalepSira').Index,'');
           txtHatalar1.Lines.Add(msg);
        End
        Else
        ShowMessageSkin(msg,'','','info');

     end;

   finally
    pnlDurum.Visible := false;
    SeansGetir;
   end;

end;



function TfrmHastaSeans.digerIslemTalepDoldur(satir : integer) : Boolean;
 var
 talep : string;
begin
    digerIslemTalepDoldur := False;
    talep := ListeS.DataController.GetValue(satir,ListeS.DataController.GetItemByFieldName('islemSiraNo').Index);
    if talep = ''
    Then Begin
      datalar.DigerIslemTalebi.hizmetSunucuRefNo := ListeS.DataController.GetValue(satir,ListeS.DataController.GetItemByFieldName('sirano').Index);
      datalar.DigerIslemTalebi.takipNo := ListeS.DataController.GetValue(satir,ListeS.DataController.GetItemByFieldName('TakýpNo').Index);
      datalar.DigerIslemTalebi.basvuruNo := ListeS.DataController.GetValue(satir,ListeS.DataController.GetItemByFieldName('basvuruNo').Index);
      datalar.DigerIslemTalebi.drTescilNo := ListeS.DataController.GetValue(satir,ListeS.DataController.GetItemByFieldName('DoktorTescil').Index);
      datalar.DigerIslemTalebi.adet := 1;
      datalar.DigerIslemTalebi.islemDurum := '';
      datalar.DigerIslemTalebi.islemTarihi := ListeS.DataController.GetValue(satir,ListeS.DataController.GetItemByFieldName('Tarih').Index);
      datalar.DigerIslemTalebi.saglikTesisKodu := datalar._kurumKod;
      datalar.DigerIslemTalebi.bransKodu := ListeS.DataController.GetValue(satir,ListeS.DataController.GetItemByFieldName('DoktorBrans').Index);
      datalar.DigerIslemTalebi.sutKodu := ListeS.DataController.GetValue(satir,ListeS.DataController.GetItemByFieldName('code').Index);
      datalar.DigerIslemTalebi.raporTakipNo := ListeS.DataController.GetValue(satir,ListeS.DataController.GetItemByFieldName('raporTakipNo').Index);

      SetLength(datalar.VeriSeti.Diger,1);
      datalar.VeriSeti.Diger[0].hizmetSunucuRefNo := ListeS.DataController.GetValue(satir,ListeS.DataController.GetItemByFieldName('sirano').Index);
     // datalar.VeriSeti.Diger[0].takipNo := ListeS.DataController.GetValue(satir,ListeS.DataController.GetItemByFieldName('TakýpNo').Index);
     // datalar.DigerIslemTalebi.basvuruNo := ListeS.DataController.GetValue(satir,ListeS.DataController.GetItemByFieldName('basvuruNo').Index);
      datalar.VeriSeti.Diger[0].drTescilNo := ListeS.DataController.GetValue(satir,ListeS.DataController.GetItemByFieldName('DoktorTescil').Index);
      datalar.VeriSeti.Diger[0].adet := 1;
   //   datalar.VeriSeti.Diger[0].islemDurum := '';
      datalar.VeriSeti.Diger[0].islemTarihi := ListeS.DataController.GetValue(satir,ListeS.DataController.GetItemByFieldName('Tarih').Index);
//            datalar.VeriSeti.Diger[0].saglikTesisKodu := datalar._kurumKod;
      datalar.VeriSeti.Diger[0].bransKodu := ListeS.DataController.GetValue(satir,ListeS.DataController.GetItemByFieldName('DoktorBrans').Index);
      datalar.VeriSeti.Diger[0].sutKodu := ListeS.DataController.GetValue(satir,ListeS.DataController.GetItemByFieldName('code').Index);
      datalar.VeriSeti.Diger[0].raporTakipNo := ListeS.DataController.GetValue(satir,ListeS.DataController.GetItemByFieldName('raporTakipNo').Index);

      digerIslemTalepDoldur := True;
    End;
end;



procedure TfrmHastaSeans.MedulayaGonder;
var
   x , durum , _msg_,satir ,sirano: integer;
   oncekiTalepBilgisi ,sql , sonuc,talep,TakipNo,BasvuruNo  : string;
   HataliIslem,Hatali : TStringList;
   fark : double;
begin

   if UserRight('MEDULA ÝÞLEMLERÝ', 'Ödeme Yolla') = False
   then begin
       ShowMessageSkin('Bu Ýþlem Ýçin Yetkiniz Bulunmamaktadýr !','','','info');
       exit;
   end;

  txtHatalar1.Lines.Clear;

 (*
  if LisansKontrol(fark) = False
  Then Begin
    ShowMessageSkin('Lisans Yenileyin','','','info');
    exit;
  End;
   *)


   durum := 0;
   pnlDurum.Visible := True;
   try
       for x := 0 to ListeS.Controller.SelectedRowCount - 1 do
       begin
           Application.ProcessMessages;
           satir := ListeS.Controller.SelectedRows[x].RecordIndex;
           durum := ListeS.DataController.GetValue(satir,ListeS.DataController.GetItemByFieldName('Durum').Index);
           talep := varToStr(ListeS.DataController.GetValue(satir,ListeS.DataController.GetItemByFieldName('islemSiraNo').Index)) ;
           TakipNo := varToStr(ListeS.DataController.GetValue(satir,ListeS.DataController.GetItemByFieldName('TakipNo').Index)) ;
           BasvuruNo := varToStr(ListeS.DataController.GetValue(satir,ListeS.DataController.GetItemByFieldName('BasvuruNo').Index)) ;

             Application.ProcessMessages;
             if (durum = 1) and (talep = '')
             then begin

                    digerIslemTalepDoldur(satir);
                  //  gridGelisler.Cells[8,x] := digerIslemTalepYap(datalar.DigerIslemTalebi,oncekiTalepBilgisi);

                 (*
                  if chkTahlil.Checked
                  Then begin
                     tahlilBilgileri := TahlilM3(datalar.DigerIslemTalebi.TakipNo,'D','G');
                     tetkikveRadyoloji := RadM3(datalar.DigerIslemTalebi.TakipNo);
                     kadirMedula3.malzemeBilgisi := MalzemeM3(datalar.DigerIslemTalebi.TakipNo);
                  End
                  Else
                  Begin
                    tahlilBilgileri := nil;
                    tetkikveRadyoloji := nil;
                  End;
                   *)
                HttpveriSetiSet(datalar.HizmetKayitWS,nil,nil,nil,
                                nil,nil,nil,nil,nil,datalar.VeriSeti.Diger,nil,
                                TakipNo,BasvuruNo);
                datalar.HizmetKayitWS.HizmetKaydet(hatali,datalar.RxKayitliIslem);

                if datalar.HizmetKayitWS.Cevap.sonucKodu = '0000'
                Then Begin
                  Sonucyaz(datalar.HizmetKayitWS);
                  ShowMessageSkin('Ýþlemler Baþarý ile Kaydedildi','','','info');
                End
                else
                begin
                   txtHatalar1.Lines.Add(datalar.HizmetKayitWS.Cevap.takipNo + '-' + datalar.HizmetKayitWS.Cevap.sonucMesaji);
    //               txtHatalar1.Lines.Add('--------------------------------------------------------------------------------------------');
    //               txtHatalar1.Lines.SaveToFile('c:\NoktaV3\txtLog\' + FormatDateTime('DDMMYYYY_HHMMSS',now)+'.txt');
                End;


                sleep(3000);

             end;
        end;

   finally
      cxGrid_Seans.Dataset.Active := False;
      cxGrid_Seans.Dataset.Active := True;
      pnlDurum.Visible := false;
   end;


end;


procedure TfrmHastaSeans.SeansGetir;
var
  sql : string;
  i ,_gun : integer;
  ado : TADOQuery;
  eskiRenk : Tcolor;
begin
     sql := 'exec sp_HastaSeans @dosyaNo = ' + QuotedStr(_dosyaNo_) +
                                ',@gelisNo = ' + _gelisNo_;
     datalar.QuerySelect(cxGrid_Seans.Dataset,sql);


   ADO_Detay_toplam.Close;
   ADO_Detay_toplam.Parameters[0].Value := copy(NoktasizTarih(_provizyonTarihi_),1,6);
   ADO_Detay_toplam.Parameters[1].Value := _dosyaNo_;
   ADO_Detay_toplam.Open;

end;

procedure TfrmHastaSeans.SeansSil;
var
  sql,talep : string;
  St : TCheckBoxState;
  _r_,satir,sirano,durum : integer;
begin
   if UserRight('SEANS iÞLEMLERÝ', 'Sil') = False
   then begin
       ShowMessageSkin('Bu Ýþlem Ýçin Yetkiniz Bulunmamaktadýr !','','','info');
       exit;
   end;

  Datalar.SeansBilgi.hizmetSunucuRefNo := cxGrid_Seans.Dataset.FieldByName('siraNo').AsString;
  durum := cxGrid_Seans.Dataset.FieldByName('Durum').AsInteger;

  if (talep = '') and (durum = 0)
  then begin
          if mryes = ShowMessageSkin('Satýrý Silmek Ýstediðinizden Emin misiniz ?','','','msg')
          then begin
            try
             sql := 'delete from hareketler where sirano = ' + Datalar.SeansBilgi.hizmetSunucuRefNo;
             datalar.QueryExec(sql);
             cxGrid_Seans.Dataset.Requery();
            except
            end;
          end;
  end else
  begin
       ShowMessageSkin('Talep Ýptal Edilmeden Yada Seans Onayý Varken Seansý Silemezsiniz','','','info');
  end;
end;


procedure TfrmHastaSeans.cxButtonCClick(Sender: TObject);
var
   Year, Month, Day: Word;
   GirisFormRecord : TGirisFormRecord;
   sonuc : string;
begin
  datalar.KontrolUserSet := False;
  inherited;
  if datalar.KontrolUserSet = True then exit;

  Datalar.SeansBilgi.dosyaNo := _dosyaNO_;
  Datalar.SeansBilgi.gelisNo := _gelisNo_;

  Datalar.SeansBilgi.hizmetSunucuRefNo := cxGrid_Seans.Dataset.FieldByName('siraNo').AsString;
  Datalar.SeansBilgi.islemTarihi := cxGrid_Seans.Dataset.FieldByName('Tarih').AsString;
  Datalar.SeansBilgi.doktor := cxGrid_Seans.Dataset.FieldByName('Doktor').AsString;
  Datalar.SeansBilgi.hemsire := cxGrid_Seans.Dataset.FieldByName('hemsire').AsString;
  Datalar.SeansBilgi.raporTakipNo := cxGrid_Seans.Dataset.FieldByName('raporTakipNo').AsString;
  Datalar.SeansBilgi.DiyalizorCinsi := cxGrid_Seans.Dataset.FieldByName('DiyalizorCinsi').AsString;
  Datalar.SeansBilgi.DiyalizorTipi := cxGrid_Seans.Dataset.FieldByName('DiyalizorTipi').AsString;
  Datalar.SeansBilgi.Diyalizor := cxGrid_Seans.Dataset.FieldByName('DIYALIZOR').AsString;
  Datalar.SeansBilgi.Diyalizat := cxGrid_Seans.Dataset.FieldByName('D').AsString;
  Datalar.SeansBilgi.HeparinTip := cxGrid_Seans.Dataset.FieldByName('HEPARINTIP').AsString;
  Datalar.SeansBilgi.Heparin := cxGrid_Seans.Dataset.FieldByName('HEPARIN').AsString;
  Datalar.SeansBilgi.HeparinUyg := cxGrid_Seans.Dataset.FieldByName('HEPARINUYG').AsString;
  Datalar.SeansBilgi.YA := cxGrid_Seans.Dataset.FieldByName('YA').AsString;
  Datalar.SeansBilgi.APH := cxGrid_Seans.Dataset.FieldByName('APH').AsString;
  Datalar.SeansBilgi.MakinaNo := cxGrid_Seans.Dataset.FieldByName('MakinaNo').AsString;
  Datalar.SeansBilgi.Seans := cxGrid_Seans.Dataset.FieldByName('Seans').AsString;
  Datalar.SeansBilgi.SeansSure := cxGrid_Seans.Dataset.FieldByName('DIYALIZSURESI').AsString;
  Datalar.SeansBilgi.KanAlimi := cxGrid_Seans.Dataset.FieldByName('KanAlindimi').AsInteger;
  Datalar.SeansBilgi.GirisYolu := cxGrid_Seans.Dataset.FieldByName('GIRISYOLU').AsString;
  Datalar.SeansBilgi.HCOOO := cxGrid_Seans.Dataset.FieldByName('HCOOO').AsString;
  Datalar.SeansBilgi.Na := cxGrid_Seans.Dataset.FieldByName('Na').AsString;
  Datalar.SeansBilgi.Igne := cxGrid_Seans.Dataset.FieldByName('Igne').AsString;
  Datalar.SeansBilgi.IgneV := cxGrid_Seans.Dataset.FieldByName('IgneV').AsString;
  Datalar.SeansBilgi.Kilo := cxGrid_Seans.Dataset.FieldByName('IdealKilo').AsString;
  Datalar.SeansBilgi.girisKilo := cxGrid_Seans.Dataset.FieldByName('GIRISKILO').AsString;
  Datalar.SeansBilgi.cikisKilo := cxGrid_Seans.Dataset.FieldByName('CIKISKILO').AsString;
  Datalar.SeansBilgi.OncekiCikisKilo := cxGrid_Seans.Dataset.FieldByName('OncekiCikisKilo').AsString;
  Datalar.SeansBilgi.CekilecekSivi := cxGrid_Seans.Dataset.FieldByName('CEKILECEKSIVI').AsString;
  Datalar.SeansBilgi.VerilecekSivi := cxGrid_Seans.Dataset.FieldByName('verilecekSivi').AsString;
  Datalar.SeansBilgi.AldigiKilo := cxGrid_Seans.Dataset.FieldByName('aldigiKilo').AsString;
  Datalar.SeansBilgi.UF := cxGrid_Seans.Dataset.FieldByName('UF').AsString;
  Datalar.SeansBilgi.Durum := cxGrid_Seans.Dataset.FieldByName('Durum').AsInteger;
  Datalar.SeansBilgi.SeansCaption := _HastaAdSoyad_ + ' - ' + cxGrid_Seans.Dataset.FieldByName('seansGunu').AsString +
                                     ' (' + cxGrid_Seans.Dataset.FieldByName('siraNo').AsString + ')';

  case TControl(sender).Tag of
  -1 : begin

       end;

  -2 : begin

       end;
  -3 : begin

       end;
  -4 : begin
         SeansDuzenle;
       end;
  -5 : begin
        // DoktorBilgisiDegis;
       end;
  260 : begin
         IzlemFormu;
       end;
  -7 : begin
         DamarIziKontrol;
       end;
  -8 : begin
         MeduladanSil;
       end;

  -9 : begin
         MedulayaGonder;
       end;

  -10 : begin
          seansSil;
        end;

  -11 : begin
          SeansOlustur;
        end;
  -22 : begin
             ENabizHizmetKayit(Datalar.SeansBilgi.hizmetSunucuRefNo,_sysTakipNo_,sonuc);
             ShowMessageSkin(sonuc,'','','info');
        end;

  0,1 : begin
          SeansOnay(TControl(sender).Tag);
        end;
  end;


//
end;

procedure TfrmHastaSeans.cxEditEnter(Sender: TObject);
begin
  inherited;
  //

end;

procedure TfrmHastaSeans.cxEditExit(Sender: TObject);
begin
  inherited;
  //

end;

procedure TfrmHastaSeans.cxTextEditBKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
//
end;

procedure TfrmHastaSeans.cxTextEditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   inherited;
  // if key  then


end;

procedure TfrmHastaSeans.FormCreate(Sender: TObject);
var
  index,i : integer;
  Ts : TStringList;

begin
  Tag := TagfrmHastaSeans;
  ClientHeight := formYukseklik;
  ClientWidth := formGenislik;

  Olustur(self,_TableName_,'Hasta Seans Kartý',21,'');

  Menu := PopupMenu5;

  cxPanel.Visible := false;
  Sayfalar.Properties.HideTabs := True;

 // setDataStringKontrol(self,PageControl_Seans , 'PageControl_Seans','',Kolon1,'',758);


  TcxImageComboBoxProperties(ListeDoktorKod.Properties).Items := AnaForm.Doktorlar.Properties.Items;



  SayfaCaption('Seanslar','','','','');

  kolon2.Width := 0;
  kolon3.Width := 0;
  kolon2.Visible := false;
  kolon3.Visible := false;


 end;





procedure TfrmHastaSeans.FormShow(Sender: TObject);
var
  sqlText : string;
begin
  inherited;
//  sqlText := Format(SQL,[#39+_dosyaNo_+#39,_gelisNO_]);
//  datalar.QuerySelect(Ado_Seans,sqlText);
//  SeansGetir;


end;

procedure TfrmHastaSeans.ListeraporTakipNoPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  List : ArrayListeSecimler;
  ado : TADOQuery;
  sql,RTarih : string;
begin
  inherited;
  ListeAc2.Where := 'dosyaNo = ' + QuotedStr(_dosyaNo_);
  List := ListeAc2.ListeGetir;
  cxGrid_Seans.Dataset.Edit;
  cxGrid_Seans.Dataset.FieldByName('raporTakipNo').AsString := List[0].kolon1;
  cxGrid_Seans.Dataset.Post;

  RTarih := cxGrid_Seans.Dataset.FieldByName('Tarih').AsString;
  ado := TADOQuery.Create(nil);
  ado.Connection := datalar.ADOConnection2;
  sql := 'update Hareketler set raporTakipNo = ' + QuotedStr(List[0].kolon1) +
         ' where tip = ''S'' and dosyaNo = ' + QuotedStr(_dosyaNo_)  + ' and Tarih > ' + QuotedStr(RTarih) + ' and durum = 0 ';
  datalar.QueryExec(ado,sql);
  ado.Free;

  cxGrid_Seans.Dataset.Requery();
end;

procedure TfrmHastaSeans.ListeSCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
  durum ,satir : integer;
  talepSira , kod , Rtarih , sql ,ktip , takipno ,makineNo,Hst,seans : string;
  ado : TADOQuery;
begin
  satir := ListeS.Controller.SelectedRows[0].RecordIndex;
  if (ACellViewInfo.Item.Index = 6) and (TakipFaturadami(_TakipNo_) = False)
  then begin
    if ACellViewInfo.GridView.DataController.Values[satir,6] = 0
    then
     durum := 1
    else
     durum := 0;

       Application.ProcessMessages;
       satir := ListeS.Controller.SelectedRows[0].RecordIndex;
       ListeS.DataController.FocusedRecordIndex := satir;
       RTarih := ListeS.DataController.GetValue(satir,ListeS.DataController.GetItemByFieldName('Tarih').Index);
       kod := ListeS.DataController.GetValue(satir,ListeS.DataController.GetItemByFieldName('HemodiyalizTip').Index);
//       durum := ListeS.DataController.GetValue(satir,ListeS.DataController.GetItemByFieldName('Durum').Index);
       talepSira := ListeS.DataController.GetValue(satir,ListeS.DataController.GetItemByFieldName('islemSiraNo').Index);
       ktip := ListeS.DataController.GetValue(satir,ListeS.DataController.GetItemByFieldName('KURUMTIPI').Index);
       takipno := ListeS.DataController.GetValue(satir,ListeS.DataController.GetItemByFieldName('TakýpNo').Index);
       makineNo := ListeS.DataController.GetValue(satir,ListeS.DataController.GetItemByFieldName('makinaNo').Index);
       seans := ListeS.DataController.GetValue(satir,ListeS.DataController.GetItemByFieldName('Seans').Index);

       if ((ktip = '1') or (ktip = '99')) and (takipno = '')
       then begin
           ShowMessageSkin('SGK Hastalarýna Takip Almadan Seans Onaylayamazsýnýz','','','info');
           exit;
       end;


       if  talepSira = ''
       then begin

             if makineNo <> ''
             then begin
             Hst := SeansKontrol(seans,makineNo,RTarih,_DosyaNo_);
             if Hst <> ''
             then begin
               ShowMessageSkin('Makina No Kontrol Ediniz,','Ayný Seansta ' + Hst ,' Seans Görmüþ' ,'info');
             end;
             end;


           ListeS.DataController.SetEditValue(ListeS.DataController.GetItemByFieldName('Durum').Index,durum,evsValue);
        //   SetValue(satir,Liste.DataController.GetItemByFieldName('Durum').Index,TMenuItem(sender).Tag);

      //     sql := 'update gelisdetay set durum = ' + inttostr(TMenuItem(sender).Tag) + ' where sirano = ' + inttostr(sirano);
       //    datalar.QueryExec(ado,sql);

           try
            ado := TADOQuery.Create(nil);
            sql := 'select dbo.fn_P704230Count(' + QuotedStr(RTarih) + ') t';
            datalar.QuerySelect(ado,sql);
           except
            ado.Free;
           end;

           if not ado.Eof
           then
            if kod <> 'E'
            Then
              if ado.Fields[0].AsInteger >= 700
              then begin
             //   sql := 'update gelisdetay set HemodiyalizTip = ''7'' where sirano = ' + inttostr(sirano);
              //  datalar.QueryExec(ado,sql);
                ListeS.DataController.SetEditValue(ListeS.DataController.GetItemByFieldName('HemodiyalizTip').Index,'7',evsValue);
              end
              else begin
                //sql := 'update gelisdetay set HemodiyalizTip = ''M'' where sirano = ' + inttostr(sirano);
                //datalar.QueryExec(ado,sql);
                ListeS.DataController.SetEditValue(ListeS.DataController.GetItemByFieldName('HemodiyalizTip').Index,'M',evsValue);
              end;
           ado.Free;
           ListeS.DataController.post;
           ADO_Detay_toplam.Close;
           ADO_Detay_toplam.Parameters[0].Value :=  copy(RTarih,1,6);
           ADO_Detay_toplam.Parameters[1].Value := _dosyaNo_;
           ADO_Detay_toplam.Active := True;

       end; // talep end

  end;

end;

procedure TfrmHastaSeans.ListeSFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;
   if cxGrid_Seans.Dataset.FieldByName('islemSiraNo').AsString <> ''
   then Sender.OptionsData.Editing := False
   else Sender.OptionsData.Editing := True;
end;

procedure TfrmHastaSeans.cxKaydetClick(Sender: TObject);
begin
  datalar.KontrolUserSet := False;
  inherited;
  if datalar.KontrolUserSet = True then exit;

  case TcxButton(sender).Tag  of
    0 : begin
        // ShowMessage('Kaydet');
        // ButonClick(self,'k');
      //   Olustur(self,'Users');
      //   setDataString(self,'ADISOYADI',100,10);

        end;
    1 : begin
         // post;
         //ShowMessage('Ýptal');
    end;
  end;
end;

end.
