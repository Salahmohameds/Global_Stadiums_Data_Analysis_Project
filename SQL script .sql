--top 5 stadium 
SELECT top 5 rank,stadium,capacity from stadiums ORDER by capacity DESC
--avg stadium by region
SELECT region , AVG(capacity) as avg_capacity from stadiums GROUP by region ORDER BY avg_capacity DESC
--stadium count in each country
SELECT country , COUNT(country) as country_count from stadiums GROUP by country ORDER by country_count DESC
--stadium ranking with each region
SELECT rank,region,stadium,capacity,
RANK()OVER(PARTITION by region ORDER by capacity desc) as region_rank
from stadiums
--top 3 stadium ranking with each region
SELECT rank, region, stadium, capacity, region_rank
FROM (
    SELECT rank, region, stadium, capacity,
           RANK() OVER (PARTITION BY region ORDER BY capacity DESC) as region_rank
    FROM stadiums
) as ranked_stadium
WHERE region_rank <= 3;
--get stadium that above avg from each region 
select stadium,t2.region,capacity,avg_capacity 
from stadiums  , (SELECT region ,  AVG(capacity) as avg_capacity from stadiums GROUP by region) as t2
WHERE t2.region = stadiums.region AND capacity > avg_capacity

--stadiums with the closest capacity to regional median--
WITH MedianCTE AS (
    SELECT
        region, PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY capacity) OVER (PARTITION BY region) AS median_capacity
    FROM stadiums
)
SELECT rank, stadium, region, capacity, ranked_stadiums.median_rank
FROM (
    SELECT
        s.rank, s.stadium, s.region, s.capacity,
        ROW_NUMBER() OVER (PARTITION BY s.region ORDER BY ABS(s.capacity - m.median_capacity)) AS median_rank
    FROM stadiums s JOIN MedianCTE m ON s.region = m.region
) ranked_stadiums
WHERE median_rank = 1;
