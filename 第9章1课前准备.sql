--[1]�������ݱ��������������
USE E_Market
GO
--���������˻���bank
IF EXISTS(SELECT *FROM sysobjects WHERE name='bank')
DROP TABLE bank
GO
CREATE TABLE bank
(
	customerName char(20),--�ͻ�����
	currentMoney money--��ǰ���
)
GO
--���Լ�����˻���������1Ԫ
ALTER TABLE bank
ADD CONSTRAINT CK_currentMoney CHECK(currentMoney>=1)
GO
--�����������
INSERT INTO bank(customerName,currentMoney) VALUES('��С��',500)
INSERT INTO bank(customerName,currentMoney) VALUES('��С��',2000)
--�鿴���
SELECT * FROM bank
GO
