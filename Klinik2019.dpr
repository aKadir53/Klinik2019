program Klinik2019;

uses
  Vcl.Forms,
  strutils,
  windows,
  Controls,
  Classes,
  ShellAPI,
  System.SysUtils,
  AnaUnit in 'AnaUnit.pas' {AnaForm},
  GirisUnit in 'GirisUnit.pas' {GirisForm},
  Tnm_Doktor in 'Tnm_Doktor.pas' {frmDoktorlar},
  Tnm_Ilaclar in 'Tnm_Ilaclar.pas' {frmIlaclar},
  Tnm_LabTest in 'Tnm_LabTest.pas' {frmLabTest},
  login in 'login.pas' {frmLogin},
  TedaviKart in 'TedaviKart.pas' {frmTedaviBilgisi},
  data_modul in 'data_modul.pas' {DATALAR: TDataModule},
  rapor in 'rapor.pas' {frmRapor},
  Tnm_UserSettings in 'Tnm_UserSettings.pas' {frmUsers},
  FormKontrolUserSet in 'FormKontrolUserSet.pas' {frmKontrolUserSet},
  KadirType in 'KadirType.pas',
  HastaAsiKArti in 'HastaAsiKArti.pas' {frmAsiKarti},
  SMS in 'SMS.pas' {frmSMS},
  PopupForm in 'PopupForm.PAS' {frmPopup},
  sifreDegis in 'sifreDegis.pas' {frmSifreDegis},
  GridListe in 'GridListe.pas' {frmGridListeForm},
  HastaRecete in 'HastaRecete.pas' {frmHastaRecete},
  kadir in 'kadir.pas',
  Son6AylikTetkikSonuc in 'Son6AylikTetkikSonuc.pas' {frmSon6AylikTetkikSonuc},
  HastaTetkikEkle in 'HastaTetkikEkle.pas' {frmHastaTetkikEkle},
  IlacSarfListesi in 'IlacSarfListesi.pas' {frmIlacSarf},
  PopupDBGridForm in 'PopupDBGridForm.PAS' {frmPopupDBGridForm},
  HastaTaniKart in 'HastaTaniKart.pas' {frmTaniKart},
  KurumLogin in 'KurumLogin.pas' {frmKurumBilgi},
  MedulaKurumSifreDegis in 'MedulaKurumSifreDegis.pas' {KurumSifreDegisForm},
  FirmaKart in 'FirmaKart.pas' {frmFirmaKart},
  MerkezBilgisi in 'MerkezBilgisi.pas' {frmMerkezBilgisi},
  HizmetKart in 'HizmetKart.pas' {frmHizmetKart},
  Receteler in 'Receteler.pas' {frmReceteler},
  receteSablonlari in 'receteSablonlari.pas' {frmReceteSablon},
  Update_G in 'Update_G.pas' {frmUpdate},
  MESSAGE in 'MESSAGE.PAS' {frmMessage},
  PersonelEgitimFrm in 'PersonelEgitimFrm.pas' {frmPersonelEgitim},
  Sorgulamalar in 'Sorgulamalar.pas' {frmSorgulamalar},
  PopupDBVerticalGridForm in 'PopupDBVerticalGridForm.PAS' {frmPopupDBVerticalGridForm},
  IsKazasi in 'IsKazasi.pas' {frmIsKazasi},
  LisansUzat in 'LisansUzat.pas' {frmLisansBilgisi},
  About_Frm in 'About_Frm.pas' {frmAbout},
  CihazKontrol in 'CihazKontrol.pas' {frmCihazKontrol},
  labParametreleri in 'labParametreleri.pas' {frmLabParams},
  labaratuvarKabul in 'labaratuvarKabul.pas' {frmLabaratuvarKabul},
  LabSonucGir in 'LabSonucGir.pas' {frmLabSonucGir},
  GrupDetayTanim in 'GrupDetayTanim.pas' {frmGrupDetayTanim},
  MESSAGE_y in 'MESSAGE_y.PAS' {frmMessage_y},
  EventCompletDurumBildir in 'EventCompletDurumBildir.pas' {frmEventDurumBildir},
  FaturaDetay in 'FaturaDetay.pas' {frmFaturaDetay},
  Faturalar in 'Faturalar.pas' {frmFaturalar},
  Tedarikci in 'Tedarikci.pas' {frmTedarikci},
  Cekler in 'Cekler.pas' {frmCekler},
  FirmaKontrol in 'FirmaKontrol.pas' {frmFirmaKontrol},
  FirmaEkipmanList in 'FirmaEkipmanList.pas' {frmFirmaEkipmanList},
  KasaBanka in 'KasaBanka.pas' {frmKasaBanka},
  RDS in 'RDS.pas' {frmRDS},
  sirketISGKurulToplanti in 'sirketISGKurulToplanti.pas' {frmISGKurulToplanti},
  sirketSahaGozetim in 'sirketSahaGozetim.pas' {frmSirketSahaGozetim},
  SirketSozlesme in 'SirketSozlesme.pas' {frmSirketSozlesme},
  Sozlesmeler in 'Sozlesmeler.pas' {frmSozlesmeler},
  UyumSoftPortal in 'UyumSoftPortal.pas' {frmPortal},
  sirketYillikCalismaPlan in 'sirketYillikCalismaPlan.pas' {frmSirketYillikCalismaPlan},
  sirketYillikEgitimPlan in 'sirketYillikEgitimPlan.pas' {frmSirketYillikEgitimPlan},
  AjandaOzet in 'AjandaOzet.pas' {frmAjandaOzet},
  CariHareketGiris in 'CariHareketGiris.pas' {frmCariHareket},
  CariHesapBorcAlacakToplam in 'CariHesapBorcAlacakToplam.pas' {frmCariHesapBorcAlacakToplam},
  CariHesapExtresi in 'CariHesapExtresi.pas' {frmCariHesapEkstre},
  DokumanYukle in 'DokumanYukle.pas' {frmDokumanYonetim},
  TransUtils in 'TransUtils.pas',
  DestekSorunBildir in 'DestekSorunBildir.pas' {frmDestekSorunBildir},
  CSGBservice in 'CSGBservice.pas',
  Anamnez in 'Anamnez.pas' {frmAnamnez},
  HastaListe in 'HastaListe.pas' {frmHastaListe},
  PersonelKart in 'PersonelKart.pas' {frmPersonelKart},
  GetFormClass in 'GetFormClass.pas',
  HastaKart in 'HastaKart.pas' {frmHastaKart},
  KadirMedula3 in 'KadirMedula3.pas',
  HastaSeansIsle in 'HastaSeansIsle.pas' {frmHastaSeans},
  hizmetKayitIslemleriWS in 'hizmetKayitIslemleriWS.pas',
  yardimciIslemlerWS in 'yardimciIslemlerWS.pas',
  GunSonuOzet in 'GunSonuOzet.pas' {frmGunSonuOzet},
  IlacEtkenMadde in 'IlacEtkenMadde.pas' {frmIlacEtkenMaddeSutKural},
  AEN in 'AEN.pas',
  LabTestlerService in 'WebReferans\LabTestlerService.pas',
  klorOlcum in 'klorOlcum.pas' {frmKlorOlcum},
  GemsoftServiceBIYOTIP in 'WebReferans\GemsoftServiceBIYOTIP.pas',
  GemSoftBIYOTIP in 'WebReferans\GemSoftBIYOTIP.pas',
  Referans in 'WebReferans\Referans.pas',
  ServiceReferansLab in 'WebReferans\ServiceReferansLab.pas',
  hizliKayit in 'hizliKayit.pas' {frmHizliKayit},
  HastaIzlemListesi in 'HastaIzlemListesi.pas' {frmIzlem},
  TakipKontrol in 'TakipKontrol.pas' {frmTakipKontrol},
  TenaySISTEMTIP in 'WebReferans\TenaySISTEMTIP.pas' {/ TenayAhenk in 'WebReferans\TenayAhenk.pas';},
  TenayServiceSYNLAB_SYNEVO_CENTRO_v4 in 'TenayServiceSYNLAB_SYNEVO_CENTRO_v4.pas',
  InterKomService in 'WebReferans\InterKomService.pas',
  Interkom in 'WebReferans\Interkom.pas',
  DuzenService in 'WebReferans\DuzenService.pas',
  Duzen in 'WebReferans\Duzen.pas',
  PackageReceiverWebService in 'PackageReceiverWebService.pas',
  PaketAl in 'PaketAl.pas',
  LiosDEREN in 'WebReferans\LiosDEREN.pas',
  LiosERBIL in 'WebReferans\LiosERBIL.pas',
  LiosLabService in 'WebReferans\LiosLabService.pas',
  BirlabService in 'WebReferans\BirlabService.pas',
  Birlab in 'WebReferans\Birlab.pas',
  AlisWS in 'AlisWS.pas',
  EGALAB in 'EGALAB.pas',
  elabUNYE in 'elabUNYE.pas',
  TenayGama in 'WebReferans\TenayGama.pas',
  saglikTesisiEczaneYardimciIslemleriWS in 'saglikTesisiEczaneYardimciIslemleriWS.pas',
  TenaySYNLAB in 'TenaySYNLAB.pas',
  TenaySynevo in 'TenaySynevo.pas',
  TenayAhenk in 'TenayAhenk.pas',
  TenaySIMGE in 'TenaySIMGE.pas',
  TenayBIOLAB in 'TenayBIOLAB.pas';

// KadirMedula3 in '..\..\medula3wsdl\KadirMedula3.pas';

const
  AppalicationVer : integer = 4092;
  yvKversiyon : integer = 3;
  NoktaURL : string = 'https://www.noktayazilim.net';
  VersiyonURL : string = 'http://www.noktayazilim.net/Diyaliz_Klinik2019/Klinik2019Versiyon.txt';
  DLLVersiyonURL : string = 'http://www.noktayazilim.net/Diyaliz_Klinik2019/Klinik2019DLLVersiyon.txt';
  yvkVersiyonURL : string = 'http://www.noktayazilim.net/Diyaliz_Klinik2019/yvkVersiyon.txt';

 // DllVersiyon : integer = 4003;
// Klinik2019.Dpr dosyasý  paket.exe içinde memo ya yükleniyor. appver ve dllver parse ediliyor.
// Klinik2019Versiyon.txt ve Klinik2019DLLVersiyon.txt dosya olarak ftp ye Diyaliz_Klinik2019/
// klasörüne atýlýyor. Uygulama açýlýrken ftp den bu dosyalarý okuyup burdki mevcut deðerleri
// karþýlaþtýrýyor , exe ve dll yüklemelerini yapýyor.


{$R *.res}
{$WEAKLINKRTTI ON}
  {$RTTI EXPLICIT METHODS([]) PROPERTIES([]) FIELDS([])}

 var SiteVersiyon,ExeVersiyon: string; V1, V2, V3, V4: word;
   versiyon,Dversiyon ,sql,yvk,yvkNewVersiyon, hata : string;
  _exe : PAnsiChar;
  dosya : TFileStream;
  _modal_ : integer;


begin
 // bellek sýzmalarý var. onlarý müsait bir zamanda FreeAndNil yap...
 // ReportMemoryLeaksOnShutdown := True;

  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDATALAR, DATALAR);
  Application.CreateForm(TAnaForm, AnaForm);
  datalar.AppalicationVer := AppalicationVer;
  datalar.yvKversiyon := yvKversiyon;
  // Application.CreateForm(TfrmGunSonuOzet, frmGunSonuOzet);

  // form2.show;

  Hata := '0';

  if not DirectoryExists('C:\NoktaV3\Http')
  then
    MkDir('C:\NoktaV3\Http');
  if not DirectoryExists('C:\NoktaV3\Message')
  then
    MkDir('C:\NoktaV3\Message');


  datalar.programTip := copy(ExtractFileName(Application.ExeName),1,1);

  try
    yvkNewVersiyon := (datalar.HTTP1.Get(yvkVersiyonURL));
    if pos('Error',yvkNewVersiyon) > 0
    then Hata := '1';

  except
    yvkNewVersiyon := intTostr(yvkVersiyon);
    Hata := '1';
  end;

  datalar.versiyon := inttostr(AppalicationVer);

  if Hata = '0'
  then
    if ForceDirectories ('C:\NoktaV3') then
    begin

        if (strToint(yvkNewVersiyon) >  yvKversiyon)
        Then begin
          try
            Download('https://www.noktayazilim.net/Diyaliz_Klinik2019/yvK.exe','mavinokta','nokta53Nokta','C:\NoktaV3\yvK.exe');
          except
          end;
        end;


    try
      versiyon := (datalar.HTTP1.Get(VersiyonURL));
   //   Dversiyon := (datalar.HTTP1.Get(DLLVersiyonURL));
    except
      versiyon := inttostr(AppalicationVer);
   //   Dversiyon := inttostr(DllVersiyon);
    end;

    if versiyon = '' then versiyon := inttostr(AppalicationVer);
   // if Dversiyon = '' then Dversiyon := inttostr(DllVersiyon);

    (*
    try
      if (strtoint(Dversiyon) > DllVersiyon)
      Then Begin

          try
           _exe :=  PAnsiChar(AnsiString('C:\NoktaV3\yvK.exe dll'));
           WinExec(_exe,SW_SHOW);
          // datalar.KillTask('Diyaliz.exe');
          except on e : exception do
            begin
              ShowMessageSkin(e.Message,'','','info');
            end;
          end;
      End;
    except
    end;
      *)


    if (strtoint(versiyon) > AppalicationVer)
    Then Begin
      try
       _exe :=  PAnsiChar(AnsiString('C:\NoktaV3\yvK.exe'));
       WinExec(_exe,SW_SHOW);
      // datalar.KillTask('Diyaliz.exe');
      except on e : exception do
        begin
          ShowMessageSkin(e.Message,'','','info');
        end;
      end;
    End;


    end;

    if not FileExists('C:\NoktaV3\Newtonsoft.Json.dll')
    then begin
      try
        filename := 'Newtonsoft.Json.dll';
        Application.ProcessMessages;
        Download('https://www.noktayazilim.net/Diyaliz_Klinik2019/'+filename,'mavinokta','nokta53Nokta','C:\NoktaV3\'+filename);
      finally
      end;
    end;

  GetBuildInfo(Application.ExeName, V1, V2, V3,V4);
  ExeVersiyon:= Format('%d.%d.%d.%d', [V1, V2, V3,V4]);

   SistemAyarlariniDuzenle;


  Application.CreateForm(TfrmLogin, frmLogin);
  try
      if frmLogin.ShowModal <> mrYes then Exit;
  finally
    FreeAndNil (frmLogin);
  end;
    Application.Run;
end.
