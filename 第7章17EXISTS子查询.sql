--EXISTS�Ӳ�ѯ
--һ���Թ����ֻ����롱��Ʒ����������3���ģ����ѽ���8��
--������֪���ѯδ֪��
--��1������������Ʋ�ѯ���ı��
USE E_Market
GO
SELECT SortId FROM CommoditySort WHERE SortName='�ֻ�����'
--[2]����1�����ı�Ų�ѯ��Ʒ���
SELECT CommodityId FROM CommodityInfo WHERE SortId=
(
	SELECT SortId FROM CommoditySort WHERE SortName='�ֻ�����'
)
--[3]����2�еõ�����Ʒ���ȥ��ѯ�������й�����������3���Ķ�����Ϣ
SELECT * FROM OrderInfo WHERE CommodityId IN
(
	SELECT CommodityId FROM CommodityInfo WHERE SortId=
	(
		SELECT SortId FROM CommoditySort WHERE SortName='�ֻ�����'
	)
)AND Amount>3
--[4]���򳬹�3�����û��ĸ������8��
IF EXISTS(SELECT * FROM OrderInfo WHERE CommodityId IN
(
	SELECT CommodityId FROM CommodityInfo WHERE SortId=
	(
		SELECT SortId FROM CommoditySort WHERE SortName='�ֻ�����'
	)
)AND Amount>3)
	BEGIN
		--�Ը������8��
		UPDATE OrderInfo SET PayMoney=PayMoney*0.8
		WHERE CommodityId IN
		(
			SELECT CommodityId FROM OrderInfo WHERE CommodityId IN
			(
				SELECT CommodityId FROM CommodityInfo WHERE SortId=
				(
					SELECT SortId FROM CommoditySort WHERE SortName='�ֻ�����'
				)
			)AND Amount>3
		)
	END
	
	--ͨ����ʹ��NOT EXISTS���Ӳ�ѯ�Ľ������ȡ��
	--EXISTS:�Ӳ�ѯ�鵽��¼�����Ϊ�棬������Ϊ��
	--NOT EXISTS:�Ӳ�ѯ�鲻�����������Ϊ�棬�Ӳ�ѯ�鵽��飬����Ϊ�� 