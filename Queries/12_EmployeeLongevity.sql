select E.EmpID, concat(E.EmpFirst, ' ', E.EmpLast) as `Full Name`, E.StartDate,
year(Now())-year(E.StartDate) as EmployeeLongevity, W.WarehouseID, P.Title
from tblemployee as E 
	inner join tblWarehouse as W
	on E.WareHouseID = W.WarehouseID 
    inner join tblposition as P
    on E.PositionID = P.PositionID
where E.EndDate is null
order by E.EmpLast, E.EmpFirst
;

