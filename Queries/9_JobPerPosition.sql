use movinon;
select count(*) as 'Number of employees', P.Title
from tblemployee as E
	inner join tblposition as P
	on P.PositionID = E.PositionID
group by E.positionID
;
