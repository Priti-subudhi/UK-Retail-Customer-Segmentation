# 🛍️ UK Retail Customer Segmentation
### End-to-End Data Analytics Project

![Tools](https://img.shields.io/badge/Tools-Excel%20%7C%20SQL%20Server%20%7C%20Python%20%7C%20Power%20BI-blue)
![Domain](https://img.shields.io/badge/Domain-Retail%20Analytics-green)
![Status](https://img.shields.io/badge/Status-Completed-success)

---

## 📌 Project Overview

This project performs a complete end-to-end customer segmentation analysis on a real-world UK e-commerce dataset containing **1,067,371 transactions** from 2009–2011. The project replicates the exact type of analytical work performed by data analysts at Big4 consulting firms.

**Business Goal:** Segment customers into meaningful groups to help the business prioritize retention, marketing and growth strategies.

---

## 🗂️ Dataset

| Attribute | Details |
|---|---|
| **Source** | [UK Online Retail II — Kaggle](https://www.kaggle.com/datasets/mashlyn/online-retail-ii-uci) |
| **Size** | 1,067,371 rows × 8 columns (90+ MB) |
| **Period** | December 2009 — December 2011 |
| **Countries** | 43 countries |
| **Type** | Real UK wholesale/retail transactions |

---

## 🛠️ Tools Used

| Tool | Purpose |
|---|---|
| **Microsoft Excel** | Data exploration & EDA |
| **SQL Server (SSMS)** | Data storage & business queries |
| **Python (Jupyter Notebook)** | Data cleaning, RFM analysis, segmentation |
| **Power BI Desktop** | Interactive executive dashboard |

---

## 📊 Project Phases

### Phase 1 — Excel Exploration
- Loaded 1,048,576 rows (Excel maximum)
- Identified data quality issues:
  - 236,682 blank Customer IDs (22.6%)
  - 22,697 negative quantity rows (returns)
  - 6,171 zero/negative price rows
  - 43 unique countries
- Built pivot table showing Revenue by Country

### Phase 2 — SQL Server Analysis
- Imported full dataset (1,067,371 rows) into SQL Server
- Created clean table with 805,549 valid rows
- Wrote **10 business queries** covering:
  - Overall revenue summary
  - Revenue by country
  - Monthly revenue trends
  - Top products
  - Top customers
  - Revenue by day of week
  - Average order value by country
  - Return rate analysis
  - New vs repeat customers
  - Revenue by hour

### Phase 3 — Python Analysis
- Deep data cleaning → 779,425 clean rows
- Feature engineering (Revenue, Year, Month, Day, Hour columns)
- **RFM Analysis** — scored all 5,878 customers
- **Customer Segmentation** — 6 distinct segments identified
- Exported clean data for Power BI

### Phase 4 — Power BI Dashboard
- Built 4-page interactive executive dashboard:
  - **Page 1:** Executive Summary (KPIs + Revenue trend)
  - **Page 2:** Sales Analysis (Day/Hour/Products)
  - **Page 3:** Customer Segments (RFM metrics)
  - **Page 4:** Geographic Analysis (World map)

---

## 🎯 Key Findings

| Insight | Finding |
|---|---|
| **Total Revenue** | £20,972,968 |
| **Total Customers** | 5,878 |
| **Top Market** | UK = 85% of revenue |
| **Peak Month** | November 2010 |
| **Peak Hour** | 12 PM (B2B pattern) |
| **Repeat Rate** | 72% — strong loyalty |
| **Champion Customers** | 1,297 customers = 68.7% of revenue |

---

## 👥 Customer Segments

| Segment | Count | % | Avg Spend |
|---|---|---|---|
| 🏆 Champion | 1,297 | 22% | £9,143 |
| 💀 Lost Customer | 1,280 | 21% | — |
| 💛 Loyal Customer | 1,138 | 19% | £2,255 |
| 🌱 Potential Loyalist | 1,104 | 19% | £658 |
| ⚠️ At Risk | 616 | 10% | £2,444 |
| 🆕 New Customer | 443 | 8% | £885 |

---

## 💡 Strategic Recommendations

1. **IMMEDIATE:** Win-back campaign for 616 At-Risk customers — estimated £1.5M recovery potential
2. **SHORT-TERM:** VIP program for 1,297 Champions to protect 68.7% revenue share
3. **MEDIUM-TERM:** Expand Netherlands & EIRE — highest revenue per customer
4. **LONG-TERM:** Convert 1,104 Potential Loyalists through October-November campaigns

---

## 📸 Dashboard Screenshots

### Page 1 — Executive Summary
![Executive Summary](UK%20Retail%20-%20executive%20summary.png)

### Page 2 — Sales Analysis
![Sales Analysis](UK%20Retail%20-%20Sales%20Analysis.png)

### Page 3 — Customer Segments
![Customer Segments](UK%20Retail%20-%20Customer%20segments.png)

### Page 4 — Geographic Analysis
![Geographic Analysis](UK%20Retail%20-%20Geographic%20analysis.png)

## 🗃️ Repository Structure

```
UK-Retail-Customer-Segmentation/
│
├── README.md
├── SQL/
│     └── 02_business_queries.sql
├── Python/
│     └── Customer_Segmentation.ipynb
├── Data/
│     └── rfm_segments.csv
├── PowerBI/
│     └── Customer_Segmentation_Dashboard.pbix
└── Documentation/
      └── Priti_Customer_Segmentation_Project.docx
```

---

## ⚙️ Technical Skills Demonstrated

| Category | Skills |
|---|---|
| **SQL** | SELECT, GROUP BY, HAVING, ORDER BY, TOP N, DISTINCT, CASE WHEN, FORMAT, DATENAME, DATEPART, Subqueries, Window Functions |
| **Python** | pandas, numpy, matplotlib, seaborn, scikit-learn, RFM analysis |
| **Power BI** | DAX measures, data modeling, relationships, slicers, map visuals |
| **Analytics** | EDA, data quality assessment, customer segmentation, trend analysis |

---

## 👤 Author

**P. Priti Subudhi**
- 📧 Email: Priti2003subudhi@gmail.com
- 🔗 LinkedIn: [linkedin.com/in/p-priti-subudhi-95731a308](https://linkedin.com/in/p-priti-subudhi-95731a308)

---

## 📸 Dashboard Screenshots

### Page 1 — Executive Summary
![Executive Summary](https://raw.githubusercontent.com/Priti-subudhi/UK-Retail-Customer-Segmentation/main/UK%20Retail%20-%20executive%20summary.png)

### Page 2 — Sales Analysis
![Sales Analysis](https://raw.githubusercontent.com/Priti-subudhi/UK-Retail-Customer-Segmentation/main/UK%20Retail%20-%20Sales%20Analysis.png)

### Page 3 — Customer Segments
![Customer Segments](https://raw.githubusercontent.com/Priti-subudhi/UK-Retail-Customer-Segmentation/main/UK%20Retail%20-%20Customer%20segments.png)

### Page 4 — Geographic Analysis
![Geographic Analysis](https://raw.githubusercontent.com/Priti-subudhi/UK-Retail-Customer-Segmentation/main/UK%20Retail%20-%20Geographic%20analysis.png)

---

*This project was built as part of a portfolio to demonstrate data analytics skills for Big4 and consulting firm applications.*
