
-- task_1: Create a database named ‘computerstore’
create database computerstore;

use computerstore;


-- task_2: Create the tables based on the below schema: 
create table manufacturers (
code int primary key,
name char(50) not null
);

create table products (
code int primary key,
name varchar(50) not null,
price float not null,
manufacturer int not null,
foreign key (manufacturer) references manufacturers(code)
);

-- task_3: Insert the following data into the tables
insert into manufacturers (code,name) values
(1, 'Sony'),
(2, 'Asus'),
(3, 'Hewlett-Packard'),
(4, 'Lenovo'),
(5, 'Fujitsu'),
(6, 'SanDisk');

select * from manufacturers;

insert into products (code, name, price, manufacturer) values
(1, 'Hard drive', 64.89, 5),
(2, 'Memory Card', 17.99, 6),
(3, 'Laptop charger', 42.29, 4),
(4, 'USB Flash Drive', 10, 6),
(5, 'Monitor', 219.99, 1),
(6, 'HDMI cable', 18.29, 2),
(7, 'Gaming laptop', 2079.59, 2),
(8, 'Printer', 96.32, 3),
(9, 'Toner cartridge', 59, 3),
(10, 'Computer case', 158.92, 2);

select * from products;


-- task_4: Check that all the records were inserted in the Manufacturers table
select * from manufacturers;


-- task_5: Check that all the records were inserted in the Products table
select * from products;



-- task_6: Select the names of all the products in the store.
select name from products;


-- task_7: Select the names and the prices of all the products in the store.
select name, price from products;


-- task_8: Select the name of the products with a price less than or equal to $200
select name from products
where price <= 200;


-- task_9: Select all the products with a price between $60 and $120
/* with BETWEEN */
select * from products 
where price between 60 and 120;

/* with AND */
select * from products 
where price >= 60 and price <= 120;


-- task_10: Select the name and price in cents (i.e., the price must be multiplied by 100).
select name, price*100 from products;

/* with AS */
select name, price*100 as PriceCents from products;


-- task_11: Compute the average price of all the products
select avg(price) from products;


-- task_11.1
/* with SELECT in SELECT */
select avg(price) from products
where manufacturer = (select code from manufacturers where name = 'Asus');

/* with INNER JOIN */
select avg(price) from products
inner join manufacturers on products.manufacturer = manufacturers.code
where manufacturers.name = 'Asus';


-- task_12: Compute the average price of all products with manufacturer code equal to 2.
select avg(price) from products
where manufacturer = 2;


-- task_13: Compute the number of products with a price larger than or equal to $180 
select count(*) from products
where price >= 180;


-- task_14: Select the name and price of all products with a price larger than or equal to $180, and sort first by price (in descending order), and then by name (in ascending order) 
select name, price from products
where price >= 180 order by price desc, name asc;


select * from manufacturers;
select * from products;


-- task_15: Select all the data from the products, including all the data for each product's manufacturer
select * from products
left join manufacturers on products.manufacturer = manufacturers.code;


-- task_16: Select the product name, price, and manufacturer name of all the products
select products.name, price, manufacturers.name from products
inner join manufacturers on products.manufacturer = manufacturers.code;


-- task_17: Select the average price of each manufacturer's products, showing only the manufacturer's code
select avg(price), manufacturer from products
group by manufacturer;


-- task_18: Select the average price of each manufacturer's products, showing the manufacturer's name
select avg(price), manufacturers.name from products
inner join manufacturers on products.manufacturer = manufacturers.code
group by manufacturers.name;


-- task_19: Select the name and price of the cheapest product.
select name, price from products
order by price asc limit 1;

select * from products
where price = (select min(price) from products);


-- task_20: Add a new product: Loudspeakers, $70, manufacturer 2.
insert into products
values (11, 'Loudspeakers', 70,2);

select * from products;

-- task_21: Update the name of product 8 to "Laser Printer"
update products
set name = 'Laser Printer'
where code = 8;

select * from products;

-- task_22: Apply a 10% discount to all products.
update products
set price = price - (price*0.1);


-- task_23: Apply a 15% discount to all products with a price larger than or equal to $120
update products
set price = price - (price*0.15)
where price >= 120;


-- task_24: Select the product with the smallest price where the manufacturer is 2
select min(price) from products
where manufacturer = 2;


-- task_25: Select all products where manufacturers are Sony, Asus and Lenovo
select * from products
where manufacturer in (select code from manufacturers where name in ('Sony', 'Asus', 'Lenovo'));


select * from products
inner join manufacturers on products.manufacturer = manufacturers.code
where manufacturers.name = 'Sony' or manufacturers.name = 'Asus' or manufacturers.name = 'Lenovo';

















