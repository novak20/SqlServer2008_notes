--��1���򵥵�IF...ELSE����
DECLARE @x int ,@y int   --�������� int���͵ı���
SELECT @x=20,@y=15   --ʹ��SELECT����һ����Ϊ���������ֵ���м�ʹ��Ӣ�ĵĶ��ŷָ�
--ʹ��IF...ELSE�ṹ�����жϵĽ���������
IF(@x>=@y)
	BEGIN
		PRINT'@x���ڻ����@y'
		PRINT ' '
	END
ELSE
	BEGIN
		PRINT'@xС��@y'
	END
PRINT'���������'  --�Ȳ�����IF Ҳ������ELSE,�Ƿ�֧�ṹ��Ĵ���
	--1��ֻ��һ�����ʡ����BEGIN..END
	--2��������볬��1��������BEGIN..END
	--3����������������񶼽�ִ��IF..ELSE�ṹ��Ĵ���
	
--IF...ELSE	��SQL����е�ʹ��
--�ڶ������в鿴xiangxiang���һ�ε����ѽ����
--������100Ԫ����5Ԫ��������������1Ԫ���

--�����ѽ���Ƕ��٣��������ѽ���ж��Ƿ�>100
--[1]�����������ڱ���������µ�ʱ������ѽ��
DECLARE @date datetime,@payMoney money
--[2]�����û���ȥ��ѯ�����һ���µ�ʱ�丳������@date
SELECT @date=MAX(OrderTime) FROM OrderInfo WHERE UserId='xiangxiang'
--[3]���������С��ʱ����û�����ѯ���ѽ��
SELECT @payMoney=PayMoney FROM OrderInfo WHERE OrderTime=@date AND UserId='xiangxiang'

--[4]ʹ��IF..ELSE�ṹ���������ѽ��Ķ����������Ӧ�ĺ��
IF(@payMoney>100)
	BEGIN
		PRINT '���ѽ��Ϊ'+CAST(@payMoney AS varchar(5))
		PRINT '���ѽ�����100Ԫ����5Ԫ���'
	END
ELSE
	BEGIN
		PRINT '���ѽ��Ϊ:'+CONVERT(varchar(5),@payMoney)
		PRINT '���ѽ��û�д���100Ԫ������ֻ�ܵõ�1Ԫ���'
	END

GO
