--【1】查询网购用户中男女用户的人数各是多少？
--（1）分两条SQL 语句完成
USE E_Market
GO
SELECT COUNT(*) FROM UserInfo WHERE Gender=0--男性用户
SELECT COUNT(*) FROM UserInfo WHERE Gender=1--女性用户
--（2）使用分组来完成
SELECT COUNT(*) AS 总人数,Gender AS 性别 FROM UserInfo
GROUP BY Gender

--想在分组中查看用户的姓名  --（执行出错）
SELECT COUNT(*) AS 总人数,Gender AS 性别,UserName AS 用户姓名
 FROM UserInfo
GROUP BY Gender
--注意事项：对查询的列有限制，除了聚合函数外，就必须是分组的项

--[2]在分组之后如何对分组的结果进行排序 ORDER BY ,ASC升序，DESC降序
--举例：查询每种商品的销售总量并按降序排列
  --小技巧：“每”，“各”后面的名词就是分组的项
  SELECT CommodityId AS 商品编号,SUM(Amount) AS 销售总量
   FROM OrderInfo
  GROUP BY CommodityId
  ORDER BY SUM(Amount) DESC
  
  --[3]如何对分组后的结果进行筛选 HAVING
  --WHERE 用于分组之前的条件筛选，HAVING用于分组后的条件筛选
  --查询销售总量超过10的商品信息
  
    SELECT CommodityId AS 商品编号,SUM(Amount) AS 销售总量
   FROM OrderInfo
   
  GROUP BY CommodityId
 
  HAVING SUM(Amount)>10
  ORDER BY SUM(Amount) DESC
  
  --如果在一个查询中同时有WHERE 与HAVING可以吗？
  --可以
  --SELECT ..FROM ..WHERE ..GROUP BY..HAVING..ORDER BY
  --查询在2013-1-1到2014-11-30日销售总量超过10的商品编号
  SELECT SUM(Amount) AS 销售总量,CommodityId AS 商品编号
  FROM OrderInfo
  WHERE OrderTime BETWEEN '2013-1-1' AND '2014-11-30'
  GROUP BY CommodityId
  HAVING SUM(Amount)>10
  ORDER BY SUM(Amount) DESC
  
  
  
  
  