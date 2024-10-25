--Variablen
 --@var: lokal exisiteren nur wähend der Laufzeit
 --@@var: global in der Praxis fast nie

 
select @@trancount


declare @var as int
set @var = 10

select @var




--Wie weit weichen die Frachtkosten vom Durschnitt der Frachtkosten ab

select orderid, freight, freight - (select avg(freight) from orders where shp)
from orders



declare @schnitt as money
select @schnitt=avg(freight) from orders --man kann nur Var werte zuweise oder DAten ausgeben
where shipcountry = 'UK'

select orderid, freight , freight -@schnitt
from orders



select * from [Order Details]

--wie weit weichen die Mengen vom Durschnittswert der Mengen ab
--aber nur dort wo Productid 10,13,15 oder 16 war

declare @schnittmenge as int
select @schnittmenge=avg(quantity) from [Order Details]
select @schnittmenge

select *, quantity-@schnittmenge from [Order Details]

select *,quantity-@schnittmenge from [Order Details]
	where Quantity > @schnittmenge
			AND
			ProductId in (10,13,15, 16)



select * from [Order Details]
	where Quantity > (select avg(quantity) from [Order Details])




declare @schnittmenge as int
select @schnittmenge=avg(quantity) from [Order Details]
select @schnittmenge
GO --vairbalen ab hier alle verschwunden
select @schnittmenge


GO








