select DriverID, DriverFirst, DriverLast, DOB, StartDate, EndDate, Address, City, State, Phone, Cell, Review, DriveRecord
from tbldriver
where DriveRecord in ('D','F') and EndDate is null
;