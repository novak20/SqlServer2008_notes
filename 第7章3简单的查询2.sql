USE E_Market
GO
--[1]�ڲ�ѯ��ʹ�ó�����
SELECT UserId �û���,PayWay ���ʽ,PayMoney ������,
'��è' AS ������վ FROM OrderInfo

--[2]��ѯ�������Ƶ�������ʹ��TOP�ؼ���
  --(1)�����޶��ĸ���
  SELECT TOP 5 UserName AS �û���,UserAddress AS ��ַ
   FROM UserInfo WHERE Gender=1
  --(2)�����޶��ٷݱ� 20% PERCENT
    SELECT TOP 20 PERCENT UserName AS �û���,UserAddress AS ��ַ
   FROM UserInfo WHERE Gender=1
   
   -- ���ݿ����û�����Ů�����û��м�����X*20%=2   X=��X*0.2=2  X*2=20  X=10
   SELECT * FROM UserInfo WHERE Gender=1   --6*0.2  =1.2��
   --ʹ�ðٷݱȵ���ʽ�ܹ��õ���ŵ����ݶ��Ǿ�ȷ������
   
   --[3]�ڲ�ѯ�Ľ�鼯�н������򣬹ؼ�����ORDER BY ����ΪASC,����ΪDESC
   --���������и������ɸߵ��͵�˳����ʾ
   SELECT UserId,PayWay,PayMoney FROM OrderInfo
   ORDER BY PayMoney DESC
   --��ΰ��ն��н�������
   
   --�������������򣬰�����������
   SELECT UserId,PayWay,Amount,PayMoney FROM OrderInfo
   ORDER BY Amount DESC,PayMoney ASC