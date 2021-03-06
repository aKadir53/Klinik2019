BEGIN TRAN
GO
-- fn_KelimeAl fonksiyonu, verilen string'in ilk birka� kelimesini al�p getirir alt�n tepside sunar
ALTER -- CREATE 
  FUNCTION [dbo].[fn_KelimeAl] (@KaynakIfade varchar (500), @KelimeSayisi int, @Ayraclar varchar (20), @Kumule bit)
returns varchar (500)
with schemabinding 
as
begin
  declare 
    @ret varchar (500) = '',
	@iKelimeSayisi int = 0,
	@KaynakIfadeTmp varchar (501),
	@iTmpPos int

  set @KaynakIfadeTmp = LTRIM (RTRIM (@KaynakIfade))
  -- farkl� ayra�lar i�in ayra�lar dizisindeki karakterleri bo�luk ile de�i�tirerek stringi yont.
  set @iKelimeSayisi = 1
  while @iKelimeSayisi <= len ('X' + @Ayraclar + 'X') - 2
  begin
    set @KaynakIfadeTmp = replace (@KaynakIfadeTmp, substring (@Ayraclar, @iKelimeSayisi, 1), ' ')
	set @iKelimeSayisi = @iKelimeSayisi + 1
  end

  SET @iKelimeSayisi = 0
	
  if substring (@KaynakIfadeTmp, Len ('X' + @KaynakIfadeTmp + 'X') - 2, 1) <> ' ' 
    set @KaynakIfadeTmp = @KaynakIfadeTmp + ' '

  while (@iKelimeSayisi < @KelimeSayisi) and (@KaynakIfadeTmp <> '')
  begin
    SET @iTmpPos = CHARINDEX (' ', @KaynakIfadeTmp)
	if @iTmpPos > 0
	begin
	  SET @ret = case when @Kumule = 1 then @REt + ' ' else '' end + substring (@KaynakIfadeTmp, 1, @iTmpPos - 1)
	  set @KaynakIfadeTmp = LTRIM (substring (@KaynakIfadeTmp, @iTmpPos + 1, len ('X' + @KaynakIfadeTmp + 'X') - 2))
	end
	else begin
	  SET @ret = @REt + ' ' + @KaynakIfadeTmp
	  set @KaynakIfadeTmp = ''
	end
	SET @iKelimeSayisi = @iKelimeSayisi + 1
  end
  return (@ret)
end
GO
-- fn_KelimeAl () fonksiyonu de�i�iklik takip sistemi g�ncellemesi
exec sp_vw_sys_upd 'FN', 'dbo', 'fn_KelimeAl'
GO
COMMIT
GO
