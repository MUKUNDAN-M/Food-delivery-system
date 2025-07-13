🍔 Food Delivery System – SQL Database Project

This project is a **SQL-based Food Delivery System** that simulates a real-world food ordering and delivery platform. It includes a relational database design, data insertion scripts, and advanced queries to extract business insights.

## 📌 Overview

This project is ideal for:
- Practicing database design and normalization
- Writing complex SQL queries
- Understanding real-world use cases in food delivery applications

---

## 🗃️ Database Structure

The system is composed of the following tables:

- `Customers`
- `Restaurants`
- `Food_Items`
- `Orders`
- `Order_Items` *(junction table for many-to-many relationship)*
- `Payment`
- `Delivery`
- `Ratings_Reviews`

---

## 🔍 SQL Queries Included

| #  | Query Description |
|----|-------------------|
| 1  | List all restaurants and their locations |
| 2  | Show all food items with prices and restaurant names |
| 3  | Get all orders with customer and restaurant details |
| 4  | Find top 5 most ordered food items |
| 5  | Count total number of orders for each restaurant |
| 6  | Show average rating for each restaurant |
| 7  | List customers who have never placed an order |
| 8  | Find orders that are still pending delivery |
| 9  | Display all payments with customer and order details |
| 10 | Show most active customers based on number of orders |
| 11 | Find the most popular delivery person |
| 12 | Calculate total revenue from completed payments |
| 13 | List delivery persons and the number of deliveries they've made |
| 14 | Find the restaurant with the highest average rating |
| 15 | Show orders with payment and delivery status |
| 16 | List food items by descending price |
| 17 | Find customers who gave a 5-star review |
| 18 | Get number of orders by delivery status |
| 19 | List restaurants with both 5-star and low reviews |
| 20 | Find the top 3 most reviewed restaurants |



[Customers] ───< [Orders] >─── [Restaurants]  
     │                    │  
     └──< [Ratings_Reviews]   └──< [Order_Items] >─── [Food_Items]  
                                        │  
                                 [Payment]  
                                        │  
                                   [Delivery]

