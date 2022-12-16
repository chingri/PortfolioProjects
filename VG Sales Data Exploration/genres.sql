--Genre Based Analysis 

--Most Popular Genre 

SELECT
  genre AS Genre,
  COUNT(*) AS 'Games Created',
  SUM(CONVERT(decimal(16, 2), vgsales.global_sales)) AS Sales
FROM PortfolioProject..genres
JOIN PortfolioProject..vgsales
  ON genres.rank = vgsales.rank
GROUP BY genre
ORDER BY 3 DESC


--Avg Sales Per Genre

SELECT
  genre AS Genre,
  COUNT(genre) AS 'Games Created',
  CAST(SUM(vgsales.global_sales) / COUNT(genre) AS decimal(16, 2)) AS AvgSales
FROM PortfolioProject..genres
JOIN PortfolioProject..vgsales
  ON genres.rank = vgsales.rank
GROUP BY genre
ORDER BY 3 DESC


