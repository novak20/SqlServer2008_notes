USE E_Market
GO
--查询购买苹果Iphone6的用户的姓名和住址
SELECT UserName AS 用户名,UserAddress AS 地址 FROM UserInfo WHERE UserId=
(
	SELECT UserId FROM OrderInfo WHERE CommodityId=
	(
		SELECT CommodityId FROM CommodityInfo 
		WHERE CommodityName='苹果Iphone6'
	)
)
--查询购买了“宝马小帅哥20寸”的用户信息
--【1】根据商品的名称查询商品的编号
SELECT CommodityId FROM CommodityInfo WHERE CommodityName='宝马小帅哥20寸'
--【2】根据1中得到的商品编号查询订单表中的购买用户的编号
SELECT UserId FROM OrderInfo WHERE CommodityId=
(
	SELECT CommodityId FROM CommodityInfo WHERE CommodityName='宝马小帅哥20寸'
)
--【3】根据2中得到的用户编号查询用户的信息
SELECT * FROM UserInfo WHERE UserId IN
(
	SELECT UserId FROM OrderInfo WHERE CommodityId=
	(
		SELECT CommodityId FROM CommodityInfo WHERE CommodityName='宝马小帅哥20寸'
	)
)
--当子查询返回的列的值为多个时，那么就不能使用比较运算符=，
--使用关键字IN

--NOT IN子查询举例
--查询从未网购过商品的用户信息
--【1】查询订单表中购买过商品的用户的编号
--使用关键字DISTINCT去掉重复数据
SELECT DISTINCT UserId FROM OrderInfo  --只要在订单表中存在的UserId就是购买过商品的用户

--[2]从用户表中购买过商品的用户去除，剩下就是从未购买过商品的用户
SELECT * FROM UserInfo WHERE UserId NOT IN
(
	SELECT DISTINCT UserId FROM OrderInfo 
)
--上述子查询能否使用多表连接查询替换？ 不能
SELECT * FROM UserInfo AS U
INNER JOIN OrderInfo AS O
ON U.UserId<>O.UserId
--多表连接查询分两部，第一步将两个表中记录数相乘，使用<>去掉重复的数据

