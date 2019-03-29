--创建带输入输出参数的存储过程
/*
题目要求
向母婴用品这个类别添加一种商品，要求成功后把商品的编写输出
*/

USE E_Market
GO

IF EXISTS(SELECT * FROM sysobjects WHERE name='usp_InsertCommodity')
DROP PROC usp_InsertCommodity
GO
CREATE PROC usp_InsertCommodity
	@SortName varchar(50),--类名别名
	@CommodityName varchar(100),--商品名称
	@inprice money ,--进货价
	@outprice money ,--销售价
	@Amount int ,--库存量
	@CommodityId int output	 --商品编号，输出参数
AS 
	  --根据输入的类别名称查询类别编号
	  DECLARE @SortId int 
	  SELECT @SortId=SortId FROM CommoditySort WHERE SortName=@SortName
	  --判断类别名称是否正确，如查@SortId为空类别名称出错，否则类别正确
	  IF @SortId IS NULL
		BEGIN
			PRINT '	对不起，输入的类别不存在！'
			RETURN --后面的代码无条件，退出了创建存储过程
		END
	 --向商品信息表插入数据
	 INSERT INTO CommodityInfo(SortId,CommodityName,InPrice,OutPrice,Amount)
	 VALUES(@SortId,@CommodityName,@inprice,@outprice,@Amount)
	 --判断错误 号是否大于0如果大于0说明插入有误
	 IF @@ERROR>0
		BEGIN
			PRINT '插入信息失败！'
			RETURN
		END
	SET @CommodityId=@@IDENTITY
GO

--使用带输入输出 参数的存储过程
--1)声明变量来调用 (隐式调用，要求参数顺序与存储过程参数定义的顺序相同)
DECLARE @sortName varchar(50),@commodityName varchar(100),
		@inprice money,@outprice money,@mount int, @commodityId int 
SELECT @sortName='母婴用品',@commodityName='星飞帆1段',@inprice=200,
@outprice=245,@mount=1000

EXEC usp_InsertCommodity @sortName,@commodityName,
	 @inprice,@outprice,@mount,@commodityId output 
PRINT '添加商品成功，商品编号为:'+CONVERT(varchar(5),@commodityId)

--检测插入信息是否成功
SELECT * FROM CommodityInfo


		