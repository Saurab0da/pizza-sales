-- Analyze the cumulative revenue generated over time.
select  b.order_date,
round(sum(b.revinue) over(order by b.order_date ),2) as cum_rn
from

(select o.order_date ,sum(oi.quantity*p.price) as revinue from orders as o 
join order_details as oi
on o.order_id=oi.order_id
 join pizzas as p
on oi.pizza_id=p.pizza_id
group by o.order_date ) as b
;

drop table cum_rn;