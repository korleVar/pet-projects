select COALESCE(vis.name, ord.name) as name, COALESCE(vis.count_vis,0) +COALESCE(ord.count_ord,0) as total_count
from
(select pizzeria.id, pizzeria.name, COUNT(*) as count_vis
FROM person_visits 
join pizzeria on person_visits.pizzeria_id = pizzeria.id 
GROUP BY pizzeria.id, pizzeria.name) as vis
full join
(select pizzeria.id,  pizzeria.name, count(*) as count_ord
from person_order 
join menu on person_order.menu_id =menu.id 
join pizzeria on menu.pizzeria_id =pizzeria.id 
group by pizzeria.id, pizzeria.name
) as ord
on
vis.id=ord.id
order by total_count desc, name asc;

