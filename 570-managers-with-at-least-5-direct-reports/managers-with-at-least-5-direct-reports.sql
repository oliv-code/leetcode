-- Write your PostgreSQL query statement below
-- id ist der Primärschlüssel (Spalte mit eindeutigen Werten) für diese Tabelle.
--Jede Zeile dieser Tabelle enthält den Namen eines Mitarbeiters, seine Abteilung und die ID seines Vorgesetzten.
--Wenn managerId null ist, hat der Mitarbeiter keinen Vorgesetzten.
--Kein Mitarbeiter ist der Vorgesetzte von sich selbst.

select m.name
from employee as e
join employee as m
    on e.managerid = m.id 
group by m.id
        ,m.name
having count(m.id)  >= 5

