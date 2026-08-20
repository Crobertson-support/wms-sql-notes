-- Check inventory levels by location
SELECT location_id, product_sku, quantity_on_hand
FROM inventory
WHERE quantity_on_hand < 10
ORDER BY quantity_on_hand ASC;

-- Simple inventory summary
SELECT product_sku, SUM(quantity_on_hand) AS total_quantity
FROM inventory
GROUP BY product_sku
ORDER BY total_quantity DESC;
