--��������ABCDE�弶�������ʾѧ�����Գɼ�
--A����90������
--B����80������
--C����70������
--D����60������
--E����60������
DECLARE @score int
SET @score=93
--ʹ��CASE...END���ж����жϣ�ѡ��һ��ȥִ��
SELECT �ɼ�=CASE 
	WHEN @score>=90 THEN 'A'
	WHEN @score>=80 AND @score<=89 THEN 'B'
	WHEN @score BETWEEN 70 AND 79 THEN'C'
	WHEN @score BETWEEN 60 AND 69 THEN 'D'
	ELSE 'E'
END
GO

--CASE ...END��SQL����е�ʹ��
--�����Ϊ1�ε�Ϊ��ͨ��Ա��2-5�ε�Ϊ�׽��Ա��6-10 VIP��Ա��10������ΪVIP�׽��Ա
SELECT �û����=UserId,��Ա����=
CASE 
	WHEN COUNT(*)=1 THEN '��ͨ��Ա'
	WHEN COUNT(*) BETWEEN 2 AND 5 THEN'�׽��Ա'
	WHEN COUNT(*) BETWEEN 6 AND 10 THEN'VIP��Ա'
	ELSE 'VIP�׽��Ա'
END 
FROM OrderInfo
GROUP BY UserId
