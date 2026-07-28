-- Média de Dias de entregas por Região

SELECT region,
       ROUND(AVG(delivery_days),2) avg_delivery
FROM ecommerce_sales
GROUP BY region
ORDER BY avg_delivery DESC;