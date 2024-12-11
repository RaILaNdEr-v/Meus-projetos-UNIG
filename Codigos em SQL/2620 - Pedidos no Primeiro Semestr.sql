#2620 - Pedidos no Primeiro Semestre

SELECT customers.name AS customer_name, 
       orders.id AS order_id
FROM customers
JOIN orders
ON customers.id = orders.id_customers
WHERE orders.orders_date BETWEEN '2016-01-01' AND '2016-06-30';
