--[1]常 用的系统存储过程
USE master
GO
EXECUTE sp_databases --列出当前的系统中的数据库

--改变数据库的名称
EXEC sp_renamedb @dbname='MyHotel',@newname='Hotel'
EXEC sp_renamedb 'Hotel' ,'MyHotel'

USE E_Market
GO
EXEC sp_help UserInfo  --查看UserInfo表中的所有信息


--[2]常 用的扩展存储过程 xp_cmdshell 
USE master
GO

EXEC sp_configure 'show advanced option',1 --启用xp_cmdshell的高级配置
GO
RECONFIGURE --重新配置
GO
EXEC sp_configure 'xp_cmdshell',1--打开xp_cmdshell，可以调用SQL之外的系统命令
GO
RECONFIGURE
GO
--使用xp_cmdshell在D盘创建myFile文件夹
EXEC xp_cmdshell 'mkdir d:\myFile',no_output--[no_output]是否输出返回信息
GO
