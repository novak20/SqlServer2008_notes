USE E_Market
GO
--������Ϊ�û��� UserInfo�е�UserAddress��ַ�д���(�Ǿۼ�)����
IF EXISTS(SELECT * FROM sysindexes WHERE name='IX_UserInfo_UserAddress')
DROP INDEX UserInfo.IX_UserInfo_UserAddress  --����.������
GO
CREATE NONCLUSTERED INDEX IX_UserInfo_UserAddress
ON UserInfo(UserAddress)   --ON  ����(����)
WITH FILLFACTOR=30
GO

--���ʹ������
--�û���ַ�Ǻӱ�������Щ
SELECT * FROM UserInfo
   WITH(INDEX=IX_UserInfo_UserAddress)
WHERE UserAddress LIKE '%�ӱ�%'