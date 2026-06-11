
INSERT into person_visits (id,person_id,pizzeria_id,visit_date)
Values
( (select MAX(id)+1 from person_visits),
(select id from person where person.name='Dmitriy' ),
(select min(pizzeria.id) 
from pizzeria 
join menu on menu.pizzeria_id =pizzeria.id
where pizzeria.name!='Papa Johns' 
and price < 800),
'2022-01-08'::date
)


REFRESH MATERIALIZED VIEW mv_dmitriy_visits_and_eats;
 
