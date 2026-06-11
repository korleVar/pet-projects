--Session #1
BEGIN ISOLATION LEVEL REPEATABLE READ;
--Session #2
BEGIN ISOLATION LEVEL REPEATABLE READ;
--Session #1

select * from pizzeria where name='Pizza Hut';
--Session #2
select * from pizzeria where name='Pizza Hut';
--Session #1
update pizzeria set rating =4 where name='Pizza Hut';
--Session #2
pdate pizzeria set rating = 3.6 where name='Pizza Hut';
--Session #1
commit;
--Session #2
commit;
--Session #1
 select * from pizzeria where name='Pizza Hut';
 --Session #2
 select * from pizzeria where name='Pizza Hut';