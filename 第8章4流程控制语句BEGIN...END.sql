--��BEGIN..END��������ɶ�����������ֵ���н���
DECLARE @x int ,@y int ,@t int   --һ��������������int���͵ı���
SET @x=5
SET @y=10
PRINT'����ǰ������Ϊ:@x='+CAST(@x AS varchar(2))+' @y='+CAST(@y AS varchar(2))

--�����������н�������Ҫʹ�õ�������@t
BEGIN
	SET @t=@x
	SET @x=@y
	SET @y=@t
END
PRINT '������������Ϊ:@x='+CONVERT(varchar(2),@x)+' @y='+CONVERT(varchar(2),@y)
PRINT'��������@t��ֵ@t'+CONVERT(varchar(2),@t)
GO
--�ڱ�ʾ����BEGIN..END���Բ�д�����Ч����ͬ��
--��������ڷ�֧�ṹ��ѭ���ṹ������������1��ͱ���д��BEGIN...END
