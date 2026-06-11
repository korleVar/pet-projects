SELECT (select person.name from person where person.id=pv.person_id ) AS person_name , 
        (select pizzeria.name from pizzeria where pizzeria.id = pv.pizzeria_id ) AS pizzeria_name  
FROM (select person_id, pizzeria_id, visit_date FROM person_visits WHERE  visit_date between '2022-01-07' and '2022-01-09') AS pv 
ORDER BY person_name asc, pizzeria_name desc;