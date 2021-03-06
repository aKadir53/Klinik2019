BEGIN TRAN
GO
ALTER -- create
  procedure dbo.sp_IsKazalariRaporlari @IlkTarih datetime, @SonTarih datetime, @TarihGoster bit = 0, @YilGoster bit = 0, @AyGoster bit = 0, @BolumGoster bit = 1
as
begin
  select case when @BolumGoster = 1 then BL.tanimi else null end [Kaza B�l�m�], 
    case when @TarihGoster = 1 then KazaTarihi else null end [Kaza Tarihi], 
	case when @TarihGoster = 1 or @YilGoster = 1 or @AyGoster = 1  then year (KazaTarihi) else null end [Kaza Y�l�], 
	case when @TarihGoster = 1 or @AyGoster = 1  then month (KazaTarihi) else null end [Kaza Ay�],
    count (*) [Kaza Sayisi], 
    sum (KazaSonucuBirGunIstirahatAlan) [1 G�n �stirahat],
    sum (KazaSonucuikiGunIstirahatAlan) [2 G�n �stirahat],
    sum (KazaSonucuUcGunIstirahatAlan) [3 G�n �stirahat],
    sum (KazaSonucuUcGunFazlaIstirahatAlan) [4+x G�n �stirahat],
    sum (KazaSonucuHafifYarali) [Hafif Yaral� Say�s�],
    sum (KazaSonucuUzuvKaybi) [Uzuv Kayb�],
    sum (KazaSonucuYaraliSayisi) [Yaral� Say�s�],
    sum (KazaSonucuOluSayisi) [�l� Say�s�]
  from dbo.IsKazalari IK
  left outer join Bolumler BL on BL.kod = IK.KazaninMeydanaGelBolum
  where IK.KazaTarihi between @IlkTarih and @SonTarih
  group by case when @BolumGoster = 1 then BL.tanimi else null end, 
    case when @TarihGoster = 1 then KazaTarihi else null end,
    case when @TarihGoster = 1 or @YilGoster = 1 or @AyGoster = 1  then year (KazaTarihi) else null end,
	case when @TarihGoster = 1 or @AyGoster = 1  then month (KazaTarihi) else null end,
	case when @BolumGoster = 1 then BL.tanimi else null end
end
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_IsKazalariRaporlari'
GO
COMMIT
GO
