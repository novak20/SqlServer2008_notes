--��ʲô����»��õ�������
--�ڽű��е�һЩ������뷢��������һ������֮ǰ�����Ƿֿ�������ʱ�򣬾���Ҫ�õ�������
USE master--ָ��ǰ�����������ݿ�
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

--����һ�ű�TestTable�ı�
CREATE TABLE TestTable
(
	uId int,
	uName varchar(20)
)
--TestTable����������ȥ�ˣ� master���ˣ�
--ԭ���Ǵ������ʱ��һ�µ�ǰ�����������ݿ���˭��
--��ǰ�Ĳ������ݿ��� master�����Ծʹ�������master��


--�Ľ���
USE master--ָ��ǰ�����������ݿ�
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
GO---��������GO

USE TestDB
GO
--����һ�ű�TestTable�ı�
CREATE TABLE TestTable
(
	uId int,
	uName varchar(20)
)
GO