USE master
GO
IF EXISTS (SELECT * FROM sysdatabases WHERE name='Demo')
DROP DATABASE Demo
CREATE DATABASE Demo
ON PRIMARY
(
	NAME='Demo_data',
	FILENAME='H:\project\Demo_data.mdf',
	SIZE=3MB
)
LOG ON
(
	NAME='Demo_log',
	FILENAME='H:\project\Demo_log.ldf',
	SIZE=3MB
)
GO
USE Demo
GO
IF EXISTS(SELECT * FROM sysobjects WHERE name='Employee')
DROP TABLE Employee
CREATE TABLE Employee
(
	EmployeeNo int NOT NULL,--员工号
	EmployeeName varchar(20)	NOT NULL,--员工姓名
	EmployeeId varchar(18), --身份证号
	Age int NOT NULL,--员工的年龄 
	PostId int NOT NULL,--外键
	Country nvarchar(50) --国籍
) 
GO
USE Demo
GO
IF EXISTS(SELECT * FROM sysobjects WHERE name='Post')
DROP TABLE Post
CREATE TABLE Post
(	
	PostId int NOT NULL,--职位编号
	PostName varchar(50) NOT NULL--职位名称
)
GO