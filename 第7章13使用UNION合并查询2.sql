--合并查询UNIOIN
USE E_Market
GO
--1合并查询，两表中行的个数的总和，行合并到结果集
SELECT UserId,UserName,UserAddress FROM UserInfo

UNION
SELECT UserId,PayWay, CONVERT(varchar(10),OrderTime)
 FROM OrderInfo
 
 --2连接查询 WEHRE  行的个数最大值为两表中行的个数乘积，
 --与类型无关
 
 SELECT UserInfo.UserId,UserName,UserAddress,OrderTime,PayWay
  FROM UserInfo,OrderInfo   --如果没有WHERE将产生迪卡尔现象，即两表中数据相乘
  WHERE UserInfo.UserId=OrderInfo.UserId 