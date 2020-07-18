unit GetFormClass;

interface

uses Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Consts,
  Dialogs, ADODB, registry, ComCtrls, StdCtrls, db, ExtCtrls,Kadir,KadirType,
  ShellApi, forms,GirisUnit,cxPc,strUtils;


function FormClass(formId : integer) : TComponentClass;
function FormINIT(FormTag : Integer;MidiForm : TForm;
                  Values : TGirisFormRecord ; Value : String = '';
                  Tab : TcxTabSheet = nil;ik : izinKontrol = ikHayir ;
                  izinPrm : string = '') : TGirisForm;overload;

function FormINIT(FormTag : Integer;MidiForm : TForm;
                  Value : String = '';
                  Tab : TcxTabSheet = nil;ik : izinKontrol = ikHayir ;
                  izinPrm : string = '';
                  tc : String = '') : TGirisForm;overload;

function FormINIT(FormTag : Integer;Value : TGirisFormRecord;ik : izinKontrol = ikHayir ;
                  izinPrm : string = '') : TGirisForm;overload;

function FormINIT(MenuID : Integer) : Boolean;overload;


function FormINITTForm(FormTag : Integer) : TForm;
//function FormINIT(FormTag : Integer; Hasta : THasta ; Dialog : showDialog = OFShowModal) : Boolean;overload;

function FormClassType(formId : integer) : TComponent;
function GetFormCaptionInfo(const formId : integer; var pFormCaption, pFormAltCaption, pUserGroup, pUserGroupDesc : String; pMsg: boolean = True) : Boolean;

function FormTabImageIndex(formId : integer) : integer;
function PopupFormCaption(islemTag : integer ; var TabCaption : string) : String;

implementation

uses
    message,
    Data_Modul,
    AnaUnit,
    message_y,
    popupForm,
    rapor,
    TedaviKart,
    Son6AylikTetkikSonuc,
    HastaRecete,
    sifreDegis,
    HastaTetkikEkle,
    DokumanYukle,
    RTFSablon,
    Receteler,
    Sorgulamalar,
    sorguRaporCalistir,
    CariHareketGiris,
    CariHesapExtresi,
    PersonelKart,
    FirmaKart,
    receteSablonlari,
    raporSablonlari,
    RDS,
    KKD,
    Tedarikci,
    Cekler,
    HastaListe,
    HastaListeD,
    IsKazasi,
    Anamnez,
    GrupDetayTanim,
    Sozlesmeler,
    KasaBanka,
    Tnm_UserSettings,
    HastaAsiKarti,
    HastaTaniKart,
    sirketSahaGozetim,
    sirketSahaDenetim,
    KurumLogin,
    Update_G,
    labaratuvarKabul,
    Faturalar,
    FaturaDetay,
    FirmaKontrol,
    MedulaKurumSifreDegis,
    labParametreleri,
    SirketSozlesme,
    FirmaEkipmanList,
    Tnm_Doktor,
    Tnm_Hemsire,
    LabTestAyarlari,
    SahaSaglikGozetim,
    CariHesapBorcAlacakToplam,
    PopupDBGridForm,
    PopupDBVerticalGridForm,
    AjandaOzet,
    sirketISGKurulToplanti,
    Tnm_Ilaclar,
    PersonelEgitimFrm,
    About_Frm,
    MerkezBilgisi,
    sirketYillikCalismaPlan,
    sirketYillikEgitimPlan,
    HizmetKart,
    CihazKontrol,
    firmaListesi,
    Kroki,
    sirketOrtamOlcum,
    firmaCihazKontrolListesi,
    PersonelFirmaEgitimListesi,
    SKS_Dokumanlar ,
    SKS_yeniDokuman,

    HastaKart,
    TopluSeansIsle,
    TopluGelis,
    DLLTakipNo ,
    HastaSeansIsle,
    SKSKriterTanim,
    TIKriterTanim,
    takipOkuBilgisi,
    raporDetay,
    TahlilTakipListesi,
    KanTetkikleriTakip,
    MedulaFatura,
    DamarIzýDogrulananlar,
    SeansGostergesi,
    AylikSeansToplamlari,
    SaglikNetOnline,
    GunSonuOzet,
    topluEpikriz,
    HastailacTedavi,
    IlacEtkenMadde,
    HastaDiyalizIzlem,
    UzmanMuayene,
    OlayBildirim,
    klorOlcum,
    LabEntegrasyon,
    SeansDetayKarti,
    KanTetkikleriDegerlendir,
    KiloOrder,
    StokKarti,
    HizliKayit,
    HastaIzlemListesi,
    TakipKontrol,
    ktv_urrListesi,
    MakinaDurumP,
    raporDetayToplu,
    TeleEKG,
    TopluReceteImzala,
    TopluHastaTedaviList,
    KonsultasyonForm,
    MedEczane,
    CalisanGeriBildirimAnket,
    itsBildirim,
    itsBildirimPaket;


function FormTabImageIndex(formId : integer) : integer;
begin
   case formId of
     TagfrmPersonelKart : Result := 39;
     TagfrmFirmaKart : Result := -1;
     TagfrmMerkezBilgisi : Result := -1;
     TagfrmHizmetKart : Result := -1;
     TagfrmTedaviBilgisi : Result := 2;
     TagfrmSaglikNetOnline : Result := 3;
     TagfrmHastaRecete : Result := 4;
     TagfrmHastaListe : Result := 6;
     TagfrmTeleEkg : Result := 7;
     TagfrmSeansDagilimi : Result := 9;
     TagfrmFatura : Result := 38;
     TagfrmTakipBilgisiOku : Result := 11;
     TagfrmUsers : Result := 12;
     TagfrmHastaIlacTedavi : Result := 13;
     TagfrmTakipNo : Result := 14;
     TagfrmAsiKarti : Result := 15;
     TagfrmHastaDiyalizIzlem : Result := 20;
     TagfrmDamarIzi : Result := 66;
     TagfrmKurumBilgi : Result := 87;
     TagKurumSifreDegisForm : Result := -1;
     TagfrmDonemSonlandir : Result := -1;
     TagfrmGonderilmis : Result := -1;
     TagfrmTahliltakip : Result := -1;
     TagfrmTahlilsonucGir : Result := -1;
     TagfrmDoktorlar : Result := -1;
     TagfrmAbout : Result := -1;
     TagfrmPersonelEgitim : Result := -1;
     TagfrmHemsireler : Result := -1;
     TagfrmMakina : Result := 89;
     TagfrmTestAyarlari : Result := -1;
     TagfrmKiloOrder : Result := -1;
     TagfrmHizliKayitPersonel : Result := -1;
     TagfrmHizliKayitDisAktarimlar : Result := -1;
     TagfrmIlaclar : Result := -1;
     TagfrmReceteler : Result := -1;
  end;
end;

function PopupFormCaption(islemTag : integer ; var TabCaption : string) : String;
begin
   case islemTag of
     gdgelisAc :
         Begin
           TabCaption := 'Geliþ Aç';
           Result := 'GELÝÞ ÝÞLEMLERÝ';
         End;

     gdgelisDuzenle :
         Begin
           TabCaption := 'Geliþ Düzenle';
           Result := 'GELÝÞ ÝÞLEMLERÝ';
         End;
     ReceteIlacEkle,ReceteIlacDuzenle :
         Begin
           TabCaption := ifThen(islemTag = ReceteIlacEkle,'Ýlaç Ekle','Ýlaç Düzenle');
           Result := 'REÇETE ÝÞLEMLERÝ';
         End;
    SeansInsert :
         Begin
           TabCaption := 'Seans Oluþtur';
           Result := 'SEANS ÝÞLEMLERÝ';
         End;
    SeansDoktorUpdate :
         begin
           TabCaption := 'Seans Doktor Düzenle';
           Result := 'SEANS ÝÞLEMLERÝ';
         end;
    SeansTarihiUpdate :
         begin
           TabCaption := 'Seans Tarihi Düzenle';
           Result := 'SEANS ÝÞLEMLERÝ';
         end;
    PrgSifre  :
         begin
           TabCaption := 'Þifre Deðiþtir';
           Result := 'AYARLAR';
         end;
   end;

end;

function GetFormCaptionInfo(const formId : integer; var pFormCaption, pFormAltCaption, pUserGroup, pUserGroupDesc : String; pMsg: boolean = True) : Boolean;
var
  sql : string;
  ado : TADOQuery;
  T : TstringList;
begin
  Result := False;
  sql := 'select fc.formCaption, fc.formAltCaption, fc.UserGroup, ug.ADI UserGroupDesc '+
         'from FormCaption fc '+
         'left outer join UserGroups ug on ug.KODU = fc.UserGroup '+
         'where fc.formTag = ' + inttostr(abs(formId));
  ado := TADOQuery.Create(nil);
  try
    datalar.QuerySelect(ado,sql);
    if ado.Eof then
    begin
      pFormCaption := '';
      pFormAltCaption := '';
      pUserGroup := '';
      pUserGroupDesc := '';
      if pMsg then ShowMessageSkin('Form Baþlýk Bilgisi Tanýmlanmamýþ : "FormCaption" ('+IntToStr (formID)+')', '', '', 'info');
      Exit;
    end;
    pFormCaption :=  ado.Fields[0].AsString;
    pFormAltCaption := ado.Fields[1].AsString;
    if ado.Fields[2].IsNull then
      pUserGroup := ''
     else
      pUserGroup := IntToStr (ado.Fields[2].AsInteger);
    pUserGroupDesc := ado.Fields[3].AsString;
    if not IsNull (pUserGroup) then
    begin
      T := TStringList.Create;
      ExtractStrings(['0'],[],pchar(pUserGroup),T);

      if (pUserGroup <> DATALAR.UserGroup)
      then
      begin
        if pMsg then ShowMessageSkin('Bu form "' + pUserGroupDesc + '" kullanýcý grubuna özeldir', '', '', 'info');
        Exit;
      end;

    end;
    Result := True;
  finally
    ado.Free;
  end;
end;

function FormClass(formId : integer) : TComponentClass;
begin
  case abs(formId) of
   TagfrmPersonelKart : Result := TfrmPersonelKart;
   TagfrmFirmaKart : Result := TfrmFirmaKart;
   TagfrmMerkezBilgisi : Result := TfrmMerkezBilgisi;
   TagfrmHizmetKart : Result := TfrmHizmetKart;

   TagfrmPopupDBGridForm,TagfrmBolum,TagfrmBirim,TagfrmEkipmanTuru,TagfrmSahaSaglikGozetimTanim,
    TagfrmISGKurulToplantiTanim, TagfrmCalisanGeriBildirimAnketSoruTanim,
     TagfrmEkipmanTuruOzellik,TagfrmFirmaYetkili,TagfrmMadulaEpiktizTanim : Result := TfrmPopupDBGridForm;

   TagfrmPopupDBVerticalGridForm : Result := TfrmPopupDBVerticalGridForm;
   TagfrmHizliKayitPersonel, TagfrmHizliKayitDisAktarimlar : Result := TfrmHizliKayit;
   TagfrmReceteSablon : Result := TfrmReceteSablon;
   TagfrmRaporSablon : Result := TfrmRaporSablon;
   TagfrmSorgulamalar : Result := TfrmSorgulamalar;
   TagfrmSorguCalistir : Result := TfrmRaporCalistir;
   TagfrmIsKazasi : Result := TfrmIsKazasi;
   TagfrmAnamnez,TagfrmIseGiris : Result := TfrmAnamnez;
   TagfrmTetkikIstemSablon : Result := TfrmGrupDetayTanim;
   TagfrmDokumanYonetim : Result := TfrmDokumanYonetim;

   TagfrmTedaviBilgisi : Result := TfrmTedaviBilgisi;
   TagfrmHastaRecete,TagfrmPersonelRecete : Result := TfrmHastaRecete;
   TagfrmHastaListe,TagfrmDoktorHastaListe : Result := TfrmHastaListe;
   TagfrmFirmaListe : Result := TfrmFirmaListe;
   TagfrmUsers : Result := TfrmUsers;
   TagfrmTakipNo : Result := TfrmTakipNo;
   TagfrmHastaTetkikEkle : Result := TfrmHastaTetkikEkle;
   TagfrmAsiKarti : Result := TfrmAsiKarti;
   TagfrmTaniKarti : Result := TfrmTaniKart;

   TagfrmKurumBilgi ,TagfrmParametreler : Result := TfrmKurumBilgi;
   TagKurumSifreDegisForm : Result := TKurumSifreDegisForm;

   TagfrmDoktorlar,TagfrmIGU,TagfrmDigerSaglikPers : Result := TfrmDoktorlar;
   TagfrmHemsireler : Result := TfrmHemsireler;
   TagfrmAbout : Result := TfrmAbout;
   TagfrmPersonelEgitim : Result := TfrmPersonelEgitim;
   TagfrmTestAyarlari : Result := TfrmTestAyarlari;

   TagfrmLabParametreleri : Result := TfrmLabParams;
   TagfrmLabKabul : Result := TfrmLabaratuvarKabul;

   TagfrmIlaclar,TagfrmIlacAnaGrup,TagfrmIlacEtkenMadde : Result := TfrmIlaclar;
   TagfrmSon6AylikTetkikSonuc : Result := TfrmSon6AylikTetkikSonuc;
   TagfrmReceteler : Result := TfrmReceteler;
   TagfrmFaturalar : Result := TfrmFaturalar;
   TagfrmFatura : Result := TfrmFaturaDetay;
   TagfrmMedulaFatura : Result := TfrmMedulaFatura;
   TagfrmSirketSozlesme : Result := TfrmSirketSozlesme;
   TagfrmSirketSozlesmeler : Result := TfrmSozlesmeler;
   TagfrmCariHareketGiris : Result := TfrmCariHareket;
   TagfrmCariHesapEkstre : Result := TfrmCariHesapEkstre;
   TagfrmCariHesapBorcAlacakToplam : Result := TfrmCariHesapBorcAlacakToplam;
   TagfrmSahaSaglikGozetim : Result := TfrmSahaSaglikGozetim;
   TagfrmCihazKontrol : Result := TfrmCihazKontrol;
   TagfrmFirmaKontrol : Result := TfrmFirmaKontrol;
   TagfrmRDS : Result := TfrmRDS;
   TagfrmKKD : Result := TfrmKKD;
   TagfrmCekler : Result := TfrmCekler;
   TagfrmKasaBanka : Result := TfrmKasaBanka;
   TagfrmTedarikci : Result := TfrmTedarikci;
   TagfrmSirketSahaGozetim : Result := TfrmSirketSahaGozetim;
   TagfrmSirketSahaDenetim : Result := TfrmSirketSahaDenetim;
   TagfrmISGKurulToplanti : Result := TfrmISGKurulToplanti;
   TagfrmRTFSablon : Result := TfrmRTFSablon;
   TagfrmSirketEkipmanList : Result := TfrmFirmaEkipmanList;
   TagfrmSirketYillikCalismaPlan : Result := TfrmSirketYillikCalismaPlan;
   TagfrmSirketYillikEgitimPlan : Result := TfrmSirketYillikEgitimPlan;
   TagfrmKroki : Result := TfrmKroki;
   TagfrmOrtamOlcum : Result := TfrmSirketOrtamOlcum;
   TagfrmCihazKontrolListesi : Result := TfrmCihazKontrolListesi;
   TagfrmFirmaPersonelEgitimList : Result := TfrmPersonelFirmaEgitimListe;

   TagfrmSKS_Dokumanlar : Result := TfrmSKS_Dokumanlar;
   TagfrmSKS_YeniDokuman : Result := TfrmSKS_YeniDokuman;

   TagfrmHastaKart : Result := TfrmHastaKart;
   TagfrmTopluSeans : Result := TfrmTopluSeans;
   TagfrmTopluGelis : Result := TfrmTopluGelis;
   TagfrmHastaListeD : Result := TfrmHastaListeD;
   TagfrmHastaSeans : Result := TfrmHastaSeans;
   TagfrmSKSKriter : Result := TfrmSKSKriter;
   TagfrmTIKriter : Result := TfrmTIKriter;
   TagfrmTakipBilgisiOku : Result := TfrmTakipBilgisiOku;
   TagfrmRaporDetay : Result := TfrmRaporDetay;
   TagfrmTahliltakip : Result := TfrmTahliltakip;
   TagfrmKanTetkikTakip : Result := TfrmKanTetkikTakip;
   TagfrmDamarIzi : Result := TfrmDamarIzi;
   TagfrmSeansDagilimi : Result := TfrmSeansDagilimi;
   TagfrmAylikSeansToplamlari : Result := TfrmAylikSeansToplamlari;
   TagfrmSaglikNetOnline : Result := TfrmSaglikNetOnline;
   TagfrmGunSonuOzet : Result := TfrmGunSonuOzet;
   TagfrmTopluEpikriz : Result := TfrmTopluEpikriz;
   TagfrmHastaIlacTedavi : Result := TfrmHastaIlacTedavi;
   TagfrmIlacEtkenMaddeSutKural : Result := TfrmIlacEtkenMaddeSutKural;
   TagfrmHastaDiyalizIzlem  : Result := TfrmHastaDiyalizIzlem;
   TagfrmUzmanMuayene : Result := TfrmUzmanMuayene;
   TagfrmOlayBildirim : Result := TfrmOlayBildirim;
   TagfrmKlorOlcum : Result := TfrmKlorOlcum;
   TagfrmLabEntegrasyon : Result := TfrmLabEntegrasyon;
   TagfrmSeansDetayKart : Result := TfrmSeansDetayKart;
   TagfrmKanTetkikTakipDegerlendir : Result := TfrmKanTetkikTakipDegerlendir;
   TagfrmKiloOrder : Result := TfrmKiloOrder;
   TagfrmStokKart : Result := TfrmStokKarti;
   TagfrmHizliKayit : Result := TfrmHizliKayit;
   TagfrmHastaDiyalizIzlemListesi : Result := TfrmIzlem;
   TagfrmTakipKontrol : Result := TfrmTakipKontrol;
   TagfrmKtvListesi : Result := TfrmKtvListesi;
   TagfrmMakinaDurumP : Result := TfrmMakinaDurumP;
   TagfrmHastaRaporlari : Result := TfrmHastaRaporlari;
   TagfrmTeleEkg : Result := TfrmTeleEkg;
   TagfrmTopluHastaRecete : Result := TfrmTopluHastaRecete;
   TagfrmTopluHastaTedaviListesi : Result := TfrmTopluHastaTedaviListesi;
   TagfrmHastaKonsultasyon : Result := TfrmHastaKonsultasyon;
   TagfrmMedEczane,TagfrmMedula,TagfrmENabiz,TagfrmUyum : Result := TfrmMedEczane;
   TagfrmCalisanGeriBildirimAnket : Result := TfrmCalisanGeriBildirimAnket;
   TagfrmITS : Result := TfrmITS;
   TagfrmITSPaket : Result := TfrmITSPaket;
 //  TagfrmAjandaOzet : Result := TfrmAjandaOzet;
  end;
end;


function FormClassType(formId : integer) : TComponent;
begin
  case abs(formId) of
   TagfrmPersonelKart : Result := frmPersonelKart;
   TagfrmFirmaKart : Result := frmFirmaKart;
   TagfrmMerkezBilgisi : Result := frmMerkezBilgisi;

   TagfrmHizmetKart : Result := frmHizmetKart;
   TagfrmPopupDBGridForm,TagfrmBolum,TagfrmBirim,TagfrmSube,TagfrmFirmaISGEkip,TagfrmSahaSaglikGozetimTanim,
    TagfrmISGKurulToplantiTanim,TagfrmCalisanGeriBildirimAnketSoruTanim,
     TagFirmaCalismalari,TagfrmEkipmanTuru,TagfrmEkipmanTuruOzellik,
      TagfrmFirmaYetkili,TagfrmMadulaEpiktizTanim : Result := frmPopupDBGridForm;

   TagfrmPopupDBVerticalGridForm : Result := frmPopupDBVerticalGridForm;
   TagfrmHizliKayitPersonel, TagfrmHizliKayitDisAktarimlar : Result := frmHizliKayit;
   TagfrmReceteSablon : Result := frmReceteSablon;
   TagfrmRaporSablon : Result := frmRaporSablon;
   TagfrmSorgulamalar : Result := frmSorgulamalar;
   TagfrmSorguCalistir : Result := frmRaporCalistir;
   TagfrmIsKazasi : Result := frmIsKazasi;
   TagfrmTedaviBilgisi : Result := frmTedaviBilgisi;
   TagfrmAnamnez,TagfrmIseGiris : Result := frmAnamnez;
   TagfrmHastaRecete,TagfrmPersonelRecete : Result := frmHastaRecete;
   TagfrmHastaListe,TagfrmDoktorHastaListe : Result := frmHastaListe;
   TagfrmFirmaListe : Result := frmFirmaListe;
   TagfrmTetkikIstemSablon : Result := frmGrupDetayTanim;
   TagfrmDokumanYonetim : Result := frmDokumanYonetim;
   TagfrmUsers : Result := frmUsers;
   TagfrmTakipNo : Result := frmTakipNo;
   TagfrmHastaTetkikEkle : Result := frmHastaTetkikEkle;
   TagfrmAsiKarti : Result := frmAsiKarti;
   TagfrmTaniKarti : Result := frmTaniKart;

   TagfrmKurumBilgi , TagfrmParametreler : Result := frmKurumBilgi;
   TagKurumSifreDegisForm : Result := KurumSifreDegisForm;

   TagfrmDoktorlar,TagfrmIGU,TagfrmDigerSaglikPers : Result := frmDoktorlar;
   TagfrmHemsireler : Result := frmHemsireler;
   TagfrmAbout : Result := frmAbout;
   TagfrmPersonelEgitim : Result := frmPersonelEgitim;
   TagfrmTestAyarlari : Result := frmTestAyarlari;

   TagfrmIlaclar,TagfrmIlacAnaGrup,TagfrmIlacEtkenMadde  : Result := frmIlaclar;
   TagfrmSon6AylikTetkikSonuc : Result := frmSon6AylikTetkikSonuc;
   TagfrmReceteler : Result := frmReceteler;
   TagfrmSahaSaglikGozetim : Result := frmSahaSaglikGozetim;
   TagfrmCihazKontrol : Result := frmCihazKontrol;
   TagfrmFirmaKontrol : Result := frmFirmaKontrol;
   TagfrmUpdate : Result := frmUpdate;
   TagfrmFaturalar : Result := frmFaturalar;
   TagfrmFatura : Result := frmFaturaDetay;
   TagfrmMedulaFatura : Result := frmMedulaFatura;
   TagfrmSirketSozlesme : Result := frmSirketSozlesme;
   TagfrmSirketSozlesmeler : Result := frmSozlesmeler;

   TagfrmCariHareketGiris : Result := frmCariHareket;
   TagfrmCariHesapEkstre : Result := frmCariHesapEkstre;
   TagfrmCariHesapBorcAlacakToplam : Result := frmCariHesapBorcAlacakToplam;
   TagfrmRDS : Result := frmRDS;
   TagfrmKKD : Result := frmKKD;
   TagfrmCekler : Result := frmCekler;
   TagfrmKasaBanka : Result := frmKasaBanka;
   TagfrmTedarikci : Result := frmTedarikci;
   TagfrmSirketSahaGozetim : Result := frmSirketSahaGozetim;
   TagfrmSirketSahaDenetim : Result := frmSirketSahaDenetim;
   TagfrmISGKurulToplanti : Result := frmISGKurulToplanti;
   TagfrmRTFSablon : Result := frmRTFSablon;
   TagfrmSirketEkipmanList : Result := frmFirmaEkipmanList;
   TagfrmSirketYillikCalismaPlan : Result := frmSirketYillikCalismaPlan;
   TagfrmSirketYillikEgitimPlan : Result := frmSirketYillikEgitimPlan;

   TagfrmLabParametreleri : Result := frmLabParams;
   TagfrmLabKabul : Result := frmLabaratuvarKabul;
   TagfrmKroki : Result := frmKroki;
   TagfrmOrtamOlcum : Result := frmSirketOrtamOlcum;
   TagfrmCihazKontrolListesi : Result := frmCihazKontrolListesi;
   TagfrmFirmaPersonelEgitimList : Result := frmPersonelFirmaEgitimListe;

   TagfrmSKS_Dokumanlar : Result := frmSKS_Dokumanlar;
   TagfrmSKS_YeniDokuman : Result := frmSKS_YeniDokuman;

   TagfrmHastaKart : Result := frmHastaKart;
   TagfrmTopluSeans : Result := frmTopluSeans;
   TagfrmTopluGelis : Result := frmTopluGelis;
   TagfrmHastaListeD : Result := frmHastaListeD;
   TagfrmHastaSeans : Result := frmHastaSeans;
   TagfrmSKSKriter : Result := frmSKSKriter;
   TagfrmTIKriter : Result := frmTIKriter;
   TagfrmTakipBilgisiOku : Result := frmTakipBilgisiOku;
   TagfrmRaporDetay : Result := frmRaporDetay;
   TagfrmTahliltakip : Result := frmTahliltakip;
   TagfrmKanTetkikTakip : Result := frmKanTetkikTakip;
   TagfrmDamarIzi : Result := frmDamarIzi;
   TagfrmSeansDagilimi : Result := frmSeansDagilimi;
   TagfrmAylikSeansToplamlari : Result := frmAylikSeansToplamlari;
   TagfrmSaglikNetOnline : Result := frmSaglikNetOnline;
   TagfrmGunSonuOzet : Result := frmGunSonuOzet;
   TagfrmTopluEpikriz : Result := frmTopluEpikriz;
   TagfrmHastaIlacTedavi : Result := frmHastaIlacTedavi;
   TagfrmIlacEtkenMaddeSutKural : Result := frmIlacEtkenMaddeSutKural;
   TagfrmHastaDiyalizIzlem  : Result := frmHastaDiyalizIzlem;
   TagfrmUzmanMuayene : Result := frmUzmanMuayene;
   TagfrmOlayBildirim : Result := frmOlayBildirim;
   TagfrmLabEntegrasyon : Result := frmLabEntegrasyon;
   TagfrmKlorOlcum : Result := frmKlorOlcum;
   TagfrmSeansDetayKart : Result := frmSeansDetayKart;
   TagfrmKanTetkikTakipDegerlendir : Result := frmKanTetkikTakipDegerlendir;
   TagfrmKiloOrder : Result := frmKiloOrder;
   TagfrmStokKart : Result := frmStokKarti;
   TagfrmHizliKayit : Result := frmHizliKayit;
   TagfrmHastaDiyalizIzlemListesi : Result := frmIzlem;
   TagfrmTakipKontrol : Result := frmTakipKontrol;
   TagfrmKtvListesi : Result := frmKtvListesi;
   TagfrmMakinaDurumP : Result := frmMakinaDurumP;
   TagfrmHastaRaporlari : Result := frmHastaRaporlari;
   TagfrmTeleEkg : Result := frmTeleEkg;
   TagfrmTopluHastaRecete : Result := frmTopluHastaRecete;
   TagfrmTopluHastaTedaviListesi : Result := frmTopluHastaTedaviListesi;
   TagfrmHastaKonsultasyon : Result := frmHastaKonsultasyon;
   TagfrmMedEczane,TagfrmMedula,TagfrmENabiz,TagfrmUyum : Result := frmMedEczane;
   TagfrmCalisanGeriBildirimAnket : Result := frmCalisanGeriBildirimAnket;
   TagfrmITS : Result := frmITS;
   TagfrmITSPaket : Result := frmITSPaket;
//   TagfrmAjandaOzet : Result := frmAjandaOzet;

  end;
end;


function FormINIT(FormTag : Integer;MidiForm : TForm;
                  Values : TGirisFormRecord ; Value : String = '';
                  Tab : TcxTabSheet = nil;ik : izinKontrol = ikHayir;
                  izinPrm : string = '') : TGirisForm;
var
  Form : TGirisForm;
  sFormCaption, sFormAltCaption, sFormUserGroup, sFormUserGroupDesc: String;
  bTamam : Boolean;
begin
  Result := nil;
  if not GetFormCaptionInfo (abs(FormTag), sFormCaption, sFormAltCaption, sFormUserGroup, sFormUserGroupDesc) then
    Exit;
  izinPrm := ifThen(izinPrm = '',sFormAltCaption,izinPrm);
  if ik = ikEvet
  then
  if UserRight(sFormCaption, izinPrm) = False
  then begin
      UserRightInsert(sFormCaption,izinPrm,datalar.username);
      ShowMessageSkin(sFormCaption,izinPrm + ' Ýþlemi Ýçin Yetkiniz Bulunmamaktadýr !','','info');
      Tab.Free;
      exit;
  end;
  bTamam := False;
  case abs(FormTag) of
     TagfrmPersonelKart : frmPersonelKart := TfrmPersonelKart.Create(Tab);
     TagfrmFirmaKart : frmFirmaKart := TfrmFirmaKart.Create(Tab);
     TagfrmMerkezBilgisi : frmMerkezBilgisi := TfrmMerkezBilgisi.Create(Tab);
     TagfrmHizmetKart : frmHizmetKart := TfrmHizmetKart.Create(Tab);
     TagfrmHizliKayitPersonel, TagfrmHizliKayitDisAktarimlar : frmHizliKayit := TfrmHizliKayit.Create(Tab);
     TagfrmPopupDBVerticalGridForm : frmPopupDBVerticalGridForm := TfrmPopupDBVerticalGridForm.Create(Tab);

     TagfrmHastaListe,TagfrmDoktorHastaListe : frmHastaListe := TfrmHastaListe.Create(Tab);
     TagfrmFirmaListe : frmFirmaListe := TfrmFirmaListe.Create(Tab);
     TagfrmSorguCalistir : frmRaporCalistir := TfrmRaporCalistir.Create(Tab);
     TagfrmSon6AylikTetkikSonuc : frmSon6AylikTetkikSonuc := TfrmSon6AylikTetkikSonuc.Create(Tab);
     TagfrmReceteler : frmReceteler := TfrmReceteler.Create(Tab);
     TagfrmSahaSaglikGozetim : frmSahaSaglikGozetim := TfrmSahaSaglikGozetim.Create(Tab);
     TagfrmCihazKontrol : frmCihazKontrol := TfrmCihazKontrol.Create(Tab);
     TagfrmFirmaKontrol : frmFirmaKontrol := TfrmFirmaKontrol.Create(Tab);

     TagfrmLabParametreleri : frmLabParams:= TfrmLabParams.Create(Tab);
     TagfrmLabKabul : frmLabaratuvarKabul := TfrmLabaratuvarKabul.Create(Tab);
     TagfrmAnamnez,TagfrmIseGiris : frmAnamnez := TfrmAnamnez.Create(Tab);
     TagfrmTetkikIstemSablon : frmGrupDetayTanim := TfrmGrupDetayTanim.Create(Tab);
     TagfrmDokumanYonetim : frmDokumanYonetim := TfrmDokumanYonetim.Create(Tab);
     TagfrmFaturalar : frmFaturalar := TfrmFaturalar.Create(Tab);
     TagfrmFatura : frmFaturaDetay := TfrmFaturaDetay.Create(Tab);
     TagfrmMedulaFatura : frmMedulaFatura := TfrmMedulaFatura.Create(Tab);

     TagfrmSirketSozlesme : frmSirketSozlesme := TfrmSirketSozlesme.Create(Tab);
     TagfrmSirketSozlesmeler : frmSozlesmeler := TfrmSozlesmeler.Create(Tab);
     TagfrmCariHareketGiris : frmCariHareket := TfrmCariHareket.Create(Tab);
     TagfrmCariHesapEkstre : frmCariHesapEkstre := TfrmCariHesapEkstre.Create(Tab);
     TagfrmCariHesapBorcAlacakToplam : frmCariHesapBorcAlacakToplam := TfrmCariHesapBorcAlacakToplam.Create(Tab);
     TagfrmRDS: frmRDS := TfrmRDS.Create(Tab);
     TagfrmKKD: frmKKD := TfrmKKD.Create(Tab);
     TagfrmCekler: frmCekler := TfrmCekler.Create(Tab);
     TagfrmKasaBanka: frmKasaBanka := TfrmKasaBanka.Create(Tab);

     TagfrmTedarikci: frmTedarikci := TfrmTedarikci.Create(Tab);
     TagfrmSirketSahaGozetim: frmSirketSahaGozetim := TfrmSirketSahaGozetim.Create(Tab);
     TagfrmSirketSahaDenetim: frmSirketSahaDenetim := TfrmSirketSahaDenetim.Create(Tab);
     TagfrmAjandaOzet : frmAjandaOzet := TfrmAjandaOzet.Create(Tab);
     TagfrmISGKurulToplanti : frmISGKurulToplanti := TfrmISGKurulToplanti.Create(Tab);
     TagfrmRTFSablon : frmRTFSablon := TfrmRTFSablon.Create(Tab);
     TagfrmSirketEkipmanList : frmFirmaEkipmanList := TfrmFirmaEkipmanList.Create(Tab);
     TagfrmSirketYillikCalismaPlan : frmSirketYillikCalismaPlan  := TfrmSirketYillikCalismaPlan.Create(Tab);
     TagfrmSirketYillikEgitimPlan : frmSirketYillikEgitimPlan  := TfrmSirketYillikEgitimPlan.Create(Tab);
     TagfrmKroki : frmKroki  := TfrmKroki.Create(Tab);
     TagfrmOrtamOlcum : frmSirketOrtamOlcum := TfrmSirketOrtamOlcum.Create(Tab);

     TagfrmCihazKontrolListesi : frmCihazKontrolListesi := TfrmCihazKontrolListesi.Create(Tab);
     TagfrmPersonelEgitim : frmPersonelEgitim := TfrmPersonelEgitim.Create(Tab);
     TagfrmFirmaPersonelEgitimList : frmPersonelFirmaEgitimListe := TfrmPersonelFirmaEgitimListe.Create(Tab);

     TagfrmSKS_Dokumanlar : frmSKS_Dokumanlar := TfrmSKS_Dokumanlar.Create(Tab);
     TagfrmSKS_YeniDokuman : frmSKS_YeniDokuman := TfrmSKS_YeniDokuman.Create(Tab);

     TagfrmHastaKart : frmHastaKart  := TfrmHastaKart.Create(Tab);
     TagfrmTopluSeans : frmTopluSeans  := TfrmTopluSeans.Create(Tab);
     TagfrmTopluGelis : frmTopluGelis  := TfrmTopluGelis.Create(Tab);
     TagfrmTahliltakip : frmTahliltakip := TfrmTahliltakip.Create(Tab);
     TagfrmKanTetkikTakip : frmKanTetkikTakip  := TfrmKanTetkikTakip .Create(Tab);
     TagfrmHastaListeD : frmHastaListeD := TfrmHastaListeD.Create(Tab);
     TagfrmDamarIzi : frmDamarIzi := TfrmDamarIzi.Create(Tab);
     TagfrmSeansDagilimi : frmSeansDagilimi := TfrmSeansDagilimi.Create(Tab);
     TagfrmAylikSeansToplamlari : frmAylikSeansToplamlari := TfrmAylikSeansToplamlari.Create(Tab);
     TagfrmSaglikNetOnline : frmSaglikNetOnline := TfrmSaglikNetOnline.Create(Tab);
     TagfrmGunSonuOzet : frmGunSonuOzet := TfrmGunSonuOzet.Create(Tab);
     TagfrmTopluEpikriz : frmTopluEpikriz := TfrmTopluEpikriz.Create(Tab);
     TagfrmHastaIlacTedavi : frmHastaIlacTedavi := TfrmHastaIlacTedavi.Create(Tab);
     TagfrmIlacEtkenMaddeSutKural : frmIlacEtkenMaddeSutKural := TfrmIlacEtkenMaddeSutKural.Create(Tab);
     TagfrmHastaDiyalizIzlem  : frmHastaDiyalizIzlem := TfrmHastaDiyalizIzlem.Create(Tab);
     TagfrmUzmanMuayene   : frmUzmanMuayene := TfrmUzmanMuayene .Create(Tab);
     TagfrmOlayBildirim   : frmOlayBildirim := TfrmOlayBildirim .Create(Tab);
     TagfrmLabEntegrasyon  : frmLabEntegrasyon := TfrmLabEntegrasyon.Create(Tab);
     TagfrmKlorOlcum   : frmKlorOlcum := TfrmKlorOlcum .Create(Tab);
     TagfrmKiloOrder   : frmKiloOrder := TfrmKiloOrder .Create(Tab);
     TagfrmStokKart   : frmStokKarti := TfrmStokKarti.Create(Tab);
     TagfrmHastaDiyalizIzlemListesi : frmIzlem := TfrmIzlem.Create(Tab);
     TagfrmTakipKontrol : frmTakipKontrol := TfrmTakipKontrol.Create(Tab);
     TagfrmKtvListesi : frmKtvListesi  := TfrmKtvListesi.Create(Tab);
     TagfrmMakinaDurumP : frmMakinaDurumP  := TfrmMakinaDurumP.Create(Tab);
     TagfrmHastaRaporlari : frmHastaRaporlari  := TfrmHastaRaporlari.Create(Tab);
     TagfrmTeleEkg : frmTeleEkg  := TfrmTeleEkg.Create(Tab);
     TagfrmTopluHastaRecete : frmTopluHastaRecete   := TfrmTopluHastaRecete .Create(Tab);
     TagfrmTopluHastaTedaviListesi : frmTopluHastaTedaviListesi   := TfrmTopluHastaTedaviListesi .Create(Tab);
     TagfrmMedEczane,TagfrmMedula,TagfrmENabiz,TagfrmUyum : frmMedEczane := TfrmMedEczane.Create(Tab);
     TagfrmCalisanGeriBildirimAnket : frmCalisanGeriBildirimAnket := TfrmCalisanGeriBildirimAnket.Create(Tab);
     TagfrmITS : frmITS  := TfrmITS.Create(Tab);
     TagfrmITSPaket : frmITSPaket  := TfrmITSPaket.Create(Tab);

  end;
  try

    if not (Form is TGirisForm) and not (Form = nil) then
    begin
      Form.BorderStyle := bsToolWindow;
      Form.Align := alNone;
      Form.Tag := abs(FormTag);
      Result := Form;
      Exit;
    end;

    Form := TGirisForm(FormClassType(abs(FormTag)));
    Tab.Caption := sFormAltCaption;
   // TGirisForm(Form).cxTab.Tabs[0].Caption := Tab.Caption;
    TGirisForm(Form).cxTab.Tabs[0].ImageIndex := FormTabImageIndex(abs(FormTag));
    if Tab = nil
    then begin
     TgirisForm(Form).BorderStyle := bsToolWindow;
     TgirisForm(Form).Align := alNone;
    end
    else
    begin
     TgirisForm(Form).BorderStyle := bsNone;
     TgirisForm(Form).Align := alClient;
    end;

    TGirisForm(Form)._dosyaNO_ := Values.F_dosyaNO_;//datalar.Bilgi.dosyaNo;
    TGirisForm(Form)._gelisNO_ := Values.F_gelisNO_;//datalar.Bilgi.gelisNo;
    TGirisForm(Form)._provizyonTarihi_ := Values.F_provizyonTarihi_;
    TGirisForm(Form)._HastaAdSoyad_ := Values.F_HastaAdSoyad_;
    TGirisForm(Form)._TakipNo_ := Values.F_TakipNo_;
    TGirisForm(Form)._BasvuruNo_ := Values.F_BasvuruNo_;
    TGirisForm(Form)._Doktor_ := Values.F_Doktor_;
    TGirisForm(Form)._Makina_ := Values.F_Makina_;
    TGirisForm(Form)._Seans_ := Values.F_Seans_;
    TGirisForm(Form)._TC_ := Values.F_TC_;
    TGirisForm(Form)._Yupass_ := Values.F_Yupass_;
    TGirisForm(Form)._DevKurum_ := Values.F_DevKurum_;
    TGirisForm(Form)._SigortaliTur_ := Values.F_SigortaliTur_;
    TGirisForm(Form)._SeansSira_ := Values.F_SeansSira_;
    TGirisForm(Form)._firmaKod_ := Values.F_FirmaKod_;
    TGirisForm(Form)._mobilTel_ := Values.F_mobilTel_;
    TGirisForm(Form)._adres_ := Values.F_adres_;
    TGirisForm(Form)._sp_ := Values.F_sp_;
    TGirisForm(Form)._kod_ := Values.F_kod_;
    TGirisForm(Form)._sube_ := Values.F_sube_;
    TGirisForm(Form)._MuayeneProtokolNo_ := Values.F_MuayeneProtokolNo_;
    TGirisForm(Form)._FaturaNo_ := Values.F_FaturaNO_;
    TGirisForm(Form)._Tarih1_ := Values.F_Tarih1_;
    TGirisForm(Form)._Tarih2_ := Values.F_Tarih2_;
    TGirisForm(Form)._ResourceID := Values.F_ResourceID_;
    TGirisForm(Form)._FaturaIptal := Values.F_FaturaIptal;
    TGirisForm(Form)._BransKodu_ := Values.F_BransKodu_;
    TGirisForm(Form)._TedaviTuru_ := Values.F_TedaviTuru_;
    TGirisForm(Form)._SeansBilgi := Values.F_SeansBilgi;
    TGirisForm(Form)._sysTakipNo_ := Values.F_sysTakipNo;
    TGirisForm(Form)._pasifSebeb_ := Values.F_PasifSebeb_;
    TGirisForm(Form).Tag := FormTag;
    TgirisForm(Form).Parent := Tab;
    TGirisForm(Form).BringToFront;

    TGirisForm(Form).cxPanelButtonVisible(True,True,True,False);

    if TGirisForm(Form).Init(Form) Then
    begin
     result := TGirisForm(Form);
     bTamam := True;
    end;
    TGirisForm(Form).cxTab.Tabs[0].Caption := Tab.Caption;
  finally
    if not bTamam and Assigned (Form) then FreeAndNil(Form);
  end;
end;


function FormINIT(FormTag : Integer;MidiForm : TForm;Value : String = '';
                   Tab : TcxTabSheet = nil;ik : izinKontrol = ikHayir;
                   izinPrm : string = '';tc : string = '') : TGirisForm;
var
  Form : TGirisForm;
  sFormCaption1, sFormAltCaption1, sFormUserGroup1, sFormUserGroupDesc1: String;
  sFormCaption2, sFormAltCaption2, sFormUserGroup2, sFormUserGroupDesc2: String;
  bTamam : Boolean;
begin
  result := nil;
  if not GetFormCaptionInfo (abs(FormTag), sFormCaption1, sFormAltCaption1, sFormUserGroup1, sFormUserGroupDesc1) then
    Exit;
  if not GetFormCaptionInfo (FormTag, sFormCaption2, sFormAltCaption2, sFormUserGroup2, sFormUserGroupDesc2) then
    Exit;
  izinPrm := ifThen(izinPrm = '',sFormAltCaption1,izinPrm);
  if ik = ikEvet
  then
  if UserRight(sFormCaption1, izinPrm) = False
  then begin
      UserRightInsert(sFormCaption2,izinPrm,datalar.username);
      ShowMessageSkin(sFormCaption2,izinPrm + ' Ýþlemi Ýçin Yetkiniz Bulunmamaktadýr !','','info');
      Tab.Free;
      exit;
  end;
  bTamam := False;
  case abs(FormTag) of
     TagfrmPersonelKart : frmPersonelKart := TfrmPersonelKart.Create(Tab);
     TagfrmFirmaKart : frmFirmaKart := TfrmFirmaKart.Create(Tab);
     TagfrmMerkezBilgisi : frmMerkezBilgisi := TfrmMerkezBilgisi.Create(Tab);
     TagfrmHizmetKart : frmHizmetKart := TfrmHizmetKart.Create(Tab);
     TagfrmHizliKayitPersonel, TagfrmHizliKayitDisAktarimlar : frmHizliKayit := TfrmHizliKayit.Create(Tab);
     TagfrmSorgulamalar : frmSorgulamalar := TfrmSorgulamalar.Create(Tab);
     TagfrmSorguCalistir : frmRaporCalistir := TfrmRaporCalistir.Create(Tab);
     TagfrmAnamnez,TagfrmIseGiris : frmAnamnez := TfrmAnamnez.Create(Tab);

     TagfrmHastaListe,TagfrmDoktorHastaListe : frmHastaListe := TfrmHastaListe.Create(Tab);
     TagfrmFirmaListe : frmFirmaListe := TfrmFirmaListe.Create(Tab);
     TagfrmPopupDBVerticalGridForm : frmPopupDBVerticalGridForm := TfrmPopupDBVerticalGridForm.Create(Tab);

     TagfrmSon6AylikTetkikSonuc : frmSon6AylikTetkikSonuc := TfrmSon6AylikTetkikSonuc.Create(Tab);
     TagfrmReceteler : frmReceteler := TfrmReceteler.Create(Tab);
     TagfrmSahaSaglikGozetim : frmSahaSaglikGozetim := TfrmSahaSaglikGozetim.Create(Tab);
     TagfrmCihazKontrol : frmCihazKontrol := TfrmCihazKontrol.Create(Tab);
     TagfrmFirmaKontrol : frmFirmaKontrol := TfrmFirmaKontrol.Create(Tab);

     TagfrmLabParametreleri : frmLabParams := TfrmLabParams.Create(Tab);
     TagfrmLabKabul : frmLabaratuvarKabul := TfrmLabaratuvarKabul.Create(Tab);
     TagfrmTetkikIstemSablon : frmGrupDetayTanim := TfrmGrupDetayTanim.Create(Tab);
     TagfrmDokumanYonetim : frmDokumanYonetim := TfrmDokumanYonetim.Create(Tab);
     TagfrmFaturalar : frmFaturalar := TfrmFaturalar.Create(Tab);
     TagfrmFatura : frmFaturaDetay := TfrmFaturaDetay.Create(Tab);
     TagfrmMedulaFatura : frmMedulaFatura := TfrmMedulaFatura.Create(Tab);
     TagfrmSirketSozlesme : frmSirketSozlesme := TfrmSirketSozlesme.Create(Tab);
     TagfrmSirketSozlesmeler : frmSozlesmeler := TfrmSozlesmeler.Create(Tab);
     TagfrmCariHareketGiris : frmCariHareket := TfrmCariHareket.Create(Tab);
     TagfrmCariHesapEkstre : frmCariHesapEkstre := TfrmCariHesapEkstre.Create(Tab);
     TagfrmCariHesapBorcAlacakToplam : frmCariHesapBorcAlacakToplam := TfrmCariHesapBorcAlacakToplam.Create(Tab);

     TagfrmRDS : frmRDS := TfrmRDS.Create(Tab);
     TagfrmKKD : frmKKD := TfrmKKD.Create(Tab);
     TagfrmCekler: frmCekler := TfrmCekler.Create(Tab);
     TagfrmKasaBanka: frmKasaBanka := TfrmKasaBanka.Create(Tab);
     TagfrmTedarikci: frmTedarikci := TfrmTedarikci.Create(Tab);
     TagfrmSirketSahaGozetim: frmSirketSahaGozetim := TfrmSirketSahaGozetim.Create(Tab);
     TagfrmSirketSahaDenetim: frmSirketSahaDenetim := TfrmSirketSahaDenetim.Create(Tab);
     TagfrmAjandaOzet : TfrmAjandaOzet.Create(Tab);
     TagfrmISGKurulToplanti : frmISGKurulToplanti := TfrmISGKurulToplanti.Create(Tab);
     TagfrmRTFSablon : frmRTFSablon := TfrmRTFSablon.Create(Tab);
     TagfrmSirketEkipmanList : frmFirmaEkipmanList := TfrmFirmaEkipmanList.Create(Tab);
     TagfrmSirketYillikCalismaPlan : frmSirketYillikCalismaPlan  := TfrmSirketYillikCalismaPlan.Create(Tab);
     TagfrmSirketYillikEgitimPlan : frmSirketYillikEgitimPlan  := TfrmSirketYillikEgitimPlan.Create(Tab);

     TagfrmKroki : frmKroki  := TfrmKroki.Create(Tab);
     TagfrmOrtamOlcum : frmSirketOrtamOlcum := TfrmSirketOrtamOlcum.Create(Tab);
     TagfrmCihazKontrolListesi : frmCihazKontrolListesi := TfrmCihazKontrolListesi.Create(Tab);
     TagfrmPersonelEgitim : frmPersonelEgitim := TfrmPersonelEgitim.Create(Tab);
     TagfrmFirmaPersonelEgitimList : frmPersonelFirmaEgitimListe:= TfrmPersonelFirmaEgitimListe.Create(Tab);

     TagfrmSKS_Dokumanlar : frmSKS_Dokumanlar := TfrmSKS_Dokumanlar.Create(Tab);
     TagfrmSKS_YeniDokuman : frmSKS_YeniDokuman := TfrmSKS_YeniDokuman.Create(Tab);

     TagfrmHastaKart : frmHastaKart  := TfrmHastaKart.Create(Tab);
     TagfrmTopluSeans : frmTopluSeans  := TfrmTopluSeans.Create(Tab);
     TagfrmTopluGelis : frmTopluGelis  := TfrmTopluGelis.Create(Tab);
     TagfrmHastaListeD : frmHastaListeD := TfrmHastaListeD.Create(Tab);
     TagfrmTahliltakip : frmTahliltakip := TfrmTahliltakip.Create(Tab);
     TagfrmKanTetkikTakip : frmKanTetkikTakip  := TfrmKanTetkikTakip .Create(Tab);
     TagfrmDamarIzi : frmDamarIzi := TfrmDamarIzi.Create(Tab);
     TagfrmSeansDagilimi : frmSeansDagilimi := TfrmSeansDagilimi.Create(Tab);
     TagfrmAylikSeansToplamlari : frmAylikSeansToplamlari := TfrmAylikSeansToplamlari.Create(Tab);
     TagfrmSaglikNetOnline : frmSaglikNetOnline := TfrmSaglikNetOnline.Create(Tab);
     TagfrmGunSonuOzet : frmGunSonuOzet := TfrmGunSonuOzet.Create(Tab);
     TagfrmTopluEpikriz : frmTopluEpikriz := TfrmTopluEpikriz.Create(Tab);
     TagfrmHastaIlacTedavi : frmHastaIlacTedavi := TfrmHastaIlacTedavi.Create(Tab);
     TagfrmIlacEtkenMaddeSutKural : frmIlacEtkenMaddeSutKural := TfrmIlacEtkenMaddeSutKural.Create(Tab);
     TagfrmHastaDiyalizIzlem  : frmHastaDiyalizIzlem := TfrmHastaDiyalizIzlem.Create(Tab);
     TagfrmUzmanMuayene   : frmUzmanMuayene := TfrmUzmanMuayene .Create(Tab);
     TagfrmOlayBildirim   : frmOlayBildirim := TfrmOlayBildirim .Create(Tab);
     TagfrmLabEntegrasyon  : frmLabEntegrasyon := TfrmLabEntegrasyon.Create(Tab);
     TagfrmKlorOlcum   : frmKlorOlcum := TfrmKlorOlcum .Create(Tab);
     TagfrmKiloOrder   : frmKiloOrder := TfrmKiloOrder .Create(Tab);
     TagfrmStokKart   : frmStokKarti := TfrmStokKarti.Create(Tab);
     TagfrmHastaDiyalizIzlemListesi : frmIzlem := TfrmIzlem.Create(Tab);
     TagfrmTakipKontrol : frmTakipKontrol := TfrmTakipKontrol.Create(Tab);
     TagfrmKtvListesi : frmKtvListesi  := TfrmKtvListesi.Create(Tab);
     TagfrmMakinaDurumP : frmMakinaDurumP  := TfrmMakinaDurumP.Create(Tab);
     TagfrmHastaRaporlari : frmHastaRaporlari  := TfrmHastaRaporlari.Create(Tab);
     TagfrmTeleEkg : frmTeleEkg  := TfrmTeleEkg.Create(Tab);
     TagfrmTopluHastaRecete : frmTopluHastaRecete   := TfrmTopluHastaRecete .Create(Tab);
     TagfrmTopluHastaTedaviListesi : frmTopluHastaTedaviListesi   := TfrmTopluHastaTedaviListesi .Create(Tab);
     TagfrmMedEczane,TagfrmMedula,TagfrmENabiz,TagfrmUyum : frmMedEczane := TfrmMedEczane.Create(Tab);
     TagfrmCalisanGeriBildirimAnket : frmCalisanGeriBildirimAnket := TfrmCalisanGeriBildirimAnket.Create(Tab);
     TagfrmITS : frmITS  := TfrmITS.Create(Tab);
     TagfrmITSPaket : frmITSPaket  := TfrmITSPaket.Create(Tab);
  end;
  try
    Form := TGirisForm(FormClassType(abs(FormTag)));
    Tab.Caption := sFormAltCaption1;
//    TGirisForm(Form).cxTab.Tabs[0].Caption := Tab.Caption;
    TGirisForm(Form).cxTab.Tabs[0].ImageIndex := FormTabImageIndex(abs(FormTag));
    if Tab = nil
    then begin
     TgirisForm(Form).BorderStyle := bsToolWindow;
     TgirisForm(Form).Align := alNone;
    end
    else
    begin
     TgirisForm(Form).BorderStyle := bsNone;
     TgirisForm(Form).Align := alClient;
    end;

    TGirisForm(Form)._dosyaNO_ := Value;
    TGirisForm(Form)._TC_ := tc;
    TGirisForm(Form)._kod_ := Value;
    TGirisForm(Form).Tag := FormTag;
    TgirisForm(Form).Parent := Tab;
    TGirisForm(Form).BringToFront;
    TGirisForm(Form).cxPanelButtonVisible(True,True,True,False);

    if TGirisForm(Form).Init(Form) Then
    begin
      result := TGirisForm(Form);
      bTamam := True;
    end;
    TGirisForm(Form).cxTab.Tabs[0].Caption := Tab.Caption;
  finally
    if not bTamam and Assigned (Form) then FreeAndNil(Form);
  end;
end;

function FormINIT(FormTag : Integer; Value : TGirisFormRecord;ik : izinKontrol = ikHayir;izinPrm : string = '') : TGirisForm;
var
  Form : TGirisForm;
  sFormCaption, sFormAltCaption, sFormUserGroup, sFormUserGroupDesc: String;
  bTamam : Boolean;
begin
   result := nil;
   if not GetFormCaptionInfo (abs(FormTag), sFormCaption, sFormAltCaption, sFormUserGroup, sFormUserGroupDesc) then
     Exit;
   izinPrm := ifThen(izinPrm = '',sFormAltCaption,izinPrm);
   if ik = ikEvet
   then
   if UserRight(sFormCaption, izinPrm) = False
   then begin
       UserRightInsert(sFormCaption,izinPrm,datalar.username);
       ShowMessageSkin(sFormCaption,izinPrm + ' Ýþlemi Ýçin Yetkiniz Bulunmamaktadýr !','','info');
       exit;
   end;
  bTamam := False;
  case abs(FormTag) of
    TagfrmFirmaKart : Application.CreateForm(TfrmFirmaKart,frmFirmaKart);
    TagfrmMerkezBilgisi : Application.CreateForm(TfrmMerkezBilgisi,frmMerkezBilgisi);
    TagfrmHizmetKart : Application.CreateForm(TfrmHizmetKart,frmHizmetKart);
    TagfrmPopupDBGridForm,TagfrmBolum,TagfrmBirim,TagfrmSube,TagfrmFirmaISGEkip,
    TagFirmaCalismalari,TagfrmEkipmanTuru,TagfrmEkipmanTuruOzellik,TagfrmFirmaYetkili,
     TagfrmSahaSaglikGozetimTanim,TagfrmCalisanGeriBildirimAnketSoruTanim,
      TagfrmISGKurulToplantiTanim,TagfrmMadulaEpiktizTanim : Application.CreateForm(TfrmPopupDBGridForm , frmPopupDBGridForm);
    TagfrmPopup : Application.CreateForm(TfrmPopup , frmPopup);
    TagfrmDoktorlar,TagfrmIGU,TagfrmDigerSaglikPers :  Application.CreateForm(TfrmDoktorlar, frmDoktorlar);
    TagfrmHemsireler : Application.CreateForm(TfrmHemsireler, frmHemsireler);
    TagfrmAbout :  Application.CreateForm(TfrmAbout, frmAbout);
    TagfrmPersonelEgitim :  Application.CreateForm(TfrmPersonelEgitim, frmPersonelEgitim);
    TagfrmKurumBilgi , TagfrmParametreler : Application.CreateForm(TfrmKurumBilgi, frmKurumBilgi);
    TagfrmReceteler : Application.CreateForm(TfrmReceteler, frmReceteler);
    TagfrmHastaRecete,TagfrmPersonelRecete : Application.CreateForm(TfrmHastaRecete,frmHastaRecete);
    TagfrmReceteSablon : Application.CreateForm(TfrmReceteSablon,frmReceteSablon);
    TagfrmRaporSablon : Application.CreateForm(TfrmRaporSablon,frmRaporSablon);
    TagfrmUpdate :  Application.CreateForm(TfrmUpdate ,frmUpdate );
    TagfrmSorgulamalar : Application.CreateForm(TfrmSorgulamalar, frmSorgulamalar);
    TagfrmSorguCalistir : Application.CreateForm(TfrmRaporCalistir, frmRaporCalistir);
    TagfrmAnamnez,TagfrmIseGiris : Application.CreateForm(TfrmAnamnez, frmAnamnez);
    TagfrmTedaviBilgisi : Application.CreateForm(TfrmTedaviBilgisi,frmTedaviBilgisi);
    TagfrmIsKazasi : Application.CreateForm(TfrmIsKazasi,frmIsKazasi);
    TagfrmTetkikIstemSablon : Application.CreateForm(TfrmGrupDetayTanim, frmGrupDetayTanim);
    TagfrmDokumanYonetim : Application.CreateForm(TfrmDokumanYonetim, frmDokumanYonetim);

    TagfrmLabParametreleri : Application.CreateForm(TfrmLabParams, frmLabParams);
    TagfrmLabKabul : Application.CreateForm(TfrmLabaratuvarKabul, frmLabaratuvarKabul);

    TagfrmUsers : Application.CreateForm(TfrmUsers, frmUsers);
    TagfrmTakipNo : Application.CreateForm(TfrmTakipNo, frmTakipNo);
    TagfrmHastaTetkikEkle : Application.CreateForm(TfrmHastaTetkikEkle, frmHastaTetkikEkle);
    TagfrmAsiKarti : Application.CreateForm(TfrmAsiKarti, frmAsiKarti);
    TagfrmTaniKarti : Application.CreateForm(TfrmTaniKart, frmTaniKart);

    TagKurumSifreDegisForm : Application.CreateForm(TKurumSifreDegisForm, KurumSifreDegisForm);

    TagfrmTestAyarlari : Application.CreateForm(TfrmTestAyarlari, frmTestAyarlari);
    TagfrmIlaclar,TagfrmIlacAnaGrup,TagfrmIlacEtkenMadde : Application.CreateForm(TfrmIlaclar , frmIlaclar);
    TagfrmSon6AylikTetkikSonuc : Application.CreateForm(TfrmSon6AylikTetkikSonuc , frmSon6AylikTetkikSonuc);
    TagfrmSahaSaglikGozetim : Application.CreateForm(TfrmSahaSaglikGozetim, frmSahaSaglikGozetim);
    TagfrmCihazKontrol : Application.CreateForm(TfrmCihazKontrol, frmCihazKontrol);
    TagfrmFirmaKontrol : Application.CreateForm(TfrmFirmaKontrol, frmFirmaKontrol);

    TagfrmFaturalar : Application.CreateForm(TfrmFaturalar, frmFaturalar);
    TagfrmFatura : Application.CreateForm(TfrmFaturaDetay, frmFaturaDetay);
    TagfrmMedulaFatura : Application.CreateForm(TfrmMedulaFatura, frmMedulaFatura);

    TagfrmSirketSozlesme : Application.CreateForm(TfrmSirketSozlesme , frmSirketSozlesme);
    TagfrmSirketSozlesmeler : Application.CreateForm(TfrmSozlesmeler , frmSozlesmeler);
    TagfrmCariHareketGiris : Application.CreateForm(TfrmCariHareket, frmCariHareket);
    TagfrmCariHesapEkstre : Application.CreateForm(TfrmCariHesapEkstre, frmCariHesapEkstre);
    TagfrmCariHesapBorcAlacakToplam : Application.CreateForm(TfrmCariHesapBorcAlacakToplam, frmCariHesapBorcAlacakToplam);

    TagfrmRDS : Application.CreateForm(TfrmRDS, frmRDS);
    TagfrmKKD : Application.CreateForm(TfrmKKD, frmKKD);
    TagfrmCekler : Application.CreateForm(TfrmCekler, frmCekler);
    TagfrmKasaBanka : Application.CreateForm(TfrmKasaBanka, frmKasaBanka);

    TagfrmTedarikci : Application.CreateForm(TfrmTedarikci, frmTedarikci);

    TagfrmSirketSahaGozetim : Application.CreateForm(TfrmSirketSahaGozetim, frmSirketSahaGozetim);
    TagfrmSirketSahaDenetim : Application.CreateForm(TfrmSirketSahaDenetim, frmSirketSahaDenetim);
    TagfrmISGKurulToplanti : Application.CreateForm(TfrmISGKurulToplanti, frmISGKurulToplanti);
    TagfrmRTFSablon : Application.CreateForm(TfrmRTFSablon, frmRTFSablon);
    TagfrmSirketEkipmanList : Application.CreateForm(TfrmFirmaEkipmanList, frmFirmaEkipmanList);
    TagfrmSirketYillikCalismaPlan : Application.CreateForm(TfrmSirketYillikCalismaPlan , frmSirketYillikCalismaPlan);
    TagfrmSirketYillikEgitimPlan : Application.CreateForm(TfrmSirketYillikEgitimPlan , frmSirketYillikEgitimPlan);
    TagfrmKroki : Application.CreateForm(TfrmKroki, frmKroki);
    TagfrmOrtamOlcum : Application.CreateForm(TfrmSirketOrtamOlcum, frmSirketOrtamOlcum) ;
    TagfrmCihazKontrolListesi : Application.CreateForm(TfrmCihazKontrolListesi, frmCihazKontrolListesi);
    TagfrmFirmaPersonelEgitimList : Application.CreateForm(TfrmPersonelFirmaEgitimListe,frmPersonelFirmaEgitimListe);


    TagfrmSKS_YeniDokuman : Application.CreateForm(TfrmSKS_YeniDokuman,frmSKS_YeniDokuman);

    TagfrmHastaKart : Application.CreateForm(TfrmHastaKart,frmHastaKart);
    TagfrmTopluSeans : Application.CreateForm(TfrmTopluSeans,frmTopluSeans);
    TagfrmTopluGelis : Application.CreateForm(TfrmTopluGelis,frmTopluGelis);
    TagfrmHastaSeans : Application.CreateForm(TfrmHastaSeans,frmHastaSeans);
    TagfrmSKSKriter : Application.CreateForm(TfrmSKSKriter,frmSKSKriter);
    TagfrmTIKriter : Application.CreateForm(TfrmTIKriter,frmTIKriter);
    TagfrmTakipBilgisiOku : Application.CreateForm(TfrmTakipBilgisiOku,frmTakipBilgisiOku);
    TagfrmRaporDetay : Application.CreateForm(TfrmRaporDetay,frmRaporDetay);
    TagfrmKanTetkikTakip : Application.CreateForm(TfrmKanTetkikTakip,frmKanTetkikTakip);
    TagfrmDamarIzi : Application.CreateForm(TfrmDamarIzi,frmDamarIzi);
    TagfrmGunSonuOzet : Application.CreateForm(TfrmGunSonuOzet,frmGunSonuOzet);
    TagfrmHastaIlacTedavi : Application.CreateForm(TfrmHastaIlacTedavi,frmHastaIlacTedavi);
    TagfrmIlacEtkenMaddeSutKural : Application.CreateForm(TfrmIlacEtkenMaddeSutKural,frmIlacEtkenMaddeSutKural);
    TagfrmHastaDiyalizIzlem : Application.CreateForm(TfrmHastaDiyalizIzlem,frmHastaDiyalizIzlem);
    TagfrmUzmanMuayene   : Application.CreateForm(TfrmUzmanMuayene,frmUzmanMuayene);
    TagfrmOlayBildirim  : Application.CreateForm(TfrmOlayBildirim,frmOlayBildirim);
    TagfrmLabEntegrasyon : Application.CreateForm(TfrmLabEntegrasyon,frmLabEntegrasyon);
    TagfrmKlorOlcum  : Application.CreateForm(TfrmKlorOlcum,frmKlorOlcum);
    TagfrmSeansDetayKart : Application.CreateForm(TfrmSeansDetayKart,frmSeansDetayKart);
    TagfrmKanTetkikTakipDegerlendir : Application.CreateForm(TfrmKanTetkikTakipDegerlendir,frmKanTetkikTakipDegerlendir);
    TagfrmKiloOrder : Application.CreateForm(TfrmKiloOrder,frmKiloOrder);
    TagfrmHizliKayit : Application.CreateForm(TfrmHizliKayit,frmHizliKayit);
    TagfrmHastaDiyalizIzlemListesi : Application.CreateForm(TfrmIzlem,frmIzlem);
    TagfrmKtvListesi : Application.CreateForm(TfrmKtvListesi,frmKtvListesi);
    TagfrmHastaKonsultasyon : Application.CreateForm(TfrmHastaKonsultasyon,frmHastaKonsultasyon);
    TagfrmMedEczane : Application.CreateForm(TfrmMedEczane ,frmMedEczane );

  end;
  try
    Form := TGirisForm(FormClassType(abs(FormTag)));

    if not (Form is TGirisForm) then
    begin
      Form.BorderStyle := bsToolWindow;
      Form.Align := alNone;
      Form.Tag := abs(FormTag);
      Result := Form;
      Exit;
    end;
  try
    TGirisForm(Form)._dosyaNO_ := Value.F_dosyaNO_;//datalar.Bilgi.dosyaNo;
    TGirisForm(Form)._gelisNO_ := Value.F_gelisNO_;//datalar.Bilgi.gelisNo;
    TGirisForm(Form)._gelisSiraNO_ := Value.F_GelisSIRANO;
    TGirisForm(Form)._provizyonTarihi_ := Value.F_provizyonTarihi_;
    TGirisForm(Form)._HastaAdSoyad_ := Value.F_HastaAdSoyad_;
    TGirisForm(Form)._TakipNo_ := Value.F_TakipNo_;
    TGirisForm(Form)._BasvuruNo_ := Value.F_BasvuruNo_;
    TGirisForm(Form)._Doktor_ := Value.F_Doktor_;
    TGirisForm(Form)._Makina_ := Value.F_Makina_;
    TGirisForm(Form)._Seans_ := Value.F_Seans_;
    TGirisForm(Form)._TC_ := Value.F_TC_;
    TGirisForm(Form)._Yupass_ := Value.F_Yupass_;
    TGirisForm(Form)._DevKurum_ := Value.F_DevKurum_;
    TGirisForm(Form)._SigortaliTur_ := Value.F_SigortaliTur_;
    TGirisForm(Form)._SeansSira_ := Value.F_SeansSira_;
    TGirisForm(Form)._firmaKod_ := Value.F_FirmaKod_;
    TGirisForm(Form)._mobilTel_ := Value.F_mobilTel_;
    TGirisForm(Form)._adres_ := Value.F_adres_;
    TGirisForm(Form)._sp_ := Value.F_sp_;
    TGirisForm(Form)._kod_ := Value.F_kod_;
    TGirisForm(Form)._sube_ := Value.F_sube_;
    TGirisForm(Form)._MuayeneProtokolNo_ := Value.F_MuayeneProtokolNo_;
    TGirisForm(Form)._FaturaNo_ := Value.F_FaturaNO_;
    TGirisForm(Form)._Tarih1_ := Value.F_Tarih1_;
    TGirisForm(Form)._Tarih2_ := Value.F_Tarih2_;
    TGirisForm(Form)._ResourceID := Value.F_ResourceID_;
    TGirisForm(Form)._FaturaIptal := Value.F_FaturaIptal;
    TGirisForm(Form)._BransKodu_ := Value.F_BransKodu_;
    TGirisForm(Form)._TedaviTuru_ := Value.F_TedaviTuru_;
    TGirisForm(Form)._SeansBilgi := Value.F_SeansBilgi;
    TGirisForm(Form)._sysTakipNo_ := Value.F_sysTakipNo;
    TGirisForm(Form)._pasifSebeb_ := Value.F_PasifSebeb_;
    TGirisForm(Form).GonderenForm := Nil;

  except
  end;

    TgirisForm(Form).Caption := sFormCaption + ' - ' + sFormAltCaption;
    if ik = ikEvet
     then
      TGirisForm(Form).cxTab.Tabs[0].Caption := izinPrm
     else begin
      if Value.F_HastaAdSoyad_ <> '' then
        TGirisForm(Form).cxTab.Tabs[0].Caption := Value.F_HastaAdSoyad_
      else
        TGirisForm(Form).cxTab.Tabs[0].Caption := izinPrm;

     end;
    TGirisForm(Form).cxTab.Tabs[0].ImageIndex := FormTabImageIndex(abs(FormTag));

    TGirisForm(Form).Tag := FormTag;
    if TGirisForm(Form).Init(Form) = True Then
    begin
      result := TGirisForm(Form);
      bTamam := True;
    end;
  finally
    if not bTamam and Assigned (Form) then FreeAndNil(Form);
  end;
end;


function FormINIT(MenuID : Integer) : Boolean;overload;
begin
  MenuIDRun(MenuID);
  Result := True;
end;


function FormINITTForm(FormTag : Integer) : TForm;
var
  Form : TComponent;
begin
  Form := FormClassType(abs(FormTag));
  Application.CreateForm(FormClass(abs(FormTag)), Form);
  Form.Tag := FormTag;
  case FormTag of
    TagfrmSaglikNetOnline : begin
     end
     else
      result := nil;
   end;
   result := TForm(Form);
end;

end.
