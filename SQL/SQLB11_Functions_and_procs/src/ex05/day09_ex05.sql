

drop function fnc_persons_female;
drop function fnc_persons_male;




create OR REPLACE function fnc_persons( pgender varchar = 'female') returns table(
id bigint,
  name varchar ,
  age integer ,
  gender varchar,
  address varchar
) as 
$$
select *
from person 
where gender = pgender

$$
language sql;

select *
from fnc_persons(pgender := 'male');

select *
from fnc_persons();


