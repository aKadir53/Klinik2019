unit KadirType;


interface

uses HizmetKayitIslemleriWS,DB,sysUtils,XSBuiltIns,Classes,cxImage,ADODB,
     Vcl.Graphics,jpeg,ExtCtrls;

type TprintTip = (pTYazdir,pTOnIzle,pTDizayn,pTNone,pTPDF,pTReadOnly);
type sqlType = (sql_Select,sql_Exec,sql_sp,sql_fn,sql_new,sql_edit,sql_delete,sql_none);
type showDialog = (OFShow,OFShowModal);
type userGroup = (ugUser,ugGroup);
type izinKontrol = (ikEvet,ikHayir);
type CheckTip = (ctBol,ctint);
type  TMethods = (mTest,mGercek);
type TYardimciServisTip = (mMedula,mMedEczane);



type

  TSendMesaj = procedure(KullaniciAdi : string ; Sifre : string ; _from : string ;
                         TelefonNums : string ; mesaj : string;
                         var Sonuc : string);stdCall;

  TENabizSendMesaj = procedure(msj : pwidechar ; mesajTipi : pwidechar ;
                         var Id : integer ;
                         var sonucMesaj : PWideChar ;
                         kullaniciAdi : pwidechar ;
                         sifre : pwidechar;
                         url : pwidechar ;
                         HesapBilgisiOtomatik : pwidechar;
                         HastaneRefNo : pwidechar
                         );stdCall;

  TEgitimHash = procedure(egitim : PWideChar;
                            var HashEgitim : PWideChar;
                            var sonuc : PWideChar); stdcall;

 (*
  TEgitimImzala = procedure(egitim : PWideChar;
                            var imzaliEgitim : PWideChar;
                            pin : string;
                            cardType : string;
                            var sonuc : PWideChar); stdcall;  *)

  TEgitimImzali = procedure(var imzaliEgitim : PWideChar;
                            var sonuc : PWideChar); stdcall;

  TEmailSend = procedure(var sonuc : PWideChar;
                          smtpClientHost : PWideChar;
                          Username : PWideChar;
                          Password : PWideChar;
                          alici : PWideChar;
                          konu : PWideChar;
                          msj : PWideChar;
                          filename : PWideChar;
                          displayName : PWideChar;
                          port : integer;
                          ssl : PWideChar;
                          SendTip : PWideChar
                          ); stdcall;

  TSGKHizmetSorgulama = Procedure(kullaniciAdi : pwidechar;
                         sifre : pwidechar;
                         sysTakipNo : pwidechar;
                         islemReferansNo : pwidechar;
                         var sonucMesaj : pwidechar;
                         var durum : integer;
                         uygulamaKodu : pwidechar);stdCall;

  TTakipList = Procedure(kullaniciAdi : pwidechar;
                         sifre : pwidechar;
                         skrs : pwidechar;
                         Tarih : pwidechar;
                         var sonucMesaj : string;
                         var durum : integer;
                         uygulamaKodu : pwidechar);stdCall;

  TGunSonuList = Procedure(kullaniciAdi : pwidechar;
                         sifre : pwidechar;
                         skrs : pwidechar;
                         Tanim : pwidechar;
                         Tarih : pwidechar;
                         var sonucMesaj : pwidechar;
                         var durum : integer;
                         uygulamaKodu : pwidechar);stdCall;

  TReceteImzala = procedure(Id : integer;
                      recete : PWideChar;
                      doktorkullanici : PWideChar;
                      doktrsifre : PWideChar;
                      pin : PWideChar;
                      doktorTc : PWideChar;
                      TesisKodu : PWideChar;
                       var sonuc : PWideChar;
                      url : PWideChar;
                      cardType : PWideChar;
                      goster : integer); stdcall;


  TReceteGonder = procedure(Id : integer;
                      recete : string;
                      doktorkullanici : string;
                      doktrsifre : string;
                      doktorTc : string;
                      TesisKodu : integer;
                       var sonuc : PWideChar;
                      url : string); stdcall;

  TReceteImzalaDelete = procedure(Id : PWideChar;
                      recete : PWideChar;
                      doktorkullanici : PWideChar;
                      doktrsifre : PWideChar;
                      pin : PWideChar;
                      doktorTc : PWideChar;
                      TesisKodu : PWideChar;
                       var sonuc : PWideChar;
                       url : PWideChar;
                       cardType : PWideChar); stdcall;

  TReceteDelete = procedure(Id : PWideChar;
                      recete : PWideChar;
                      doktorkullanici : PWideChar;
                      doktrsifre : PWideChar;
                      doktorTc : PWideChar;
                      TesisKodu : integer;
                       var sonuc : PWideChar;
                       url : PWideChar); stdcall;


  TRaporImzala = procedure(Id : integer;
                      rapor : PWideChar;
                      doktorkullanici : PWideChar;
                      doktrsifre : PWideChar;
                      pin : PWideChar;
                      doktorTc : PWideChar;
                      TesisKodu : integer;
                       var sonuc : PWideChar;
                      url : string;
                      cardType : PWideChar); stdcall;

  TFaturaGonder = procedure(FaturaXML : PWideChar;
                      kullaniciAdi : PWideChar;
                      sifre : PWideChar;
                      var sonuc : PWideChar;
                      url : PWideChar;
                      Taslak : PWideChar); stdcall;

  TFaturaIptal = procedure(FaturaGuid : PWideChar;
                      kullaniciAdi : PWideChar;
                      sifre : PWideChar;
                      var sonuc : PWideChar;
                      url : PWideChar); stdcall;
  TFaturaPDF = procedure(FaturaGuid : PWideChar;
                      kullaniciAdi : PWideChar;
                      sifre : PWideChar;
                      var sonuc : PWideChar;
                      url : PWideChar;
                      smtpClientHost : PWideChar;
                      Username : PWideChar;
                      Password : PWideChar;
                      alici : PWideChar;
                      konu : PWideChar;
                      msj : PWideChar
                      ); stdcall;

  TFaturaDurum = procedure(FaturaGuid : PWideChar;
                      kullaniciAdi : PWideChar;
                      sifre : PWideChar;
                      var sonuc : PWideChar;
                      url : PWideChar); stdcall;

  TFaturalariOku = procedure(kullaniciAdi : PWideChar;
                      sifre : PWideChar;
                      var sonuc : PWideChar;
                      url : PWideChar;
                      StartDate : PWideChar;
                      EndDate : PWideChar); stdcall;

  TRecetem = procedure(jsonText : PWideChar;
                      var sonuc : PWideChar); stdcall;

  TENabizDoktorErisim = procedure(kullaniciAdi : PWideChar;
                                  sifre : PWideChar;
                                  HastaTc : PWideChar;
                                  DoktorTc : PWideChar;
                                  uygulamaKodu : PWideChar); stdcall;

  TImzaliGiris = Procedure(var sonucMesaj : PWideChar);stdCall;
  TImzaliSeansKapatKapat = Procedure(islemRefNo : integer ; var sonucMesaj : PWideChar);stdCall;


type
  TLabEntegrasyonBilgileri = record
    kullanici : string;
    sifre : string;
    labId : string;
    url : string;
    calismaYon : integer;
    BarkodBasim : string;
  end;

type
  TUzmanMuayeneForm = record
    Doktor : string;
    MuayeneTarihi : string;
  end;


type
   TDataSetKadir = record
     Dataset0 : TDataset;
     Dataset1 : TDataSet;
     Dataset2 : TDataSet;
     Dataset3 : TDataSet;
     Dataset4 : TDataSet;
     Dataset5 : TDataSet;
     Dataset6 : TDataSet;
     Dataset7 : TDataSet;
     Dataset8 : TDataSet;
     Dataset9 : TDataSet;
     Dataset10 : TDataSet;
     Dataset11 : TDataSet;
     Dataset12 : TDataSet;
     Dataset00 : Tdataset;
   end;




type
   ListeSecimler = record
    kolon1 : string;
    kolon2 : string;
    kolon3 : string;
    kolon4 : string;
   end;
   ArrayListeSecimler = array of ListeSecimler;


type
    TYas = record
     yil : integer;
     ay : integer;
     gun : integer;
    End;

type
  THizmetVeriSeti = Record
    Muayene : hizmetKayitIslemleriWS.MuayeneBilgisiDVO;
    Tahlil : hizmetKayitIslemleriWS.Array_Of_TahlilBilgisiDVO;
    Rad : hizmetKayitIslemleriWS.Array_Of_TetkikveRadyolojiBilgisiDVO;
    Tani : hizmetKayitIslemleriWS.Array_Of_TaniBilgisiDVO;
    Ameliyat : hizmetKayitIslemleriWS.Array_Of_AmeliyatveGirisimBilgisiDVO;
    Kons : hizmetKayitIslemleriWS.Array_Of_KonsultasyonBilgisiDVO;
    Ilac : hizmetKayitIslemleriWS.Array_Of_IlacBilgisiDVO;
    Malzeme : hizmetKayitIslemleriWS.Array_Of_MalzemeBilgisiDVO;
    Yatis : hizmetKayitIslemleriWS.Array_Of_HastaYatisBilgisiDVO;
    Diger : hizmetKayitIslemleriWS.Array_Of_DigerIslemBilgisiDVO;
    Dis : hizmetKayitIslemleriWS.Array_Of_DisBilgisiDVO;
    KayitliIslem : Array_Of_KayitliIslemBilgisiDVO;
    HataliIslem : Array_Of_HataliIslemBilgisiDVO;
  End;

type
   TDiyalizTedavi = record
    HCOOO : string;
    K : string;
    GU : string;
    Ca : string;
    Doktor : string;
    Sure : string;
    Heparin : string;
    HeparinUyg : string;
    HeparinTip : string;
    Diyalizor : string;
    Dializat : string;
    GirisYolu : string;
    idealKilo : string;
    SeansNo : string;
    APH : String;
    MalzemeSablon : string;
    DiyalizCins : string;
    Na : string;
    YuzeyAlan : string;
    GirisKiko : string;
    CikisKilo : string;
    MNo : string;
    Igne : string;
    IgneV : string;
end;

type
   THizmetler = record
     Liste : TDataSet;
   end;

type
   THasta = record
    Adi : string;
    SoyAdi : string;
    BabaAdi : string;
    AnaAdi : string;
    Tarih : string;
    TcKimlik : string;
    Yasi : string;
    sicil : string;
    karne : string;
    Cinsiyet : string;
    Durum : integer;
    DogumYeri : string;
    vatandasTip : integer;
    DT : TXSDateTime;
    gelisNo : string;
    dosyaNO : string;
end;

type
   THastaKosultasyon = record
    BulguSonuc : string;
    bolum : string;
    id : string;
    Tarih : string;
    gelisNo : string;
    dosyaNO : string;
end;



type
   TDigerIslemTalep = record
    dosyaNo : string;
    gelisNo : string;
    TakipNo : string;
    saglikTesisKodu : integer;
    sutKodu : string;
    adet : integer;
    islemTarihi : string;
    drTescilNo : string;
    bransKodu : string;
    hizmetSunucuRefNo : string;
    islemDurum : string;
    raporTakipNo : string;
    basvuruNo : string;
    DiyalizorCinsi : string;
    DiyalizorTipi : string;
    Diyalizor : string;
    Diyalizat : string;
    HeparinTip : string;
    Heparin : string;
    HeparinUyg : string;
    YA : string;
    APH : string;
    MakinaNo : string;
    Seans : string;
    SeansSure : string;
    KanAlimi : integer;
    doktor : string;
    hemsire : variant;
    Kilo : variant;
    girisKilo : variant;
    cikisKilo : variant;
    GirisYolu : variant;
    OncekiCikisKilo : variant;
    Durum : integer;
    HCOOO : variant;
    Na : variant;
    Igne : variant;
    IgneV : variant;
    CekilecekSivi : variant;
    AldigiKilo : variant;
    VerilecekSivi : variant;
    UF : variant;
    SeansCaption : variant;
    doktorNot : string;
    hemsireNot : string;
    islemSiraNo : string;
    itakiString : string;
    itakiDeger : string;
    yas : variant;
    ISI : variant;
    Enfeksiyon : string;
    yeniSiraNo : string;
    diyalizdegelisenDiger : string;
    diyalizdegelisenDigerI : string;
   end;

type
  TAdliGecmis = Record
    provTarihi: WideString;
    provTipi: WideString;
    tckNo: WideString;
  End;

type
    THastaKabulRecord = record
      tckimlikNo : string;
      muayeneAcilisTarihi : string;
      sosyalGuvenlikNo : string;
      karneNo : string;
      yakinlikKodu : string;
      TakipTuru : string;
      provizyonTuru : string;
      devredilenKurum : string;
      Durum : string;
      Adi : string;
      Sadi : string;
      DTarihi : string;
      Cinsiyet : string;
      Doktor : string;
      yas : string;
      tedaviTuru : string;
      tedaviTipi : string;
      TakipNo : string;
      YatisBitisTarihi : string;
      donorTc : string;
      BransKodu : string;
      ProvizyonTarihi : string;
      BasvuruNo : string;
      ilkTakip : string;
      dosyaNo : string;
      gelisNo : string;
      bebekSira : string;
      BebekDTarihi : string;
      ArrayOfAdliGecmis : array of TAdliGecmis;
      sevkedenTesisKodu : integer;
      kilo : string;
      boy : string;
      diyalizTedaviTipi : integer;
      DT : TXSDateTime;
      id : integer;
      telefon : string;
      adres : string;
    End;


type
    THastaKabul = record
      tckimlikNo : string;
      muayeneAcilisTarihi : string;
      sosyalGuvenlikNo : string;
      karneNo : string;
      yakinlikKodu : string;
      TakipTuru : string;
      provizyonTuru : string;
      devredilenKurum : string;
      Durum : string;
      Adi : string;
      Sadi : string;
      DTarihi : string;
      Cinsiyet : string;
      Doktor : string;
      yas : string;
      tedaviTuru : string;
      tedaviTipi : string;
      TakipNo : string;
      YatisBitisTarihi : string;
      donorTc : string;
      BransKodu : string;
      ProvizyonTarihi : string;
      BasvuruNo : string;
      ilkTakip : string;
      dosyaNo : string;
      gelisNo : string;
      bebekSira : string;
      BebekDTarihi : string;
      ArrayOfAdliGecmis : array of TAdliGecmis;
      sevkedenTesisKodu : integer;
      kilo : string;
      boy : string;
      diyalizTedaviTipi : integer;
      DT : TXSDateTime;
      id : integer;
      telefon : string;
      adres : string;
      plakaNo : string;
      vakaTarihi : string;
    End;

type
    TGelisDuzenle = record
      TedaviTuru : string;
      GirisTarihi : Tdate;
      dosyaNo : string;
      gelisNo : string;
      TakipNo : string;
      BransKodu : string;
      doktor : string;
      ProtokolNo : string;
      Tetkikler : string;
      ProtokolNoGuncelle : boolean;
    end;


type
    TGelisDuzenleK = record
      TedaviYontemi : string;
      TedaviTuru : string;
      GirisTarihi : Tdate;
      CikisTarih : TDate;
      dosyaNo : string;
      gelisNo : string;
      TakipNo : string;
      basvuruNo : string;
      BransKodu : string;
      TaburcuKodu : string;
      doktor : string;
      ProtokolNo : string;
      Yupass : string;
      IdealKilo : string;
      SIRANO : string;
      sysTakipNo : string;
      DiyalizTedaviYonetimiDegisti : Boolean;
    end;


type
    TTakipBilgisi = record
      Takip : String;
      MuayeneTarihi : String;
      KayitTarihi : string;
      TesisKodu : String;
      GidecegiTesisTuru : string;
      SevkEdenTesis : string;
      SevkEdilenBrans : string;
      SevkEdilisTarihi : string;
      SevkEdenDoktor : string;
      TalipDurumu : string;
      HastaAdi : string;
      TcKimlik : string;
      yas : string;
      ilkTakip : string;
      BasvuruNo : string;
      donerTcKimlik : string;
      TakipTipi : string;
      tedaviTuru : string;
      provizyonTipi : string;
      tedaviTipi : string;
      bransKodu : string;
      dosyaNo : string;
      gelisNo : string;
      faturaTeslimNo : string;
    end;

type
    TTakip = record
      TesisKodu : integer;
      TCKimlik : string;
      SosyalGuvenlikNo : string;
      KarneNo : string;
    end;

type
   THaksahiplikBilgileri = record
     TcKimlikNo : string;
     karneNo : string;
     sosyalGuvenlikNo : string;
     yakinlikKodu : string;
     sigortaliTuru : string;
     devredilenKurum : string;
     provizyonTipi : string;
     provizyontarihi : string;
     Adi : string;
     dosyaNo : string;
   end;

type
   TserverBilgi = record
     servername : string;
     ip : string;
     cs : string;
     user : string;
   end;

type
   TOdemeSorguOku = record
     DigerIslemler : TDataSet;
     Taniler : TDataSet;
   end;

type
   THospitalizasyon = record
     Baslangic : string;
     Bitis : String;
     TaniKodu : string;
     Tani : string;
     Aciklama : string;
     Brans : string;
     Tesis : string;
   end;

type
   TRapor = record
     raporTarihi : string;
     raporGecerlilik : string;
     sevkEdenTesis : string;
     raporNo : string;
     muayeneAcilis : string;
     raporTakipNo : variant;
     verenTesisKodu : variant;
     Turu : variant;
     sira : variant;
     dosyaNo : variant;
     gelisNo : variant;
     baslangicTarihi : variant;
     bitisTarihi : variant;
     duzenlemeTuru : variant;
     aciklama : variant;
     tedaviRaporTuru : variant;
     butkodu : variant;
     seansGun : variant;
     seansSayi : variant;
     protokolNo : variant;
     raporCaption : variant;
     duzenleyenDoktor : variant;
     SablonBilgisi : string;
     Tanilar : string;
   end;

type
  TReceteIlacBilgisi = record
    kodu: string;
    adi: string;
    aktif: integer;
    adoz: real;
    tekdoz: real;
    kullanimPeryotBirim : string;
    kullanimZaman : string;
    kutuAdet : string;
  End;

type
  DiyabetFormDoktor = record
    drTescilNo: string;
    brans: string;
    egitimVarmi: string;
  End;

  DiyabetFormDoktorlar = array of DiyabetFormDoktor;

type
  TakipFormu = record
    DosyaNo: string;
    GelisNo: string;
    DetayNo: string;
    Tckimilk: string;
    Ad: string;
    Soyad: string;
    CepTel: string;
    Protokol: string;
    Cinsiyet: string;
    doktor: DiyabetFormDoktorlar;
    vizitTarihi: string;
    formNo: string;
    Tani: string;
    TaniTarihi: string;
    Tesis: string;
  End;

  TakipFormlari = array of TakipFormu;

  BasvuruTakipBilgisi = record
    takipNo: string;
    Basvuruno: string;
    sigortaliTuru: string;
    bransKodu: string;
    devredilenKurum: string;
    provizyonTarihi: string;
    provizyonTipi: string;
    takipTipi: string;
    yeniDoganBilgisi: string;
    yeniDoganCS: string;
    yatisBitisTarihi: string;
    tedaviTuru: string;
    tedaviTipi: string;
    ilktakipNo: string;
    SonucKodu: string;
  end;

  OrneklenenTakip = record
    Takip: string;
  end;

  OrneklenenTakipler = array of OrneklenenTakip;

  KesintiTakip = record
    Takip: string;
    islemSiraNo: string;
    Tarih: string;
    sutKodu: string;
    islemAdi: string;
    tutar: double;
    kesintiTutari: double;
    aciklama: string;
    grupturu: string;
    grupAdi: string;
  end;

  KesintiTakipler = array of KesintiTakip;

  KatilimPayi = record
    Takip: string;
    muayeneKatilimTutari: double;
    malzemeKatilimTutari: double;
    tupBebekKatilimTutari: double;
  end;

  KatilimPaylari = array of KatilimPayi;

type
  TKareBarkod = record
    barkodNo: string;
    seriNo: string;
    SKT: string;
    partiNo: string;
  end;

type
  TSGKBilgileri = record
    devredilenKurumKodu: string;
    devredilenKurum: string;
    durumKodu: string;
    durum: string;
  end;

type
  TTarihAralik = record
    ilkTarih: TDate;
    sonTarih : TDate;
  end;



type
  TSeansOlusturPrm = record
     ilkSeansTarihi : Tdate;
     sonSeansTarihi : Tdate;
     gunSayisi : integer;
     HizmetTip : Boolean;
     araSeans : Boolean;
     SeansKodu : string;
  end;

type
  TReceteSatir = record
     barkod : string;
     barkodadi : string;
     kutuadet : integer;
     peryot : integer;
     peryotAdet : integer;
     doz : string;
     doz1 : integer;
     doz2 : integer;
     kulyol : string;
  end;

type
  TYeniRecete = record
    Tarih : string;
    ReceteTuru : string;
    ReceteAltTuru : string;
    doktor : string;
    doktorAdi : string;
    protokolNo : string;
    takipNo : string;
    sablonAdi : string;
end;

type
  TAck = Record
     ackKod : string;
     ack : string;
  End;

type
  TTeleEKG = Record
    Tarih : Tdate;
    ack : string;
    code : string;
  End;

type
  TBeslenmeDegerlendirme = Record
    id : string;
    Tarih : Tdate;
    ack : string;
  End;

type
  TNutrisyonDegerlendirme = Record
    Hbd_id : string;
    id : string;
    Tarih : Tdate;
    VKI205kucuk : integer;
    kiloKaybi : integer;
    gidaAlim : integer;
    albumin : integer;
    kronik : integer;
    kronikDetay : string;
    baskaBirim : string;
    vki : double;
    hekimNot : string;
    diyetisyenNot : string;
  End;

type
  TMaviKod = Record
    id : string;
    dosyaNo : string;
    adi : string;
    Tarih : Tdate;
    AnonsuYaptiran : integer;
    KodVerilisNedeni : string;
    KodVerilisSaati : string;
    EkibininOlayYerineGelisSaati : string;
  End;


type
 TPersonelTetkikler = Record
   Tetkik : String;
 End;

type
  TFirmaBilgi = Record
    SirketKodu : String;
    SubeKodu : string;
    SirketAdi : String;
    Yetkili : string;
    YetkiliMail : String;
    YetkiliMobil : String;
    IGU : variant;
    IGUMail : string;
    doktor : variant;
    doktorMail : string;
    calisanTemsilci : string;
    calisanTemsilciMail : string;
    BascalisanTemsilci : string;
    BascalisanTemsilciMail : string;
    destekElemani : string;
    destekElemaniMail : string;
    isveren : string;
    ilgiliMailBilgileri : string;
    firmaYetkiliMailBilgileri : string;
    isgKurulEkibiMailBilgileri : string;
    subeSiciNo : string;
    DigerSaglikPers : variant;
    BolgeMudurlukSicilNo : string;
    MuayeneProtokolNo : string;
    DoktorCalismaDakika : string;
    IGUCalismaDakika : string;
    DigerSaglikPersCalismaDakika : string;
    NaceKod : string;
    tehlikeSinifi : string;
    Pasif : string;
    SemtLokasyon : string;
    calisanSayi : string;
    Adres : string;
    KapaliAlan : string;
    AcikAlan : string;
  End;



type
  TGirisFormRecord = Record
    F_dosyaNO_ : string;
    F_gelisNO_ : string;
    F_GelisSIRANO : string;
    F_provizyonTarihi_ : string;
    F_TakipNo_ : string;
    F_ilkTakipNo_ : string;
    F_BasvuruNo_ : string;
    F_DiyalizTedaviTipi_ : string;
    F_Doktor_ : string;
    F_Igu_ : string;
    F_Makina_ : string;
    F_Seans_ : string;
    F_TalepSira_ : string;
    F_TC_ : string;
    F_DevKurum_ : string;
    F_SigortaliTur_ : string;
    F_HastaAdSoyad_ : string;
    FformID : integer;
    F_HastaBilgileriniCaptionGoster_ : Boolean;
    F_SeansTarihi_ : string;
    F_Yupass_ : string;
    F_SeansSira_ : string;
    F_IlacEtkenMadde_ : string;
    F_firmaKod_ : string;
    F_firmaAdi_ : string;
    F_mobilTel_ : string;
    F_Adres_ : string;
    F_sp_ : string;
    F_kod_ : string;
    F_sube_ : string;
    F_MuayeneProtokolNo_ : string;
    F_FaturaNO_ : string;
    F_Tarih1_ : string;
    F_Tarih2_ : string;
    F_ResourceID_ : string;
    F_FaturaIptal : Boolean;
    F_BransKodu_ : string;
    F_TedaviTuru_ : string;
    F_SeansBilgi : TDigerIslemTalep;
    F_sysTakipNo : string;
    F_Cinsiyet : string;
    F_DogumTarihi : string;
    F_HASTAADI : string;
    F_HASTASOYADI : string;
    F_PasifSebeb_ : variant;
  End;

type
  TKKDRecord = Record
    KKDID : string;
    SirketRiskID : string;
    VucutKisim : string;
    VucutUzuv : string;
    KKD : string;
    TSE : string;
    KullanilacakIs : string;
    Bolum : string;
  End;

type
  TRiskRecord = Record
    RiskID : string;
    SirketRiskID : string;
    Method : Variant;
    Bolum : Variant;
    TehlikeKaynagi : Variant;
    Tehlike : Variant;
    Etkilenecek : Variant;
    Risk_tanim : Variant;
    Onlemler : string;
    Olasilik : Variant;
    Frekans : Variant;
    Siddet : Variant;
    Risk : Variant;
    RDS : Variant;
    MevcutOnlem : string;
    Sorumlu : string;
    TerminSure : Variant;
    Termin : string;
    Gerceklesme : Variant;
    Olasilik_2 : Variant;
    Frekans_2 : Variant;
    Siddet_2 : Variant;
    Risk_2 : Variant;
    RDS_2 : Variant;
    yasalDayanak : string;
    Image : TcxImage;
    Stream : TMemoryStream;
    SektorId : string;
    SSGBolum: integer;
    SSGYapilacakFaliyetTuru: Integer;
    SSGKokNeden: String;
    SSGFaliyetPlan: String;
    SSGUygulanacakFaliyetTarihi: String;
    SSGBolumYetkilisi : String;
    SSGSonuc : Variant;
    SSGYapilanFaliyet: String;
    SSGFaliyetKapamaTarihi : String;
    SSGTakipSüresi : String;
    SSGKapamaOnayi : Variant;
    SSGTespitTarihi : String;
    RDS_ID : string;
  End;

  TDOF = record
    SSGBolum: integer;
    SSGYapilacakFaliyetTuru: Integer;
    SSGKokNeden: String;
    SSGFaliyetPlan: String;
    SSGUygulanacakFaliyetTarihi: String;
    SSGBolumYetkilisi : String;
    SSGSonuc : Variant;
    SSGYapilanFaliyet: String;
    SSGFaliyetKapamaTarihi : String;
    SSGTakipSüresi : String;
    SSGKapamaOnayi : Variant;
    SSGTespit : String;
  end;

  TSahaDenetim = record
    Bolum : integer;
    TehlikeliDurum : String;
    Yonetmelik : String;
    IlgiliKisi : String;
    isinDurumu : Variant;
    Image : TcxImage;
  end;

  TSifreDegistir = record
    KullaniciAdi : String;
    Sifre : String;
    SifreyiDoldur : Boolean;
  end;

  TSahaDenetimler = record
    KullaniciAdi : String;
    FirmaKod : String;
    SubeKod : String;
    GozlemGrubu : String;
    DenetimTarihi : String;
    DenetimDefterNo : String;
    BirSonrakiDenetimTarihi : String;
    DenetimiPlanlayan : String;
    DenetimOnaylamaTarihi : String;
    DenetimiOnaylayan : String;
  end;

  ArrayOfString = array of string;

  TOlcumKriter = record
    Bolum : String;
    Olcumler : ArrayOfString;
  end;


  TDokumanGG = record
    dokumanid : String;
    ggTarihi : TDate;
    SggTarihi : TDate;
    aciklama : String;
  end;

  TDokumanRevDetay = record
    dokumanid : String;
    tanimi : string;
    rev : string;
    revTarihi : TDate;
    aciklama : string;
    onayTarihi : TDate;
    kontrolTarihi : TDate;
    id : string;

  end;

  TKurulToplantiMadde = record
    SiraNo : integer;
    Madde : string;
    Karar : string;
    GorusmeNotlari : string;
    Aksiyon : string;
    Gorevli : string;
    GorevTarihi : TDate;
    HedafTarih : TDate;
    YapilanIslem : string;
    TamamlanmaTarihi : TDate;
    Tamam : integer;
  end;


  TPersonelEgitimDegerlendirme = record
    SiraNo : integer;
    GozlemTarihi : string;
    Sorumlu : string;
    GozlemNotlari : string;
    BirimSorumluDegerlendirme : string;
    YonetimDegerlendirme : string;
  end;

  THemsireTalimat = record
    id : string;
    uygulama : String;
    durum : String;
    dosyaNo : String;
    uygulamaBaslamaTarihi : variant;
    uygulamaBitisTarihi : variant;
  end;


  TYillikCalismaPlani = record
    faliyetid : integer;
    peryod : integer;
    ocak : integer;
    subat : integer;
    mart : integer;
    nisan : integer;
    mayis : integer;
    haziran : integer;
    temmuz : integer;
    agustos : integer;
    eylul : integer;
    ekim : integer;
    kasim : integer;
    aralik : integer;
    ocakR : integer;
    subatR : integer;
    martR : integer;
    nisanR : integer;
    mayisR : integer;
    haziranR : integer;
    temmuzR : integer;
    agustosR : integer;
    eylulR : integer;
    ekimR : integer;
    kasimR : integer;
    aralikR : integer;
    sorumlu1 : integer;
    konu1 : integer;
    sorumlu2 : integer;
    konu2 : integer;
  end;

  TSKSForm = record
    raporKodu : string;
    raporAdi : string;
    SKS_FormID : string;
    Tip : string;
    id : string;
    dosyaNo : string;
    gelisNo : string;
  end;

  TCariHareket = record
    hareketTipi : string;
    tutar : double;
  end;

  TeLHijyen = record
    id : string;
    Tarih : Tdate;
    sirketKod : string;
    gozlemci : string;
  end;



  TeLHijyenDetay = record
    id : string;
    salon : string;
    vardiya : string;
    meslek : integer;
    cinsiyet : integer;
    TO_Firsat : integer;
    TO_Yikama : integer;
    TO_Ovma : integer;
    TO_Yok : integer;
    TS_Firsat : integer;
    TS_Yikama : integer;
    TS_Ovma : integer;
    TS_Yok : integer;
    AIO_Firsat : integer;
    AIO_Yikama : integer;
    AIO_Ovma : integer;
    AIO_Yok : integer;
    VS_Firsat : integer;
    VS_Yikama : integer;
    VS_Ovma : integer;
    VS_Yok : integer;
    HCTS_Firsat : integer;
    HCTS_Yikama : integer;
    HCTS_Ovma : integer;
    HCTS_Yok : integer;
  end;


  TCek = record
    evrakNo : string;
    tutar : double;
    banka : string;
    sirketKod : string;
    tedarikciKod : string;
    kimden : string;
    kime : string;
    tip : string;
    durum : string;
    vade : Tdate;
    aciklama : string;
  end;


type
  TKtvUrr = record
     Ktv : double;
     urr : double;
     DuzCa : double;
     CaxP : double;
     TS : double;
     dosyaNo : string;
     gelisNo : string;
     hasta : string;
  end;

  TIlacTedavi = record
     id : string;
     ilacname : string;
     doz : string;
     miktar : string;
  end;


  TIndikatorTanim = record
      gostergeKodu : string;
      tanimi : string;
      amac : string;
      formul : string;
      altGosterge : string;
      HedefTanimi : string;
      peryot : string;
      veriKaynak : string;
      sorumlular : string;
      paylasilacakKisiler : string;
      dikkatedilecekhususlar : string;
  end;


  TKaliteYonetimPlan = record
      Yil : string;
      hazirlayan : string;
      kontrolEden : string;
      Onaylayan : string;
      hazirlamaTarihi : string;
      onaylamaTarihi : string;
      sirketKod : string;
      id : string;
  end;


  TTatbikat= record
      turu : string;
      hazirlayan : string;
      Onaylayan : string;
      Tarih : string;
      yer : string;
      sirketKod : string;
      id : string;
      Aciklama : string;
      Mataryel : string;
  end;

  TAnket = record
    id : integer;
    tarih : Tdate;
    sirketKod : string;
    anketSayi : integer;
    anketTip : integer;
  end;

  TRaporSablon = record
    sablonId : integer;
    sablonAdi : string;
    sirketKod : string;
    doktor : string;
  end;

  TTahsilat = record
    evrakNo : string;
    evrakID : string;
    evrakTip : string;
    tutar : string;
    DiyalizSirketKod : string;
    sirketKod : string;
    Kasa : string;
    aciklama : string;
  end;

  TIntegerArray = array of Integer;



Const
  TagfrmPersonelKart = 90;
  TagfrmFirmaKart = 100;
  TagfrmMerkezBilgisi = 105;
  TagfrmHizmetKart = 735;
  TagfrmUsers = 110;
  TagfrmBolum = 9010;
  TagfrmBirim = 9011;
  TagfrmSube = 9012;
  TagfrmFirmaISGEkip = 9013;
  TagfrmEkipmanTuru = 9014;
  TagfrmEkipmanTuruOzellik = 9015;
  TagfrmTakipNo = 10;
  TagfrmAsiKarti = 9020;
  TagfrmDoktorlar = 80;
  TagfrmTedaviBilgisi = 70;
  TagfrmGridListeForm = 120;
  TagfrmDestekTalep = 121;
  TagYeniOSGBVeriTabani = 127;
  TagfrmHastaRecete = 130;
  TagfrmPersonelRecete = 131;
  TagfrmTopluHastaRecete = 132;
  TagfrmHastaIlacTedavi = 140;
  TagfrmTeleEkg = 150;
  TagfrmSifreDegis = 160;
  TagfrmReceteSablon = 170;
  TagfrmRaporSablon = 171;
  TagfrmSon6AylikTetkikSonuc = 180;
  TagfrmHastaTetkikEkle = 190;
  TagfrmKanTetkikTakip = 200;
  TagfrmKtvListesi = 210;
  TagfrmKanTetkikTakipDegerlendir = 220;
  TagfrmKontrolUserSet = 230;
  TagfrmHastaListe = 240;
  TagfrmDoktorHastaListe = 241;
  TagfrmFirmaListe = 242;
  TagfrmIlacSarf = 250;
  TagfrmSeansDetayKart = 260;
  TagfrmPopupDBGridForm = 270;
  TagfrmPopupDBVerticalGridForm = 275;
  TagfrmSaglikNetOnline = 280;
  TagfrmSeansDagilimi = 290;
  TagfrmFatura = 300;
  TagfrmTakipBilgisiOku = 310;
  TagfrmPopup = 320;
  TagfrmTaniKarti = 330;
  TagfrmTakipKontrol = 340;
  TagfrmHastaDiyalizIzlem = 350;
  TagfrmHastaDiyalizIzlemListesi = 351;
  TagfrmBesinDegerlendirme = 352;
  TagfrmTopluGelis = 360;
  TagfrmDamarIzi = 370;
  TagfrmKurumBilgi = 380;
  TagfrmParametreler = 381;

  TagKurumSifreDegisForm = 390;
  TagfrmDonemSonlandir = 400;
  TagfrmGonderilmis = 410;
  TagfrmTahliltakip = 420;
  TagfrmTahlilsonucGir = 430;
  TagfrmHemsireler = 440;
  TagfrmMakina = 450;
  TagfrmMakinaBakim = 460;
  TagfrmMakinaDurumP = 461;
  TagfrmTestAyarlari = 470;
  TagfrmKiloOrder = 480;
  TagfrmHizliKayitPersonel = 490;
  TagfrmTedaviListP = 500;
  TagfrmHemsiraTakip = 510;
  TagfrmIlaclar = 520;
  TagfrmIlacAnaGrup = 530;
  TagfrmIlacEtkenMadde = 540;
  TagfrmIlacEtkenMaddeDetay = 550;
  TagfrmReceteler = 560;
  TagfrmUpdate = 570;
  TagfrmPersonelEgitim = 580;

  TagfrmSorgulamalar = 590;
  TagfrmSorguCalistir = 600;
  TagfrmIsKazasi = 610;
  TagfrmAbout = 620;
  TagfrmSahaSaglikGozetim = 630;
  TagfrmSahaSaglikGozetimTanim = 631;
  TagfrmCihazKontrol = 635;
  TagfrmFirmaKontrol = 636;
  TagfrmIGU = 640;
  TagfrmKaliteYonetimPlan = 641;
  TagfrmElHijyen = 642;
  TagFirmaCalismalari = 650;
  TagfrmPersonelTetkikIstem = 660;
  TagfrmFirmaBolumTetkikIstemSablon = 670;
  TagfrmFirmaBolumTanim = 680;
  TagfrmLabParametreleri = 690;
  TagfrmLabKabul = 700;
  TagfrmLabSonucGir = 710;
  TagfrmAnamnez = 720;
  TagfrmTetkikIstemSablon = 730;
  TagfrmHizliKayitDisAktarimlar = 740;
  TagfrmDokumanYonetim = 750;
  TagfrmIseGiris = 760;
  TagfrmFaturalar = 780;
  TagfrmDigerSaglikPers = 790;
  TagfrmSirketSozlesme = 800;
  TagfrmSirketSozlesmeler = 810;
  TagfrmCariHareketGiris = 820;
  TagfrmCariHesapEkstre = 830;
  TagfrmStokKart = 831;
  TagfrmRDS = 840;
  TagfrmAjandaOzet = 850;
  TagfrmSirketSahaGozetim = 860;
  TagfrmCariHesapBorcAlacakToplam = 870;
  TagfrmISGKurulToplanti = 880;
  TagfrmISGKurulToplantiTanim = 881;
  TagfrmKKD = 890;
  TagfrmTedarikci = 900;
  TagfrmCekler = 910;
  TagfrmKasaBanka = 920;
  TagfrmCSGBveriGonder = 930;
  TagfrmRTFSablon = 940;
  TagfrmSirketSahaDenetim = 950;
  TagfrmSirketEkipmanList = 960;
  TagfrmSirketYillikCalismaPlan = 970;
  TagfrmFirmaYetkili = 980;
  TagfrmSirketYillikEgitimPlan = 990;
  TagfrmKroki = 1000;
  TagfrmHastaRaporlari = 1010;


  TagfrmOrtamOlcum = 1020;
  TagfrmCihazKontrolListesi = 1030;
  TagfrmFirmaPersonelEgitimList = 1040;


  TagfrmSKS_Dokumanlar = 1050;
  TagfrmSKS_YeniDokuman = 1060;
  TagfrmOlayBildirim = 1070;
  TagfrmKlorOlcum = 1080;
  TagfrmCalisanGeriBildirimAnket = 2000;
  TagfrmCalisanGeriBildirimAnketSoruTanim = 2001;
  TagfrmMadulaEpiktizTanim = 2002;
  TagfrmTatbikat = 2003;
  TagfrmFaaliyetDurumBildirim = 2004;
  TagfrmMaviKodBildirimListesi = 2005;


  TagfrmHastaKart = 5001;
  TagfrmTopluSeans = 5003;
  TagfrmHastaListeD = 5002;
  TagfrmHastaSeans = 5004;
  TagfrmSKSKriter = 5005;
  TagfrmRaporDetay = 5006;
  TagfrmMedulaFatura = 5007;
  TagfrmAylikSeansToplamlari = 5008;
  TagfrmGunSonuOzet = 5009;
  TagfrmTopluEpikriz = 5010;
  TagfrmKurumFatura = 5021;
  TagfrmIlacEtkenMaddeSutKural = 5020;
  TagfrmUzmanMuayene = 5030;
  TagfrmLabEntegrasyon = 5040;
  TagfrmHizliKayit = 5050;
  TagfrmTopluHastaTedaviListesi = 5060;
  TagfrmHastaKonsultasyon = 5070;
  TagfrmTIKriter = 5011;
  TagfrmAsiTakipListesi = 5012;

  TagfrmMedEczane = 5080;
  TagfrmMedula = 5081;
  TagfrmENabiz = 5082;
  TagfrmUyum = 5083;

  TagfrmITS = 6000;
  TagfrmITSPaket = 6001;
  TagfrmKurumFaturaHazirlik = 6002;



  Kaydet = 0;
  Sil = 1;
  Yeni = 2;
  islemYapiliyor = 'Ýþleminiz Yapýlýyor , lütfen bekleyiniz...';

  ENALAB = 23;
  BIYOTIP = 15;
  SYNEVO = 11;
  REFERANSLAB = 21;
  SYNLAB = 2;
  CentroLab = 3;
  SISTEMTIP = 10;
  DERMANLAB = 8;
  EGELABLAB = 9;
  AHENK = 1;
  SIMGE = 22;
  BIOLAB = 7;
  ELAB = 24;
  UNYE = 31;
  INTERKOMLAB = 26;
  DUZENLAB = 16;
  AENLAB = 13;
  ERBILLAB = 12;
  DERENLAB = 5;
  BIRLABLAB = 14;
  GAMA = 18;

  RENTEKLAB = 99;
  EXCEL = 98;


  ExceleGonder = 9997;
  SeansTarihiUpdate = 0;
  SeansDoktorUpdate = 1;
  SeansInsert = 2;
  ReceteIlacEkle = 3;
  ReceteSablonIlacEkle = 31;
  ReceteAckEkle = 4;
  ReceteIlacDuzenle = 5;
  ReceteAckDuzenle = 6;
  ReceteIlacAckDuzenle = 7;
  ReceteIlacAckEkle = 8;
  ReceteYeni = 9;
  ReceteYeniRecete = 10;
  ReceteMedulaKaydet = 11;
  ReceteMedulaSil = 12;
  ReceteMedulaOnay = 13;
  ReceteMedulaOnayIptal = -13;
  RaporMedulaKaydet = 11;
  RaporMedulaSil = 12;
  RaporBasHekimOnay = 13;
  RaporBasHekimOnayRed = 14;
  TeleEkgDuzenle = 14;
  ReceteSifre = 15;
  PrgSifre = 16;
  ReceteYeniSablon = 17;
  AylikTetkik = -1;
  UcAylikTetkik = -3;
  AltiAylikTetkik = -6;
  YillikTetkik = -12;
  ReceteIlacEkleIlacTedavi = 17;
  ReceteIlacAckEkleMedula = 18;
  ReceteTaniEkleMedula = 19;
  ReceteDuzenle = 20;
  ClckListele = 21;
  gdgelisDuzenle = 22;
  gdgelisAc = 23;
  gdPeryodikgelisAc = 30;
  ptPersonelTetkikleri = 31;
  yeniGozlem = 24;
  gozlemSil = 25;
  GozlemDuzenle = 26;
  Imzali = 0;
  Imzasiz = 1;
  yeniFatura = 1;
  faturaDuzenle = 2;
  faturaSil = 3;
  faturaYazdir = 4;
  faturaE_Arsiv = 5;
  sozlesmedenFatura = 6;
  yeniRisk = 27;
  riskDuzenle = 28;
  yeniGozetim = 40;
  gozetimDuzenle = 41;
  yeniRiskBolum = 42;
  yeniTehlikeKaynak = 43;
  yeniTehlike = 59;
  yeniEkilenecekler = 60;
  riskRaporuPaylas = 44;
  sahaGozetimPaylas = 45;
  yeniKKD = 46;
  KKDDuzenle = 47;
  yeniKKDEkle = 48;
  FaturaTahsilatEkle = 49;
  CekTahsilat = 50;
  OdemeEkle = 51;
  yeniDenetim = 52;
  denetimDuzenle = 53;
  RDP_FineKenny = '10';
  RDP_Matris = '11';
  RDP_Fmea = '12';
  RDSonuc_FineKenny = '20';
  RDSonuc_Matris = '21';
  RDEkipTutanagi = '30';
  yeniFaaliyet = 54;
  FaaliyetDuzenle = 55;
  FirmaUzmanDegistir = 56;
  FirmaDoktorDegistir = 57;
  PersonelSirketDegistir = 58;
  PersonelTetkisIste = 61;
  userSifre = 62;
  yeniSube = 63;
  SubeDuzenle = 64;
  olcumEkle =  65;
  olcumDuzenle = 66;
  yeniCek = 67;
  GGEkle = 68;
  GGSil = 69;
  GGDuzenle = -68;
  yeniMadde = 70;
  meddeSil = 71;
  MaddeDuzenle = 72;
  hastaGelisAc = 73;
  hastaYatisAc = -73;
  hastaGelisDuzenle = 74;
  hastaYatisDuzenle = -74;
  raporInsert = 75;
  raporUpdate = 76;
  raporSablon = -76;
  raporSablonInsert = -75;
  ReceteYeniPersonel = 77;
  ReceteDuzenlePersonel = 78;
  hastaTakipleriGetir = 79;
  ilacTedaviIlacEkle = 80;
  ilacTedaviIlacDuzenle = 81;
  ilacTedaviIlacSil = 82;
  SKSindikatorSorgu = 83;
  raporAra = 84;
  raporSistemeAktar = 85;
  LabHastaGonder = 1;
  LabSonucAl = 2;
  DiyalizIzlemDVitamin = 1;
  DiyalizIzlemAnemi = 3;
  DiyalizIzlemCinacalset = 15;
  KtvUrrDuzenle = 77;
  ReceteyiSablonKaydet = 86;
  ilacTedaviUygula = 87;
  ilacTedaviIptal = 88;
  SKSdokumanOku = 100;
  SKSdokumanRevDuzenle = 101;
  yeniTalimat = 102;
  talimatDuzenle = 103;
  yeniKonsultasyon = 104;
  konsultasyonDuzenle = 105;
  indikatorKart = 106;

  yeniAnket = 107;
  AnketDuzenle = 108;
  UzmanMuayeneDoktorTarihDuzenle = 109;

  TibbiDenetimSorgu = 110;
  PersonelEgitimDegerlendirmeFormu = 111;
  KaliteYonetimPlanYeni = 112;
  KaliteYonetimPlanDuzenle = 113;
  TatbikatYeni = 114;
  TatbikatDuzenle = 115;
  AsiTakipListesi = 116;

  BeslenmeYeni = 120;
  BeslenmeDuzenle = 121;
  NutrisyonYeni = 122;
  NutrisyonDuzenle = 123;
  MaviKodYeni = 124;
  MaviKodDuzenle = 125;
  ElHijyenYeni = 126;
  ElHijyenDuzenle = 127;
  ElHijyenDetayYeni = 128;
  ElHijyenDetayDuzenle = 129;
  SKS_HastaForm = 130;
  RaporAciklamaEkle = 131;


  PortaldenFaturaOku = 200;
  MobilUygulamaLinki = 300;
  TetkikTarihDuzenle = 301;
  DisardenGelenEvrakYukle = 302;
  DisardenGelenEvrakSil = 303;
  UTSKullanimiBildirimTablosu = 304;

  NelerYeni = 333;

  EtkinMaddeTeshisOku = 334;

  ITSAlimBildir = 6000;
  ITSSarfBildir = 6001;





  sp_HastaGelis = 'exec sp_HastaGelisleri ';

implementation


end.
