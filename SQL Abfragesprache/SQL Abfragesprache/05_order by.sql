select Spalte, spalte, f(), 'TXT', Zahl
from Tabelle
order by  
Spalte asc, Spalte2 desc


select * from customers
order by country, city 

select * from customers
order by country desc , city asc

select companyname, country, city, left(companyname, 2) AS Firmenkrzl
from customers
order by Firmenkrzl desc

select companyname
	, customerid
	, country
	, city 
from customers
order by 2 desc

--die xte Spalte