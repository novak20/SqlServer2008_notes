--��1��CHARINDEX:��һ���ַ����в�����һ���ַ���������ҵ������ҵ���λ�ã����û���ҵ�����0
--������������ָ����ʼλ�ã�Ĭ�ϴ�1��ʼ
SELECT CHARINDEX('zxw','www.51zxw.net')
--������������һ���ǲ��ҵģ��ڶ�����Դ�ַ������������ǿ�ʼ���ҵ�λ��
SELECT CHARINDEX('zxw','www.51zxw.net',10)


--���������ڲ�ѯ����н���ʹ��
--��ѯ����˫�ʡ���������"@"���ŵ�λ��
SELECT CHARINDEX('@',Email) FROM UserInfo 
WHERE UserName='��˫��'

SELECT * FROM UserInfo WHERE UserName='��˫��'

--ʹ��CHARINDEX��Ŀ������������е��û�����ȡ����
--��2��LEN:���ӷ����ĳ���
SELECT LEN(Email) FROM UserInfo WHERE UserName='��˫��'
--��3��LEFT���ַ�������߽�ȡָ���������ַ�
SELECT LEFT(Email,CHARINDEX('@',Email)-1) 
FROM UserInfo WHERE UserName='��˫��'

--��4��REPLACE�滻һ���ַ������ַ�
SELECT REPLACE('����ϲ������ɫ�ǰ�ɫ','��ɫ','��ɫ')

SELECT REPLACE('����ϲ������ɫ�ǰ�ɫ','��ɫ','')--������һ�������ǿյĻ����൱�ڽ��ڶ�������ɾ��
--��5��STUFF--����1��Դ�ַ���������2����ʼλ�ã�����3��ɾ���ĳ��ȣ�����4�ǲ�������ַ���
SELECT STUFF('ABCDEF',2,3,'��Ҫ��ѧ��')


