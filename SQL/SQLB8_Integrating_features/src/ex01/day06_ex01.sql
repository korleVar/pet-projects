insert into person_discounts (id,person_id,pizzeria_id, discount)
select   
    row_number() over (order by person_order.person_id, menu.pizzeria_id) as  id,
    person_order.person_id,
    menu.pizzeria_id,
    case  
        when COUNT(*) = 1 THEN 10.5
        when COUNT(*) = 2 THEN 22
        else 30
    end as discount
from person_order
join menu on person_order.menu_id = menu.id
group by person_order.person_id, menu.pizzeria_id;

