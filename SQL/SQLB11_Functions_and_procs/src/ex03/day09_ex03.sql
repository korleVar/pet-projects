

create or replace function fnc_trg_person_audit()
returns trigger as
$$
DECLARE
    x CHAR(1);
    rent RECORD;
begin

	if TG_OP = 'INSERT' then x:= 'I'; rent := NEW;
	ELSIF TG_OP = 'UPDATE' then x:='U';  rent:=old;
	elseif TG_OP = 'DELETE' then  x:='D';  rent:=old;
	end if;
	insert into person_audit(type_event, row_id, name, age, gender, address)
	values(x,rent.id,rent.name,rent.age, rent.gender, rent.address);
	if TG_OP = 'INSERT'then
	return new;
else
	return old;
end if;
end
$$ language plpgsql;

create trigger trg_person_audit
after insert or update or delete
on person 
for each row
execute function fnc_trg_person_audit();

drop trigger trg_person_insert_audit on person;
drop function fnc_trg_person_insert_audit();

drop trigger trg_person_update_audit on person;
drop function fnc_trg_person_update_audit();

drop trigger trg_person_delete_audit on person;
drop function fnc_trg_person_delete_audit();

truncate table person_audit;

INSERT INTO person(id, name, age, gender, address) VALUES (10,'Damir', 22, 'male', 'Irkutsk'); 
UPDATE person SET name = 'Bulat' WHERE id = 10; 
UPDATE person SET name = 'Damir' WHERE id = 10; 
DELETE FROM person WHERE id = 10;

select * from person_audit;
