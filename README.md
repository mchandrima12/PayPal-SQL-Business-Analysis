# PayPal-SQL-Business-Analysis
SQL-based financial transaction analysis and business insights using MySQL

## Project Overview

This project focuses on analysing PayPal transaction data using SQL (MySQL) to answer business questions related to transaction trends, customer behaviour, merchant performance, geographical activity, and transaction values.

The objective is to transform raw transaction data into meaningful business insights that can support financial analysis, customer segmentation, merchant evaluation, and business decision-making.

This is an independent SQL case study completed as part of my Data Analytics learning journey.

## Business Objectives

The analysis addresses the following business questions:

1. How do transaction amounts and volumes vary over time?
2. Which customers demonstrate higher transaction activity and engagement?
3. Who are the top-performing merchants based on transaction amounts?
4. How are transaction amounts distributed across different countries?
5. What is the distribution of domestic and international transactions?
6. How can high-value and regular transactions be classified?
7. Which currencies account for higher recorded transaction amounts?

## Dataset Overview

The database consists of five relational tables:

| Table Name | Description |
|---|---|
| `transactions` | Contains transaction-level information |
| `users` | Contains customer information |
| `merchants` | Contains merchant details |
| `countries` | Contains country-related information |
| `currencies` | Contains currency information |

The tables are combined using SQL JOIN operations to perform business analysis.

## Tools & Technologies

- Database: MySQL
- SQL Environment: MySQL Workbench
- Language: SQL

## SQL Concepts Applied

The project uses the following SQL concepts:

- SELECT, WHERE and ORDER BY
- INNER JOIN
- GROUP BY and HAVING
- Aggregate functions: SUM, AVG, COUNT
- CASE statements for conditional classification
- Subqueries
- Date and time functions
- Data filtering and sorting
- Data aggregation and segmentation

## Analysis Areas

### 1. Transaction Analysis
- Monthly transaction trends
- Transaction amount classification
- High-value transaction identification
- Domestic and international transaction analysis

### 2. Customer Analysis
- Customer engagement analysis
- Average transaction behaviour
- Identification of high-value customers
- Customer transaction activity

### 3. Merchant Performance
- Merchant-wise transaction analysis
- Monthly merchant performance
- Identification of top-performing merchants
- Performance classification based on transaction amounts

### 4. Geographical Analysis
- Country-wise transaction amounts
- Top sending and receiving countries
- Domestic versus international transaction activity

### 5. Currency Analysis
- Transaction amount aggregation by currency
- Identification of currencies with higher recorded transaction amounts

## Business Insights & Recommendations

SQL analysis is used to examine transaction patterns, customer activity, merchant performance, and geographical transaction behaviour.

The corresponding business insights document explains the business relevance of these analyses and provides potential recommendations for customer engagement, merchant evaluation, transaction monitoring, and financial planning.

Refer to the `03_Business_Insights` folder for detailed documentation.

Repository Structure
```
PayPal-SQL-Analysis/
│
├── README.md
│
├── 01_Database/
│   └── Database SQL Files
│
├── 02_SQL_Analysis/
│   └── SQL Business Question Queries
│
└── 03_Business_Insights/
    └── Business Findings and Recommendations
```

Key Learning Outcomes

Through this project, I developed practical experience in:

- Working with relational databases and multiple tables.
- Writing SQL queries to answer business questions.
- Applying JOINs and aggregate functions to analyse transaction data.
- Using conditional logic to classify transaction records.
- Analysing customer and merchant performance.
- Translating analytical questions into structured SQL queries.
- Interpreting business problems and developing data-driven recommendations.

## Project Scope & Limitations

- The analysis is based on the available transaction dataset and the date ranges specified in individual business questions.
- Transaction amounts are aggregated by currency code; values in different currencies should not be directly compared without exchange-rate conversion.
- Business recommendations represent analytical suggestions based on the scope of the queries.

## Conclusion

This project demonstrates the practical application of SQL in business and financial data analysis.

By analysing transaction records across customers, merchants, countries, and currencies, the case study demonstrates how SQL can be used to investigate business problems, identify transaction patterns, and support data-driven decision-making.

Project Type: Independent Data Analytics Case Study  
Domain: Financial Transactions / FinTech  
Primary Skill: SQL | MySQL

Author: Chandrima Mukherjee
Aspiring Data/Business Analyst
LinkedIn Profile: https://www.linkedin.com/in/chandrima-mukherjee-6423b2286
