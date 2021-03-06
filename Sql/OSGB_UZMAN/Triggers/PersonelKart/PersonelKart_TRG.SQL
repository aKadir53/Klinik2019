BEGIN TRAN
GO
ALTER -- Create
 TRIGGER [dbo].[PersonelKart_TRG]
   ON  [dbo].[PersonelKart]
   AFTER DELETE,INSERT, UPDATE
AS 
BEGIN
  set nocount on
  -- �� 20180102 veritaban�na yaz�lan varchar tarihleri tarih saat tipinde �evirip klon alana yazmaya �al��arak bir nevi bozuk tarih kontrol� / engellemesi yap�yoruz.
  -- ilk grup kontrol, bir alan�n g�ncellenmesi di�erinin g�ncellenmemesi durumunda g�ncellenenden g�ncellenmeyeni hesapl�yor.
  if Update (DOGUMTARIHI) and not Update (DOGUMTARIHIdt)
    update pk SET pk.DOGUMTARIHIdt = cast (CASE WHEN LTRIM (RTRIM (ISNULL (pk.DOGUMTARIHI, '')))='' THEN NULL ELSE LTRIM (RTRIM (ISNULL (pk.DOGUMTARIHI, ''))) END as datetime)
    from  [dbo].[PersonelKart] pk
    inner join inserted i on i.SirketKod = pk.SirketKod
      and i.Sube = pk.Sube
      and i.DosyaNo = pk.DosyaNo
  if Update (BASLANGIC) and not Update (BASLANGICdt)
    update pk SET pk.BASLANGICdt = cast (CASE WHEN LTRIM (RTRIM (ISNULL (pk.BASLANGIC, '')))='' THEN NULL ELSE LTRIM (RTRIM (ISNULL (pk.BASLANGIC, ''))) END as datetime)
    from  [dbo].[PersonelKart] pk
    inner join inserted i on i.SirketKod = pk.SirketKod
      and i.Sube = pk.Sube
      and i.DosyaNo = pk.DosyaNo
  if Update (DOGUMTARIHIdt) and not Update (DOGUMTARIHI)
    update pk SET pk.DOGUMTARIHI = convert (varchar, pk.DOGUMTARIHIdt, 112)
    from  [dbo].[PersonelKart] pk
    inner join inserted i on i.SirketKod = pk.SirketKod
      and i.Sube = pk.Sube
      and i.DosyaNo = pk.DosyaNo
  if Update (BASLANGICdt) and not Update (BASLANGIC)
    update pk SET pk.BASLANGIC = convert (varchar, pk.BASLANGICdt, 112)
    from  [dbo].[PersonelKart] pk
    inner join inserted i on i.SirketKod = pk.SirketKod
      and i.Sube = pk.Sube
      and i.DosyaNo = pk.DosyaNo
  -- insert olmu�sa insert listesinde olmasa bile ikisini de g�ncellenmi� sayd��� i�in, 
  if not exists (select 1 from deleted)
  begin
    if Update (DOGUMTARIHI) and Update (DOGUMTARIHIdt)
      update pk SET pk.DOGUMTARIHIdt = cast (CASE WHEN LTRIM (RTRIM (ISNULL (pk.DOGUMTARIHI, '')))='' THEN NULL ELSE LTRIM (RTRIM (ISNULL (pk.DOGUMTARIHI, ''))) END as datetime)
      from  [dbo].[PersonelKart] pk
      inner join inserted i on i.SirketKod = pk.SirketKod
        and i.Sube = pk.Sube
        and i.DosyaNo = pk.DosyaNo
	  where PK.DOGUMTARIHIdt IS NULL
    if Update (BASLANGIC) and Update (BASLANGICdt)
      update pk SET pk.BASLANGICdt = cast (CASE WHEN LTRIM (RTRIM (ISNULL (pk.BASLANGIC, '')))='' THEN NULL ELSE LTRIM (RTRIM (ISNULL (pk.BASLANGIC, ''))) END as datetime)
      from  [dbo].[PersonelKart] pk
      inner join inserted i on i.SirketKod = pk.SirketKod
        and i.Sube = pk.Sube
        and i.DosyaNo = pk.DosyaNo
	  where PK.BASLANGICdt IS NULL
    if Update (DOGUMTARIHIdt) and Update (DOGUMTARIHI)
      update pk SET pk.DOGUMTARIHI = convert (varchar, pk.DOGUMTARIHIdt, 112)
      from  [dbo].[PersonelKart] pk
      inner join inserted i on i.SirketKod = pk.SirketKod
        and i.Sube = pk.Sube
        and i.DosyaNo = pk.DosyaNo
	  where PK.DOGUMTARIHI IS NULL
    if Update (BASLANGICdt) and Update (BASLANGIC)
      update pk SET pk.BASLANGIC = convert (varchar, pk.BASLANGICdt, 112)
      from  [dbo].[PersonelKart] pk
      inner join inserted i on i.SirketKod = pk.SirketKod
        and i.Sube = pk.Sube
        and i.DosyaNo = pk.DosyaNo
	  where PK.BASLANGIC IS NULL
  end
  -- personelin �irketi de�i�mi�se geli�ler tablosundaki kay�tlar�ndaki �irket kodunu da g�ncelle.
  update g 
    Set g.SirketKod = i.SirketKod
  from inserted i
  inner join deleted d on d.dosyaNo = i.DosyaNo
  inner join Gelisler g on g.DosyaNo = i.DosyaNo
  where i.SirketKod <> d.SirketKod
    and IsNull (g.SirketKod, '') <> IsNull (i.SirketKod, '')

  set nocount off
END
GO
exec sp_vw_sys_upd 'TR', 'dbo', 'PersonelKart_TRG'
GO
COMMIT
GO
