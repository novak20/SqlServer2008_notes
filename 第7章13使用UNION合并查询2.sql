--�ϲ���ѯUNIOIN
USE E_Market
GO
--1�ϲ���ѯ���������еĸ������ܺͣ��кϲ��������
SELECT UserId,UserName,UserAddress FROM UserInfo

UNION
SELECT UserId,PayWay, CONVERT(varchar(10),OrderTime)
 FROM OrderInfo
 
 --2���Ӳ�ѯ WEHRE  �еĸ������ֵΪ�������еĸ����˻���
 --�������޹�
 
 SELECT UserInfo.UserId,UserName,UserAddress,OrderTime,PayWay
  FROM UserInfo,OrderInfo   --���û��WHERE�������Ͽ������󣬼��������������
  WHERE UserInfo.UserId=OrderInfo.UserId 