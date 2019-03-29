--采用美国ABCDE五级打分制显示学生考试成绩
--A级：90分以上
--B级：80分以上
--C级：70分以上
--D级：60分以上
--E级：60分以下
DECLARE @score int
SET @score=93
--使用CASE...END进行多重判断，选择一个去执行
SELECT 成绩=CASE 
	WHEN @score>=90 THEN 'A'
	WHEN @score>=80 AND @score<=89 THEN 'B'
	WHEN @score BETWEEN 70 AND 79 THEN'C'
	WHEN @score BETWEEN 60 AND 69 THEN 'D'
	ELSE 'E'
END
GO

--CASE ...END在SQL语句中的使用
--购买次为1次的为普通会员，2-5次的为白金会员，6-10 VIP会员，10次以上为VIP白金会员
SELECT 用户编号=UserId,会员级别=
CASE 
	WHEN COUNT(*)=1 THEN '普通会员'
	WHEN COUNT(*) BETWEEN 2 AND 5 THEN'白金会员'
	WHEN COUNT(*) BETWEEN 6 AND 10 THEN'VIP会员'
	ELSE 'VIP白金会员'
END 
FROM OrderInfo
GROUP BY UserId
