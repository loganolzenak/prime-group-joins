SELECT * FROM customers
JOIN addresses on customer_id = customers.id; -- lisa (2), charles(1), george (1), lucy (2)

select * from orders
join line_items on order_id = orders.id; -- done #2 these are the ids that came up(1, 1, 2, 4, 5, 6, 7)

select 
	warehouse.warehouse
 from warehouse_product
join products on products.id = warehouse_product.product_id
join warehouse on warehouse.id = warehouse_product.warehouse_id
where products.description = ('cheetos'); --#3 done (delta warehouse)

select warehouse.warehouse
from warehouse_product
join products on products.id = warehouse_product.product_id
join warehouse on warehouse.id = warehouse_product.warehouse_id
where products.description = ('diet pepsi'); -- #4 done (alpha delta gamma)


select distinct 
customers.first_name,
customers.last_name,
count(*) 
from customers
join addresses on addresses.customer_id = customers.id
join orders on orders.address_id = addresses.id
group by 
customers.first_name,
customers.last_name; -- #5 done (lucy 3, lisa 3, charles 1)


select count(*)from customers; -- #6 done (4)


select count(*) from products; -- #7 done (7)


select sum(on_hand) from products
join warehouse_product on products.id = warehouse_product.product_id
where products.description = ('diet pepsi'); -- #8 done (92)