--video 1

select
	product_name 
	, category_id
	, size
	, price	
from
	inventory.products p 
where 
	price  > 20;
	
select 
	size as product_size
	, count(*) as number_of_products
from
	inventory.products p
group by
	size
having
	count(*) > 10 
order by
	size desc;

-- video 2
select 
	sku
	, product_name
	, size
	, price
from
	inventory.products p;
	


select
	product_name
	, count(*) as number_of_products
	, max(price) as highest_price
	, max(size) as largest_size
	, min(price) as lowest_price
	, avg(price) as average_price
from
	inventory.products p 
group by
	product_name;