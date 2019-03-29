USE E_Market
GO
--查询购买苹果Iphone6的客户的姓名和住址
--【1】多表连接查询

SELECT U.UserName AS 用户姓名,U.UserAddress AS 地址
 FROM CommodityInfo AS C
INNER JOIN OrderInfo AS O ON C.CommodityId=O.CommodityId
INNER JOIN UserInfo AS U ON O.UserId=U.UserId
WHERE C.CommodityName='苹果Iphone6'

--【2】使用子查询
--根据已知项去查询未知项
--1、根据商品名称查询商品编号
SELECT CommodityId FROM CommodityInfo 
WHERE CommodityName='苹果Iphone6'
--2、根据1中得到的商品编号去查询购买用户的编号
SELECT UserId FROM OrderInfo WHERE CommodityId=
(
	SELECT CommodityId FROM CommodityInfo 
	WHERE CommodityName='苹果Iphone6'
)
--3、根据2中得到的用户的编号查询用户的姓名和住 址
SELECT UserName AS 用户名,UserAddress AS 地址 FROM UserInfo WHERE UserId=
(
	SELECT UserId FROM OrderInfo WHERE CommodityId=
	(
		SELECT CommodityId FROM CommodityInfo 
		WHERE CommodityName='苹果Iphone6'
	)
)
