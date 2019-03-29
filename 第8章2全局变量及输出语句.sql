--[1]@@IDENTITY返回最后一条插入语句的标识值
USE E_Market
GO

--在没有插入数据之前 @@IDENTITY的值
SELECT @@IDENTITY
--向类别表中插入一条数据
INSERT INTO CommoditySort (SortName)
VALUES('家政服务')
--插入成功后@@IDENTITY的值
SELECT @@IDENTITY
--查询表检测数据
SELECT * FROM CommoditySort

--[2]@@ERROR

--没有错误的情况,错误号是0
SELECT @@ERROR

--修改违返检查约束的情况
UPDATE UserInfo SET UserPwd='123' WHERE UserId='bobo'

--出错后，错误号
PRINT @@ERROR

--输出语句SELECT与PRINT
--SELECT:结果是以表格的方式在结果窗口中显示
--PRINT:结查以“文本”的形式在消息窗口中显示


--使用SELECT输出命别名,    查询是SELECT语句的特殊用法
SELECT @@ERROR AS 错误号
SELECT 错误号=@@ERROR
SELECT @@ERROR  错误

--使用PRINT 输出，用“+”来连接, 要求“+”左右的类型相同或相兼容
PRINT '错误号'+@@ERROR
