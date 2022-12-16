--Platform Based 

--Platform with most Games Sold 

select platform.platform as Console, sum(cast(vgsales.global_sales as decimal (16,2))) as 'TotalGamesSold(Per Million)' from PortfolioProject..platform
join PortfolioProject..vgsales
on platform.rank = vgsales.rank 
group by platform.platform 
order by 2 desc

--Most Games made for a platform 

select platform.platform as Console, count(vgsales.name) as 'No.OfGames' from PortfolioProject..platform
join PortfolioProject..vgsales
on platform.rank = vgsales.rank 
group by platform.platform 
order by 2 desc 



