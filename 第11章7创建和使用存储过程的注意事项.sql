/*
�����洢���̣�
1)��Ĭ��ֵ�Ĳ���д�����
2)�洢���̴���������������������GO
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
 ���ô洢���̵�ע������
 1)��д�������������붨���ʱ��Ĳ���˳����ͬ
 2)������˳�򣬱���д���ϲ�����
 3)���һ��дΪ"@����=ֵ"����ʽ����ô�������еĶ����밴�����ʽȥд
 4)������ô洢�������������еĵ�һ�仰����ô���Բ�дEXEC 

*/