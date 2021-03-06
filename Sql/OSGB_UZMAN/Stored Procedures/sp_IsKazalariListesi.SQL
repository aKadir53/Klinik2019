BEGIN TRAN
GO
ALTER -- create
  procedure dbo.sp_IsKazalariListesi @IlkTarih datetime, @SonTarih datetime
as
begin
  select 
    IK.PersonelDosyaNo, 
    IK.ID, 
    IK.DuzenlemeTarihi, 
    KazaTarihi [Kaza Tarihi], 
    year (KazaTarihi) [Kaza Y�l�], 
    month (KazaTarihi) [Kaza Ay�],
    IK.KazaTarihiIsBasiSaati, 
    IK.KazaninMeydanaGelBolum, 
    BL.tanimi [Kaza B�l�m�], 
    IK.KazadaYaralananUzuv, 
    IK.YaralanmaSekli, 
    IK.BirinciDereceYakin, 
    IK.BirinciDereceYakinAdres, 
    IK.MeslekHastTaniTarihi, 
    IK.MeslekHastTani, 
    IK.MeslekHastTaniileSevkEdilenPerCalBolumIs, 
    IK.MeslekHastSaptanmaSekli, 
    IK.KazaSonucuOluSayisi [�l� Say�s�],
    IK.KazaSonucuYaraliSayisi [Yaral� Say�s�],
    IK.KazaSonucuUzuvKaybi [Uzuv Kayb�],
    IK.KazaSonucuHafifYarali [Hafif Yaral� Say�s�],
    IK.KazaSonucuBirGunIstirahatAlan [1 G�n �stirahat],
    IK.KazaSonucuikiGunIstirahatAlan [2 G�n �stirahat],
    IK.KazaSonucuUcGunIstirahatAlan [3 G�n �stirahat],
    IK.KazaSonucuUcGunFazlaIstirahatAlan [4+x G�n �stirahat],
    IK.KazaGorenVarmi, 
    IK.Sahit1, 
    IK.Sahit1Adres, 
    IK.Sahit2, 
    IK.Sahit2Adres, 
    IK.Sahit3, 
    IK.Sahit3Adres, 
    IK.KazaSebebOlusSekli, 
    IK.IsverenveyaVekili
  from dbo.IsKazalari IK
  left outer join Bolumler BL on BL.kod = IK.KazaninMeydanaGelBolum
  where IK.KazaTarihi between @IlkTarih and @SonTarih
end
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_IsKazalariListesi'
GO
COMMIT
GO
