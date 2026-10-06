# Task 20 - Customer Order Count

## Objective
Count orders per customer and identify frequent buyers.

## Tools
- Excel / Google Sheets
- SQL
- Python was used only to prepare the deliverables.

## Dataset
The project uses the Superstore dataset from the Task 5 workbook.

- Source rows: **10,800**
- Unique orders: **5,009**
- Unique customers: **793**

## Method
The analysis groups records by **Customer ID** and counts **distinct Order IDs**.

This is important because a single order can contain multiple product/order-line records. Counting rows directly would overstate the number of orders.

## Customer Order Table
The complete customer-level result is available in:

`reports/customer_order_count.csv`

## Top Customers
Top 10 frequent buyers:

| Rank | Customer ID | Customer Name | Order Count |
|---:|---|---|---:|
| 1 | EP-13915 | Emily Phan | 17 |
| 2 | CK-12205 | Chloris Kastensmidt | 13 |
| 3 | EA-14035 | Erin Ashbrook | 13 |
| 4 | JE-15745 | Joel Eaton | 13 |
| 5 | NS-18640 | Noel Staavos | 13 |
| 6 | PG-18820 | Patrick Gardner | 13 |
| 7 | SH-19975 | Sally Hughsby | 13 |
| 8 | ZC-21910 | Zuschuss Carroll | 13 |
| 9 | AH-10690 | Anna Häberlin | 12 |
| 10 | BD-11320 | Bill Donatelli | 12 |

## Key Findings
1. **Emily Phan** is the most frequent buyer in this dataset.
2. The highest customer order count is **17 unique orders**.
3. **781 customers** placed more than one order.
4. Distinct Order IDs were used to avoid duplicate order-line counting.

## Deliverables
- `data/superstore_data.csv` - source dataset copy
- `reports/customer_order_count.csv` - all customers with unique order counts
- `reports/top_10_customers.csv` - top 10 frequent buyers
- `charts/top_10_customer_order_count.png` - top customer chart
- `sql/customer_order_count.sql` - SQL queries
- `Task20_Customer_Order_Count.xlsx` - Excel workbook
- `README.md` - project documentation

## Interview Question
**Why should we count distinct Order IDs instead of rows?**

Because one order can contain multiple line items. Counting rows would treat every product line as a separate order. `COUNT(DISTINCT Order_ID)` correctly measures the number of actual orders placed by each customer.
