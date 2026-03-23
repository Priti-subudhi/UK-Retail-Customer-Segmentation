use RetailDB;
---Query 1: total revenue, total orders, total countries, total customers
select
	count(*) as total_transactions,
	count(distinct Invoice) as total_orders,
	count(distinct customer_id) as total_customers,
	count(distinct country) as total_countries,
	round(sum(quantity * price), 2) as total_revenue
from dbo.online_retail_II
where quantity > 0 and price > 0;

--query 2: revenue by top 10 countries
select top 10
	country,
	count(distinct invoice) as total_orders,
	count(distinct customer_id) as total_customers,
	round(sum(quantity * price), 2) as total_revenue
from dbo.online_retail_II
where quantity > 0 and price > 0
group by Country
order by total_revenue desc;

--query 3: monthly revenue trend
select
	format(InvoiceDate, 'yyyy-MM') as month,
	count(distinct Invoice) as total_orders,
	round(sum(quantity * price),2) as total_revenue
from dbo.online_retail_II
where quantity > 0 and price > 0
group by format(InvoiceDate, 'yyyy-MM')
order by month asc;

--this table has negative qnt and price and some null ids, so i created another clean table with clean data from this table.
select *
into dbo.online_retail_clean
from dbo.online_retail_II
where quantity > 0
and price > 0
and Customer_ID is not null;

select count(*) as clean_rows
from online_retail_clean;

---query 3: monthly revenue trend(using clean table data)
select
	format(InvoiceDate, 'yyyy-MM') as month,
	count(distinct Invoice) as total_orders,
	round(sum(quantity * price),2) as total_revenue
from dbo.online_retail_clean
group by format(InvoiceDate, 'yyyy-MM')
order by month asc;

--query 3a: which month had the highest revenue?
select top 1
	format(InvoiceDate, 'yyyy-MM') as months,
	count(distinct Invoice) as total_orders,
	round(sum(quantity * price),2) as monthly_revenue
from dbo.online_retail_clean
group by format(InvoiceDate, 'yyyy-MM')
order by monthly_revenue desc;

--query 4: top 10 best selling products
select top 10
	StockCode,
	Description,
	sum(quantity) as total_units_sold,
	round(sum(quantity * price),2) as total_revenue,
	count(distinct invoice) as times_ordered
from dbo.online_retail_clean
group by StockCode,Description
order by total_units_sold desc;

--Query 5: top 10 customers
select top 10
	customer_id,
	count(distinct invoice) as total_order,
	sum(quantity) as total_items_bought,
	round(sum(quantity * price),2) as total_revenue,
	round(avg(quantity * price),2) as average_order_value
from dbo.online_retail_clean
group by Customer_ID
order by total_revenue desc;

---Query 6: revenue by day of week

select
	datename(weekday, invoicedate) as day_name,
	count(distinct invoice) as total_orders,
	round(sum(quantity * price),2) as total_revenue,
	round(avg(quantity * price),2) as average_order_value
from online_retail_clean
group by datename(weekday, invoicedate),
		DATEPART(weekday, invoicedate)
order by DATEPART(weekday, invoicedate);

--avg order value per order by top 10 country
select top 10
	country,
	count(distinct invoice) as total_orders,
	round(sum(quantity * price), 2) as total_revenue,
	round(sum(quantity * price)/count(distinct invoice), 2) as avg_order
from online_retail_clean
group by country
order by avg_order desc;

--Query 8: return rate analysis formula= returned orders/total orders * 100
select
	country,
	count(distinct case when quantity > 0 then invoice end) as positive_orders,
	count(distinct case when quantity < 0 then invoice end) as returned_orders,
	round(
		100 * count(distinct case when quantity < 0 then invoice end)/count(distinct case when quantity > 0 then invoice end), 2
		) as return_rate_per_country
from online_retail_II
group by country
having count(distinct case when quantity > 0 then invoice end) > 50
order by return_rate_per_country desc;

---Query 9: New vs Repeat customer
select
	customer_type,
	count(*) as total_customer,
	round(count(*) * 100 / sum(count(*)) over(),2) as in_percentage 
from (
	select 
		customer_id,
		case
			when count(distinct invoice) = 1 then 'new customer'
			else 'repeat customer'
		end as customer_type
	from online_retail_clean
	group by customer_id
)as cuustomer_summary
group by customer_type;

-- Query 10: revenue by hour of day
select
	datepart(hour, invoicedate) as hour_of_day,
	count(distinct invoice) as total_orders,
	round(sum(quantity * price), 2) as total_revenue
from online_retail_clean
group by datepart(hour, invoicedate)
order by total_revenue desc;























