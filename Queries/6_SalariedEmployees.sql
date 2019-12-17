select EmpID, concat(EmpFirst, ' ', EmpLast) as `Full Name`, salary as 'Highest salary'
from tblemployees
where salary is not null
order by salary desc
limit 1
;

