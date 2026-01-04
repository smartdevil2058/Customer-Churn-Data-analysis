# Customer-Churn-Data-analysis
# Customer Churn Analysis & Revenue Retention Dashboard

## 📌 Project Overview
This project provides a comprehensive analysis of customer churn behavior using transactional and usage data. The primary goal was to identify key drivers of attrition—such as service friction, cost disparities, and usage patterns—to guide strategic retention decisions.

## 📊 Key Insights
* **Total Revenue:** $158.26K (Retained: 84.1% | Churned: 15.9%)
* **Churn Rate:** 14.55%
* **Risk Factors:**
    * **Tenure:** Customers with accounts between 84 to 118 days are at the highest risk.
    * **Service Friction:** Churn increases significantly after 3 service calls.
    * **International Usage:** Top 5% of international users exhibit a high churn rate of 17.78%.
    * **Sticky Features:** Customers with a Voicemail Plan are significantly less likely to churn (only 8.86% churn rate).

## 🛠️ Tech Stack & Methodology
* **Data Processing:** Python (Pandas, NumPy) for cleaning and feature engineering.
* **Feature Engineering:** Binning account lengths and calculating "Charge per Minute" to identify cost disparities.
* **Visualization:** Interactive Dashboard (Power BI/Tableau) showcasing revenue by state, usage groups, and account length.

## 🚀 Strategic Recommendations
1.  **Proactive Support:** Target customers at the 3rd service call milestone to prevent them from reaching the "high-churn" 4th call.
2.  **Retention Campaigns:** Launch automated campaigns specifically for accounts approaching the 84-day mark.
3.  **Regional Focus:** Deep dive into Texas (TX) service quality, as it shows the highest churn rate.
4.  **Feature Adoption:** Promote Voicemail Plans to increase customer "stickiness."

---
*Developed as part of a Data Analytics portfolio.*
