--ģ������ת�˹���
--��С������С��ת��500
USE E_Market
GO

--�鿴ת��ǰ�����
SELECT * FROM bank

--��1������С��������500
UPDATE bank SET currentMoney=currentMoney-500 WHERE customerName='��С��'
--��2����С��������500
UPDATE bank SET currentMoney=currentMoney+500 WHERE customerName='��С��'


--�鿴ת��֮������
SELECT * FROM bank

GO