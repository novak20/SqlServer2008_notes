--[1]创建一个登录名pbMaster 密码123456
USE master
GO
--创建登录名
CREATE LOGIN pbMaster WITH PASSWORD='123456'
GO

--[2]创建数据库用户
USE E_Market
GO
--MasterDBUser是数据库用户名, pbMaster是登录名
CREATE USER MasterDBUser FOR LOGIN pbMaster
GO

--[3]赋予用户操作权限
USE E_Market
GO
--为表UserInfo赋予查看，新增，修改的操作权限 MasterDBUser数据库用户
GRANT SELECT,INSERT,UPDATE ON UserInfo TO MasterDBUser
GO

--[4]收回新增的操作权限
USE E_Market
GO
REVOKE INSERT ON UserInfo  TO MasterDBUser
GO