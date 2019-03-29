USE E_Market-- ָ��ǰ�����������ݿ�
GO
--Ϊ�û���UserInfo���Լ��
ALTER TABLE UserInfo
ADD CONSTRAINT PK_UserId PRIMARY KEY (UserId),
	CONSTRAINT CK_UserPwd CHECK(LEN(UserPwd)>=6),
	CONSTRAINT CK_Gender CHECK(Gender=0 OR Gender=1),
	CONSTRAINT DF_Gender DEFAULT(0) FOR Gender,
	CONSTRAINT CK_Email CHECK(Email LIKE '%@%')
GO
--Ϊ��Ʒ��Ϣ��CommodityInfo���Լ��
ALTER TABLE CommodityInfo
ADD CONSTRAINT PK_CommodityId PRIMARY KEY (CommodityId)
GO
--Ϊ������OrderInfo���Լ��
ALTER TABLE OrderInfo
ADD CONSTRAINT PK_OrderId PRIMARY KEY (OrderId),
	CONSTRAINT FK_UserId FOREIGN KEY(UserId) REFERENCES UserInfo(UserId),
	CONSTRAINT FK_CommodityId FOREIGN KEY(CommodityId) REFERENCES CommodityInfo(CommodityId),
	CONSTRAINT DF_PayWay DEFAULT('��������') FOR PayWay,
	CONSTRAINT CK_Confirm CHECK(Confirm=0 OR Confirm=1),
	CONSTRAINT DF_Confirm DEFAULT(0) FOR Confirm,
	CONSTRAINT CK_SendGoods CHECK(SendGoods =0 OR SendGoods=1),
	CONSTRAINT DF_SendGoods DEFAULT(0) FOR SendGoods
	GO
	
	--[1]���Լ��ע�����ͣ����ȱ��������õ������е����ͣ����ȱ�����ȫһ��
	--[2]���Լ��ע�����õı��б�����������


--��ҵ�ο��𰸣�

--Ϊ��Ʒ�������Լ��
ALTER TABLE CommoditySort
ADD CONSTRAINT PK_SortId PRIMARY KEY (SortId)
GO
--ΪCommodityInfo�������û�������Լ��
ALTER TABLE CommodityInfo
ADD CONSTRAINT FK_SortId FOREIGN KEY (SortId) REFERENCES CommoditySort(SortId)
GO
