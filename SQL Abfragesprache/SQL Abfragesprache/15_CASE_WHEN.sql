
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

