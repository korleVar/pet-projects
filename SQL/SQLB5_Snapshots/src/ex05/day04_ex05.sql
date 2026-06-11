create view v_price_with_discount as
select person.name, menu.pizza_name, menu.price,  (price -price *0.1 )::integer as discount_price
from person
join person_order on person.id=person_order.person_id 
join menu on person_order.menu_id =menu.id
order by name, pizza_name;
