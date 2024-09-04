-- CRUD_TC_01: Verify insertion into Customers table
INSERT INTO customers (customerNumber, customerName, contactLastName, contactFirstName, phone, addressLine1, city, country)
VALUES (501, 'Test Customer2', 'LastName1', 'FirstName1', '1234567890', 'Address 1', 'City', 'Country');

-- CRUD_TC_02: Verify retrieval of data from Products table
SELECT * FROM products WHERE productCode = 'S10_1949';

-- CRUD_TC_03: Verify update of Orders status
UPDATE orders SET status = 'Resolved' WHERE orderNumber = 10164;

-- CRUD_TC_04: Verify deletion of a record from Employees table
DELETE FROM employees WHERE employeeNumber = 1076;

-- CRUD_TC_05: Verify batch insertion of multiple records into OrderDetails
INSERT INTO orderdetails (orderNumber, productCode, quantityOrdered, priceEach, orderLineNumber)
VALUES (10204, 'S10_1678', 10, 15.00, 1);