
select person.id as person_id, count(*) as count_of_visits
from person 
join person_visits on person.id =person_visits.person_id 
group by person.id
order by count_of_visits desc,person_id asc ;