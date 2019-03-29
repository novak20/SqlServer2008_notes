USE E_Market
GO
--[1]查询全部的行和列,*代表所有的行和列
SELECT * FROM UserInfo

--[2]查询部分行和列，部分行使用WEHRE来限制，部分列使用列名来限制
SELECT UserId ,PayWay,PayMoney FROM OrderInfo 
WHERE PayWay='网上银行'  --“=”的作用是比较运算符，将左右两边的值进行相比

--同理，查询一下付款的方式不是“网上银行”的订单信息
SELECT UserId,PayWay,PayMoney FROM OrderInfo 
WHERE PayWay<>'网上银行'  --不等于也可以使用"!="非SQL92标准

--[3]在查询的结查集中使得别名
 --（1）使用AS关键字来改变结果集中的别名
 SELECT UserId AS 用户名 ,PayWay AS 付款方式,PayMoney AS 付款金额
  FROM OrderInfo 
WHERE PayWay='网上银行' 

--（2）使用“=”赋值运算符来改变结果集中的别名，赋值的顺序是从右向左赋值
SELECT 用户名=UserId ,付款方式=PayWay,付款金额=PayMoney FROM OrderInfo 
WHERE PayWay='网上银行' 

--（3）使用“空格”来改变结果集中列的别名
SELECT UserId 用户名 ,PayWay 付款方式,PayMoney 付款金额
 FROM OrderInfo 
WHERE PayWay='网上银行' 

--[4]查询NULL值
SELECT * FROM UserInfo WHERE Email IS NULL
--如果原来有数据，而后又被删除，那么使用IS NULL能否查询到？查不到
SELECT * FROM UserInfo WHERE Email IS NULL OR Email=''

--IS NULL与''的区别
--IS NULL:从未录入过数据，没有地址
--''：录入过数据，而后被删除，是有地址
