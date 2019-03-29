--【1】CHARINDEX:在一个字符串中查找另一个字符串，如果找到返回找到的位置，如果没有找到返回0
--两个参数，不指定开始位置，默认从1开始
SELECT CHARINDEX('zxw','www.51zxw.net')
--三个参数，第一个是查找的，第二个是源字符串，第三个是开始查找的位置
SELECT CHARINDEX('zxw','www.51zxw.net',10)


--将函数放在查询语句中进行使用
--查询“何双呈”的邮箱中"@"符号的位置
SELECT CHARINDEX('@',Email) FROM UserInfo 
WHERE UserName='何双呈'

SELECT * FROM UserInfo WHERE UserName='何双呈'

--使用CHARINDEX的目的是想把邮箱中的用户名提取出来
--【2】LEN:求子符串的长度
SELECT LEN(Email) FROM UserInfo WHERE UserName='何双呈'
--【3】LEFT从字符串的左边截取指定个数的字符
SELECT LEFT(Email,CHARINDEX('@',Email)-1) 
FROM UserInfo WHERE UserName='何双呈'

--【4】REPLACE替换一个字符串的字符
SELECT REPLACE('我最喜欢的颜色是白色','白色','绿色')

SELECT REPLACE('我最喜欢的颜色是白色','白色','')--如果最后一个参数是空的话，相当于将第二个参数删除
--【5】STUFF--参数1，源字符串，参数2，开始位置，参数3，删除的长度，参数4是插入的新字符串
SELECT STUFF('ABCDEF',2,3,'我要自学网')


