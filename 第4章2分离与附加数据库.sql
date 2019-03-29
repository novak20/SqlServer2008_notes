USE master--指向当前所操作的数据库
GO
EXEC sp_detach_db @dbname=E_Market--分离数据库
GO

USE master
GO
EXEC sp_attach_db @dbname=E_Market,--附加数据库
@filename1='H:\project\E_Market_data.mdf',
@filename2='H:\project\E_Market2_data.ndf',
@filename3='H:\project\E_Market_log.ldf',
@filename4='H:\project\E_Market2_log.ldf'
GO