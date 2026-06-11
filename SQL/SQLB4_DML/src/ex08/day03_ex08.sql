insert into menu 
select 
(select MAX(id)+1 from menu), 
(select id from pizzeria 
where pizzeria.name='Dominos'), 
'sicilian pizza', 
900;

