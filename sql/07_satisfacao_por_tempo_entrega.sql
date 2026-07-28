-- Relação entre Dias para entrega e Nota de Satisfação

SELECT  delivery_days,
        COUNT(order_id) AS total_pedido,
        ROUND(AVG(customer_rating), 2) AS media_avaliacao
FROM ecommerce_sales
GROUP BY delivery_days
ORDER BY delivery_days ASC