use AdventureWorks2012

--select all the columns from Department
select * from HumanResources.Department;

--select department name from the table
select name from HumanResources.Department;

--show me all distinct groupname
select distinct GroupName from HumanResources.Department;

--select all the columns where department is Manufacturing
select * from HumanResources.Department where GroupName like ('Manufacturing');

--select all the columns from employee table
select * from [HumanResources].[Employee];

--select all the columns where organization level is 2
select * from [HumanResources].[Employee] where OrganizationLevel = 2;

--select all the columns where organization level is 2 or 3
select * from [HumanResources].[Employee] where OrganizationLevel in (2,3);

--select all the columns where job title have manager in it
select * from [HumanResources].[Employee] where JobTitle like ('%manager%');

--select all the columns where birthdate is more than 1 Jan,1980
select * from [HumanResources].[Employee] where BirthDate >= '1/1/1980';

--select all the columns where birthdate is between 1 Jan, 1970 and 1 Jan,1980
select * from [HumanResources].[Employee] where BirthDate between '1/1/1970' and '1/1/1980';

select * from [HumanResources].[Employee] where BirthDate > '1/1/1970' and BirthDate < '1/1/1980';

--calculated columns
select Name,ListPrice, ListPrice + 10 as Adjusted_list_price  from [Production].[Product];

--into
select Name,ListPrice, ListPrice + 10 as Adjusted_list_price into [Production].[Product_3_Columns] from [Production].[Product];

select * from [Production].[Product_3_Columns];

--temptable
select Name,ListPrice, ListPrice + 10 as Adjusted_list_price into #temptable from [Production].[Product];

select * from #temptable;

--Delete
delete from [Production].[Product_3_Columns] where Name like 'Bearing Ball';

--Update
update [Production].[Product_3_Columns] set Name = 'Blade 2020' where Name like 'Blade';

