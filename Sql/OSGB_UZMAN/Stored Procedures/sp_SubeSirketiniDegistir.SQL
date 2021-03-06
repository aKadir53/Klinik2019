BEGIN TRAN
go
-- �ube ta��ma birle�tirme stored proc sp_SubeSirketiniDegistir
ALTER -- create 
  procedure dbo.sp_SubeSirketiniDegistir @iTip tinyint, @KaynakSirketKod varchar (10), @KaynakSubeKod varchar (2), @HedefSirketKod varchar (10), @HedefSubeKod varchar (2)
as
begin
  -- �mit �ZT�RK 2018-01-26 firma kartlar� aras�nda �ube transferi yapmaya yarayan sp
  if @@TRANCOUNT <= 0
  begin
    raiserror ('Bu prosed�r transaction i�inde �al���r', 18, 1)
    return (0)
  end

  set nocount on

  declare @iTipInt int = 0

  if @iTip = 0
  begin
    create table #t 
      (iTip int identity (1, 1) not null, 
       primary key clustered (iTip),
       RowsetHata bit,
       Rowset Bit,
       RowsetEditInput bit default 0,
       Aciklama varchar (200),
       HataMesaji varchar (200))
       
    insert into #t (RowsetHata, Rowset, Aciklama, HataMesaji) 
    Select 0 RowsetHata, 0 Rowset, '�ube Tan�mlar� Personel Kart� Ba�lant� Kontrolleri devre d��� b�rak�l�yor' Aciklama, null HataMesaji
    insert into #t (RowsetHata, Rowset, Aciklama, HataMesaji) 
    Select 0 RowsetHata, 0 Rowset, '�ube Tan�mlar� Saha G�zlem Raporlar� Ba�lant� Kontrolleri devre d��� b�rak�l�yor' Aciklama, null HataMesaji
    insert into #t (RowsetHata, Rowset, Aciklama, HataMesaji) 
    Select 0 RowsetHata, 0 Rowset, '�ube Tan�mlar� D�� Aktar�m Parametreleri Ba�lant� Kontrolleri devre d��� b�rak�l�yor' Aciklama, null HataMesaji
    insert into #t (RowsetHata, Rowset, Aciklama, HataMesaji) 
    Select 0 RowsetHata, 0 Rowset, '�ube Tan�mlar� G�ncelleniyor' Aciklama, null HataMesaji
    insert into #t (RowsetHata, Rowset, Aciklama, HataMesaji) 
    Select 0 RowsetHata, 0 Rowset, 'D�� Aktar�m Parametre Tablosu yeni �ube yap�s�na g�re g�ncelleniyor' Aciklama, null HataMesaji
    insert into #t (RowsetHata, Rowset, Aciklama, HataMesaji) 
    Select 0 RowsetHata, 0 Rowset, 'Personel Kay�tlar� yeni �ube yap�s�na g�re g�ncelleniyor' Aciklama, null HataMesaji
    insert into #t (RowsetHata, Rowset, Aciklama, HataMesaji) 
    Select 0 RowsetHata, 0 Rowset, 'Geli� (Muayene) Kay�tlar� yeni �ube yap�s�na g�re g�ncelleniyor' Aciklama, null HataMesaji
    insert into #t (RowsetHata, Rowset, Aciklama, HataMesaji) 
    Select 0 RowsetHata, 0 Rowset, 'Saha G�zlem Raporu kay�tlar� yeni �ube yap�s�na g�re g�ncelleniyor' Aciklama, null HataMesaji
    insert into #t (RowsetHata, Rowset, Aciklama, HataMesaji) 
    Select 0 RowsetHata, 0 Rowset, '�ube Tan�mlar� D�� Aktar�m Parametreleri Ba�lant� Kontrolleri aktifle�tiriliyor' Aciklama, null HataMesaji
    insert into #t (RowsetHata, Rowset, Aciklama, HataMesaji) 
    Select 0 RowsetHata, 0 Rowset, '�ube Tan�mlar� Saha G�zlem Raporlar� Ba�lant� Kontrolleri aktifle�tiriliyor' Aciklama, null HataMesaji
    insert into #t (RowsetHata, Rowset, Aciklama, HataMesaji) 
    Select 0 RowsetHata, 0 Rowset, '�ube Tan�mlar� Personel Kart� Ba�lant� Kontrolleri aktifle�tiriliyor' Aciklama, null HataMesaji

    set nocount off
    select * 
    from #t
    order by iTip
    set nocount on

    drop table #t
  end


  set @iTipInt = @iTipInt + 1

  if @iTip = @iTipInt or @iTip is Null
  begin
    alter table PersonelKart nocheck constraint FK_PersonelKart_PersonelKart
  end

  set @iTipInt = @iTipInt + 1

  if @iTip = @iTipInt or @iTip is Null
  begin
    alter table SahaGozlemRaporlari nocheck constraint FK_SahaGozlemRaporlari_SIRKET_SUBE_TNM
  end

  set @iTipInt = @iTipInt + 1

  if @iTip = @iTipInt or @iTip is Null
  begin
    alter table DisAktarim_Parametre nocheck constraint FK_DisAktarim_Parametre_SIRKET_SUBE_TNM
  end

  set @iTipInt = @iTipInt + 1

  if @iTip = @iTipInt or @iTip is Null
  begin
    update su
      SET su.SirketKod = @HedefSirketKod,
          su.SubeKod = @HedefSubeKod,
          su.SubeTanim = su.SubeTanim + '2'
    from SIRKET_SUBE_TNM su
    WHERE su.SirketKod = @KaynakSirketKod
      and su.SubeKod = @KaynakSubeKod
  end

  set @iTipInt = @iTipInt + 1

  if @iTip = @iTipInt or @iTip is Null
  begin
    update su
      SET su.SirketKod = @HedefSirketKod,
          su.SubeKod = @HedefSubeKod
    from DisAktarim_Parametre su
    WHERE su.SirketKod = @KaynakSirketKod
      and su.SubeKod = @KaynakSubeKod
  end

  set @iTipInt = @iTipInt + 1

  if @iTip = @iTipInt or @iTip is Null
  begin
    update su
      SET su.SirketKod = @HedefSirketKod,
          su.Sube = @HedefSubeKod
    from PersonelKart su
    WHERE su.SirketKod = @KaynakSirketKod
      and su.Sube = @KaynakSubeKod
  end

  set @iTipInt = @iTipInt + 1

  if @iTip = @iTipInt or @iTip is Null
  begin
    update g set g.SirketKod = pk.SirketKod
    from gelisler g
    inner join personelkart pk on pk.dosyaNo = g.dosyano
    where g.SirketKod <> pk.SirketKod
  end

  set @iTipInt = @iTipInt + 1

  if @iTip = @iTipInt or @iTip is Null
  begin
    update su
      SET su.FirmaKodu = @HedefSirketKod,
          su.SubeKod = @HedefSubeKod
    from SahaGozlemRaporlari su
    WHERE su.FirmaKodu = @KaynakSirketKod
      and su.SubeKod = @KaynakSubeKod
  end

  set @iTipInt = @iTipInt + 1

  if @iTip = @iTipInt or @iTip is Null
  begin
    alter table DisAktarim_Parametre check constraint FK_DisAktarim_Parametre_SIRKET_SUBE_TNM
  end

  set @iTipInt = @iTipInt + 1

  if @iTip = @iTipInt or @iTip is Null
  begin
    alter table SahaGozlemRaporlari check constraint FK_SahaGozlemRaporlari_SIRKET_SUBE_TNM
  end

  set @iTipInt = @iTipInt + 1

  if @iTip = @iTipInt or @iTip is Null
  begin
    alter table PersonelKart check constraint FK_PersonelKart_PersonelKart
  end

  set nocount off

end
GO
-- sp_SubeSirketiniDegistir de�i�iklik takip sistemi g�ncellemesi
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_SubeSirketiniDegistir'
GO
COMMIT--ROLLBACK
GO
