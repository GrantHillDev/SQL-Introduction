-- select * from categories;
-- select * from products;

-- find all products
select * from products;
-- find all products that cost $1400
select * from products -- select * from products;//the semicolon isn't used until the end of the coding sequence, which in this case happens to be on two different lines, so the semicolon acts as the actual ending of that line of code in SQL.
where price = 1400;
-- find all products that cost $11.99 or $13.99
select * from products
where price = 11.99 or price = 13.99; -- where price = 11.99 or 13.99;//need to be speicific here.
-- find all products that do NOT cost 11.99 - using NOT
select * from products
where not price = 11.99;
-- find all products and sort them by price from greatest to least
select * from products -- this is how you build a query; by looking at all of the data from all of the tables.
order by price desc; -- order by price;//default order by functioanlity has items with the least value starting form the top, and then the greaest valued items at the bottom.
-- find all employees who don't have a middle initial
select * from employees
where middleinitial is null; -- where middle initial is null;//cannot have a spcae between category types.
-- find distinct product prices
select distinct(price) from products;
-- find all employees whose first name starts with the letter ‘j’
select * from employees -- //% sign must be used in tandem with the like keyword.
where firstname like 'j%'; -- The % sign acts like more of a generality; a wild card, at least if it's typed in at the very end, as opposed to the start (%j [this insinuates that the letter j would be specified at the end of a first name in this contect] versus j% [this suggests that j could be at the beggining of the first name]). There's also '%j%' which seems ot showcase first names that or end with the letter j here.
-- find all Macbooks
select * from products
where name like '%macbook%';
-- find all products that are on sale
select * from products
where onsale = 1;
-- find the average price of all products
select avg(price) from products;
-- find all Geek Squad employees who don't have a middle initial
select * from employees
where title like '%geek squad%' and middleinitial is null; -- //where title like '%geek squad%' && middleinitial is null; I'm so used to utilzing the && operators in C#.... that I used them here in SQL, lol.... and SQL didn't even throw compile error nor a run time error.
-- find all products from the products table whose stock level is in the range -- of 500 to 1200. Order by Price from least to greatest. Hint: Use the between keyword
select * from products
where stocklevel between 500 and 1200
order by price asc;