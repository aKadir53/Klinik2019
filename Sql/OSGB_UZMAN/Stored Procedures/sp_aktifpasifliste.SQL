BEGIN TRAN
GO
ALTER PROCEDURE [dbo].[sp_aktifpasifliste]
@tip varchar(1)
AS

select dosyaNo,SIGORTANO,BABAADI,EV_TEL1,TCKIMLIKNO,KarneNo,IS_TEL1,Seans,
convert(varchar,convert(datetime, DOGUMTARIHI),101)dtar,
 convert(varchar,convert(datetime, RaporTarihi),101)drapor,
convert(varchar,convert(datetime, RaporGecerlik),101)drapgec ,

((HASTAADI+(' ')+HASTASOYADI))ADSOYAD,

(case CINSIYETI
  WHEN '1' THEN 'KADIN'
  WHEN '0' THEN 'ERKEK'
END)CINS,


(case KurumTip
  WHEN '1' THEN 'SSK'
  WHEN '2' THEN 'Ba�kur'
  WHEN '3' THEN 'Emekli Sand���'
  WHEN '4' THEN 'Ye�il Kart'
  WHEN '5' THEN '18 Y.A. ve S.G.O.'
  WHEN '6' THEN 'Muhasebat(�.D.Mem)'
  WHEN '7' THEN 'Di�er'
  WHEN '8' THEN '�zel'
END)Kurum,

(case Durum
  WHEN '1' THEN '�al��an'
  WHEN '2' THEN 'Emekli'
  WHEN '3' THEN 'SSK Kurum Per'
  WHEN '4' THEN 'Di�er'
  WHEN '5' THEN '�zel'
END)DurumS,



(case KANGRUBU
  WHEN 0 THEN 'A Rh(+)'
  WHEN 1 THEN 'A Rh(-)'
  WHEN 2 THEN 'AB Rh(+)'
  WHEN 3 THEN 'AB Rh(-)'
  WHEN 4 THEN 'B Rh(+)'
  WHEN 5 THEN 'B Rh(-)'
  WHEN 6 THEN '0 Rh(+)'
  WHEN 7 THEN '0 Rh(-)'

END)KANG,





(case when substring(SeansGunleri,2,1) = '1' then '(Pazartesi)' else '' end) + '' +
(case when substring(SeansGunleri,3,1) = '1' then '(Sal�)' else '' end) + '' +
(case when substring(SeansGunleri,4,1) = '1' then '(�ar�amba)' else '' end) + '' +
(case when substring(SeansGunleri,5,1) = '1' then '(Per�embe)' else '' end) + '' +
(case when substring(SeansGunleri,6,1) = '1' then '(Cuma)' else '' end) + '' +
(case when substring(SeansGunleri,7,1) = '1' then '(Cumartesi)' else '' end) + '' +
(case when substring(SeansGunleri,1,1) = '1' then '(Pazar)' else '' end)GUNLER

from hastakart
where Aktif=@tip
--Order By Seans
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_aktifpasifliste'
GO
COMMIT
GO
