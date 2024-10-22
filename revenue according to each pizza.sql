-- Determine the top 3 most ordered pizza types based on revenue.
select pi.name,sum(p.price*o.quantity) as revinue 
from pizza_types as pi
join pizzas as p
on  pi.pizza_type_id=p.pizza_type_id
join order_details as o
on p.pizza_id=o.pizza_id
group by pi.name 
order by revinue desc limit 3;
