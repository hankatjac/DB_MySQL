select city, count(*) as `Number of employees`
from tblemployees
group by city
;
