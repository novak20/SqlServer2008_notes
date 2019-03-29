USE master--��ǰָ��Ĳ��������ݿ�
GO
IF EXISTS(SELECT * FROM sysdatabases WHERE name='E_Market')

DROP DATABASE E_Market--ɾ�����ݿ�
--�������ݿ�

CREATE DATABASE E_Market
ON PRIMARY --���ļ���
(
	NAME='E_Market_data',--�߼��ļ���
	--�����ļ���
	FILENAME='H:\project\E_Market_data.mdf',
	SIZE=5MB,--��ʼ��С
	MAXSIZE=100MB,--�������
	FILEGROWTH=15%--������
),
FILEGROUP FG   --������һ�����ļ���
(
	NAME='E_Market2_data',
	FILENAME='H:\project\E_Market2_data.ndf',
	SIZE=4MB,
	FILEGROWTH=10%
)
LOG ON --��־�ļ�
(
	NAME='E_Market_log',
	FILENAME='H:\project\E_Market_log.ldf',
	SIZE=5MB,
	FILEGROWTH=0--δ�����Զ�����
),
(
	NAME='E_Market2_log',
	FILENAME='H:\project\E_Market2_log.ldf',
	SIZE=3MB,
	FILEGROWTH=10%,
	MAXSIZE=100MB
)
GO
SELECT *FROM sysdatabases 