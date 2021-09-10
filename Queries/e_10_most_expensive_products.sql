select top(10) * from Products
where discontinued = 0
order by UnitPrice desc;