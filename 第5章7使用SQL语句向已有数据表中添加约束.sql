USE Demo --ָ��ǰ���������ݿ�
GO
ALTER TABLE Employee
ADD CONSTRAINT CK_EmployeeId CHECK(LEN(EmployeeId)=18)
GO

--���Ѵ������ݵı������Լ��
ALTER TABLE Employee WITH NOCHECK
ADD CONSTRAINT CK_EmployeeId CHECK(LEN(EmployeeId)=18)
GO