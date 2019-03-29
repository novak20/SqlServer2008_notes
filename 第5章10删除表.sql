--删除表的顺序
--1）OrderInfo 2）UserInfo  
--3)CommodityInfo 4)CommoditySort

--使用SQL语句删除CommodityInfo表和CommoditySort表
USE E_Market
GO
--删除CommodityInfo表
DROP TABLE CommodityInfo
DROP TABLE CommoditySort
GO
--如何检测要删除的表是否存在
USE E_Market
GO
SELECT * FROM sysobjects 

--如果存在就将其表删除，否则不执行删除语句
IF EXISTS(SELECT * FROM sysobjects WHERE name='CommodityInfo')
DROP TABLE CommodityInfo
GO