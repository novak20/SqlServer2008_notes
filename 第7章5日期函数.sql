--【1】获得当前系统时间
SELECT GETDATE()
--【2】DATEADD()参数1，指定的日期部分，参数2，整数值，参数3，有效的日期格式
SELECT DATEADD(MM,1,GETDATE())
--参数2的整数是否允许为负数,允许
SELECT DATEADD(MM,-1,GETDATE())
--参数2的整数值是否允许为小数,直接舍点小数部分取整
SELECT DATEADD(MM,1.5,GETDATE())
SELECT DATEADD(MM,1.6,GETDATE())
SELECT DATEADD(MM,1.4,GETDATE())
--【3】DATEDIFF,求两个指定日期之间的差
SELECT DATEDIFF(YY,'2008-8-8',GETDATE())
--开始日期小于结束日期，那么如果开始日期大于结束日期，结果如何？
SELECT DATEDIFF(YY,GETDATE(),'2008-8-8')

--【4】DATENAME与DATEPART
--DATENAME返回的是日期指定部分的一个字符形式，“+”起的是连接作用，因为“+”号左右都是字符形式
SELECT DATENAME(YY,GETDATE())+DATENAME(DD,GETDATE())

--DATEPART返回的是日期指定部分的一个数值形式，“+”起的作用是相加运算，是算术运算符
SELECT DATEPART(YY,GETDATE())+DATEPART(DD,GETDATE())