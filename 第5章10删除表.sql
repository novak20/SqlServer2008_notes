--ɾ�����˳��
--1��OrderInfo 2��UserInfo  
--3)CommodityInfo 4)CommoditySort

--ʹ��SQL���ɾ��CommodityInfo���CommoditySort��
USE E_Market
GO
--ɾ��CommodityInfo��
DROP TABLE CommodityInfo
DROP TABLE CommoditySort
GO
--��μ��Ҫɾ���ı��Ƿ����
USE E_Market
GO
SELECT * FROM sysobjects 

--������ھͽ����ɾ��������ִ��ɾ�����
IF EXISTS(SELECT * FROM sysobjects WHERE name='CommodityInfo')
DROP TABLE CommodityInfo
GO