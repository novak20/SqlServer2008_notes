--��1����ѭ����ʹ��CONTINUE  ,����CONTINUE�ص�WHILE�������жϴ�
--��1-10֮���ż����
DECLARE @sum int ,@i int
SET @sum=0
SET @i=1
WHILE(@i<=10)
	BEGIN
		IF(@i%2=1)
			BEGIN
				SET @i=@i+1
				CONTINUE
			END
		ELSE
			BEGIN
				SET @sum=@sum+@i
				SET @i=@i+1
			END
	END--WHILE�Ľ���
PRINT '1-10֮���ż����Ϊ:'+CONVERT(varchar(2),@sum)
GO


--��2����ѭ����ʹ��BREAK
DECLARE @i int
SET @i=1
WHILE(@i<=10)
	BEGIN
		IF(@i=5)
			BEGIN
				BREAK   --�˳�ѭ���ṹ����ʹ��������Ҳ��ȥ�ж���
			END
		ELSE
			SET @i=@i+1
	END
PRINT '@i��ֵΪ:@x='+CAST(@i AS varchar(2))
GO
--��3��RETURNʵ���˳�����
DECLARE @i int
SET @i=1
WHILE(@i<=10)
	BEGIN
		IF(@i=5)
			BEGIN
				RETURN     --�˳����ܿ���ִ���������Ĵ���
			END
		ELSE
			SET @i=@i+1
	END
PRINT '@i��ֵΪ:@x='+CAST(@i AS varchar(2))
GO
PRINT '�����������Ĵ���'