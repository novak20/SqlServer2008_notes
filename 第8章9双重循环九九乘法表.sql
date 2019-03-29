DECLARE @x int    --@x控制行数
DECLARE @y int  --@y每行打印输出的个数
SET @x=1
SET @y=1
DECLARE @str varchar(100) --用来输出的字符串
SET @str=''
PRINT '***************************九九乘法表***********************************'
WHILE(@x<=9)   --行数
	BEGIN
		WHILE(@y<=@x)  --个数
			BEGIN
				SET @str=@str+CONVERT(varchar(2),@x)+'*'+CONVERT(varchar(2),@y)+'='+CONVERT(varchar(2),@y*@x)+'  '
				SET @y=@y+1
			END--内层循环的结束
		PRINT @str
		--再进行下一轮循环之前将字符串清空
		SET @str=''
		SET @x=@x+1
		SET @y=1
		PRINT ''
		
	END
GO