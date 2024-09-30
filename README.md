# Retailer Analytics Data Platform

This project involved building a comprehensive data platform for retailer analytics in an e-commerce organization.

## Project Overview

### Data Platform Design
- **MySQL (OLTP):** Used as the OLTP database for handling transactional data.
- **MongoDB (NoSQL):** Employed as a NoSQL database to store the product catalog data.

### Data Warehouse
- Designed and implemented a data warehouse.
- Integrated data from both the OLTP (MySQL) and NoSQL (MongoDB) databases.
- Automated daily incremental data imports into fact and dimension tables.

### ETL Pipeline
- Developed an ETL (Extract, Transform, Load) process to handle data extraction, transformation, and loading from both MySQL and MongoDB into the data warehouse.

### Reporting and Dashboards
- Created reports and dashboards using Cognos.
- Visualized key business metrics, including:
  - Quarterly sales
  - Category-wise sales
  - Monthly performance

### Big Data and Machine Learning
- Established a Spark connection to the data warehouse.
- Deployed a machine learning model using SparkML to generate sales projections.
