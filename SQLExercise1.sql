select * from Suppliers

--How many tables are in the northwind database?
select COUNT(*) from sys.tables;

--What is the name of the table that lists the categories of products sold?
select * from Categories

--What is the name of the table that lists the products sold?
select * from Products;

--What is the name of the table that lists the names of the suppliers of products?
select * from Suppliers

--List all category data
select * from Categories;

--List category id and category name of all categories sorted by id
select CategoryID,CategoryName from Categories order by CategoryID 

--List the id, product name, and unit price of all products
select ProductID,ProductName,UnitPrice from Products

--List the id, product name, and unit price of all products that cost less that $10.00
select ProductID,ProductName,UnitPrice from Products where UnitPrice<=10;

--Do a join between categories and products so that you can list the id, product name, unit price, and category name of all products
select ProductID,ProductName,UnitPrice,CategoryName from Products P inner join  Categories C on P.CategoryID=C.CategoryID

List the product id, product name, unit price, category name, and  supplier name of all products that cost between %5.00 and $20.00

select ProductID,ProductName,UnitPrice,CategoryName ,ContactName SupplierName
from Products P 
inner join  Categories C on P.CategoryID=C.CategoryID
inner join Suppliers S on S.SupplierID=P.SupplierID
where UnitPrice>=5 and UnitPrice<=20

