--Начинаем транзакцию
begin;
--Session #1 Обнови рейтинг для "Pizza Hut" до 5 баллов в режиме транзакции.
update pizzeria set rating =5 where name='Pizza Hut';
--Session #1 Проверь, что ты видишь эти изменения в сеансе №1.
select * from pizzeria where name='Pizza Hut';

--Session #2 Проверь, что ты не видишь этих изменений в session #2.
select * from pizzeria where name='Pizza Hut';

--Session #1 Опубликуй свои изменения для всех параллельных сеансов
commit;
--Session #2 Проверь, что теперь ты видишь эти изменения в Session #2
select * from pizzeria where name='Pizza Hut';

