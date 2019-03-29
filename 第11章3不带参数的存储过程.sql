--创建不带参数的存储过程
USE E_Market
GO
--题目
/**
	查看xiangxiang所购买的商品信息，包括用户名，付款方法，购买数量
	商品名称，商品的类别
*/
--检测是否存在要创建的存储过程，如果存在将其删除
IF EXISTS(SELECT * FROM sysobjects WHERE name='usp_GetCommodityInfo')
DROP PROC usp_GetCommodityInfo
GO --删除之后要加GO，因为CREATE PROC 必须是批处理中仅有的语句
CREATE PROC usp_GetCommodityInfo
AS 
	SELECT O.UserId AS 用户号,PayWay AS 付款方式,
	O.Amount AS 购买数量,C.CommodityName AS 商品名称,
	S.SortName AS 类别名称 FROM OrderInfo AS O
	INNER JOIN CommodityInfo AS C ON O.CommodityId=C.CommodityId
	INNER JOIN CommoditySort AS S ON C.SortId=S.SortId
	WHERE O.UserId='xiangxiang'
GO --存储过程的结束

--如何使用不带参数的存储过程 
EXEC usp_GetCommodityInfo
GO