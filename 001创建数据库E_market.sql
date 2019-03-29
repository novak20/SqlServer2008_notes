USE master--当前指向的操作的数据库
GO
IF EXISTS(SELECT * FROM sysdatabases WHERE name='E_Market')

DROP DATABASE E_Market--删除数据库
--创建数据库

CREATE DATABASE E_Market
ON PRIMARY --主文件组
(
	NAME='E_Market_data',--逻辑文件名
	--物理文件名
	FILENAME='H:\project\E_Market_data.mdf',
	SIZE=5MB,--初始大小
	MAXSIZE=100MB,--最大容量
	FILEGROWTH=15%--增长率
),
FILEGROUP FG   --创建了一个次文件组
(
	NAME='E_Market2_data',
	FILENAME='H:\project\E_Market2_data.ndf',
	SIZE=4MB,
	FILEGROWTH=10%
)
LOG ON --日志文件
(
	NAME='E_Market_log',
	FILENAME='H:\project\E_Market_log.ldf',
	SIZE=5MB,
	FILEGROWTH=0--未启用自动增长
),
(
	NAME='E_Market2_log',
	FILENAME='H:\project\E_Market2_log.ldf',
	SIZE=3MB,
	FILEGROWTH=10%,
	MAXSIZE=100MB
)
GO
SELECT *FROM sysdatabases 