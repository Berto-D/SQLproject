SELECT *
FROM nomnom;

SELECT DISTINCT neighborhood
FROM nomnom;

SELECT cuisine
FROM nomnom
where cuisine = 'Chinese';

SELECT name, review
FROM nomnom
where review >= 4;

SELECT cuisine, price
FROM nomnom
where cuisine = 'Italian' AND price = '$$$';

SELECT name
FROM nomnom
where name LIKE '%meatball%';

SELECT *
FROM nomnom
WHERE neighborhood = 'Midtown'
       OR  neighborhood = 'Downtown' 
       OR  neighborhood = 'Chinatown';

       SELECT *
FROM nomnom
WHERE health IS NULL;

SELECT name, review
FROM nomnom
ORDER BY review DESC
LIMIT 10;

SELECT name,
  CASE
    WHEN review > 4.5 THEN 'Extraordinary'
    WHEN review > 4 THEN 'Excellent'
    WHEN review > 3 THEN 'Good'
    WHEN review > 2 THEN 'Fair'
    ELSE 'Poor'
    END AS 'Review'
FROM nomnom;
