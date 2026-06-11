(select pizzeria.name as pizzeria_name
from pizzeria
join menu on pizzeria.id = menu.pizzeria_id 
join person_order on menu.id = person_order.menu_id 
join person on person_order.person_id = person.id
where gender = 'female'
except 
select pizzeria.name 
from pizzeria
join menu on pizzeria.id = menu.pizzeria_id 
join person_order on menu.id = person_order.menu_id 
join person on person_order.person_id = person.id
where gender = 'male')
union
(select pizzeria.name 
from pizzeria
join menu on pizzeria.id = menu.pizzeria_id 
join person_order on menu.id = person_order.menu_id 
join person on person_order.person_id = person.id
where gender = 'male'
except
select pizzeria.name 
from pizzeria
join menu on pizzeria.id = menu.pizzeria_id 
join person_order on menu.id = person_order.menu_id 
join person on person_order.person_id = person.id
where gender = 'female')
order by 1;