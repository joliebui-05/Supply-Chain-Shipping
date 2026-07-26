# Supply-Chain-Shipping-Dashboard
Analyzes the U.S. candy sales, profitability, shipping distance, and factory coverage to identify top performers and distribution opportunities.

![Sales and Distribution Overview](Images/Sales_and_Distribution_Overview.png)

#### 🚀 Live Dashboard

#### 👉 **[Click here to view the interactive Power BI Dashboard](https://app.powerbi.com/view?r=eyJrIjoiNzViMDA0YzgtY2JlZi00YTExLWFhM2ItM2U2YTRkOWU0YWM5IiwidCI6ImUzMThjNGEzLTQ4YzYtNGEyYS1iNjg1LTE4Yjc0MDFkYmU5MiJ9)**

## 📖 Project Overview

This project is an end-to-end Business Intelligence solution developed in **Power BI** using the **Supply Chain Shipping** dataset provided by **Maven Analytics**.

The report transforms raw shipping and sales data into interactive dashboards that enable stakeholders to monitor sales performance, shipping operations, and product insights. It combines data preparation, data modeling, DAX calculations, and interactive visualizations to support data-driven business decisions and improve operational efficiency.

## 🎯 Business Background

<details>
<summary><strong>1. Company Overview</strong></summary>

<br>

A national U.S. candy distributor manages product sales and shipments from multiple factories to customers across different geographic markets. The company tracks customer and factory locations, sales orders, product details, and divisional targets.

</details>

<br>

<details>
<summary><strong>2. Business Context</strong></summary>

<br>

This project analyzes both **commercial performance** and **distribution efficiency** using sales transactions combined with factory and customer geographic data. The analysis evaluates profitability, shipping routes, product performance, and factory allocation to provide insights that support operational and strategic decision-making.

Although the dataset includes a small number of **Canadian** orders, the vast majority of transactions occur within the **United States**. To maintain a focused and representative analysis, this project concentrates exclusively on U.S. operations.

</details>

<br>

<details>
<summary><strong>3. Business Problem</strong></summary>

<br>

The company lacks a centralized view of sales and distribution performance, making it difficult to answer key business questions such as:

- Which products and factories generate the highest revenue and profit?
- How does sales performance vary across products and over time?
- Which factories provide the most efficient customer coverage?
- Are customers being served within the company's target shipping distance?
- Which factory locations present opportunities to improve distribution efficiency?

</details>

<br>

<details>
<summary><strong>4. Business Goals</strong></summary>

<br>

Build an interactive Power BI solution that helps the company:

- Monitor sales performance through revenue, profit, profit margin, and order metrics.
- Compare sales performance across products, factories, and time.
- Evaluate factory-to-customer shipping distances and customer coverage.
- Identify opportunities to improve distribution efficiency by highlighting long shipping routes and low coverage areas.
- Analyze product profitability to identify top- and bottom-performing products.
- Support data-driven decisions for sales performance and distribution planning.

</details>

## 🛠 Project Workflow

<details>
<summary><strong>1. Business Understanding</strong></summary>

#### Stakeholder Analysis

The first step of the project was to identify the key stakeholders and understand how the dashboard could support their business decisions. This ensured the reporting solution addressed both commercial performance and distribution efficiency across the U.S. distribution network.

| Stakeholder | Business Need | Decisions Supported |
|--------------|---------------|---------------------|
| **Executive Leadership** | Monitor overall sales, profitability, and distribution performance through high-level KPIs | Strategic planning, business growth, and operational performance monitoring |
| **Sales Managers** | Track revenue, profit, orders, and product performance across time and factories | Product prioritization, sales planning, and performance improvement |
| **Supply Chain & Logistics Managers** | Evaluate shipping distances, customer coverage, and factory performance | Distribution planning, shipping efficiency improvements, and factory performance evaluation |
| **Product Managers** | Analyze product revenue, profitability, and order volume | Product portfolio optimization, pricing decisions, and inventory planning |

> **Outcome:** The dashboard was designed to provide each stakeholder group with relevant KPIs and interactive visualizations, enabling faster, data-driven decisions that improve both sales performance and distribution efficiency.

#### Overall Business Strategy

The U.S. Candy Distributor's business strategy focuses on increasing sales performance while improving distribution efficiency across its factory and customer network.

This Business Intelligence solution supports that strategy by providing a centralized reporting platform that enables stakeholders to monitor key performance indicators (KPIs), evaluate factory and product performance, and identify opportunities to improve operational efficiency through data-driven decision-making.

Specifically, this project helps the business:

- **Monitor sales performance** to evaluate revenue, profit, profit margin, and order trends over time.
- **Identify high-performing products** to support product portfolio and profitability decisions.
- **Evaluate factory performance** by comparing revenue, profit, and customer coverage across manufacturing facilities.
- **Analyze distribution efficiency** by measuring shipping distances, customer coverage, and factory-to-customer distribution patterns.
- **Identify opportunities to improve logistics** by highlighting long shipping distances and areas with lower customer coverage.
- **Establish a single source of truth** that replaces fragmented reporting with interactive dashboards and consistent business metrics.

By transforming raw sales and distribution data into actionable insights, this solution enables leadership to make faster, more informed decisions that improve sales performance, optimize distribution operations, and support sustainable business growth.

</details>

<br>

<details>
<summary><strong>2. KPI Planning</strong></summary>

<br>

Before developing the dashboard, the key performance indicators (KPIs) were defined to ensure the solution aligned with the company's objectives of improving **sales performance** and **distribution efficiency**. Each KPI was selected to measure commercial performance, evaluate shipping operations, and provide stakeholders with actionable insights for data-driven decision-making.

#### Success Criteria

The success of this project was defined by its ability to deliver a centralized business intelligence solution that enables stakeholders to:

- Monitor overall sales performance through revenue, profit, margin, and order KPIs.
- Evaluate distribution efficiency using shipping distance and customer coverage metrics.
- Identify high-performing products and factories.
- Detect opportunities to reduce long shipping distances and improve customer coverage.
- Support data-driven sales and distribution planning through interactive dashboards.

#### Key Performance Indicators (KPIs)

| KPI | Business Purpose |
|------|------------------|
| **Total Revenue** | Measure overall sales performance and business growth. |
| **Total Profit** | Evaluate business profitability across products and factories. |
| **Profit Margin %** | Monitor profitability relative to revenue. |
| **Total Orders** | Track customer demand and sales activity. |
| **Average Order Value** | Measure the average revenue generated per customer order. |
| **Average Shipping Distance** | Evaluate the efficiency of factory-to-customer distribution routes. |
| **Longest Shipment** | Identify extreme shipping distances that may indicate inefficient distribution. |
| **Orders Coverage Rate** | Measure the percentage of orders delivered within the target shipping radius. |
| **Orders Within / Outside Radius** | Compare efficient versus inefficient deliveries based on shipping distance. |

#### Data Requirements

To calculate the project KPIs and support sales and distribution analysis, the dashboard integrates data from multiple business domains:

| Business Domain | Data Required |
|-----------------|---------------|
| Sales | Sales transactions, order quantity, revenue, profit, and order dates |
| Products | Product details, categories, pricing, and factory assignments |
| Customers | Customer locations, order history, and geographic information |
| Factories | Factory names, locations, and production assignments |
| Distribution | Shipping distance, customer coverage, and delivery radius |
| Geography | States, cities, and country information for spatial analysis |
| Calendar | Date table to support monthly, quarterly, and yearly trend analysis |

#### KPI Measurement Plan

The selected KPIs provide a balanced view of business performance across four key areas:

- **Sales Performance** – Revenue, Profit, Profit Margin, Orders, Average Order Value
- **Product Performance** – Product Revenue, Product Profit, Top Products by Revenue
- **Factory Performance** – Factory Revenue, Factory Profit, Customer Coverage Rate
- **Distribution Performance** – Average Shipping Distance, Longest Shipment, Orders Within/Outside Target Radius

Together, these metrics provide stakeholders with a comprehensive view of commercial performance and distribution efficiency, enabling data-driven decisions that improve profitability, optimize distribution operations, and support strategic business planning.

</details>

<br>

<details>
<summary><strong>3. Data Preparation</strong></summary>

<br>

Before building the data model, the U.S. Candy Distributor dataset was imported, explored, and transformed to ensure it was accurate, consistent, and ready for business analysis. SQL was used to explore and validate the data, while Power Query was used to clean and prepare the data for reporting in Power BI.

#### Data Acquisition

The project uses the **U.S. Candy Distributor** dataset provided by **Maven Analytics**. The source data was imported into **SQL Server** for exploratory analysis and validation before being loaded into **Power BI Desktop** using **Power Query** for transformation and modeling.

| Source | Access Method | Storage |
|--------|---------------|---------|
| Supply Chain Shipping CSV Files | SQL Server & Power BI Desktop (Power Query) | Local Project Folder |

#### Data Quality Assessment

The source data was reviewed to identify issues that could affect reporting accuracy and model reliability.

#### SQL Data Preparation

The initial data preparation was completed in SQL Server to ensure the dataset was accurate, consistent, and ready for analysis.

| Phase | Purpose |
|--------|---------|
| **Phase 1 – Database Setup** | Created the project database and imported the source data. |
| **Phase 1 – Missing Value Validation** | Checked for missing or null values across all tables. |
| **Phase 2 – Relationship Validation** | Verified relationships between sales, products, customers, and factories. |
| **Phase 2 – Data Quality Validation** | Identified duplicate records, inconsistent values, and data quality issues. |
| **Phase 3 – Data Cleaning** | Removed unnecessary spaces and standardized text fields. |
| **Phase 4 – Shipping Distance Calculation** | Calculated the shipping distance between factories and customers for distribution analysis. |

#### Geographic Data Validation

To support shipping distance analysis, the sales data was joined with a U.S. ZIP code reference table (`uszips`) to append latitude and longitude coordinates.

During the validation process, the following data quality issues were identified:

| Validation Check | Result | Impact | Decision |
|------------------|-------:|--------|----------|
| Total Sales Orders | 10,194 | Dataset imported successfully | Included |
| U.S. Orders | 9,994 | Complete geographic coverage using the U.S. ZIP reference table | Included in analysis |
| Canadian Orders | 200 | No matching records in the U.S. ZIP reference table, resulting in missing coordinates | Excluded from shipping distance analysis |
| Missing Latitude | 1 ZIP code | Minimal impact on geographic analysis | Retained |
| Missing Longitude | 10 ZIP codes | Minimal impact on geographic analysis | Retained |

Because the objective of this project is to evaluate **U.S. sales performance and distribution efficiency**, the **200 Canadian orders were excluded** from the shipping distance analysis. The remaining U.S. dataset provides complete geographic coverage for the dashboard while maintaining high data quality.
