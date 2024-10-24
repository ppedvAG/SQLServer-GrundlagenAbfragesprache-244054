select * from 
	customers c inner join orders o on c.CustomerID=o.CustomerID --830


select * from 
	customers c left join orders o on c.CustomerID=o.CustomerID --832
	order by orderid


select * from 
	orders o right join customers c  on c.CustomerID=o.CustomerID --832
	order by orderid

	--Gibt es bestellungen zu denen es keinen Kunden gibt

--wir brauchen also alle! Bestellungen und passend dazu die Kunden... Kundespalten mit NULL darf es nicht geben



