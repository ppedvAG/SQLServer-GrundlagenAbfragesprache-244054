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















