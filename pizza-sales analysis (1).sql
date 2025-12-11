  #Retrieve the total number OF orders placed.
SELECT
  COUNT(order_id) AS total_num_order
FROM
  `Pizzahut.orders`; #Calculate the total revenue GENERATED
SELECT
  ROUND(SUM(quantity*price),2) AS total_revenue
FROM
  `Pizzahut.order_details` AS a
JOIN
  `pizza-sales-478918.Pizzahut.pizzas` AS s
ON
  s.pizza_id=a.pizza_id; #Identify the highest-priced pizza.
SELECT
  a.string_field_0,
  s.price
FROM
  `pizza-sales-478918.Pizzahut.pizza_types` AS a
JOIN
  `pizza-sales-478918.Pizzahut.pizzas` AS s
ON
  a.string_field_0 = s.pizza_type_id
ORDER BY
  s.price DESC
LIMIT 1;
  
   #Identify the most common pizza size ordered.
SELECT
  a.size,
  COUNT(b.order_details_id) AS total_order
FROM
  `pizza-sales-478918.Pizzahut.pizzas` AS a
JOIN
  `Pizzahut.order_details` AS b
ON
  a.pizza_id = b.pizza_id
GROUP BY
  a.size
ORDER BY
  total_order DESC; 
  
  #List the top 5 most ordered pizza types along

SELECT
  a.string_field_1,
  SUM(s.quantity) AS quantity
FROM
  `pizza-sales-478918.Pizzahut.pizza_types` AS a
JOIN
  `pizza-sales-478918.Pizzahut.pizzas` AS b
ON
  a.string_field_0 = b.pizza_type_id
JOIN
  `Pizzahut.order_details` AS s
ON
  s.pizza_id=b.pizza_id
GROUP BY
  string_field_1
ORDER BY
  quantity
LIMIT 5; 
  
  #Determine the distribution OF orders BY hour OF the day.
SELECT
  EXTRACT(hour
  FROM
    time) AS hour,
  COUNT(order_id) AS order_id
FROM
  `Pizzahut.orders`
GROUP BY hour;


#Join relevant tables to find the category-wise distribution of pizzas.

select string_field_2 as category,count(string_field_1) as name  ,
 from `pizza-sales-478918.Pizzahut.pizza_types`
 group by category

#Group the orders by date and calculate the average number of pizzas ordered per day.


