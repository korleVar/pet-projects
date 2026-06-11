SELECT
    (SELECT person.name FROM person WHERE person.id = person_order.person_id) AS name,
    CASE
        WHEN (SELECT person.name FROM person WHERE person.id = person_order.person_id) = 'Denis'
        THEN 'true'
        ELSE 'false'
    END AS check_name
FROM person_order, menu
WHERE 
    person_order.menu_id = menu.id 
    AND (menu.id = 13 OR menu.id = 14 OR menu.id = 18)
    AND person_order.order_date = '2022-01-07';