--【1】使用LIKE进行模糊查询
--查询用户表中所有用户地址中为四川的用户信息
SELECT * FROM UserInfo WHERE UserAddress LIKE '%四川%'
--查询用户表中姓李的用户姓名，地址，电话
SELECT UserName,UserAddress,Phone
 FROM UserInfo WHERE UserName LIKE '李%'
 
 --LIKE特点:
 /*
 1、只能与字符型一起使用
 2、对于查询结果中的个数不固定
 */
 
 --【2】BETWEEN ..AND 查询在两个已知值的之间的未知的值
 --查询订单表中购买 数量2到10之间的数据
 SELECT * FROM OrderInfo WHERE Amount BETWEEN 2 AND 10
 --BETWEEN ..AND 特点
 /*
	1、查询包含起止值
	2、起始值小于终止值
	3、BETWEEN..AND实际上是大于等于。。小于等于的形式,是大于等于第一个数，小于等于第二个数的简写
	4、可以与数值型与日期型一起使用
 */
 SELECT * FROM OrderInfo WHERE Amount BETWEEN 10 AND 2--查不到任何数据
 
 --相当于
 SELECT * FROM OrderInfo WHERE Amount>=10 AND Amount<=2
 --与日期型一起使用的举例
 --查询下单日期不在‘2012-1-1’到‘2013-1-1’之间的订单信息
 SELECT * FROM OrderInfo 
 WHERE OrderTime NOT  BETWEEN '2012-1-1' AND '2013-1-1'
 --使用NOT对结果进行取反
 
 --【3】使用IN在列举值范围内进行查询
 --查询使用‘网上银行’‘邮局汇款’方式下单的信息
 SELECT * FROM OrderInfo WHERE PayWay IN
 ('网上银行','邮局汇款')
 /*
	1、可以与字符型，数值型，以及日期型一起使用
	2、通常用于子查询
	3、相当于使用OR进行连接的查询
 */
 SELECT * FROM OrderInfo WHERE PayWay ='网上银行'  OR 
 PayWay='邮局汇款'