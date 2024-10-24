/*
SELECT --was wollen wir sehen
		SP,
		F() as wieduwillst,--Alias
		Zahl, 'txt'
from  TabelleA	inner join   tabelleB  on TabelleA.spid=tabelleB.spid
where 
	   TabelleA.Spx = 10 
	   and
	   tabelleB.Spy < 100
	   or
	   tabelleB.spz between 2 and 5 --im where ist kein Alias möglich
order by 
		TabelleA.Spx, Alias desc, Sortierspalten müssen nicht im select stehen
*/

-- Gib alle Firmen wieder und deren Bestellnummern und Frachtkosten
-- die Frachtkosten haben unter 10 
-- und die Kunden müssen aus dem Land UK stammen
--und sortiere nach Orderdate absteigend

select top 3 * from customers--companyname, country
select top 3 * from orders  --freight , orderid

select companyname, orderid, freight
from   
where
order by 


select c.CompanyName, o.Freight,o.OrderID 
from 
	orders o
		inner join customers c on o.CustomerID=c.CustomerID
where
	o.Freight < 10 AND C.Country='UK'

--









--
select 100


select 'A'

select 100, 'A' from employees

select freight, freight*1.19, 100-freight, 100 from orders