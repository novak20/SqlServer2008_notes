USE E_Market
GO
--ɾ�����﷨ ʹ��DELETE����ɾ�� DELETE [FROM] ���� [WHERE ]
--��1������ɾ����ʡ��WHERE ����ɾ���������е�����
SELECT * FROM OrderInfo --�鿴�����������е�����

DELETE FROM  OrderInfo   --������Ӱ��
--ʹ��DELETE����ɾ�����ݣ�ɾ���󣬱�ʶ�м�������������ӱ�ʶ���ӿ�ʼ

--��2����������ɾ�����Ƿ�����������ϵ��������ڣ���ɾ���ӱ��е����ݣ���ɾ�������е�����
--��ɾ���ӱ��е�����
DELETE OrderInfo WHERE UserId='yoyo'

DELETE UserInfo WHERE UserId='yoyo'

SELECT * FROM UserInfo
SELECT * FROM OrderInfo

--ɾ����Ҫ�� 1���ĸ���2��������ʲô��

--ʹ��TRUNCATE TABLE ɾ������
/*1)������û��WHERE������DELETE��䣬ɾ���������е�����
 2) ɾ������֮���ٲ������ݣ���ʶ�дӱ�ʶ���ӿ�ʼ
 3)�������������Լ���ı�
 */
 --ɾ��OrderInfo�е�����
 TRUNCATE TABLE OrderInfo
 
 --�������������Լ���ı�
 
 --��ΪUserInfo���е�UserId��OrderInfo�е�UserId����������ʹ��
 --TRUNCATE TABLE ɾ������ʱ�ᱨ��
 TRUNCATE TABLE UserInfo
 
 --���ǿ���ʹ��DELETEɾ��������������
 DELETE UserInfo 
 
 