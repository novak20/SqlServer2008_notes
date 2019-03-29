USE E_Market
GO
--修改的语法，UPDATE 表名SET 列名=更新的值 [WHERE]
/*
1)如果要更新的值为多个，那个多个要列新的值使用英文的逗号来分隔
2)WHERE条件不写的话，将更新表中所有的数据
3)使用UPDTAE更新数据的时候可以更新一行数据，也可
能更新多行数据，也有可能不会更新任何数据
*/
--【1】省略WHERE条件的更新, 更新数据库中表的所有数据
SELECT * FROM UserInfo

--更新性别
UPDATE UserInfo SET Gender=1   --三行受影响
--【2】更新的值为一个
UPDATE UserInfo SET UserName='张三' WHERE UserId='yoyo'  --一行受影响

--【3】一次性更新多个值，中间使用英文的逗号来分隔
UPDATE UserInfo SET UserName='李四',UserAddress='北京市昌平区'
WHERE UserId='daxia'
--【4】修改的条件为多个，使用关系运算符连接
SELECT * FROM CommodityInfo

UPDATE CommodityInfo SET Amount=10 
WHERE SortId=1 AND CommodityId=3

--【5】如查要修改的数据不存在，0行受影响 
UPDATE CommodityInfo SET InPrice=900 WHERE CommodityId=4

--修改数据的三要求？
/*
	1)要修改的表是哪个？
	2)修改哪个列的值？如果要修改的值为多个，中间使用英文的逗号分隔
	3)条件是什么？ 如果条件为多个的话，使用关系运算符（AND,NOT,OR）连接
	
*/
