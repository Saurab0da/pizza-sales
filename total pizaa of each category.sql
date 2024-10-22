--Join the necessary tables to find the total quantity of each pizza category ordered. 
select p.name ,count(o.quantity) as  total_quantity 
from pizza_types as p 
join pizzas as pi
on p.pizza_type_id=pi.pizza_type_id
join order_details as o
on o.pizza_id=pi.pizza_id
group by p.name
ORDER BY total_quantity DESC
LIMIT 5;