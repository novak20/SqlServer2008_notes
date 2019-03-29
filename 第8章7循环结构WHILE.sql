--使用循环求1-10之间的累加和
DECLARE @sum int ,@i int 
SET @sum=0
SET @i=1
--使用循环结构累加求和
WHILE(@i<=10)
	BEGIN
		SET @sum=@i+@sum
		SET @i=@i+1
	END
PRINT '1-10之间的累加和为:'+CAST(@sum AS varchar(4))
GO