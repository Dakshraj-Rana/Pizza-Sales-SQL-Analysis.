create database project;
use project;
select * from pizza;

--August has highest number of orders
SELECT Order_Month, 
COUNT(Order_ID) AS Total_Orders 
FROM pizza
GROUP BY Order_Month 
ORDER BY Total_Orders DESC;

--Non-veg pizzas dominate; the top 5 types are highly preferred.
SELECT Pizza_Type, 
COUNT(Order_ID) AS Total_Orders 
FROM pizza
GROUP BY Pizza_Type 
ORDER BY Total_Orders DESC 
LIMIT 5;

--Weekend vs. Weekday Performance
SELECT Is_Weekend, COUNT(Order_ID) AS Total_Orders 
FROM pizza
GROUP BY Is_Weekend;

--Orders spike around 7 PM, indicating a dinner rush.
SELECT Order_Hour, COUNT(Order_ID) AS Total_Orders 
FROM pizza 
GROUP BY Order_Hour 
ORDER BY Total_Orders DESC;

--All orders are marked delayed (avg 21 min), suggesting unrealistic expectations or system lag.
SELECT Is_Delayed, 
COUNT(Order_ID) AS Total_Orders,
AVG(Delay_min) AS Average_Delay_Minutes 
FROM pizza
GROUP BY Is_Delayed;

--Most customers prefer 3 toppings on their pizza.
SELECT Toppings_Count, 
COUNT(Order_ID) AS Total_Orders 
FROM pizza
GROUP BY Toppings_Count 
ORDER BY Total_Orders DESC;

--Atlanta has the highest orders and good delivery time, indicating efficient service.
SELECT Location, 
COUNT(Order_ID) AS Total_Orders, 
AVG(Delivery_Duration_min) AS Avg_Delivery_Time 
FROM pizza
GROUP BY Location 
ORDER BY Total_Orders DESC 
LIMIT 5;

--High traffic areas show the highest average delay.
SELECT Traffic_Level, 
AVG(Delay_min) AS Average_Delay 
FROM pizza
GROUP BY Traffic_Level 
ORDER BY Average_Delay DESC;

--Card payments are preferred over cash.
SELECT Payment_Method, 
COUNT(Order_ID) AS Total_Orders 
FROM pizza
GROUP BY Payment_Method 
ORDER BY Total_Orders DESC;

--Medium pizzas are the most frequently ordered.
SELECT Pizza_Size, 
COUNT(Order_ID) AS Total_Orders 
FROM pizza
GROUP BY Pizza_Size 
ORDER BY Total_Orders DESC;
