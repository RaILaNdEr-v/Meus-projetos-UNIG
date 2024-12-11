#3483 - Segundo Maior e Menor

SELECT city_name, population
FROM cities
WHERE population = (
    SELECT DISTINCT population
    FROM cities
    ORDER BY population DESC
    LIMIT 1 OFFSET 1
)
UNION ALL
SELECT city_name, population
FROM cities
WHERE population = (
    SELECT DISTINCT population
    FROM cities
    ORDER BY population ASC
    LIMIT 1 OFFSET 1
);