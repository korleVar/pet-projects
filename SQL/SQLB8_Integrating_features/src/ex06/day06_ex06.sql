

create sequence seq_person_discounts
start with 1;

select SETVAL('seq_person_discounts', (select COUNT(*) FROM person_discounts) + 1);

alter table person_discounts 
alter column id set default NEXTVAL('seq_person_discounts');

