BEGIN TRAN
GO
ALTER PROCEDURE [dbo].[sp_hastaListesi] @tip varchar(1),@dosyano varchar(6) = '' , @t varchar(10) = ''
AS
BEGIN

select h.dosyaNo,h.SIGORTANO,BABAADI,h.EV_TEL1,h.TCKIMLIKNO,h.KarneNo,h.IS_TEL1,h.Seans, 
h.DOGUMTARIHI,h.Ev_Adres,
--(case when RaporGecerlik <> '' then convert(varchar,convert(datetime, RaporGecerlik),101)
--else 'SURES�Z' end)drapgec ,
((h.HASTAADI+(' ')+ h.HASTASOYADI))ADSOYAD,

(case h.CINSIYETI
  WHEN '1' THEN 'KADIN'
  WHEN '0' THEN 'ERKEK'
END)CINS,


(case h.KurumTip
  WHEN '1' THEN 'SSK'
  WHEN '2' THEN 'Ba�kur'
  WHEN '3' THEN 'Emekli Sand���'
  WHEN '4' THEN 'Ye�il Kart'
  WHEN '5' THEN '18 Y.A. ve S.G.O.'
  WHEN '6' THEN 'Muhasebat(�.D.Mem)'
  WHEN '7' THEN 'Di�er'
  WHEN '8' THEN '�zel'
  WHEN '18' THEN '18 Ya� Alt� Hastalar'
END)Kurum,

(case h.Durum
  WHEN '1' THEN '�al��an'
  WHEN '2' THEN 'Emekli'
  WHEN '3' THEN 'SSK Kurum Per'
  WHEN '4' THEN 'Di�er'
  WHEN '5' THEN '�zel'
END)DurumS,



(case h.KANGRUBU
  WHEN 0 THEN 'A Rh(+)'
  WHEN 1 THEN 'A Rh(-)'
  WHEN 2 THEN 'AB Rh(+)'
  WHEN 3 THEN 'AB Rh(-)'
  WHEN 4 THEN 'B Rh(+)'
  WHEN 5 THEN 'B Rh(-)'
  WHEN 6 THEN '0 Rh(+)'
  WHEN 7 THEN '0 Rh(-)'

END)KANG,





(case when substring(h.SeansGunleri,2,1) = '1' then '(Pazartesi)' else '' end) + '' +
(case when substring(h.SeansGunleri,3,1) = '1' then '(Sal�)' else '' end) + '' +
(case when substring(h.SeansGunleri,4,1) = '1' then '(�ar�amba)' else '' end) + '' +
(case when substring(h.SeansGunleri,5,1) = '1' then '(Per�embe)' else '' end) + '' +
(case when substring(h.SeansGunleri,6,1) = '1' then '(Cuma)' else '' end) + '' +
(case when substring(h.SeansGunleri,7,1) = '1' then '(Cumartesi)' else '' end) + '' +
(case when substring(h.SeansGunleri,1,1) = '1' then '(Pazar)' else '' end)GUNLER 
,r.* , h.makinaNo,M.SLVV makinaseriNo,h.tip, '   .'+substring(@t,5,2)+'.'+substring(@t,1,4) as SeansTarih,h.HbsAg,
h.AntiHbs,h.AntiHCV,(CASE WHEN h.HbsAg = '-' AND h.AntiHCV = '-' THEN 'X' ELSE '' END) Negatif ,h.GELHAST

from hastakart h
  left join raporlar r on  r.dosyano=h.dosyano and r.aktif = 1 
  left join (select * from parametreler where SLK = '50') M on M.SLB = h.makinaNo
  left join gelisler g on g.dosyaNo = h.dosyaNo
where h.Aktif in (select datavalue from dbo.strtotable((case when @tip = '1' then '1,2' else @tip end),','))
--and r.Aktif = '1'--
and h.dosyano like @dosyano+'%' and substring(g.BHDAT,1,6) = substring(@t,1,6) 
Order By h.HASTAADI

END
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_hastaListesi'
GO
COMMIT
GO
