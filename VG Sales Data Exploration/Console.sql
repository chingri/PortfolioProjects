--Platform Based 

--Platform with most Games Sold 

SELECT
  platform.platform AS Console,
  SUM(CAST(vgsales.global_sales AS decimal(16, 2))) AS 'TotalGamesSold(Per Million)'
FROM PortfolioProject..platform
JOIN PortfolioProject..vgsales
  ON platform.rank = vgsales.rank
GROUP BY platform.platform
ORDER BY 2 DESC

--Most Games made for a platform 

SELECT
  platform.platform AS Console,
  COUNT(vgsales.name) AS 'No.OfGames'
FROM PortfolioProject..platform
JOIN PortfolioProject..vgsales
  ON platform.rank = vgsales.rank
GROUP BY platform.platform
ORDER BY 2 DESC


