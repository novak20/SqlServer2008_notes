--��UserInfo�е�������ӵ�һ���±��У�UserAddress 
--Ҫ������±�������,��Ҫ�½�һ�ű����ұ��е�
--�еĸ�����˳���������ͱ�����UserInfo�е���������
--һ�� UserId, UserName,UserAddress,Phone
USE E_Market
GO
SELECT * FROM UserInfo

--��Ҫ�½�һ�ű�UserAddress
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
--��ѯ�½���UserAddress
SELECT * FROM UserAddress
--һ���Խ�UserInfo�е����ݲ��뵽�±�UserAddress��
INSERT INTO UserAddress(UId,Uname,UAddress,UPhone)
SELECT UserId,UserName,UserAddress,Phone
FROM UserInfo
GO
--INSERT INTO ...SELECT...FROM �Ƿ���ִ�ж��
--���ܣ���ΪUId���������������������Լ���������
--�����ִ�ж��


--��UserInfo�е�UserId,UserName,UserAddress,Phone
--���뵽�±��У�Ҫ���±��ǲ����ڣ��ڲ�������ݲ�
--ȥ����һ���±��ڴ����±�Ĺ��������һ���Զ�������
SELECT UserId,UserName,UserAddress,Phone,IDENTITY(INT,1,1) AS ID
INTO AddressList
FROM UserInfo
GO

--SELECT ..INTO ...FROM�ܲ���ִ�ж�Σ�
-- �𣺲��ܣ���Ϊִ�й�һ��֮�������ʹ�����