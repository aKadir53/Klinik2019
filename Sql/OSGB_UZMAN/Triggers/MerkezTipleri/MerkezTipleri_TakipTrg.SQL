BEGIN TRAN
go
CREATE -- create -- drop
 TRIGGER [dbo].[MerkezTipleri_TakipTrg]
   ON  [dbo].[MerkezTipleri]
   AFTER DELETE,INSERT, UPDATE
AS 
BEGIN
  set nocount on
  declare 
    @TableName varchar (200) = 'MerkezTipleri',
    @KeyFields varchar (200) = 'kod'

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select 
    @TableName, @KeyFields, dbo.fn_SQLIntValueForString (kod, 0), 'D', 0,
    'DELETE FROM dbo.MerkezTipleri where kod' + dbo.fn_SQLIntValueForString (kod, 1) 
  from deleted d
  where not exists (select 1 from inserted i where d.kod = i.kod)

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select 
    @TableName, @KeyFields, dbo.fn_SQLIntValueForString (kod, 0), 'I', 1,
    'IF NOT EXISTS (SELECT 1 from dbo.MerkezTipleri where kod' + dbo.fn_SQLIntValueForString (kod, 1) +')'+char (13) + char (10) + 
    'insert into dbo.MerkezTipleri (kod, tanimi)'+char (13) + char (10) + 
    'Select '+ dbo.fn_SQLIntValueForString (kod, 0) +', ' + 
    dbo.fn_SQLStrValueForString (tanimi, 0)
  from inserted i
  where not exists (select 1 from deleted d where d.kod = i.kod)

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select @TableName, @KeyFields, dbo.fn_SQLIntValueForString (i.kod, 0), 'U', 0,
    'Update MerkezTipleri'+char (13) + char (10) +'  SET '+char (13) + char (10) + '    ' +
    REVERSE (SUBSTRING (REvERSE (case when dbo.fn_SQLStrValueForString (d.tanimi, 0) <> dbo.fn_SQLStrValueForString (i.tanimi, 0) then 'tanimi = ' + dbo.fn_SQLStrValueForString (i.tanimi, 0) + ',' else '' end), 2, 8000)) +
    char (13) + char (10) + 'WHERE kod' + dbo.fn_SQLIntValueForString (i.kod, 1) 
  from inserted i
  inner join deleted d on d.kod = i.kod
  inner join 
    (SELECT kod
     FROM
     (select kod, tanimi
      from
      (select -1 x, kod, tanimi
       from deleted
       union all
       select 1 x, kod, tanimi
       from inserted) U
      group by kod, tanimi
      having sum (x) <> 0)w
     group by kod) u on u.kod = i.kod
  set nocount off
END
go
exec sp_vw_sys_upd 'TR', 'dbo', 'MerkezTipleri_TakipTrg'
go
COMMIT
GO
