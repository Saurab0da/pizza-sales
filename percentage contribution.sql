-- Calculate the percentage contribution of each pizza type to total revenue
select pi.category ,(sum(p.price*o.quantity) / (select sum(p.price*o.quantity ) from pizzas as p join order_details as o on p.pizza_id= o.pizza_id)) *100 as revenue
from pizza_types as pi
join pizzas as p
on  pi.pizza_type_id=p.pizza_type_id
join order_details as o
on p.pizza_id=o.pizza_id
group by pi.category 
order by revenue ;
