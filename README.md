# OLA_Data_Analyst_Project

## 📌 Project Overview  
This project performs an end-to-end data analysis of **Ola ride bookings**, uncovering actionable business insights. It involves **data cleaning**, **SQL querying**, and **interactive visualizations** using **Power BI**, showcasing customer behavior, revenue trends, and operational inefficiencies.  

## 👨‍💻 About the Developer  
**Omkar Gaurav**  
🎓 Aspiring Data Analyst | Skilled in SQL, Power BI, Excel  
📫 [LinkedIn](https://linkedin.com/in/your-profile) • [GitHub](https://github.com/yourusername) • 📧 your.email@example.com

---

## 🚀 Tools & Technologies  
- **SQL (MySQL Workbench)** – Schema design, data cleaning, analysis queries  
- **Excel** – Data structuring and quality checks  
- **Power BI** – Visualization of ride trends and metrics  

---

## 🎯 Objectives  
- Understand booking patterns and ride outcomes  
- Identify top customers and ride distances by vehicle type  
- Analyze cancellation reasons and payment trends  
- Deliver insights through interactive dashboards  

---

## 🧠 What I Did  
✔ Designed a realistic Ola ride booking dataset with 1L rows for Bengaluru  
✔ Cleaned and transformed data using SQL views  
✔ Built Power BI dashboards with insights on booking trends, revenue, and ratings  
✔ Answered 10+ business case questions using SQL and Power BI  

---

## 📂 Project Structure  

```
Ola-Ride-Data-Analysis/
├── SQL/
│   ├── ola_schema.sql                # SQL to create database and table structure
│   ├── data_cleaning.sql            # Queries for cleaning and transforming data
│   ├── views_and_analysis.sql       # SQL views & business insights queries
│   ├── powerbi_questions_answers.sql# SQL answers mapped to Power BI visuals
│
├── Excel/
│   └── cleaned_data.xlsx            # Pre-processed data used in Power BI
│
├── PowerBI_Dashboard/
│   ├── ola_dashboard.pbix           # Final Power BI interactive dashboard file
│   ├── Overall.png                  # Screenshot of 'Overall' page
│   ├── Vehicle_Type.png             # Screenshot of vehicle-wise analysis
│   ├── Revenue.png                  # Revenue by payment method & customers
│   ├── Cancellation.png             # Ride cancellations (driver/customer)
│   ├── Ratings.png                  # Driver & customer ratings by vehicle
│
├── README.md                        # Project documentation

```

---

## 🔍 SQL Queries Breakdown  
### **1️⃣ Successful Bookings**  
```sql
CREATE VIEW Successful_Bookings AS 
SELECT * FROM bookings WHERE Booking_Status = 'Success';
```

### **2️⃣ Average Ride Distance Per Vehicle Type**  
```sql
CREATE VIEW Avg_Ride_Distance AS 
SELECT Vehicle_Type, AVG(Ride_Distance) AS avg_distance 
FROM bookings GROUP BY Vehicle_Type;
```

### **3️⃣ Top 5 Customers with Most Bookings**  
```sql
CREATE VIEW Top_5_Customers AS 
SELECT Customer_ID, COUNT(Booking_ID) AS total_rides 
FROM bookings 
GROUP BY Customer_ID 
ORDER BY total_rides DESC LIMIT 5;
```

### **4️⃣ Total Booking Value of Successful Rides**  
```sql
CREATE VIEW Total_Successful_Ride_Value AS 
SELECT SUM(Booking_Value) AS total_revenue 
FROM bookings WHERE Booking_Status = 'Success';
```

*(More SQL queries can be found in the `/SQL` folder.)*  

---
