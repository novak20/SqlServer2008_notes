--在BEGIN..END语句块中完成对两个变量的值进行交换
DECLARE @x int ,@y int ,@t int   --一次性声明了三个int类型的变量
SET @x=5
SET @y=10
PRINT'交换前两个数为:@x='+CAST(@x AS varchar(2))+' @y='+CAST(@y AS varchar(2))

--对两个数进行交换，需要使用第三变量@t
BEGIN
	SET @t=@x
	SET @x=@y
	SET @y=@t
END
PRINT '交换后两个数为:@x='+CONVERT(varchar(2),@x)+' @y='+CONVERT(varchar(2),@y)
PRINT'第三变量@t的值@t'+CONVERT(varchar(2),@t)
GO
--在本示例中BEGIN..END可以不写，完成效果相同，
--但是如果在分支结构或循环结构中语句个数超过1句就必须写上BEGIN...END
