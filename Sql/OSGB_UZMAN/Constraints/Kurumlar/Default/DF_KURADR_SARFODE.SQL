BEGIN TRAN
GO
('F')
GO
exec sp_vw_sys_upd 'D ', 'dbo', 'DF_KURADR_SARFODE'
GO
COMMIT
GO
