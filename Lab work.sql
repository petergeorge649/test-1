--1.Write a SELECT statement that lists the customerid along with their account number, type, the city the customer lives in and their postalcode.

SELECT * FROM adventureworks.customeraddress;

SELECT c.CustomerID, c.AccountNumber, c.CustomerType, a.City, a.PostalCode
FROM adventureworks.customer c
JOIN adventureworks.customeraddress ca

--2.Write a SELECT statement that lists the 20 most recently launched products, their name and colour
SELECT p.ProductID, p.Color, P.Name FROM product p;
FROM product Product Product p
order by SellStartDate DESC
LIMIT 20;

--3.Write a SELECT statement that shows how many products are on each shelf in 2/5/98

SELECT count(i.ProductID), i.Shelf, p.ProductSubcategoryID
from productinventory i
join product p on i.ProductID=p.ProductID
where i.ModifiedDate = '1998-05-02 00:00:00'
group by Shelf, p.ProductSubcategoryID, i.ModifiedDate

--4.I am trying to track down a vendor email address… his name is Stuart and he works at G&K Bicycle Corp. Can you help?
select FirstName, LastName, VendorID, EmailAddress
from contact 
WHERE FirstName LIKE 'stuart'
join vendorcontact vc using (ContactID)
join vendor using(VendorID)

--5.What’s the total sales tax amount for sales to Germany? What’s the top region in Germany by sales tax?
select * from adventureworks.salestaxrate
where NAME = 'Germany Output Tax';

--6.Summarise the distinct # transactions by month
SELECT COUNT(DISTINCT transactionhistory) AS transactionsbymonth
FROM adventureworks.transactionhistory;

--7.Which ( if any) of the sales people exceeded their sales quota this year and last year?
select SalesPersonID, SalesQuota, SalesYTD, SalesLastYear from salesperson
where SalesYTD>SalesQuota AND SalesLastYear > SalesQuota;

--8.Do all products in the inventory have photos in the database and a text product descriptions? 
select count(ProductID), productinventory
JOIN product on ProdzctID=ProductID
where  productphoto= 'prod

--9.What's the average unit price of each product name on purchase orders which were not fully, but at least partially rejected?
SELECT AVG(price) FROM ListPrice
WHERE
How many engineers are on the employee list? Have they taken any sickleave?
SELECT * FROM adventureworks.employee;
SELECT count(employeeid) AS sickleavehoursFROM employeegroup by 'engineer'
--11.How many days difference on average between the planned and actual end date of workorders in the painting stages?
SELECT NAME, AVG(DATEDIFF( ActualEndDate, ScheduledEndDate ))
FROM workorderrouting 
JOIN location USING (LocationID)
WHERE NAME LIKE '%aint%'
GROUP BY NAME
