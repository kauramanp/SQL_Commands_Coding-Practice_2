--- Write the queries for the following scenarios:

--- Create a table ​employee with the following structure.
--- Id int (primary key); Name varchar; Department varchar; Salary float;
use ecommerce;
CREATE TABLE IF NOT EXISTS employee (
id int NOT NULL PRIMARY KEY,
name varchar(50) NOT NULL,
department varchar(50) NOT NULL,
salary float
);

--- Insert at least 3 employee records in the table
INSERT INTO employee values(1,"aman","IT",12000);
INSERT INTO employee values(2,"Bhuvan","HR",15000);
INSERT INTO employee values(3,"Chandan","Admin",18000);

Select * from employee;

--- Display the details of 2 employees who gain max salary and second max salary using ‘limit’
Select * from employee order by salary desc limit 2;

--- Use a case statement to display the daily task based on the department
SELECT name,department,CASE
WHEN department = 'Admin'  THEN "Complete the system configuration"
WHEN department = 'HR' THEN "Complete the Recruitment process"
WHEN department = 'IT' THEN "Complete the Development of new updates"
ELSE "department undefined"END as Work
FROM employee;

--- Set offset, limit to 2, and display all the attributes from the table employee.
select * from employee limit 2 offset 2;
