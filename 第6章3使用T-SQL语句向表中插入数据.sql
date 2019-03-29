--CommoditySort  CommodityInfo(UserInfo) OrderInfo
--[1]向含有标识列的表中插入数据，要求标识列不允许手动插入数据
USE E_Market--指向当前所操作的数据库
GO
--向商品类别表添加数据
INSERT INTO CommoditySort VALUES('手机数码')
--2,3作业，要求学员访照第一条添加

SELECT * FROM CommoditySort

--[2]向表中所有的列插入数据，要求值的顺序必须与列的顺序完全一致，列名可省略
--向用户表添加数据
INSERT UserInfo VALUES('yoyo','iloveyou','卢晓凤',1,'lxf@sohu.com','北京海淀','010-82338233') 

SELECT * FROM UserInfo

--[3]向表中非空列插入数据，要求列的个数与值的个数必须完全相同
--向商品信息表添加数据
INSERT INTO CommodityInfo(SortId,CommodityName,InPrice,OutPrice,Amount)
VALUES(1,'索引Z3',3300,42999,100)

SELECT * FROM CommodityInfo

--[4]向含用默认值的表中插入数据，默认值使用DEFAULT

INSERT INTO OrderInfo(UserId,CommodityId,Amount,PayMoney,PayWay,OrderTime,SendGoods,Confirm)
VALUES('yoyo',1,2,8589,DEFAULT,'2014-3-26',1,1)

SELECT * FROM OrderInfo

--作业参考答案
USE E_Market
GO
--向商品类别表插入数据
INSERT INTO CommoditySort VALUES('图书音像')
INSERT INTO CommoditySort VALUES('家用电器')
SELECT * FROM CommoditySort

--向用户表添加数据

INSERT INTO UserInfo 
VALUES('feiyang','hongmei','段飞扬',0,'dfy@qq.com','吉林松江','0432-33232234')

INSERT INTO UserInfo 
VALUES('daxia','langyashan','赵可以',0,'zky@123.com','上海长宁','021-84538653')

SELECT * FROM UserInfo

--向商品信息表添加数据
INSERT INTO CommodityInfo(SortId,CommodityName,InPrice,OutPrice,Amount)
VALUES(2,'JavaScript指南',20,50,200)

INSERT INTO CommodityInfo(SortId,CommodityName,InPrice,OutPrice,Amount)
VALUES(1,'华为荣耀3C畅玩',500,799,80)


SELECT * FROM CommodityInfo

--向订单表添加数据

INSERT INTO OrderInfo(UserId,CommodityId,Amount,PayMoney,PayWay,OrderTime,Confirm,SendGoods)
VALUES('feiyang',2,10,500,'邮局汇款','2014-2-26',1,1)

INSERT INTO OrderInfo(UserId,CommodityId,Amount,PayMoney,PayWay,OrderTime,Confirm,SendGoods)
VALUES('daxia',3,3,2397,'银行转账','2014-1-08',1,1)

SELECT * FROM OrderInfo

