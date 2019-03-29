--【1】在循环中使用CONTINUE  ,遇到CONTINUE回到WHILE的条件判断处
--求1-10之间的偶数和
DECLARE @sum int ,@i int
SET @sum=0
SET @i=1
WHILE(@i<=10)
	BEGIN
		IF(@i%2=1)
			BEGIN
				SET @i=@i+1
				CONTINUE
			END
		ELSE
			BEGIN
				SET @sum=@sum+@i
				SET @i=@i+1
			END
	END--WHILE的结束
PRINT '1-10之间的偶数和为:'+CONVERT(varchar(2),@sum)
GO


--【2】在循环中使用BREAK
DECLARE @i int
SET @i=1
WHILE(@i<=10)
	BEGIN
		IF(@i=5)
			BEGIN
				BREAK   --退出循环结构，即使条件成立也不去判断了
			END
		ELSE
			SET @i=@i+1
	END
PRINT '@i的值为:@x='+CAST(@i AS varchar(2))
GO
--【3】RETURN实现退出功能
DECLARE @i int
SET @i=1
WHILE(@i<=10)
	BEGIN
		IF(@i=5)
			BEGIN
				RETURN     --退出功能可以执行批处理后的代码
			END
		ELSE
			SET @i=@i+1
	END
PRINT '@i的值为:@x='+CAST(@i AS varchar(2))
GO
PRINT '我是批处理后的代码'