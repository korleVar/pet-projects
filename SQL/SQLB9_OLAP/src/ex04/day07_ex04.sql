select person.name, count(*) as count_of_visits
from person
join person_visits on person.id=person_visits.person_id
group by person.name
having count(*) >3
order by count_of_visits desc;