BEGIN TRAN
GO
CREATE VIEW dbo.isDurum_View
AS
SELECT        SLB AS Kod, SLT AS tanimi
FROM            dbo.Parametreler
WHERE        (SLK = 'ID')
GO
-- değişiklik takip sistemi güncellemesi
exec sp_vw_sys_upd 'V ', 'dbo', 'isDurum_View'
GO
COMMIT -- Rollback
GO
select * 
from isDurum_View
