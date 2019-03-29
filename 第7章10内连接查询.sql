--查看订单编号，用户姓名，购买数量，购买商品编号
USE E_Market
GO

--[1]WHERE 
SELECT OrderInfo.OrderId,UserInfo.UserName,
OrderInfo.Amount,OrderInfo.CommodityId 
FROM OrderInfo,UserInfo
WHERE OrderInfo.UserId=UserInfo.UserId

--如果不写WHERE会出现什么情况 迪卡尔集现象，将两表中的数据条数相乘,630？
SELECT COUNT(*) FROM UserInfo  --30
SELECT COUNT(*) FROM OrderInfo--21     30*21=630

--1、先将两表中的数据相乘
--2、通过WHERE条件选 出重叠的部分
--改进版，三表连接查询
SELECT O.OrderId,U.UserName,O.Amount,C.CommodityName
 FROM OrderInfo AS O,UserInfo AS U,
CommodityInfo AS C
WHERE O.UserId=U.UserId AND C.CommodityId=O.CommodityId

--[2]使用INNER JOIN..ON
SELECT OrderId,UserName,O.Amount,CommodityName
 FROM UserInfo AS U
INNER JOIN OrderInfo AS O ON U.UserId=O.UserId
INNER JOIN CommodityInfo AS C ON O.CommodityId=C.CommodityId
WHERE U.UserName='赵可以'