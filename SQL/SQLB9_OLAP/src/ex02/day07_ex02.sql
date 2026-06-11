(select pizzeria.name, COUNT(*) as count, 'visit' as action_type
FROM person_visits 
join pizzeria on person_visits.pizzeria_id = pizzeria.id 
GROUP BY  pizzeria.name
ORDER BY count DESC
LIMIT 3
)
union 
(select pizzeria.name, count(*) as count,  'order' as action_type
from person_order 
join menu on person_order.menu_id =menu.id 
join pizzeria on menu.pizzeria_id =pizzeria.id 
group by  pizzeria.name
order by count desc 
limit 3)
order by action_type asc, count desc;
