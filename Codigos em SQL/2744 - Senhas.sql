#2744 - Senhas

SELECT
    id, password, MD5 (password) AS MD5
FROM 
    account