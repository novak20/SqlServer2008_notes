--【1】随机数RAND,如果指定了随机种子，那么返回的随机数都相同，
--如果没有指定随机种子，那么系统自动分配，所以每次的返回值都不相同
SELECT RAND(100)
SELECT RAND(100)
SELECT RAND()
SELECT RAND()

--【2】CEILING:英文意思是天花板,正数进位取大值，负数舍小数取大值
SELECT CEILING(9.000001)
SELECT CEILING(-9.000001)
--【3】FLOOR: 英文意思是地板,正数舍小数取小值，负数进位取小值
SELECT FLOOR(9.999999)
SELECT FLOOR(-9.000001)

--【4】ROUND:对数值进行四舍五入
SELECT ROUND(123.565,2)
SELECT ROUND(-123.434,2)

--【5】ABS取绝对值，正数的绝对值是本身，负数的绝对值是相反数，0的绝对值是0
SELECT ABS(434)
SELECT ABS(-987)
SELECT ABS(0)

--【6】系统函数CONVERT用于数据类型转换
--将字符型转为数值型
SELECT CONVERT(int,'12')+CONVERT(int,'10')  --+号起的是算术运算，相加运算

--将数值型转为字符型
SELECT CONVERT(varchar(2),12)+CONVERT(varchar(2),10)--+号是连接运算符，起连接作用

--将日期型转为字符型
SELECT CONVERT(varchar(10),GETDATE(),102)
SELECT CONVERT(varchar(10),GETDATE(),112)