WITH cte_date AS (
    SELECT generate_series('2022-01-01'::date, '2022-01-10'::date, '1 day') AS missing_date
)
SELECT cte.missing_date::date 
FROM cte_date AS cte
LEFT JOIN person_visits ON cte.missing_date = person_visits.visit_date
                        AND person_visits.person_id BETWEEN 1 AND 2
WHERE person_visits.person_id IS NULL
ORDER BY cte.missing_date ASC;



