--DDL

--CREATE
--DROP
--ALTER
--TRUNCATE

--CREATE DATABASE PayrollDB
--USE PayrollDB

--CREATE TABLE tblTimeLogs
--	(
--		id int IDENTITY (1,1) NOT NULL,
--		EmployeeId INT NOT NULL,
--		TimeIn DateTime2 NOT NULL,
--		[TimeOut] DateTime2 NOT NULL,
--		TotalHourse Decimal (10,2)
--		PRIMARY KEY (Id)
--	--, CONSTRAINT pk_transactionHistoryArchive1_CustomerID PRIMARY KEY NONCLUSTERED {iD}
--	)

	--alter table ---tblTimeLogs
	--add column
	--alter column
	--drop column

	--SCOPE_IDENTITY()


	--DML DATA MANIPULATION LANGUAGE

	Select Age_in_Yrs, * from [dbo].[tblEmployee]
	----where gender = 'F'
	-- where Mother_s_Maiden_Name LIKE '%CHILDERS%'
	WHERE convert(date,Date_of_Birth) between '1989-01-01' and '2019-12-31'
	order by Date_of_Birth DESC

	--	Select First_Name,Last_Name, Date_of_Birth from [dbo].[tblEmployee]
	------where gender = 'F'
	---- where Mother_s_Maiden_Name LIKE '%CHILDERS%'
	--WHERE Date_of_Birth between '1989-01-01' and '2019-12-31'
	--order by Date_of_Birth DESC

	--Select Year_of_Joining,First_Name,Last_Name  from [dbo].[tblEmployee]
	--GROUP BY Year_of_Joining,First_Name,Last_Name

	--Select Year_of_Joining,First_Name,Last_Name  from [dbo].[tblEmployee]
	--WHERE Year_of_Joining = 1983
	--GROUP BY Year_of_Joining,First_Name,Last_Name

	
	--Select Year_of_Joining,First_Name,Last_Name, *  from [dbo].[tblEmployee]
	--WHERE Last_Name IN ('smith','jones')

	-----DML
	---- INSERT

	--748552
	--841000
	--152823

	--INSERT INTO [dbo].[tblTimeLogs] (EmployeeId, TimeIn, [TimeOut], TotalHours, Comments)
	--values (748552,DATEADD(hh,-8,getdate()),GETDATE(),8,'Regular Shift')

	select * from tblTimeLogs

	--INSERT INTO [dbo].[tblTimeLogs] (EmployeeId, TimeIn, [TimeOut], TotalHours, Comments)
	--values (748552,DATEADD(hh,-8,getdate()-6),GETDATE()-6,8,'Regular Shift')
		
	--INSERT INTO [dbo].[tblTimeLogs] (EmployeeId, TimeIn, [TimeOut], TotalHours, Comments)
	--values (841000,DATEADD(hh,-8,getdate()-6),GETDATE()-6,8,'Regular Shift')

	--INSERT INTO [dbo].[tblTimeLogs] (EmployeeId, TimeIn, [TimeOut], TotalHours, Comments)
	--values (152823,DATEADD(hh,-5,getdate()-4),GETDATE()-4,5,'Undertime')

	--Select Getdate()
	--Select DateAdd(hh, - 8, getdate())

	--	select * from tblTimeLogs
	--	where comments = 'Regular Shift' and TotalHours = 8 
	--	or comments = 'UNDERTIME'

	---- MIN, MAX, COUNT, AVG, SUM ()

	SELECT Last_Name, First_Name,  MIN(Year_of_Joining)  FROM [dbo].[tblEmployee]
	GROUP BY Last_Name, First_Name

	SELECT  MIN(Year_of_Joining)  FROM [dbo].[tblEmployee]
	--GROUP BY Year_of_Joining

	SELECT  MAX(Year_of_Joining)  FROM [dbo].[tblEmployee]
	
	SELECT SUM(TotalHours) as 'Total'
	from tblTimeLogs
	where EmployeeID = '152823'





