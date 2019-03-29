--����������ֵ�Ĵ洢����
/*
	��ĸӤ��Ʒ�����һ����Ʒ��Ϣ
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
	--����������Ʋ鿴������Ƿ����
	IF @sortid IS NULL
		BEGIN
			RETURN -1  --��-1������������Ʋ���ȷ
		END
	--����Ʒ��Ϣ�����һ����Ʒ��Ϣ
	INSERT INTO CommodityInfo(SortId,CommodityName,InPrice,OutPrice,Amount)
	VALUES(@sortid,@commodityName,@inprice,@outprice,@amount)
	IF @@ERROR >0
		BEGIN
			RETURN 0  --��0�����������Ϣʧ��
		END
	ELSE 
		BEGIN
			RETURN @@IDENTITY  --���ص�����Ʒ�ı��
		END
GO

--��ʹ�ô����صĴ洢���̣�����ֵ ��������0��-1����Ʒ���

--ʹ����ʾ����
DECLARE @Result int --���մ洢���̵ķ���ֵ
EXEC @Result=usp_InsertCommodityReturn @sortName='�����ʳ',@commodityName='�óԵ�',

@inprice=3.5,@outprice=7.6,@amount=100
IF @Result=-1
  BEGIN
		PRINT '�Բ��������������Ʋ����ڣ�'
  END
 ELSE IF @Result=0
   BEGIN
		PRINT '������Ϣʧ�ܣ�'
   END
 ELSE 
		BEGIN
			PRINT '�����Ʒ�ɹ�!��Ʒ���Ϊ:'+CONVERT(varchar(5),@Result)
		END
GO
SELECT * FROM CommoditySort
SELECT * FROM CommodityInfo