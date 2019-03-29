PRINT '错误号'+@@ERROR

--解决方案
--【1】使用CAST函数转换   "+"起的是连接作用，连接运算符 
PRINT '错误号:'+CAST(@@ERROR AS varchar(5))

--【2】使用CONVERT函数转换
PRINT '错误号:'+CONVERT(varchar(5),@@ERROR)


--两个函数进行类型转换时的异同点
/*
	相同点：都能够将某数据类型转换为另一种数据类型
	不同点：CONVERT有三个参数，第一个参数是转换的类型，第二个参数是要转换的表达式
	        第三个参数是转换的格式，在转换日期日间型的数据CONVERT更具有优势
*/
--使用两个函数分别对日期进行转换
--【1】使用CAST转换当前日期
SELECT CAST(GETDATE()  AS varchar(10))

--【2】使用CONVERT转换当前日期
SELECT CONVERT(varchar(10),GETDATE(),111)
SELECT CONVERT(varchar(10),GETDATE(),102)