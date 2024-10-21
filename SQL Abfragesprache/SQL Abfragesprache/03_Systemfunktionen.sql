--Zeitfunktionen

--akutelle Uhrzeit und Datum auf ms
select getdate()

select getdate() -14 --vor 14 Tagen 

select getdate() +10 --in 10 Tage

--Zeit zwischen 2 Terminen

select datediff(dd,getdate(),'29.07.1969') -- -20173

--dd Tage
--mm Monate
--mi Minuten
--hh STunden
--qq Quartal

--Datumsdifferenz

select datediff(dd,'29.07.1969',getdate()) -- +20173

--F() zu einem Datum ein Zeitintervall dazurechen
--in 60 Stunden

select DATEADD(hh,60,getdate())


--Welches Datum hatten wir vor 1000 Stunden?

select dateadd(hh, -1000, getdate())


select datepart(yy, getdate())
select year(getdate())


select datepart(qq,getdate())
select MONTH(getdate())

--welche Kalenderwoche haben aktuell
select datepart( week, getdate())
select datepart(ww, getdate())
select datepart(iso_week, getdate()) --?

select week(getdate())

select datepart(iso_week, getdate()),
		datepart(ISOWK, getdate()),
		datepart(ISOWW, getdate())

--der Name eines Datumanteils: Wochentag oder Monate
select datename

select datename(DW, getdate())--dw = day of week

--Textfuntkionen


select 'A' + 'B' --AB

select 100+'B'  --error
select 'B' + 100 --error

select '100' + 'B'
select '100'+ '200'


select convert(varchar(50), 100) + 'B'


char(50)   'otto                                   ' 50
varchar(50) 'otto'   4




select left('ABCDEFG',2) --AB
select right('ABCDEFG',2) --FG
--Längen feststellen

select	  len('ABCDEFG') --7
		, datalength('ABCDEFG')--7
select	  len('ABCDEFG       ')---7
		, datalength('    ABCDEFG     ')---12
		,len('    ABCDEFG       ') --11
--LEN  entfernt die Leerzeichen am Ende des Textes
--datalenght errechnet die die tats Länge inkl leerzeichen
--Zeichenkette umdrehen
select reverse('Otto')
select reverse('ein neger mit gazellen zagt im regen nie')
select substring('ABCDEFG',2,3)--BCD
--ab einert gewissen stelle ein bestimmte Länge an Zeichen zurück
--Zeichen die der Substring findet ersetzen durch
select stuff('ABCDEFG',2,3,'X')

--08677988934
--08677988xxx

--086779889456454

select stuff(	'086333333775459346454' --ZK
				,len('086333333775459346454')-2 --Von der Länge 2 abziehen ergibt 3letze Pos
				,3 --für eine bestimmte Länge
				,'xxx'  --durch das ersetzen
			)

--Anzahl der Stellen

select len('086775459346454')-2


select reverse(stuff(reverse('086333333775459346454'),1,3,'XXX'))

select reverse('ABCDEFG')






--086779889456xxx


















