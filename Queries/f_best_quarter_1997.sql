
select top(1) month(ORD.OrderDate) as [Month], cast(sum(( OD.UnitPrice - OD.Discount) * OD.Quantity) as decimal(18,2)) as [Total Sales] from [Order Details] OD
	join Orders ORD
		on ORD.OrderID = OD.OrderID
where year(ORD.OrderDate) = '1997'
group by month(ORD.OrderDate)
order by [Total Sales] desc;