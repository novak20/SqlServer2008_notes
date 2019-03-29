--算术运算符
SELECT 3+4 AS 加的结果   --求和
GO
SELECT 5/2 AS 除的结果  --2.5,  /左右两边都是整数，结果是整数
GO
SELECT 5.0/2 AS 除的结果   --左右两边有一个是非整数，结果为非整数
GO
SELECT 5%2 AS 模    --5里面有2个2，还多一个，多的这一个就叫模或是余数
GO
--赋值运算符，  将等号的右边值赋给左边的变量或者是表达式
DECLARE @age int
SET @age=18
SELECT @age
GO
-- 比较运算符=,>,<,>=,<=,<>,!=(非92标准)
DECLARE @x int ,@y int
SET @x=8
SET @y=10
IF @x>=@y
  SELECT '@x的值大于等于@y的值'
ELSE 
	SELECT '@y的值大'
GO
--逻辑运算符 AND ,OR ,NOT 
--AND 左右结果都为true(真)的时候结果为true
--OR 左右结果有一个为true(真)结果为true
--NOT   
--NOT >AND >OR
--(1) not 6>4 false  (2)6>3 true   (1)and (2) false (3)3>5 false
IF(3>5 OR 6>3 AND NOT 6>4)
	SELECT 'TRUE(真)'
ELSE 
	SELECT 'FALSE(假)'
GO
--连接运算符 +
--+左右，都是数值型+就是算术运算符，
--+左右，都是字符型+就是连接运算符
--+左右，类型不一致，就需要类型转换
DECLARE @color varchar(4)
SET @color='白色'
SELECT '我最喜欢的颜色'+@color
GO
