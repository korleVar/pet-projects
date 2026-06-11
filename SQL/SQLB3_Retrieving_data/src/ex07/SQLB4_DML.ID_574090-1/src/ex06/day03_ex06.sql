select menu1.pizza_name, 
       p1.name as pizzeria_name_1, 
       p2.name as pizzeria_name_2, 
       menu1.price
from menu as menu1
join pizzeria as p1 on menu1.pizzeria_id = p1.id
join menu as menu2 on menu1.pizza_name = menu2.pizza_name 
                  and menu1.price = menu2.price
                  and menu1.pizzeria_id < menu2.pizzeria_id
join pizzeria as p2 on menu2.pizzeria_id = p2.id
order by menu1.pizza_name;