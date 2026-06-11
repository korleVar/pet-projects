SELECT order_date, p.name|| ' (age:' || age || ')' AS person_information 
FROM person_order AS t
JOIN person AS p ON t.person_id = p.id
ORDER BY order_date ASC, person_information asc;



