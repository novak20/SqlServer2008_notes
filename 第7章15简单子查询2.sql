USE E_Market
GO
--��ѯ����ƻ��Iphone6�Ŀͻ���������סַ
--��1��������Ӳ�ѯ

SELECT U.UserName AS �û�����,U.UserAddress AS ��ַ
 FROM CommodityInfo AS C
INNER JOIN OrderInfo AS O ON C.CommodityId=O.CommodityId
INNER JOIN UserInfo AS U ON O.UserId=U.UserId
WHERE C.CommodityName='ƻ��Iphone6'

--��2��ʹ���Ӳ�ѯ
--������֪��ȥ��ѯδ֪��
--1��������Ʒ���Ʋ�ѯ��Ʒ���
SELECT CommodityId FROM CommodityInfo 
WHERE CommodityName='ƻ��Iphone6'
--2������1�еõ�����Ʒ���ȥ��ѯ�����û��ı��
SELECT UserId FROM OrderInfo WHERE CommodityId=
(
	SELECT CommodityId FROM CommodityInfo 
	WHERE CommodityName='ƻ��Iphone6'
)
--3������2�еõ����û��ı�Ų�ѯ�û���������ס ַ
SELECT UserName AS �û���,UserAddress AS ��ַ FROM UserInfo WHERE UserId=
(
	SELECT UserId FROM OrderInfo WHERE CommodityId=
	(
		SELECT CommodityId FROM CommodityInfo 
		WHERE CommodityName='ƻ��Iphone6'
	)
)
