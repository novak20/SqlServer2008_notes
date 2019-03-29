USE Demo--指向当前所操作的数据库
GO

--向职位表添加约束
ALTER TABLE Post
ADD CONSTRAINT PK_PostId PRIMARY KEY(PostId)
GO

--向员工表添加约束
ALTER TABLE Employee
ADD CONSTRAINT PK_EmployeeNo PRIMARY KEY(EmployeeNo),
	CONSTRAINT CK_EmployeeId CHECK(LEN(EmployeeId)=18),
	CONSTRAINT UQ_EmplyeeId  UNIQUE (EmployeeId),
	CONSTRAINT CK_Age CHECK(Age>=18 AND Age<=55),
	CONSTRAINT FK_PostId FOREIGN KEY(PostId) REFERENCES Post(PostId),
	CONSTRAINT DF_Country DEFAULT('中国') FOR Country
GO
