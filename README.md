```
Customer_Behavior_Analysis/
│
├── README.md
├── LICENSE
├── .gitignore
│
├── data/
│   ├── raw/
│   │   ├── customers.csv
│   │   ├── orders.csv
│   │   ├── order_items.csv
│   │   ├── products.csv
│   │   ├── categories.csv
│   │   └── channels.csv
│   │
│   └── cleaned/
│       ├── customers_utf8.csv
│       ├── orders_utf8.csv
│       ├── order_items_utf8.csv
│       ├── products_utf8.csv
│       ├── categories_utf8.csv
│       └── channels_utf8.csv
│
├── docs/
│   ├── Project_Description.pdf
│   ├── Data_Model.png
│   ├── ER_Diagram.png
│   └── Schema_Explanation.md
│
├── sql/
│   ├── 01_create_database.sql
│   ├── 02_create_tables.sql
│   ├── 03_constraints.sql
│   ├── 03_load_data.sql
│   ├── 05_data_validation.sql
│   │
│   ├── analysis/
│   │   ├── 01_acquisition.sql
│   │   ├── 02_conversion.sql
│   │   ├── 03_retention.sql
│   │   ├── 04_churn.sql
│   │   └── 05_bonus_analysis.sql
│   │
│   └── views/
│       ├── customer_summary.sql
│       ├── sales_summary.sql
│       └── active_customers.sql
│
├── results/
│   ├── screenshots/
│   │   ├── q01.png
│   │   ├── q02.png
│   │   ├── q03.png
│   │   └── ...
│   │
│   ├── reports/
│   │   ├── acquisition_report.md
│   │   ├── conversion_report.md
│   │   ├── retention_report.md
│   │   └── churn_report.md
│   │
│   └── final_summary.md
│
└── assets/
    ├── banner.png
    ├── workflow.png
    └── project_cover.png
```
