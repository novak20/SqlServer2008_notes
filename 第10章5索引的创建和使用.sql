USE E_Market
GO
--举例，为用户表 UserInfo中的UserAddress地址列创建(非聚集)索引
IF EXISTS(SELECT * FROM sysindexes WHERE name='IX_UserInfo_UserAddress')
DROP INDEX UserInfo.IX_UserInfo_UserAddress  --表名.索引名
GO
CREATE NONCLUSTERED INDEX IX_UserInfo_UserAddress
ON UserInfo(UserAddress)   --ON  表名(列名)
WITH FILLFACTOR=30
GO

--如何使用索引
--用户地址是河北的有哪些
SELECT * FROM UserInfo
   WITH(INDEX=IX_UserInfo_UserAddress)
WHERE UserAddress LIKE '%河北%'