--INS 

select * from kunden

--Daten manuell einpflegen

insert into kunden
select 'ppedv AG', 'Ger', 'Burghausen', 'PPEDV'

insert into kunden (Firma,			Stadt,	Land)
        values     ('Airbus XY', 'München', 'USA')

--Daten aus anderen Tabelle in die Kunden

insert into kunden
select companyname, country, city, customerid from customers
	where companyname like '%Y'


select * into tabelleziel from Tabquelle --erstellt immer eine Tabelle


--UPDATE
UPDATE TABELLE SET SP  = Wert, SP = Wert
		where sp = Bedingung


update customers set city = 'MUC'
where customerid = 'ALFKI'


select * from customers


select * from kunden

--Wir wissen, dass die CustID von Airbus ist 'AIRBU'

update kunden set custId = 'AIRBU'
where kdid = 4
	
select * from orders

--in DE müssen wir die Frachtkosten um 10% senkenb
--in DE?  Ja die Bestellungen der deutschen Kunden

--1. zuerst die DS, die betroffen mit Select suchen
--alle DS aus order bei denen der Kunde aus Germany kommt


select * from	orders o inner join customers c on c.CustomerID=o.CustomerID
where 
		c.Country= 'Germany'

--2. Select in eine Zeiel .. from in nächste Zeile

select * 
from	orders o inner join customers c on c.CustomerID=o.CustomerID
where 
		c.Country= 'Germany'

--3. schreibe den Update darüber und kommentoiere den select aus
update orders set freight = freight *0.9
--select * 
from	orders o inner join customers c on c.CustomerID=o.CustomerID
where 
		c.Country= 'Germany'


select * from kunden

--füge an das ende des Firmenanamens ein X dazu ein
--aber nur bei denen , die auch in Customers enthalten sind

update Kunden set firma = firma+'X'
--select k.* 
from kunden k inner join customers c on c.CustomerID=k.custid


update kunden set firma = firma + 'X'
--select *
from kunden 
	where custid in (select customerid from customers)



--delete --löscht Zeilen

delete from tabelle
where sp = Bedingung


select * from kunden
--lösche den DS mit der Nr 2
delete from kunden where kdid = 2


--lösche alle DS aus Kunden, die eine Custid besitzen 
--, die auch in der customers vorkommen


delete from tabelle
--select * 
from tabelle join tabelle on ....


delete from kunden
--select * 
from kunden k inner join customers c on c.CustomerID=k.custid


--Transaktionen

begin tran
select @@TRANCOUNT
delete from kunden
select * from kunden

delete from kunden
Update
insert 

commit.. alles wird fix weggeschrieben.. das muss für jede TX gemacht
rollback-- alles rückgängig machen






begin tran
	delete from kunden
	select * from kunden
rollback--rückgängig
commit --fixen


drop table kunden































