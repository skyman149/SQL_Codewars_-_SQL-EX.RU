-- 1. List all product names with their brand name in 'Electric Bikes' and 'Mountain Bikes' categories.

SELECT p.product_name, b.brand_name, c.category_name
FROM production.products p
LEFT JOIN production_brands b ON p.brand_id = b.brand_id
JOIN product.category c ON c.category_id = p.category_id
WHERE category_name IN ('Electric Bikes', 'Mountain Bikes');

-- 2. Display all products in stock in 'Santa Cruz Bikes'. Display store name, product name, price and quantity.

SELECT st.store_name, p.product_name, p.list_proce, s.quantity
FROM production.products p
LEFT JOIN production.stocks s ON p.product_id = s.product_id
LEFT JOIN sales.stores st ON s.store_id = st.store_id
WHERE s.quantity > 0 AND store_name = 'Santa Cruz Bikes';

-- 3. List customers with their total number of orders from largest to smallest, display customer first name, last name and total.

SELECT c.first_name, c.last_name, 
       COUNT(o.order_id) AS Total_orders
FROM sales.customer c 
LEFT JOIN sales.orders o ON c.customer_id = o.customer_id
GROUP BY c.first_name, c.last_name
ORDER BY Total_orders DESC;

-- 4. List all customers that have only 1 order.

-- SELECT c.*
-- FROM sales.customers c
-- WHERE c.customer_id IN (
--     SELECT c.customers c
--     LEFT JOIN sales.orders o ON c.customer_id = o.customer_id
--     GROUP BY c.first_name, c.last_name
--     HAVING COUNT(o.order_id) = 1
-- );



