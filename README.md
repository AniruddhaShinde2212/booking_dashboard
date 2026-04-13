# ❄️ Snowflake Native Data Engineering Project

> A full end-to-end data engineering pipeline built **entirely inside Snowflake** — no Python notebooks, no Power BI, no external dashboards. Raw data in. Gold-layer insights out.

---

## 📌 About This Project

This project demonstrates a production-style, fully Snowflake-native data pipeline using a realistic **hotel bookings dataset**. It covers everything from raw data ingestion to interactive dashboards — all using Snowflake SQL and Snowsight.

Built as part of my ongoing journey to stay current with modern data engineering practices through hands-on, GitHub-tracked projects.

---

## 🏗️ Architecture — Medallion Layers

```
Raw CSV Files
     │
     ▼
┌─────────────┐
│   BRONZE    │  Raw ingestion via Snowflake Stages & COPY INTO
└──────┬──────┘
       │
       ▼
┌─────────────┐
│   SILVER    │  Cleaned & validated data (emails, dates, prices, typos)
└──────┬──────┘
       │
       ▼
┌─────────────┐
│    GOLD     │  Aggregated, business-ready tables for dashboards
└──────┬──────┘
       │
       ▼
┌─────────────────────┐
│  Snowsight Dashboard│  Interactive, fully native BI
└─────────────────────┘
```

---

## 🚀 What's Covered

- Loading raw hotel booking CSV files into **Snowflake Stages**
- Defining **File Formats** and using **COPY INTO** for ingestion
- Building **Bronze → Silver → Gold** layers using pure SQL
- Cleaning messy, real-world data:
  - Missing and null values
  - Invalid email addresses
  - Negative pricing amounts
  - Wrong or out-of-range date values
  - Status field typos and inconsistencies
- Applying **Medallion Architecture** best practices
- Building an interactive dashboard inside **Snowsight** — zero external BI tools

---

## 🧰 Tech Stack

| Tool | Purpose |
|------|---------|
| **Snowflake** | Cloud data platform — compute + storage |
| **Snowflake SQL** | All transformations and business logic |
| **Snowflake Stages** | Raw file landing zone |
| **File Formats + COPY INTO** | Data ingestion |
| **Snowsight Dashboards** | Native visualization & reporting |

---

## 📂 Project Structure

```
📁 snowflake-hotel-pipeline/
├── 📁 bronze/
│   └── bronze_data_load.sql       # Raw ingestion via Stages & COPY INTO
├── 📁 silver/
│   └── transformation.sql         # Data cleaning & validation logic
├── 📁 gold/
│   └── transformations.sql        # Aggregated, business-ready tables
├── 📁 dashboard/
│   ├── CHARTS.sql                 # Snowsight chart queries
│   └── KPI.sql                    # Key performance indicator queries
├── 📁 setup/
│   └── setup.sql                  # Database, schema & warehouse setup
└── README.md
```

---

## 🧹 Data Quality Rules Applied

| Field | Issue | Fix Applied |
|-------|-------|------------|
| `email` | Invalid format | Regex validation → flagged/excluded |
| `check_in_date` | Future dates, nulls | Range check + null handling |
| `price` | Negative values | Replaced with `NULL`, flagged |
| `booking_status` | Typos (e.g. `cancled`) | `CASE` normalization |
| `customer_id` | Missing values | `COALESCE` + surrogate key |

---

## 📊 Dashboard Highlights (Snowsight)

- 📈 Total bookings over time
- 💰 Revenue by hotel and room type
- ❌ Cancellation rate trends
- 🌍 Bookings by country / region
- 🧾 Data quality scorecard (Bronze → Silver pass rates)

---

## 🎯 Who Is This For?

This project is ideal if you're:
- Preparing for **Data Engineering** or **Analytics Engineer** roles
- Building your **Snowflake portfolio**
- Practicing **Medallion Architecture** with real-world messy data
- Looking for **interview-ready projects** to discuss

---

## ▶️ How to Run This Project

1. **Create a Snowflake account** (free trial at [snowflake.com](https://snowflake.com))
2. Clone this repo:
   ```bash
   git clone https://github.com/AniruddhaShinde2212/booking_dashboard.git
   ```
3. Open Snowflake → Worksheets
4. Run scripts in order:
   - `setup/setup.sql` → database, schema & warehouse
   - `bronze/bronze_data_load.sql` → raw ingestion
   - `silver/transformation.sql` → cleaning & validation
   - `gold/transformations.sql` → business-ready tables
   - `dashboard/KPI.sql` + `dashboard/CHARTS.sql` → Snowsight visuals
5. Open Snowsight → Dashboards → import or recreate the charts
6. Live Dashboard link - https://app.snowflake.com/fnaywao/qj59316/#/hotel_booking-ddO7bJCV2

---

## 🗺️ Roadmap

- [ ] Add dbt models on top of the Gold layer
- [ ] Automate ingestion using Snowpipe
- [ ] Add data contracts / schema validation
- [ ] Explore Snowflake Dynamic Tables
- [ ] Add CI/CD for SQL scripts via GitHub Actions

---

## 🙋 About Me

I'm actively exploring Snowflake and contributing small, focused projects to GitHub regularly — keeping my data engineering skills sharp and portfolio growing.

Feel free to ⭐ the repo, raise issues, or fork it for your own learning!

---

## 📄 License

free to use, learn from, and build upon.
