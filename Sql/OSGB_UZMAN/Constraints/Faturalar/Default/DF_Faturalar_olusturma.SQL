BEGIN TRAN
GO
(getdate())
GO
exec sp_vw_sys_upd 'D ', 'dbo', 'DF_Faturalar_olusturma'
GO
COMMIT
GO
