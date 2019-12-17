select DriverID, DriverFirst, DriverLast, StartDate, EndDate, DriveRecord,
if (DriveRecord='C', 'On Notice', if(DriveRecord in ('D','F'), 'Can Terminate Immediately', 'Statisfactory')) as 'Driving Record Status'
from tbldriver
where DriveRecord in ('C','D','F')
order by DriveRecord
;
