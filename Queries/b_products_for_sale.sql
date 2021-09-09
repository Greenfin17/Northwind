select PR.ProductName, PR.UnitPrice
from Products AS PR
where PR.Discontinued = 0
group by PR.ProductName, PR.UnitPrice
order by PR.ProductName