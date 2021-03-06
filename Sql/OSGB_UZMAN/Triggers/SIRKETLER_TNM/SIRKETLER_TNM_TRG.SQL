BEGIN TRAN
GO
ALTER  --  create
 TRIGGER [dbo].[SIRKETLER_TNM_TRG]
   ON  [dbo].[SIRKETLER_TNM]
   AFTER DELETE,INSERT, UPDATE
AS 
BEGIN
  set nocount on
  --firma kart� insert olmu�sa ve �ube tablosunda 00 kodlu yoksa ekler...
  --firma kart� bilgileri g�ncellendi�inde ayn� bilgi �ubede merkezdeki ile ayn� de�ere sahipse onlar� da de�i�tirir.
  if exists (select 1 from inserted)
  begin
    insert into SIRKET_SUBE_TNM (SirketKod, subeKod, subeTanim, BolgeMudurlukSicilNo, subeSiciNo)
    select SirketKod, '00' subeKod, 'MERKEZ' subeTanim, BolgeMudurlukSicilNo, IsyeriSicilNo
    from inserted s
    where not exists (select 1 from SIRKET_SUBE_TNM sb where sb.sirketKod = s.SirketKod and sb.subeKod = '00')
  end
  -- �� 20171024 firma kart� update olmu�sa.... 
  if exists (select 1 from inserted) and exists (select 1 from deleted)
  begin
    -- �� 20171024 ve b�lge m�d�rl�k sicil no de�i�mi�se 
    --             ve herhangi bir �ubenin b�lge m�d�rl�k sicil no de�eri ana firma kart�n�n eski sicil no de�eri ile ayn� ise 
    --             o �ubelerin b�lge m�d�rl�k sicil numaralar�n� merkezinki ile birlikte de�i�tir
    update Sube set sube.BolgeMudurlukSicilNo = ins.BolgeMudurlukSicilNo 
    from inserted ins
    inner join deleted del on del.SirketKod = ins.SirketKod
      and ISNULL (del.BolgeMudurlukSicilNo, '') <> IsNull (ins.BolgeMudurlukSicilNo, '')
    inner join SIRKET_SUBE_TNM sube on sube.sirketKod = del.SirketKod
      and ISNULL (sube.BolgeMudurlukSicilNo, '') = ISNULL (del.BolgeMudurlukSicilNo, '')

    -- �� 20171024 ve i�yeri sicili de�i�mi�se 
    --             ve herhangi bir �ubenin i�yeri sicili de�eri ana firma kart�n�n eski i�yeri sicili de�eri ile ayn� ise 
    --             o �ubelerin i�yeri sicililerini merkezinki ile birlikte de�i�tir
    update Sube set sube.subeSiciNo = ins.IsyeriSicilNo 
    from inserted ins
    inner join deleted del on del.SirketKod = ins.SirketKod
      and ISNULL (del.IsyeriSicilNo, '') <> IsNull (ins.IsyeriSicilNo, '')
    inner join SIRKET_SUBE_TNM sube on sube.sirketKod = del.SirketKod
      and ISNULL (sube.subeSiciNo, '') = ISNULL (del.IsyeriSicilNo, '')
  end
  set nocount off
END
GO
exec sp_vw_sys_upd 'TR', 'dbo', 'SIRKETLER_TNM_TRG'
GO
COMMIT
GO
