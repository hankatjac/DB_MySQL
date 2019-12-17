select E.EmpID, concat(E.EmpFirst, ' ', E.EmpLast) as `Full Name`, 
E.Phone, E.Cell, W.WarehouseID, W.Phone as `Warehouse's phone number`
from tblemployee as E
	inner join tblWarehouse W
	on E.WareHouseID = W.WarehouseID
order by E.EmpLast, E.EmpFirst
;
