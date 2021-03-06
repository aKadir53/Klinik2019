BEGIN TRAN
GO
ALTER FUNCTION [dbo].[RakamOku] (@Sayi bigint)
RETURNS nvarchar(300)
AS
BEGIN
DECLARE @n int,@i int,@UcHane int,@Yed nvarchar(300),@UcluHane nvarchar(300),
 @HangiBasamak int,@Negatif bit,@BasamakYaz bit,@SONUC nvarchar(300)
  SET @n=9
  SET @SONUC=NULL
  BEGIN
    SET @SONUC=''
    IF (@Sayi=0) SET @SONUC='S�f�r' ELSE BEGIN
      IF (@Sayi<0) BEGIN
        SET @Negatif=1
        SET @Sayi=-@Sayi
      END ELSE SET @Negatif=0
      SET @HangiBasamak=0;
      WHILE (@Sayi>0) BEGIN
        SET @UcHane=@Sayi % 1000
        SET @Sayi=@Sayi / 1000
        IF (@UcHane>0) SET @BasamakYaz=1 ELSE SET @BasamakYaz=0
        IF ((@HangiBasamak=1) and (@UcHane=1)) SET @UcluHane=''
        ELSE BEGIN
          SET @UcluHane=''
          SET @i=@UcHane%10 SET @UcHane=@UcHane/10
          SET @UcluHane=CASE @i
            WHEN 1 THEN 'Bir'
            WHEN 2 THEN '�ki'
            WHEN 3 THEN '��'
            WHEN 4 THEN 'D�rt'
            WHEN 5 THEN 'Be�'
            WHEN 6 THEN 'Alt�'
            WHEN 7 THEN 'Yedi'
            WHEN 8 THEN 'Sekiz'
            WHEN 9 THEN 'Dokuz'
          ELSE '' END
          SET @i=@UcHane%10 SET @UcHane=@UcHane/10
          SET @UcluHane=CASE @i
            WHEN 1 THEN 'On'
            WHEN 2 THEN 'Yirmi'
            WHEN 3 THEN 'Otuz'
            WHEN 4 THEN 'K�rk'
            WHEN 5 THEN 'Elli'
            WHEN 6 THEN 'Altm��'
            WHEN 7 THEN 'Yetmi�'
            WHEN 8 THEN 'Seksen'
            WHEN 9 THEN 'Doksan'
          ELSE '' END+@UcluHane
          SET @i=@UcHane%10 --SET @UcHane=@UcHane/10
          IF (@i>0) SET @Yed='Y�z' ELSE SET @Yed=''
          IF (@i>1) SET @Yed=CASE @i
            WHEN 1 THEN 'Bir'
            WHEN 2 THEN '�ki'
            WHEN 3 THEN '��'
            WHEN 4 THEN 'D�rt'
            WHEN 5 THEN 'Be�'
            WHEN 6 THEN 'Alt�'
            WHEN 7 THEN 'Yedi'
            WHEN 8 THEN 'Sekiz'
            WHEN 9 THEN 'Dokuz'
          ELSE '' END+@Yed
          SET @UcluHane=@Yed+@UcluHane;
        END
        IF (@BasamakYaz=1) SET @SONUC=@UcluHane+CASE @HangiBasamak
          WHEN 1 THEN 'Bin'
          WHEN 2 THEN 'Milyon'
          WHEN 3 THEN 'Milyar'
          WHEN 4 THEN 'Trilyon'
          WHEN 5 THEN 'Katrilyon'
          WHEN 6 THEN 'Kentrilyon'
          WHEN 7 THEN 'Sekstilyon'
          WHEN 8 THEN 'Septilyon'
          WHEN 9 THEN 'Oktilyon'
        ELSE '' END+@SONUC
        SET @HangiBasamak=@HangiBasamak+1
      END
      IF (@Negatif=1) SET @SONUC='Eksi'+@SONUC
    END
  END
  RETURN @SONUC
END
GO
exec sp_vw_sys_upd 'FN', 'dbo', 'RakamOku'
GO
COMMIT
GO
