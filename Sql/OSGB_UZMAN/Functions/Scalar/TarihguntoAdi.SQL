BEGIN TRAN
GO
ALTER FUNCTION [dbo].[TarihguntoAdi] (@tarih datetime)
RETURNS varchar(50)
AS
BEGIN
  declare @durum varchar(50)

  select @durum = (case datepart(dw,@tarih)
  when 1 then 'PAZAR'
  when 2 then 'PAZARTES�'
  when 3 then 'SALI'
  when 4 then '�AR�AMBA'
  when 5 then 'PER�EMBE'
  when 6 then 'CUMA'
  when 7 then 'CUMARTES�'

else '' end)


return(@durum)

end
GO
exec sp_vw_sys_upd 'FN', 'dbo', 'TarihguntoAdi'
GO
COMMIT
GO
