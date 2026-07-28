--- Média de entregas por Categorias de Produtos e Região

SELECT  product_category,
        region,
        ROUND(AVG(delivery_days) ,2) AS avg_delivery
FROM ecommerce_sales
GROUP BY product_category, region
ORDER BY avg_delivery DESC;


