--������
--�������� LEFT JOIN �����Ϊ���������������м�¼��
--�������е�ĳЩ�����ұ���û��ƥ��Ľ���NULLֵ����
--��ѯ������Ʒ�Ŀ����������е����Ҫ��ʾ������������Ϊ����
SELECT SortName AS ��Ʒ���,Amount AS �����,CommodityName AS ��Ʒ����
  FROM CommoditySort 
LEFT JOIN CommodityInfo 
ON CommoditySort.SortId=CommodityInfo.SortId

--[2]�������ӣ�RIGHT JOIN..ON,���ұ�Ϊ��
--���û��µ�����Ʒ��Ϣ
SELECT CommodityName AS ��Ʒ����,
OrderId AS ������ FROM OrderInfo RIGHT JOIN CommodityInfo
ON OrderInfo.CommodityId =CommodityInfo.CommodityId

--�������������ұ�
--LEFT JOIN����������  LEFT ��ߵı�Ϊ����
--RIGHT JOIN����������RIGHT �ұߵı�Ϊ����


--[3]�����������������໥ת��
--��������
SELECT S.SortName AS �������,Amount AS �����
 FROM CommoditySort AS S 
LEFT JOIN CommodityInfo AS C
ON S.SortId=C.SortId
--�൱��
--��������
SELECT S.SortName AS �������,Amount AS �����
 FROM CommodityInfo AS C
RIGHT JOIN CommoditySort AS S
ON C.SortId=S.SortId