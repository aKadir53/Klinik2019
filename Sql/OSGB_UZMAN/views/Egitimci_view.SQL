BEGIN TRAN
GO
-- E�itimci se�im view'�
ALTER -- CREATE -- DROP
  VIEW dbo.Egitimci_view
with schemabinding
AS
SELECT tanimi Tanimi1, Tanimi + ' (Dr.)' Tanimi2, TcKimlikNo egitimciTC, 'Dr' egitimciUnvan, 1 EgitimciTuru
from dbo.doktorlarT
union all
SELECT tanimi Tanimi1, Tanimi + ' (ISG)' Tanimi2, TcKimlikNo egitimciTC, 'ISG' egitimciUnvan, 1 EgitimciTuru
from dbo.IGU
union all
SELECT tanimi Tanimi1, Tanimi + ' (sp)' Tanimi2, TcKimlikNo egitimciTC, 'Sa�.Pers' egitimciUnvan, 1 EgitimciTuru
from dbo.DigerSaglikPersonel
union all
select max (egitimciAdiSoyadi) tanimi, max (egitimciAdiSoyadi) + ' (D�� E.)' Tanimi2, egitimciTC, max (egitimciUnvan), 2 egitimciTuru
from dbo.Personel_Egitim_Egitimci e
where not exists (select 1 from dbo.DoktorlarT d where d.TCKimlikNo = e.egitimciTC)
  and not exists (select 1 from dbo.IGU d where d.TCKimlikNo = e.egitimciTC)
  and not exists (select 1 from dbo.DigerSaglikPersonel d where d.TCKimlikNo = e.egitimciTC)
  and not exists (select 1 from dbo.DoktorlarT d where d.tanimi = e.egitimciAdiSoyadi)
  and not exists (select 1 from dbo.IGU d where d.tanimi = e.egitimciAdiSoyadi)
  and not exists (select 1 from dbo.DigerSaglikPersonel d where d.tanimi = e.egitimciAdiSoyadi)
group by egitimciTC
GO
-- de�i�iklik takip sistemi g�ncellemesi
exec sp_vw_sys_upd 'V ', 'dbo', 'Egitimci_view'
GO
COMMIT -- Rollback
GO
select * 
from Egitimci_view
