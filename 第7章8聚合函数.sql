--�ۺϺ������ص�
--1�����ؽ��Ϊ���е���
--2��Ҫ��ѯ�������һ��ʹ���˾ۺϺ�������ô�Ͳ�������ڷǾۺϺ����
--�������ô����ʹ�÷���GROUP BY���
--��1��SUM���ڶԱ��ʽ�е��н�����ͣ�ֻ��������ֵ�ͣ���ֵ�����ԣ�
--��ѯ��Ʒ���Ϊ6����������
USE E_Market
GO
SELECT SUM(Amount) FROM OrderInfo WHERE CommodityId=6

SELECT SUM(Amount) ,PayWay FROM OrderInfo 
WHERE CommodityId=6
--��ν�������ǾۺϺ�����ŵ�GROUP BY��
GROUP BY PayWay

--��2��AVG��ƽ��ֵ����ֻ������ֵ��һ��ʹ�ã���ֵ�����ԣ�
--ͼ�������ƽ��������
--��1��������Ʒ���Ͳ�ѯ���ͱ��
SELECT * FROM CommoditySort WHERE SortName='ͼ������'
--��2������Ʒ��Ϣ���в�ѯ�����Ϊ2��ƽ��������
SELECT AVG(InPrice) FROM CommodityInfo WHERE SortId=2

--��3��MAX��MIN,����ֵ������ֵ�����ԣ���������ֵ�ͣ������ͣ��ַ���һ��ʹ�ã�
--�ֻ��������߽���������������
--(1)������Ʒ���Ͳ�ѯ���ͱ��
SELECT * FROM CommoditySort WHERE SortName='�ֻ�����'
--(2)����Ʒ��Ϣ���в�ѯ�����Ϊ1����ߣ���ͽ�����
SELECT MAX(InPrice)AS ��߼�,
	   MIN(InPrice) AS ��ͼ�
 FROM CommodityInfo
WHERE SortId=1

--��4��COUNT����ͳ�Ƽ�¼���еļ�¼������
SELECT * FROM UserInfo

--ʹ��COUNTͳ���û������û�����
SELECT COUNT(*) FROM UserInfo--���򣬿�ֵ����ͳ��

SELECT COUNT(1) FROM UserInfo  --���Խ�*�滻Ϊ������

SELECT COUNT(Email) FROM UserInfo  --���д��������ֵ�����ԣ�