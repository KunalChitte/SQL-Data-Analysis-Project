-- Total Revenue by Month

SELECT
    FORMAT(o.order_date,'yyyy-MM') AS month,
    SUM(oi.quantity * p.price) AS revenue
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id
GROUP BY FORMAT(o.order_date,'yyyy-MM')
ORDER BY month;
