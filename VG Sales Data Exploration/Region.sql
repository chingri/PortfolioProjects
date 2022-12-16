--Region Based Analysis

-- Most Popular Games in each region 

	--NA
select name,publisher,na_sales from PortfolioProject..vgsales 
order by 3 desc
	--EU
select name,publisher,eu_sales from PortfolioProject..vgsales 
order by 3 desc 
	--JP
select name,publisher,jp_sales from PortfolioProject..vgsales 
order by 3 desc  
	--Other
select name,publisher,other_sales from PortfolioProject..vgsales 
order by 3 desc   


--Most popular genre in each region 

	--NA
select genre as Genre, sum(cast(na_sales as decimal(16,2))) as 'NA Region Sales' from PortfolioProject..vgsales 
join PortfolioProject..genres 
on vgsales.rank=genres.rank 
group by genre
order by 2 desc

	--EU 
select genre as Genre, sum(cast(eu_sales as decimal(16,2))) as 'EU Region Sales' from PortfolioProject..vgsales 
join PortfolioProject..genres 
on vgsales.rank=genres.rank 
group by genre
order by 2 desc 

	--JP 
select genre as Genre, sum(cast(jp_sales as decimal(16,2))) as 'JP Region Sales' from PortfolioProject..vgsales 
join PortfolioProject..genres 
on vgsales.rank=genres.rank 
group by genre
order by 2 desc 

	--Other 
select genre as Genre, sum(cast(other_sales as decimal(16,2))) as 'Other Region Sales' from PortfolioProject..vgsales 
join PortfolioProject..genres 
on vgsales.rank=genres.rank 
group by genre
order by 2 desc


--Most Popular Console in Each Region 

	--NA
select platform.platform as Console , sum(cast(NA_sales as decimal(16,2))) as 'NA Region Sales' from PortfolioProject..platform
join PortfolioProject..vgsales
on platform.rank=vgsales.rank 
group by platform.platform
order by 2 desc 

	--EU
select platform.platform as Console , sum(cast(EU_sales as decimal(16,2))) as 'EU Region Sales' from PortfolioProject..platform
join PortfolioProject..vgsales
on platform.rank=vgsales.rank 
group by platform.platform
order by 2 desc 

	--JP
select platform.platform as Console , sum(cast(JP_sales as decimal(16,2))) as 'JP Region Sales' from PortfolioProject..platform
join PortfolioProject..vgsales
on platform.rank=vgsales.rank 
group by platform.platform
order by 2 desc

	--Other
select platform.platform as Console , sum(cast(other_sales as decimal(16,2))) as 'Other Region Sales' from PortfolioProject..platform
join PortfolioProject..vgsales
on platform.rank=vgsales.rank 
group by platform.platform
order by 2 desc