--[1]@@IDENTITY�������һ���������ı�ʶֵ
USE E_Market
GO

--��û�в�������֮ǰ @@IDENTITY��ֵ
SELECT @@IDENTITY
--�������в���һ������
INSERT INTO CommoditySort (SortName)
VALUES('��������')
--����ɹ���@@IDENTITY��ֵ
SELECT @@IDENTITY
--��ѯ��������
SELECT * FROM CommoditySort

--[2]@@ERROR

--û�д�������,�������0
SELECT @@ERROR

--�޸�Υ�����Լ�������
UPDATE UserInfo SET UserPwd='123' WHERE UserId='bobo'

--����󣬴����
PRINT @@ERROR

--������SELECT��PRINT
--SELECT:������Ա��ķ�ʽ�ڽ����������ʾ
--PRINT:����ԡ��ı�������ʽ����Ϣ��������ʾ


--ʹ��SELECT���������,    ��ѯ��SELECT���������÷�
SELECT @@ERROR AS �����
SELECT �����=@@ERROR
SELECT @@ERROR  ����

--ʹ��PRINT ������á�+��������, Ҫ��+�����ҵ�������ͬ�������
PRINT '�����'+@@ERROR
