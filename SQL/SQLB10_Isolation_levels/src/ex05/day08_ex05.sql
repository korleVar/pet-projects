--Session #1
BEGIN ISOLATION LEVEL SERIALIZABLE;
--Session #2
BEGIN ISOLATION LEVEL SERIALIZABLE;
--Session #1
select sum(rating) from pizzeria;
--Session #2
insert into pizzeria (id,name,rating) values (10, 'Kazan Pizza',5);
--Session #2
commit;
--Session #1
select sum(rating) from pizzeria;
--Session #1
commit;
--Session #1
select sum(rating) from pizzeria;
--Session #2
select sum(rating) from pizzeria;



