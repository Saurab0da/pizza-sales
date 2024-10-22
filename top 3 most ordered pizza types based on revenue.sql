-- Determine the top 3 most ordered pizza types based on revenue for each pizza category.
select c.name ,c.rn, c.category
from
(select b.category,b.name,
rank() over (partition by b.category order by b.total_revenue desc ) as rn 
from 
(select p.category,p.name, SUM(pi.price*o.quantity) as total_revenue from pizza_types as p
join pizzas as pi
on p.pizza_type_id= pi.pizza_type_id
join order_details as o 
on pi.pizza_id = o.pizza_id
group by p.category,p.name) as b) as c
where c.rn<=3;
