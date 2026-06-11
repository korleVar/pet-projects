create or replace function fnc_fibonacci (pstop integer default 10)
returns table (fibonacci_numb int) as
$$
DECLARE

    prev integer;
    curr integer;
    next_val integer;
begin
prev := 0;
    curr := 1;
 if prev < pstop then
        fibonacci_numb := prev;
        return next;
    end if;
while curr < pstop loop
fibonacci_numb :=curr;
return next;
next_val:= prev + curr;
prev:= curr;
 curr:=next_val;
end loop;
return;
end;
$$
language plpgsql;

select * from fnc_fibonacci(100);

select * from fnc_fibonacci();
