--������ͼ��ע������
/*
1��������ͼ��SELECT����в��ܰ���ORDER BY,���ʹ��ORDER BY��ѯ����ʹ��TOP
 ��������
 2������ʹ��INTO�ؼ���
 3������ʹ�ñ��������ʱ��
*/
--INTO,�����ݴ��Ѵ��ڵı��в�ѯ��������ӵ��±��У�����±�����
SELECT * 
INTO newTable   --newTable�����ڣ�
FROM CommodityInfo

GO
CREATE VIEW vw_newTable2
AS 
  SELECT * 
--INTO newTable2   --������ͼ������ʹ��INTO��
FROM CommodityInfo
GO

--��ʱ��
/*
  1���洢��tempdb
  2��������ʱ���ԡ�#����ͷ��ȫ����ʱ����"##"��ͷ
  3���Ͽ�����ʱ��ʱ��ͱ�ɾ��
*/
CREATE TABLE #newTable   
(
	id int,
	userName varchar(20)
)
GO

CREATE VIEW vw_newTable   --������ʹ����ʱ������ͼ
AS 
  SELECT * FROM #newTable
GO
--�����
/*
 1�������ʵ���Ǳ���һ����ʽ
 2����@��ͷ
 3�������ڴ���
*/
DECLARE @table TABLE 
(
	ID int,
	name varchar(20)
) 
GO
CREATE VIEW vw_Table
AS 
 SELECT * FROM @table--������ͼʱ������ʹ�ñ����
GO