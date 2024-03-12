select product_name 
from orders
JOIN customers on customers.id = customer_id
WHERE LOWER(name) = LOWER(:name);

