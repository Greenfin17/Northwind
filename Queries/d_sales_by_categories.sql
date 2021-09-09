select CA.CategoryName, sum(OD.Quantity * OD.UnitPrice) as [Category Sales],
	sum(OD.Quantity) as [Total Items]
from categories CA
join Products PR
	on PR.CategoryID = CA.CategoryID
join [Order Details] OD
	on OD.ProductID = PR.ProductID
group by CA.CategoryName
order by CA.CategoryName




