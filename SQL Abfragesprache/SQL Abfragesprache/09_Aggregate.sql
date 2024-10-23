/*
AGG 

SUM()
AVG()
MIN()
MAX()
COUNT()



*/

select top 3 * from orders
select   sum(freight)	as SummeFracht
	   , min(freight)	as MinFracht
	   , max(freight)	as MaxFracht
	   , avg(freight)	as SchnittFracht
	   , count(freight) as AnzFrachtkostenwerte
from 
	orders
where
	employeeid = 2


select * from customers

--? Wieviele Kunden gibt es in Germany

select count(customerid) from customers where country = 'Germany'

--Wieviele Angestellte gibt es in London?

select count(employeeid) from employees
where city = 'London'

--Gesamter Umsatz im Jahr 1997
select * from [Order Details]

select sum(unitprice*quantity) from [Order Details]
select*, unitprice*quantity from [Order Details]

--Was ist der Duchschnittliche Positionsumme  avg
--1354458,59 Gesamter Umsatz
--628,519 Durchschnttliche PosSumme

select avg(unitprice*quantity) from [Order Details]
--Was ist denn die kleinste und größte Positionsumme? min und max

select	 min(unitprice*quantity)	as MaxPosSumme
		,max(unitprice*quantity)   as MinPossumme  
from [Order Details]

--Anzahl pro 
--in dem Moment, in dem einen Spalte im Slect mit einem AGG kombiniert wird
--muss ein Group by her...
--kopiere das gemsate Select in den Group by und entferne jeden ALias und die AGG F()

select country as Land, count(*)as Anz from customers
group by country

select * from orders

--wieviele Lieferkosten musste jeder Kunde bezahlen

select customerid, sum(freight) from  orders
group by customerid


--Was sind die einzelnen Rechnungsummen pro Bestellnummer?
select *, (unitprice*quantity) as Possumme from [Order Details]


select orderid, sum(unitprice*quantity) from [Order Details]
group by orderid



select country , city, count(*) from customers
group by country, city
order by 1,2


Select * from orders

--Summe der Frachtkosten pro AngestellterNr in einer Stadt

--Ausgabe Shipcity Employeeid und summe der frachtkosten 

select shipcity,employeeid,  sum(freight) as SummeFracht
from orders
where employeeid = 1
group by   shipcity, employeeid
order by shipcity, employeeid


--Umsatz pro Kunde als Ziel
--Teil 1 
--Ausgabe Companyname und Unitprice und Quantity 

-->Customers-->(customerid)-->  orders-->(orderid) --> order details
select *
from   customers c inner join orders o				on c.CustomerID = o.CustomerID
				 inner join [Order Details] od		on od.OrderID   = o.OrderID 


----nur noch die Firmen, die mehr als 100000 Umsatz machten

--nur die Spalten , die wir wirklich benötigen

select c.companyname,  od.UnitPrice, od.quantity
from   customers c inner join orders o				on c.CustomerID = o.CustomerID
				   inner join [Order Details] od	on od.OrderID   = o.OrderID 

--jetzt 

--jetz Agg schreiben und alle Spalten , die nicht Agg aus dem Select
--in den Group by
select c.companyname,  sum(od.UnitPrice * od.quantity) as Umsatz
from   customers c inner join orders o				on c.CustomerID = o.CustomerID
				   inner join [Order Details] od	on od.OrderID   = o.OrderID 
group by c.companyname having  sum(od.UnitPrice * od.quantity) > 100000
order by CompanyName

--wenn man ein AG filtern möchten, dann muss den Group by um ein having ergänzen
--das having kennt kein Alias, daher das AGG aus dem Select verwenden
--im having nie etwas filtern, was ein where kann
--also having nur für AG


select 
	    c.companyname
		,sum(od.UnitPrice * od.quantity) as Umsatz --komm
from   
		customers c inner join orders o				on c.CustomerID = o.CustomerID
				    inner join [Order Details] od	on od.OrderID	= od.OrderID
group by 
		c.companyname having  sum(od.UnitPrice * od.quantity) > 100000 --komm
order by 
		CompanyName




