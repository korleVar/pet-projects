--Session #1
BEGIN;
SET TRANSACTION ISOLATION LEVEL READ COMMITTED;
--Session #2
BEGIN;
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
--Session #1
select * from pizzeria where name='Pizza Hut';
--Session #2
update pizzeria set rating = 3.6 where name='Pizza Hut';
--Session #2
commit;
--Session #1
 select * from pizzeria where name='Pizza Hut';
 --Session #1
commit;
 --Session #2
 select * from pizzeria where name='Pizza Hut';