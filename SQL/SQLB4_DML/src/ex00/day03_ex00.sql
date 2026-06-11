select menu.pizza_name, menu.price, pizzeria.name as pizzeria_name, person_visits.visit_date
from person 
inner join person_visits on person.id = person_visits.person_id 
inner join pizzeria  on person_visits.pizzeria_id =pizzeria.id 
inner join menu on pizzeria.id =menu.pizzeria_id 
where person.name = 'Kate'
and price between 800 and 1000
order by pizza_name, price, pizzeria_name; 

