--批处理的特点
--1自成一行
USE E_Market GO  --GO之前不能有T-SQL语句，

USE E_Market
GO /*GO后面这是第二个批处理的开始*/SELECT * FROM UserInfo
GO --GO的后面可以重新开始一个批处理，但这样的话会影响可读性
--总结：之前不能有T-SQL语句，之后有T-SQL语句严重影响可读性，
--所以GO要独占一行

--2每个批处理单独发送到服务器去执行，一个批处理出错，不会影响另外的批处理
SELECT 1/0  --
GO
--第一个批处理的结束
SELECT 0/1
GO

--3GO是批处理结束的标志，但不是T-SQL命令
  --Management Studio 所识别的命令