USE NORTHWIND;
GO

select SPALTEN , * steht f�r alle Spalten
FROM -- welche Tabelle

select * from customers
select * from orders
select * from [order details]

select * from orders ---830

--F() f�r Wochentag --> 
select datename(dw,getdate())


select orderid,orderdate, datename(dw, orderdate) from orders

select * from employees
--an welchem Wochentag wurden Ang eingestellt?

select hiredate,datename(dw, hiredate), lastname, firstname from employees


--RequiredDate = ZielLieferdatum
--Shippeddate= tats Lieferdatum
select * from orders

--wie gro� ist die Differenz zwischen Requ und Shippeddate in Tagen

--Orderid , shippeddate, requiredate, Diff in Tagen  from orders

select	  orderid
		, requireddate
		, shippeddate 
		, datediff(dd,shippeddate, requireddate) as Lieferz�gerung
		from orders
order by Lieferz�gerung  --asc desc
--Tipp: wenn ihr eine Fehlermeldung bekommt: Ebene 16 oder Ebene 15 kann
--uch kann Admin helfen


--negative Zahlen = wenn Ware zu sp�t kam






