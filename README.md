# 🌎 CO₂ Emissions Dashboard (Databricks Project)

## 📌 Project Overview
This project focuses on analyzing **CO₂ emissions across the United States for the year 2023** using **Databricks**. The goal was to explore emissions patterns, identify high-emission states, and present insights through an interactive dashboard.

The project demonstrates how Databricks can be used for:
- Data ingestion and transformation
- SQL-based analytics
- AI-assisted query optimization (Genie)
- Dashboard creation and visualization

---

## 🎯 Objectives
- Load and manage CO₂ emissions data in Databricks
- Analyze emissions at a **state level**
- Calculate **emissions per person**
- Identify **top 10 states with highest emissions**
- Determine each state's **percentage contribution** to total emissions
- Build an interactive dashboard to present insights

---

## 🛠️ Tech Stack
- **Databricks**
- **SQL**
- **Databricks Genie (AI assistant)**
- **Databricks Dashboards**

- ## 📂 Dataset
The dataset contains CO₂ emissions data for U.S. states in 2023, including:
- State name
- Total CO₂ emissions
- Population (used to calculate per capita emissions)

---Query Optimization with Genie
Used Databricks Genie (AI) to:
Improve SQL query performance
Suggest cleaner and more efficient query structures
Reduce redundancy and improve readability

What I Learned
How to use Databricks for end-to-end data analysis
Writing and optimizing SQL queries
Leveraging AI tools (Genie) for productivity
Creating interactive dashboards with minimal effort
Turning raw data into meaningful insights

📊 Key Insights from Dashboard
1. Emissions Are Highly Concentrated
The top 10 states account for ~51% of total CO₂ emissions in the U.S.
This indicates a strong imbalance, where a small number of states dominate national emissions.

2. Geographic Emission Patterns
The emissions heatmap shows dense clusters in highly industrialized and urbanized regions.
States with large metropolitan and industrial hubs (e.g., Texas, Chicago) contribute significantly more emissions.
Emissions are more sparse in less populated and rural regions.

3. Population vs Emissions Per Person
The scatter plot reveals an inverse trend:
States with higher populations tend to have lower emissions per person
States with lower populations often show higher per capita emissions
This suggests:
Urban density may improve efficiency (shared infrastructure, public transport)
Smaller states may rely more on emission-intensive activities per individual

4. Per Capita Emissions Vary Significantly
There is a wide spread in emissions per person (roughly 0 to 5+ units).
This highlights:
Differences in energy usage
Industrial activity
State-level policies and infrastructure

5. County-Level Emissions Leaders
A few counties dominate emissions at a micro level:
Maricopa County, AZ (~9.8M tons)
Harris County, TX (~9.6M tons)
Cook County, IL (~8.1M tons)
These are major urban/industrial centers, reinforcing the trend that economic activity drives emissions concentration.

6. Mid-Tier Contributors Still Matter
Beyond the top 3 counties, others like:
Miami-Dade County, FL
Dallas County, TX
Los Angeles County, CA
still contribute significantly (4–6M tons range)
This suggests emissions are not just top-heavy but distributed across multiple urban hubs

7. Emissions vs Efficiency Insight
Higher total emissions do not necessarily imply inefficiency
Some high-emission regions:
Have lower emissions per capita
Indicating better resource utilization at scale
