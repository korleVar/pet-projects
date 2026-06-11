-- Создание таблицы
CREATE TABLE routes
(
    point1 VARCHAR,
    point2 VARCHAR,
    cost INT
);

-- Вставка данных
INSERT INTO routes(point1, point2, cost)
VALUES
    ('a','b',10),
    ('b','a',10),
    ('a','c',15),
    ('c','a',15),
    ('a','d',20),
    ('d','a',20),
    ('b','d',25),
    ('d','b',25),
    ('c','d',30),
    ('d','c',30),
    ('b','c',35),
    ('c','b',35);

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
        AND NOT r.point2 = ANY(t.visited)    -- город ещё не посещён
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
-- Минимальная стоимость
min_cost AS (
    SELECT MIN(total_cost) AS min_total_cost
    FROM complete_tours
)
-- Выводим результат 
SELECT distinct
    total_cost,
    full_visited::text AS tour  
FROM complete_tours
WHERE total_cost = (SELECT min_total_cost FROM min_cost)
ORDER BY total_cost, tour;