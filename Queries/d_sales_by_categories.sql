select CA.CategoryName, cast(sum(OD.Quantity * (OD.UnitPrice - OD.Discount)) as decimal(18,2)) as [Category Sales],
	sum(OD.Quantity) as [Total Items]
from categories CA
join Products PR
	on PR.CategoryID = CA.CategoryID
join [Order Details] OD
	on OD.ProductID = PR.ProductID
group by CA.CategoryName
order by CA.CategoryName




