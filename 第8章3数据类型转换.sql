PRINT '�����'+@@ERROR

--�������
--��1��ʹ��CAST����ת��   "+"������������ã���������� 
PRINT '�����:'+CAST(@@ERROR AS varchar(5))

--��2��ʹ��CONVERT����ת��
PRINT '�����:'+CONVERT(varchar(5),@@ERROR)


--����������������ת��ʱ����ͬ��
/*
	��ͬ�㣺���ܹ���ĳ��������ת��Ϊ��һ����������
	��ͬ�㣺CONVERT��������������һ��������ת�������ͣ��ڶ���������Ҫת���ı��ʽ
	        ������������ת���ĸ�ʽ����ת�������ռ��͵�����CONVERT����������
*/
--ʹ�����������ֱ�����ڽ���ת��
--��1��ʹ��CASTת����ǰ����
SELECT CAST(GETDATE()  AS varchar(10))

--��2��ʹ��CONVERTת����ǰ����
SELECT CONVERT(varchar(10),GETDATE(),111)
SELECT CONVERT(varchar(10),GETDATE(),102)