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



select top 3 * from employees
select top 3 * from orders


--Wir suchen alle Angestellten aus London
--die eine Bestellung machten im Jahr 1997
--und Frachtkosten größer 500 hatten
--in der Ausgabe sollte der Fam und Vorname zu sehen sein
--die Frachtkosten und das Jahr

SELECT --was wollen wir sehen
		SP,
		F() as wieduwillst,--Alias
		Zahl, 'txt'
from  TabelleA
		inner join 
	  tabelleB 
	  on TabelleA.spid=tabelleB.spid
where 
	   TabelleA.Spx = 10 
	   and...

SELECT 
		E.LASTNAME, E.FIRSTNAME				  --EMPLOYEESTAB
		,O.FREIGHT, YEAR(O.ORDERDATE)AS JAHR  --ORDERSTABELLE
FROM 
		EMPLOYEES E INNER JOIN ORDERS O ON E.EMPLOYEEID=O.EMPLOYEEID
WHERE
		O.FREIGHT > 500
		AND
		YEAR(O.ORDERDATE) = 1997
		AND
		E.CITY ='LONDON'
