USE E_Market
GO
--[1]�Ӳ�ѯ��Ϊ�е�ֵ��ʹ��
SELECT SortName FROM CommoditySort WHERE SortId=1
--��ѯ�����Ϊ1����Ʒ�����ƣ����������
SELECT CommodityName AS ��Ʒ����,
(SELECT SortName FROM CommoditySort WHERE SortId=1)AS �������

 FROM CommodityInfo
WHERE SortId=1

--[2]���Ӳ�ѯ��ΪFROM�Ӿ���еı���ʹ��
--��ѯ��Ʒ��Ϣ����ÿ�������Ʒ�Ŀ�����Ƕ��٣�
SELECT SortId,SUM(Amount) AS cnt FROM CommodityInfo
GROUP BY SortId
HAVING SUM(Amount)>10000
--����ѯ��Ϊ����ʹ��

SELECT S.SortName AS  �������,cnt AS ����� FROM CommoditySort AS S
INNER JOIN (SELECT SortId,SUM(Amount) AS cnt FROM CommodityInfo
GROUP BY SortId
HAVING SUM(Amount)>10000) AS T
ON S.SortId=T.SortId