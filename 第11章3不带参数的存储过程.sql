--�������������Ĵ洢����
USE E_Market
GO
--��Ŀ
/**
	�鿴xiangxiang���������Ʒ��Ϣ�������û��������������������
	��Ʒ���ƣ���Ʒ�����
*/
--����Ƿ����Ҫ�����Ĵ洢���̣�������ڽ���ɾ��
IF EXISTS(SELECT * FROM sysobjects WHERE name='usp_GetCommodityInfo')
DROP PROC usp_GetCommodityInfo
GO --ɾ��֮��Ҫ��GO����ΪCREATE PROC �������������н��е����
CREATE PROC usp_GetCommodityInfo
AS 
	SELECT O.UserId AS �û���,PayWay AS ���ʽ,
	O.Amount AS ��������,C.CommodityName AS ��Ʒ����,
	S.SortName AS ������� FROM OrderInfo AS O
	INNER JOIN CommodityInfo AS C ON O.CommodityId=C.CommodityId
	INNER JOIN CommoditySort AS S ON C.SortId=S.SortId
	WHERE O.UserId='xiangxiang'
GO --�洢���̵Ľ���

--���ʹ�ò��������Ĵ洢���� 
EXEC usp_GetCommodityInfo
GO