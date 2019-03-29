USE Demo--指向当前操作的数据库
GO
--删除主键
ALTER TABLE Employee
DROP CONSTRAINT PK_Employee
GO

--删除检查约束
ALTER TABLE Employee
DROP CONSTRAINT CK_EmployeeId
GO