select name 
from pizzeria
where id not in ( SELECT pizzeria_id FROM person_visits );

select name 
from pizzeria 
where  not EXISTS( SELECT pizzeria_id FROM person_visits 
where person_visits.pizzeria_id=pizzeria.id
);




