--外连接
--左外连接 LEFT JOIN 以左表为主，返回左表的所有记录，
--如果左表中的某些行在右表中没有匹配的将用NULL值代替
--查询各类商品的库存情况，所有的类别都要显示出来，以类别表为主表
SELECT SortName AS 商品类别,Amount AS 库存量,CommodityName AS 商品名称
  FROM CommoditySort 
LEFT JOIN CommodityInfo 
ON CommoditySort.SortId=CommodityInfo.SortId

--[2]右外连接，RIGHT JOIN..ON,以右表为主
--无用户下单的商品信息
SELECT CommodityName AS 商品名称,
OrderId AS 订单号 FROM OrderInfo RIGHT JOIN CommodityInfo
ON OrderInfo.CommodityId =CommodityInfo.CommodityId

--如何来分左表还是右表
--LEFT JOIN左外连接以  LEFT 左边的表为主表
--RIGHT JOIN右外连接以RIGHT 右边的表为主表


--[3]左外连与右外连接相互转换
--左外连接
SELECT S.SortName AS 类别名称,Amount AS 库存量
 FROM CommoditySort AS S 
LEFT JOIN CommodityInfo AS C
ON S.SortId=C.SortId
--相当于
--右外连接
SELECT S.SortName AS 类别名称,Amount AS 库存量
 FROM CommodityInfo AS C
RIGHT JOIN CommoditySort AS S
ON C.SortId=S.SortId