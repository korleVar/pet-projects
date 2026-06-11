SELECT t.order_date, name|| ' (age:' || age || ')' AS person_information 
FROM (select order_date, person_id as id from person_order) as t
NATURAL JOIN person 
ORDER BY order_date ASC, person_information asc;

