--��1����õ�ǰϵͳʱ��
SELECT GETDATE()
--��2��DATEADD()����1��ָ�������ڲ��֣�����2������ֵ������3����Ч�����ڸ�ʽ
SELECT DATEADD(MM,1,GETDATE())
--����2�������Ƿ�����Ϊ����,����
SELECT DATEADD(MM,-1,GETDATE())
--����2������ֵ�Ƿ�����ΪС��,ֱ�����С������ȡ��
SELECT DATEADD(MM,1.5,GETDATE())
SELECT DATEADD(MM,1.6,GETDATE())
SELECT DATEADD(MM,1.4,GETDATE())
--��3��DATEDIFF,������ָ������֮��Ĳ�
SELECT DATEDIFF(YY,'2008-8-8',GETDATE())
--��ʼ����С�ڽ������ڣ���ô�����ʼ���ڴ��ڽ������ڣ������Σ�
SELECT DATEDIFF(YY,GETDATE(),'2008-8-8')

--��4��DATENAME��DATEPART
--DATENAME���ص�������ָ�����ֵ�һ���ַ���ʽ����+��������������ã���Ϊ��+�������Ҷ����ַ���ʽ
SELECT DATENAME(YY,GETDATE())+DATENAME(DD,GETDATE())

--DATEPART���ص�������ָ�����ֵ�һ����ֵ��ʽ����+�����������������㣬�����������
SELECT DATEPART(YY,GETDATE())+DATEPART(DD,GETDATE())