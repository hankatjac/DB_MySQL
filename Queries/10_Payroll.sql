select EmpID,concat(EmpFirst, ' ', EmpLast) as `Full Name`, SSN, 
concat('$', format(Salary/12,2)) as 'Monthly wage', concat('$', HourlyRate) as HourlyRate
from tblemployee
order by EmpLast
;
