USE E_Market
GO
--[1]��ѯȫ�����к���,*�������е��к���
SELECT * FROM UserInfo

--[2]��ѯ�����к��У�������ʹ��WEHRE�����ƣ�������ʹ������������
SELECT UserId ,PayWay,PayMoney FROM OrderInfo 
WHERE PayWay='��������'  --��=���������ǱȽ�����������������ߵ�ֵ�������

--ͬ����ѯһ�¸���ķ�ʽ���ǡ��������С��Ķ�����Ϣ
SELECT UserId,PayWay,PayMoney FROM OrderInfo 
WHERE PayWay<>'��������'  --������Ҳ����ʹ��"!="��SQL92��׼

--[3]�ڲ�ѯ�Ľ�鼯��ʹ�ñ���
 --��1��ʹ��AS�ؼ������ı������еı���
 SELECT UserId AS �û��� ,PayWay AS ���ʽ,PayMoney AS ������
  FROM OrderInfo 
WHERE PayWay='��������' 

--��2��ʹ�á�=����ֵ��������ı������еı�������ֵ��˳���Ǵ�������ֵ
SELECT �û���=UserId ,���ʽ=PayWay,������=PayMoney FROM OrderInfo 
WHERE PayWay='��������' 

--��3��ʹ�á��ո����ı��������еı���
SELECT UserId �û��� ,PayWay ���ʽ,PayMoney ������
 FROM OrderInfo 
WHERE PayWay='��������' 

--[4]��ѯNULLֵ
SELECT * FROM UserInfo WHERE Email IS NULL
--���ԭ�������ݣ������ֱ�ɾ������ôʹ��IS NULL�ܷ��ѯ�����鲻��
SELECT * FROM UserInfo WHERE Email IS NULL OR Email=''

--IS NULL��''������
--IS NULL:��δ¼������ݣ�û�е�ַ
--''��¼������ݣ�����ɾ�������е�ַ
