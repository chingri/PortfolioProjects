--Region Based Analysis

-- Most Popular Games in each region 

	--NA
SELECT
  name,
  publisher,
  na_sales
FROM PortfolioProject..vgsales
ORDER BY 3 DESC
	--EU
SELECT
  name,
  publisher,
  eu_sales
FROM PortfolioProject..vgsales
ORDER BY 3 DESC
	--JP
SELECT
  name,
  publisher,
  jp_sales
FROM PortfolioProject..vgsales
ORDER BY 3 DESC
	--Other
SELECT
  name,
  publisher,
  other_sales
FROM PortfolioProject..vgsales
ORDER BY 3 DESC  


--Most popular genre in each region 

	--NA
SELECT
  genre AS Genre,
  SUM(CAST(na_sales AS decimal(16, 2))) AS 'NA Region Sales'
FROM PortfolioProject..vgsales
JOIN PortfolioProject..genres
  ON vgsales.rank = genres.rank
GROUP BY genre
ORDER BY 2 DESC

	--EU 
SELECT
  genre AS Genre,
  SUM(CAST(eu_sales AS decimal(16, 2))) AS 'EU Region Sales'
FROM PortfolioProject..vgsales
JOIN PortfolioProject..genres
  ON vgsales.rank = genres.rank
GROUP BY genre
ORDER BY 2 DESC
	--JP 
SELECT
  genre AS Genre,
  SUM(CAST(jp_sales AS decimal(16, 2))) AS 'JP Region Sales'
FROM PortfolioProject..vgsales
JOIN PortfolioProject..genres
  ON vgsales.rank = genres.rank
GROUP BY genre
ORDER BY 2 DESC
	--Other 
SELECT
  genre AS Genre,
  SUM(CAST(other_sales AS decimal(16, 2))) AS 'Other Region Sales'
FROM PortfolioProject..vgsales
JOIN PortfolioProject..genres
  ON vgsales.rank = genres.rank
GROUP BY genre
ORDER BY 2 DESC


--Most Popular Console in Each Region 

	--NA
SELECT
  platform.platform AS Console,
  SUM(CAST(NA_sales AS decimal(16, 2))) AS 'NA Region Sales'
FROM PortfolioProject..platform
JOIN PortfolioProject..vgsales
  ON platform.rank = vgsales.rank
GROUP BY platform.platform
ORDER BY 2 DESC

	--EU
SELECT
  platform.platform AS Console,
  SUM(CAST(EU_sales AS decimal(16, 2))) AS 'EU Region Sales'
FROM PortfolioProject..platform
JOIN PortfolioProject..vgsales
  ON platform.rank = vgsales.rank
GROUP BY platform.platform
ORDER BY 2 DESC

	--JP
SELECT
  platform.platform AS Console,
  SUM(CAST(JP_sales AS decimal(16, 2))) AS 'JP Region Sales'
FROM PortfolioProject..platform
JOIN PortfolioProject..vgsales
  ON platform.rank = vgsales.rank
GROUP BY platform.platform
ORDER BY 2 DESC

	--Other
SELECT
  platform.platform AS Console,
  SUM(CAST(other_sales AS decimal(16, 2))) AS 'Other Region Sales'
FROM PortfolioProject..platform
JOIN PortfolioProject..vgsales
  ON platform.rank = vgsales.rank
GROUP BY platform.platform
ORDER BY 2 DESC
