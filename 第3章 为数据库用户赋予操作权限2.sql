--[1]����һ����¼��pbMaster ����123456
USE master
GO
--������¼��
CREATE LOGIN pbMaster WITH PASSWORD='123456'
GO

--[2]�������ݿ��û�
USE E_Market
GO
--MasterDBUser�����ݿ��û���, pbMaster�ǵ�¼��
CREATE USER MasterDBUser FOR LOGIN pbMaster
GO

--[3]�����û�����Ȩ��
USE E_Market
GO
--Ϊ��UserInfo����鿴���������޸ĵĲ���Ȩ�� MasterDBUser���ݿ��û�
GRANT SELECT,INSERT,UPDATE ON UserInfo TO MasterDBUser
GO

--[4]�ջ������Ĳ���Ȩ��
USE E_Market
GO
REVOKE INSERT ON UserInfo  TO MasterDBUser
GO