select ps1.name as person_name1, ps2.name as person_name2, ps1.address as common_address
from person as ps1
join person as ps2
on ps1.address = ps2.address 
where ps1.id <>ps2.id 
order by person_name1, person_name2, common_address;