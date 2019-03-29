--将UserInfo中的数据添加到一个新表中，UserAddress 
--要求这个新表必须存在,需要新建一张表，而且表中的
--列的个数，顺序，数据类型必须与UserInfo中的数据类型
--一致 UserId, UserName,UserAddress,Phone
USE E_Market
GO
SELECT * FROM UserInfo

--需要新建一张表，UserAddress
IF EXISTS(SELECT * FROM sysobjects WHERE name='UserAddress')
DROP TABLE UserAddress
GO
CREATE TABLE UserAddress
(
	UId varchar(20) PRIMARY KEY(UId) NOT NULL ,
	Uname varchar(50) NOT NULL,
	UAddress varchar(200),
	UPhone varchar(20) NOT NULL
)
GO
--查询新建的UserAddress
SELECT * FROM UserAddress
--一次性将UserInfo中的数据插入到新表UserAddress中
INSERT INTO UserAddress(UId,Uname,UAddress,UPhone)
SELECT UserId,UserName,UserAddress,Phone
FROM UserInfo
GO
--INSERT INTO ...SELECT...FROM 是否能执行多次
--不能，因为UId是主键，如果不存在主键约束的情况，
--则可以执行多次


--将UserInfo中的UserId,UserName,UserAddress,Phone
--插入到新表中，要求新表是不存在，在插入的数据才
--去创建一张新表，在创建新表的过程中添加一个自动增长列
SELECT UserId,UserName,UserAddress,Phone,IDENTITY(INT,1,1) AS ID
INTO AddressList
FROM UserInfo
GO

--SELECT ..INTO ...FROM能不能执行多次？
-- 答：不能，因为执行过一次之后，这个表就存在了