--��������������Ĵ洢����
/*
	��Ŀ����ѯָ�����û���ָ����ʱ����ڵ��µ���Ϣ��
	�����������û��ָ�Ļ�����ô��ѯ���ǵ�����Ϊֹ���µ���Ϣ
*/
USE E_Market
GO
IF EXISTS(SELECT * FROM sysobjects WHERE name='usp_GetOrderInfo')
DROP PROC usp_GetOrderInfo
GO
CREATE PROC usp_GetOrderInfo
	@startDate datetime,  --��ʼʱ��
	@endDate datetime=null,--����ʱ��
	@userId varchar(20)=null  --ָ�����û�
AS 
	IF  @endDate IS NULL--�жϽ��������շ�Ϊ��
		BEGIN 
			SET @endDate=GETDATE() --����ǰ����
		END
    IF @userId IS NULL --��ѯָ��ʱ����ڵ����ж�����Ϣ
		BEGIN
			SELECT C.CommodityName AS ��Ʒ����,S.SortName AS �������,
			O.UserId AS �û���,O.OrderTime AS �µ�ʱ�� FROM OrderInfo AS O
			INNER JOIN CommodityInfo AS C ON O.CommodityId=C.CommodityId
			INNER JOIN CommoditySort AS S ON C.SortId=S.SortId
			WHERE O.OrderTime BETWEEN @startDate AND @endDate
		END
	ELSE   --��ѯָ���û�ָ��ʱ����ڵ����ж�����Ϣ
		BEGIN
			SELECT C.CommodityName AS ��Ʒ����,S.SortName AS �������,
			O.UserId AS �û���,O.OrderTime AS �µ�ʱ�� FROM OrderInfo AS O
			INNER JOIN CommodityInfo AS C ON O.CommodityId=C.CommodityId
			INNER JOIN CommoditySort AS S ON S.SortId=C.SortId
			WHERE (O.OrderTime BETWEEN @startDate AND @endDate)
			AND O.UserId=@userId
		END
GO  --�洢���̵Ľ���

--���ʹ�ô������Ĵ洢����
--1)�����������û���ʹ��Ĭ��ֵ 
--ָֻ���˿�ʼʱ�䣬��ѯ���Ǵӿ�ʼʱ�䵽��������ж�����Ϣ
  
EXEC usp_GetOrderInfo '2014-11-1'

--2)�������ڲ�Ϊ�գ��ӿ�ʼʱ�䵽����ʱ������ж�����Ϣ
--��ʽ���ã�������˳����� �봴���洢���̵Ĳ���˳������ͬ
EXEC usp_GetOrderInfo '2014-11-1','2014-11-12','xiangxiang'


--3)��ʾ����
--��ʾ���öԲ���˳����Ҫ����������һ��д"@����=ֵ"����ʽ����ô
--֮��Ĳ��������� д��"@����=ֵ"����ʽ��Ĭ��ֵ����ʹ��default����
EXEC usp_GetOrderInfo @UserId='xiangxiang',
@startDate ='2014-11-1',@enddate=default

--��ʾ����ʱ��@UserId,@startDate,@enddate�Ǵ洢���̶���ʱ�Ĳ���

--4)����ͨ����������������
DECLARE @d1 datetime,@d2 datetime,@uid varchar(20)
SET @d1='2014-11-1'
SET @d2='2014-12-1'
SET @uid='xiangxiang'
EXEC usp_GetOrderInfo @d1,@d2,@uid
--������ʾ����֮�⣬Ҫ�����λ�ñ��� ��洢���̶���ʱ˳����ͬ

