/*
创建存储过程，
1)在默认值的参数写在最后
2)存储过程创建结束，必须加批处理的GO
*/

CREATE PROC usp_Demo
AS 
 SELECT * FROM UserAddress
GO

--DROP PROC usp_Demo
EXEC usp_Demo
SELECT * FROM OrderInfo

EXEC usp_GetOrderInfo '2014-1-1','yoyo',DEFAULT

EXEC usp_GetOrderInfo @startDate='2014-1-1',@userId='yoyo',
@endDate=default

EXEC usp_GetOrderInfo '2014-1-1',@userId='yoyo',
@endDate=default


GO


 sp_databases
GO
/**
 调用存储过程的注意事项
 1)不写参数名，必须与定义的时候的参数顺序相同
 2)不按照顺序，必须写在上参数名
 3)如果一个写为"@名称=值"的形式，那么后面所有的都必须按这个格式去写
 4)如果调用存储过程是批处理中的第一句话，那么可以不写EXEC 

*/