select person.address,
round(MAX(age)-(min(age)/max(age::numeric)),2) as formula,
round(avg(age),2) as average,
MAX(age) - (MIN(age) / MAX(age::numeric)) > AVG(age) AS comparison
from person 
group by person.address
order by person.address;
