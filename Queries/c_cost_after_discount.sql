select OD.OrderID,
	cast(sum(( OD.UnitPrice - OD.Discount) * OD.Quantity) as decimal(18,2)) as [Total for Order],
	sum( OD.UnitPrice * OD.Quantity ) as [Total before Discount],
	cast(sum(OD.Discount * OD.Quantity)  / sum(OD.UnitPrice * OD.Quantity) * 100 as decimal(18,2)) as [Percent Savings]
from 
[Order Details] OD
group by OD.OrderID
order by OD.OrderID;
	
	
