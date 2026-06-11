create OR REPLACE function fnc_person_visits_and_eats_on_date (
pperson varchar default 'Dmitriy', pprice int default 500,pdate date default '2022-01-08') returns table (name varchar) as
$$
begin
return query 
select pizzeria.name
 from person_visits
          join person on person_visits.person_id = person.id
          join pizzeria on pizzeria.id = person_visits.pizzeria_id
          join menu on pizzeria.id = menu.pizzeria_id
 where person.name = pperson
   and menu.price < pprice
   and visit_date = pdate;
end;
$$
language plpgsql;


select *  
from fnc_person_visits_and_eats_on_date(pprice := 800);

select *  
from fnc_person_visits_and_eats_on_date(pperson := 'Anna',pprice := 1300,pdate := '2022-01-01');


