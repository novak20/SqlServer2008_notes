USE E_Market
GO
--�޸ĵ��﷨��UPDATE ����SET ����=���µ�ֵ [WHERE]
/*
1)���Ҫ���µ�ֵΪ������Ǹ����Ҫ���µ�ֵʹ��Ӣ�ĵĶ������ָ�
2)WHERE������д�Ļ��������±������е�����
3)ʹ��UPDTAE�������ݵ�ʱ����Ը���һ�����ݣ�Ҳ��
�ܸ��¶������ݣ�Ҳ�п��ܲ�������κ�����
*/
--��1��ʡ��WHERE�����ĸ���, �������ݿ��б����������
SELECT * FROM UserInfo

--�����Ա�
UPDATE UserInfo SET Gender=1   --������Ӱ��
--��2�����µ�ֵΪһ��
UPDATE UserInfo SET UserName='����' WHERE UserId='yoyo'  --һ����Ӱ��

--��3��һ���Ը��¶��ֵ���м�ʹ��Ӣ�ĵĶ������ָ�
UPDATE UserInfo SET UserName='����',UserAddress='�����в�ƽ��'
WHERE UserId='daxia'
--��4���޸ĵ�����Ϊ�����ʹ�ù�ϵ���������
SELECT * FROM CommodityInfo

UPDATE CommodityInfo SET Amount=10 
WHERE SortId=1 AND CommodityId=3

--��5�����Ҫ�޸ĵ����ݲ����ڣ�0����Ӱ�� 
UPDATE CommodityInfo SET InPrice=900 WHERE CommodityId=4

--�޸����ݵ���Ҫ��
/*
	1)Ҫ�޸ĵı����ĸ���
	2)�޸��ĸ��е�ֵ�����Ҫ�޸ĵ�ֵΪ������м�ʹ��Ӣ�ĵĶ��ŷָ�
	3)������ʲô�� �������Ϊ����Ļ���ʹ�ù�ϵ�������AND,NOT,OR������
	
*/
