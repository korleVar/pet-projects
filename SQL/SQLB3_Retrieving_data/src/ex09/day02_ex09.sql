with female_orders as (
select person.name , menu.pizza_name 
from person
join person_order on person.id= person_order.person_id 
join menu on person_order.menu_id =menu.id
where 
person.gender = 'female'
)
select name 
from female_orders 
where 
pizza_name = 'pepperoni pizza'
INTERSECT
select name 
from female_orders
where 
pizza_name = 'cheese pizza'
order by name  asc;