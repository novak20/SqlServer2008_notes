USE E_Market
GO
--[1]在查询中使用常量列
SELECT UserId 用户号,PayWay 付款方式,PayMoney 付款金额,
'天猫' AS 购物网站 FROM OrderInfo

--[2]查询返回限制的行数，使用TOP关键字
  --(1)返回限定的个数
  SELECT TOP 5 UserName AS 用户名,UserAddress AS 地址
   FROM UserInfo WHERE Gender=1
  --(2)返回限定百份比 20% PERCENT
    SELECT TOP 20 PERCENT UserName AS 用户名,UserAddress AS 地址
   FROM UserInfo WHERE Gender=1
   
   -- 数据库中用户表中女生的用户有几条？X*20%=2   X=？X*0.2=2  X*2=20  X=10
   SELECT * FROM UserInfo WHERE Gender=1   --6*0.2  =1.2条
   --使用百份比的形式能够得到大概的数据而非精确的数据
   
   --[3]在查询的结查集中进行排序，关键字是ORDER BY 升序为ASC,降序为DESC
   --将订单表中付款金额由高到低的顺序显示
   SELECT UserId,PayWay,PayMoney FROM OrderInfo
   ORDER BY PayMoney DESC
   --如何按照多列进行排序
   
   --按购买数量降序，按付款金额升序，
   SELECT UserId,PayWay,Amount,PayMoney FROM OrderInfo
   ORDER BY Amount DESC,PayMoney ASC