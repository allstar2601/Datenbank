2)	Gib alle Mitarbeiter pro Abteilung aus. Verwende dazu einen INNER JOIN. Selektiere die Abteilungsnummer, Abteilungsname, Mitarbeiternummer und den Mitarbeiternamen. Sortiere 
nach Abteilungsname aufsteigend und nach Mitarbeiternamen absteigend. (Punkte 4)

select A.AbtNr , A.Abtname, M.Mitnr , M.Mitnr
from Abteilung as A INNER JOIN MITARBEITER as M 
on M.ABTNR = A.AbtNr
order by M.MITNAME DESC , A.ABTNAME ASC; 








3)	Gib jene Arbeitspakete aus, welche keine Mitarbeiter zugeordnet haben. Gib alle Spalten aus. (Punkte 3)
select * 
From Arbeitspakete as A
where MITNR is null;






4)	Liste alle Arbeitspakete des Mitarbeiters mit dem Namen 'Maier'. Verwende einen INNER JOIN. Gib die Nummer des Mitarbeites, den Name des Mitarbeiters und den Namen des Arbeitspakets im Select aus. (Punkte 3)

select MITNAME , MITNR , ANAME
From ARBEITSPAKETE AS A INNER JOIN MITARBEITER AS M  
ON M.MITNR = A.MITNR
WHERE M.MITNAME = 'MAIER';







5)	Liste alle Arbeitspakete des Mitarbeiters mit dem Namen 'Maier'. Verwende einen Sub-Select. Gib alle Spalten aus . (Punkte 4)


SELECT *
FROM ARBEITSPAKETE AS A
WHERE A.MITNR(SELECT MITNR
		FROM MITARBEITER
        WHERE MITNAME = 'MAIER');
        
        






 
6)	Gib pro Mitarbeiter (Name des Mitarbeiters) aufsummiert alle seine geplanten Aufwände (PT_SOLL) seiner Arbeitspakete aus.  (Punkte 4)

select MITNAME , SUM(PT_SOLL)
from Mitarbeiter as M Inner join Arbeitspakete as A
on M.MITNR=A.MITNR
group by M.Mitname;







7)	Gib pro Mitarbeiter (Name des Mitarbeiters)  aufsummiert alle Aufwände seiner Arbeitspakete aus, welche noch zu leisten sind. Die noch zu leistenden Aufwände ergeben sich aus der Differenz zwischen PT_SOLL und PT_IST seiner Arbeitspakete. (Punkte 4)

select MITNAME , SUM(PT_Soll = PT_Soll - PT_IST)
from Mitarbeiter as M Inner join Arbeitspakete as A
on M.MITNR=A.MITNR
group by M.MITNAME
;







8)	Gib alle Mitarbeiter mit Namen  aus, welche noch keinem Arbeitspaket zugeordnet sind. Verwende dazu einen Sub-Select mit NOT EXISTS. (Punkte 4)


select M.Mitname
from mitarbeiter as m 
where not exists (select *
					from ArbeitsPaket as a
                    where m.mitnr = a.Mitnr);







9)	Gib pro Abteilung (ANAME „Name der Abteilung“) die Anzahl ihrer Mitarbeiter aus. Gib für die Spalte der Anzahl Mitarbeiter den Spaltennamen ANZAHL_MITARBEITER aus. (Punkte 4)



select A.Abtnr , count(*)
from Abteilung as a inner join mitarbeiter as m
on a.abtnr = m.abtnr
group by a.abtname
;




