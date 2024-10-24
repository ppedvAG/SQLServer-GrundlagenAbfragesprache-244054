SELECT *
FROM TAB
WHERE SP 
			SP = Wert
			SP < Wert
			SP > Wert
			SP <= | >= Wert
			SP like 'A%'   --der einzige Operator mit Wildcards
							-- % steht für beliebig viele Zeichen
							--	also auch 0 
			SP = Wert AND SP = Wert OR SP = Wert...--Klammern

			Spalte like [] --steht immer für ein Zeichen genau
							-- die Klammer stellt die möglichen Werte dar

			_ steht für genau ein Zeichen --< % für belieb viele	


			not like
			not in
			not between
			!= oder <>  , das solles nicht sein
ORDER BY


select * from orders
where 
	orderid = 10248

select top 3 * from customers

--alle Kunden aus UK
select * from customers 
where 
		country = 'UK'

--welche Bestellungen wurden von Ang bearbeitet, die eine
--AngNr kleiner 3 haben
select top 3 * from orders

select * from orders 
where
		employeeid <= 3 --219
order by employeeid desc




select  * from customers
where 
	ContactTitle  like 'own%'



select  * from customers
where 
	ContactTitle  = 'owner'


select  * from customers
where 
	ContactTitle  like '%own%'

--alle Kunden, deren Firmename ein y enthält
select * from customers
where 
		Companyname like '%y%'

--gibt es eine Rewe in Customers

select * from customers
where 
		Companyname like '%rewe%'
		--gibts nicht


--Bedingungen lassen sich kombinieren

--Kombination mit or und and
--Spalten immer wiederholen

--das geht nicht:

--alle Kunden aus Berlin und London

select * from customers
where
	city = 'Berlin' and 'London' --ungültige Syntax


select * from customers
where
	city = 'Berlin' or city = 'London'


select * from customers
where
	city in ('Berlin' , 'London')


---Alle Bestellungen, deren Frachtkosten unter 10 liegen
---und vom Angestellten Nr 2 bearbeitet wurden

select * from orders
where
		freight < 10
		and
		employeeid = 2
order by freight desc


select top 3 * from [Order Details]--auch bei [order-Details]


--alle Order Details, die wo
--Produkt 11 kauften mit  weniger als 10 Stück

select * from [order details]
where
	productid = 11 
	and
	quantity < 10



select * from [order details]
where
	productid = 11 
	and
	quantity < 10
	and
	Sp = 19
	or sp = 3
	or sp=4
	and ...


select freight, employeeid, shipcountry from orders
where 
	(freight < 10
	or
	Shipcountry = 'USA')
	and 
	employeeid = 2
order by employeeid asc

--Regel.. das AND ist stärker bindend
--Tipp: Mach Klammern


select freight, employeeid, shipcountry from orders
where 
	freight < 10
	or
	(Shipcountry = 'USA'
	and 
	employeeid = 2)
order by employeeid asc




--Alle Kunden aus USA, UK, Italy, Germany..

select * from customers
where
	country = 'USA'
	OR
	country = 'UK'
	OR 
	country = 'Italy'
	or
	country = 'German%'
	...

---> IN
--where country in ('UK','USA','Germany',...)

select * from customers
where
	country in ('UK', 'USA', 'Italy', 'Germany' )
	--da das IN ein = Vergleich darstellt kann ees keine Wildcard geben

--alle Kunden aus den Hauptstädten Europa
--London, Berlin, Paris, Rom,Madrid



select * from customers
where 
	city in ( 
				'rom', 'London', 'Berlin', 'Paris','Madrid'	
			)



select * from orders 
where 
	freight >= 1 and freight <= 10 


--between

select * from orders
where
	freight between 1 and 10 -- >= <=


--welche Bestellungen haben Frachtkosten zwischen 
--0 und 74,2442

select * from orders
where 
	freight between 0 and 74.16  --ist inlusive
order by freight desc



--alle Kunden, die aus Ländern kommen, 
--die mit A, B G oder F beginnen

select * from customers
where
	country like 'A%'
	OR
	country like 'B%'
	OR
	country like 'G%'
	OR
	country like 'F%'


--was wenn gefragt6 worden wäre
--alle die A B C D oder E beginnen


select * from customers where country <'F'

select * from customers where country between 'C' and 'V'

--Between hat harte Grenzen

-------[C--------------------------V]  venuzuela-------------


--alle Kunden, die aus Ländern kommen, 
--die mit A, B G oder F beginnen



--   order details

select * from [order details]

select * from customers
where
		country like '[ABGF]%'--der erste!Buchstabe muss A B oder G oder F sein


--wir suchen alle Kunden der Länder
--entweder mit
--A oder G oder I oder U beginnen 
--und aber auch mit entweder Y oder E enden

select * from customers
where
	country like '[AGIU]%[EY]'

'0221-0765?2?'


select * from customers where fax like '0221-0765[0-9]21'


[0-9|A-Z]

'0221-07653?1'
select * from customers where fax like '0221-07657_1'




--PIN varchar(4)--- also auch '0000' , '3AG'

--wie finden wir in der PIN Spalte alle DS, 
--die ein ungültiges Format haben

--zuerst alle gültigen 
where pin not like '[0-9][0-9][0-9][0-9]'

where pin like < 10000 --falsch , weil 0010--kein Zahl

--[A-Z]_Z_[0-9]%Y'



--Suche in Customers nach den Kunden, die ein ' im Firmennamen haben 

select * from customers
where 
	companyname like '%''%'
	--2 Hochkommas .. Escapezeiochen.. dann wird das ' als ' gesucht


--Suche nach %

select * from customers
where
	companyname like '%[%]%'






	



	







