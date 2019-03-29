--������������������Ĵ洢����
/*
��ĿҪ��
��ĸӤ��Ʒ���������һ����Ʒ��Ҫ��ɹ������Ʒ�ı�д���
*/

USE E_Market
GO

IF EXISTS(SELECT * FROM sysobjects WHERE name='usp_InsertCommodity')
DROP PROC usp_InsertCommodity
GO
CREATE PROC usp_InsertCommodity
	@SortName varchar(50),--��������
	@CommodityName varchar(100),--��Ʒ����
	@inprice money ,--������
	@outprice money ,--���ۼ�
	@Amount int ,--�����
	@CommodityId int output	 --��Ʒ��ţ��������
AS 
	  --���������������Ʋ�ѯ�����
	  DECLARE @SortId int 
	  SELECT @SortId=SortId FROM CommoditySort WHERE SortName=@SortName
	  --�ж���������Ƿ���ȷ�����@SortIdΪ��������Ƴ������������ȷ
	  IF @SortId IS NULL
		BEGIN
			PRINT '	�Բ����������𲻴��ڣ�'
			RETURN --����Ĵ������������˳��˴����洢����
		END
	 --����Ʒ��Ϣ���������
	 INSERT INTO CommodityInfo(SortId,CommodityName,InPrice,OutPrice,Amount)
	 VALUES(@SortId,@CommodityName,@inprice,@outprice,@Amount)
	 --�жϴ��� ���Ƿ����0�������0˵����������
	 IF @@ERROR>0
		BEGIN
			PRINT '������Ϣʧ�ܣ�'
			RETURN
		END
	SET @CommodityId=@@IDENTITY
GO

--ʹ�ô�������� �����Ĵ洢����
--1)�������������� (��ʽ���ã�Ҫ�����˳����洢���̲��������˳����ͬ)
DECLARE @sortName varchar(50),@commodityName varchar(100),
		@inprice money,@outprice money,@mount int, @commodityId int 
SELECT @sortName='ĸӤ��Ʒ',@commodityName='�Ƿɷ�1��',@inprice=200,
@outprice=245,@mount=1000

EXEC usp_InsertCommodity @sortName,@commodityName,
	 @inprice,@outprice,@mount,@commodityId output 
PRINT '�����Ʒ�ɹ�����Ʒ���Ϊ:'+CONVERT(varchar(5),@commodityId)

--��������Ϣ�Ƿ�ɹ�
SELECT * FROM CommodityInfo


		