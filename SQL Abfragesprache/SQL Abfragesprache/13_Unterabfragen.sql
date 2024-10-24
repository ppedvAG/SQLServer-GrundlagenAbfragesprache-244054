---UNTERABFRAGEN

--Welche Bestellung hatte die geringsten Fachtkosten


--Ausgabe: orderid , freight   orders
--Aufgabe.. ein Ergebnis mit höchsten und kleinsten Frachtkosten 
--und deren bestellnummer

select top 1 orderid, freight from orders-- order by freight asc
UNION
select top 1 orderid, freight from orders 
order by freight desc


select * from 
(select top 1 orderid, freight from orders order by freight asc) t1
UNION
select * from 
(select top 1 orderid, freight from orders order by freight desc) t2




--eine UNterabfrage im FROM muss einen Namen haben




--Unterabfragen können an fast allen Stellen im Select vorkjommen
--im SELECT muss gelten: es darf nur eine Zeile mit einer Spalte sein


select avg(freight) from orders


select orderid, freight,
		(select top 1 freight  from orders order by freight desc) as Schnitt,
		freight-(select avg(freight) from orders)-- as Diff
from orders



--Welche Bestellungen haben einen Frachtkostenwert der über dem Schnitt liegt


select * from orders
	where freight > (select avg(freight) from orders) --
order by freight asc


select * from orders
where customerid not in (select customerid from customers)

