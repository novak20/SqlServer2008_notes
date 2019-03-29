USE E_Market
GO
--变量的声明
DECLARE @UserId varchar(10),@pwd varchar(10)
--给变量赋值
--SET
SET @UserId='bobo'
--SELECT
SELECT @pwd=UserPwd FROM UserInfo WHERE UserId=@UserId

PRINT @UserId
PRINT @pwd
/*GO
--不能使用的原因是，我们的@UserId声明在批处理里，那么批处理结果 ，变量就不能使用了
SELECT * FROM UserInfo WHERE UserId=@UserId
*/
GO
--使用SET和SELECT为变量赋值的区别
--【1】同时为多个变量进行赋值
/*DECLARE @name varchar(10),@province varchar(20)
--使用SET为这两个变量同时赋值  ---出错
--SET @name='张三',@province='吉林'
--使用SELECT为多个变量赋值     --允许
SELECT @name='张三',@province='吉林'
PRINT @name+' '+@province*/

--【2】表达式返回多个值的时候
DECLARE @province varchar(20)
--使用SET赋值语法没错，执行出错
--SET @province=( SELECT UserAddress FROM UserInfo)
--使用SELECT赋值，将表达式中的最后一个值赋给变量

SELECT @province=UserAddress FROM UserInfo
SELECT @province

SELECT UserAddress FROM UserInfo

--【3】表达式无返回值的时候
--SET对表达式无返回值的时候，将空值赋给变量
DECLARE @name varchar(20)
SET @name='张三'
--SET @name=(SELECT UserName FROM UserInfo WHERE UserId='yaya')
--SELECT @name
--SELECT 对表达式无返回值的时候，变量保持原值不变
SELECT @name=UserName FROM UserInfo WHERE UserId='yaya'
SELECT @name
