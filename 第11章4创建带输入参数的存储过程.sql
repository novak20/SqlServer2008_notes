--创建带输入参数的存储过程
/*
	题目：查询指定的用户在指定的时间段内的下单信息，
	如果结束日期没有指的话，那么查询的是到今天为止的下单信息
*/
USE E_Market
GO
IF EXISTS(SELECT * FROM sysobjects WHERE name='usp_GetOrderInfo')
DROP PROC usp_GetOrderInfo
GO
CREATE PROC usp_GetOrderInfo
	@startDate datetime,  --开始时间
	@endDate datetime=null,--结束时间
	@userId varchar(20)=null  --指定的用户
AS 
	IF  @endDate IS NULL--判断结束日期日否为空
		BEGIN 
			SET @endDate=GETDATE() --赋当前日期
		END
    IF @userId IS NULL --查询指定时间段内的所有订单信息
		BEGIN
			SELECT C.CommodityName AS 商品名称,S.SortName AS 类别名称,
			O.UserId AS 用户名,O.OrderTime AS 下单时间 FROM OrderInfo AS O
			INNER JOIN CommodityInfo AS C ON O.CommodityId=C.CommodityId
			INNER JOIN CommoditySort AS S ON C.SortId=S.SortId
			WHERE O.OrderTime BETWEEN @startDate AND @endDate
		END
	ELSE   --查询指定用户指定时间段内的所有订单信息
		BEGIN
			SELECT C.CommodityName AS 商品名称,S.SortName AS 类别名称,
			O.UserId AS 用户名,O.OrderTime AS 下单时间 FROM OrderInfo AS O
			INNER JOIN CommodityInfo AS C ON O.CommodityId=C.CommodityId
			INNER JOIN CommoditySort AS S ON S.SortId=C.SortId
			WHERE (O.OrderTime BETWEEN @startDate AND @endDate)
			AND O.UserId=@userId
		END
GO  --存储过程的结束

--如何使用带参数的存储过程
--1)结束日期与用户都使用默认值 
--只指定了开始时间，查询的是从开始时间到今天的所有订单信息
  
EXEC usp_GetOrderInfo '2014-11-1'

--2)结束日期不为空，从开始时间到结束时间的所有订单信息
--隐式调用，参数的顺序必须 与创建存储过程的参数顺序完相同
EXEC usp_GetOrderInfo '2014-11-1','2014-11-12','xiangxiang'


--3)显示调用
--显示调用对参数顺序无要求，如查参数中一个写"@名称=值"的形式，那么
--之后的参数都必须 写成"@名称=值"的形式，默认值可以使用default代替
EXEC usp_GetOrderInfo @UserId='xiangxiang',
@startDate ='2014-11-1',@enddate=default

--显示调用时的@UserId,@startDate,@enddate是存储过程定义时的参数

--4)可以通过声明变量来调用
DECLARE @d1 datetime,@d2 datetime,@uid varchar(20)
SET @d1='2014-11-1'
SET @d2='2014-12-1'
SET @uid='xiangxiang'
EXEC usp_GetOrderInfo @d1,@d2,@uid
--除了显示调用之外，要求参数位置必须 与存储过程定义时顺序相同

