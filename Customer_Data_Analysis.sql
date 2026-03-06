-- 1. Shopping distribution according to gender
SELECT 
    gender, COUNT(*) AS total_orders
FROM
    customer
GROUP BY gender;

-- 2. Which gender did we sell more products to?
SELECT 
    gender, SUM(quantity) AS total_products_sold
FROM
    customer
GROUP BY gender;

-- 3. Which gender generated more revenue?
SELECT 
    gender, SUM(quantity * price) AS total_revenue
FROM
    customer
GROUP BY gender;

-- 4. Distribution of purchase categories
SELECT 
    category, COUNT(*) AS total_orders
FROM
    customer
GROUP BY category
ORDER BY total_orders DESC;

-- 5. Shopping distribution according to age
SELECT 
    age, COUNT(*) AS total_orders
FROM
    customer
GROUP BY age
ORDER BY age;

-- 6. Age category with most products sold
SELECT 
    CASE
        WHEN age BETWEEN 18 AND 25 THEN '18-25'
        WHEN age BETWEEN 26 AND 35 THEN '26-35'
        WHEN age BETWEEN 36 AND 50 THEN '36-50'
        ELSE '50+'
    END AS age_group,
    SUM(quantity) AS total_products
FROM
    customer
GROUP BY age_group;

-- 7. Age category generating more revenue
SELECT 
    CASE
        WHEN age BETWEEN 18 AND 25 THEN '18-25'
        WHEN age BETWEEN 26 AND 35 THEN '26-35'
        WHEN age BETWEEN 36 AND 50 THEN '36-50'
        ELSE '50+'
    END AS age_group,
    SUM(quantity * price) AS revenue
FROM
    customer
GROUP BY age_group;

-- 8. Category vs Gender
SELECT 
    category, gender, COUNT(*) AS total_orders
FROM
    customer
GROUP BY category , gender;

-- 9. Payment method relation with gender
SELECT 
    payment_method, gender, COUNT(*) AS total_orders
FROM
    customer
GROUP BY payment_method , gender;

-- 10. Payment method distribution
SELECT 
    payment_method, COUNT(*) AS total_transactions
FROM
    customer
GROUP BY payment_method;
