begin tran
go
-- sp_DisAktarim_Personel sp'si
alter procedure dbo.sp_DisAktarim_Personel @iTip tinyint
as
begin
  -- �mit �ZT�RK 2018-01-15 �SG K�tip Excel'i aktar�m tablosundan doktor, i� g�venlik uzman�, firma, �ube ve kullan�c� kartlar�n�n a��lmas� vazifelerini �stlenmi� olan sp
  if @@TRANCOUNT <= 0
  begin
    raiserror ('Bu prosed�r transaction i�inde �al���r', 18, 1)
    return (0)
  end

  set nocount on
  if @iTip = 0
  begin
    create table #t 
      (iTip int identity (1, 1) not null, 
       primary key clustered (iTip),
       RowsetHata bit,
       Rowset Bit,
       Aciklama varchar (200),
       HataMesaji varchar (200))
       
    insert into #t (RowsetHata, Rowset, Aciklama, HataMesaji) 
    Select 1 RowsetHata, 1 Rowset, '��e G�revlendirmeler Ayarlan�yor' Aciklama, null HataMesaji

    set nocount off
    select * 
    from #t
    order by iTip
    set nocount on

    drop table #t
  end
  -- ��e g�revlendirme olanlar�n hizmet alan kurum ad�n� ve �ubelerini, tekrarlayan kay�t olarak g�rmemesi i�in doldur...
  if @iTip = 1 or @iTip is Null
  begin
    select 'BU SP HAZIR DE��L' HATA
  end
  set nocount off

end
go
exec sp_DisAktarim_Personel 0
go
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_DisAktarim_Personel'
go
rollback
go

