USE E_Market
GO
--[1]>ALL����ѯ�����е�ֵ��������Ӳ�ѯ���ص�ֵ�б��е�ÿһ��ֵ
SELECT * FROM table2 WHERE n>ALL( SELECT n FROM table1)

--���ؽ��Ϊ4
--Table2(1,2,3,4)
--Table1(2,3)


--[2]>ANY����ѯ�����е�ֵ�������ٴ����Ӳ�ѯ����ֵ�б��е�һ��ֵ
SELECT * FROM table2 WHERE n>ANY( SELECT n FROM table1)
--���Ϊ3��4
--Table2(1,2,3,4)
--Table1(2,3)
--��ΪSOME����ʽ
SELECT * FROM table2 WHERE n>SOME( SELECT n FROM table1)

--[3]=ANY���Ӳ�ѯIN ������ѯ���е�ֵ�������Ӳ�ѯ���ص�ֵ�б��д���
SELECT * FROM table2 WHERE n=ANY( SELECT n FROM table1)

SELECT * FROM table2 WHERE n IN (SELECT n FROM table1)
--�����Ϊ2��3
--Table2(1,2,3,4)
--Table1(2,3)

--[4]<>ANY��NOT IN
SELECT * FROM table2 WHERE n<>ANY(SELECT n FROM table1)

SELECT * FROM table2 WHERE n NOT IN(SELECT n FROM table1)
--<>ANY:���Ϊ1��2��3��4
--NOT IN:���Ϊ1,4
--<>ANY:����ѯ�Ľ�����е�ֵ���Ӳ�ѯ���ص�ֵ�б��е�һ������ͬ�Ϳ�����
  --�൱��OR���ߵĹ�ϵ�� ����ѯ���е�ֵ�������Ӳ�ѯ��ֵa,���߲�����b�����߲���c
--Table2(1,2,3,4)
--Table1(2,3)
--NOT IN:����ѯ�Ľ�����е�ֵ���벻�ܴ������Ӳ�ѯ�ķ���ֵ���б���
--�൱��AND���ҵĹ�ϵ������ѯ���е�ֵ�������Ӳ�ѯ�е�ֵa���� ������b���Ҳ�����c


