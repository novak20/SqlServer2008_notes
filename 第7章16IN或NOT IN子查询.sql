USE E_Market
GO
--��ѯ����ƻ��Iphone6���û���������סַ
SELECT UserName AS �û���,UserAddress AS ��ַ FROM UserInfo WHERE UserId=
(
	SELECT UserId FROM OrderInfo WHERE CommodityId=
	(
		SELECT CommodityId FROM CommodityInfo 
		WHERE CommodityName='ƻ��Iphone6'
	)
)
--��ѯ�����ˡ�����С˧��20�硱���û���Ϣ
--��1��������Ʒ�����Ʋ�ѯ��Ʒ�ı��
SELECT CommodityId FROM CommodityInfo WHERE CommodityName='����С˧��20��'
--��2������1�еõ�����Ʒ��Ų�ѯ�������еĹ����û��ı��
SELECT UserId FROM OrderInfo WHERE CommodityId=
(
	SELECT CommodityId FROM CommodityInfo WHERE CommodityName='����С˧��20��'
)
--��3������2�еõ����û���Ų�ѯ�û�����Ϣ
SELECT * FROM UserInfo WHERE UserId IN
(
	SELECT UserId FROM OrderInfo WHERE CommodityId=
	(
		SELECT CommodityId FROM CommodityInfo WHERE CommodityName='����С˧��20��'
	)
)
--���Ӳ�ѯ���ص��е�ֵΪ���ʱ����ô�Ͳ���ʹ�ñȽ������=��
--ʹ�ùؼ���IN

--NOT IN�Ӳ�ѯ����
--��ѯ��δ��������Ʒ���û���Ϣ
--��1����ѯ�������й������Ʒ���û��ı��
--ʹ�ùؼ���DISTINCTȥ���ظ�����
SELECT DISTINCT UserId FROM OrderInfo  --ֻҪ�ڶ������д��ڵ�UserId���ǹ������Ʒ���û�

--[2]���û����й������Ʒ���û�ȥ����ʣ�¾��Ǵ�δ�������Ʒ���û�
SELECT * FROM UserInfo WHERE UserId NOT IN
(
	SELECT DISTINCT UserId FROM OrderInfo 
)
--�����Ӳ�ѯ�ܷ�ʹ�ö�����Ӳ�ѯ�滻�� ����
SELECT * FROM UserInfo AS U
INNER JOIN OrderInfo AS O
ON U.UserId<>O.UserId
--������Ӳ�ѯ����������һ�����������м�¼����ˣ�ʹ��<>ȥ���ظ�������

