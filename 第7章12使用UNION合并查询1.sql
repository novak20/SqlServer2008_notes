--ʹ��UNION���кϲ���ѯ
--SELECT ...FROM ����1 
--UNION 
--SELECT ...FROM ����2
--������
USE E_Market
GO

SELECT UserId AS �û���� ,UserName AS �û�����,
UserAddress AS ��ַ
 FROM UserInfo
 
UNION

SELECT PayWay AS ���ʽ,UserId AS �µ��û���,
CONVERT(varchar(10),OrderTime) AS �µ�ʱ��
 FROM OrderInfo
 
 UNION ALL
 
 SELECT UserId AS �û���� ,UserName AS �û�����,
UserAddress AS ��ַ
 FROM UserInfo
 
 
 --�ϲ���ѯ�ص�
 /*
 1���ϲ���ѯҪ��ϲ��ı�������ͬ
 2��Ҫ���е�������ͬ�������,�е������ɵ�һ����ѯ�е��о���
 3���еĸ����ɱ��е��е��ܺ;�����������ظ��н����
     �������ʾ���кϲ������������UNION ALL
 4���������´���ִ�У�����ʹ�ÿո�������е�˳�����ı������е�����λ��
 */
 SELECT COUNT(*) FROM UserInfo
 SELECT COUNT(*) FROM OrderInfo
 
 --��ʾ�ص�4
 SELECT UserId AS �û���� ,UserName AS �û�����,
UserAddress AS ��ַ
 FROM UserInfo
 
UNION

SELECT  ' ', UserId AS �µ��û��� ,
CONVERT(varchar(10),OrderTime) AS �µ�ʱ��
 FROM OrderInfo
 
 --�ص�5�������Ѻϲ��Ľ�����뵽�±�����ʾ��ôSELECT INTO������ڵ�һ����ѯ��
 SELECT UserId,UserName,UserAddress 
 INTO newTables
 FROM UserInfo
 
 UNION
 SELECT UserId,PayWay,CONVERT(varchar(10),PayMoney)
 
  --INTO newTables�ŵ��ڶ�����ѯ�н�����
  FROM OrderInfo
 
 --�ص�6�������Ժϲ��Ľ�����������ôORDER BY ����ŵ����һ��SELECT�����
 SELECT UserId,UserName,UserAddress 
 FROM UserInfo --ORDER BY UserId
 
 UNION 
 
 SELECT UserId,PayWay,CONVERT(varchar(10),PayMoney)
  FROM OrderInfo ORDER BY UserId DESC

