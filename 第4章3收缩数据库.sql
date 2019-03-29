USE E_Market--指向当前所操作的数据库
GO
IF EXISTS(SELECT * FROM sysobjects WHERE name='Test')
DROP TABLE Test
CREATE TABLE Test
(
	UName nvarchar(50) NOT NULL,
	UPwd nvarchar(50) NOT NULL,
	UAddress nvarchar(50) NOT NULL
)
GO
--声明变量
DECLARE @x int ,@y int
--为变量赋初值
SET @x=100000
SET @y=0
WHILE(@y<@X)
	BEGIN
		INSERT INTO Test(UName,UPwd,UAddress)
		VALUES('张三'+CONVERT(varchar(5),@x),'123456','北京市昌平区')
		SET @y=@y+1
	END	
	
	GO
--查询表中的记录数
SELECT COUNT(*) FROM Test	
--删除表中的所有数据
TRUNCATE TABLE Test