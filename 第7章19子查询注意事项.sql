USE E_Market
GO
--[1]子查询做为列的值来使用
SELECT SortName FROM CommoditySort WHERE SortId=1
--查询类别编号为1的商品的名称，及类别名称
SELECT CommodityName AS 商品名称,
(SELECT SortName FROM CommoditySort WHERE SortId=1)AS 类别名称

 FROM CommodityInfo
WHERE SortId=1

--[2]将子查询作为FROM子句的中的表来使用
--查询商品信息表中每种类别商品的库存量是多少？
SELECT SortId,SUM(Amount) AS cnt FROM CommodityInfo
GROUP BY SortId
HAVING SUM(Amount)>10000
--将查询作为表来使用

SELECT S.SortName AS  类别名称,cnt AS 库存量 FROM CommoditySort AS S
INNER JOIN (SELECT SortId,SUM(Amount) AS cnt FROM CommodityInfo
GROUP BY SortId
HAVING SUM(Amount)>10000) AS T
ON S.SortId=T.SortId