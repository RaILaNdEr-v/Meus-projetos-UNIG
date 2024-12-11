#2621 - Quantidades Entre 10 e 20

SELECT products.name AS product_name
FROM products
JOIN providers
ON products.id_providers = providers.id
WHERE products.amount BETWEEN 10 AND 20
  AND providers.name LIKE 'P%';
