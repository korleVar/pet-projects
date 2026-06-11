INSERT into person_visits (id,person_id,pizzeria_id,visit_date)
select
 (select MAX(id)+1 from person_visits),
(select id from person where person.name='Denis' ),
(select id from pizzeria where pizzeria.name ='Dominos'),
'2022-02-24'::date
union all
select 
(select MAX(id)+2 from person_visits),
(select id from person where person.name='Irina' ),
(select id from pizzeria where pizzeria.name ='Dominos'),
'2022-02-24'::date;