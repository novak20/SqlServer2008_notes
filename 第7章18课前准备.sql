USE E_Market
GO
--������һ�ű�
IF EXISTS(SELECT * FROM sysobjects WHERE name='table1')
DROP TABLE table1
CREATE TABLE table1
(
	n int
)
--���һ�ű��в����������
INSERT INTO table1 VALUES(2)
INSERT INTO table1 VALUES(3)
--�����ڶ��ű�
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

--�鿴�������е�����
SELECT * FROM table1
SELECT * FROM table2

