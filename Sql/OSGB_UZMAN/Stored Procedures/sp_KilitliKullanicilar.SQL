BEGIN TRAN
GO
 ALTER
  procedure [dbo].[sp_KilitliKullanicilar] @full bit = null
as
begin
  -- �� 20150511 sp_who2'den kim kimi kilitlemi� m�teselsilen g�steren sp. kilitli olmayan �stte, onun kilitlileri de kendi alt�nda listeleniyor...
  set nocount on
  create table #tmp 
    (RecID int identity (1, 1) not null,
     primary key clustered (RecID), 
     [SPID] int, 
     [Status] varchar (200), 
     [Login] varchar (200), 
     [HostName] varchar (200), 
     [BlkBy] varchar (10), 
     [DBName] varchar (100), 
     [Command] varchar (300), 
     [CPUTime] bigint, 
     [DiskIO] bigint, 
     [LastBatch] varchar (100), 
     [ProgramName] varchar (200), 
     [SPID2] int, 
     [REQUESTID] int)

  declare 
    @i int = 0,
    @DebugID int
  --sp_who2'yi al
  insert into #tmp exec sp_who2

  -- alanlar� trimle     
  update #tmp 
    set Status = LTRIM (RTRIM (Status))
  where not Status is Null

  update #tmp 
    set Login = LTRIM (RTRIM (Login))
  where not Login is Null

  update #tmp 
    set HostName = LTRIM (RTRIM (HostName))
  where not HostName is Null

  update #tmp 
    set DBName = LTRIM (RTRIM (DBName))
  where not DBName is Null

  update #tmp 
    set Command = LTRIM (RTRIM (Command))
  where not Command is Null

  update #tmp 
    set LastBatch = LTRIM (RTRIM (LastBatch))
  where not LastBatch is Null

  update #tmp 
    set ProgramName = LTRIM (RTRIM (ProgramName))
  where not ProgramName is Null

  -- kilitleyen ID alan�n� int'e �evirmek i�in bo� i�in kullan�lan stringleri null yap
  update #tmp 
    set BlkBy = null 
  where BlkBy = '  .'
  
  -- kilitleyen ID alan�n� int'e �evirmek i�in numerik olmayan stringleri null yap. bunu en ba�ta da yapsayd�k olurdu ama selectini al�r�z diye ay�rd�k
  update #tmp 
    set BlkBy = null 
  where not BlkBy is Null
    and IsNumeric (BlkBy) = 0
    
  -- son i�lem zaman�n�n ba��na y�l stringini ekle (datetime'a convert i�in)
  update #tmp 
    set LastBatch = REPLACE(replace(CAST (year (getdate ()) as varchar (4)) + '/' + LastBatch, '/', ''), '-', '')
    
  -- datetime'a �evir
  alter table #tmp Alter Column LastBatch datetime
  
  -- y�l ge�i�inde �nceki y�ldan kalan ama y�l� bu y�l olarak atanan kay�t varsa, bunlar�n tarihlerini 1 y�l geri al
  update #tmp 
    set LastBatch = DATEADD (yy, -1, LastBatch)
  where LastBatch > GETDATE ()

  --tip �evrimini dene
  alter table #tmp alter column BlkBy int

  --tip �evrimini dene
  alter table #tmp drop column SPID2
  
  -- index a�
  create nonclustered index IX_Tmp_1 on #tmp (SPID)
  create nonclustered index IX_Tmp_2 on #tmp (BlkBy)
  create nonclustered index IX_Tmp_3 on #tmp (HostName)

  -- s�ralama i�in kullanaca��m�z seviyelendirme alanlar�n� ve m�kerrerleri silerken kullanaca��m�z Identity alan� ekle
  alter table #tmp 
    add Sayi int, 
        LockLevel int, 
        LockSeqStr varchar (200)--, 
        --RecId int identity (1, 1) not null, 
        --constraint pk_tmpxx primary key clustered (RecID)

  -- debug i�in yedekle...
  if not exists (select 1 from sysobjects where type = 'U' and name = 'sp_KilitliKullanicilar_Debug') 
  begin
    create -- drop
      table sp_KilitliKullanicilar_Debug
    (RecID int identity (1, 1) not null,
     constraint PK_sp_KilitliKullanicilar_Debug primary key clustered (RecID),
     DebugID int,
     TransactionalRecID int,
     SPID int, 
     Status varchar (200),
     Login varchar (200),
     HostName varchar (200),
     BlkBy int,
     DBName varchar (100),
     Command varchar (300),
     CPUTime bigint,
     DiskIO bigint,
     LastBatch datetime,
     ProgramName varchar (200),
     REQUESTID int,
     Sayi int,
     LockLevel int,
     LockSeqStr varchar (200),
     Grouped bit,
     Filtered bit,
     FirstSet bit,
     DeletedIndex int,
     LevelIteration int)

    create nonclustered Index IX_sp_KilitliKullanicilar_Debug_DebugID ON sp_KilitliKullanicilar_Debug (DebugID)
  end

  update #tmp set Sayi = 1

  INSERT INTO sp_KilitliKullanicilar_Debug (DebugID, TransactionalRecID, SPID, Status, Login, HostName, BlkBy, DBName, Command, CPUTime, DiskIO, LastBatch, ProgramName, REQUESTID, Sayi, LockLevel, LockSeqStr)
  select (SELECT IsNull (MAX (DebugID), 0) + 1 from sp_KilitliKullanicilar_Debug with (tablock)) DebugID, RecID TransactionalRecID, SPID, Status, Login, HostName, BlkBy, DBName, Command, CPUTime, DiskIO, LastBatch, ProgramName, REQUESTID, Sayi, LockLevel, LockSeqStr 
  from #tmp
  order by RecID
  
  Set @DebugID = (Select DebugID from sp_KilitliKullanicilar_Debug where RecID = @@IDENTITY)
  
  -- birden �ok listelenen g�revlerin toplam�n� yeni sat�r olarak ekle...
  Insert Into #tmp (SPID, Status, Login, HostName, BlkBy, DBName, Command, CPUTime, DiskIO, LastBatch, ProgramName, REQUESTID, Sayi)
  Select SPID, Status, Login, HostName, BlkBy, DBName, Command, sum (CPUTime), sum (DiskIO), LastBatch, ProgramName, REQUESTID, SUM (Sayi) Sayi
  from #tmp 
  group by SPID, Status, Login, HostName, BlkBy, DBName, Command, LastBatch, ProgramName, REQUESTID
  having SUM (Sayi) > 1
  
  INSERT INTO sp_KilitliKullanicilar_Debug (DebugID, TransactionalRecID, SPID, Status, Login, HostName, BlkBy, DBName, Command, CPUTime, DiskIO, LastBatch, ProgramName, REQUESTID, Sayi, LockLevel, LockSeqStr, Grouped)
  select @DebugID, RecID TransactionalRecID, SPID, Status, Login, HostName, BlkBy, DBName, Command, CPUTime, DiskIO, LastBatch, ProgramName, REQUESTID, Sayi, LockLevel, LockSeqStr, 1
  from #tmp
  order by RecID

  -- kimse taraf�ndan kilitli olmayan, kimseyi kilitlemeyen g�revleri sil...
  if @full = 0 or @full is Null
  begin
    DElete T1
    from #tmp T1
    where T1.BlkBy is Null -- kilitli de�il
     and not exists (Select 1 from #tmp T2 where T2.BlkBy = T1.SPID) -- kimseyi kilitlememi�
  end
  
  -- birbirini refere eden g�revlerden biri i�in, level = 0 olacak sanal sat�r ekle...
  insert into #tmp (SPID, Status, Sayi) 
  select T1.SPID, 'SANAL 1', 1
  from #tmp t1
  inner join #tmp t2 on T2.SPID = T1.BlkBy
    and T2.BlkBy = T1.SpID
  inner join 
    (select BlkBy, Count (*) Sayi from #tmp group by BlkBy) T1A on T1A.BlkBy = T1.SpID
  inner join 
    (select BlkBy, Count (*) Sayi from #tmp group by BlkBy) T2A on T2A.BlkBy = T2.SpID
  where ((T1A.Sayi > T2A.Sayi
     or (T1A.Sayi = T2A.Sayi  
       and T1A.BlkBy > T2A.BlkBy)))
    and not exists (Select 1 from #tmp T3 where T3.SPID = T1.SPID and T3.BlkBy is Null)

  -- birbirini refere eden ��l� g�revlerden biri i�in, level = 0 olacak sanal sat�r ekle...
  insert into #tmp (SPID, Status, Sayi) 
  select T1.SPID, 'SANAL 3', 1
  from #tmp t1
  inner join #tmp t2 on T2.SPID = T1.BlkBy
  inner join #tmp t3 on T3.SPID = T2.BlkBy
    and T3.BlkBy = T1.SpID
  inner join 
    (select BlkBy, Count (*) Sayi from #tmp group by BlkBy) T1A on T1A.BlkBy = T1.SpID
  inner join 
    (select BlkBy, Count (*) Sayi from #tmp group by BlkBy) T2A on T2A.BlkBy = T2.SpID
  inner join 
    (select BlkBy, Count (*) Sayi from #tmp group by BlkBy) T3A on T3A.BlkBy = T3.SpID
  where ((T1A.Sayi > T2A.Sayi
      or (T1A.Sayi = T2A.Sayi  
        and T1A.BlkBy > T2A.BlkBy)))
    and ((T2A.Sayi > T3A.Sayi
      or (T2A.Sayi = T3A.Sayi  
        and T2A.BlkBy > T3A.BlkBy)))
    and not exists (Select 1 from #tmp T3 where T3.SPID = T1.SPID and T3.BlkBy is Null)

  insert into #tmp (SPID, Status, Sayi) 
  select T1.SPID, 'SANAL 4', 1
  from #tmp t1
  inner join #tmp t2 on T2.SPID = T1.BlkBy
  inner join #tmp t3 on T3.SPID = T2.BlkBy
  inner join #tmp t4 on T4.SPID = T3.BlkBy
    and T4.BlkBy = T1.SpID
  inner join 
    (select BlkBy, Count (*) Sayi from #tmp group by BlkBy) T1A on T1A.BlkBy = T1.SpID
  inner join 
    (select BlkBy, Count (*) Sayi from #tmp group by BlkBy) T2A on T2A.BlkBy = T2.SpID
  inner join 
    (select BlkBy, Count (*) Sayi from #tmp group by BlkBy) T3A on T3A.BlkBy = T3.SpID
  inner join 
    (select BlkBy, Count (*) Sayi from #tmp group by BlkBy) T4A on T4A.BlkBy = T4.SpID
  where ((T1A.Sayi > T2A.Sayi
     or (T1A.Sayi = T2A.Sayi  
       and T1A.BlkBy > T2A.BlkBy)))
    and ((T2A.Sayi > T3A.Sayi
     or (T2A.Sayi = T3A.Sayi  
       and T2A.BlkBy > T3A.BlkBy)))
    and not exists (Select 1 from #tmp T3 where T3.SPID = T1.SPID and T3.BlkBy is Null)


  -- birilerini kilitledi�i h�lde g�z�kmeyen g�revleri sanal olarak insert et
  insert into #tmp (SPID, Status, Sayi) 
  select BlkBy, 'SANAL 2', 1
  from #tmp T1
  where not blkby is Null
    and not exists (Select 1 from #tmp T2 where T2.SPID = T1.BlkBy)
  group by BlkBy

  INSERT INTO sp_KilitliKullanicilar_Debug (DebugID, TransactionalRecID, SPID, Status, Login, HostName, BlkBy, DBName, Command, CPUTime, DiskIO, LastBatch, ProgramName, REQUESTID, Sayi, LockLevel, LockSeqStr, Grouped, Filtered)
  select @DebugID, RecID TransactionalRecID, SPID, Status, Login, HostName, BlkBy, DBName, Command, CPUTime, DiskIO, LastBatch, ProgramName, REQUESTID, Sayi, LockLevel, LockSeqStr, 1, 1
  from #tmp
  order by RecID

  -- �ift olan kay�t kalmayana kadar k���k recID olan�n� sil (sonda grup toplaml�s� kalacak) (100'den fazla d�nmesin, belli ki hata var)
  --/*
  
  while (@i < 1000)
    and exists (

  Select SPID, Status, Login, HostName, BlkBy, DBName, Command, sum (CPUTime), sum (DiskIO), LastBatch, ProgramName, REQUESTID, SUM (Sayi) Sayi, MIN (RecID) RecID
  from #tmp 
  group by SPID, Status, Login, HostName, BlkBy, DBName, Command, LastBatch, ProgramName, REQUESTID
  having COUNT (*) > 1

    )
  begin
  
    Delete T1
    from #tmp T1
    inner join (
      Select SPID, Status, Login, HostName, BlkBy, DBName, Command, sum (CPUTime) CPUTime, sum (DiskIO) DiskIO, LastBatch, ProgramName, REQUESTID, SUM (Sayi) Sayi, MIN (RecID) RecID
      from #tmp 
      group by SPID, Status, Login, HostName, BlkBy, DBName, Command, LastBatch, ProgramName, REQUESTID
      having COUNT (*) > 1
    ) W on W.RecID = T1.RecID
    
    INSERT INTO sp_KilitliKullanicilar_Debug (DebugID, TransactionalRecID, SPID, Status, Login, HostName, BlkBy, DBName, Command, CPUTime, DiskIO, LastBatch, ProgramName, REQUESTID, Sayi, LockLevel, LockSeqStr, Grouped, Filtered, DeletedIndex)
    select @DebugID, RecID TransactionalRecID, SPID, Status, Login, HostName, BlkBy, DBName, Command, CPUTime, DiskIO, LastBatch, ProgramName, REQUESTID, Sayi, LockLevel, LockSeqStr, 1, 1, @i
    from #tmp
    order by RecID

    SET @i = @i + 1
  end
  --*/
  -- kilitli olmad��� halde tabloda kalanlar� (ba�kas�n� kilitleyenler) ba�lang�� seviyesi olarak ata.
  update #tmp 
    set LockLevel = 0, 
        LockSeqStr = replicate ('0', 3 - LEN (CAST (SPID as varchar (3)))) + CAST (SPID as varchar (3)) 
  where BlkBy is Null
  
  INSERT INTO sp_KilitliKullanicilar_Debug (DebugID, TransactionalRecID, SPID, Status, Login, HostName, BlkBy, DBName, Command, CPUTime, DiskIO, LastBatch, ProgramName, REQUESTID, Sayi, LockLevel, LockSeqStr, Grouped, Filtered, FirstSet)
  select @DebugID, RecID TransactionalRecID, SPID, Status, Login, HostName, BlkBy, DBName, Command, CPUTime, DiskIO, LastBatch, ProgramName, REQUESTID, Sayi, LockLevel, LockSeqStr, 1, 1, 1
  from #tmp
  order by RecID

  -- seviye bilgisi atanan kay�t kalmayana kadar, en son seviyedeki kayd�n (veya kay�tlar�n) kilitlediklerini bir �st seviye olarak g�ncelle
  set @i = 1
  while Exists (Select 1 from #tmp where Locklevel is Null) and (@i < 2000)
  begin
    Update T2 
      set T2.locklevel = W.LockLevel + 1,
          T2.LockSeqStr = T.LockSeqStr + replicate ('0', 3 - LEN (CAST (T2.SPID as varchar (3)))) + CAST (T2.SPID as varchar (3)) 
    from #tmp T
    inner join #tmp T2 on t2.BlkBy = T.SPID
      -- kendi kendini kilitleyenler i�in gerekti
      and T2.locklevel is Null
    inner join 
      (Select MAX (LockLevel) LockLevel from #tmp T where not Locklevel is Null) W on W.LockLevel = T.lockLevel

    INSERT INTO sp_KilitliKullanicilar_Debug (DebugID, TransactionalRecID, SPID, Status, Login, HostName, BlkBy, DBName, Command, CPUTime, DiskIO, LastBatch, ProgramName, REQUESTID, Sayi, LockLevel, LockSeqStr, Grouped, Filtered, FirstSet, LevelIteration)
    select @DebugID, RecID TransactionalRecID, SPID, Status, Login, HostName, BlkBy, DBName, Command, CPUTime, DiskIO, LastBatch, ProgramName, REQUESTID, Sayi, LockLevel, LockSeqStr, 1, 1, 1, @i
    from #tmp
    order by RecID
    set @i = @i + 1
  end
  -- buraya kadar gelebilmi�se debug kay�tlar�n sil
  delete from sp_KilitliKullanicilar_Debug where DebugID = @DebugID and @i < 2000
  
  set nocount off

  --  ESOFTUSERS'daki son login kayd�ndan o bilgisayardaki kullan�c�y� da bularak tabloda kalan datay� g�ster...
  select IsNull (cast (T1.BlkBy as varchar (4)), '') Kilitleyen, T1.SPID, IsNull (U1.UserId, '') ERPUserID, IsNull (U1.UserAd, '') ERPUserAd, 
    T1.HostName, T1.Status, T1.Login, T1.DBName, T1.Command, 
    T1.CPUTime, T1.DiskIO, T1.LastBatch, T1.ProgramName, 
    T1.REQUESTID, T1.Sayi, T1.RecID, T1.LockLevel, T1.LockSeqStr, @i FiltreDenemeSayi
  from #tmp T1
  left join Users U1 with (nolock) on U1.UserId = (Select top 1 UserID from ESOFTUSERS EU with (nolock) where EU.Computer = T1.HostName)
  order by case when @full = 0 or @full is Null then -1 else T1.Sayi end desc, T1.LockSeqStr, T1.LockLevel, T1.SPID, T1.BlkBy
  -- ge�ici tabloyu u�ur..
  drop table #tmp 
end
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_KilitliKullanicilar'
GO
COMMIT
GO
