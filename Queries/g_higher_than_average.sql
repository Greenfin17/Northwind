select PR.ProductName, PR.UnitPrice from
Products as PR
group by PR.ProductName, PR.UnitPrice
having  PR.UnitPrice > (
	select sum(PR.UnitPrice) / count(*)
	   from Products PR)
order by PR.UnitPrice desc;



