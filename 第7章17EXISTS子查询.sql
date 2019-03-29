--EXISTS子查询
--一次性购买“手机数码”产品的数量超过3个的，销费金额打8折
--根据已知项查询未知项
--【1】根据类别名称查询类别的编号
USE E_Market
GO
SELECT SortId FROM CommoditySort WHERE SortName='手机数码'
--[2]根据1中类别的编号查询商品编号
SELECT CommodityId FROM CommodityInfo WHERE SortId=
(
	SELECT SortId FROM CommoditySort WHERE SortName='手机数码'
)
--[3]根据2中得到的商品编号去查询订单表中购买数量超过3个的订单信息
SELECT * FROM OrderInfo WHERE CommodityId IN
(
	SELECT CommodityId FROM CommodityInfo WHERE SortId=
	(
		SELECT SortId FROM CommoditySort WHERE SortName='手机数码'
	)
)AND Amount>3
--[4]购买超过3个的用户的付款金额打8折
IF EXISTS(SELECT * FROM OrderInfo WHERE CommodityId IN
(
	SELECT CommodityId FROM CommodityInfo WHERE SortId=
	(
		SELECT SortId FROM CommoditySort WHERE SortName='手机数码'
	)
)AND Amount>3)
	BEGIN
		--对付款金额打8折
		UPDATE OrderInfo SET PayMoney=PayMoney*0.8
		WHERE CommodityId IN
		(
			SELECT CommodityId FROM OrderInfo WHERE CommodityId IN
			(
				SELECT CommodityId FROM CommodityInfo WHERE SortId=
				(
					SELECT SortId FROM CommoditySort WHERE SortName='手机数码'
				)
			)AND Amount>3
		)
	END
	
	--通常会使用NOT EXISTS对子查询的结果进行取反
	--EXISTS:子查询查到记录，结果为真，否则结果为假
	--NOT EXISTS:子查询查不到结果，返回为真，子查询查到结查，返回为假 