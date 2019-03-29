USE E_Market-- 指向当前所操作的数据库
GO
--为用户表UserInfo添加约束
ALTER TABLE UserInfo
ADD CONSTRAINT PK_UserId PRIMARY KEY (UserId),
	CONSTRAINT CK_UserPwd CHECK(LEN(UserPwd)>=6),
	CONSTRAINT CK_Gender CHECK(Gender=0 OR Gender=1),
	CONSTRAINT DF_Gender DEFAULT(0) FOR Gender,
	CONSTRAINT CK_Email CHECK(Email LIKE '%@%')
GO
--为商品信息表CommodityInfo添加约束
ALTER TABLE CommodityInfo
ADD CONSTRAINT PK_CommodityId PRIMARY KEY (CommodityId)
GO
--为订单表OrderInfo添加约束
ALTER TABLE OrderInfo
ADD CONSTRAINT PK_OrderId PRIMARY KEY (OrderId),
	CONSTRAINT FK_UserId FOREIGN KEY(UserId) REFERENCES UserInfo(UserId),
	CONSTRAINT FK_CommodityId FOREIGN KEY(CommodityId) REFERENCES CommodityInfo(CommodityId),
	CONSTRAINT DF_PayWay DEFAULT('网上银行') FOR PayWay,
	CONSTRAINT CK_Confirm CHECK(Confirm=0 OR Confirm=1),
	CONSTRAINT DF_Confirm DEFAULT(0) FOR Confirm,
	CONSTRAINT CK_SendGoods CHECK(SendGoods =0 OR SendGoods=1),
	CONSTRAINT DF_SendGoods DEFAULT(0) FOR SendGoods
	GO
	
	--[1]外键约束注意类型，长度必须与引用的主键列的类型，长度必须完全一致
	--[2]外键约束注意引用的表中必须有主键列


--作业参考答案，

--为商品类别表添加约束
ALTER TABLE CommoditySort
ADD CONSTRAINT PK_SortId PRIMARY KEY (SortId)
GO
--为CommodityInfo表中添加没有添完的约束
ALTER TABLE CommodityInfo
ADD CONSTRAINT FK_SortId FOREIGN KEY (SortId) REFERENCES CommoditySort(SortId)
GO
