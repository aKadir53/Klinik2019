BEGIN TRAN
GO
(getdate())
GO
exec sp_vw_sys_upd 'D ', 'dbo', 'DF_GuncellemeLog_date_create'
GO
COMMIT
GO
