select * from customers--91

select * into KundenEU from customers where country in ('UK', 'Italy', 'Germany')--21


--kann man sehen ,welche Kunden in Customers und in KundeEU sind
--join

select * from customers c
inner join kundeneu eu on 
		c.CustomerID=eu.CustomerID and 
		c.city = eu.city



select * from customers
intersect--alle gemeinsamen DS
select * from kundenEU


select customerid, city from customers
intersect--alle gemeinsamen DS
select customerid, city from kundenEU



--Kann man auch die unterschiedlichen Zeilen sehen

select * from customers
except--welche sind in Customers aber nicht KundenEu
select * from kundeneu


select customerid, city from kundenEU
intersect
select customerid, city from customers


select * from kundenEU
except--welche sind in Customers aber nicht KundenEu
select * from Customers
