--【1】简单的IF...ELSE举例
DECLARE @x int ,@y int   --声明两个 int类型的变量
SELECT @x=20,@y=15   --使用SELECT可以一次性为多个变量赋值，中间使用英文的逗号分隔
--使用IF...ELSE结构根据判断的结果进行输出
IF(@x>=@y)
	BEGIN
		PRINT'@x大于或等于@y'
		PRINT ' '
	END
ELSE
	BEGIN
		PRINT'@x小于@y'
	END
PRINT'程序结束了'  --既不属于IF 也不属性ELSE,是分支结构后的代码
	--1、只有一句语句省略了BEGIN..END
	--2、如果代码超过1句必须加上BEGIN..END
	--3、无论条件成立与否都将执行IF..ELSE结构后的代码
	
--IF...ELSE	在SQL语句中的使用
--在订单表中查看xiangxiang最近一次的销费金额，如果
--金额大于100元赠送5元红包，否则就赠送1元红包

--？销费金额是多少？根据销费金额判断是否>100
--[1]声明变量用于保存最近的下单时间和销费金额
DECLARE @date datetime,@payMoney money
--[2]根据用户名去查询最近的一次下单时间赋给变量@date
SELECT @date=MAX(OrderTime) FROM OrderInfo WHERE UserId='xiangxiang'
--[3]根据最近的小单时间和用户名查询销费金额
SELECT @payMoney=PayMoney FROM OrderInfo WHERE OrderTime=@date AND UserId='xiangxiang'

--[4]使用IF..ELSE结构，根据销费金额的多少来输出相应的红包
IF(@payMoney>100)
	BEGIN
		PRINT '销费金额为'+CAST(@payMoney AS varchar(5))
		PRINT '销费金额大于100元赠送5元红包'
	END
ELSE
	BEGIN
		PRINT '销费金额为:'+CONVERT(varchar(5),@payMoney)
		PRINT '销费金额没有大于100元，所以只能得到1元红包'
	END

GO
