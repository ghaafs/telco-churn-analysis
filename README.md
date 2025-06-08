# 📊 Telco Customer Churn Dashboard (Power BI + DAX)

This project is an **end-to-end analytics solution** to analyze churn behavior of telecom customers using Power BI and DAX. It visualizes key metrics such as churn rate, average customer tenure, and contract segmentation—empowering data-driven decisions to reduce customer loss.

> ✅ Built for learning, and also for showcasing business intelligence & automation capabilities.

---

## 🔍 Use Case: Telco Churn Analysis

Churn is one of the most critical KPIs in the telecom industry. Understanding **who is churning and why** is essential to:
- Increase **retention**
- Personalize **customer experience**
- Optimize **contract offerings**

---

## 📈 Features

- ✅ DAX measures: `Churn Rate`, `Retention Rate`, `Avg Tenure`, `Churn by Contract`, etc.
- ✅ Interactive dashboard with dynamic filters: `Gender`, `Contract`, `Payment Method`, `Internet Service`
- ✅ Cleaned & preprocessed dataset using Power BI's Power Query
- ✅ Visual storytelling with KPI cards, pie charts, bar charts, and churn trends

---

## 🧠 Key Insights from the Dashboard

- **27% of customers churned**, while **73% were retained**
- **Month-to-month contracts** dominate churned customers (1,238 users)
- **New customers (<5 months)** and **very loyal customers (>70 months)** are the most likely to churn
- Average tenure of churned customers is only **32.42 months**
- **Higher monthly charges** correlate with churn rate

---

## 📊 Dashboard Preview

![Dashboard Screenshot](https://github.com/ghaafs/telco-churn-analysis/blob/4db708fe6cee10fe2212d27186870cb045be6bbe/Dashboard%20Telco%20Churn%20Analysis.png)

## 👩‍💻 Access PowerBI Here
![QR Code](https://github.com/ghaafs/telco-churn-analysis/blob/3c86afdf598d47a1021090baa00be19ddab2e54a/QR-PowerBI.jpg)

---

## 🧠 Key Insights from the Dashboard

- **27% of customers churned**, while **73% were retained**
- **Month-to-month contracts** dominate churned customers (1,238 users)
- **New customers (<5 months)** and **very loyal customers (>70 months)** are the most likely to churn
- Average tenure of churned customers is only **32.42 months**
- **Higher monthly charges** correlate with churn rate

---

## 🛠️ Tech Stack

| Tool | Purpose |
|------|---------|
| Power BI | Data visualization & DAX logic |
| DAX | Calculated measures and KPIs |
| SQLite (optional) | Raw data source |
| GitHub | Version control & showcase |

---

## 📁 Files

| File | Description |
|------|-------------|
| `pbix/telco_churn_dashboard.pbix` | Main Power BI dashboard |
| `data/telco_customer_churn.csv` | (Optional) Raw dataset |
| `screenshots/` | Dashboard previews |
| `sql/` | SQL schema or transformation (if any) |

---

## 📌 Sample DAX Measures

```DAX
Churn Rate =
DIVIDE(
    CALCULATE(COUNTROWS(churn_data), churn_data[Churn] = "Yes"),
    COUNTROWS(churn_data)
)

Avg Tenure =
AVERAGE(churn_data[tenure])
