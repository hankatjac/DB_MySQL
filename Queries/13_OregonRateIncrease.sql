select E.EmpID, concat(E.EmpLast, ' ', E.EmpFirstt) as `Full Name`, W.WarehouseID
concat('$', E.HourlyRate) as HourlyRate, concat('$',format(E.HourlyRate*1.1,2)) as 'New Rate', 
from tblEmpoyee as E
inner join tblWarehouse as W
	on E.WareHouseID = W.WarehouseID 
where E.HourlyRate is not null and W.warehouseID='OR-1'
order by E.EmpLast, E.EmpFirst
;
