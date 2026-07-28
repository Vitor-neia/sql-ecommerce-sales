-- Clientes com mais pedidos e total gasto 

SELECT customer_id,
       COUNT(order_id) AS total_pedidos,
       SUM(quantity) AS total_compras,
       ROUND(SUM(revenue), 2) AS receita_total
           
FROM ecommerce_sales
GROUP BY customer_id
ORDER BY receita_total DESC;





