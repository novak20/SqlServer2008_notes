USE master--ָ��ǰ�����������ݿ�
GO
EXEC sp_detach_db @dbname=E_Market--�������ݿ�
GO

USE master
GO
EXEC sp_attach_db @dbname=E_Market,--�������ݿ�
@filename1='H:\project\E_Market_data.mdf',
@filename2='H:\project\E_Market2_data.ndf',
@filename3='H:\project\E_Market_log.ldf',
@filename4='H:\project\E_Market2_log.ldf'
GO