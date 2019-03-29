--聚合函数的特点
--1、返回结果为单行单列
--2、要查询中如果有一个使用了聚合函数，那么就不允许存在非聚合函数项，
--如果有那么必须使用分组GROUP BY语句
--【1】SUM用于对表达式中的列进行求和（只能用于数值型，空值将忽略）
--查询商品编号为6的销售总量
USE E_Market
GO
SELECT SUM(Amount) FROM OrderInfo WHERE CommodityId=6

SELECT SUM(Amount) ,PayWay FROM OrderInfo 
WHERE CommodityId=6
--如何解决？将非聚合函数项放到GROUP BY中
GROUP BY PayWay

--【2】AVG求平均值，（只能与数值型一起使用，空值将忽略）
--图书音像的平均进货价
--（1）根据商品类型查询类型编号
SELECT * FROM CommoditySort WHERE SortName='图书音像'
--（2）在商品信息表中查询类别编号为2的平均进货价
SELECT AVG(InPrice) FROM CommodityInfo WHERE SortId=2

--【3】MAX与MIN,求最值，（空值将忽略，可以与数值型，日期型，字符型一起使用）
--手机数码的最高进货价与最低最货价
--(1)根据商品类型查询类型编号
SELECT * FROM CommoditySort WHERE SortName='手机数码'
--(2)在商品信息表中查询类别编号为1的最高，最低进货价
SELECT MAX(InPrice)AS 最高价,
	   MIN(InPrice) AS 最低价
 FROM CommodityInfo
WHERE SortId=1

--【4】COUNT用于统计记录集中的记录数（）
SELECT * FROM UserInfo

--使用COUNT统计用户表中用户数量
SELECT COUNT(*) FROM UserInfo--否则，空值将被统计

SELECT COUNT(1) FROM UserInfo  --可以将*替换为常量列

SELECT COUNT(Email) FROM UserInfo  --如果写列名，空值将忽略，