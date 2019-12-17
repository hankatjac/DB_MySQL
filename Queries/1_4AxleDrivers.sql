use movinon 
;

select DriverID, DriverFirst, DriverLast, Phone, Cell, DriveRecord
from tbldriver
where DriveRecord in ('A','B')
;

select * from tbldriver;