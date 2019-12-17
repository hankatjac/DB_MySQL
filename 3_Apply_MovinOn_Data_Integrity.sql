/* Purpose: Apply Data Integrity to MovinOn Database 
	Script Date: March 21, 2019
    Developed by : Hang Ruan
*/

use MovinOn;


-- add foreign key
-- tblUnitRental/tblWarehouse
alter table tblUnitRental
	add constraint fk_tblUnitRental_tblCustomer foreign key (CustID)
    references tblCustomer(CustID);
    
-- tblUnitRental/tblWarehouse
alter table tblunitRental
	add constraint fk_tblunitRental_tblWarehouse foreign key (WarehouseID)
    references tblwarehouse (WarehouseID);
    
-- tblStorageUnit/tblWarehouse    
alter table tblstorageunit
	add constraint fk_tblStorageUnit_tblWarehouse foreign key (WarehouseID)
    references tblwarehouse (WarehouseID);    
    
alter table tblStorageUnit
	add constraint primary key clusterd (Id, WarehouseID, UnitID);
    
-- tblEmployees/tblWarhouse
alter table tblemployee
	add constraint fk_tblEmployee_tblWarehouse foreign key (WarehouseID)
    references tblwarehouse (WarehouseID);
    
-- tblEmployees/tblPosition    
alter table tblemployee    
    add constraint fk_tblEmployee_tblPosition foreign key (PositionID)
    references tblPosition (PositionID);  

-- tblJobOrder/tblCustomer
alter table tblJobOrder
	add constraint fk_tblJobOrder_tblCustomer foreign key (CustID)
    references tblCustomer (CustID);

 -- tblJobDetails/tblVehicle
alter table tbljobdetail
	add constraint fk_tbljobdetail_tblvehicle foreign key (vehicleID)
    references tblvehicle (vehicleID);
    
-- tbljobdetail/tbldriver    
alter table tbljobdetail  
    add constraint fk_tbljobtetail_tbldriver foreign key (driverID)
    references tbldriver (driverID); 


    




    