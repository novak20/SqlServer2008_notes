--���������
SELECT 3+4 AS �ӵĽ��   --���
GO
SELECT 5/2 AS ���Ľ��  --2.5,  /�������߶������������������
GO
SELECT 5.0/2 AS ���Ľ��   --����������һ���Ƿ����������Ϊ������
GO
SELECT 5%2 AS ģ    --5������2��2������һ���������һ���ͽ�ģ��������
GO
--��ֵ�������  ���Ⱥŵ��ұ�ֵ������ߵı��������Ǳ��ʽ
DECLARE @age int
SET @age=18
SELECT @age
GO
-- �Ƚ������=,>,<,>=,<=,<>,!=(��92��׼)
DECLARE @x int ,@y int
SET @x=8
SET @y=10
IF @x>=@y
  SELECT '@x��ֵ���ڵ���@y��ֵ'
ELSE 
	SELECT '@y��ֵ��'
GO
--�߼������ AND ,OR ,NOT 
--AND ���ҽ����Ϊtrue(��)��ʱ����Ϊtrue
--OR ���ҽ����һ��Ϊtrue(��)���Ϊtrue
--NOT   
--NOT >AND >OR
--(1) not 6>4 false  (2)6>3 true   (1)and (2) false (3)3>5 false
IF(3>5 OR 6>3 AND NOT 6>4)
	SELECT 'TRUE(��)'
ELSE 
	SELECT 'FALSE(��)'
GO
--��������� +
--+���ң�������ֵ��+���������������
--+���ң������ַ���+�������������
--+���ң����Ͳ�һ�£�����Ҫ����ת��
DECLARE @color varchar(4)
SET @color='��ɫ'
SELECT '����ϲ������ɫ'+@color
GO
