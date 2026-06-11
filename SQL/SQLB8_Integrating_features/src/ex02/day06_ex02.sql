select person.name, 
pizza_name , 
price, 
(price * ((100 - discount) / 100.0))::int AS discount_price,
pizzeria.name as pizzeria_name 
from person_order 
join person on person_order.person_id = person.id
join menu on person_order.menu_id =menu.id 
join pizzeria on menu.pizzeria_id = pizzeria.id
join person_discounts on person.id=person_discounts.person_id and pizzeria.id = person_discounts.pizzeria_id 
order by person.name,menu.pizza_name;

