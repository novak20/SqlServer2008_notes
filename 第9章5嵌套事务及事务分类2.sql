----��1����ʾ���� BEGIN TRAN
USE E_Market
GO
SET NOCOUNT ON  --����ʾ��Ӱ�� ������
--����Ϊ��ʾ����ģʽ
SET IMPLICIT_TRANSACTIONS OFF 
GO
PRINT '��ʼ������:'+CAST(@@TRANCOUNT AS varchar(10))
GO
IF EXISTS(SELECT * FROM sysobjects WHERE name='Table1')
DROP TABLE  Table1
GO
CREATE TABLE Table1
(
	col1 int
) 
--����в���һ������
INSERT INTO Table1 VALUES(1)
PRINT 'ʹ����ʾ������Ϊ:'+CAST (@@TRANCOUNT AS varchar(10))
--ʹ����ʾ����
BEGIN TRAN
PRINT '��ʾ����ĸ���:'+CAST(@@TRANCOUNT AS varchar(10))
COMMIT TRAN --�ύ����
GO
PRINT '��ʾ�����ύ������ĸ�����:'+CAST(@@TRANCOUNT AS varchar(10))
GO


-------��2��������ʽ����ģʽ
PRINT '������ʽ����ģʽ'
SET IMPLICIT_TRANSACTIONS ON
--------δ��ʶ����Ŀ�ʼ
INSERT INTO Table1 VALUES(2)
PRINT 'ʹ��������:'+CAST(@@TRANCOUNT AS varchar(10))
COMMIT TRAN --�ύ����������ύ��ô����ִ����������һ��������Զ�������һ������
         /*���е�CREATE ,TRUNCATE TABLE,INSERT ,SELECT,ALTER TABLE,
         GRANT,UPDATE,���е�DROP ,ROVOKE,DELETE*/
         
PRINT '��ʾ�ύ֮�����������'+CAST(@@TRANCOUNT AS varchar(10))
GO


--��3���Զ��ύ����
--������IMPLICIT_TRANSACTIONS OFF�ͻָ������Զ��ύģʽ

SET IMPLICIT_TRANSACTIONS OFF --����Ϊ��ʾ����ģʽ���ָ������Զ��ύģʽ
GO

INSERT INTO Table1 VALUES(3)   --û�д����Զ��ύ
PRINT @@TRANCOUNT

INSERT INTO Table1 VALUES(5,3)   --���ִ����Զ��ع�
PRINT @@TRANCOUNT
