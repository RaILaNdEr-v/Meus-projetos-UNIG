#2743 - Quantidade de Caracteres

SELECT 
    name,
    LENGTH(name) AS length
FROM 
    people
ORDER BY 
    length DESC;