--ʹ��ѭ����1-10֮����ۼӺ�
DECLARE @sum int ,@i int 
SET @sum=0
SET @i=1
--ʹ��ѭ���ṹ�ۼ����
WHILE(@i<=10)
	BEGIN
		SET @sum=@i+@sum
		SET @i=@i+1
	END
PRINT '1-10֮����ۼӺ�Ϊ:'+CAST(@sum AS varchar(4))
GO