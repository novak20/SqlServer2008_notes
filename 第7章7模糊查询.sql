--��1��ʹ��LIKE����ģ����ѯ
--��ѯ�û����������û���ַ��Ϊ�Ĵ����û���Ϣ
SELECT * FROM UserInfo WHERE UserAddress LIKE '%�Ĵ�%'
--��ѯ�û�����������û���������ַ���绰
SELECT UserName,UserAddress,Phone
 FROM UserInfo WHERE UserName LIKE '��%'
 
 --LIKE�ص�:
 /*
 1��ֻ�����ַ���һ��ʹ��
 2�����ڲ�ѯ����еĸ������̶�
 */
 
 --��2��BETWEEN ..AND ��ѯ��������ֵ֪��֮���δ֪��ֵ
 --��ѯ�������й��� ����2��10֮�������
 SELECT * FROM OrderInfo WHERE Amount BETWEEN 2 AND 10
 --BETWEEN ..AND �ص�
 /*
	1����ѯ������ֵֹ
	2����ʼֵС����ֵֹ
	3��BETWEEN..ANDʵ�����Ǵ��ڵ��ڡ���С�ڵ��ڵ���ʽ,�Ǵ��ڵ��ڵ�һ������С�ڵ��ڵڶ������ļ�д
	4����������ֵ����������һ��ʹ��
 */
 SELECT * FROM OrderInfo WHERE Amount BETWEEN 10 AND 2--�鲻���κ�����
 
 --�൱��
 SELECT * FROM OrderInfo WHERE Amount>=10 AND Amount<=2
 --��������һ��ʹ�õľ���
 --��ѯ�µ����ڲ��ڡ�2012-1-1������2013-1-1��֮��Ķ�����Ϣ
 SELECT * FROM OrderInfo 
 WHERE OrderTime NOT  BETWEEN '2012-1-1' AND '2013-1-1'
 --ʹ��NOT�Խ������ȡ��
 
 --��3��ʹ��IN���о�ֵ��Χ�ڽ��в�ѯ
 --��ѯʹ�á��������С����ʾֻ���ʽ�µ�����Ϣ
 SELECT * FROM OrderInfo WHERE PayWay IN
 ('��������','�ʾֻ��')
 /*
	1���������ַ��ͣ���ֵ�ͣ��Լ�������һ��ʹ��
	2��ͨ�������Ӳ�ѯ
	3���൱��ʹ��OR�������ӵĲ�ѯ
 */
 SELECT * FROM OrderInfo WHERE PayWay ='��������'  OR 
 PayWay='�ʾֻ��'