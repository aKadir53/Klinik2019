BEGIN TRAN
GO
ALTER -- CREATE
  function dbo.PrepareXMLValue (@Value varchar (max))
returns varchar (MAX)
with schemabinding 
as
begin
  -- �� 20180219 xml i�erisinde hata veren �zel karakterlerin sembolleri ile de�i�tirilmesi
  return (Replace (Replace (Replace (replace (replace (@Value, '&', '&amp;'), '<', '&lt;'), '>', '&gt;'), '"', '&quot;'), '''', '&apos;'))
end
GO
exec sp_vw_sys_upd 'FN', 'dbo', 'PrepareXMLValue'
GO
COMMIT
GO
