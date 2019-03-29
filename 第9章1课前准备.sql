--[1]创建数据表，并插入测试数据
USE E_Market
GO
--创建银行账户表bank
IF EXISTS(SELECT *FROM sysobjects WHERE name='bank')
DROP TABLE bank
GO
CREATE TABLE bank
(
	customerName char(20),--客户姓名
	currentMoney money--当前余额
)
GO
--添加约束，账户余额不能少于1元
ALTER TABLE bank
ADD CONSTRAINT CK_currentMoney CHECK(currentMoney>=1)
GO
--插入测试数据
INSERT INTO bank(customerName,currentMoney) VALUES('张小虎',500)
INSERT INTO bank(customerName,currentMoney) VALUES('王小丽',2000)
--查看结果
SELECT * FROM bank
GO
