(select pizzeria.name as pizzeria_name
from pizzeria
join person_visits on pizzeria.id = person_visits.pizzeria_id
join person on person_visits.person_id = person.id
where gender = 'female'
EXCEPT all
select pizzeria.name
from pizzeria
join person_visits on pizzeria.id = person_visits.pizzeria_id
join person on person_visits.person_id = person.id
where gender = 'male')
union all
(select pizzeria.name
from pizzeria
join person_visits on pizzeria.id = person_visits.pizzeria_id
join person on person_visits.person_id = person.id
where gender = 'male'
EXCEPT all
select pizzeria.name
from pizzeria
join person_visits on pizzeria.id = person_visits.pizzeria_id
join person on person_visits.person_id = person.id
where gender = 'female')
order by 1;


