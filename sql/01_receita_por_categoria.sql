-- Receita total por Categoria de produto e Vendas totais
SELECT product_category,
       COUNT(order_id) AS total_pedidos,
       SUM(quantity) AS qtd_itens_vendidos,
       ROUND(AVG(unit_price), 2) AS preco_medio_unit,
       ROUND(SUM(revenue), 2) AS revenue_total
FROM ecommerce_sales
GROUP BY product_category
ORDER BY  revenue_total DESC