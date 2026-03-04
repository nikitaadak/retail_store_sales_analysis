

select *from retail_data;

# count of table
select count(*) from retail_data;

# total sales
SELECT SUM(ProductPrice) AS Total_Sales
FROM retail_data;

# top spending by gender
SELECT Gender, SUM(Productprice) AS Total_Spending
FROM retail_data
GROUP BY Gender;

# category wise sales distribution
SELECT Productcategory, SUM(Productprice) AS Category_Sales
FROM retail_data
GROUP BY Productcategory;

# revenue by store location
SELECT Storelocation, SUM(Productprice) AS Location_Sales
FROM retail_data
GROUP BY Storelocation;

# transaction count by payment method
SELECT Paymentmethod, COUNT(*) AS Transactions
FROM retail_data
GROUP BY Paymentmethod;	

# average profit by discount percent
SELECT DiscountPercent, AVG(Profit) AS Avg_Profit
FROM retail_data
GROUP BY DiscountPercent;

# total sales by age group
SELECT Age, SUM(Productprice)
FROM retail_data
GROUP BY Age
ORDER BY Age;

# orders by store id
SELECT Storeid, COUNT(*) AS TotalOrders
FROM retail_data
GROUP BY Storeid;

# check for null values
select *from retail_data 
where productprice is null;

# top 5 customers
SELECT CustomerID, SUM(ProductPrice) AS Total_Spending
FROM retail_data
GROUP BY CustomerID
ORDER BY Total_Spending DESC
LIMIT 5;

# Month wise monthly sales
SELECT MONTH(PurchaseDate) AS Month,
       SUM(ProductPrice) AS Monthly_Sales
FROM retail_data
GROUP BY Month
ORDER BY Month;


# total profit by product category
SELECT ProductCategory, SUM(Profit) AS Total_Profit
FROM retail_data
GROUP BY ProductCategory
ORDER BY Total_Profit DESC;


# check for duplicate records
select customerid,age,gender,ProductCategory,ProductPrice, count(*)
from retail_data
group by customerid, age, gender, ProductCategory, ProductPrice
having count(*) > 1;



commit;















