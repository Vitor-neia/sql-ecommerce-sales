--Metodos de pagamento mais utilizados nas Regiões e a maior receita

SELECT region,
       payment_method,
       COUNT(payment_method) AS count_payment,
       ROUND(SUM(revenue), 2) AS receita_total
FROM ecommerce_sales
GROUP BY region, payment_method
ORDER BY count_payment DESC