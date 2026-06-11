-- Рекурсивный запрос для построения всех возможных маршрутов
WITH RECURSIVE tour(start_point, end_point, total_cost, visited, level) AS (
    -- Базовый запрос
    SELECT 
        point1,
        point2,
        cost,
        ARRAY[point1, point2] AS visited,   
        2
    FROM routes
    WHERE point1 = 'a'
    
    UNION ALL

    -- Рекурсивная часть
    SELECT 
        t.start_point,
        r.point2,
        t.total_cost + r.cost,
        t.visited || r.point2,               
        t.level + 1
    FROM tour t
    JOIN routes r ON t.end_point = r.point1
    WHERE 
        t.level < 4
        AND NOT r.point2 = ANY(t.visited)  -- город ещё не посещён
),
-- Возврат в город 'a'
complete_tours AS (
    SELECT 
        t.total_cost + r.cost AS total_cost,
        t.visited || r.point2 AS full_visited   
    FROM tour t
    JOIN routes r ON r.point1 = t.end_point AND r.point2 = t.start_point
    WHERE t.level = 4
),
-- Минимальная и максимальная стоимость
cost_bounds AS (
    SELECT 
        MIN(total_cost) AS min_total_cost,
        MAX(total_cost) AS max_total_cost
    FROM complete_tours
)
-- Выводим результат 
SELECT DISTINCT
    total_cost,
    full_visited::text AS tour  
FROM complete_tours
WHERE total_cost = (SELECT min_total_cost FROM cost_bounds)
   OR total_cost = (SELECT max_total_cost FROM cost_bounds)
ORDER BY total_cost, tour;