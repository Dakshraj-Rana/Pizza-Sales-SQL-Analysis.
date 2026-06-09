Markdown
# 🍕 Pizza Sales & Delivery Performance Analysis (SQL)

## 📌 Project Overview
The fast-paced food delivery industry relies heavily on efficiency and customer satisfaction. This SQL-based project analyzes pizza sales data from multiple restaurant locations to explore key delivery performance metrics, popular menu choices, and operational bottlenecks. 

With rising consumer expectations and traffic challenges, the goal of this project is to assess how external factors (traffic, time of day) and customer preferences (pizza type, size) influence delivery performance and business revenue.

## 🎯 Objectives
* **Identify Peak Sales Periods:** Discover when customers are ordering the most (months, days, hours).
* **Evaluate Delivery Performance:** Measure average delays and how traffic impacts delivery times.
* **Understand Customer Preferences:** Analyze the most popular pizza sizes, types, topping counts, and payment methods.
* **Optimize Operations:** Provide data-backed recommendations to improve delivery efficiency and customer satisfaction.

## 🛠️ Tools & Technologies Used
* **Database:** SQL (MySQL)
* **Techniques Used:** Data Aggregation (`COUNT`, `AVG`), Grouping (`GROUP BY`), Sorting (`ORDER BY`), Limiting (`LIMIT`), and Boolean filtering.
* **Data Source:** `pizza.csv` (contains simulated order details, delivery metrics, and traffic data).

## 📊 Key Insights Discovered
Through SQL querying, the following top 10 business insights were uncovered:

1. **Top Performing Month:** **August** has the highest number of orders overall.
2. **Menu Favorites:** **Non-veg pizzas** dominate the order volume, with the top 5 pizza types making up the majority of sales.
3. **Weekday vs. Weekend:** Surprisingly, **weekdays have nearly 3x more orders** than weekends.
4. **The Dinner Rush:** Order volumes experience a massive spike around **7:00 PM**.
5. **Systemic Delays:** All orders are marked delayed by an average of **21 minutes**, suggesting unrealistic estimated delivery times or severe system lag.
6. **Customization Trends:** Most customers prefer exactly **3 toppings** on their pizza.
7. **Best Delivery Zone:** **Atlanta** has the highest order volume while maintaining good delivery times, indicating highly efficient local service.
8. **Traffic Impact:** Unsurprisingly, areas with **High traffic** correlate directly with the highest average delivery delays.
9. **Payment Preferences:** **Card payments** are heavily preferred over cash or digital wallets.
10. **Standard Sizing:** **Medium pizzas** are the most frequently ordered size across all locations.

## 🚀 How to Run the Project
1. Clone this repository to your local machine.
2. Import the `pizza.csv` file into your preferred SQL Database Management System (e.g., MySQL Workbench, pgAdmin, SQL Server).
3. Use the provided table schema in `pizza_sales_queries.sql` to create the table structure.
4. Run the queries inside `pizza_sales_queries.sql` to explore the data and verify the insights.

## 💡 Business Recommendations
Based on the SQL analysis, the business should consider the following actions:
* **Adjust Delivery Estimates:** The algorithm calculating "Estimated Delivery Time" needs to be updated. A consistent 21-minute delay frustrates customers; setting realistic expectations will immediately improve customer satisfaction scores.
* **Staffing Shifts:** Increase driver shifts on weekdays and heavily schedule kitchen staff right before the 7 PM dinner rush.
* **Inventory Management:** Prioritize stock for Medium, Non-Veg pizzas and standard 3-topping combinations, particularly in August.
* **Replicate Atlanta's Success:** Investigate the operational processes in Atlanta and attempt to implement their delivery strategies in locations struggling with delays.

---
*Feel free to explore the SQL code in this repository! If you have any questions or feedback, let's connect.*
