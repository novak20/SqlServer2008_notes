--[1]使用sql语句来查看数据的状态
SELECT state_desc FROM sys.databases WHERE name='E_Market'

--[2]使用函数来查看数据库的状态
SELECT DATABASEPROPERTYEX('Library','status')

--[3]将数据库E_Market设为脱机状态
--[4]将数据库E_Market设为联机状态

