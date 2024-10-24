--UNION

--Ergebnmisse werden untereinander zusammengefügt
--Regeln: es müssen gleich viele Spalten sein
-- es müssen die Reihenfolgen beachtet werden und die Datentypen

--eliminiert aus dem Ergebnis doppelte Zeilen

--will man dopplete Zeilen nicht elimnieren
--dann UNION ALL

--UNION ist ein! SELECT


select 100
UNION
select 200

select 100
union
select 200
union
select 300
....


select Companyname, country, 'K' from customers
UNION
select Employeeid, country, 'A' from employees
order by country

select 100
union 
select 300
union
select 500
union
select 100



select 100
union all
select 300
union all
select 500
union all
select 100


select * from orders

--Gebt alle Städte aus (Orders)
--und gebt alle Städte aus (employees)
--notiert dazu, ob das aus der orders kommt oder aus employees
--sortieren nach Stadt


select shipcity, 'B' from orders --order by 1
UNION
select city, 'E' from employees
order by 1






--aus 839 wurde 




