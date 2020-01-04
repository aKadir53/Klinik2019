unit raporDetay;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls,data_modul, DB, ADODB,
  Grids, DBGridEh, DBCtrls,saglikTesisiRaporIslemleriWSIlac,
  kadir,strutils,RaporIslemleriI,RaporIslemleriWS, kadirType,GetFormClass,
  InvokeRegistry, Rio, SOAPHTTPClient, cxGraphics, cxMemo,
  cxDBEdit, cxDropDownEdit, cxCalendar, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, cxButtonEdit, cxPC, cxSpinEdit, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters, kadirmedula3,
  dxSkinscxPCPainter, cxPCdxBarPopupMenu, Menus, cxButtons, KadirLabel,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinValentine, dxSkinXmas2008Blue, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, GridsEh, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxDBData, cxCurrencyEdit, cxGridDBTableView, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,GirisUnit,
  cxGridDBBandedTableView, cxClasses, cxGridCustomView, cxGrid, cxImageComboBox,
  cxCheckBox, cxGroupBox, cxRadioGroup, cxGridCustomPopupMenu, cxGridPopupMenu,
  dxLayoutContainer,Registry;



type
  TfrmRaporDetay = class(TGirisForm)
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    T1: TMenuItem;
    ListeAc2: TListeAc;
    TaniListe: TListeAc;
    PopupMenu2: TPopupMenu;
    E1: TMenuItem;
    N3: TMenuItem;
    E2: TMenuItem;
    PopupMenu3: TPopupMenu;
    B1: TMenuItem;
    B2: TMenuItem;
    R1: TMenuItem;
    lemler1: TMenuItem;
    YeniRapor1: TMenuItem;
    Dzenle1: TMenuItem;
    RaporuMedulayaKaydet1: TMenuItem;
    RaporuMeduladanOku1: TMenuItem;
    RaporuMeduladanSil1: TMenuItem;
    RaporuYazdr1: TMenuItem;
    RaporuSistemdenSil1: TMenuItem;
    Kapat1: TMenuItem;
    RaporAra1: TMenuItem;
    cxGridPopupMenu1: TcxGridPopupMenu;
    RaporGrid: TcxGridKadir;
    ListeRaporlar: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    ListeRaporlarColumn1: TcxGridDBColumn;
    ListeRaporlarColumn2: TcxGridDBColumn;
    ListeRaporlarColumn3: TcxGridDBColumn;
    ListeRaporlarColumn4: TcxGridDBColumn;
    ListeRaporlarColumn5: TcxGridDBColumn;
    ListeRaporlarColumn6: TcxGridDBColumn;
    ListeRaporlarColumn7: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    ListeRaporlarColumn8: TcxGridDBColumn;
    ListeRaporlarColumn9: TcxGridDBColumn;
    Oku: TTimer;
    M1: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    R2: TMenuItem;
    R3: TMenuItem;
    Procedure Raporlar(dosyaNo ,gelisNo : string);
    procedure btnVazgecClick(Sender: TObject);
    procedure RaporKaydet(dosyaNo , RaporNo , turu , Tip: string);
    procedure DoktorKaydet(raporID : string ; var _rapor : RaporDVO);
    procedure TaniKaydet(raporID : string ; var _rapor : RaporDVO);
    function TaniKaydetIlacTeshisY(_tanilar_ : string ;  data : TADOQuery) : ArrayOf_105704153_699425500_nillable_TaniDVO;
    function TaniKaydetIlacTeshisIlac(_tanilar_ : string ;  data : TADOQuery) : Array_Of_TaniDVO;

    procedure IslemKaydet(data : TADOQuery ; var TedaviRapor : tedaviRaporDVO);
    procedure TeshisKaydet(data : TADOQuery);
    procedure IlacTeshisKaydet(data : TADOQuery);
    procedure IlacTeshisKaydetY(data : TADOQuery);

    procedure RAPORBILGISI(data : TADOQuery; var TedaviRapor : tedaviRaporDVO);
    procedure HaksahibiKaydet(don : integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure IsGormezlikRaporu;
    procedure TedaviRaporu;

    procedure dogumOncesiCalisabilirRaporu;
    procedure dogumRaporu;
    procedure analikRaporu;
    procedure protezRaporu;
    procedure ilacRaporu;
    procedure ilacRaporuY;
    procedure maluliyetRaporu;
    procedure Haksahibinull;
//    procedure IsGormezlikRaporuEk;
    procedure RaporBul(RaporNo,RaporTarihi,verenTesis, Tur ,Durum : string);
    procedure btnPolClick(Sender: TObject);
    procedure DBGridEh1ColExit(Sender: TObject);
    procedure btnYazdirClick(Sender: TObject);
    procedure ADO_DOKTORLARNewRecord(DataSet: TDataSet);
    procedure ADO_RAPORDETAYNewRecord(DataSet: TDataSet);
    procedure cxDBButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxDBButtonEdit2PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxDBButtonEdit3PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxDBComboBox1PropertiesChange(Sender: TObject);
    procedure txttedaviRaporTuruPropertiesChange(Sender: TObject);
    procedure ftrVucutBolgePropertiesChange(Sender: TObject);
    procedure txtVerenTesisKoduPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure Rapor__BeforeExecute(const MethodName: String;
      var SOAPRequest: WideString);
    procedure cxButtonTESHISClick(Sender: TObject);
    procedure cxButtonICDClick(Sender: TObject);
    procedure cxButtonETKENClick(Sender: TObject);
    procedure cxButtonSUTKURALClick(Sender: TObject);
    procedure ADO_ILACTESHISLERNewRecord(DataSet: TDataSet);
    procedure ADO_RAPORLARAfterScroll(DataSet: TDataSet);
    procedure btnDuzeltClick(Sender: TObject);
    function RaporEtkinMaddeler(m , sira: string) : ArrayOfEraporEtkinMaddeDVO;
    procedure cxButtonDoktorlarClick(Sender: TObject);
    procedure btnDiyabetClick(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure T1Click(Sender: TObject);
    procedure sBitBtn3Click(Sender: TObject);
    procedure btnKayitClick(Sender: TObject);
    procedure sBitBtn5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure IlacRaporsil(RaporNo : string);
    function IlacRaporBasHekimOnay(RaporNo , Tc : string) : string;
    function IlacRaporBasHekimOnayRed(RaporNo , Tc : string) : string;

    function IlacRaporBasHekimOnayBekleyenLis : ArrayOf_105704153_1440052060_long;
    procedure E1Click(Sender: TObject);
    procedure E2Click(Sender: TObject);
    function RaporAciklamaEkle(RaporTakip,aciklama,TakipformNo : string ; var msg : string) : string;
    procedure B1Click(Sender: TObject);
    procedure cxRadioGroup1PropertiesChange(Sender: TObject);
    procedure cxButtonCClick(Sender: TObject);
    procedure YeniRapor;
    procedure RaporMeduladanOku;
    procedure RaporMeduladanSil;
    procedure RaporuYazdir;
    procedure RaporuSistemdenSil;
    procedure RaporAra;
    procedure AktifRaporYap;
    procedure FormShow(Sender: TObject);
    procedure ListeRaporlarDblClick(Sender: TObject);
    procedure raporDuzenle;
    function RaporImzalaGonder : string;
    function RaporIslemGonder(islem : string) : string;
    procedure ListeRaporlarFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure N5Click(Sender: TObject);
    procedure SablonKaydet;
  private
    { Private declarations }
   function findMethod(dllHandle: Cardinal; methodName: string): FARPROC;
  public
    { Public declarations }
    function Init(Sender: TObject) : Boolean; override;
    procedure RaporuMedulayaKaydet;overload;
    procedure RaporuMedulayaKaydet(islem : integer);overload;
  end;

const
 LIB_DLL = 'NoktaDLL.dll';

var
   frmRaporDetay: TfrmRaporDetay;
   HastaBilgileri : THaksahiplikBilgileri;
   Ts_RaporGon : raporGirisDVO;
   Ts_RaporGonY : EraporGirisIstekDVO;
   Ts_RaporGonIlac : saglikTesisiRaporIslemleriWSIlac.eraporGirisIstekDVO;
   _RaporIlac : saglikTesisiRaporIslemleriWSIlac.eraporDVO;
   Ts_RaporCvp : RaporCevapDVO;
   TedaviRapor : TedaviRaporDVO;
   IlacRapor : IlacRaporDVO;
   _Rapor : RaporDVO;
   _RaporY : ERaporDVO;


   hastaDosyaNo ,hastagelisNo , _tarih_ ,takip: string;
   _don : integer;
   RTanilar , RTeshisler , web , local ,_gelisNo_ : string;

implementation

uses HastaKart, rapor;
   //  TesisList, HastaTakipleri, TeshisListesi,
   //  EtkinMaddeSutKurali, EtkenMaddeListesi,
   //  diyabetTakipFormu,TaniListesi;
//uses muhana, HastaKarti, MedulaDoktorlar;
{$R *.dfm}

procedure TfrmRaporDetay.AktifRaporYap;
var
  ado : TADOQuery;
  sql : string;
begin
  datalar.RaporBilgisi.sira := RaporGrid.Dataset.FieldByName('sira').AsString;
  sql := 'update raporlar set aktif = 0 where dosyaNo = ' + QuotedStr(_dosyaNo_) +
         'update raporlar set aktif = 1 where sira = ' + QuotedStr(datalar.RaporBilgisi.sira);
  datalar.QueryExec(sql);
  RaporGrid.Dataset.Requery();


end;

procedure TfrmRaporDetay.RaporAra;
var
  sql : string;
begin
    if mrYes = ShowPopupForm('Hasta Raporlarýný Bul',84,ifThen(_Yupass_ = '',_TC_,_Yupass_))
    Then Begin
         sql := 'select * from raporlar where dosyaNo = ' + QuotedStr(_dosyaNo_) +
                ' and raporNo = ' + QuotedStr(datalar.memDataRaporlar.fieldbyname('raporNo').AsString);

         if datalar.QuerySelect(sql).Eof
         Then Begin
           if  Mryes = ShowMessageSkin('Rapor Sistemde Kayýtlý Deðil , Kaydetmek Ýstermisiniz ?','','','msg')
           Then Begin

               sql := 'insert into raporlar (dosyaNo,raporNo,raporTarihi,verenTesisKodu,raporTakipno,turu,baslangicTarihi,bitisTarihi,' +
                      'protokolNo,protokolTarihi,tedaviRaporTuru,seansGun,SeansSayi,tanilar,butKodu) ' +
                      ' values ( ' + QuotedStr(_dosyaNo_) + ','
                                   + QuotedStr(datalar.memDataRaporlar.fieldbyname('raporNo').AsString) + ','
                                   + QuotedStr(NoktasizTarih(datalar.memDataRaporlar.fieldbyname('raporTarihi').AsString)) + ','
                                   + QuotedStr(datalar.memDataRaporlar.fieldbyname('verenTesis').AsString)  + ','
                                   + QuotedStr(datalar.memDataRaporlar.fieldbyname('raporTakipNo').AsString) + ','
                                   + QuotedStr(datalar.memDataRaporlar.fieldbyname('raporTuru').AsString) + ','
                                   + ' cast( ' + QuotedStr(tarihal(datalar.memDataRaporlar.fieldbyname('baslangicTarihi').Asdatetime)) + '  as datetime) ' + ','
                                   + ' cast( ' + QuotedStr(tarihal(datalar.memDataRaporlar.fieldbyname('bitisTarihi').AsDateTime)) + '  as datetime) ' + ','
                                   + QuotedStr(datalar.memDataRaporlar.fieldbyname('protokolNo').AsString) + ','
                                   + ' cast( ' + QuotedStr(tarihal(datalar.memDataRaporlar.fieldbyname('protokolTarihi').AsDateTime)) + '  as datetime) ' + ','
                                   + QuotedStr(datalar.memDataRaporlar.fieldbyname('tedaviRaporTuru').AsString) + ','
                                   + datalar.memDataRaporlar.fieldbyname('seansGun').AsString + ','
                                   + datalar.memDataRaporlar.fieldbyname('seansSayi').AsString + ','
                                   + QuotedStr(datalar.memDataRaporlar.fieldbyname('Tani').AsString) + ','
                                   + QuotedStr(datalar.memDataRaporlar.fieldbyname('butKodu').AsString)+

                                   ')' ;
                                 //  + memDataRaporlar.fieldbyname('seansSayi').AsString + ','
                                  // + memDataRaporlar.fieldbyname('Tani').AsString + ')';

               datalar.QueryExec(sql);
               RaporGrid.Dataset.Requery();
               RaporGrid.Dataset.Next;

               ShowMessageSkin('Rapor Sisteme Kaydedildi','','','info');

           End;
         End
         Else
           ShowMessageSkin('Rapor Sistemde Kayýtlý','','','info');



    End;

end;

procedure TfrmRaporDetay.RaporuSistemdenSil;
var
  sql , sira , satir : string;
  ado : TADOQuery;
begin
  if ListeRaporlar.Controller.SelectedRowCount > 0
  Then begin
    datalar.RaporBilgisi.raporTakipNo := RaporGrid.Dataset.FieldByName('raporTakipNo').AsString;
    sira := RaporGrid.Dataset.FieldByName('sira').AsString;

       if mrYes = ShowMessageSkin('Rapor Sistemden Silinecek Eminmisini?','','','msg')
       Then Begin
        // datalar.ADOConnection2.BeginTrans;
        ado := TADOQuery.Create(nil);
        ado.Connection := datalar.ADOConnection2;
        try
          try
         //    sql := 'delete from RaporDetay_Doktorlar where sira = ' + datalar.RaporBilgisi.sira;
         //    datalar.QueryExec(ado,sql);
             sql := 'delete from IlacRaporEtkenMaddeler where RaporSira = ' + sira;
             datalar.QueryExec(ado,sql);
             sql := 'delete from IlacRaporTeshisler where RaporSira = ' + sira;
             datalar.QueryExec(ado,sql);
             sql := 'delete from Raporlar where sira = ' + sira;
             datalar.QueryExec(ado,sql);
           //  datalar.ADOConnection2.CommitTrans;
             ShowMessageSkin('Rapor Sistemden Silindi','','','info');
             RaporGrid.Dataset.Requery();
          except on e : exception do
           begin
           //  datalar.ADOConnection2.RollbackTrans;
             ShowMessageSkin('Hata oluþtu , Rapor Sistemden Silinemedi',e.Message,'','info');
           end;
          end;
          finally
            ado.free;
          end;
       End;

  end;
end;



procedure TfrmRaporDetay.RaporuYazdir;
var
   sql , dosyaNo , raporNo : string;
   TopluSet : TDataSetKadir;
begin
    raporNo := RaporGrid.Dataset.FieldByName('raporNo').AsString;
    dosyaNo := RaporGrid.Dataset.FieldByName('dosyaNo').AsString;

      sql := 'exec sp_medularaporYazdir ' + QuotedStr(dosyaNo) + ','
             + QuotedStr(raporNo) + ','
             + QuotedStr('R');
      TopluSet.Dataset1 := datalar.QuerySelect(sql);

      sql := 'exec sp_medularaporYazdir ' + QuotedStr(dosyaNo) + ','
             + QuotedStr(raporNo) + ','
             + QuotedStr('RD');
      TopluSet.Dataset2 := datalar.QuerySelect(sql);

      sql := 'exec sp_medularaporYazdir ' + QuotedStr(dosyaNo) + ','
             + QuotedStr(raporNo) + ','
             + QuotedStr('Tani');
      TopluSet.Dataset3 := datalar.QuerySelect(sql);

      sql := 'exec sp_medularaporYazdir ' + QuotedStr(dosyaNo) + ','
             + QuotedStr(raporNo) + ','
             + QuotedStr('IlacTeshis');
      TopluSet.Dataset4 := datalar.QuerySelect(sql);

      sql := 'exec sp_medularaporYazdir ' + QuotedStr(dosyaNo) + ','
             + QuotedStr(raporNo) + ','
             + QuotedStr('EtkinMadde');
      TopluSet.Dataset7 := datalar.QuerySelect(sql);

      sql := 'exec sp_medularaporYazdir ' + QuotedStr(dosyaNo) + ','
             + QuotedStr(raporNo) + ','
             + QuotedStr('Aciklama');
      TopluSet.Dataset5 := datalar.QuerySelect(sql);



      case strtoint(trim(copy(RaporGrid.Dataset.fieldbyname('turu').AsString,1,2))) of
        10 :  PrintYap('053','\Rapor_ilac',intToStr(TagfrmRaporDetay),TopluSet);  //frmRapor.raporData1(frmRapor.topluset,'116','\Rapor_ilac');
         1 :  begin
                 PrintYap('053','\Rapor_tedavi',intToStr(TagfrmRaporDetay),TopluSet);
                 //frmRapor.raporData1(frmRapor.topluset,'053','\Rapor_tedavi')
              end;
       End;


end;


procedure TfrmRaporDetay.RaporMeduladanSil;
var
  Rp : string;
begin
     if datalar.RaporBilgisi.Turu = '10'
     Then
       Rp := datalar.RaporBilgisi.raporTakipNo
     Else
       Rp := datalar.RaporBilgisi.raporNo;


      if mrYES = ShowMessageSkin('Raporu Meduladan Silmek Ýstediðinizden Emin misiniz ?','','','msg')
      then
      RaporBul(Rp,
               datalar.RaporBilgisi.raporTarihi,
               datalar.RaporBilgisi.verenTesisKodu,
               trim(datalar.RaporBilgisi.Turu),
               'SÝL');
end;

procedure TfrmRaporDetay.RaporMeduladanOku;
var
  Rp : string;
begin
     if datalar.RaporBilgisi.Turu = '10'
     Then
       Rp := datalar.RaporBilgisi.raporTakipNo
     Else
       Rp := datalar.RaporBilgisi.raporNo;


      RaporBul(Rp,
               datalar.RaporBilgisi.raporTarihi,
               datalar.RaporBilgisi.verenTesisKodu,
               trim(datalar.RaporBilgisi.Turu),
               'BUL');

end;


function TfrmRaporDetay.findMethod(dllHandle: Cardinal;  methodName: string): FARPROC;
begin
  Result := GetProcAddress(dllHandle, pchar(methodName));
end;

function TfrmRaporDetay.RaporImzalaGonder : string;
var
  imzala : TRaporImzala;
  dllHandle: Cardinal;
  raporId,TesisKodu: integer;
  rapor,doktorKullanici,doktorsifre,pin,url,cardType : string;
  doktorTc : string;
  ss : PWideChar;
  sql : string;
begin
  url := raporIlacURL;
  sql := 'sp_HastaRaporToXML ' + RaporGrid.Dataset.FieldByName('sira').AsString;
  QuerySelect(sql);
  ss := 'Yok';
  raporId := (RaporGrid.Dataset.FieldByName('sira').AsInteger);
  rapor := (SelectAdo.FieldByName('rapor').AsString);
  doktorKullanici := (SelectAdo.FieldByName('doktorKullanici').AsString);
  doktorsifre :=  (SelectAdo.FieldByName('doktorsifre').AsString);
  pin :=  (SelectAdo.FieldByName('pin').AsString);
  doktorTc :=  (SelectAdo.FieldByName('doktorTc').AsString);
  TesisKodu :=  (SelectAdo.FieldByName('tesisKodu').AsInteger);
  cardType :=  SelectAdo.FieldByName('cardType').AsString;

  dllHandle := LoadLibrary(LIB_DLL);
  try
    if dllHandle = 0 then exit;

    @imzala := findMethod(dllHandle, 'RaporImzalaGonder');
    if addr(imzala) <> nil then
    imzala(raporId,PWidechar(rapor),PWidechar(doktorKullanici),PWidechar(doktorsifre),PWidechar(pin),PWidechar(doktorTc),TesisKodu,ss,url,PWidechar(cardType));

    RaporImzalaGonder := ss;

    if not Assigned(imzala) then
      raise Exception.Create(LIB_DLL + ' içersinde RaporImzalaGonder bulunamadý!');

  finally
    FreeLibrary(dllHandle);
  end;
end;


function TfrmRaporDetay.RaporIslemGonder(islem : string) : string;
var
  imzala : TRaporImzala;
  dllHandle: Cardinal;
  raporId,TesisKodu: integer;
  rapor,doktorKullanici,doktorsifre,pin,url,cardType : string;
  doktorTc : string;
  ss : PWideChar;
  sql : string;
begin
  url := raporIlacURL;
  sql := 'sp_HastaRaporIslemToXML ' + RaporGrid.Dataset.FieldByName('sira').AsString + ',' +
                                      QuotedStr(islem);
  QuerySelect(sql);
  ss := 'Yok';
  raporId := (RaporGrid.Dataset.FieldByName('sira').AsInteger);
  rapor := (SelectAdo.FieldByName('rapor').AsString);
  doktorKullanici := (SelectAdo.FieldByName('doktorKullanici').AsString);
  doktorsifre :=  (SelectAdo.FieldByName('doktorsifre').AsString);
  pin :=  (SelectAdo.FieldByName('pin').AsString);
  doktorTc :=  (SelectAdo.FieldByName('doktorTc').AsString);
  TesisKodu :=  (datalar._kurumKod);
  cardType :=  SelectAdo.FieldByName('cardType').AsString;

  dllHandle := LoadLibrary(LIB_DLL);
  try
    if dllHandle = 0 then exit;

    @imzala := findMethod(dllHandle, 'RaporIslemGonder');
    if addr(imzala) <> nil then
    imzala(raporId,PWidechar(rapor),PWidechar(doktorKullanici),PWidechar(doktorsifre),PWidechar(pin),PWidechar(doktorTc),TesisKodu,ss,url,PWidechar(cardType));

    RaporIslemGonder := ss;

    if not Assigned(imzala) then
      raise Exception.Create(LIB_DLL + ' içersinde RaporIslemGonder bulunamadý!');

  finally
    FreeLibrary(dllHandle);
  end;
end;



procedure TfrmRaporDetay.RaporuMedulayaKaydet(islem : integer);
var
 // receteCvp : SaglikTesisiReceteIslemleri1.EreceteGirisCevapDVO;
  Sonuc : string;
  _dn_ ,_gn_ , _id_ , _d_ , _erNo_  : string;
  _exe : PAnsiChar;
  fark : double;
begin

  case islem of
   RaporMedulaKaydet :  begin
                           if LisansKontrol(fark) = True
                           Then Begin
                               DurumGoster(True,False,'Rapor Kayýt Ýçin Ýmzalanýyor...Lütfen Bekleyiniz...',1);
                              try
                                Sonuc := RaporImzalaGonder;
                                if Copy(Sonuc,1,4) = '0000'
                                then begin
                                  RaporGrid.Dataset.edit;
                                  RaporGrid.Dataset.FieldByName('raporTakipNo').AsString := Copy(Sonuc,6,10);
                                  RaporGrid.Dataset.post;
                                end;
                              finally
                                DurumGoster(False,False,'');
                                if Copy(Sonuc,1,4) <> '0000' then
                                ShowMessageSkin(Sonuc,'','','info');
                              end;
                           end
                           Else
                            ShowMessageSkin('Lütfen Lisans Bilgilerinizi Kontrol Ediniz...','Kalan Lisans Süreniz : ' + floattoStr(fark),'Detaylý Bilgi Ýçin Sistem Yöneticisine Baþvurunuz','info');
                         end;
   RaporMedulaSil   :  begin
                              DurumGoster(True,False,'Rapor Ýptal Ýçin Ýmzalanýyor...Lütfen Bekleyiniz...',1);
                              try
                                Sonuc := RaporIslemGonder('imzaliEraporSilBilgisi');
                                if Copy(Sonuc,1,4) = '0000'
                                then begin
                                  RaporGrid.Dataset.edit;
                                  RaporGrid.Dataset.FieldByName('raporTakipNo').AsString := '';
                                  RaporGrid.Dataset.post;
                                end;
                              finally
                                DurumGoster(False,False,'');
                                if Copy(Sonuc,1,4) <> '0000' then
                                ShowMessageSkin(Sonuc,'','','info');
                              end;
                       end;
   RaporBasHekimOnay : begin
                               DurumGoster(True,False,'Rapor Onay Ýçin Ýmzalanýyor...Lütfen Bekleyiniz...',1);
                              try
                                Sonuc := RaporIslemGonder('imzaliEraporBashekimOnayBilgisi');
                                if Copy(Sonuc,1,4) = '0000'
                                then begin
                                  RaporGrid.Dataset.edit;
                                  RaporGrid.Dataset.FieldByName('Onay').AsString := '1';
                                  RaporGrid.Dataset.post;
                                end;
                              finally
                                DurumGoster(False,False,'');
                                if Copy(Sonuc,1,4) <> '0000' then
                                ShowMessageSkin(Sonuc,'','','info');
                              end;
                       end;
   RaporBasHekimOnayRed : begin
                              DurumGoster(True,False,'Rapor Onay Red Ýçin Ýmzalanýyor...Lütfen Bekleyiniz...',1);
                              try
                                Sonuc := RaporIslemGonder('imzaliEraporBashekimOnayRedBilgisi');
                                if Copy(Sonuc,1,4) = '0000'
                                then begin
                                  RaporGrid.Dataset.edit;
                                  RaporGrid.Dataset.FieldByName('Onay').AsString := '0';
                                  RaporGrid.Dataset.post;
                                end;
                              finally
                                DurumGoster(False,False,'');
                                if Copy(Sonuc,1,4) <> '0000' then
                                ShowMessageSkin(Sonuc,'','','info');
                              end;
                          end;


  end;
end;



procedure TfrmRaporDetay.RaporuMedulayaKaydet;
var
   dosyaNo,gelisNo , tur , raporNo : string;
   RprAckEkle : EraporAciklamaEkleIstekDVO;
   RprAckEkleCvp : EraporAciklamaEkleCevapDVO;
   ack : EraporAciklamaDVO;
   sonuc : string;
   _dn_ ,_gn_ , _id_ , _d_ , _s , _p: string;
   _exe : PAnsiChar;
   Reg : TRegistry;
begin

  if RaporGrid.Dataset.FieldByName('raporTuru').AsString = '10'
  then begin
      Reg := Tregistry.Create;
      Reg.RootKey := HKEY_CURRENT_USER;
      Reg.OpenKey('SOFTWARE\NOKTA\Eimza',True);
      Oku.Enabled := true;
      _dn_ := RaporGrid.Dataset.fieldbyname('dosyaNo').AsString;
      _gn_ := RaporGrid.Dataset.fieldbyname('gelisNo').AsString;
      _id_ := RaporGrid.Dataset.fieldbyname('sira').AsString;
      _d_ := RaporGrid.Dataset.FieldByName('kod').AsString;
      _exe :=  PAnsiChar(AnsiString('C:\NoktaV3\E-imza\imza.exe ' + 'IR' + ' '+ _dn_ + ' ' + _gn_ + ' ' + _id_ + ' ' + _d_  + ' ' + datalar.AktifSirket));
      WinExec(_exe,SW_SHOW);



  end
  else
  begin
    raporNo := RaporGrid.Dataset.FieldByName('raporNo').AsString;
    dosyaNo := RaporGrid.Dataset.FieldByName('dosyaNo').AsString;
    RaporKaydet(dosyaNo,raporNo,'1','1');
  end;


end;



procedure TfrmRaporDetay.YeniRapor;
var
  sql : string;
begin

    if mrYes = ShowPopupForm('Yeni Rapor',raporInsert)
    Then Begin
       Application.ProcessMessages;
          sql := 'insert into Raporlar (dosyaNo,gelisNo,raporNo,raporTarihi,Turu,tedaviRaporTuru,verenTesisKodu,' +
                                        ' duzenlemeTuru,baslangicTarihi,bitisTarihi,protokolNo,aciklama) ' +
                 ' values (' +
                 QuotedStr(_dosyaNO_) + ',' +
                 QuotedStr(_gelisNO_) + ',' +
                 QuotedStr(datalar.RaporBilgisi.raporNo) + ',' +
                 QuotedStr(datalar.RaporBilgisi.raporTarihi) + ',' +
                 QuotedStr(datalar.RaporBilgisi.Turu) + ',' +
                 QuotedStr(datalar.RaporBilgisi.tedaviRaporTuru) + ',' +
                 QuotedStr(datalar.RaporBilgisi.verenTesisKodu) + ',' +
                 QuotedStr(datalar.RaporBilgisi.duzenlemeTuru) + ',' +
                 QuotedStr(datalar.RaporBilgisi.baslangicTarihi) + ',' +
                 QuotedStr(datalar.RaporBilgisi.bitisTarihi) + ',' +
                 QuotedStr(datalar.RaporBilgisi.protokolNo) + ',' +
                 QuotedStr(datalar.RaporBilgisi.aciklama) + ')';

          datalar.QueryExec(sql);
          RaporGrid.Dataset.Requery();
          RaporGrid.Dataset.Next;
    End;


end;



procedure TfrmRaporDetay.cxButtonCClick(Sender: TObject);
begin
  datalar.KontrolUserSet := False;
  inherited;
  if datalar.KontrolUserSet = True then exit;

   case TControl(sender).Tag of
  -1 : begin
         AktifRaporYap;
       end;
  RaporMedulaKaydet,
  RaporMedulaSil,
  RaporBasHekimOnay,
  RaporBasHekimOnayRed
        : begin
            RaporuMedulayaKaydet(TControl(sender).Tag);
          end;
  -5 : begin
          RaporMeduladanOku;
       end;
  -6 : begin
         RaporMeduladanSil;
       end;
  -7 : begin
         RaporuYazdir;
       end;
  -8 : begin
         RaporuSistemdenSil;
       end;
  -9 : begin
         RaporAra;
       end;

  -20 : begin
          YeniRapor;
        end;
  -21 : begin
          raporDuzenle;
        end;

  -22 : begin
          if datalar.RaporBilgisi.raporNo = ''
          then
            datalar.RaporBilgisi.raporNo := inttostr(EnsonRaporProtokolNo);
            //ADO_RAPORLAR.Post;
        end;
  -30 : begin
          close;
        end;

   end;
end;


function TfrmRaporDetay.RaporAciklamaEkle(RaporTakip,aciklama ,TakipformNo: string ; var msg : string) : string;
var
   RprAckEkle : EraporAciklamaEkleIstekDVO;
   RprAckEkleCvp : EraporAciklamaEkleCevapDVO;
   ack : EraporAciklamaDVO;
   sonuc : string;
begin
      //datalar.Login;
      RprAckEkle := EraporAciklamaEkleIstekDVO.Create;
      RprAckEkle.tesisKodu := datalar._tesisKodu;
      RprAckEkle.doktorTcKimlikNo := doktorTc(datalar.doktorKodu);
      RprAckEkle.raporTakipNo := RaporTakip;
      ack := EraporAciklamaDVO.Create;
      ack.takipFormuNo := TakipformNo;
      ack.aciklama := aciklama;
      RprAckEkle.eraporAciklamaDVO := ack;

 //     datalar.IlacRapor_.HTTPWebNode.UserName := datalar._doktorReceteUser;
//      datalar.IlacRapor_.HTTPWebNode.Password := datalar._doktorRecetePas;
 //     datalar.IlacRapor_.URL := 'https://medeczane.sgk.gov.tr/eczanews/services/SaglikTesisiRaporIslemleri';

     try
    //    RprAckEkleCvp := (datalar.IlacRapor_ as SaglikTesisiRaporIslemleri).eraporAciklamaEkle(RprAckEkle);
        sonuc := RprAckEkleCvp.sonucKodu;
     except
          on E: Exception do
          begin
             ShowMessageSkin(E.Message,'','','info');
          end;
     end; // except end

    if sonuc <> '0000' then
    msg := RprAckEkleCvp.sonucMesaji;

    RaporAciklamaEkle := sonuc;

end;

function TfrmRaporDetay.IlacRaporBasHekimOnayBekleyenLis : ArrayOf_105704153_1440052060_long;
var
 OnayLisGrs : EraporBashekimOnayBekleyenListeSorguIstekDVO;
 OnayListCvp : EraporBashekimOnayBekleyenListeSorguCevapDVO;
begin
  OnayLisGrs := EraporBashekimOnayBekleyenListeSorguIstekDVO.Create;
  OnayListCvp := EraporBashekimOnayBekleyenListeSorguCevapDVO.Create;

  //datalar.Login;
 // datalar.IlacRapor_.HTTPWebNode.UserName := datalar._doktorReceteUser;
//  datalar.IlacRapor_.HTTPWebNode.Password := datalar._doktorRecetePas;
 // datalar.IlacRapor_.URL := 'https://medeczane.sgk.gov.tr/eczanews/services/SaglikTesisiRaporIslemleri';

  OnayLisGrs.tesisKodu := datalar._tesisKodu;
  OnayLisGrs.doktorTcKimlikNo := doktorTC(datalar.doktorKodu);

  try
   //  OnayListCvp := (datalar.IlacRapor_ as SaglikTesisiRaporIslemleri).eraporBashekimOnayBekleyenListeSorgu(OnayLisGrs);
  except
       on E: Exception do Showmessage(E.Message,'','','info');
  end;

  if OnayListCvp.sonucKodu = '0'
  then IlacRaporBasHekimOnayBekleyenLis := OnayListCvp.raporTakipNoListesi;

end;


function TfrmRaporDetay.IlacRaporBasHekimOnay(RaporNo , Tc : string) : string;
var
 BhekimOnay : saglikTesisiRaporIslemleriWSIlac.EraporBashekimOnayIstekDVO;
 BhekimOnayCvp : saglikTesisiRaporIslemleriWSIlac.EraporBashekimOnayCevapDVO;
begin
  BhekimOnay := saglikTesisiRaporIslemleriWSIlac.EraporBashekimOnayIstekDVO.Create;
  BhekimOnayCvp := saglikTesisiRaporIslemleriWSIlac.EraporBashekimOnayCevapDVO.Create;

  if Tc = ''
  Then Begin
    Tc := InputBox('Baþhekim Bilgisi','Baþhekim Tc Bilgisi','');
  End;


  //datalar.Login;
 // datalar.Rapor_.URL := datalar.raporIlacURL;

  BhekimOnay.tesisKodu := datalar._tesisKodu;
  BhekimOnay.doktorTcKimlikNo := Tc;
  datalar.doktorKodu := doktorTCtoKod(Tc);
  BhekimOnay.raporTakipNo := datalar.RaporBilgisi.raporTakipNo;

  try
  //   BhekimOnayCvp := (datalar.Rapor_ as saglikTesisiRaporIslemleriWSIlac.SaglikTesisiRaporIslemleri).eraporBashekimOnay(BhekimOnay);
  except
       on E: Exception do Showmessage(E.Message,'','','info');
  end;

  if BhekimOnayCvp.sonucKodu = '0000'
  Then Begin
    ShowMessageSkin('Onay Ýþlemi Yapýldý','','','info');
  End
  Else
    ShowMessageSkin(BhekimOnayCvp.sonucMesaji,'','','info');

    IlacRaporBasHekimOnay := BhekimOnayCvp.sonucKodu;

end;


function TfrmRaporDetay.IlacRaporBasHekimOnayRed(RaporNo , Tc : string) : string;
var
 BhekimOnay : saglikTesisiRaporIslemleriWSIlac.EraporBashekimOnayRedIstekDVO;
 BhekimOnayCvp : saglikTesisiRaporIslemleriWSIlac.EraporBashekimOnayRedCevapDVO;
begin
  BhekimOnay := saglikTesisiRaporIslemleriWSIlac.EraporBashekimOnayRedIstekDVO.Create;
  BhekimOnayCvp := saglikTesisiRaporIslemleriWSIlac.EraporBashekimOnayRedCevapDVO.Create;

  if Tc = ''
  Then Begin
    Tc := InputBox('Baþhekim Bilgisi','Baþhekim Tc Bilgisi','');
  End;


  //datalar.Login;
  //datalar.Rapor_.URL := datalar.raporIlacURL;

  BhekimOnay.tesisKodu := datalar._tesisKodu;
  BhekimOnay.doktorTcKimlikNo := Tc;
  datalar.doktorKodu := doktorTCtoKod(Tc);
  BhekimOnay.raporTakipNo := datalar.RaporBilgisi.raporTakipNo;

  try
 //    BhekimOnayCvp := (datalar.Rapor_ as saglikTesisiRaporIslemleriWSIlac.SaglikTesisiRaporIslemleri).eraporBashekimOnayRed(BhekimOnay);
  except
       on E: Exception do Showmessage(E.Message,'','','info');
  end;

  if BhekimOnayCvp.sonucKodu = '0000'
  Then Begin
    ShowMessageSkin('Onay Red Ýþlemi Yapýldý','','','info');
  End
  Else
    ShowMessageSkin(BhekimOnayCvp.sonucMesaji,'','','info');

    IlacRaporBasHekimOnayRed := BhekimOnayCvp.sonucKodu;

end;



procedure TfrmRaporDetay.IlacRaporsil(RaporNo : string);
var
  RSil : EraporSilIstekDVO;
  RSilCvp : EraporSilCevapDVO;
begin
  RSil := EraporSilIstekDVO.Create;
  RSilCvp := EraporSilCevapDVO.Create;

  //datalar.Login;
 // datalar.IlacRapor_.HTTPWebNode.UserName := datalar._doktorReceteUser;
//  datalar.IlacRapor_.HTTPWebNode.Password := datalar._doktorRecetePas;
//  datalar.IlacRapor_.URL := 'https://medeczane.sgk.gov.tr/eczanews/services/SaglikTesisiRaporIslemleri';

  RSil.tesisKodu := datalar._tesisKodu;
  if datalar.doktorKodu = ''
  Then
    Rsil.doktorTcKimlikNo := doktorTc(datalar.RaporBilgisi.duzenleyenDoktor)
  Else
   RSil.doktorTcKimlikNo := doktorTc(datalar.doktorKodu);

  Rsil.raporTakipNo := datalar.RaporBilgisi.raporTakipNo;

  try
   //  RSilCvp := (datalar.IlacRapor_ as SaglikTesisiRaporIslemleri).eraporSil(Rsil);
  except
       on E: Exception do Showmessage(E.Message,'','','info');
  end;
 (*
  if RSilCvp.sonucKodu = '0'
  Then Begin
    ADO_RAPORLAR.Edit;
    ADO_RAPORLAR.FieldByName('raporTakipNo').AsString := '';
    ADO_RAPORLAR.Post;
    ADO_RAPORLAR.Refresh;
  End;
   *)

end;


procedure TfrmRaporDetay.RaporBul(RaporNo,RaporTarihi,verenTesis ,Tur , Durum  : string);
var
   Ts_RaporBul : RaporSorguDVO;
   Ts_RaporCvp : RaporCevapDVO;
//   RaporBilgisi : RaporBilgisiDVO;
   RaporBilgisi : RaporOkuDVO;
   RaporuOkuTakipNodan : RaporOkuRaporTakipNodanDVO;

   Ts_RaporBulIlac : saglikTesisiRaporIslemleriWSIlac.eraporSorguIstekDVO;
   Ts_RaporCvpIlac : saglikTesisiRaporIslemleriWSIlac.eraporSorguCevapDVO;
   Ts_RaporSilIlac : saglikTesisiRaporIslemleriWSIlac.eraporSilIstekDVO;
   Ts_RaporSilCvp : saglikTesisiRaporIslemleriWSIlac.EraporSilCevapDVO;

   r,i : integer;
   //OkuDVO;
  _msg_ , _msg1_ , _msg2_ , _tani_: string;
begin

        if datalar.doktorKodu= ''
        Then datalar.doktorKodu := datalar.RaporBilgisi.duzenleyenDoktor;

       if Tur = '10'
       then begin
    //        datalar.Rapor_.URL := datalar.raporIlacURL;
            if durum = 'BUL'
            then begin
                      Ts_RaporBulIlac := saglikTesisiRaporIslemleriWSIlac.eraporSorguIstekDVO.Create;
                      Ts_RaporCvpIlac := saglikTesisiRaporIslemleriWSIlac.eraporSorguCevapDVO.Create;
                      Ts_RaporBulIlac.tesisKodu := inttostr(datalar._kurumKod);
                      Ts_RaporBulIlac.raporTakipNo := RaporNo;
                      Ts_RaporBulIlac.doktorTcKimlikNo := doktorTC(datalar.doktorKodu);

                      try
                //         Ts_RaporCvpIlac := (datalar.Rapor_ as saglikTesisiRaporIslemleriWSIlac.SaglikTesisiRaporIslemleri).eraporSorgula(Ts_RaporBulIlac);

                      except
                           on E: Exception do Showmessage(E.Message,'','','info');

                      end;


                      if Ts_RaporCvpIlac.sonucKodu = '0000'
                      then begin
                                if Ts_RaporCvpIlac.eraporDVO.raporNo <> null
                                then
                                    ShowMessageskin('Rapor Kayýtlý','Rapor No : ' + Ts_RaporCvpIlac.eraporDVO.raporno,
                                                'Rapor Tarihi : ' + Ts_RaporCvpIlac.eraporDVO.raporTarihi,'info')
                                else
                                    ShowMessageskin('Rapor Kayýtlý Deðil',Ts_RaporCvpIlac.eraporDVO.raporno,'','info');


                             if Ts_RaporCvpIlac.sonucKodu = '0000'
                             then begin
                                     //  ADO_RAPORLAR.Edit;
                                    //   ADO_RAPORLAR.FieldByName('RaporTakipno').AsString := Ts_RaporCvpIlac.eraporDVO.raporTakipNo;
                                     //  ADO_RAPORLAR.Post;
                                   //    ShowMessageSkin('Rapor Baþarý ile Kaydedildi','','','info');
                             end;

                      end else
                      begin
                           ShowMessageskin('',Ts_RaporCvpIlac.uyariMesaji,Ts_RaporCvpIlac.sonucMesaji,'info');

                      end;


            end;

            if durum = 'SÝL'
            then begin
                      Ts_RaporSilIlac := saglikTesisiRaporIslemleriWSIlac.eraporSilIstekDVO.Create;
                      Ts_RaporSilCvp := saglikTesisiRaporIslemleriWSIlac.EraporSilCevapDVO.Create;
                      Ts_RaporSilIlac.tesisKodu := inttostr(datalar._kurumKod);
                      Ts_RaporSilIlac.raporTakipNo := RaporNo;
                      Ts_RaporSilIlac.doktorTcKimlikNo := doktorTC(datalar.doktorKodu);

                      try
                  //       Ts_RaporSilCvp := (datalar.Rapor_ as saglikTesisiRaporIslemleriWSIlac.SaglikTesisiRaporIslemleri).eraporSil(Ts_RaporSilIlac);

                      except
                           on E: Exception do Showmessage(E.Message,'','','info');

                      end;


                      if Ts_RaporSilCvp.sonucKodu = '0000'
                      then begin
                                ShowMessageskin('Rapor Meduladan Silindi','','','info');
                                     //  ADO_RAPORLAR.Edit;
                                     //  ADO_RAPORLAR.FieldByName('RaporTakipno').AsString := '0';
                                     //  ADO_RAPORLAR.Post;
                                   //    ShowMessageSkin('Rapor Baþarý ile Kaydedildi','','','info');

                      end else
                              ShowMessageSkin(Ts_RaporSilCvp.uyariMesaji,Ts_RaporSilCvp.sonucMesaji,'','info');



            end;
       end
       Else
       begin
            datalar.RaporIslemWS.RaporCevap := nil;
            datalar.RaporIslemWS.RaporBilgisi.raporBilgisi.no := RaporNo;
            datalar.RaporIslemWS.RaporBilgisi.raporBilgisi.tarih := RaporTarihi;
            datalar.RaporIslemWS.RaporBilgisi.raporBilgisi.raporTesisKodu := strtoint(verenTesis);
            datalar.RaporIslemWS.RaporBilgisi.raporBilgisi.turu := tur;
            datalar.RaporIslemWS.RaporBilgisi.saglikTesisKodu := datalar._kurumKod;

            if durum = 'BUL'
            then begin
                      try
                         datalar.RaporIslemWS.raporBilgisiBul;
                      except
                           on E: Exception do
                            begin
                               Showmessage(E.Message,'','','info');
                               exit;
                            end;
                      end;


                      if datalar.RaporIslemWS.RaporCevap.sonucKodu = 0
                      then begin
                             if datalar.RaporIslemWS.RaporCevap.raporTuru = '1'
                             Then Begin
                                if Assigned(datalar.RaporIslemWS.RaporCevap.tedaviRapor.islemler[0].diyalizRaporBilgisi)
                                then begin

                                                 _msg_ :=   'Rapor Medula Sistemine Kayýtlý' + #13 +
                                                    'Rapor No        : ' + datalar.RaporIslemWS.RaporCevap.tedaviRapor.raporDVO.raporBilgisi.no + #13 +
                                                    'Rapor Tarihi    : ' + datalar.RaporIslemWS.RaporCevap.tedaviRapor.raporDVO.raporBilgisi.tarih + #13 +
                                                    'Tesis Kodu      : ' + inttostr(datalar.RaporIslemWS.RaporCevap.tedaviRapor.raporDVO.raporBilgisi.raporTesisKodu) + #13 +
                                                    'Rapor Baþlangýç : ' + datalar.RaporIslemWS.RaporCevap.tedaviRapor.raporDVO.baslangicTarihi + #13 +
                                                    'Rapor Bitiþ     : ' + datalar.RaporIslemWS.RaporCevap.tedaviRapor.raporDVO.bitisTarihi + #13 +
                                                    'Protokol No     : ' + datalar.RaporIslemWS.RaporCevap.tedaviRapor.raporDVO.protokolNo + #13 +
                                                    'But Kodu        : ' + datalar.RaporIslemWS.RaporCevap.tedaviRapor.islemler[0].diyalizRaporBilgisi.butkodu + #13 +
                                                    'Seans Gün       : ' + inttostr(datalar.RaporIslemWS.RaporCevap.tedaviRapor.islemler[0].diyalizRaporBilgisi.seansGun) + #13 +
                                                    'Seans Sayý      : ' + inttostr(datalar.RaporIslemWS.RaporCevap.tedaviRapor.islemler[0].diyalizRaporBilgisi.seansSayi) + #13 +
                                                    'Açýklama        : ' + datalar.RaporIslemWS.RaporCevap.tedaviRapor.raporDVO.aciklama + #13 +
                                                    'Hasta Bilgileri : ' + #13 +
                                                    '------------------' + #13 +
                                                    'T.C. Kimlik No  : ' + datalar.RaporIslemWS.RaporCevap.tedaviRapor.raporDVO.hakSahibi.tckimlikNo + #13 +
                                                    'Hasta Adý       : ' + datalar.RaporIslemWS.RaporCevap.tedaviRapor.raporDVO.hakSahibi.adi + ' ' + datalar.RaporIslemWS.RaporCevap.tedaviRapor.raporDVO.hakSahibi.soyadi + #13 +
                                                    'Devredilen Kur  : ' + datalar.RaporIslemWS.RaporCevap.tedaviRapor.raporDVO.hakSahibi.devredilenKurum + #13 +
                                                    'Yakýnlýk        : ' + datalar.RaporIslemWS.RaporCevap.tedaviRapor.raporDVO.hakSahibi.yakinlikKodu + #13 +
                                                    'Sigortalý Türü  : ' + datalar.RaporIslemWS.RaporCevap.tedaviRapor.raporDVO.hakSahibi.sigortaliTuru + #13 +
                                                    'Sosya Güv. No   : ' + datalar.RaporIslemWS.RaporCevap.tedaviRapor.raporDVO.hakSahibi.sosyalGuvenlikNo + #13 +
                                                    'Karne No        : ' + datalar.RaporIslemWS.RaporCevap.tedaviRapor.raporDVO.hakSahibi.karneNo + #13 +

                                                    'Taný Bilgileri  : ' + #13 + '------------------' + #13;

                                   //                 'Taný Kodu       : ' + ifThen(Ts_RaporCvp.tedaviRapor.raporDVO.tanilar[0].taniKodu='','0', Ts_RaporCvp.tedaviRapor.raporDVO.tanilar[0].taniKodu) + #13+

                                                     For r := 0 to length(datalar.RaporIslemWS.RaporCevap.tedaviRapor.raporDVO.tanilar)-1 do
                                                     Begin
                                                       _msg1_ := _msg1_ + 'Taný Kodu       : ' + datalar.RaporIslemWS.RaporCevap.tedaviRapor.raporDVO.tanilar[r].taniKodu + #13;
                                                       _tani_ := _tani_ + datalar.RaporIslemWS.RaporCevap.tedaviRapor.raporDVO.tanilar[r].taniKodu + ',';
                                                     End;
                                                     if pos('N18',uppercase(_msg1_)) = 0
                                                     Then ShowMessageSkin('Rapor Tanýlarý içinde N18 Tanýsý Yoktur',
                                                                          'Lütfen Kontrol Ediniz. !','','info');


                                                    _msg1_ := _msg1_ +  'Doktor Bilgileri: ' + #13;


                                                    For  r := 0 to length(datalar.RaporIslemWS.RaporCevap.tedaviRapor.raporDVO.doktorlar)-1 do
                                                    Begin
                                                     _msg1_ := _msg1_ + 'Doktor Tescil   : ' +  datalar.RaporIslemWS.RaporCevap.tedaviRapor.raporDVO.doktorlar[r].drTescilNo + #13 +
                                                                        'D.Adi ve Soyadý : ' + datalar.RaporIslemWS.RaporCevap.tedaviRapor.raporDVO.doktorlar[r].drAdi + ' ' + datalar.RaporIslemWS.RaporCevap.tedaviRapor.raporDVO.doktorlar[r].drSoyadi + #13 +
                                                                        'Doktor BranþKodu: ' + datalar.RaporIslemWS.RaporCevap.tedaviRapor.raporDVO.doktorlar[r].drBransKodu+#13;

                                                    End;






                                                   ShowMessageSkin(_msg_ + _msg1_ ,'','','info');


                                end

                                else
                                    ShowMessageskin('Rapor Kayýtlý Deðil',datalar.RaporIslemWS.RaporCevap.tedaviRapor.raporDVO.raporBilgisi.no,'','info');
                             End;

                             if datalar.RaporIslemWS.RaporCevap.raporTuru = '10'
                             Then BEgin
                                if Ts_RaporCvp.ilacRapor.raporDVO.raporBilgisi.no <> null
                                then
                                    ShowMessageskin('Rapor Kayýtlý','Rapor No : ' + Ts_RaporCvp.ilacRapor.raporDVO.raporBilgisi.no,
                                                'Rapor Tarihi : ' + Ts_RaporCvp.ilacRapor.raporDVO.raporBilgisi.tarih,'info')
                                else
                                    ShowMessageskin('Rapor Kayýtlý Deðil',Ts_RaporCvp.ilacRapor.raporDVO.raporBilgisi.no,'','info');
                             End;


                             if datalar.RaporIslemWS.RaporCevap.sonucKodu = 0
                             then begin

                             end;



                      end else
                      begin
                           ShowMessageskin('',datalar.RaporIslemWS.RaporCevap.sonucAciklamasi,'','info');

                      end;


            end;

            if durum = 'SÝL'
            then begin

                      try
                   //      Ts_RaporCvp := (datalar.Rapor_M as RaporIslemleri).raporBilgisiSil(Ts_RaporBul);

                      except
                           on E: Exception do Showmessage(E.Message,'','','info');

                      end;


                      if Ts_RaporCvp.sonucKodu = 0
                      then begin
                                ShowMessageskin('Rapor Meduladan Silindi','','','info');

                      end else
                              ShowMessageSkin(Ts_RaporCvp.sonucAciklamasi,'','','info');



            end;



       end;
    //  txtinfo.Caption := '';


end;
procedure TfrmRaporDetay.raporDuzenle;
var
  sql : string;
  Book : TBookmark;
begin
// a
    datalar.RaporBilgisi.sira := RaporGrid.Dataset.FieldByName('sira').AsString;
    datalar.RaporBilgisi.raporNo := RaporGrid.Dataset.FieldByName('raporNo').AsString;
    datalar.RaporBilgisi.raporTarihi := RaporGrid.Dataset.FieldByName('raporTarihi').AsString;
    datalar.RaporBilgisi.Turu := RaporGrid.Dataset.FieldByName('turu').AsString;
    datalar.RaporBilgisi.tedaviRaporTuru := RaporGrid.Dataset.FieldByName('tedaviRaporTuru').AsString;
    datalar.RaporBilgisi.verenTesisKodu :=  RaporGrid.Dataset.FieldByName('verenTesisKodu').AsString;
    datalar.RaporBilgisi.duzenlemeTuru :=  RaporGrid.Dataset.FieldByName('duzenlemeTuru').AsString;
    datalar.RaporBilgisi.baslangicTarihi :=  RaporGrid.Dataset.FieldByName('baslangicTarihi').AsString;
    datalar.RaporBilgisi.bitisTarihi :=  RaporGrid.Dataset.FieldByName('bitisTarihi').AsString;
    datalar.RaporBilgisi.protokolNo :=  RaporGrid.Dataset.FieldByName('protokolNo').AsString;
    datalar.RaporBilgisi.aciklama :=  RaporGrid.Dataset.FieldByName('aciklama').AsString;
    datalar.RaporBilgisi.duzenleyenDoktor :=  RaporGrid.Dataset.FieldByName('duzenleyenDoktor').AsString;

    datalar.RaporBilgisi.butkodu :=  RaporGrid.Dataset.FieldByName('butkodu').AsString;
    datalar.RaporBilgisi.seansGun :=  RaporGrid.Dataset.FieldByName('seansGun').AsString;
    datalar.RaporBilgisi.seansSayi :=  RaporGrid.Dataset.FieldByName('seansSayi').AsString;

    datalar.RaporBilgisi.raporTakipNo := RaporGrid.Dataset.FieldByName('raporTakipNo').AsString;

    datalar.RaporBilgisi.raporCaption :=  _HastaAdSoyad_;


    if mrYes = ShowPopupForm('Rapor Duzenle',raporUpdate)
    Then Begin
       Application.ProcessMessages;
          sql := 'update Raporlar set ' +
                 'raporNo = ' + QuotedStr(datalar.RaporBilgisi.raporNo) +
                 ',raporTarihi = ' + QuotedStr(datalar.RaporBilgisi.raporTarihi) +
                 ',Turu = ' + QuotedStr(datalar.RaporBilgisi.Turu) +
                 ',tedaviRaporTuru = ' + QuotedStr(datalar.RaporBilgisi.tedaviRaporTuru) +
                 ',verenTesisKodu =' + QuotedStr(datalar.RaporBilgisi.verenTesisKodu) +
                 ',duzenlemeTuru = ' + QuotedStr(datalar.RaporBilgisi.duzenlemeTuru) +
                 ',baslangicTarihi = ' + QuotedStr(datalar.RaporBilgisi.baslangicTarihi) +
                 ',bitisTarihi = ' + QuotedStr(datalar.RaporBilgisi.bitisTarihi) +
                 ',protokolNo = ' + QuotedStr(datalar.RaporBilgisi.protokolNo) +
                 ',aciklama = ' + QuotedStr(datalar.RaporBilgisi.aciklama) +
                 ',duzenleyenDoktor = ' + QuotedStr(datalar.RaporBilgisi.duzenleyenDoktor) +
                 ',raporTakipNo = ' + QuotedStr(datalar.RaporBilgisi.raporTakipNo) +
                 'where sira = ' + datalar.RaporBilgisi.sira;

          datalar.QueryExec(sql);

          Book := RaporGrid.Dataset.Bookmark;
          datalar.QuerySelect(RaporGrid.Dataset, 'select * from Raporlar where dosyaNo = ' + QuotedStr(_dosyaNO_) + ' order by bitisTarihi desc' );
          RaporGrid.Dataset.GotoBookmark(Book);
          ListeRaporlar.Controller.GridView.ViewData.Expand(True);

       //   RaporGrid.Dataset.Requery();
       //   RaporGrid.Dataset.Next;
    End;



end;

procedure TfrmRaporDetay.dogumOncesiCalisabilirRaporu;
var
   DogumOncesi : DogumOncesiCalisabilirRaporDVO;
begin
     DogumOncesi := DogumOncesiCalisabilirRaporDVO.Create;
//     RAPORBILGISINULL;
//     DogumOncesi.raporDVO := Rapor;
//     Ts_RaporGon.dogumOncesiCalisabilirRapor := DogumOncesi;
end;

procedure TfrmRaporDetay.IsGormezlikRaporu;
var
   Isgormezlik : IsgoremezlikRaporDVO;
begin
     Isgormezlik := IsgoremezlikRaporDVO.Create;
//     RAPORBILGISINULL;
//     Isgormezlik.raporDVO := nil;
//     Ts_RaporGon.isgoremezlikRapor := Isgormezlik;
end;

(*
procedure TfrmRaporDetay.IsGormezlikRaporuEk;
var
//   IsgormezlikEk : IsgoremezlikRaporEkDVO;
begin
     IsgormezlikEk := IsgoremezlikRaporEkDVO.Create;
//     RAPORBILGISINULL;
//     Isgormezlik.raporDVO := nil;
//     Ts_RaporGon.isgoremezlikRapor := Isgormezlik;
end;
  *)

procedure TfrmRaporDetay.dogumRaporu;
var
   dogum : DogumRaporDVO;
   cocuk : CocukBilgisiDVO;
begin
     dogum := DogumRaporDVO.Create;
     cocuk := CocukBilgisiDVO.Create;
//     RAPORBILGISINULL;
//     dogum.raporDVO := rapor;
//     Ts_RaporGon.dogumRapor := dogum;
end;

procedure TfrmRaporDetay.analikRaporu;
var
   analik : AnalikIsgoremezlikRaporDVO;
begin
     analik := AnalikIsgoremezlikRaporDVO.Create;
//     RAPORBILGISINULL;
//     analik.raporDVO := rapor;
//     Ts_RaporGon.analikRapor := analik;
end;

procedure TfrmRaporDetay.B1Click(Sender: TObject);
begin
  inherited;

  if TMenuItem(sender).Tag = 1
  Then
   IlacRaporBasHekimOnay(datalar.RaporBilgisi.raporTakipNo,'')
  Else
   IlacRaporBasHekimOnayRed(datalar.RaporBilgisi.raporTakipNo,'');




end;

procedure TfrmRaporDetay.protezRaporu;
var
   protez : ProtezRaporDVO;
   malzeme : MalzemeBilgisiDVO;
begin
     protez := ProtezRaporDVO.Create;
     malzeme := MalzemeBilgisiDVO.Create;
//     RAPORBILGISINULL;
//     protez.raporDVO := rapor;
//     Ts_RaporGon.protezRapor := protez;
end;



procedure TfrmRaporDetay.ilacRaporu;
var
   ilac : IlacRaporDVO;
   EtkinMadde : saglikTesisiRaporIslemleriWSIlac.eraporEtkinMaddeDVO;
   EtkinMaddeEtkin : saglikTesisiRaporIslemleriWSIlac.etkinMaddeDVO;
   EtkinMaddeler : Array_Of_eraporEtkinMaddeDVO;
   Aciklama : saglikTesisiRaporIslemleriWSIlac.eraporAciklamaDVO;
   AciklamaList : Array_Of_eraporAciklamaDVO;
   x , dizi: integer;
   ado : TADOQuery;
   sql , TakipFormNo : string;
begin

     ado := TADOQuery.Create(nil);
     ado.Connection := datalar.ADOConnection2;

  //   sql := 'select takipFormuNo from DiyabetTakip where dosyaNo = ' + QuotedStr(ADO_RAPORLAR.fieldbyname('dosyaNo').AsString) +
 //           ' and gelisNo = ' + ADO_RAPORLAR.fieldbyname('gelisNo').AsString;
 //    datalar.QuerySelect(ado,sql);

     if not ado.Eof
     then begin
       TakipFormNo := ado.Fields[0].AsString;
       Aciklama := saglikTesisiRaporIslemleriWSIlac.eraporAciklamaDVO.Create;
       Aciklama.takipFormuNo := TakipFormNo;
       SetLength(AciklamaList,length(AciklamaList)+1) ;
       AciklamaList[length(AciklamaList)-1] := Aciklama;
       _RaporIlac.eraporAciklamaListesi := AciklamaList;
     end;



      sql := 'select * from  IlacRaporEtkenMaddeler where RaporSira = ' + datalar.RaporBilgisi.sira;
      datalar.QuerySelect(ado,sql);

     SetLength(EtkinMaddeler,ado.RecordCount);

     for x := 0 to ado.RecordCount - 1 do
     begin
        EtkinMadde := saglikTesisiRaporIslemleriWSIlac.eRaporEtkinMaddeDVO.Create;

        EtkinMadde.etkinMaddeKodu := ado.fieldbyname('etkenMaddeKodu').AsString;
        EtkinMadde.kullanimDoz1 := ado.fieldbyname('kullanimDoz1').AsString;
        EtkinMadde.kullanimDoz2 := ado.fieldbyname('kullanimDoz2').AsString;
        EtkinMadde.kullanimDozBirimi := ado.fieldbyname('kullanimDozBirim').AsString;
        EtkinMadde.kullanimDozPeriyot := ado.fieldbyname('kullanimPeriyot').Asstring;
        EtkinMadde.kullanimDozPeriyotBirimi := ado.fieldbyname('kullanimPeriyotBirim').AsString;

        if ado.FieldByName('form').AsString <> ''
        then begin
          EtkinMaddeEtkin := saglikTesisiRaporIslemleriWSIlac.etkinMaddeDVO.Create;
          EtkinMaddeEtkin.kodu := ado.fieldbyname('etkenMaddeKodu').AsString;
          EtkinMaddeEtkin.adi :=  ado.fieldbyname('etkenMaddeAdi').AsString;
          EtkinMaddeEtkin.icerikMiktari := '';
          EtkinMaddeEtkin.formu := '';
          EtkinMadde.etkinMaddeDVO := EtkinMaddeEtkin;
        end;
        EtkinMaddeler[x] := EtkinMadde;
        ado.Next;
     end;

     _RaporIlac.eraporEtkinMaddeListesi := EtkinMaddeler;
     ado.Free;
     SetLength(EtkinMaddeler,0);

end;



procedure TfrmRaporDetay.ilacRaporuY;
var
   aciklama : EraporAciklamaDVO;
   aciklamaList : ArrayOfEraporAciklamaDVO;
   EtkinMadde : ERaporEtkinMaddeDVO;
   EtkinMaddeler : ArrayOfEraporEtkinMaddeDVO;
   x , dizi: integer;
   ado : TADOQuery;
   sql , TakipFormNo : string;
begin
     ado := TADOQuery.Create(nil);
     ado.Connection := datalar.ADOConnection2;

  //   sql := 'select takipFormuNo from DiyabetTakip where dosyaNo = ' + QuotedStr(ADO_RAPORLAR.fieldbyname('dosyaNo').AsString) +
  //          ' and gelisNo = ' + ADO_RAPORLAR.fieldbyname('gelisNo').AsString;
 //    datalar.QuerySelect(ado,sql);
       TakipFormNo := ado.Fields[0].AsString;
       SetLength(aciklamaList,1);
       aciklama := EraporAciklamaDVO.Create;
  //     aciklama.aciklama := ADO_RAPORLAR.fieldbyname('aciklama').AsString;
       aciklama.takipFormuNo := TakipFormNo;
       aciklamaList[0] := aciklama;
       Ts_RaporGonY.eraporDVO.eraporAciklamaListesi := aciklamaList;



      sql := 'select * from  IlacRaporEtkenMaddeler where RaporSira = ' + datalar.RaporBilgisi.sira;
      datalar.QuerySelect(ado,sql);

     SetLength(EtkinMaddeler,ado.RecordCount);

     for x := 0 to ado.RecordCount - 1 do
     begin
        EtkinMadde := EraporEtkinMaddeDVO.Create;
        EtkinMadde.etkinMaddeKodu := ado.fieldbyname('etkenMaddeKodu').AsString;
        EtkinMadde.kullanimDoz1 := ado.fieldbyname('kullanimDoz1').AsString;
        EtkinMadde.kullanimDoz2 := ado.fieldbyname('kullanimDoz2').AsString;
        EtkinMadde.kullanimDozBirimi := ado.fieldbyname('kullanimDozBirim').AsString;
        EtkinMadde.kullanimDozPeriyot := ado.fieldbyname('kullanimPeriyot').AsString;
        EtkinMadde.kullanimDozPeriyotBirimi := ado.fieldbyname('kullanimPeriyotBirim').AsString;

        EtkinMaddeler[x] := EtkinMadde;
        ado.Next;
     end;

     Ts_RaporGonY.eraporDVO.eraporEtkinMaddeListesi := EtkinMaddeler;

     ado.Free;
     SetLength(EtkinMaddeler,0);

end;



procedure TfrmRaporDetay.maluliyetRaporu;
var
   maluliyet : MaluliyetRaporDVO;
   BransGorus : BransGorusBilgisiDVO;
begin
     maluliyet := MaluliyetRaporDVO.Create;
//     RAPORBILGISINULL;
//     maluliyet.raporDVO := rapor;
     BransGorus := BransGorusBilgisiDVO.Create;
//     Ts_RaporGon.maluliyetRapor := maluliyet;
end;

procedure TfrmRaporDetay.N1Click(Sender: TObject);
var
  sql , sablon , id, idd ,doz1,doz2 ,peryot: string;
  ado : TADOQuery;
begin
  {
   sablon := InputBox('Teþhis , Etken Madde Þablon','Þablon Tanýmý Giriniz','Sablon1');
   if sablon <> ''
   then begin

 //    datalar.ADOConnection2.BeginTrans;

     try
       ado := TADOQuery.Create(nil);
       ado.Connection := datalar.ADOConnection2;

       sql := 'insert into IlacRaporSablon(SablonTanimi) ' +
              'values ( ' + QuotedStr(sablon) + ') select SCOPE_IDENTITY() as id ';
       datalar.QuerySelect(ado,sql);
       id := ado.fieldbyname('id').AsString;

       ADO_ILACTESHISLER.First;
       while not ADO_ILACTESHISLER.Eof do
       begin
         sql := 'insert into IlacRaporTeshislerSablon (sablonId,teshisKodu,ICD10Kodu) ' +
                'values(' + id + ',' +
                QuotedStr(ADO_ILACTESHISLER.FieldByName('teshisKodu').AsString) + ',' +
                QuotedStr(ADO_ILACTESHISLER.FieldByName('ICD10Kodu').AsString) + ')';
         datalar.QueryExec(ado,sql);
         ADO_ILACTESHISLER.Next;
       end;


       ADO_ILACETKENMADDE.First;
       while not ADO_ILACETKENMADDE.Eof do
       begin
         doz1 := ifThen(ADO_ILACETKENMADDE.FieldByName('kullanimDoz1').AsString = '','1',ADO_ILACETKENMADDE.FieldByName('kullanimDoz1').AsString);
         doz2 := ifThen(ADO_ILACETKENMADDE.FieldByName('kullanimDoz2').AsString = '','1',ADO_ILACETKENMADDE.FieldByName('kullanimDoz2').AsString);
         peryot := ifThen(ADO_ILACETKENMADDE.FieldByName('kullanimPeriyot').AsString = '','3',ADO_ILACETKENMADDE.FieldByName('kullanimPeriyot').AsString);

         sql := 'insert into IlacRaporEtkenMaddelerSablon (sablonId,etkenMaddeKodu,etkenMaddeAdi,kullanimDoz1,' +
                ' kullanimDoz2,kullanimDozBirim,kullanimPeriyot,kullanimPeriyotBirim) ' +
                'values(' + id + ',' +
                QuotedStr(ADO_ILACETKENMADDE.FieldByName('etkenMaddeKodu').AsString) + ',' +
                QuotedStr(ADO_ILACETKENMADDE.FieldByName('etkenMaddeAdi').AsString) +  ',' +
                doz1 + ',' +
                doz2 + ',' +
                QuotedStr(ADO_ILACETKENMADDE.FieldByName('kullanimDozBirim').AsString) + ',' +
                peryot + ',' +
                QuotedStr(ADO_ILACETKENMADDE.FieldByName('kullanimPeriyotBirim').AsString) +  ')';
         datalar.QueryExec(ado,sql);
         ADO_ILACETKENMADDE.Next;
       end;

       sql := 'insert into IlacRaporAciklamaSablon (sablonId,Aciklama) ' +
              'values(' + id + ',' +
              QuotedStr(ADO_RAPORLAR.FieldByName('aciklama').AsString) + ')';
       datalar.QueryExec(ado,sql);


 //      datalar.ADOConnection2.CommitTrans;
       ShowMessageSkin('Þablon Kayýt Edildi','','','info');

     except on e : Exception do
      begin
        ShowMessageSkin(e.Message,'','','info');
  //      datalar.ADOConnection2.RollbackTrans;
      end;
     end;
     ado.Free;
   end;
   }

end;

procedure TfrmRaporDetay.N5Click(Sender: TObject);
var
 Form : TGirisForm;
 GirisFormRecord : TGirisFormRecord;
begin
  inherited;

  case TMenuItem(sender).Tag of
   0 : begin
        GirisFormRecord.F_ResourceID_ := '';
        Form := FormINIT(TagfrmRaporSablon,GirisFormRecord);
        if Form <> nil then Form.showModal;
   end;

   1 : begin
        SablonKaydet;
       end;

   2 : begin
          GirisFormRecord.F_ResourceID_ := RaporGrid.Dataset.FieldByName('sira').AsString;
          Form := FormINIT(TagfrmRaporSablon,GirisFormRecord);
          if Form <> nil then Form.showModal;

       end;

  end;

end;

procedure TfrmRaporDetay.TedaviRaporu;
begin
      TedaviRapor := TedaviRaporDVO.Create;
      TedaviRapor.raporDVO := _Rapor;
      Ts_RaporGon.tedaviRapor := TedaviRapor;
end;


procedure TfrmRaporDetay.IslemKaydet(data : TADOQuery ; var TedaviRapor : tedaviRaporDVO);
var
   TedaviIslem : TedaviIslemBilgisiDVO;
   tedaviIslemleri : Array_Of_TedaviIslemBilgisiDVO;
   DiyalizRprB : DiyalizRaporBilgisiDVO;
   FTRRprB : FTRRaporBilgisiDVO;
   ESWLRprB : ESWLRaporBilgisiDVO;
   dizi , i : integer;
procedure DiyalizRaporBilgisi;
begin
    DiyalizRprB := DiyalizRaporBilgisiDVO.Create;
    DiyalizRprB.butKodu := data.fieldbyname('butKodu').AsString;
    DiyalizRprB.seansGun := data.fieldbyname('seansGun').AsInteger;
    DiyalizRprB.seansSayi := data.fieldbyname('seansSayi').AsInteger;
    DiyalizRprB.refakatVarMi := 'H';
end;
procedure FTRRaporBilgisi;
begin
   FTRRprB := FTRRaporBilgisiDVO.Create;
   FTRRprB.ftrVucutBolgesiKodu := strtoint(trim(data.fieldbyname('ftrVucutBolgesiKodu').AsString));
   FTRRprB.seansGun := data.fieldbyname('seansGun').AsInteger;
   FTRRprB.seansSayi := data.fieldbyname('seansSayi').AsInteger;
   FTRRprB.butKodu := data.fieldbyname('butKodu').AsString;

end;
procedure ESWLRaporBilgisi;
var
   TasBilgisi : ESWLTasBilgisiDVO;
   TasBilgileri : Array_Of_ESWLTasBilgisiDVO;
   x , dizi : integer;
begin
   ESWLRprB := ESWLRaporBilgisiDVO.Create;
   ESWLRprB.butKodu := data.fieldbyname('butKodu').AsString;
   ESWLRprB.eswlRaporuTasSayisi := data.fieldbyname('tasSayisi').AsInteger;
   ESWLRprB.eswlRaporuSeansSayisi := data.fieldbyname('seansSayi').AsInteger;
   ESWLRprB.eswlRaporuTasBilgileri := TasBilgileri;
   SetLength(TasBilgileri,0);
end;
begin
     dizi := 1;
     SetLength(tedaviIslemleri,dizi);
     for i := 0 to 0 do
     begin
        TedaviIslem := TedaviIslemBilgisiDVO.Create;
        //Diyazliz Rapor bilgisi yukle
        if trim(data.FieldByName('tedaviRaporturu').AsString) = '1'
        Then Begin
          DiyalizRaporBilgisi;
          TedaviIslem.diyalizRaporBilgisi := DiyalizRprB;
        End;
        // Ftr rapor bilgisi yükle
        if trim(data.FieldByName('tedaviRaporturu').AsString) = '5'
        Then Begin
           FTRRaporBilgisi;
           TedaviIslem.ftrRaporBilgisi := FTRRprB;
        End;
        if trim(data.FieldByName('tedaviRaporturu').AsString) = '6'
        Then Begin
           ESWLRaporBilgisi;
           TedaviIslem.eswlRaporBilgisi := ESWLRprB;
        End;
        tedaviIslemleri[i] := TedaviIslem;
     end;
     TedaviRapor.islemler := tedaviIslemleri;
     SetLength(tedaviIslemleri,0);
end;



procedure TfrmRaporDetay.ListeRaporlarDblClick(Sender: TObject);
begin
  inherited;
  raporDuzenle;
end;

procedure TfrmRaporDetay.ListeRaporlarFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
     datalar.RaporBilgisi.raporNo := RaporGrid.Dataset.FieldByName('raporNo').AsString;
     datalar.RaporBilgisi.raporTarihi := RaporGrid.Dataset.FieldByName('RaporTarihi').AsString;
     datalar.RaporBilgisi.verenTesisKodu := RaporGrid.Dataset.FieldByName('verenTesisKodu').AsString;
     datalar.RaporBilgisi.Turu := RaporGrid.Dataset.FieldByName('turu').AsString;
     datalar.RaporBilgisi.raporTakipNo := RaporGrid.Dataset.FieldByName('raporTakipNo').AsString;
end;

procedure TfrmRaporDetay.DoktorKaydet(raporID : string ; var _rapor : RaporDVO);
var
   Doktor : DoktorBilgisiDVO;
   Doktorlar : Array_Of_DoktorBilgisiDVO;
   DoktorY : EraporDoktorDVO;
   DoktorlarY : ArrayOfEraporDoktorDVO;
   dizi , i :integer;
   data : TADOQuery;
begin

        data := TADOQuery.Create(nil);
        data.Connection := datalar.ADOConnection2;
        try
        datalar.QuerySelect(data,'select * from DoktorlarT where kod =  (select duzenleyenDoktor from Raporlar where sira = ' + raporId + ')');

        data.First;
        dizi :=  data.RecordCount;
        SetLength(Doktorlar,dizi);
        for i := 0 to data.RecordCount - 1  do
        begin
             Doktor := DoktorBilgisiDVO.Create;
             doktor.drAdi := TrtoEng(data.fieldbyname('tanimi').AsString);
            // doktor.drSoyadi := TrtoEng(data.fieldbyname('drSoyadi').AsString);
             doktor.tipi := '1';
             doktor.drBransKodu := data.fieldbyname('drBransKodu').AsString;
             doktor.drTescilNo := data.fieldbyname('TescilNo').AsString;
             doktorlar[i] := doktor;
             data.Next
        end;
        _rapor.doktorlar := Doktorlar;

        finally
          SetLength(Doktorlar,0);
          Data.free;
        end;

end;



procedure TfrmRaporDetay.E1Click(Sender: TObject);
var
  EtkenMaddeEkleGrs : EraporEtkinMaddeEkleIstekDVO;
  EtkenMaddeEkleCvp : EraporEtkinMaddeEkleCevapDVO;

  Etkenler : ArrayOfERaporEtkinMaddeDVO;
  EtkinMadde : EraporEtkinMaddeDVO;
  sonuc : string;
  I : integer;
begin
  EtkenMaddeEkleGrs := EraporEtkinMaddeEkleIstekDVO.Create;
  EtkenMaddeEkleCvp := EraporEtkinMaddeEkleCevapDVO.Create;

  //datalar.Login;
//  datalar.IlacRapor_.HTTPWebNode.UserName := datalar._doktorReceteUser;
 // datalar.IlacRapor_.HTTPWebNode.Password := datalar._doktorRecetePas;
 // datalar.IlacRapor_.URL := 'https://medeczane.sgk.gov.tr/eczanews/services/SaglikTesisiRaporIslemleri';


  EtkenMaddeEkleGrs.tesisKodu := datalar._tesisKodu;
  EtkenMaddeEkleGrs.doktorTcKimlikNo := doktorTc(datalar.doktorKodu);
 // EtkenMaddeEkleGrs.raporTakipNo := ADO_RAPORLAR.FieldByName('raporTakipNo').AsString;

  //Etkenler := RaporEtkinMaddeler('',ADO_RAPORLAR.FieldByName('sira').AsString);
  (*
  if ADO_ILACETKENMADDE.fieldbyname('onay').AsInteger = 0
  Then Begin
    EtkinMadde := ERaporEtkinMaddeDVO.Create;
    EtkinMadde.etkinMaddeKodu := ADO_ILACETKENMADDE.fieldbyname('etkenMaddeKodu').AsString;
    EtkinMadde.kullanimDoz1 := ADO_ILACETKENMADDE.fieldbyname('kullanimDoz1').AsString;
    EtkinMadde.kullanimDoz2 := ADO_ILACETKENMADDE.fieldbyname('kullanimDoz2').AsString;
    EtkinMadde.kullanimDozBirimi := ADO_ILACETKENMADDE.fieldbyname('kullanimDozBirim').AsString;
    EtkinMadde.kullanimDozPeriyot := ADO_ILACETKENMADDE.fieldbyname('kullanimPeriyot').AsString;
    EtkinMadde.kullanimDozPeriyotBirimi := ADO_ILACETKENMADDE.fieldbyname('kullanimPeriyotBirim').AsString;
    EtkenMaddeEkleGrs.eraporEtkinMaddeDVO := EtkinMadde;

    try
   //   EtkenMaddeEkleCvp := (datalar.IlacRapor_ as SaglikTesisiRaporIslemleri).eraporEtkinMaddeEkle(EtkenMaddeEkleGrs);
      sonuc := EtkenMaddeEkleCvp.sonucKodu;
    except
        on E: Exception do
        begin
           ShowMessageSkin(E.Message,'','','info');
        end;
    end; // except end

    if sonuc = '0000'
    Then Begin
      ADO_ILACETKENMADDE.Edit;
      ADO_ILACETKENMADDE.fieldbyname('onay').AsInteger := 1;
      ADO_ILACETKENMADDE.Post;
    End
    else
    ShowMessageSkin(EtkenMaddeEkleCvp.sonucMesaji,EtkenMaddeEkleCvp.uyariMesaji,'','info');

  End;
  *)
end;

procedure TfrmRaporDetay.E2Click(Sender: TObject);
var
  TeshisEkleGrs : EraporTeshisEkleIstekDVO;
  TeshisEkleCvp : EraporTeshisEkleCevapDVO;
  Teshis : EraporTeshisDVO;
  TaniListesi : ArrayOf_105704153_699425500_nillable_TaniDVO;
  Tani : TaniDVO;

  sonuc : string;
  I : integer;
begin
  TeshisEkleGrs := EraporTeshisEkleIstekDVO.Create;
  TeshisEkleCvp := EraporTeshisEkleCevapDVO.Create;

  //datalar.Login;
 // datalar.IlacRapor_.HTTPWebNode.UserName := datalar._doktorReceteUser;
 // datalar.IlacRapor_.HTTPWebNode.Password := datalar._doktorRecetePas;
 // datalar.IlacRapor_.URL := 'https://medeczane.sgk.gov.tr/eczanews/services/SaglikTesisiRaporIslemleri';


  TeshisEkleGrs.tesisKodu := datalar._tesisKodu;
  TeshisEkleGrs.doktorTcKimlikNo := doktorTc(datalar.doktorKodu);
 // TeshisEkleGrs.raporTakipNo := ADO_RAPORLAR.FieldByName('raporTakipNo').AsString;

  Teshis := EraporTeshisDVO.Create;
//  Teshis.raporTeshisKodu := ADO_ILACTESHISLER.FieldByName('teshisKodu').AsString;
 // Teshis.baslangicTarihi := ADO_ILACTESHISLER.FieldByName('baslangicTarihi').AsString;
//  Teshis.bitisTarihi := ADO_ILACTESHISLER.FieldByName('bitisTarihi').AsString;

  setlength(TaniListesi,1);
  Tani := TaniDVO.Create;
//  Tani.kodu := ADO_ILACTESHISLER.FieldByName('ICD10Kodu').AsString;
  TaniListesi[0] := Tani;

  Teshis.taniListesi := TaniListesi;


  TeshisEkleGrs.eraporTeshisDVO := Teshis;

    try
    //  TeshisEkleCvp := (datalar.IlacRapor_ as SaglikTesisiRaporIslemleri).eraporTeshisEkle(TeshisEkleGrs);
      sonuc := TeshisEkleCvp.sonucKodu;
    except
        on E: Exception do
        begin
           ShowMessageSkin(E.Message,'','','info');
        end;
    end; // except end

end;

procedure TfrmRaporDetay.TeshisKaydet(data : TADOQuery);
var
   Teshis : TeshisBilgisiDVO;
   Teshisler : Array_Of_TeshisBilgisiDVO;
   sql : string;
   dizi , i :integer;
   ado : TADOQuery;
begin
      ado := TADOQuery.Create(nil);
      ado.Connection := datalar.ADOConnection2;
      sql := 'select datavalue from strtotable('+#39 + RTeshisler + #39 + ',' + #39 + ',' + #39 + ')';
      datalar.QuerySelect(ado,sql);

      dizi :=  ado.RecordCount;
      SetLength(Teshisler,dizi);

      for i := 0 to ado.RecordCount - 1 do
      begin
           Teshis := TeshisBilgisiDVO.Create;
           Teshis.baslangicTarihi := _rapor.baslangicTarihi;
           Teshis.bitisTarihi := _rapor.bitisTarihi;
           Teshis.teshisKodu := strtoint(ado.fieldbyname('datavalue').AsString);
           Teshisler[i] := Teshis;
           ado.Next;
      end;
      _rapor.teshisler := Teshisler;
      SetLength(Teshisler,dizi);
      ado.Close;
      ado.Free;
end;


procedure TfrmRaporDetay.T1Click(Sender: TObject);
var
  sql : string;
  ado , adod : TADOQuery;
  L : ArrayListeSecimler;
begin
 //  L := TStringList.Create;
 //  ListeAc2.Where := 'doktor = ' + QuotedStr(datalar.doktorKodu);

   L := ListeAc2.ListeGetir;

   if L[0].kolon1 <> ''
   Then Begin
     ado := TADOQuery.Create(nil);
     ado.Connection := datalar.ADOConnection2;
     adod := TADOQuery.Create(nil);
     adod.Connection := datalar.ADOConnection2;

     sql := 'select * from IlacRaporTeshislerSablon where sablonId = ' + L[0].kolon1;
     datalar.QuerySelect(ado,sql);
     while not ado.Eof do
     Begin
    //   ADO_ILACTESHISLER.Append;
    //   ADO_ILACTESHISLER.FieldByName('teshisKodu').AsString := ado.FieldByName('teshisKodu').AsString;
    //   ADO_ILACTESHISLER.FieldByName('ICD10Kodu').AsString := ado.FieldByName('ICD10Kodu').AsString;
    //   ADO_ILACTESHISLER.Post;
       ado.Next;
     End;

     sql := 'select * from IlacRaporEtkenMaddelerSablon where sablonId = ' + L[0].kolon1;
     datalar.QuerySelect(ado,sql);
     while not ado.Eof do
     Begin
     //  ADO_ILACETKENMADDE.Append;
    //   ADO_ILACETKENMADDE.FieldByName('etkenMaddeKodu').AsString := ado.FieldByName('etkenMaddeKodu').AsString;
    //   ADO_ILACETKENMADDE.FieldByName('etkenMaddeAdi').AsString := ado.FieldByName('etkenMaddeAdi').AsString;
    //   ADO_ILACETKENMADDE.FieldByName('kullanimDoz1').AsString := ado.FieldByName('kullanimDoz1').AsString;
   //    ADO_ILACETKENMADDE.FieldByName('kullanimDoz2').AsString := ado.FieldByName('kullanimDoz2').AsString;
   //    ADO_ILACETKENMADDE.FieldByName('kullanimDozBirim').AsString := ado.FieldByName('kullanimDozBirim').AsString;
   //    ADO_ILACETKENMADDE.FieldByName('kullanimPeriyot').AsString := ado.FieldByName('kullanimPeriyot').AsString;
   //    ADO_ILACETKENMADDE.FieldByName('kullanimPeriyotBirim').AsString := ado.FieldByName('kullanimPeriyotBirim').AsString;
  //     ADO_ILACETKENMADDE.Post;
  //     ado.Next;
     End;


  //   ADO_RAPORLAR.edit;
     sql := 'select * from IlacRaporAciklamaSablon where sablonId = ' + L[0].kolon1;
     datalar.QuerySelect(ado,sql);
  //   ADO_RAPORLAR.FieldByName('aciklama').AsString := ado.FieldByName('aciklama').AsString;
  //   ADO_RAPORLAR.Post;
     ado.Free;
     adod.Free;
   End;

//   L.Free;
end;

procedure TfrmRaporDetay.TaniKaydet(raporID : string ; var _rapor : RaporDVO);
var
   Tani : TaniBilgisiDVO;
   Tanilar : Array_Of_TaniBilgisiDVO;
   TaniY : EraporTaniDVO;
   TanilarY : ArrayOfEraporTaniDVO;
   sql : string;
   dizi , i :integer;
   ado : TADOQuery;
begin
      ado := TADOQuery.Create(nil);
      ado.Connection := datalar.ADOConnection2;
      try
        sql := 'select datavalue from strtotable('+#39 + RTanilar + #39 + ',' + #39 + ',' + #39 + ')';
        datalar.QuerySelect(ado,sql);
        dizi :=  ado.RecordCount;
        SetLength(Tanilar,dizi);
        for i := 0 to ado.RecordCount - 1 do
        begin
             Tani := TaniBilgisiDVO.Create;
             Tani.taniKodu := ado.fieldbyname('datavalue').AsString;
             Tanilar[i] := Tani;
             ado.Next;
        end;
        _rapor.tanilar := Tanilar;
      finally
        SetLength(Tanilar,dizi);
        ado.Free;
      end;
end;

procedure TfrmRaporDetay.HaksahibiKaydet(don : integer);
var
   HaksahibiBil : HakSahibiBilgisiDVO;

begin

     if don = 1
     then begin
               HaksahibiBil := HakSahibiBilgisiDVO.Create;
               HaksahibiBil.tckimlikNo := HastaBilgileri.TcKimlikNo;
               HaksahibiBil.karneNo := HastaBilgileri.karneNo;
               HaksahibiBil.devredilenKurum := HastaBilgileri.devredilenKurum;
               HaksahibiBil.sigortaliTuru := HastaBilgileri.sigortaliTuru;
               HaksahibiBil.sosyalGuvenlikNo := HastaBilgileri.sosyalGuvenlikNo;
               HaksahibiBil.yakinlikKodu := HastaBilgileri.yakinlikKodu;
               Haksahibibil.provizyonTarihi := HastaBilgileri.provizyontarihi;
               HaksahibiBil.provizyonTipi := HastaBilgileri.provizyonTipi;
               _rapor.hakSahibi := HaksahibiBil;
     end;



end;

procedure TfrmRaporDetay.Haksahibinull;
var
   HaksahibiBil : HakSahibiBilgisiDVO;

begin
     HaksahibiBil := HakSahibiBilgisiDVO.Create;
   //  HaksahibiBil.tckimlikNo := null;
   //  HaksahibiBil.karneNo := null;
  //   HaksahibiBil.devredilenKurum := null;
  //   HaksahibiBil.sigortaliTuru := null;
  //   HaksahibiBil.sosyalGuvenlikNo := null;
  //   HaksahibiBil.yakinlikKodu := null;
  //   Haksahibibil.provizyonTarihi := null;
  //   HaksahibiBil.provizyonTipi := null;

     _rapor.hakSahibi := HaksahibiBil;
end;


procedure TfrmRaporDetay.RAPORBILGISI(data : TADOQuery; var TedaviRapor : tedaviRaporDVO);
var
 AciklamaList : Array_Of_eraporAciklamaDVO;
 _Rapor : RaporDVO;
 _RaporBilgi : RaporBilgisiDVO;
begin
        _Rapor := RaporDVO.Create;
        _RaporBilgi := RaporBilgisiDVO.Create;
        _RaporBilgi.no := data.fieldbyname('raporNo').AsString;
        _RaporBilgi.tarih := data.fieldbyname('raporTarihi').AsString;
        _RaporBilgi.raporTesisKodu := data.fieldbyname('verenTesisKodu').AsInteger;
        _Rapor.raporBilgisi := _RaporBilgi;

        _rapor.baslangicTarihi := data.fieldbyname('baslangicTarihi').AsString;
        _rapor.bitisTarihi := data.fieldbyname('bitisTarihi').AsString;
        _rapor.aciklama := TrtoEng(data.fieldbyname('aciklama').AsString);
        _rapor.duzenlemeTuru := copy(data.fieldbyname('duzenlemeTuru').AsString,1,1);
        _rapor.protokolNo := data.fieldbyname('protokolNo').AsString;
        _rapor.protokolTarihi := data.fieldbyname('protokolTarihi').AsString;
        _rapor.turu := '1';
        _rapor.takipNo := _TakipNo_;
        _rapor.klinikTani := data.fieldbyname('klinikTani').AsString;

        TaniKaydet(data.fieldbyname('sira').AsString,_Rapor);
        DoktorKaydet(data.fieldbyname('sira').AsString,_Rapor);
        IslemKaydet(RaporGrid.Dataset,TedaviRapor);
        TedaviRapor.tedaviRaporTuru := 1;
        TedaviRapor.raporDVO := _Rapor;

end;

procedure TfrmRaporDetay.IlacTeshisKaydet(data : TADOQuery);
var
   Teshis : saglikTesisiRaporIslemleriWSIlac.eraporTeshisDVO;// TeshisBilgisiDVO;
   Teshisler : Array_Of_eraporTeshisDVO;// ArrayOfTeshisBilgisiDVO;
   TaniBilgisi : Array_Of_TaniDVO;

   sql , Tanilar: string;
   dizi , i :integer;
   ado : TADOQuery;
begin
      ado := TADOQuery.Create(nil);
      ado.Connection := datalar.ADOConnection2;
//      sql := 'select * from IlacRaporTeshisler where RaporSira = ' + ADO_RAPORLAR.fieldbyname('sira').AsString ;
      datalar.QuerySelect(ado,sql);

      dizi :=  ado.RecordCount;
      SetLength(Teshisler,dizi);


      for i := 0 to ado.RecordCount - 1 do
      begin
           Tanilar := ado.fieldbyname('ICD10kodu').AsString;
           TaniBilgisi := TaniKaydetIlacTeshisIlac(Tanilar,ado);


           Teshis := saglikTesisiRaporIslemleriWSIlac.eraporTeshisDVO.Create;
           teshis.taniListesi := TaniBilgisi;
           Teshis.baslangicTarihi := ado.fieldbyname('baslangicTarihi').AsString;
           Teshis.bitisTarihi := ado.fieldbyname('bitisTarihi').AsString;
           Teshis.raporTeshisKodu := ado.fieldbyname('teshisKodu').AsString;
           Teshisler[i] := Teshis;
           ado.Next;
      end;
      _raporIlac.eraporTeshisListesi := Teshisler;
      SetLength(Teshisler,dizi);
      ado.Close;
      ado.Free;
end;



procedure TfrmRaporDetay.IlacTeshisKaydetY(data : TADOQuery);
var
   Teshis : EraporTeshisDVO;// TeshisBilgisiDVO;
   Teshisler : ArrayOfEraporTeshisDVO;// ArrayOfTeshisBilgisiDVO;
   TaniBilgisi : ArrayOf_105704153_699425500_nillable_TaniDVO;
   sql , Tanilar: string;
   dizi , i :integer;
   ado : TADOQuery;
begin
      ado := TADOQuery.Create(nil);
      ado.Connection := datalar.ADOConnection2;
    //  sql := 'select * from IlacRaporTeshisler where RaporSira = ' + ADO_RAPORLAR.fieldbyname('sira').AsString ;
      datalar.QuerySelect(ado,sql);

      dizi :=  ado.RecordCount;
      SetLength(Teshisler,dizi);


      for i := 0 to ado.RecordCount - 1 do
      begin
           Tanilar := ado.fieldbyname('ICD10kodu').AsString;
           TaniBilgisi := TaniKaydetIlacTeshisY(Tanilar,ado);

           Teshis := EraporTeshisDVO.Create;
           teshis.taniListesi := TaniBilgisi;
           Teshis.baslangicTarihi := ado.fieldbyname('baslangicTarihi').AsString;
           Teshis.bitisTarihi := ado.fieldbyname('bitisTarihi').AsString;
           Teshis.raporTeshisKodu := ado.fieldbyname('teshisKodu').AsString;
           Teshisler[i] := Teshis;
           ado.Next;
      end;
      _raporY.eraporTeshisListesi := Teshisler;
      SetLength(Teshisler,dizi);
      ado.Close;
      ado.Free;
end;


function TfrmRaporDetay.Init(Sender: TObject): Boolean;
begin
   Result := False;
   datalar.QuerySelect(RaporGrid.Dataset, 'select * from Raporlar where dosyaNo = ' + QuotedStr(_dosyaNO_) + ' order by bitisTarihi desc' );
   Result := True;
end;

function TfrmRaporDetay.TaniKaydetIlacTeshisIlac(_tanilar_ : string ;  data : TADOQuery) : Array_Of_TaniDVO;
var
   Tani : saglikTesisiRaporIslemleriWSIlac.TaniDVO;
   Tanilar : Array_Of_TaniDVO;
   sql : string;
   dizi , i :integer;
   ado : TADOQuery;
begin

      ado := TADOQuery.Create(nil);
      ado.Connection := datalar.ADOConnection2;

      sql := 'select datavalue from strtotable('+#39 + _tanilar_ + #39 + ',' + #39 + ',' + #39 + ')';
      datalar.QuerySelect(ado,sql);

      dizi :=  ado.RecordCount;
      SetLength(Tanilar,dizi);

      for i := 0 to ado.RecordCount - 1 do
      begin
           Tani := saglikTesisiRaporIslemleriWSIlac.TaniDVO.Create;
           Tani.kodu := ado.fieldbyname('datavalue').AsString;
           Tanilar[i] := Tani;
           ado.Next;
      end;
      Result := Tanilar;
      SetLength(Tanilar,dizi);
      ado.close;
      ado.Free;

end;


function TfrmRaporDetay.TaniKaydetIlacTeshisY(_tanilar_ : string ;  data : TADOQuery) : ArrayOf_105704153_699425500_nillable_TaniDVO;
var
   Tani : TaniDVO;
   Tanilar : ArrayOf_105704153_699425500_nillable_TaniDVO;// ArrayOfTaniBilgisiDVO;
   sql : string;
   dizi , i :integer;
   ado : TADOQuery;
begin

      ado := TADOQuery.Create(nil);
      ado.Connection := datalar.ADOConnection2;

      sql := 'select datavalue from strtotable('+#39 + _tanilar_ + #39 + ',' + #39 + ',' + #39 + ')';
      datalar.QuerySelect(ado,sql);

      dizi :=  ado.RecordCount;
      SetLength(Tanilar,dizi);

      for i := 0 to ado.RecordCount - 1 do
      begin
           Tani := TaniDVO.Create;
           Tani.kodu := ado.fieldbyname('datavalue').AsString;
           Tanilar[i] := Tani;
           ado.Next;
      end;
      Result := Tanilar;
      SetLength(Tanilar,dizi);
      ado.close;
      ado.Free;

end;



procedure TfrmRaporDetay.RaporKaydet(dosyaNo , raporNo , turu ,Tip : string);
var
   sql : string;
   i , dizi ,sonucKodu : integer;
   sonuc ,_sonuc_ : string;
   doktor,doktorUser,doktorSifre : string;
   Ts_RaporCvp : RaporCevapDVO;
   TedaviRapor : tedaviRaporDVO;
   raporTakip , msj : string;
   Ts_RaporCvpIlac : saglikTesisiRaporIslemleriWSIlac.eraporGirisCevapDVO;
begin
      TedaviRapor := tedaviRaporDVO.Create;
      RAPORBILGISI(RaporGrid.Dataset ,TedaviRapor);
      datalar.RaporIslemWS.RaporGiris.tedaviRapor := TedaviRapor;
      datalar.RaporIslemWS.RaporGiris.saglikTesisKodu := datalar._kurumKod;
      datalar.RaporIslemWS.RaporKaydet;

      sonucKodu := datalar.RaporIslemWS.RaporCevap.sonucKodu;

     if (sonucKodu = 0)
     then begin
              ShowMessageSkin('Rapor Baþarý ile Kaydedildi','','','info');
               if Tip = '10'
               then raporTakip := Ts_RaporCvpIlac.eraporDVO.raporTakipNo
               else raporTakip := inttostr(Ts_RaporCvp.raporTakipNo);

        //       ADO_RAPORLAR.Edit;
       //        ADO_RAPORLAR.FieldByName('RaporTakipno').AsString := raporTakip;
        //       ADO_RAPORLAR.Post;
               (*
               ado := TADOQuery.Create(nil);
               ado.Connection := datalar.ADOConnection2;
               sql := 'update IlacRaporEtkenMaddeler set onay = 1 where RaporSira = ' + ADO_RAPORLAR.fieldbyname('sira').AsString;
               datalar.QueryExec(ado,sql);
               ado.Free;
               ADO_ILACETKENMADDE.Refresh;  *)
     end else
     begin
          msj := inttostr(Ts_RaporCvp.sonucKodu) + ' ' + Ts_RaporCvp.sonucAciklamasi;
          ShowMessageSkin('Rapor Kaydedilemedi : ' + msj,'','','info');
     end;
end;


procedure TfrmRaporDetay.Raporlar(dosyaNo ,gelisNo : string);
var
   sql : string;
begin
   sql := 'select * from Raporlar R ' +
          ' left join SAGLIKTESIS T on T.kodu = verenTesisKodu ' +
          ' where R.dosyaNo = ' + #39 + _dosyaNo_ + #39;

  // datalar.QuerySelect(ADO_RAPORLAR,sql);
  // ADO_RAPORLAR.Filter := 'turu = 1';

  // ADO_ILACTESHISLER.Active := true;
  // ADO_ILACETKENMADDE.Active := true;

 //  ADO_DOKTORLAR.Active := True;
end;

procedure TfrmRaporDetay.btnVazgecClick(Sender: TObject);
begin
//     datalar.gelis.dosyaNo := '';
//     datalar.gelis.gelisNo := '0';
     close;
end;

procedure TfrmRaporDetay.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//     Ts_RaporGon.Free;
//     Ts_RaporCvp.Free;

     Action := cafree;
end;

procedure TfrmRaporDetay.FormCreate(Sender: TObject);
begin
  //datalar.Login;
//  Olustur(self,_TableName_,'Hasta Raporlarý',27,sqlInsert);
  Menu := PopupMenu3;
  cxPanel.Visible := false;
  Image2.Visible := false;

  setDataStringIC(self,'tedaviRaporTuru','Tedavi Rapor Türü',Kolon1,'',100,'Medula_TedaviRaporTurleri','Kod','Tanimi');
  TdxLayoutItem(FindComponent('dxLatedaviRaporTuru')).Visible := False;

  setDataStringIC(self,'turu','Rapor Türü',Kolon1,'',100,'Medula_RaporTurleri','Kod','Tanimi');
  TdxLayoutItem(FindComponent('dxLaturu')).Visible := False;

  setDataStringKontrol(self,RaporGrid ,'RaporGrid','',Kolon1,'',1,1,alClient);

  TcxImageComboBoxProperties(ListeRaporlarColumn6.Properties).Items := TcxImageComboKadir(FindComponent('turu')).Properties.Items;
  TcxImageComboBoxProperties(ListeRaporlarColumn7.Properties).Items := TcxImageComboKadir(FindComponent('tedaviRaporTuru')).Properties.Items;

  Kolon2.Visible := false;
  Kolon3.Visible := false;
  Kolon4.Visible := false;

  SayfaCaption('Raporlar','','','','');
end;

procedure TfrmRaporDetay.FormShow(Sender: TObject);
begin
  inherited;
//
  cxTab.Tabs[0].Caption := datalar.HastaBil.Adi + ' ' + datalar.HastaBil.SoyAdi;
end;

procedure TfrmRaporDetay.btnPolClick(Sender: TObject);
begin

  //  ADO_RAPORLAR.Append;

(*
    frmana.login;

    Application.CreateForm(TfrmMedulaDoktorlar, frmMedulaDoktorlar);

    GorselAyar(frmMedulaDoktorlar,frmAna.global_img_list4);
    frmMedulaDoktorlar.Yukle(frmAna._username,frmAna._sifre,ADO_RAPORLAR.fieldbyname('verentesisKodu').AsInteger);
    frmMedulaDoktorlar.ShowModal;
    frmMedulaDoktorlar.Release;
    frmMedulaDoktorlar := nil;
  *)
end;

procedure TfrmRaporDetay.DBGridEh1ColExit(Sender: TObject);
begin
(*
   if (DBGridEh1.Col = 3) and (
   trim(copy(ADO_RAPORDETAY.FieldByName('turu').AsString,1,2)) = '10'
   )
   Then Begin
       DBGridEh1.Columns[8].Visible := true;
       DBGridEh1.Columns[11].Visible := false;
       DBGridEh1.Columns[12].Visible := false;
   End;

   if (DBGridEh1.Col = 3) and (
   trim(copy(ADO_RAPORDETAY.FieldByName('turu').AsString,1,2)) = '1'
   )
   Then Begin
       DBGridEh1.Columns[8].Visible := false;
       DBGridEh1.Columns[11].Visible := true;
       DBGridEh1.Columns[12].Visible := true;
   End;


  *)

end;

procedure TfrmRaporDetay.btnYazdirClick(Sender: TObject);
var
   sql , dosyaNo , raporNo : string;

begin
  //    dosyaNo := ADO_RAPORLAR.fieldbyname('dosyaNo').AsString;
  //    raporNo := ADO_RAPORLAR.fieldbyname('raporNo').AsString;
 {
      sql := 'exec sp_medularaporYazdir ' + QuotedStr(dosyaNo) + ','
             + QuotedStr(raporNo) + ','
             + QuotedStr('R');
      datalar.ADO_SQL5.Close;
      datalar.ADO_SQL5.SQL.Clear;
      datalar.QuerySelect(datalar.ADO_SQL5,sql);

      sql := 'exec sp_medularaporYazdir ' + QuotedStr(dosyaNo) + ','
             + QuotedStr(raporNo) + ','
             + QuotedStr('RD');
      datalar.ADO_SQL6.Close;
      datalar.ADO_SQL6.SQL.Clear;
      datalar.QuerySelect(datalar.ADO_SQL6,sql);

      sql := 'exec sp_medularaporYazdir ' + QuotedStr(dosyaNo) + ','
             + QuotedStr(raporNo) + ','
             + QuotedStr('Tani');
      datalar.ADO_SQL7.Close;
      datalar.ADO_SQL7.SQL.Clear;
      datalar.QuerySelect(datalar.ADO_SQL7,sql);

      sql := 'exec sp_medularaporYazdir ' + QuotedStr(dosyaNo) + ','
             + QuotedStr(raporNo) + ','
             + QuotedStr('IlacTeshis');
      datalar.ADO_SQL8.Close;
      datalar.ADO_SQL8.SQL.Clear;
      datalar.QuerySelect(datalar.ADO_SQL8,sql);

      sql := 'exec sp_medularaporYazdir ' + QuotedStr(dosyaNo) + ','
             + QuotedStr(raporNo) + ','
             + QuotedStr('EtkinMadde');
      datalar.ADO_SQL11.Close;
      datalar.ADO_SQL11.SQL.Clear;
      datalar.QuerySelect(datalar.ADO_SQL11,sql);

      sql := 'exec sp_medularaporYazdir ' + QuotedStr(dosyaNo) + ','
             + QuotedStr(raporNo) + ','
             + QuotedStr('Aciklama');
      datalar.ADO_SQL9.Close;
      datalar.ADO_SQL9.SQL.Clear;
      datalar.QuerySelect(datalar.ADO_SQL9,sql);
     (*
      sql := 'exec sp_medularaporYazdir ' + QuotedStr(dosyaNo) + ','
             + QuotedStr(raporNo) + ','
             + QuotedStr('C');
      datalar.ADO_SQL10.Close;
      datalar.ADO_SQL10.SQL.Clear;
      datalar.QuerySelect(datalar.ADO_SQL10,sql);



      sql := 'exec sp_medularaporYazdir ' + QuotedStr(dosyaNo) + ','
             + QuotedStr(raporNo) + ','
             + QuotedStr('Anamnez');
      datalar.ADO_SQL4.Close;
      datalar.ADO_SQL4.SQL.Clear;
      datalar.QuerySelect(datalar.ADO_SQL4,sql);

       *)

      frmRapor.topluset.Dataset1 := datalar.ADO_SQL5;
      frmRapor.topluset.Dataset2 := datalar.ADO_SQL6;
      frmRapor.topluset.Dataset3 := datalar.ADO_SQL7;
      frmRapor.topluset.Dataset4 := datalar.ADO_SQL8;
      frmRapor.topluset.Dataset5 := datalar.ADO_SQL9;
      frmRapor.topluset.Dataset6 := datalar.ADO_SQL10;
      frmRapor.topluset.Dataset7 := datalar.ADO_SQL11;
      frmRapor.topluset.Dataset8 := datalar.ADO_SQL4;


      case strtoint(trim(copy(ADO_RAPORLAR.fieldbyname('turu').AsString,1,2))) of
        10 :  frmRapor.raporData1(frmRapor.topluset,'116','\Rapor_ilac');
         1 :  begin
                if TBitBtn(sender).Tag = 8
                Then
                 frmRapor.raporData1(frmRapor.topluset,'053','\Rapor_tedavi')
                Else
                 frmRapor.raporData1(frmRapor.topluset,'058','\FTRTekHekim');

              end;
       End;

      frmRapor.ShowModal;

      datalar.ADO_SQL5.close;
      datalar.ADO_SQL6.close;
      datalar.ADO_SQL7.close;
      datalar.ADO_SQL8.close;
      datalar.ADO_SQL9.close;


       }
end;

procedure TfrmRaporDetay.ADO_DOKTORLARNewRecord(DataSet: TDataSet);
begin
      //ADO_DOKTORLAR.Append;

     (*
      ADO_DOKTORLAR.FieldByName('drTescilNo').AsString := DoktorTescilBul(datalar.gelis.doktor);
      ADO_DOKTORLAR.FieldByName('drBransKodu').AsString := DoktorBransBul(datalar.gelis.doktor);
      ADO_DOKTORLAR.FieldByName('drAdi').AsString := DoktorAdi(datalar.gelis.doktor);
      ADO_DOKTORLAR.FieldByName('tipi').AsString := '1';
    //  ADO_DOKTORLAR.Post;
       *)
end;

procedure TfrmRaporDetay.ADO_RAPORDETAYNewRecord(DataSet: TDataSet);
begin
 (*
    ADO_RAPORDETAY.FieldByName('baslangicTarihi').AsDateTime := strtodate(datalar.gelis.tarih);
    ADO_RAPORDETAY.FieldByName('bitisTarihi').AsDateTime :=
    ADO_RAPORDETAY.FieldByName('baslangicTarihi').AsDateTime + 730;
    ADO_RAPORDETAY.FieldByName('protokolNo').AsString := datalar.gelis.protokol;
    ADO_RAPORDETAY.FieldByName('protokolTarihi').AsDateTime := strtodate(datalar.gelis.tarih);
    ADO_RAPORDETAY.FieldByName('turu').AsString := '10';
    ADO_RAPORDETAY.FieldByName('duzenlemeTuru').AsString := '2';

    ADO_RAPORDETAY.FieldByName('tanilar').AsString := AnamnezTanilari(datalar.gelis.dosyaNo,
                                                                      datalar.gelis.gelisNo,
                                                                      datalar.gelis.detayNo);

   *)
end;

procedure TfrmRaporDetay.cxDBButtonEdit1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin

(*
      Application.CreateForm(TfrmTaniListesi, frmTaniListesi);
      GorselAyar(frmTaniListesi,datalar.global_img_list4);
//      datalar.doktorKodu := GelisDoktor(txtDosya.Caption,txtgelis.Caption);
      frmTaniListesi.TanilarCombo;
      frmTaniListesi.Tanilar('Rapor','',datalar.doktorKodu);

      frmTaniListesi.ShowModal;
      frmTaniListesi.Release;
      frmTaniListesi := nil;
      *)
end;

procedure TfrmRaporDetay.cxDBButtonEdit2PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
 (*
      Application.CreateForm(TfrmTeshisListesi, frmTeshisListesi);
      GorselAyar(frmTeshisListesi,datalar.global_img_list4);
//      datalar.doktorKodu := GelisDoktor(txtDosya.Caption,txtgelis.Caption);
      frmTeshisListesi.TanilarCombo;
      frmTeshisListesi.Tanilar('Rapor','',datalar.doktorKodu);

      frmTeshisListesi.ShowModal;
      frmTeshisListesi.Release;
      frmTeshisListesi := nil;
      *)
end;

procedure TfrmRaporDetay.cxDBButtonEdit3PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
      (*
      Application.CreateForm(TfrmIlacSarf, frmIlacSarf);
      GorselAyar(frmIlacSarf,datalar.global_img_list4);
//      datalar.doktorKodu := GelisDoktor(txtDosya.Caption,txtgelis.Caption);
      frmIlacSarf.TanilarCombo;
      frmIlacSarf.Tanilar('Rapor');

      frmIlacSarf.ShowModal;
      frmIlacSarf.Release;
      frmIlacSarf := nil;
      *)
end;

procedure TfrmRaporDetay.cxDBComboBox1PropertiesChange(Sender: TObject);
begin

    (*
       if trim(ADO_RAPORLAR.FieldByName('turu').AsString) = '1'
       Then begin
         cxPageControl1.Visible := true;
      //   txttedaviRaporTuru.Visible := true;
         sheetIlacTeshisleri.TabVisible := false;
         SheetDiyalizRaporBilgisi.TabVisible := true;
       end;

       if trim(ADO_RAPORLAR.FieldByName('turu').AsString) = '10'
       Then begin
          cxPageControl1.Visible := true;
        //  txttedaviRaporTuru.Visible := false;
          sheetIlacTeshisleri.TabVisible := true;
          SheetDiyalizRaporBilgisi.TabVisible := false;

       end;
      *)
end;
procedure TfrmRaporDetay.cxRadioGroup1PropertiesChange(Sender: TObject);
begin
  inherited;
//  ADO_RAPORLAR.Filter := 'turu = ' + cxRadioGroup1.EditingValue;
end;

procedure TfrmRaporDetay.txttedaviRaporTuruPropertiesChange(
  Sender: TObject);
begin
(*
    if ADO_RAPORLAR.FieldByName('tedaviRaporTuru').AsString = '1'
    Then Begin
       SheetDiyalizRaporBilgisi.TabVisible := True;
       cxPageControl1.ActivePage := SheetDiyalizRaporBilgisi;
//       SheetESWLRaporBilgisi.TabVisible := False;
       SheetFTRRaporBilgisi.TabVisible := False;
    End;

    (*
    if ADO_RAPORLAR.FieldByName('tedaviRaporTuru').AsString = '5'
    Then Begin
       SheetDiyalizRaporBilgisi.TabVisible := False;
     //  SheetESWLRaporBilgisi.TabVisible := False;
       SheetFTRRaporBilgisi.TabVisible := True;
       cxPageControl1.ActivePage := SheetFTRRaporBilgisi;
    End;

    if ADO_RAPORLAR.FieldByName('tedaviRaporTuru').AsString = '6'
    Then Begin
       SheetDiyalizRaporBilgisi.TabVisible := False;
    //   SheetESWLRaporBilgisi.TabVisible := True;
       SheetFTRRaporBilgisi.TabVisible := False;
  //     cxPageControl1.ActivePage := SheetESWLRaporBilgisi;
    End;

      *)
end;

procedure TfrmRaporDetay.ftrVucutBolgePropertiesChange(Sender: TObject);
begin
  //  ADO_RAPORLAR.FieldByName('ftrVucutBolgesiKodu').AsInteger :=
  //  strtoint(trim(copy(ftrVucutBolge.Text,1,2)));
end;

procedure TfrmRaporDetay.txtVerenTesisKoduPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
     (*
       Application.CreateForm(TfrmTesisList, frmTesisList);
       frmTesisList.ado_BransKodlari.Open;
       GorselAyar(frmTesisList,DATALAR.global_img_list4);
       frmTesisList.ShowModal;
       frmTesisList := nil;

       ADO_RAPORLAR.FieldByName('verentesisKodu').AsString := datalar._tesisKodu;
       *)
end;

procedure TfrmRaporDetay.sBitBtn3Click(Sender: TObject);
begin
//  ADO_RAPORLAR.Edit;
end;

procedure TfrmRaporDetay.btnKayitClick(Sender: TObject);
begin
 // ADO_RAPORLAR.Edit;
 // if ADO_RAPORLAR.FieldByName('raporNo').AsString = ''
 // then
 //   ADO_RAPORLAR.FieldByName('raporNo').AsString := inttostr(EnsonRaporProtokolNo);
 //   ADO_RAPORLAR.Post;
end;

procedure TfrmRaporDetay.sBitBtn5Click(Sender: TObject);
begin
 // ADO_RAPORLAR.Cancel;
end;

procedure TfrmRaporDetay.Rapor__BeforeExecute(const MethodName: String;
  var SOAPRequest: WideString);
begin
 //  txtXML.Clear;
 //  txtXML.Lines.Add(SOAPRequest);
 //  txtXML.Lines.SaveToFile('RaporXML.xml');
end;

procedure TfrmRaporDetay.SablonKaydet;
var
  sql , sablon , id, idd ,doz1,doz2 ,peryot , raporNo,Sira : string;
  ado ,ADO_ILACTESHISLER ,ADO_ILACETKENMADDE : TADOQuery;
begin


   ADO_ILACTESHISLER := TADOQuery.Create(nil);
   ADO_ILACETKENMADDE := TADOQuery.Create(nil);
   ado := TADOQuery.Create(nil);
   ado.Connection := datalar.ADOConnection2;

 try
   raporNo := raporGrid.Dataset.FieldByName('raporNo').AsString;
   Sira := raporGrid.Dataset.FieldByName('sira').AsString;
   datalar.QuerySelect(ADO_ILACTESHISLER ,'select * from IlacRaporTeshisler where RaporSira = ' + Sira);
   datalar.QuerySelect(ADO_ILACETKENMADDE ,'select * from IlacRaporEtkenMaddeler where RaporSira = ' + Sira);


   sablon := InputBox('Teþhis , Etken Madde Þablon','Þablon Tanýmý Giriniz','Sablon1');
   if sablon <> ''
   then begin

     datalar.ADOConnection2.BeginTrans;

     try
       sql := 'insert into IlacRaporSablon(SablonTanimi) ' +
              'values ( ' + QuotedStr(sablon) + ') select SCOPE_IDENTITY() as id ';
       datalar.QuerySelect(ado,sql);
       id := ado.fieldbyname('id').AsString;

       ADO_ILACTESHISLER.First;
       while not ADO_ILACTESHISLER.Eof do
       begin
         sql := 'insert into IlacRaporTeshislerSablon (sablonId,teshisKodu,ICD10Kodu) ' +
                'values(' + id + ',' +
                QuotedStr(ADO_ILACTESHISLER.FieldByName('teshisKodu').AsString) + ',' +
                QuotedStr(ADO_ILACTESHISLER.FieldByName('ICD10Kodu').AsString) + ')';
         datalar.QueryExec(ado,sql);
         ADO_ILACTESHISLER.Next;
       end;


       ADO_ILACETKENMADDE.First;
       while not ADO_ILACETKENMADDE.Eof do
       begin
         doz1 := ifThen(ADO_ILACETKENMADDE.FieldByName('kullanimDoz1').AsString = '','1',ADO_ILACETKENMADDE.FieldByName('kullanimDoz1').AsString);
         doz2 := ifThen(ADO_ILACETKENMADDE.FieldByName('kullanimDoz2').AsString = '','1',ADO_ILACETKENMADDE.FieldByName('kullanimDoz2').AsString);
         peryot := ifThen(ADO_ILACETKENMADDE.FieldByName('kullanimPeriyot').AsString = '','3',ADO_ILACETKENMADDE.FieldByName('kullanimPeriyot').AsString);

         sql := 'insert into IlacRaporEtkenMaddelerSablon (sablonId,etkenMaddeKodu,etkenMaddeAdi,kullanimDoz1,' +
                ' kullanimDoz2,kullanimDozBirim,kullanimPeriyot,kullanimPeriyotBirim) ' +
                'values(' + id + ',' +
                QuotedStr(ADO_ILACETKENMADDE.FieldByName('etkenMaddeKodu').AsString) + ',' +
                QuotedStr(ADO_ILACETKENMADDE.FieldByName('etkenMaddeAdi').AsString) +  ',' +
                doz1 + ',' +
                doz2 + ',' +
                QuotedStr(ADO_ILACETKENMADDE.FieldByName('kullanimDozBirim').AsString) + ',' +
                peryot + ',' +
                QuotedStr(ADO_ILACETKENMADDE.FieldByName('kullanimPeriyotBirim').AsString) +  ')';
         datalar.QueryExec(ado,sql);
         ADO_ILACETKENMADDE.Next;
       end;

       sql := 'insert into IlacRaporAciklamaSablon (sablonId,Aciklama) ' +
              'values(' + id + ',' +
              QuotedStr(raporGrid.Dataset.FieldByName('aciklama').AsString) + ')';
       datalar.QueryExec(ado,sql);


       datalar.ADOConnection2.CommitTrans;
       ShowMessageSkin('Þablon Kayýt Edildi','','','info');

     except on e : Exception do
      begin
        ShowMessageSkin(e.Message,'','','info');
        datalar.ADOConnection2.RollbackTrans;
      end;
     end;
   end;

   finally
     ado.Free;
     ADO_ILACTESHISLER.Free;
     ADO_ILACETKENMADDE.Free;
   end;



end;

procedure TfrmRaporDetay.cxButtonTESHISClick(Sender: TObject);
begin
  (*
   try
      Application.CreateForm(TfrmTeshisListesi, frmTeshisListesi);
      GorselAyar(frmTeshisListesi,datalar.global_img_list4);
//      datalar.doktorKodu := GelisDoktor(txtDosya.Caption,txtgelis.Caption);
      frmTeshisListesi.TanilarCombo;
      frmTeshisListesi.Tanilar('RaporIlac','','','');

      frmTeshisListesi.ShowModal;
      frmTeshisListesi.Release;
      frmTeshisListesi := nil;
   except

   end;
   *)
end;

procedure TfrmRaporDetay.cxButtonICDClick(Sender: TObject);
var
  t : string;
  List : ArrayListeSecimler;
  I : integer;
  sql : string;
  ado : TADOQuery;
begin



end;

procedure TfrmRaporDetay.cxButtonETKENClick(Sender: TObject);
begin
  (*
     try
      Application.CreateForm(TfrmEtkenMadde, frmEtkenMadde);
      GorselAyar(frmEtkenMadde,datalar.global_img_list4);
//      datalar.doktorKodu := GelisDoktor(txtDosya.Caption,txtgelis.Caption);
      frmEtkenMadde.TanilarCombo;
      frmEtkenMadde.Tanilar('Rapor','');
      frmEtkenMadde.ShowModal;
      frmEtkenMadde.Release;
      frmEtkenMadde := nil;
     except

     end;
     *)
end;

procedure TfrmRaporDetay.cxButtonSUTKURALClick(Sender: TObject);
var
  kuralSec : string;
begin

   (*

 //  kuralSec := cxDBButtonEdit3.SelText;

     Application.CreateForm(TfrmEtkinMaddeSUTKurali, frmEtkinMaddeSUTKurali);
     frmEtkinMaddeSUTKurali.EtkinMaddeler(ADO_RAPORLAR.fieldbyname('sira').AsString , cxDBDateEdit3.Text);
 //    frmEtkinMaddeSUTKurali.doldur(Em_Cvp);
     frmEtkinMaddeSUTKurali.pnlTitle.Caption := 'Etkin Madde SUT Kuralý - [' + '' + ']';
     frmEtkinMaddeSUTKurali.ShowModal;
     frmEtkinMaddeSUTKurali := nil;

//   EtkinmaddeSUTKurali(kuralSec,ADO_RAPORLAR.fieldbyname('raporTarihi').AsString,datalar.yardimciIslemler);
     *)
end;

procedure TfrmRaporDetay.ADO_ILACTESHISLERNewRecord(DataSet: TDataSet);
begin
 // ADO_ILACTESHISLER.FieldByName('baslangicTarihi').AsDateTime := ADO_RAPORLAR.fieldbyname('baslangicTarihi').AsDateTime;
 // ADO_ILACTESHISLER.FieldByName('bitisTarihi').AsDateTime := ADO_RAPORLAR.fieldbyname('bitisTarihi').AsDateTime;


end;

procedure TfrmRaporDetay.ADO_RAPORLARAfterScroll(DataSet: TDataSet);
begin
    (*
       if trim(ADO_RAPORLAR.FieldByName('turu').AsString) = '1'
       Then begin
         cxPageControl1.Visible := true;
      //   txttedaviRaporTuru.Visible := true;
         sheetIlacTeshisleri.TabVisible := false;
        SheetDiyalizRaporBilgisi.TabVisible := true;
       end;

       if trim(ADO_RAPORLAR.FieldByName('turu').AsString) = '10'
       Then begin
          cxPageControl1.Visible := true;
        //  txttedaviRaporTuru.Visible := false;
         sheetIlacTeshisleri.TabVisible := true;
         SheetDiyalizRaporBilgisi.TabVisible := false;

       end;
       *)
end;


function TfrmRaporDetay.RaporEtkinMaddeler(m , sira: string) : ArrayOfEraporEtkinMaddeDVO;
var
   EtkinMadde : EraporEtkinMaddeDVO;
   EtkinMaddeler : ArrayOfEraporEtkinMaddeDVO;
   x , dizi: integer;
   ado : TADOQuery;
   sql , TakipFormNo : string;
begin
    ado := TADOQuery.Create(nil);
    ado.Connection := datalar.ADOConnection2;

     sql := 'select * from  IlacRaporEtkenMaddeler where isnull(onay,0) = 0 and RaporSira = ' + sira;
     datalar.QuerySelect(ado,sql);

     SetLength(EtkinMaddeler,ado.RecordCount);

     for x := 0 to ado.RecordCount - 1 do
     begin
        EtkinMadde := ERaporEtkinMaddeDVO.Create;
        EtkinMadde.etkinMaddeKodu := ado.fieldbyname('etkenMaddeKodu').AsString;
        EtkinMadde.kullanimDoz1 := ado.fieldbyname('kullanimDoz1').AsString;
        EtkinMadde.kullanimDoz2 := ado.fieldbyname('kullanimDoz2').AsString;
        EtkinMadde.kullanimDozBirimi := ado.fieldbyname('kullanimDozBirim').AsString;
        EtkinMadde.kullanimDozPeriyot := ado.fieldbyname('kullanimPeriyot').AsString;
        EtkinMadde.kullanimDozPeriyotBirimi := ado.fieldbyname('kullanimPeriyotBirim').AsString;
        EtkinMaddeler[x] := EtkinMadde;
        ado.Next;
     end;

     Result := EtkinMaddeler;

     ado.Free;
     SetLength(EtkinMaddeler,0);

end;


procedure TfrmRaporDetay.btnDuzeltClick(Sender: TObject);
var
  RprDG : IlacRaporDuzeltDVO;
  RprDC : RaporIslemleriWS.RaporCevapDVO;
  EtkenMadde : RaporEtkinMaddeDVO;
  Tani : TaniBilgisiDVO;
  ado : TADOQuery;
  sql,ack ,msg,TakipFormNo: string;
  ek : integer;
begin
  ado := TADOQuery.Create(nil);
  ado.Connection := datalar.ADOConnection2;
//  sql := 'select takipFormuNo from DiyabetTakip where dosyaNo = ' + QuotedStr(ADO_RAPORLAR.fieldbyname('dosyaNo').AsString) +
 //        ' and gelisNo = ' + ADO_RAPORLAR.fieldbyname('gelisNo').AsString;
  datalar.QuerySelect(ado,sql);
  TakipFormNo := ado.Fields[0].AsString;
  ado.Free;

//  ek := pos('&',ADO_RAPORLAR.fieldbyname('aciklama').asstring);

  if (ek = 0) and (TakipFormNo = '')
  then begin
   ShowMessageSkin('Eklenecek açýklama bulunamadý','','','info');
   exit;
  end;

 // ack := copy(ADO_RAPORLAR.fieldbyname('aciklama').asstring,ek+1,2000);

  if RaporAciklamaEkle(Datalar.RaporBilgisi.raporTakipNo,
                    ack,
                    TakipFormNo,
                    msg) = '0'
  Then Begin
 //   ADO_RAPORLAR.Edit;
  //  ADO_RAPORLAR.FieldByName('aciklama').AsString :=
  //  StringReplace(ADO_RAPORLAR.FieldByName('aciklama').AsString,'&',' ',[rfReplaceAll]);
  //  ADO_RAPORLAR.Post;
    ShowMessageSkin('Açýklama eklendi','','','info');
  End
  Else
  ShowMessageSkin('Hata  : ' + msg,'','','info');

(*
  RprDG := IlacRaporDuzeltDVO.Create;
  RprDC := RaporCevapDVO.Create;
 // Tani := TaniBilgisiDVO.Create;


      datalar.Login;
      Rapor__.HTTPWebNode.UserName := datalar._username;
      Rapor__.HTTPWebNode.Password := datalar._sifre;

  RprDG.drTescilNo := ADO_DOKTORLAR.fieldbyname('drtescilNo').AsString;
  RprDG.raporNo := ADO_RAPORLAR.fieldbyname('raporNo').AsString;
  RprDG.raporTarihi := ADO_RAPORLAR.fieldbyname('raporTarihi').AsString;
  RprDG.raporTuru := trim(ADO_RAPORLAR.fieldbyname('turu').AsString);
  RprDG.tesisKodu := strtoint(ADO_RAPORLAR.fieldbyname('verenTesisKodu').AsString);
  RprDG.duzeltmeTarihi := ADO_RAPORLAR.fieldbyname('duzeltmeTarihi').AsString;
  RprDG.duzeltmeBilgisi := ADO_RAPORLAR.fieldbyname('duzeltmeBilgisi').AsString;
  RprDG.tanilar := kadirmedula3.TaniKaydet(txtTanilar.Text);

//  RprDG.raporEtkinMaddeler := RaporEtkinMaddeler(txtEtkenMadde.Text,ADO_RAPORLAR.fieldbyname('sira').AsString);

  try
     RprDC := (Rapor__ as RaporIslemleri).ilacRaporDuzelt(RprDG);

  except
       on E: Exception do Showmessage(E.Message,'','','info');

  end;

  if RprDC.sonucKodu = 0
  Then begin

     ado := TADOQuery.Create(nil);
     ado.Connection := datalar.ADOConnection2;
     sql := 'update IlacRaporEtkenMaddeler set onay = 1 where RaporSira = ' + ADO_RAPORLAR.fieldbyname('sira').AsString;
     datalar.QueryExec(ado,sql);
     ado.Free;
     ADO_ILACETKENMADDE.Refresh;

     ShowMessageSkin('Rapor Açýklma bilgisine Deðiþiklikler Eklendi','','','info');


  end else
  begin
     ShowMessageSkin(RprDC.sonucAciklamasi,'','','info');
  end;

*)
end;

procedure TfrmRaporDetay.cxButtonDoktorlarClick(Sender: TObject);
var
  t : string;
  List : ArrayListeSecimler;
begin
  // List := TStringList.Create;

  // List := DrList.ListeGetir;

   if length(List) > 0
   Then BEgin
    try
   //    ADO_DOKTORLAR.Append;
   ////    ADO_DOKTORLAR.FieldByName('kod').AsString := list[0].kolon1;
   //    ADO_DOKTORLAR.FieldByName('drAdi').AsString := list[0].kolon2;
   //    ADO_DOKTORLAR.FieldByName('drTescilNo').AsString := list[0].kolon3;
   //    ADO_DOKTORLAR.FieldByName('drBransKodu').AsString := list[0].kolon4;
  //     ADO_DOKTORLAR.FieldByName('tipi').AsString := '2';
  //     ADO_DOKTORLAR.post;
    except
    end;
   End;
end;

procedure TfrmRaporDetay.btnDiyabetClick(Sender: TObject);
var
  _ok_ : integer;
begin
  _ok_ := 0;
 // ADO_ILACTESHISLER.First;
 // while not ADO_ILACTESHISLER.Eof do
//  begin
 //     if ADO_ILACTESHISLER.FieldByName('teshisKodu').AsInteger in [47,50,51,52,53,54,244,246,247,145]
  //    Then _ok_ := 1;

  //   ADO_ILACTESHISLER.Next;
 // end;


   if _ok_ = 1
   Then Begin
(*
       Application.CreateForm(TfrmDiyabetTakipFormu, frmDiyabetTakipFormu);
       GorselAyar(frmDiyabetTakipFormu,datalar.global_img_list4);
       frmDiyabetTakipFormu.Formlar(ADO_RAPORLAR.fieldbyname('dosyaNo').AsString,ADO_RAPORLAR.fieldbyname('gelisNo').AsString,'0');
       frmDiyabetTakipFormu.Dosya(ADO_RAPORLAR.fieldbyname('dosyaNo').AsString,ADO_RAPORLAR.fieldbyname('gelisNo').AsString,'0');
       frmDiyabetTakipFormu.ShowModal;
       frmDiyabetTakipFormu := nil;
                        *)
   End;

end;

end.






