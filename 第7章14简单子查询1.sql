USE E_Market
GO
--查询手机数码的商品信息
--【1】根据已知项去查未知项，已知项是商品的类别名称
  --根据商品类别名称去查询商品编号
  SELECT * FROM CommoditySort WHERE SortName='手机数码'
  --【2】根据商品编号去查询商品的信息
  SELECT * FROM CommodityInfo WHERE SortId=
  (
	  SELECT SortId FROM CommoditySort WHERE SortName='手机数码'
	  --ORDER BY SortId
  )
  --子查询的特点
  --1、要求子查询必须放在小括号中
  --2、子查询与比较运算符使用时要求子查询的列只有一个
  --3、ORDER BY排序不允许放在子查询中，如果要排序只能放在父查询中
  
  