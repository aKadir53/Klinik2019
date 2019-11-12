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
  MedEczane in 'MedEczane.pas' {frmMedEczane},
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
  SahaSaglikGozetim in 'SahaSaglikGozetim.pas' {frmSahaSaglikGozetim},
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
  yeniDokuman in 'yeniDokuman.pas' {frmSKS_YeniDokuman},
  KadirMedula3 in 'KadirMedula3.pas',
  HastaSeansIsle in 'HastaSeansIsle.pas' {frmHastaSeans},
  hizmetKayitIslemleriWS in 'hizmetKayitIslemleriWS.pas',
  yardimciIslemlerWS in 'yardimciIslemlerWS.pas',
  GunSonuOzet in 'GunSonuOzet.pas' {frmGunSonuOzet},
  IlacEtkenMadde in 'IlacEtkenMadde.pas' {frmIlacEtkenMaddeSutKural},
  Centro in 'Centro.pas',
  ENA in 'ENA.pas',
  TenayENA in 'WebReferans\TenayENA.pas',
  tenayserviceCENTRO in 'WebReferans\tenayserviceCENTRO.pas',
  LabTestlerService in 'WebReferans\LabTestlerService.pas',
  klorOlcum in 'klorOlcum.pas' {frmKlorOlcum},
  GemsoftServiceBIYOTIP in 'WebReferans\GemsoftServiceBIYOTIP.pas',
  GemSoftBIYOTIP in 'WebReferans\GemSoftBIYOTIP.pas',
  TenayServiceSYNEVO in 'WebReferans\TenayServiceSYNEVO.pas',
  TenaySynevo in 'WebReferans\TenaySynevo.pas',
  Referans in 'WebReferans\Referans.pas',
  ServiceReferansLab in 'WebReferans\ServiceReferansLab.pas',
  TenayServiceSYNLAB in 'WebReferans\TenayServiceSYNLAB.pas',
  TenaySYNLAB in 'WebReferans\TenaySYNLAB.pas',
  hizliKayit in 'hizliKayit.pas' {frmHizliKayit},
  HastaIzlemListesi in 'HastaIzlemListesi.pas' {frmIzlem},
  TakipKontrol in 'TakipKontrol.pas' {frmTakipKontrol};

// KadirMedula3 in '..\..\medula3wsdl\KadirMedula3.pas';

const
  AppalicationVer : integer = 1094;   // Versiyon info kontrol etmeyi unutma  OSGBVersiyon.txt içine AppalicationVer deðerini yaz ftp at
  OSGBDllVersiyon : integer = 6;     //  DLLVersiyon.txt  içine DllVersiyon deðerini yaz ftp at
                                     // isg.exe yapý deðiþikliðinden sonra buna gerek kalmýyor

  NoktaURL : string = 'https://www.noktayazilim.net';
  VersiyonURL : string = 'http://www.noktayazilim.net/KlinikVersiyon.txt';
  DLLVersiyonURL : string = 'http://www.noktayazilim.net/KlinikDLLVersiyon.txt';

{$R *.res}
{$WEAKLINKRTTI ON}
  {$RTTI EXPLICIT METHODS([]) PROPERTIES([]) FIELDS([])}

 var SiteVersiyon,ExeVersiyon: string; V1, V2, V3, V4: word;
   versiyon,Dversiyon ,sql,isg,isgOld : string;
  _exe : PAnsiChar;
  dosya : TFileStream;
  _modal_ : integer;


begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDATALAR, DATALAR);
  Application.CreateForm(TAnaForm, AnaForm);

  // Application.CreateForm(TfrmGunSonuOzet, frmGunSonuOzet);

  // form2.show;

//  FormatSettings.ShortDateFormat := 'dd.mm.yyyy';
//  FormatSettings.LongDateFormat := 'dd mmmm yyyy dddd';

  //if pos('UYUM',paramStr(0)) > 0 then isg := 'UYUMISG.exe' else isg := 'isg.exe';


  datalar.programTip := copy(ExtractFileName(Application.ExeName),1,1);

  isgOld := 'yv.exe';
  isg := 'yv1.exe';

//  Download('https://www.noktayazilim.net/' + isg,'mavinokta','nokta53Nokta','C:\OSGB\'+isg);

  datalar.versiyon := inttostr(AppalicationVer);
  if ForceDirectories ('C:\NoktaV4') then
  begin
      if FileExists('C:\NoktaV4\' + isg) = False
      Then begin
        //dosya := TFileStream.Create('C:\OSGB\' + isg,fmCreate);
        try
          Download('https://www.noktayazilim.net/isg/'+isg,'mavinokta','nokta53Nokta','C:\NoktaV4\'+isg);
          DeleteFile('C:\NoktaV4\isg.exe');
          CopyFile(pChar('C:\NoktaV4\'+isg),pChar('C:\NoktaV4\isg.exe'),true);
          DeleteFile('C:\NoktaV4\'+isgOld);
        finally
         //dosya.Free;
        end;
    end;

  try
    versiyon := (datalar.HTTP1.Get(VersiyonURL));
    Dversiyon := (datalar.HTTP1.Get(DLLVersiyonURL));
  except
    versiyon := inttostr(AppalicationVer);
    Dversiyon := inttostr(OSGBDllVersiyon);
  end;

  if versiyon = '' then versiyon := inttostr(AppalicationVer);
  if Dversiyon = '' then Dversiyon := inttostr(OSGBDllVersiyon);


  if 1=2//(strtoint(Dversiyon) > OSGBDllVersiyon)
  Then Begin
//      dosya := TFileStream.Create('C:\OSGB\NoktaDLL.dll',fmCreate);
//      datalar.HTTP1.Get('https://www.noktayazilim.net/NoktaDLL.dll' ,TStream(dosya));

      Download('https://www.noktayazilim.net/NoktaDLL.dll','mavinokta','nokta53Nokta','C:\NoktaV4\NoktaDLL.dll');
      Download('https://www.noktayazilim.net/BouncyCastle.Crypto.dll','mavinokta','nokta53Nokta','C:\NoktaV4\BouncyCastle.Crypto.dll');
      Download('https://www.noktayazilim.net/EdocLib.dll','mavinokta','nokta53Nokta','C:\NoktaV4\EdocLib.dll');
      Download('https://www.noktayazilim.net/Net.Pkcs11.dll','mavinokta','nokta53Nokta','C:\NoktaV4\Net.Pkcs11.dll');
      Download('https://www.noktayazilim.net/itextsharp.dll','mavinokta','nokta53Nokta','C:\NoktaV4\itextsharp.dll');
      Download('https://www.noktayazilim.net/Microsoft.VisualBasic.PowerPacks.Vs.dll','mavinokta','nokta53Nokta','C:\NoktaV4\Microsoft.VisualBasic.PowerPacks.Vs.dll');

  //    dosya.Free;

  End;



  if (strtoint(versiyon) > AppalicationVer)
  Then Begin
    try
     _exe :=  PAnsiChar(AnsiString('C:\NoktaV4\yv.exe'));
     WinExec(_exe,SW_SHOW);
    // datalar.KillTask('Diyaliz.exe');
    except on e : exception do
      begin
        ShowMessageSkin(e.Message,'','','info');
      end;
    end;
  End;





  end;

 (*
    if FileExists('C:\OSGB\AlpemixCMX.exe') = False
    Then begin
      dosya := TFileStream.Create('C:\OSGB\AlpemixCMX.exe',fmCreate);
      datalar.HTTP1.Get('http://www.noktayazilim.net/AlpemixCMX.exe' ,TStream(dosya));
      dosya.Free;
    end;

    *)


  GetBuildInfo(Application.ExeName, V1, V2, V3,V4);
  ExeVersiyon:= Format('%d.%d.%d.%d', [V1, V2, V3,V4]);


  Application.CreateForm(TfrmLogin, frmLogin);
  try
      if frmLogin.ShowModal <> mrYes then Exit;
  finally
    FreeAndNil (frmLogin);
  end;
    Application.Run;
end.
