create unique index  idx_menu_unique on menu (pizzeria_id, pizza_name);

SET enable_seqscan = OFF;

explain analyze 
select * from menu 
where pizzeria_id = 1 and pizza_name = 'cheese pizza';




