--Session #1
BEGIN ISOLATION LEVEL REPEATABLE READ;
--Session #2
BEGIN ISOLATION LEVEL REPEATABLE READ;
--Session #1
select sum(rating) from pizzeria;
--Session #2
insert into pizzeria (id,name,rating) values (11, 'Kazan Pizza 2',4);
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

-