use movinon;

load data inFile 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/csv/Customers.csv'
into table tblCustomer
fields terminated by ','
ENCLOSED BY '"'
lines terminated by '\r\n'
ignore 1 rows;

select * from tblcustomer;

load data inFile 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/csv/drivers.csv'
into table tbldriver
fields terminated by ','
ENCLOSED BY '"'
lines terminated by '\r\n'
ignore 1 rows
(DriverID, DriverFirst, DriverLast, SSN, DOB, StartDate, @vEndDate, Address, City, State, Zip, Phone, Cell, MileageRate,@vReview, DrivingRecord)
SET EndDate = nullif(@vEndDate,''),
Review = nullif(@vReview,'');

select * from tbldriver;

load data inFile 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/csv/Employees.csv'
into table tblemployee
fields terminated by ','
ENCLOSED BY '"'
lines terminated by '\r\n'
ignore 1 rows
(EmpID, EmpFirst, EmpLast, Address, City, State, Zip, Phone, Cell, SSN, DOB, StartDate,@vEndDate, PositionID, @vSalary, @vHourlyRate, @vReview, Memo, WareHouseID)
SET EndDate = nullif(@vEndDate,''),
HourlyRate = nullif(@vHourlyRate, ''),
Salary = nullif(@vSalary, ''),
Review = nullif(@vReview,'');

select * from tblemployee;

load data inFile 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/csv/jobDetails.csv'
into table tbljobdetail
fields terminated by ','
lines terminated by '\r\n'
ignore 1 rows;

select * from tbljobdetail;

load data inFile 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/csv/jobOrders.csv'
into table tbljoborder
fields terminated by ','
lines terminated by '\r\n'
ignore 1 rows
(JobID, CustID, MoveDate, FromAddress, FromCity, FromState, ToAddress, ToCity, ToState, DistanceEst, WeightEst, @vPacking, @vHeavy, @vStorage)
SET Packing = if(@vPacking= 'TRUE',1,0),
Heavy = if(@vHeavy= 'TRUE',1,0),
Storage = if(@vStorage= 'TRUE',1,0)
;

select * from tbljoborder;

load data inFile 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/csv/StorageUnits.csv'
into table tblstorageunit
fields terminated by ','
lines terminated by '\r\n'
ignore 1 rows
;

load data inFile 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/csv/UnitRentals.csv'
into table tblunitrental
fields terminated by ','
lines terminated by '\r\n'
ignore 1 rows
(CustID, WarehouseID, UnitID, DateIn, @vDateOut)
SET DateOut = nullif(@vDateOut,'')
;

load data inFile 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/csv/Vehicles.csv'
into table tblvehicle
fields terminated by ','
lines terminated by '\r\n'
ignore 1 rows;

select * from tblVehicle;


