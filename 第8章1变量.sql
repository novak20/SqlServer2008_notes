USE E_Market
GO
--����������
DECLARE @UserId varchar(10),@pwd varchar(10)
--��������ֵ
--SET
SET @UserId='bobo'
--SELECT
SELECT @pwd=UserPwd FROM UserInfo WHERE UserId=@UserId

PRINT @UserId
PRINT @pwd
/*GO
--����ʹ�õ�ԭ���ǣ����ǵ�@UserId���������������ô�������� �������Ͳ���ʹ����
SELECT * FROM UserInfo WHERE UserId=@UserId
*/
GO
--ʹ��SET��SELECTΪ������ֵ������
--��1��ͬʱΪ����������и�ֵ
/*DECLARE @name varchar(10),@province varchar(20)
--ʹ��SETΪ����������ͬʱ��ֵ  ---����
--SET @name='����',@province='����'
--ʹ��SELECTΪ���������ֵ     --����
SELECT @name='����',@province='����'
PRINT @name+' '+@province*/

--��2�����ʽ���ض��ֵ��ʱ��
DECLARE @province varchar(20)
--ʹ��SET��ֵ�﷨û��ִ�г���
--SET @province=( SELECT UserAddress FROM UserInfo)
--ʹ��SELECT��ֵ�������ʽ�е����һ��ֵ��������

SELECT @province=UserAddress FROM UserInfo
SELECT @province

SELECT UserAddress FROM UserInfo

--��3�����ʽ�޷���ֵ��ʱ��
--SET�Ա��ʽ�޷���ֵ��ʱ�򣬽���ֵ��������
DECLARE @name varchar(20)
SET @name='����'
--SET @name=(SELECT UserName FROM UserInfo WHERE UserId='yaya')
--SELECT @name
--SELECT �Ա��ʽ�޷���ֵ��ʱ�򣬱�������ԭֵ����
SELECT @name=UserName FROM UserInfo WHERE UserId='yaya'
SELECT @name
