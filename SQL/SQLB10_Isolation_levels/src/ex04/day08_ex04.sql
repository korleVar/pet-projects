--Session #1
BEGIN ISOLATION LEVEL SERIALIZABLE;
--Session #2
BEGIN ISOLATION LEVEL SERIALIZABLE;
--Session #1
select * from pizzeria where name='Pizza Hut';
--Session #2
update pizzeria set rating =3.0 where name='Pizza Hut';
--Session #2
commit;
--Session #1
select * from pizzeria where name='Pizza Hut';
--Session #1
commit;
--Session #1
select * from pizzeria where name='Pizza Hut';
--Session #2
 select * from pizzeria where name='Pizza Hut';

