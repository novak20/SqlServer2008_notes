--CommoditySort  CommodityInfo(UserInfo) OrderInfo
--[1]���б�ʶ�еı��в������ݣ�Ҫ���ʶ�в������ֶ���������
USE E_Market--ָ��ǰ�����������ݿ�
GO
--����Ʒ�����������
INSERT INTO CommoditySort VALUES('�ֻ�����')
--2,3��ҵ��Ҫ��ѧԱ���յ�һ�����

SELECT * FROM CommoditySort

--[2]��������е��в������ݣ�Ҫ��ֵ��˳��������е�˳����ȫһ�£�������ʡ��
--���û����������
INSERT UserInfo VALUES('yoyo','iloveyou','¬����',1,'lxf@sohu.com','��������','010-82338233') 

SELECT * FROM UserInfo

--[3]����зǿ��в������ݣ�Ҫ���еĸ�����ֵ�ĸ���������ȫ��ͬ
--����Ʒ��Ϣ���������
INSERT INTO CommodityInfo(SortId,CommodityName,InPrice,OutPrice,Amount)
VALUES(1,'����Z3',3300,42999,100)

SELECT * FROM CommodityInfo

--[4]����Ĭ��ֵ�ı��в������ݣ�Ĭ��ֵʹ��DEFAULT

INSERT INTO OrderInfo(UserId,CommodityId,Amount,PayMoney,PayWay,OrderTime,SendGoods,Confirm)
VALUES('yoyo',1,2,8589,DEFAULT,'2014-3-26',1,1)

SELECT * FROM OrderInfo

--��ҵ�ο���
USE E_Market
GO
--����Ʒ�����������
INSERT INTO CommoditySort VALUES('ͼ������')
INSERT INTO CommoditySort VALUES('���õ���')
SELECT * FROM CommoditySort

--���û����������

INSERT INTO UserInfo 
VALUES('feiyang','hongmei','�η���',0,'dfy@qq.com','�����ɽ�','0432-33232234')

INSERT INTO UserInfo 
VALUES('daxia','langyashan','�Կ���',0,'zky@123.com','�Ϻ�����','021-84538653')

SELECT * FROM UserInfo

--����Ʒ��Ϣ���������
INSERT INTO CommodityInfo(SortId,CommodityName,InPrice,OutPrice,Amount)
VALUES(2,'JavaScriptָ��',20,50,200)

INSERT INTO CommodityInfo(SortId,CommodityName,InPrice,OutPrice,Amount)
VALUES(1,'��Ϊ��ҫ3C����',500,799,80)


SELECT * FROM CommodityInfo

--�򶩵����������

INSERT INTO OrderInfo(UserId,CommodityId,Amount,PayMoney,PayWay,OrderTime,Confirm,SendGoods)
VALUES('feiyang',2,10,500,'�ʾֻ��','2014-2-26',1,1)

INSERT INTO OrderInfo(UserId,CommodityId,Amount,PayMoney,PayWay,OrderTime,Confirm,SendGoods)
VALUES('daxia',3,3,2397,'����ת��','2014-1-08',1,1)

SELECT * FROM OrderInfo

