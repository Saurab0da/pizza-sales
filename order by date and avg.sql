-- Group the orders by date and calculate the average number of pizzas ordered per day.
 select avg(oders) 
from
(select o.order_date ,sum(oi.quantity) as oders from orders as o 
join order_details as oi
on o.order_id=oi.order_id
group by o.order_date) as daily_order;

