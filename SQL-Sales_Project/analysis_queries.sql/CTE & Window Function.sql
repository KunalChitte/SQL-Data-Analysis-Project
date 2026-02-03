-- CTE + Window Function

WITH customer_revenue AS (
    SELECT
        c.customer_name,
        SUM(oi.quantity * p.price) AS revenue
    FROM customers c
    JOIN orders o ON c.customer_id = o.customer_id
    JOIN order_items oi ON o.order_id = oi.order_id
    JOIN products p ON oi.product_id = p.product_id
    GROUP BY c.customer_name
)
SELECT
    customer_name,
    revenue,
    RANK() OVER (ORDER BY revenue DESC) AS revenue_rank
FROM customer_revenue;
