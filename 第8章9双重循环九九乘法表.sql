DECLARE @x int    --@x��������
DECLARE @y int  --@yÿ�д�ӡ����ĸ���
SET @x=1
SET @y=1
DECLARE @str varchar(100) --����������ַ���
SET @str=''
PRINT '***************************�žų˷���***********************************'
WHILE(@x<=9)   --����
	BEGIN
		WHILE(@y<=@x)  --����
			BEGIN
				SET @str=@str+CONVERT(varchar(2),@x)+'*'+CONVERT(varchar(2),@y)+'='+CONVERT(varchar(2),@y*@x)+'  '
				SET @y=@y+1
			END--�ڲ�ѭ���Ľ���
		PRINT @str
		--�ٽ�����һ��ѭ��֮ǰ���ַ������
		SET @str=''
		SET @x=@x+1
		SET @y=1
		PRINT ''
		
	END
GO