-- Check Customers Table Presence
SELECT *
FROM information_schema.tables 
WHERE table_schema = 'classicmodels' AND table_name = 'customers';

-- Check Orders Table Presence
SELECT *
FROM information_schema.tables 
WHERE table_schema = 'classicmodels' AND table_name = 'orders';

-- Check name conventions of all the tables
SELECT table_name
FROM information_schema.tables 
WHERE table_schema = 'classicmodels'
AND NOT (table_name REGEXP '^[a-z]+$' AND table_name LIKE '%s%');

-- Check columns in the customer table
SELECT COLUMN_NAME, DATA_TYPE
FROM information_schema.columns 
WHERE table_schema = 'classicmodels' AND table_name = 'customers';

-- Check Data Types in Orders Table
SELECT COLUMN_NAME, DATA_TYPE
FROM information_schema.columns 
WHERE table_schema = 'classicmodels' AND table_name = 'orders';

-- Check Size of customerName Column in Customers Table
SELECT COLUMN_NAME, CHARACTER_MAXIMUM_LENGTH
FROM information_schema.columns 
WHERE table_schema = 'classicmodels' AND table_name = 'customers' AND column_name = 'customerName';

-- Check Null Constraint on customerNumber in Customers Table
SELECT COLUMN_NAME, IS_NULLABLE
FROM information_schema.columns 
WHERE table_schema = 'classicmodels' AND table_name = 'customers' AND column_name = 'customerNumber';

-- Check Primary Key for customerNumber in Customers Table
SELECT *
FROM information_schema.key_column_usage 
WHERE table_schema = 'classicmodels' AND table_name = 'customers' AND column_name = 'customerNumber' AND constraint_name = 'PRIMARY';

-- Check Foreign Key Constraints for customerNumber in Orders Table
SELECT *
FROM information_schema.key_column_usage 
WHERE table_schema = 'classicmodels' AND table_name = 'orders' AND column_name = 'customerNumber' AND referenced_table_name = 'customers';

-- Check Presence of orderDate Column in Orders Table
SELECT *
FROM information_schema.columns 
WHERE table_schema = 'classicmodels' AND table_name = 'orders' AND column_name = 'orderDate';

-- Check for Unique Constraint on orderNumber in Orders Tabl
SELECT *
FROM information_schema.table_constraints 
WHERE table_schema = 'classicmodels' AND table_name = 'orders' AND constraint_type = 'UNIQUE' AND constraint_name = 'orderNumber';

-- Check for Cascade Delete on Customer in Orders Table
SELECT REFERENCED_TABLE_NAME, REFERENCED_COLUMN_NAME, DELETE_RULE 
FROM information_schema.key_column_usage 
WHERE table_schema = 'classicmodels' AND table_name = 'orders' AND column_name = 'customerNumber';


 --Check for Index on customerName in Customers Table
 SHOW INDEX FROM customers WHERE Column_name = 'customerName';

--Check Default Value of status Column in Orders Table
SELECT COLUMN_NAME, COLUMN_DEFAULT
FROM information_schema.columns 
WHERE table_schema = 'classicmodels' AND table_name = 'orders' AND column_name = 'status';

-- Check Unique Constraint on email in Employees Table
SELECT *
FROM information_schema.table_constraints 
WHERE table_schema = 'your_database_name' AND table_name = 'employees' AND constraint_type = 'UNIQUE' AND constraint_name = 'email';

