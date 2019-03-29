--����ǰ���ݿ�����ΪE_Market���Ա���E_Market���ݿ��д�����
USE E_Market
GO

--������Ա��Ϣ��
IF EXISTS(SELECT * FROM sysobjects WHERE name='UserInfo')
DROP TABLE UserInfo
GO
CREATE TABLE UserInfo
(
	UserId VARCHAR(20) NOT NULL,--��Ա��
	UserPwd VARCHAR(50) NOT NULL,--��Ա����
	UserName VARCHAR(50) NOT NULL,--��Ա��
	Gender INT NOT NULL,--�Ա�
	Email VARCHAR(50),--����
	UserAddress VARCHAR(200),--��ϵ��ַ
	Phone VARCHAR(20) NOT NULL--��ϵ�绰
)
GO

--����������
IF EXISTS(SELECT * FROM sysobjects WHERE name='OrderInfo')
DROP TABLE OrderInfo
GO
CREATE TABLE OrderInfo
(
	OrderId INT IDENTITY(1,1) NOT NULL,--�������
	UserId VARCHAR(20) NOT NULL,--���������UserInfo�������
	CommodityId INT NOT NULL,--�����������Ʒ��Ϣ�������
	Amount INT NOT NULL,--����
	PayMoney BIGINT NOT NULL,--�����ܽ��
	PayWay VARCHAR(50) NOT NULL,--���ʽ
	OrderTime DATETIME NOT NULL,--�µ�����
	Confirm INT NOT NULL,--�Ƿ�ȷ���գ�1��ʾȷ�ϣ�0��ʾû��ȷ�ϣ�Ĭ��0
	SendGoods INT NOT NULL --�Ƿ񷢻���0û����1������Ĭ��0
)
GO
--ѧԱ��ҵ�ο���
--������Ʒ����
IF EXISTS(SELECT * FROM sysobjects WHERE name='CommoditySort')
DROP TABLE CommoditySort
GO
CREATE TABLE CommoditySort
(
	SortId  INT IDENTITY(1,1) NOT NULL,--��Ʒ����ţ��������Զ�����
	SortName VARCHAR(50) NOT NULL--��Ʒ�������
)
GO
--������Ʒ��Ϣ��
IF EXISTS(SELECT * FROM sysobjects WHERE name='CommodityInfo')
DROP TABLE CommodityInfo
GO
CREATE TABLE CommodityInfo
(
	CommodityId int IDENTITY(1,1) NOT NULL,--��Ʒ���
	SortId int NOT NULL,--��Ʒ����ţ����
	CommodityName varchar(50) NOT NULL,--��Ʒ����
	Picture image ,--��ƷͼƬ
	InPrice float NOT NULL,--��Ʒ������
	OutPrice float NOT NULL,--��Ʒ���ۼ۸�
	Amount int --��Ʒ�����	
)
GO


--��ѯ���ű�
SELECT * FROM CommoditySort
SELECT * FROM CommodityInfo
SELECT * FROM UserInfo
SELECT * FROM OrderInfo
