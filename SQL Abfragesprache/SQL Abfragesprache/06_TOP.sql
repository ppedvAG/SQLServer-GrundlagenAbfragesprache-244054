---TOP gibt nur ersten 10 oder auch 3 5, 88, zurück


select top 10 
		* 
from	 orders
order by shipcity


select top 10 * from customers
--man bekommt die ersten 10 DAtensätze zurück, 
--so wie sie in der DB pyhsikalisch abgelegt wurden
--ohne order by ist es fast Zufall was rauskommt
--daher top immer mit order by


--freight top 13 aus orders asc
--Nr 12:
--Nr 13:0,56

select top 13 
		freight as Fracht
		,* 
from orders 
order by freight 

--es ist auch eine % Angabe möglich

select top 10 percent	
		*
from orders --830 DS
order by freight desc

--

select top 13 with ties --krawatten
		freight as Fracht
		,customerid 
from orders 
order by freight 


--manchmal verlangt SQL Server einen TOP Befehl, obwohl wir den gar nicht wollten
--dann :
--top 100 percent = alle

SELECT top 100 percent CustomerID, OrderDate, ShipName, ShipRegion
FROM Orders
ORDER BY CustomerID


---WIr bekommen mit TOP sehr schnell, die besten und schlechtesten zurück



select top 1 freight from orders order by freight desc

--der kleinste Frachtkostenwert in Orders

select top 1 freight from orders order by freight asc

