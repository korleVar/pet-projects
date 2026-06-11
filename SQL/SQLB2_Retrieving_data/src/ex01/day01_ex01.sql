

select object_name FROM(
select  menu.pizza_name   as object_name, 1 as sort_order from menu 
union all
select person.name as object_name, 2 as sort_order   from person) as t
order by  sort_order desc, object_name;



