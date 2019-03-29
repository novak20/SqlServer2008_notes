USE E_Market
GO
SELECT * FROM UserInfo
SELECT * FROM OrderInfo
SELECT * FROM CommodityInfo
SELECT * FROM CommoditySort
--导入数据注意事项，
--与插入数据的顺序相同，有主外键关系的，先导主表中的数据，再导子表中的数据
--1先导UserInfo或CommoditySort
--2再导CommodityInfo  最后导OrderInfo
