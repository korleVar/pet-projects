select name, count_of_visits
from (
    select person.name, count(*) as count_of_visits
    from person 
    join person_visits on person.id = person_visits.person_id
    group by person.id, person.name
    order by count_of_visits desc, person.name asc
    limit 4
) as top_visits;