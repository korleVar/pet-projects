select menu.pizza_name , pizzeria.name as pizzeria_name
from person
join person_order on person.id=person_order.person_id 
join menu on person_order.menu_id =menu.id 
join pizzeria on menu.pizzeria_id = pizzeria.id
where person.name = 'Denis' or  person.name = 'Anna' 
order by pizza_name,pizzeria_name  ;

