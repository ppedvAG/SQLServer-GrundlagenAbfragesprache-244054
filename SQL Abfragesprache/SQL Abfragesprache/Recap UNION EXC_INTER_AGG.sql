select 
		top 1 |percent
		Spalten,
		Mathe, 'Txt' , F() as Alias --wird für jede Zeile des Eregbnis wiederholt
		Agg(SUM|MIN|MAX|AVG|COUNT..),
		(select ..) --muss aber nur 1 Zeile mit einer Spalte zurückgeben
from 
		TabelleA A inner|left|right TabelleB B on A.spx=B.spx
				   inner|left|right TabelleC C on C.spy=B.spx
				   inner|left|right TabelleD D on D.spz=B.spx
				   inner|left|right #tab t1    on #t1.spB=D.spB
				   inner|left|right SichtX X     on X.spC=A.spC
				   inner|left|right (UAbfrage) UA ON UA.SpG=b.spG
where 
	  SP > < = between in like |like --Wildcard : % _ [Bereich]   
	  AND |OR ---Klammern setzten bei Mischung von AND und ORselect 
	  SP > (select ..) --es muss gelten: bei <>= ein Wert bei in auch mehr Werte aber nur 1 Spalte
group by 
		Spalten,
		Mathe, 'Txt' , F() 
UNION |UNION ALL -- union löscht doppelte Ergebniszeilen.. UNION ALL filter nicht
			     -- es muss passen: gleiche Spaltenzahl und Datentypen müssen kompatibel sein
INTERSECT --die gleiche Datensätze
EXCEPT --die unterschiedliche
SELECT ...
order by SpalteY desc, Alias asc


--temp		

#t: lokale   --kann nur der Ersteller in der akt Sessionverwenden
##t: globale -- kann jeder verwenden

--einfachster weg:

select * into #t from tabelle


--Sicht vs #t
Sicht  gibt es auch in allen anderen Session und auch  nach Neustart 
Sicht enthält keine Daten , sondern eine Abfrage--immer akt Eregbnisse

#t enthält Kopien von Daten und werden nicht automatisdch aktualisiert


--Sicht
create or alter view NamederSicht
as
Select ....

select * from (
	SELECT TOP (100) PERCENT OrderID, EmployeeID, OrderDate, 
	   RequiredDate
	FROM dbo.Orders
	ORDER BY OrderID
			  ) SichtX


select * from sichtX

select ua.
from 
		TabelleA A inner|left|right TabelleB B on A.spx=B.spx
				   inner|left|right TabelleC C on C.spy=B.spx
				   inner|left|right TabelleD D on D.spz=B.spx
				   inner|left|right #tab t1    on #t1.spB=D.spB
				   inner|left|right SichtX X     on X.spC=A.spC
				   inner|left|right (
								SELECT TOP (100) PERCENT OrderID, EmployeeID, OrderDate, 
								   RequiredDate
								FROM dbo.Orders
								ORDER BY OrderID
									 ) UA ON UA.SpG=b.spG					
	
	
HANS Schmidt 12.6.2024  xxxx|yyyy
					    xxxx|yyyy
						xxxx|yyyy 


select * from customers
where country = (select top 1 country from customers)

select * from customers
where country in (select country from customers)

select * from customers where country in ('Italy','UK','USA')

select * from customers
--union
select * from employees


select * from orders
/*
Freight < 100   'A'
Freight > 500   'C'
Freight 101 bis 499 'B'

Ausgabe: customerid, freight, A B oder C


*/
select count(*) from orders
select customerid, freight, 'A' from orders where freight < 100
UNION ALL
select customerid, freight, 'C' from orders where freight > 500
UNION ALL
select customerid, freight, 'B' from orders where freight between 100 and 500  


select customerid, freight, 'A' as kdTyp into #t  from orders where freight < 100

insert into #t
select customerid, freight, 'C' from orders where freight > 500


insert into #t
select customerid, freight, 'B' from orders where freight between 100 and 500

select * from #t where kdtyp = 'B' and customerid like 'A%'

select * from 
(
select customerid, freight, 'A' as kdtyp from orders where freight < 100
UNION ALL
select customerid, freight, 'C' from orders where freight > 500
UNION ALL
select customerid, freight, 'B' from orders where freight between 100 and 500  
) t where t.customerid like 'A%' and kdtyp = 'A'


--Methode.. Ergebnisdaten überschreiben bei der Ausgabe

--case when  then


select customerid, companyname, country,
		case 
			when country in ('Germany', 'Italy', 'Spain','Austria') then 'EU'
			else 'not EU'
		end as EUnotEu
from customers


--Case when bei A BC Kunde



select customerid, freight, 
		CASE
			WHEN .. THEN ...
			ELSE ..
		END   as kdtyp 
from orders

select customerid, freight,
		case
			when freight < 100 then 'A'
			when freight > 500 then 'C'
			else 'B' --der Rest
		end
from orders



--CREATE TAB 
--INS UP DEL


