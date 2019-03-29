USE master--指向当前所操作的数据库
GO
--检测master系统数据库的视中sysdatabases中是否存在MyLibrary的记录
IF EXISTS(SELECT * FROM sysdatabases WHERE name='MyLibrary')
DROP DATABASE MyLibrary  --如果存在将其删除
GO
CREATE DATABASE MyLibrary--创建MyLibrary数据库
ON PRIMARY
(
	NAME='MyLibrary_data',  --逻辑文件名
	FILENAME='H:\project\MyLibrary_data.mdf',--物理文件名，存在磁盘上的位置，
	SIZE=3MB--初始大小
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
--创建图书表
IF EXISTS(SELECT * FROM sysobjects WHERE name='Book')
DROP TABLE Book
GO
CREATE TABLE Book
(
	BookId int IDENTITY(1001,1) NOT NULL,--图书编号，自动增长，标识种子从1001开始
	BookName varchar(50) NOT NULL,--书名
	Author varchar(20) NOT NULL,--作者
	Price money NOT NULL,--价格
	Amount int NOT NULL,--库存量
	PubComp varchar(100) ,--出版社
	PubDate datetime--出版时间
)

GO

--创建读者表
IF EXISTS(SELECT * FROM sysobjects WHERE name='Reader')
DROP TABLE Reader
GO
CREATE TABLE Reader
(
	ReaderId varchar(20) NOT NULL,  --读者编号
	ReaderName varchar(20) NOT NULL,  --读者姓名
	LendNum int ,  --借阅数量
	RAddress varchar(200)--读者地址
)
GO
--创建图书借阅表
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