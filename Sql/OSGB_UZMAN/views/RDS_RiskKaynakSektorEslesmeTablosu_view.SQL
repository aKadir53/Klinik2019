BEGIN TRAN
GO
-- Sekt�rler ve risk kaynaklar� e�le�tirme tablosu view'�
ALTER -- CREATE -- DROP
  VIEW dbo.RDS_RiskKaynakSektorEslesmeTablosu_view
with schemabinding
AS
Select id, 
  T.sektorid, rs.tanimi Sektor, 
  T.Bolum Bolumid, RB.tanimi Bolum, 
  T.TehlikeKaynagi TehlikeKaynagiID, RTK.Tanimi TehlikeKaynagi,
  T.Tehlike, T.Risk_tanim
from dbo.RDS_RiskKaynakSektorEslesmeTablosu T
left outer join dbo.RDS_Sektorler RS on RS.kod = T.sektorid
left outer join dbo.RDS_RiskBolum RB on RB.kod = T.Bolum
left outer join dbo.RDS_TehlikeKaynak RTK on RTK.kod = T.TehlikeKaynagi
GO
-- de�i�iklik takip sistemi g�ncellemesi
exec sp_vw_sys_upd 'V ', 'dbo', 'RDS_RiskKaynakSektorEslesmeTablosu_view'
GO
COMMIT -- Rollback
GO
select * 
from RDS_RiskKaynakSektorEslesmeTablosu_view
