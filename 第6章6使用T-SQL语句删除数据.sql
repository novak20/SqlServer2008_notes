USE E_Market
GO
--删除的语法 使用DELETE进行删除 DELETE [FROM] 表名 [WHERE ]
--【1】基本删除，省略WHERE 它将删除表中所有的数据
SELECT * FROM OrderInfo --查看订单表中所有的数据

DELETE FROM  OrderInfo   --三行受影响
--使用DELETE进行删除数据，删除后，标识列继续增长，不会从标识种子开始

--【2】带条件的删除，是否存在主外键关系，如果存在，先删除子表中的数据，再删除主表中的数据
--先删除子表中的数据
DELETE OrderInfo WHERE UserId='yoyo'

DELETE UserInfo WHERE UserId='yoyo'

SELECT * FROM UserInfo
SELECT * FROM OrderInfo

--删除两要求 1）哪个表？2？条件是什么？

--使用TRUNCATE TABLE 删除数据
/*1)类似于没有WHERE条件的DELETE语句，删除表中所有的数据
 2) 删除数据之后，再插入数据，标识列从标识种子开始
 3)不能用于有外键约束的表
 */
 --删除OrderInfo中的数据
 TRUNCATE TABLE OrderInfo
 
 --不能用于有外键约束的表
 
 --因为UserInfo表中的UserId被OrderInfo中的UserId所引用所以使用
 --TRUNCATE TABLE 删除数据时会报错
 TRUNCATE TABLE UserInfo
 
 --但是可以使用DELETE删除表中所有数据
 DELETE UserInfo 
 
 