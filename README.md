# 🏦 Bank Customer Churn & Retention Analytics

An end-to-end Data Analytics project analyzing customer attrition patterns across 10,000 banking clients. This project utilizes **Python (Pandas, Matplotlib, Seaborn)** for exploratory data analysis, **MySQL** for database querying, and **Power BI** for interactive visual reporting.

---

## 📊 Key Highlights & Insights

* **Overall Churn Rate:** **20.38%** (2,038 out of 10,000 customers exited the bank).
* **Geographic Risk:** **Germany** exhibits the highest churn rate at **32.44%**, compared to France (**16.17%**) and Spain (**16.67%**).
* **Age Distribution:** Customers in the **50–59 age bracket** show the highest churn rate at **56.04%**.
* **Product Engagement:** Single-product holders churn at **27.71%**, whereas customers holding **2 products** show optimal retention with a **7.60% churn rate**.
* **Member Activity:** Inactive members churn at **26.87%**, compared to **14.27%** for active members.

---

## 🛠️ Tech Stack & Workflow

* **Data Cleaning & EDA:** Python (`pandas`, `matplotlib`, `seaborn`)
* **Database Querying:** MySQL Workbench
* **Business Intelligence:** Microsoft Power BI
* **Version Control:** Git & GitHub


## 📊 Dashboard Preview
<img width="1048" height="592" alt="Dashboard for Bank-Custmer-Churn" src="https://github.com/user-attachments/assets/b4535193-c5fe-48e3-a82e-a4326219a90f" />
---


## 🔍 Business Questions Analyzed via MySQL

The SQL analysis is divided into basic aggregations, multi-variable churn metrics, and high-value customer profiling:

### 📊 Demographic & Geographic Distribution
* **Q1:** How many customers are there in each Geography?
* **Q2:** What is the average Credit Score for customers in each Geography?
* **Q3:** What is the average Balance of customers in each Geography?
* **Q4:** How many customers belong to each Card Type?
* **Q5:** What is the average Estimated Salary for each Gender?

### 📉 Risk & Churn Drivers Analysis
* **Q6:** What is the churn rate across different Card Types?
* **Q7:** What is the churn rate for each Gender?
* **Q8:** What is the average Balance of churned customers across each Geography?
* **Q9:** Which Geography + Card Type combination exhibits the highest number of churned customers?
* **Q14:** What is the churn rate for customers based on the total number of products held?
* **Q15:** How does the churn rate compare between Active vs. Inactive customers within each Geography?

### 🎯 High-Value Profiling & Comparative Segmentation
* **Q10:** Which Geographies maintain an average customer Balance greater than $100,000?
* **Q11:** Which Card Types maintain an average customer Credit Score greater than 650?
* **Q12:** How do churned customers differ from retained customers across Age, Credit Score, Balance, and Estimated Salary?
* **Q13:** How many high-value customers have churned from the bank?

---

## 💾 Dataset Reference

* **Dataset Name:** Customer Churn Records / Bank Customer Churn Dataset
* **Source:** [Kaggle](https://www.kaggle.com/)
* **Dataset Scope:** 10,000 customer records with 18 attributes detailing demographic profiles, account balances, product holdings, credit scores, and churn status (`Exited`).
* 
```text
[ Raw CSV Data ] ➡️ [ Python EDA & Preprocessing ] ➡️ [ MySQL Database Queries ] ➡️ [ Power BI Dashboard ]
