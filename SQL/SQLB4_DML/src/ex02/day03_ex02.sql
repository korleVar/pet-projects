select menu.pizza_name, menu.price, pizzeria.name as pizzeria_name
from 
(select  id as menu_id 
from menu
except
select  menu_id 
from person_order) as t
inner join menu on menu.id = t.menu_id 
inner join pizzeria on pizzeria.id=menu.pizzeria_id
order by pizza_name , price;

