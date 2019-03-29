--�鿴��ͼ
SELECT * FROM vw_UserInfo

--ʹ��T-SQL��䴴����ͼ
--��1����ͼ��������Դ��һ�ű�
USE E_Market
IF EXISTS(SELECT * FROM sysobjects WHERE name='vw_UserInfo' )
DROP VIEW vw_UserInfo
GO
CREATE VIEW vw_UserInfo --CREATE VIEW�������������еĵ�һ�����
AS
 SELECT UserId AS ��¼��,UserName AS ����,Email AS ����,
 UserAddress AS ��ַ,Phone AS �绰 FROM UserInfo
GO

--��2����ͼ��������Դ�ڶ����ڣ����Ҵ���ѯ����
IF EXISTS(SELECT * FROM sysobjects WHERE name='vw_Commodity')
DROP VIEW vw_Commodity
GO
CREATE VIEW vw_Commodity
AS 
	SELECT TOP 100 PERCENT  C.CommodityName AS ��Ʒ������,
	S.SortName AS ��Ʒ���,C.Amount AS �����
	FROM CommodityInfo AS C
	INNER JOIN CommoditySort AS S ON C.SortId=S.SortId
	WHERE S.SortName='ͼ������'
	ORDER BY C.Amount DESC
GO
