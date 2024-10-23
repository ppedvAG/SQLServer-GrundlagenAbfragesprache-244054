--Views = Sichten

--

--gemerkte Abfragen, die wie Tabellen funktionieren
--Sicht enthält keine Daten , sondern führt lediglich
--die Abfrage aus, die in der Sicht geschrieben wurde
--auch ein INS UP DEL geht (unter Umständen)
--Eine Sicht darf nur 1 SELECT enthalten
--alle Spalten müssen benannt sein


--aber vorsicht.. alle Berechungen basieren auf dem Ergebnis der Sicht
--desg Agg mit vorsicht genießen




create view KundenUSA
as
select * from customers where country = 'USA'


select * from kundenUSA




--Customers--orders- order details--employees  products


--Teil 1:.. SELECT mit JOIN über alle Tabellen
SELECT 
		  c.CompanyName,c.CustomerID,c.Country, c.city	--customersspalten
		, o.OrderID, o.Freight, o.OrderDate				--Ordersspalten
		, od.UnitPrice, od.Quantity, od.ProductID		--order detailsspalten
		, e.LastName, e.FirstName						--employeesspalten
		, p.ProductName									--Produktspalten
FROM
	CUSTOMERS C INNER JOIN ORDERS O			  ON C.CUSTOMERID = O.CUSTOMERID
				INNER JOIN [ORDER DETAILS] OD ON OD.ORDERID   = O.ORDERID
				INNER JOIN PRODUCTS P		  ON P.PRODUCTID  = OD.PRODUCTID
				INNER JOIN EMPLOYEES E		  ON E.EMPLOYEEID = O.EMPLOYEEID

--Teil 2
--Erstellen einer Sicht

create or alter view Kundeumsatz
as
SELECT 
		  c.CompanyName,c.CustomerID,c.Country, c.city	--customersspalten
		, o.OrderID, o.Freight, o.OrderDate				--Ordersspalten
		, od.UnitPrice, od.Quantity, od.ProductID		--order detailsspalten
		, (od.UnitPrice * od.Quantity)as PosSumme       --berechnete Spalte
		, p.ProductName									--Produktspalten
		, e.LastName, e.FirstName						--employeesspalten
FROM
	CUSTOMERS C INNER JOIN ORDERS O			  ON C.CUSTOMERID = O.CUSTOMERID
				INNER JOIN [ORDER DETAILS] OD ON OD.ORDERID   = O.ORDERID
				INNER JOIN PRODUCTS P		  ON P.PRODUCTID  = OD.PRODUCTID
				INNER JOIN EMPLOYEES E		  ON E.EMPLOYEEID = O.EMPLOYEEID


select * from kundeumsatz

select country, sum(unitprice*quantity) from kundeumsatz
group by country

select lastname, sum(unitprice*quantity) from kundeumsatz
group by lastname





select * from kundeumsatz where possumme < 100







select * from customers
select * from kundeumsatz

--wieviele Kunden hat die Tabelle Customers

select count(customerid) from customers  --91

select count(orderid) from kundeumsatz --2155

select * from orders