### 📁 Day 03 — Continuing to JOIN and make change in data

**DML: INSERT, UPDATE, DELETE, массовые операции**

| Задание | Описание | Ключевые навыки |
|---------|----------|------------------|
| ex00 | Пиццы для Kate (цена 800-1000) | JOIN, BETWEEN |
| ex01 | Меню, которые никто не заказывал | NOT EXISTS / NOT IN |
| ex02 | Названия забытых пицц с ценами (из ex01) | Подзапросы |
| ex03 | Пиццерии, которые посещали только женщины или только мужчины | INTERSECT, EXCEPT |
| ex04 | UNION пиццерий, заказанных только женщинами и только мужчинами | UNION, агрегация по полу |
| ex05 | Пиццерии, которые Andrej посещал, но не заказывал | NOT IN, Anti Join |
| ex06 | Пиццы с одинаковой ценой в разных пиццериях | SELF JOIN |
| ex07 | Добавление "greek pizza" (id = 19) | INSERT (hard-coded) |
| ex08 | Добавление "sicilian pizza" с динамическим ID | INSERT с подзапросом, MAX(id)+1 |
| ex09 | Добавление посещений для Denis и Irina | INSERT с подзапросами |
| ex10 | Добавление заказов на sicilian pizza | INSERT ... SELECT |
| ex11 | Уменьшение цены на greek pizza на 10% | UPDATE с вычислениями |
| ex12 | Массовые заказы greek pizza для всех клиентов | INSERT ... SELECT + generate_series |
| ex13 | Удаление новых заказов и pizza greek | DELETE (каскадное удаление) |
