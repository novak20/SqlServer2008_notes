--COMMIT 对事务数的影响  （使用了嵌套事务）
PRINT @@TRANCOUNT   --在没有事务的时候查看一下事务数
BEGIN TRAN  --开始事务

	PRINT @@TRANCOUNT  --开始事务，@@trancount将被设置为1
	
	BEGIN TRAN  --开始第二个事务
	
		PRINT @@TRANCOUNT --事务数+1
		
	COMMIT TRAN  --提交第二个事务
	
	PRINT @@TRANCOUNT --事务数-1
	
COMMIT TRAN --提交第一个事务, 事务数-1

PRINT @@TRANCOUNT  
GO

--ROLLBACK（回滚\撤消）对事务数的影响
PRINT @@TRANCOUNT --没有事务的时候输出一下事务数

BEGIN TRAN  --开始一个事务
	PRINT @@TRANCOUNT    --事务数+1
	
	BEGIN TRAN  --开起第二个事务
			PRINT @@TRANCOUNT --事务数+1
ROLLBACK TRAN  --回滚事务，将事务数清0，所有活动的事务都将回滚
PRINT @@TRANCOUNT

GO