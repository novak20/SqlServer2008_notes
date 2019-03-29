--模拟银行转账过程
--张小虎给王小丽转账500
USE E_Market
GO

--查看转账前的余额
SELECT * FROM bank

--【1】对张小虎的余额减500
UPDATE bank SET currentMoney=currentMoney-500 WHERE customerName='张小虎'
--【2】王小丽的余额加500
UPDATE bank SET currentMoney=currentMoney+500 WHERE customerName='王小丽'


--查看转账之后的余额
SELECT * FROM bank

GO