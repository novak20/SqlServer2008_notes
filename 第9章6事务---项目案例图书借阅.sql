USE master--ָ��ǰ�����������ݿ�
GO
--���masterϵͳ���ݿ������sysdatabases���Ƿ����MyLibrary�ļ�¼
IF EXISTS(SELECT * FROM sysdatabases WHERE name='MyLibrary')
DROP DATABASE MyLibrary  --������ڽ���ɾ��
GO
CREATE DATABASE MyLibrary--����MyLibrary���ݿ�
ON PRIMARY
(
	NAME='MyLibrary_data',  --�߼��ļ���
	FILENAME='H:\project\MyLibrary_data.mdf',--�����ļ��������ڴ����ϵ�λ�ã�
	SIZE=3MB--��ʼ��С
)
LOG ON
(
	
	NAME='MyLibrary_log',
	FILENAME='H:\project\MyLibrary_log.ldf',
	SIZE=3MB

)
GO
USE MyLibrary
GO
--����ͼ���
IF EXISTS(SELECT * FROM sysobjects WHERE name='Book')
DROP TABLE Book
GO
CREATE TABLE Book
(
	BookId int IDENTITY(1001,1) NOT NULL,--ͼ���ţ��Զ���������ʶ���Ӵ�1001��ʼ
	BookName varchar(50) NOT NULL,--����
	Author varchar(20) NOT NULL,--����
	Price money NOT NULL,--�۸�
	Amount int NOT NULL,--�����
	PubComp varchar(100) ,--������
	PubDate datetime--����ʱ��
)

GO

--�������߱�
IF EXISTS(SELECT * FROM sysobjects WHERE name='Reader')
DROP TABLE Reader
GO
CREATE TABLE Reader
(
	ReaderId varchar(20) NOT NULL,  --���߱��
	ReaderName varchar(20) NOT NULL,  --��������
	LendNum int ,  --��������
	RAddress varchar(200)--���ߵ�ַ
)
GO
--����ͼ����ı�
IF EXISTS(SELECT * FROM sysobjects WHERE name='Borrow')
DROP TABLE Borrow
GO
CREATE TABLE Borrow
(
	ID int IDENTITY(1,1) NOT NULL,
	BookId int NOT NULL,
	ReaderId varchar(20) NOT NULL,
	LendDate datetime NOT NULL,
	WillDate datetime NOT NULL,
	
)