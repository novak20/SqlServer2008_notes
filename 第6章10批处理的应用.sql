--在什么情况下会用到批处理？
--在脚本中的一些事情必须发生在另外一件事情之前或者是分开发生的时候，就需要用到批处理
USE master--指向当前所操作的数据库
CREATE DATABASE TestDB
ON PRIMARY
(	
	NAME='TestDB_data',
	FILENAME='H:\project\TestDB_data.mdf',
	SIZE=3MB
)
LOG ON
(
	NAME='TestDB_log',
	FILENAME='H:\project\TestDB_log.ldf',
	SIZE=3MB
)

--创建一张表TestTable的表
CREATE TABLE TestTable
(
	uId int,
	uName varchar(20)
)
--TestTable创建到哪里去了？ master中了？
--原因是创建表的时候看一下当前所操作的数据库是谁？
--当前的操作数据库是 master，所以就创建到了master中


--改进版
USE master--指向当前所操作的数据库
CREATE DATABASE TestDB
ON PRIMARY
(	
	NAME='TestDB_data',
	FILENAME='H:\project\TestDB_data.mdf',
	SIZE=3MB
)
LOG ON
(
	NAME='TestDB_log',
	FILENAME='H:\project\TestDB_log.ldf',
	SIZE=3MB
)
GO---加批处理GO

USE TestDB
GO
--创建一张表TestTable的表
CREATE TABLE TestTable
(
	uId int,
	uName varchar(20)
)
GO