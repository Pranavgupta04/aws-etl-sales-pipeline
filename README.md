# aws-etl-sales-pipeline
# AWS + Databricks Sales Data Pipeline

## 📌 Overview

This project demonstrates an end-to-end **data engineering pipeline** built using AWS and Databricks. The pipeline ingests raw sales data from a local system, processes it using PySpark, stores optimized data in Amazon S3, and enables SQL-based querying through Amazon Athena. The processed data is designed to be visualized using Amazon QuickSight.

The primary focus of this project is on **data pipeline architecture, ETL processes, and cloud integration**, rather than large-scale analytics.

---

## 🧱 Architecture

```
Local System (CSV)
        ↓
Amazon S3 (Raw Layer)
        ↓
Databricks (PySpark ETL)
        ↓
Amazon S3 (Enhanced Layer - Parquet)
        ↓
Amazon Athena (SQL Queries)
        ↓
Amazon QuickSight (Dashboard - Conceptual)
```

---

## ⚙️ Tech Stack

* **AWS S3** – Data lake storage (raw & processed layers)
* **Databricks (PySpark)** – Data processing and transformation
* **Amazon Athena** – Serverless SQL query engine
* **Amazon QuickSight** – Dashboarding (conceptual integration)
* **Python / PySpark** – ETL logic and transformations

---

## 🔄 Data Pipeline Workflow

### 1. Data Ingestion

* Sales data (CSV) is uploaded from a local system to Amazon S3.
* Stored in the **raw layer** for durability and scalability.

### 2. Data Processing (ETL)

Using Databricks:

* Data is read from S3
* Cleaned and transformed using PySpark
* Schema is standardized for consistency

### 3. Data Transformation

Key transformations applied:

* Null value handling
* Data type casting
* Removal of invalid/duplicate records
* Feature engineering:

  * `order_value_category`
  * `customer_type`
  * `day_of_week`
  * `final_amount`

### 4. Data Storage (Enhanced Layer)

* Processed data is written back to S3
* Stored in **Parquet format** for:

  * Faster queries
  * Reduced storage cost
  * Columnar optimization

### 5. Data Querying

* Amazon Athena is used to query data directly from S3
* External tables created over Parquet files
* Enables SQL-based analytics without infrastructure management

### 6. Visualization (Conceptual)

* Amazon QuickSight is used as a BI tool
* Connected to Athena as a data source
* Dashboard designed to show:

  * Total revenue
  * Category-wise sales
  * Monthly trends
  * Customer segmentation

> Note: Due to environment limitations, a sample dashboard representation is included.

---

## 🧹 Data Engineering Concepts Applied

* Data Lake Architecture (Raw → Processed → Enhanced)
* ETL Pipeline Design
* Schema Management
* Feature Engineering
* Columnar Storage (Parquet)
* Serverless Querying (Athena)

---

## 📂 Project Structure

```
aws-etl-sales-pipeline/
│
├── architecture/        # Architecture diagram
├── notebooks/           # Databricks ETL code
├── sql/                 # Athena queries
├── data/                # Sample dataset
├── screenshots/         # Dashboard / output images
├── docs/                # Additional documentation
└── README.md
```

---

## 📸 Sample Output

* Athena query results
* Processed dataset preview
* Sample QuickSight dashboard (representation)

---

## 🚀 Key Highlights

* Built a **cloud-native data pipeline**
* Implemented **ETL using PySpark in Databricks**
* Designed **data lake layers (raw → enhanced)**
* Enabled **serverless analytics using Athena**
* Integrated visualization layer using QuickSight

---

## 📚 Learnings

* Hands-on experience with AWS data services
* Understanding of real-world ETL workflows
* Data modeling and transformation strategies
* Integration of multiple cloud tools in a pipeline

---

## ⚠️ Note

This project uses a **small dataset**, so the focus is on:

* Pipeline design
* Data engineering practices
* System integration

rather than deep analytical insights.

---

