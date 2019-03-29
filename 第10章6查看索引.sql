--查看索引的方式
--【1】使用SSMS管理器查看索引
--【2】使用系统的存储过程查看索引
USE E_Market
GO
EXEC sp_helpindex UserInfo

--【3】使用视图查看索引
USE E_Market
GO
SELECT * FROM sysindexes WHERE name='IX_UserInfo_UserAddress'
