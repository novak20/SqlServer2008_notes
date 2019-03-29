USE E_Market
GO
SET NOCOUNT ON--不显示受影响的行数
--
PRINT '查看转账之前的余额'
SELECT * FROM bank
GO

--开始事务（从此处开始，后续的T-SQL语句是一个整体）
--[1]开始事务
BEGIN TRAN
--[2]定义变量，用于累计事务执行过程中的错误
DECLARE @error int
--[3]给【2】中声明的变量赋值
SET @error=0
--[4]开始转账，张小虎的账户中减500
UPDATE bank SET currentMoney=currentMoney-300 WHERE customerName='张小虎'
--[5]累加错误
SET @error=@error+@@ERROR
----重复执行，【4】，【5】
--王小丽账户加500
UPDATE bank SET currentMoney =currentMoney+300 WHERE customerName='王小丽'
SET @error=@error+@@ERROR

PRINT '查看转账过程中的余额'
SELECT * FROM bank

--[6]使用IF..ELSE去判断累加的错误号，确定事务是提交还是回滚（撤消）
IF (@error>0)
	BEGIN
		PRINT '交易失败！回滚事务'
		ROLLBACK TRAN   --回滚事务
	END
ELSE
	BEGIN
		PRINT '交易成功，提交事务，写入硬盘!'
		COMMIT TRAN --提交事务
	END

--查看转账事务后的余额
PRINT '查看转账事务后的余额'
SELECT * FROM bank
GO
