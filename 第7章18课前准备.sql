USE E_Market
GO
--创建第一张表
IF EXISTS(SELECT * FROM sysobjects WHERE name='table1')
DROP TABLE table1
CREATE TABLE table1
(
	n int
)
--向第一张表中插入测试数据
INSERT INTO table1 VALUES(2)
INSERT INTO table1 VALUES(3)
--创建第二张表
IF EXISTS(SELECT * FROM sysobjects WHERE name='table2')
DROP TABLE table2
CREATE TABLE table2
(
	n int
)
INSERT INTO table2 VALUES(1)
INSERT INTO table2 VALUES(2)
INSERT INTO table2 VALUES(3)
INSERT INTO table2 VALUES(4)

--查看两个表中的数据
SELECT * FROM table1
SELECT * FROM table2

