Select sum (total_price) as Total_revenue ,
cast (cast (sum (quantity)as decimal (10,2))/ Cast(count(distinct order_id)as decimal (10,2))
as decimal (10,2))as Avg_order_value,
sum (quantity) as tota_pizza_sold
from pizza_sales

select DATENAME (DW,order_date) as Order_day  ,Count(distinct order_id) as Total_orders from pizza_sales group by DATENAME (DW,order_date)

select DATENAME (MM,order_date) as Month_name  ,Count(distinct order_id) as Total_orders from pizza_sales group by DATENAME (MM,order_date) order by Total_orders desc


select pizza_category , sum (total_price)* 100 / (Select sum (total_price) from pizza_sales) as PCT
from pizza_sales 
group by pizza_category

select pizza_size , Cast (sum (total_price) as decimal (10,2) )as total_sales,CAST ((sum (total_price)* 100 / (Select sum (total_price) from pizza_sales)) as decimal (10,2)) as PCT
from pizza_sales 
group by pizza_size
order by pct desc


--Select top 5 pizza_name , Sum (quantity)from pizza_sales
--group by pizza_name order by total_revenue 



select Top 5 Pizza_name , Sum (quantity) as total_quantity from pizza_sales 
group by pizza_name order by total_quantity desc

select Top 5 Pizza_name ,count (distinct order_id) as total_orders from pizza_sales 
group by pizza_name order by total_orders desc

