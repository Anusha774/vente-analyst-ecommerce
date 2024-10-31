-- Création de la table --

CREATE TABLE sales_ecommerce (
  product_id INT PRIMARY KEY,
  product_name VARCHAR(255),
  category VARCHAR(255),
  price DECIMAL(10,2),
  review_score DECIMAL(2,1),
  review_count INT,
  sales_month_1 INT,  
  sales_month_2 INT,  
  sales_month_3 INT,  
  sales_month_4 INT,  
  sales_month_5 INT,  
  sales_month_6 INT,  
  sales_month_7 INT,  
  sales_month_8 INT,  
  sales_month_9 INT,  
  sales_month_10 INT,  
  sales_month_11 INT,  
  sales_month_12 INT,
  total_sales INT
);

-- Total des ventes, la Moyenne des notes des avis clients et Total d'avis par catégorie --
SELECT
    category,
    SUM(sales_month_1 + sales_month_2 + sales_month_3 + sales_month_4 + 
        sales_month_5 + sales_month_6 + sales_month_7 + sales_month_8 + 
        sales_month_9 + sales_month_10 + sales_month_11 + sales_month_12) AS total_sales,
	AVG(review_score) AS average_review_score,
    SUM(review_count) AS total_review_count
FROM sales_ecommerce
GROUP BY category
ORDER BY total_sales DESC;
