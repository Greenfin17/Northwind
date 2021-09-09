select OD.OrderID, (OD.UnitPrice * OD.Quantity)  as [Order Total]
from [Order Details] as OD
group by OD.OrderID, OD.UnitPrice, OD.Quantity
order by [Order Total] desc;