--�鿴�����ķ�ʽ
--��1��ʹ��SSMS�������鿴����
--��2��ʹ��ϵͳ�Ĵ洢���̲鿴����
USE E_Market
GO
EXEC sp_helpindex UserInfo

--��3��ʹ����ͼ�鿴����
USE E_Market
GO
SELECT * FROM sysindexes WHERE name='IX_UserInfo_UserAddress'
