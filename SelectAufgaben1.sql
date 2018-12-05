SELECT '1.1) In den Übungen 1.2 bis 3.14 soll mit den  Tabellen LIEFERANT, TEIL, PROJKET und AUFTRAG gearbeitet werden.
       Damit man bequemer arbeiten kann, sollen Synonyme (L, T, P, LTP) für diese Tabellen angelegt werden.
	   
	   Mit MySQL nicht möglich' as 'INFO';

SELECT '1.2) Erstelle eine Projektliste mit allen Daten der Tabelle PROJEKT.' as 'INFO';
	select  PNR ,PNAME , ORT
    From Projekt;
SELECT '1.3) Liste alle Daten der Projekte in ''BERLIN'' ' as 'INFO';
	select *from Projekt
    where ORT = 'Berlin';
SELECT '1.4) Liste die Lieferanten-Nummern aller Lieferanten (sortiert aufsteigend),
       die für das Projekt ''4'' Teile liefern ' as 'INFO';
	select LNR
    from Lieferant
    where LNR = 4
    order by LNR ASC;

SELECT '1.5) Liste alle Aufträge, deren Menge zwischen 400 und 800 (einschließlich) beträgt.
        Gib eine zweite alternative Lösung an.' as 'INFO';
	select Menge
    from Auftrag
    where Menge = Menge >= 400 and Menge <= 800; 
    
    select * 
    from Auftrag
    where Menge Between 400 and 800;

SELECT '1.6) Liste alle Farbe/Ort-Kombinationen der Tabelle TEIL. Duplikate sollen nicht angezeigt werden.' as 'INFO';
	select distinct Farbe , Ort
    From Teil;

SELECT '1.7) Liste alle Aufträge, bei denen die Menge nicht NULL ist.' as 'INFO';
select menge
from Auftrag
where Menge <> null;
SELECT '1.8) Liste die Projekt-Nummern und -Orte, bei denen die Orte an der vierten Stelle ihres Namens ein ''N'' haben. ' as 'INFO';
select PNR , ORT
from Auftrag
where NAME = '____N';