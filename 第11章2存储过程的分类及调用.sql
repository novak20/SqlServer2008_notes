--[1]�� �õ�ϵͳ�洢����
USE master
GO
EXECUTE sp_databases --�г���ǰ��ϵͳ�е����ݿ�

--�ı����ݿ������
EXEC sp_renamedb @dbname='MyHotel',@newname='Hotel'
EXEC sp_renamedb 'Hotel' ,'MyHotel'

USE E_Market
GO
EXEC sp_help UserInfo  --�鿴UserInfo���е�������Ϣ


--[2]�� �õ���չ�洢���� xp_cmdshell 
USE master
GO

EXEC sp_configure 'show advanced option',1 --����xp_cmdshell�ĸ߼�����
GO
RECONFIGURE --��������
GO
EXEC sp_configure 'xp_cmdshell',1--��xp_cmdshell�����Ե���SQL֮���ϵͳ����
GO
RECONFIGURE
GO
--ʹ��xp_cmdshell��D�̴���myFile�ļ���
EXEC xp_cmdshell 'mkdir d:\myFile',no_output--[no_output]�Ƿ����������Ϣ
GO
