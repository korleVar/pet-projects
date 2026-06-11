select person.address, pizzeria.name, count(*) as count_of_orders
from person
join person_order on person.id=person_order.person_id 
join menu on person_order.menu_id =menu.id 
join pizzeria on menu.pizzeria_id =pizzeria.id
group  by person.address, pizzeria.name
order by person.address, pizzeria.name;