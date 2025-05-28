create database trend;
use trend;
# Monthly Sales Trend
SELECT YEAR_ID, MONTH_ID, SUM(SALES) AS total_sales FROM sales GROUP BY YEAR_ID, MONTH_ID ORDER BY YEAR_ID, MONTH_ID;
# Quarterly Sales Trend
SELECT YEAR_ID, QTR_ID, SUM(SALES) AS total_sales FROM sales GROUP BY YEAR_ID, QTR_ID ORDER BY YEAR_ID, QTR_ID;
# Annual sales trend
SELECT YEAR_ID, SUM(SALES) AS total_sales FROM sales GROUP BY YEAR_ID ORDER BY YEAR_ID;
#Sales by Product Line
SELECT PRODUCTLINE, SUM(SALES) AS total_sales FROM sales GROUP BY PRODUCTLINE ORDER BY total_sales DESC;
#Sales by country
SELECT COUNTRY, SUM(SALES) AS total_sales FROM sales GROUP BY COUNTRY ORDER BY total_sales DESC;
#city wise sales 
SELECT CITY, SUM(SALES) AS total_sales FROM sales GROUP BY CITY ORDER BY total_sales DESC;
#total qty ordered by country
SELECT COUNTRY, SUM(QUANTITYORDERED) AS total_quantity_ordered FROM sales GROUP BY COUNTRY ORDER BY total_quantity_ordered DESC;
#Total qty city wise
SELECT CITY, SUM(QUANTITYORDERED) AS total_quantity_ordered FROM sales GROUP BY CITY ORDER BY total_quantity_ordered DESC;

SELECT COUNTRY,DEALSIZE,COUNT(DEALSIZE) AS NUM_OF_DEAL FROM sales GROUP BY COUNTRY,DEALSIZE ORDER BY NUM_OF_DEAL DESC;