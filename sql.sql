use checkpoint;
select* From customer;
select productName,Category From product where Price between 5000 and 10000;
select * from product ORDER BY Price desc;
select count(*), avg(Totalamount), min(Totalamount), max(Totalamount) From orders;
ALTER TABLE orders ADD COLUMN orderID varchar(20);
select CustomerID from orders group by CustomerID having count(orderID)>2;
select extract(month from OrderDate)as month,count(orderID) from orders 
where extract(year from OrderDate)=2020
group by month order by month desc;
ALTER TABLE orders DROP COLUMN orderID;
ALTER TABLE orders ADD COLUMN orderID VARCHAR(20) PRIMARY KEY;
/*For each order, display the product_name, the customer_name and the date of the order*/
select product.ProductName,customer.customerName, Orders.OrderDate
FROM orders
inner JOIN product ON Orders.ProductID = Product.ProductID
inner JOIN Customer ON Orders.CustomerID = Customer.CustomerID;
/*Display all the orders made three months ago */
SELECT * FROM Orders
WHERE OrderDate between current-date and "03";
/*Display customers (customer_id) who have never ordered a product*/ 
Select CustomerID
FROM customer
WHERE CustomerID NOT IN (SELECT CustomerID FROM Orders);




