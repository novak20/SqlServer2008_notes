USE Demo --指向当前操作的数据库
GO
ALTER TABLE Employee
ADD CONSTRAINT CK_EmployeeId CHECK(LEN(EmployeeId)=18)
GO

--向已存在数据的表中添加约束
ALTER TABLE Employee WITH NOCHECK
ADD CONSTRAINT CK_EmployeeId CHECK(LEN(EmployeeId)=18)
GO