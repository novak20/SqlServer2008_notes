--查看视图
SELECT * FROM vw_UserInfo

--使用T-SQL语句创建视图
--【1】视图的内容来源于一张表
USE E_Market
IF EXISTS(SELECT * FROM sysobjects WHERE name='vw_UserInfo' )
DROP VIEW vw_UserInfo
GO
CREATE VIEW vw_UserInfo --CREATE VIEW必须是批处理中的第一条语句
AS
 SELECT UserId AS 登录名,UserName AS 姓名,Email AS 邮箱,
 UserAddress AS 地址,Phone AS 电话 FROM UserInfo
GO

--【2】视图的内容来源于多张于，并且带查询条件
IF EXISTS(SELECT * FROM sysobjects WHERE name='vw_Commodity')
DROP VIEW vw_Commodity
GO
CREATE VIEW vw_Commodity
AS 
	SELECT TOP 100 PERCENT  C.CommodityName AS 商品的名称,
	S.SortName AS 商品类别,C.Amount AS 库存量
	FROM CommodityInfo AS C
	INNER JOIN CommoditySort AS S ON C.SortId=S.SortId
	WHERE S.SortName='图书音像'
	ORDER BY C.Amount DESC
GO
