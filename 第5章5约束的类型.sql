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
	EmployeeNo int NOT NULL,--Ա����
	EmployeeName varchar(20)	NOT NULL,--Ա������
	EmployeeId varchar(18), --���֤��
	Age int NOT NULL,--Ա�������� 
	PostId int NOT NULL,--���
	Country nvarchar(50) --����
) 
GO
USE Demo
GO
IF EXISTS(SELECT * FROM sysobjects WHERE name='Post')
DROP TABLE Post
CREATE TABLE Post
(	
	PostId int NOT NULL,--ְλ���
	PostName varchar(50) NOT NULL--ְλ����
)
GO