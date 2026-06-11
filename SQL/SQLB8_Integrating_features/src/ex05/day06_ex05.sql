comment on table person_discounts is 'Таблица хранит персональные скидки клиентов, по каждой пиццерии отдельно для каждого клиента';
comment on column person_discounts.id is 'Уникальный идентификатор записи';
comment on column person_discounts.person_id  is 'Идентификатор клиента, для которого установлена скидка';
comment on column person_discounts.pizzeria_id  is 'Идентификатор пиццерии, в которой действует скидка';
comment on column person_discounts.discount  is 'Размер скидки в процентах от 0 до 100. Рассчитывается автоматически на основе кол-ва заказов';
