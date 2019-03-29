--创建带返回值的存储过程
/*
	向母婴用品中添加一条商品信息
*/
USE E_Market
GO
IF EXISTS(SELECT * FROM sysobjects WHERE name='usp_InsertCommodityReturn')
DROP PROC usp_InsertCommodityReturn
GO
CREATE PROC usp_InsertCommodityReturn
	@sortName varchar(50),  
	@commodityName varchar(100),
	@inprice money,
	@outprice money,
	@amount int 
	--@commodityid int output
AS 
	DECLARE @sortid int 
	SELECT @sortid=SortId FROM CommoditySort WHERE SortName=@sortName
	--根据类别名称查看类别编号是否存在
	IF @sortid IS NULL
		BEGIN
			RETURN -1  --用-1来代表类别名称不正确
		END
	--向商品信息表添加一条商品信息
	INSERT INTO CommodityInfo(SortId,CommodityName,InPrice,OutPrice,Amount)
	VALUES(@sortid,@commodityName,@inprice,@outprice,@amount)
	IF @@ERROR >0
		BEGIN
			RETURN 0  --用0来代表插入信息失败
		END
	ELSE 
		BEGIN
			RETURN @@IDENTITY  --返回的是商品的编号
		END
GO

--来使用带返回的存储过程，返回值 有三个，0，-1，商品编号

--使用显示调用
DECLARE @Result int --接收存储过程的返回值
EXEC @Result=usp_InsertCommodityReturn @sortName='汇吃美食',@commodityName='好吃点',

@inprice=3.5,@outprice=7.6,@amount=100
IF @Result=-1
  BEGIN
		PRINT '对不起，输入的类别名称不存在！'
  END
 ELSE IF @Result=0
   BEGIN
		PRINT '插入信息失败！'
   END
 ELSE 
		BEGIN
			PRINT '添加商品成功!商品编号为:'+CONVERT(varchar(5),@Result)
		END
GO
SELECT * FROM CommoditySort
SELECT * FROM CommodityInfo