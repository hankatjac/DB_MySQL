select  EmpID, concat(EmpFirst, ' ', EmpLast) as `Full Name`, HourlyRate
from tblemployee
where HourlyRate is not null
order by HourlyRate
limit 1
;
