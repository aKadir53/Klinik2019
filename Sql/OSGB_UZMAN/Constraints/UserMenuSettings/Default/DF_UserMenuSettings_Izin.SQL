BEGIN TRAN
GO
((0))
GO
exec sp_vw_sys_upd 'D ', 'dbo', 'DF_UserMenuSettings_Izin'
GO
COMMIT
GO
