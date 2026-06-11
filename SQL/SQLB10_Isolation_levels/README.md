### Day 08 — Isolation is one of ACID properties

**Транзакции, уровни изоляции, аномалии, deadlock**

| Задание | Описание | Ключевые навыки |
|---------|----------|------------------|
| ex00 | READ COMMITTED: видимость изменений | BEGIN, COMMIT, параллельные сессии |
| ex01 | Lost Update Anomaly (READ COMMITTED) | UPDATE в параллельных транзакциях |
| ex02 | Lost Update Anomaly (REPEATABLE READ) | Уровни изоляции |
| ex03 | Non-Repeatable Reads (READ COMMITTED) | Аномалия неповторяющегося чтения |
| ex04 | Non-Repeatable Reads (SERIALIZABLE) | Сериализуемая изоляция |
| ex05 | Phantom Reads (READ COMMITTED) | Аномалия фантомного чтения |
| ex06 | Phantom Reads (REPEATABLE READ) | Защита от фантомов |
| ex07 | Deadlock (взаимоблокировка) | Воспроизведение deadlock, разрешение |
