USE E_Market
GO
--��ѯ�ֻ��������Ʒ��Ϣ
--��1��������֪��ȥ��δ֪���֪������Ʒ���������
  --������Ʒ�������ȥ��ѯ��Ʒ���
  SELECT * FROM CommoditySort WHERE SortName='�ֻ�����'
  --��2��������Ʒ���ȥ��ѯ��Ʒ����Ϣ
  SELECT * FROM CommodityInfo WHERE SortId=
  (
	  SELECT SortId FROM CommoditySort WHERE SortName='�ֻ�����'
	  --ORDER BY SortId
  )
  --�Ӳ�ѯ���ص�
  --1��Ҫ���Ӳ�ѯ�������С������
  --2���Ӳ�ѯ��Ƚ������ʹ��ʱҪ���Ӳ�ѯ����ֻ��һ��
  --3��ORDER BY������������Ӳ�ѯ�У����Ҫ����ֻ�ܷ��ڸ���ѯ��
  
  