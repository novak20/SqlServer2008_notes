--��1�������RAND,���ָ����������ӣ���ô���ص����������ͬ��
--���û��ָ��������ӣ���ôϵͳ�Զ����䣬����ÿ�εķ���ֵ������ͬ
SELECT RAND(100)
SELECT RAND(100)
SELECT RAND()
SELECT RAND()

--��2��CEILING:Ӣ����˼���컨��,������λȡ��ֵ��������С��ȡ��ֵ
SELECT CEILING(9.000001)
SELECT CEILING(-9.000001)
--��3��FLOOR: Ӣ����˼�ǵذ�,������С��ȡСֵ��������λȡСֵ
SELECT FLOOR(9.999999)
SELECT FLOOR(-9.000001)

--��4��ROUND:����ֵ������������
SELECT ROUND(123.565,2)
SELECT ROUND(-123.434,2)

--��5��ABSȡ����ֵ�������ľ���ֵ�Ǳ��������ľ���ֵ���෴����0�ľ���ֵ��0
SELECT ABS(434)
SELECT ABS(-987)
SELECT ABS(0)

--��6��ϵͳ����CONVERT������������ת��
--���ַ���תΪ��ֵ��
SELECT CONVERT(int,'12')+CONVERT(int,'10')  --+��������������㣬�������

--����ֵ��תΪ�ַ���
SELECT CONVERT(varchar(2),12)+CONVERT(varchar(2),10)--+�������������������������

--��������תΪ�ַ���
SELECT CONVERT(varchar(10),GETDATE(),102)
SELECT CONVERT(varchar(10),GETDATE(),112)