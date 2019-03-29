--创建视图的注意事项
/*
1、创建视图的SELECT语句中不能包括ORDER BY,如果使用ORDER BY查询必须使用TOP
 限制行数
 2、不能使用INTO关键字
 3、不用使用表变量或临时表
*/
--INTO,把数据从已存在的表中查询出来，添加到新表中，这个新表不存在
SELECT * 
INTO newTable   --newTable不存在，
FROM CommodityInfo

GO
CREATE VIEW vw_newTable2
AS 
  SELECT * 
--INTO newTable2   --创建视图不允许使用INTO，
FROM CommodityInfo
GO

--临时表
/*
  1、存储在tempdb
  2、本地临时表以“#”开头，全局临时表以"##"开头
  3、断开连接时临时表就被删除
*/
CREATE TABLE #newTable   
(
	id int,
	userName varchar(20)
)
GO

CREATE VIEW vw_newTable   --不允许使用临时表创建视图
AS 
  SELECT * FROM #newTable
GO
--表变量
/*
 1、表变量实际是变量一种形式
 2、以@开头
 3、存在内存中
*/
DECLARE @table TABLE 
(
	ID int,
	name varchar(20)
) 
GO
CREATE VIEW vw_Table
AS 
 SELECT * FROM @table--创建视图时不允许使用表变量
GO