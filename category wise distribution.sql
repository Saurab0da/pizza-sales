-- Join relevant tables to find the category-wise distribution of pizzas
select category  , count(name) as by_category from pizza_types
group by category;