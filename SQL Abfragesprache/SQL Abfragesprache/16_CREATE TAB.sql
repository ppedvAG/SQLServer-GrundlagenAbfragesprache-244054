--CREATE --> ALTER --> DROP 

--CREATE TABLE

CREATE TABLE TabName
	(
		Sp1 int,
		Sp2 varchar(50),
		Sp3 date,
		Sp4 char(5)
	)


create table tabName
	(
		ID int identity(1,1), ---1,2,3,4,5,6... 10,15,20,25,(10,5)
		Vorname varchar(50),
		Famname(varchar(50),
		Gebdat date
	)

ALTER TabName add Spx int
ALTER TabName drop column spx

create table #txy
		(id int identity, --int -2,1 Mrd   bis 2,1 Mrd  tinyint 0 bis 255  smallint ca 32000
		 Firma varchar(50),	--ist flexibel lang kann max varchar(8000)
		 PLZ  char(5), -- fixe Länge 
		 GebDat date  , --datetime (ms), smalldatetime (sec), datetime2 (ns)
		 Gehalt money ,  --kein Währung 8 Nachkommastellen
		 Preis decimal(8,2),-- 8 Stellen davon 2 Nachkommastellen
		 )

		 --nvarchar, nchar  unicode

select * from #txy

alter table #txy add spx int

alter table #txy drop column spx


--Lege eine Tabelle "Kunden" an mit folgenden Spalten
--Kdid int identity
--Firma varchar(50)
--Land varchar(50)
--Stadt varchar(50)
--custid char(5)


create table kunden
		(
			Kdid	int identity,
			Firma	varchar(50) NOT NULL,--NOT NULL ist Pflichtfeld
			Land	varchar(50) NULL,
			Stadt	varchar(50),
			CustId	char(5)
		)




