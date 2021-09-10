
select top(1) datepart(quarter, ORD.OrderDate) as Quarter,
	   cast(sum((OD.UnitPrice - OD.Discount) * OD.Quantity) as decimal(18,2)) as [Sales]
from [Order Details] OD
	join Orders ORD
		on ORD.OrderID = OD.OrderID
where year(ORD.OrderDate) = '1997'
group by datepart(quarter, ORD.OrderDate)
order by [Sales] desc
