--Create Views

CREATE VIEW MyCustomUSView
AS
select * from [AdventureWorks2012].[Sales].[SalesTerritory]
where CountryRegionCode like 'US';

create view NASalesQuota
AS
Select Name, Group, SalesQuota , Bonus
From [AdventureWorks2012].[Sales].[SalesTerritory] A inner join [Sales].[SalesPerson] B
on A.TerritoryID = B.TerritoryID
Where Group like 'North America';