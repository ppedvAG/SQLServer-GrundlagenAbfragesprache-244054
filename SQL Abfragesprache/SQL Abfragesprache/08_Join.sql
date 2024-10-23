select * from 
	tabelleA inner join tabelleB on tabelleA.Id = tabelleB.id 

select * from 
	tabelleA A inner join tabelleB B on A.id = B.id


select * from 
	customers inner join orders on customers.customerid = orders.CustomerID


select c.CompanyName,o.OrderID, o.OrderDate, o.Freight 
from 
	customers C inner join Orders O on C.CustomerID=O.CustomerID

select top 3 * from products
select top 3 * from [Order Details]

--Ausgabe: Produktname , Verkaufsmenge und Verkaufspreis, bestellnr

---order details (productid)---Products(productId)
-- tabelle join tabelle on spalte = spalte

SELECT 
		p.ProductName
	   , od.UnitPrice, od.Quantity, od.OrderID 
FROM	
		[ORDER DETAILS] OD INNER JOIN PRODUCTS P 	ON  OD.PRODUCTID=P.PRODUCTID


		select top 3 * from orders

		select top 9 * from employees


---order details (productid)---Products(productId)
--> tabelle join tabelle on spalte = spalte

--Ausgabe: Lastname Firstname des Ang und BestllNr, Freight

select * from 
             employees e join orders o on e.employeeid = o.employeeid



select top 3 * from customers
select top 3 * from orders

select * from 
				customers c inner join orders o on c.CustomerID=o.CustomerID

				--Ausgabe Region und Territroy

select * from region
select * from Territories


select r.RegionDescription, t.TerritoryDescription from 
			Region r inner join Territories t on r.RegionID=t.RegionID
	where r.regionid= 2		


	select top 3 * from EmployeeTerritories
	select top 3 * from Territories

	--Ausgabe--- AngID, Gebiet (TerritoryDescritption


select * from 
	EmployeeTerritories et inner join Territories t on et.TerritoryID=t.TerritoryID



select * 
from 
	customers c inner join orders o			  on c.CustomerID = o.CustomerID
				inner join [Order Details] od on od.orderid   = o.orderid
				inner join products p         on p.ProductID  = od.ProductID



--JOIN über mehr Tabllen

select a.sp1, b.sp3, c.spx, d.spy
from
	tabelleA A inner join tabelleB b on A.Spid = B.Spid
			   inner join tabelleC c on c.spx = b.spx
			   inner join tabelleD d on d.spy = c.spy
where 
	c.spk = 100
	and..
order by 
	b.spa

--customers-->orders-->order details-->products
--Suche den Firmenanmen und dazu das Produkt, das sie gekauft haben

select c.CompanyName,p.ProductName 
from 
	customers c inner join orders o				on c.CustomerID = o.CustomerID
				inner join [Order Details] od	on od.OrderID   = o.OrderID
				inner join products p			on p.ProductID  = od.ProductID
where 
	
order by companyname, productname


sum min max avg count

select sum(freight) from orders

select companyname , sum(freight)