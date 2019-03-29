--使用UNION进行合并查询
--SELECT ...FROM 表名1 
--UNION 
--SELECT ...FROM 表名2
--举例：
USE E_Market
GO

SELECT UserId AS 用户编号 ,UserName AS 用户姓名,
UserAddress AS 地址
 FROM UserInfo
 
UNION

SELECT PayWay AS 付款方式,UserId AS 下单用户名,
CONVERT(varchar(10),OrderTime) AS 下单时间
 FROM OrderInfo
 
 UNION ALL
 
 SELECT UserId AS 用户编号 ,UserName AS 用户姓名,
UserAddress AS 地址
 FROM UserInfo
 
 
 --合并查询特点
 /*
 1、合并查询要求合并的表列数相同
 2、要求列的类型相同或相兼容,列的名称由第一个查询中的列决定
 3、行的个数由表中的行的总和决定，如查有重复行将舍掉
     如果想显示所有合并的数据需加上UNION ALL
 4、从上向下代次执行，可以使用空格或者是列的顺序来改变结果集中的数据位置
 */
 SELECT COUNT(*) FROM UserInfo
 SELECT COUNT(*) FROM OrderInfo
 
 --演示特点4
 SELECT UserId AS 用户编号 ,UserName AS 用户姓名,
UserAddress AS 地址
 FROM UserInfo
 
UNION

SELECT  ' ', UserId AS 下单用户名 ,
CONVERT(varchar(10),OrderTime) AS 下单时间
 FROM OrderInfo
 
 --特点5：如果想把合并的结果插入到新表中显示那么SELECT INTO必须放在第一个查询中
 SELECT UserId,UserName,UserAddress 
 INTO newTables
 FROM UserInfo
 
 UNION
 SELECT UserId,PayWay,CONVERT(varchar(10),PayMoney)
 
  --INTO newTables放到第二个查询中将报错
  FROM OrderInfo
 
 --特点6：如果想对合并的结查进行排序，那么ORDER BY 必须放到最后一个SELECT语句中
 SELECT UserId,UserName,UserAddress 
 FROM UserInfo --ORDER BY UserId
 
 UNION 
 
 SELECT UserId,PayWay,CONVERT(varchar(10),PayMoney)
  FROM OrderInfo ORDER BY UserId DESC

