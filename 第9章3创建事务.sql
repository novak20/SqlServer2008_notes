USE E_Market
GO
SET NOCOUNT ON--����ʾ��Ӱ�������
--
PRINT '�鿴ת��֮ǰ�����'
SELECT * FROM bank
GO

--��ʼ���񣨴Ӵ˴���ʼ��������T-SQL�����һ�����壩
--[1]��ʼ����
BEGIN TRAN
--[2]��������������ۼ�����ִ�й����еĴ���
DECLARE @error int
--[3]����2���������ı�����ֵ
SET @error=0
--[4]��ʼת�ˣ���С�����˻��м�500
UPDATE bank SET currentMoney=currentMoney-300 WHERE customerName='��С��'
--[5]�ۼӴ���
SET @error=@error+@@ERROR
----�ظ�ִ�У���4������5��
--��С���˻���500
UPDATE bank SET currentMoney =currentMoney+300 WHERE customerName='��С��'
SET @error=@error+@@ERROR

PRINT '�鿴ת�˹����е����'
SELECT * FROM bank

--[6]ʹ��IF..ELSEȥ�ж��ۼӵĴ���ţ�ȷ���������ύ���ǻع���������
IF (@error>0)
	BEGIN
		PRINT '����ʧ�ܣ��ع�����'
		ROLLBACK TRAN   --�ع�����
	END
ELSE
	BEGIN
		PRINT '���׳ɹ����ύ����д��Ӳ��!'
		COMMIT TRAN --�ύ����
	END

--�鿴ת�����������
PRINT '�鿴ת�����������'
SELECT * FROM bank
GO
