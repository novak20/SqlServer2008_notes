USE E_Market--ָ��ǰ�����������ݿ�
GO
IF EXISTS(SELECT * FROM sysobjects WHERE name='Test')
DROP TABLE Test
CREATE TABLE Test
(
	UName nvarchar(50) NOT NULL,
	UPwd nvarchar(50) NOT NULL,
	UAddress nvarchar(50) NOT NULL
)
GO
--��������
DECLARE @x int ,@y int
--Ϊ��������ֵ
SET @x=100000
SET @y=0
WHILE(@y<@X)
	BEGIN
		INSERT INTO Test(UName,UPwd,UAddress)
		VALUES('����'+CONVERT(varchar(5),@x),'123456','�����в�ƽ��')
		SET @y=@y+1
	END	
	
	GO
--��ѯ���еļ�¼��
SELECT COUNT(*) FROM Test	
--ɾ�����е���������
TRUNCATE TABLE Test