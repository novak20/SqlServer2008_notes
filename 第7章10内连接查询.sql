--�鿴������ţ��û�����������������������Ʒ���
USE E_Market
GO

--[1]WHERE 
SELECT OrderInfo.OrderId,UserInfo.UserName,
OrderInfo.Amount,OrderInfo.CommodityId 
FROM OrderInfo,UserInfo
WHERE OrderInfo.UserId=UserInfo.UserId

--�����дWHERE�����ʲô��� �Ͽ��������󣬽������е������������,630��
SELECT COUNT(*) FROM UserInfo  --30
SELECT COUNT(*) FROM OrderInfo--21     30*21=630

--1���Ƚ������е��������
--2��ͨ��WHERE����ѡ ���ص��Ĳ���
--�Ľ��棬�������Ӳ�ѯ
SELECT O.OrderId,U.UserName,O.Amount,C.CommodityName
 FROM OrderInfo AS O,UserInfo AS U,
CommodityInfo AS C
WHERE O.UserId=U.UserId AND C.CommodityId=O.CommodityId

--[2]ʹ��INNER JOIN..ON
SELECT OrderId,UserName,O.Amount,CommodityName
 FROM UserInfo AS U
INNER JOIN OrderInfo AS O ON U.UserId=O.UserId
INNER JOIN CommodityInfo AS C ON O.CommodityId=C.CommodityId
WHERE U.UserName='�Կ���'