--COMMIT ����������Ӱ��  ��ʹ����Ƕ������
PRINT @@TRANCOUNT   --��û�������ʱ��鿴һ��������
BEGIN TRAN  --��ʼ����

	PRINT @@TRANCOUNT  --��ʼ����@@trancount��������Ϊ1
	
	BEGIN TRAN  --��ʼ�ڶ�������
	
		PRINT @@TRANCOUNT --������+1
		
	COMMIT TRAN  --�ύ�ڶ�������
	
	PRINT @@TRANCOUNT --������-1
	
COMMIT TRAN --�ύ��һ������, ������-1

PRINT @@TRANCOUNT  
GO

--ROLLBACK���ع�\����������������Ӱ��
PRINT @@TRANCOUNT --û�������ʱ�����һ��������

BEGIN TRAN  --��ʼһ������
	PRINT @@TRANCOUNT    --������+1
	
	BEGIN TRAN  --����ڶ�������
			PRINT @@TRANCOUNT --������+1
ROLLBACK TRAN  --�ع����񣬽���������0�����л�����񶼽��ع�
PRINT @@TRANCOUNT

GO