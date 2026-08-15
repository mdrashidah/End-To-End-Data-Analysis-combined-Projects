## 🛒 Walmart Sales End-to-End Data Analysis Project
<img width="1024" height="506" alt="image_b7b5077b-7ef6-4097-a950-6108a608107c" src="https://github.com/user-attachments/assets/3a105913-cb05-4bd6-a115-f51b65ceaa4f" />

---

## 📌 Executive Summary & Business Problem

• Retail analytics plays a crucial role in managing inventory, optimizing pricing, and forecasting store performance. This end-to-end project conducts an in-depth exploratory and diagnostic analysis of multi-branch transactional sales data from Walmart.

• The primary objective is to evaluate branch performance, identify high-margin product lines, analyze customer purchasing behavior across payment channels, and deliver actionable insights for store operations and revenue optimization.

---

## 🎯 Key Business Objectives
* **Sales & Revenue Tracking:** Determine total sales, cost of goods sold (COGS), gross profit margins, and revenue contributions by branch and product line.
* **Customer Behavior & Segmentation:** Analyze customer demographics (member types, gender) alongside average transaction values and purchasing frequency.
* **Operational Performance:** Identify peak shopping hours, highest-demand days of the week, and top-rated product lines to optimize staff allocation and inventory.
* **Payment Preference Analysis:** Examine payment method distribution across regions to streamline checkout workflows.

---

## 🛠️ Tech Stack & Analytical Tools
* **Language:** Python (Pandas, NumPy)
* **Data Visualization:** Matplotlib, Seaborn
* **Database & Querying:** SQL (MySQL / PostgreSQL)
* **Environment:** Jupyter Notebook / VS Code
* **Reporting & Documentation:** Markdown, MS Excel, Formal Word Report

---

## 📂 Repository Contents & Structure
* Walmart_Sales_Raw_Dataset.csv: Raw, uncleaned transactional sales dataset.
* Walmart_Sales_Cleaned_Dataset.csv: Cleaned and standardized dataset ready for downstream analysis.
* Walmart_Sales_Analysis.ipynb: End-to-end Jupyter Notebook containing data wrangling, feature engineering, and exploratory data analysis.
* Walmart_Sales_SQL_Queries.sql: Comprehensive SQL scripts answering key business intelligence questions and computing sales KPIs.
* Formal_Project_Report_Walmart_Sales.docx: In-depth analytical report outlining methodology, business findings, and strategic recommendations.
`dashboard_preview.png: Visual overview and high-resolution snapshot of the key analytics dashboard/charts.`

---

## 📊 Dashboard & Visualization Preview
The analytical visual summary provides insights into store performance, category distributions, and branch metrics.
   -    " currently working on this part "
---

## ⚙️ Methodology & Technical Workflow

### 1. Data Cleaning & Feature Engineering
* Handled null values, inconsistencies, and formatting across transactional records.
* Extracted time-based dimensions: time_of_day (Morning, Afternoon, Evening), day_name, and month_name.

### 2. Exploratory Data Analysis (EDA)
* Uncovered distribution patterns across sales volume, customer ratings, and product categories.
* Assessed branch-level sales variance across different cities and store locations.
* Evaluated customer ratings across product lines to identify satisfaction drivers.

### 3. Business Insights via SQL
* Formulated targeted SQL queries to answer critical business questions:
  - Calculated the total quantity of items sold per payment method
  - Determined the minimum, maximum, and average product category rating for each city
  - Calculated the total profit and total revenue for each product category
  - Find the most common payment method used by customers at each branch
  - Categorize sales into morning, afternoon & evening to find the busiest shift based on no. of invoices in every shift

---

## 🔑 Key Metrics & Actionable Insights
* **Top Revenue Drivers:** The *Food & Beverages* and *Electronic Accessories* product lines accounted for the largest share of total sales volume.
* **Peak Shopping Windows:** Peak transaction volumes occurred during late afternoon and early evening hours (between 3:00 PM and 7:00 PM), particularly on weekends.
* **Branch Variance:** Branch A consistently generated higher gross profit margins, driven by higher sales density in premium product tiers.

---

## 🚀 Instructions for Review & Replication

1. **Clone the Repository:**
   git clone [https://github.com/mdrashidah/End-To-End-Data-Analysis-combined-Projects.git](https://github.com/mdrashidah/End-To-End-Data-Analysis-combined-Projects.git)
   cd End-To-End-Data-Analysis-combined-Projects/Walmart-sales-Analytics-Project
2. **Review the Code & EDA** : Open and run Walmart_Sales_Analysis.ipynb in Jupyter Notebook or VS Code to inspect the end-to-end Python pipeline.
3. **Execute SQL Queries** : Import Walmart_Sales_SQL_Queries.sql into MySQL Workbench, pgAdmin, or your preferred SQL editor.
4. **Read the Full Report** : Open Formal_Project_Report_Walmart_Sales.docx for complete statistical breakdowns and business recommendations.   
