USE E_Market
GO
--[1]>ALL父查询的中列的值必须大于子查询返回的值列表中的每一个值
SELECT * FROM table2 WHERE n>ALL( SELECT n FROM table1)

--返回结查为4
--Table2(1,2,3,4)
--Table1(2,3)


--[2]>ANY父查询的列中的值必须至少大于子查询返回值列表中的一个值
SELECT * FROM table2 WHERE n>ANY( SELECT n FROM table1)
--结果为3，4
--Table2(1,2,3,4)
--Table1(2,3)
--改为SOME的形式
SELECT * FROM table2 WHERE n>SOME( SELECT n FROM table1)

--[3]=ANY与子查询IN ：父查询中列的值必须在子查询返回的值列表中存在
SELECT * FROM table2 WHERE n=ANY( SELECT n FROM table1)

SELECT * FROM table2 WHERE n IN (SELECT n FROM table1)
--结果均为2，3
--Table2(1,2,3,4)
--Table1(2,3)

--[4]<>ANY与NOT IN
SELECT * FROM table2 WHERE n<>ANY(SELECT n FROM table1)

SELECT * FROM table2 WHERE n NOT IN(SELECT n FROM table1)
--<>ANY:结果为1，2，3，4
--NOT IN:结果为1,4
--<>ANY:父查询的结果中列的值与子查询返回的值列表中的一个不相同就可以了
  --相当于OR或者的关系， 父查询中列的值不等于子查询中值a,或者不等于b，或者不等c
--Table2(1,2,3,4)
--Table1(2,3)
--NOT IN:父查询的结果中列的值必须不能存在在子查询的返回值的列表中
--相当于AND并且的关系，父相询中列的值不等于子查询中的值a并且 不等于b并且不等于c


