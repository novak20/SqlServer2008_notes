--��1����ѯ�����û�����Ů�û����������Ƕ��٣�
--��1��������SQL ������
USE E_Market
GO
SELECT COUNT(*) FROM UserInfo WHERE Gender=0--�����û�
SELECT COUNT(*) FROM UserInfo WHERE Gender=1--Ů���û�
--��2��ʹ�÷��������
SELECT COUNT(*) AS ������,Gender AS �Ա� FROM UserInfo
GROUP BY Gender

--���ڷ����в鿴�û�������  --��ִ�г���
SELECT COUNT(*) AS ������,Gender AS �Ա�,UserName AS �û�����
 FROM UserInfo
GROUP BY Gender
--ע������Բ�ѯ���������ƣ����˾ۺϺ����⣬�ͱ����Ƿ������

--[2]�ڷ���֮����ζԷ���Ľ���������� ORDER BY ,ASC����DESC����
--��������ѯÿ����Ʒ����������������������
  --С���ɣ���ÿ������������������ʾ��Ƿ������
  SELECT CommodityId AS ��Ʒ���,SUM(Amount) AS ��������
   FROM OrderInfo
  GROUP BY CommodityId
  ORDER BY SUM(Amount) DESC
  
  --[3]��ζԷ����Ľ������ɸѡ HAVING
  --WHERE ���ڷ���֮ǰ������ɸѡ��HAVING���ڷ���������ɸѡ
  --��ѯ������������10����Ʒ��Ϣ
  
    SELECT CommodityId AS ��Ʒ���,SUM(Amount) AS ��������
   FROM OrderInfo
   
  GROUP BY CommodityId
 
  HAVING SUM(Amount)>10
  ORDER BY SUM(Amount) DESC
  
  --�����һ����ѯ��ͬʱ��WHERE ��HAVING������
  --����
  --SELECT ..FROM ..WHERE ..GROUP BY..HAVING..ORDER BY
  --��ѯ��2013-1-1��2014-11-30��������������10����Ʒ���
  SELECT SUM(Amount) AS ��������,CommodityId AS ��Ʒ���
  FROM OrderInfo
  WHERE OrderTime BETWEEN '2013-1-1' AND '2014-11-30'
  GROUP BY CommodityId
  HAVING SUM(Amount)>10
  ORDER BY SUM(Amount) DESC
  
  
  
  
  