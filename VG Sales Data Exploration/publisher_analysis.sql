--Publisher Analysis


--Publisher Sales Number

SELECT
  Publisher,
  SUM(CAST(global_sales AS decimal(16, 2))) AS 'TotalSales(PerMillion)'
FROM PortfolioProject..vgsales
GROUP BY Publisher
ORDER BY 2 DESC
OFFSET 0 ROWS FETCH NEXT 10 ROWS ONLY

-- Number of Titles Released by each Publisher 

SELECT
  Publisher,
  COUNT(*) AS NumberOfGamesReleased
FROM PortfolioProject..vgsales
GROUP BY Publisher
ORDER BY 2 DESC
	
--Avg Sales Made by Each Game from the Publisher (Minimum 10 games)

SELECT
  vgsales.Publisher,
  COUNT(*) AS 'Games Published',
  SUM(CAST(global_sales AS decimal(16, 2))) / COUNT(*) AS AverageSales
FROM PortfolioProject..vgsales
GROUP BY Publisher
HAVING COUNT(*) > 10
ORDER BY 3 DESC

