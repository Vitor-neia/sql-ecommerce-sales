--Média de receita por Categoria de Produto e Região

SELECT product_category,
       region,
       ROUND(AVG(quantity),2) AS avg_qtd,
       ROUND(AVG(revenue),2) AS avg_revenue
FROM ecommerce_sales
GROUP BY product_category, region
ORDER BY avg_revenue DESC, avg_qtd DESC