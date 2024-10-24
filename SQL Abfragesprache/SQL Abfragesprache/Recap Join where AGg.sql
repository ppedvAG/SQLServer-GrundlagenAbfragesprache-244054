SELECT 
		TOP 3| 5 percent
		Spalten, 
		Zahl, 'txt'
		f()  as ALIASNAME, 
		AGG (SUM/MIN/MAX/AVG/COUNT..)
FROM
		TABELLEA A|SICHTEN S
			INNER JOIN TabelleB B  ON A.Spx = B.spx --es geht aber keine Join zu D
			inner join tabelleC C  ON C.sp1	= A.sp2|B.sp1
			inner join TabelleD D  ON D.sp3=C.sp4
			....
WHERE --ist das phyiskalische vorfiltern...--> Performance
		B.SP  > < = like <> != in between 
		AND |OR
		A.sp3 in like...
				--WILDCARDS:   nur bei like möglich
				--		% steht für beliebig viele Zeichen 0 bis irgendwo
				--             _ steht für ein Zeichen genau
				--             Bereiche [AGT] oder oder G oder T
				--                      [A-G]  a bis g
				--  []  steht auch nur für genau ein Zeichen
				--
GROUP BY --hier alle Spalten des Select, aber keine AGG und kein ALIAS
		Spalten, 
		Zahl, 'txt'
		f()  
HAVING --ist der Filter für AGG Berechnungen..hier nur AGG filtern
		AGG > <...
ORDER BY 
		SPalten, Alias



		select  r.RegionDescription	,sum(od.Quantity*od.UnitPrice) as Umsatz
from region r 
			inner join Territories t			on r.RegionID		=t.RegionID
			inner join EmployeeTerritories et	on et.TerritoryID	=t.TerritoryID
			inner join Employees e				on e.EmployeeID		=et.EmployeeID
			inner join Orders o					on o.EmployeeID		=e.EmployeeID
			inner join [Order Details] od		on od.OrderID		=o.OrderID
where		
			r.RegionDescription like 'West%'
group by  r.RegionDescription
 

select r.RegionDescription, e.lastname, sum(od.unitprice*od.quantity) as UMSATZ
from
	region r  inner join Territories t			on r.RegionID		=t.RegionID
			  inner join EmployeeTerritories et on et.TerritoryID	=t.TerritoryID
			  inner join Employees e			on et.EmployeeID	=e.EmployeeID
			  inner join orders o				on o.EmployeeID		=e.EmployeeID
			  inner join [order details] od		on od.OrderID		=o.orderid
where
		r.RegionDescription like 'West%'
group by r.RegionDescription,e.lastname
order by Umsatz desc







select country, count(*) from customers
group by country



/*
select top 3 * from customers
select top 3 * from orders
select top 3 * from [order details]
*/