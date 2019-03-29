----【1】显示事务 BEGIN TRAN
USE E_Market
GO
SET NOCOUNT ON  --不显示受影响 的行数
--设置为显示事务模式
SET IMPLICIT_TRANSACTIONS OFF 
GO
PRINT '开始事务数:'+CAST(@@TRANCOUNT AS varchar(10))
GO
IF EXISTS(SELECT * FROM sysobjects WHERE name='Table1')
DROP TABLE  Table1
GO
CREATE TABLE Table1
(
	col1 int
) 
--向表中插入一条数据
INSERT INTO Table1 VALUES(1)
PRINT '使用显示事务数为:'+CAST (@@TRANCOUNT AS varchar(10))
--使用显示事务
BEGIN TRAN
PRINT '显示事务的个数:'+CAST(@@TRANCOUNT AS varchar(10))
COMMIT TRAN --提交事务
GO
PRINT '显示事务提交后事务的个数是:'+CAST(@@TRANCOUNT AS varchar(10))
GO


-------【2】设置隐式事务模式
PRINT '设置隐式事务模式'
SET IMPLICIT_TRANSACTIONS ON
--------未标识事务的开始
INSERT INTO Table1 VALUES(2)
PRINT '使用事务数:'+CAST(@@TRANCOUNT AS varchar(10))
COMMIT TRAN --提交事务，如果不提交那么将在执行下面任意一条语句中自动开启下一个事务
         /*所有的CREATE ,TRUNCATE TABLE,INSERT ,SELECT,ALTER TABLE,
         GRANT,UPDATE,所有的DROP ,ROVOKE,DELETE*/
         
PRINT '显示提交之后的事务数：'+CAST(@@TRANCOUNT AS varchar(10))
GO


--【3】自动提交事务
--当设置IMPLICIT_TRANSACTIONS OFF就恢复成了自动提交模式

SET IMPLICIT_TRANSACTIONS OFF --设置为显示事务模式，恢复成了自动提交模式
GO

INSERT INTO Table1 VALUES(3)   --没有错误自动提交
PRINT @@TRANCOUNT

INSERT INTO Table1 VALUES(5,3)   --出现错误，自动回滚
PRINT @@TRANCOUNT
