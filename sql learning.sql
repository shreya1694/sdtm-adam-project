USE Sales;
CREATE TABLE Sales
(
purchase_number INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
date_of_purchase DATE NOT NULL,
customer_id INT,
item_code VARCHAR(10) NOT NULL
);

CREATE TABLE Customers
(
customer_id INT NOT NULL PRIMARY KEY,
first_name VARCHAR(255) NOT NULL,
last_name VARCHAR(255),
email_id VARCHAR(255),
number_of_complaints INT
);

CREATE DATABASE Orders;
USE Orders;
CREATE TABLE Orders
(
order_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
order_date DATE NOT NULL,
order_info_id INT,
order_currency VARCHAR(10)
);
CREATE TABLE Order_info
(
order_info_id INT NOT NULL PRIMARY KEY,
order_id INT,
product_id INT,
product_quantity INT
);

CREATE TABLE products
(
product_id INT PRIMARY KEY NOT NULL,
product_price INT,
warehouse_id INT
);

CREATE TABLE warehouses
(
warehouse_id INT PRIMARY KEY NOT NULL,
warehouse_location VARCHAR (20)
);

CREATE TABLE deliveries
(
delivery_id INT PRIMARY KEY,
delivery_date DATE,
warehouse_id INT
);
USE Sales;
SELECT * FROM Customers;

SELECT * FROM Sales.Customers;
SELECT * FROM Sales.Sales;
DROP TABLE Sales.Sales;

CREATE TABLE Sales
(
purchase_number INT NOT NULL AUTO_INCREMENT,
date_of_purchase DATE NOT NULL,
customer_id INT,
item_code VARCHAR(10) NOT NULL,
PRIMARY KEY (purchase_number)
);
DROP TABLE Customers;
CREATE TABLE Customers
(
customer_id INT,
first_name VARCHAR(255),
last_name VARCHAR(255),
email_address VARCHAR (255),
number_of_complaints INT,
PRIMARY KEY (customer_id)
);
CREATE TABLE Items
(
item_code VARCHAR(255),
item VARCHAR (255),
unit_price NUMERIC (10,2),
company_id VARCHAR (255),
PRIMARY KEY (item_code)
);
DROP TABLE companies;
CREATE TABLE companies
(
company_id VARCHAR (255),
company_name VARCHAR (255),
headquaters_phone_number INT,
PRIMARY KEY (company_id)
);

DROP TABLE sales;

CREATE TABLE Sales
(
purchase_number INT NOT NULL AUTO_INCREMENT,
date_of_purchase DATE NOT NULL,
customer_id INT NOT NULL,
item_code VARCHAR(10) NOT NULL,
PRIMARY KEY (purchase_number)
);

ALTER TABLE Sales
ADD FOREIGN KEY (customer_id) REFERENCES Customers(customer_id) ON DELETE CASCADE;

ALTER TABLE Sales
DROP FOREIGN KEY sales_ibfk_1;

DROP TABLE Sales;
DROP TABLE comapnies;
DROP TABLE items;
DROP TABLE Customers;


CREATE TABLE Customers
(
customer_id INT,
first_name VARCHAR(255),
last_name VARCHAR (255),
email_address VARCHAR (255),
nunber_of_complaints Int,
PRIMARY KEY (customer_id),
UNIQUE KEY (email_address)
)
DROP TABLE Customers;


CREATE TABLE Customers
(customer_id INT,
first_name VARCHAR (255),
last_name VARCHAR (255),
email_address VARCHAR (255),
number_of_complaints INT,
PRIMARY KEY (customer_id)
)

ALTER TABLE Customers
ADD UNIQUE KEY (email_address)

ALTER TABLE Customers
DROP INDEX email_address;

ALTER TABLE Customers
ADD Column Gender ENUM ('M','F') AFTER last_name;

INSERT INTO Customers(first_name,last_name,gender,email_address,number_of_complaints)
VALUES ('John', 'Mackinley','M','john.mckinley@365careers.com','0')



DROP TABLE Customers;
CREATE TABLE Customers
(
customer_id INT PRIMARY KEY AUTO_INCREMENT,
first_name VARCHAR (255) NOT NULL,
last_name VARCHAR (255) NOT NULL,
gender ENUM('M','F'),
email_address VARCHAR (255) UNIQUE KEY,
number_of_complaints INT DEFAULT '0'
)

INSERT INTO Customers (first_name,last_name,gender,email_address,number_of_complaints)
VALUES ('Jhon','Mackinley','M','john.mckinley@365careers.com','0');

DROP TABLE Customers;

CREATE TABLE Customers
(
customer_id INT AUTO_INCREMENT,
first_name VARCHAR (255) NOT NULL,
last_name VARCHAR (255) NOT NULL,
gender ENUM ('M','F'),
email_address VARCHAR (255) UNIQUE KEY,
number_of_complaints INT,
PRIMARY KEY (customer_id)
)

ALTER TABLE Customers
CHANGE COLUMN number_of_complaints number_of_complaints INT DEFAULT 0;

INSERT INTO Customers (first_name,last_name,gender,email_address,number_of_complaints)
VALUES ('Jhon','Mackinley','M','john.mclinley@365careers.com','0');

INSERT INTO Customers(first_name,last_name,gender)
VALUES('PETER','FIGARO','M');

SELECT*FROM Customers;

ALTER TABLE Customers
ALTER COLUMN number_of_complaints DROP DEFAULT;


CREATE TABLE Companies
(
company_id VARCHAR (255) PRIMARY KEY,
company_name VARCHAR (255) DEFAULT 'X',
headquarters_phone_number VARCHAR (255) UNIQUE KEY
)
DROP TABLE Companies;

CREATE TABLE products
(
product_id INT AUTO_INCREMENT PRIMARY KEY,
product_name VARCHAR (20) DEFAULT 'no-name',
product_price INT,
warehouse_id INT,
FOREIGN KEY (warehouse_id) REFERENCES warehouses (warehouse_id),
UNIQUE KEY (product_name)
)

CREATE TABLE Companies
(company_id INT AUTO_INCREMENT PRIMARY KEY,
headquaters_phone_number VARCHAR (255) UNIQUE KEY,
company_name VARCHAR (255) NOT NULL)

ALTER TABLE Companies
MODIFY company_name VARCHAR (255) NULL;

ALTER TABLE Companies
MODIFY company_name VARCHAR (255) NOT NULL;

INSERT INTO Companies (headquaters_phone_number,company_name)
Values ('+1 (202) 555-0196','Company A')

SELECT 
    *
FROM
    Sales.Companies;

USE Sales;
CREATE TABLE Test (
    numbers INT(10),
    words 	VARCHAR(20)
);

USE employees;

SELECT first_name,last_name 
FROM employees;
Select * From employees;
SELECT dept_no FROM departments;
SELECT*FROM employees.employees;


SELECT*FROM employees WHERE first_name = 'Denis';

SELECT*FROM employees WHERE first_name = 'Elvis';

SELECT * FROM employees WHERE first_name = 'Denis' AND last_name = 'BACK';
SELECT * FROM employees WHERE first_name = 'Denis' AND gender = 'M';

SELECT*FROM employees WHERE first_name = 'Kellie' AND gender = 'F';


SELECT * FROM employees WHERE first_name = 'Denis' OR first_name ='Elvis';
SELECT * FROM employees WHERE first_name = 'Kellie' OR first_name = 'Aruna';

SELECT * FROM employees WHERE last_name = 'Denis' AND (gender = 'M' OR gender = 'F');

SELECT * FROM employees WHERE (first_name = 'Kellie' OR first_name= 'Aruna') AND gender ='F';
SELECT * FROM employees WHERE gender = 'F' AND first_name ='Aruna';

SELECT * FROM employees WHERE first_name IN ('Cathie', 'Mark', 'Nathan');
SELECT * FROM employees WHERE first_name NOT IN ('Cathie', 'Mark', 'Nathan');
SELECT * FROM employees WHERE first_name IN ('Denis', 'Elvis');

SELECT * FROM employees WHERE first_name NOT IN ('John','Mark','Jacob');

SELECT * FROM employees WHERE first_name LIKE ('Mar%');
SELECT * FROM employees WHERE first_name LIKE ('%Mar');
SELECT * FROM employees WHERE first_name LIKE ('%mar%');
SELECT * FROM employees WHERE first_name LIKE ('mar_');
SELECT * FROM employees WHERE first_name NOT LIKE ('mar%');
SELECT * FROM employees WHERE hire_date LIKE ('%2000%');
SELECT * FROM employees WHERE emp_no LIKE ('1000_');
SELECT * FROM employees WHERE birth_date;
SELECT * FROM employees WHERE first_name LIKE ('Mar*');
SELECT * FROM employees WHERE first_name LIKE ('%Jack%');
SELECT * FROM employees WHERE first_name NOT LIKE ('%Jack%');
SELECT * FROM employees WHERE hire_date BETWEEN '1990-01-01' AND '2000-01-01';
SELECT * FROM employees WHERE hire_date NOT BETWEEN '1990-01-01' AND '2000-01-01';
SELECT * FROM salaries WHERE salary BETWEEN '66000' AND '70000';
SELECT * FROM employees WHERE emp_no NOT BETWEEN '10004' AND '10012';
SELECT * FROM salaries WHERE emp_no NOT BETWEEN '10004' AND '10012';
SELECT * FROM departments WHERE dept_no BETWEEN 'd003' AND 'd006';
SELECT dept_name FROM departments WHERE dept_no BETWEEN 'd003' AND 'd006';
SELECT * FROM employees WHERE first_name IS NULL;
SELECT * FROM employees WHERE first_name IS NOT NULL;
SELECT * FROM departments WHERE dept_no IS NOT NULL;
SELECT * FROM departments WHERE dept_no IS NULL;
SELECT * FROM employees WHERE first_name = 'Mark';
SELECT * FROM employees  WHERE first_name != 'Mark';
SELECT * FROM employees WHERE hire_date > '2000-01-01';
SELECT * FROM employees WHERE hire_date >= '2000-01-01';
SELECT * FROM employees WHERE hire_date <= '1985-02-01';
SELECT * FROM employees WHERE gender = 'F' AND hire_date >= '2000-01-01';
SELECT * FROM salaries WHERE salary >'150000';
SELECT gender FROM employees;
SELECT DISTINCT gender FROM employees;
SELECT DISTINCT hire_date FROM employees;
SELECT COUNT(emp_no) FROM employees;
SELECT COUNT(DISTINCT first_name) FROM employees;
SELECT COUNT(*) FROM salaries WHERE salary >='100000';
SELECT COUNT(*) FROM dept_manager;
SELECT * FROM employees ORDER BY first_name ASC;
SELECT * FROM employees ORDER BY first_name DESC;
SELECT * FROM employees ORDER BY first_name;
SELECT * FROM employees ORDER BY emp_no;
SELECT * FROM employees ORDER BY emp_no DESC;
SELECT * FROM employees ORDER BY first_name,last_name;
SELECT * FROM employees ORDER BY hire_date DESC;
SELECT  first_name FROM employees GROUP BY first_name;
SELECT COUNT(first_name) FROM employees GROUP BY first_name;
SELECT first_name, COUNT(first_name) FROM employees GROUP BY first_name;
SELECT first_name, COUNT(first_name)
FROM employees
GROUP BY first_name
ORDER BY first_name DESC;
SELECT first_name, COUNT(first_name) AS name_count 
FROM employees
GROUP BY first_name
ORDER BY first_name DESC;
SELECT first_name AS names_ ,COUNT(first_name) AS name_count
FROM employees
GROUP BY first_name
ORDER BY first_name;
SELECT salary, COUNT(emp_no) AS emps_with_same_salary 
FROM salaries
WHERE salary > '80000'
GROUP BY salary
ORDER BY salary ;
SELECT title, COUNT(title) AS emps_with_same_job_title
FROM titles
WHERE to_date ='1999-01-01'
GROUP BY title;
SELECT first_name, COUNT(first_name) AS name_count
FROM employees
GROUP BY first_name
HAVING COUNT(first_name)>250
ORDER BY first_name;
SELECT emp_no, AVG(salary)
FROM salaries
GROUP BY emp_no
HAVING AVG(Salary)>120000
ORDER BY emp_no;

SELECT first_name,hire_date, COUNT(first_name) AS name_count
FROM employees
WHERE hire_date > '1999-01-01'
GROUP BY first_name, hire_date
HAVING COUNT(first_name)<200
ORDER BY hire_date;

SELECT first_name, COUNT(first_name) AS name_count
FROM employees
WHERE hire_date > '1999-01-01'
GROUP BY first_name
HAVING COUNT(first_name)<200
ORDER BY first_name;

SELECT emp_no, COUNT(emp_no) AS emp_count
FROM dept_emp
WHERE from_date > '2000-01-01'
GROUP BY emp_no
HAVING COUNT(emp_no) > 1
ORDER BY emp_no DESC;

SELECT * FROM dept_emp 
LIMIT 100;

SELECT * FROM employees
ORDER BY emp_no DESC
limit 10;

INSERT INTO employees
(emp_no,birth_date,first_name,last_name,gender,hire_date)
VALUES
(999901,'1986-04-21','John','Smith' ,'M','2011-01-01');

INSERT INTO employees
VALUES(999902,'1973-03-26','Patracia','Lawrence','F','2005-01-01');
INSERT INTO employees
VALUES (999903,'1997-09-14','Johnathan','Creek','M','1999-01-01');
SELECT * FROM titles 
ORDER BY emp_no DESC
limit 10;
INSERT INTO titles  (emp_no,title,from_date)
VALUES (999903,'Senior Engineer','1997-10-1');
SELECT * FROM dept_emp
ORDER BY emp_no DESC
limit 10;
INSERT INTO dept_emp
VALUES (999903,'d005','1997-10-01','9999-01-01');

SELECT * FROM departments
limit 10;
CREATE TABLE departments_dups
(
dept_no CHAR(4) NOT NULL,
dept_name VARCHAR(40) NOT NULL);
SELECT * FROM departments_dups
LIMIT 10;
INSERT INTO departments_dups
(dept_no, dept_name)
SELECT * FROM departments;

INSERT INTO departments
VALUES ('d010', 'Business Analysis');
SELECT * from departments
ORDER BY dept_no DESC
limit 10;
USE employees;
SELECT * FROM employees
WHERE emp_no = 999901;
UPDATE employees
SET 
first_name = 'Stella',
last_name = 'Parkinson',
birth_date = '1990-12-31',
gender = 'F'
WHERE 
emp_no= 999901;

SELECT * FROM departments_dups
ORDER BY dept_no;
COMMIT;
UPDATE departments_dups
SET dept_no = 'd011',
dept_name = 'Quality Control';
ROLLBACK;
DROP TABLE departments_dups;
CREATE TABLE departments_dups
(
dept_no CHAR(4) NOT NULL,
dept_name VARCHAR(40) NOT NULL);
SELECT * FROM departments_dups
LIMIT 10;
INSERT INTO departments_dups
(dept_no, dept_name)
SELECT * FROM departments;
UPDATE departments_dups
SET dept_name = 'Data Analysis'
WHERE dept_no = 'd010';
USE employees;
COMMIT;
SELECT * FROM employees WHERE emp_no = 999903;
SELECT * FROM titles WHERE emp_no = 999903;
DELETE FROM employees WHERE emp_no = 999903;
ROLLBACK;

SELECT * FROM departments_dups ORDER BY dept_no;
DELETE FROM departments_dups;
ROLLBACK;
SELECT * FROM departments WHERE dept_no = 'd010';
DELETE FROM departments WHERE dept_no = 'd010';
ROLLBACK;

SELECT * FROM salaries ORDER BY salary DESC LIMIT 10;
SELECT COUNT(salary) FROM salaries;
SELECT COUNT(from_date) FROM salaries;
SELECT COUNT(DISTINCT from_date) FROM salaries;
SELECT COUNT(to_date) FROM dept_emp;
SELECT COUNT(from_date) FROM dept_emp;
SELECT COUNT(*) FROM dept_emp WHERE from_date;
SELECT COUNT(*) FROM dept_emp;
SELECT COUNT(DISTINCT dept_no) FROM dept_emp;
SELECT SUM(salary) FROM salaries;
SELECT SUM(salary) FROM salaries WHERE from_date > '1997-01-01';
SELECT MAX(salary) FROM salaries;
SELECT MIN(salary) FROM salaries;
SELECT MAX(emp_no) FROM employees;
SELECT MIN(emp_no) FROM employees;
SELECT emp_no, salary, from_date, to_date FROM salaries WHERE salary = (SELECT MAX(salary) FROM salaries);
SELECT AVG(salary) FROM salaries;
SELECT AVG(salary) FROM salaries where from_date > '1997-01-01';
SELECT ROUND(AVG(salary)) FROM salaries;
SELECT ROUND(AVG(salary),2) FROM salaries;
SELECT ROUND(AVG(salary),2) FROM salaries WHERE from_date > '1997-01-01';
DELETE FROM departments_dups WHERE dept_no = 'd010';
SELECT * FROM departments_dups ORDER BY dept_no;
ALTER TABLE departments_dups
CHANGE COLUMN dept_name dept_name VARCHAR(40) NULL;
INSERT INTO departments_dups(dept_no) VALUES ('d010'),('d011');
ALTER TABLE departments_dups
ADD COLUMN dept_manager VARCHAR(255) NULL AFTER dept_name;
SELECT * FROM departments_dups ORDER BY dept_no;
SELECT dept_no,IFNULL(dept_name,'Deparment not provided') AS dept_name, 
IFNULL(dept_manager, 'N/A') 
FROM departments_dups
ORDER BY dept_no;
SELECT dept_no, COALESCE(dept_name, 'Department name not provided')
FROM departments_dups
ORDER BY dept_no;
SELECT dept_no,dept_name, COALESCE(dept_manager,dept_name,'N/A') AS dept_manager
FROM departments_dups
ORDER BY dept_no;
SELECT dept_no, dept_name, COALESCE('department manager name') AS fake_col
FROM departments_dups
ORDER BY dept_no;
SELECT dept_no, dept_name, COALESCE(dept_no, dept_name) AS dept_info
FROM departments_dups
ORDER BY dept_no;
SELECT IFNULL(dept_no,'N/A') AS dept_no, IFNULL(dept_name, 'Department name not provided') AS dept_no,
COALESCE(dept_no,dept_name) AS dept_info
FROM departments_dups
ORDER BY dept_no;
ALTER TABLE departments_dups DROP COLUMN dept_manager;

ALTER TABLE departments_dups
CHANGE COLUMN dept_no dept_no CHAR(4) NULL;

ALTER TABLE departments_dups
CHANGE COLUMN dept_name dept_name VARCHAR(40) NULL;

INSERT INTO departments_dups(dept_name)
VALUE ('Public Relations');

SELECT * FROM departments_dups ORDER BY dept_no;
DELETE FROM departments_dups WHERE dept_no = 'd002';

DROP TABLE IF EXISTS dept_manager_dups;

CREATE TABLE dept_manager_dup
(
emp_no INT(11) NOT NULL,
dept_no CHAR(4) NULL,
from_date DATE NOT NULL,
to_date DATE NULL);

INSERT INTO dept_manager_dup
SELECT * FROM dept_manager;
SELECT* FROM dept_manager_dup ORDER BY dept_no;
SELECT * FROM departments_dups ORDER BY dept_no;

INSERT INTO dept_manager_dup (emp_no, from_date)
VALUES (999904, '2017-01-01'),(999905, '2017-01-01'),
(999906, '2017-01-01'),(999907, '2017-01-01');

DELETE FROM dept_manager_dup
WHERE
dept_no = 'd001';

SELECT* FROM dept_manager_dup ORDER BY dept_no;
SELECT * FROM departments_dups ORDER BY dept_no;

SELECT dept_manager_dup.emp_no, dept_manager_dup.dept_no, departments_dups.dept_name
FROM dept_manager_dup
INNER JOIN departments_dups ON dept_manager_dup.dept_no = departments_dups.dept_no
ORDER BY dept_no DESC;

SELECT e.emp_no,e.first_name,e.last_name,m.dept_no,e.hire_date
FROM employees e
INNER JOIN dept_manager m 
ON e.emp_no = m.emp_no
ORDER BY emp_no;

INSERT INTO dept_manager_dup
VALUES('110228','d003','1992-03-21', '9999-01-01');

INSERT INTO departments_dups
VALUES('d009','Customer Service');

SELECT* FROM dept_manager_dup ORDER BY dept_no;
SELECT * FROM departments_dups ORDER BY dept_no;

SELECT dm.emp_no,dm.dept_no, d.dept_name
FROM dept_manager_dup dm
INNER JOIN departments_dups d
ON dm.dept_no = d.dept_no
GROUP BY dm.emp_no
ORDER BY dm.dept_no DESC;

SELECT dm.emp_no, dm.dept_no, d.dept_name 
FROM dept_manager_dup dm 
INNER JOIN departments_dups d 
ON dm.dept_no = d.dept_no 
GROUP BY dm.emp_no, dm.dept_no, d.dept_name 
ORDER BY dm.dept_no DESC 
LIMIT 0, 1000;
SELECT DISTINCT dm.emp_no, dm.dept_no,d.dept_name
FROM dept_manager_dup dm
INNER JOIN departments_dups d
ON dm.dept_no = d.dept_no
ORDER BY dm.dept_no DESC;

DELETE FROM dept_manager_dup
WHERE emp_no = '110228';

DELETE FROM departments_dups
WHERE dept_no = 'd009';

INSERT INTO dept_manager_dup
VALUES ('110228','d003','1992-03-21', '9999-01-01');

INSERT INTO departments_dups
VALUES('d009','Customer Service');




SELECT dm.emp_no,dm.dept_no, d.dept_name
FROM dept_manager_dup dm
LEFT JOIN departments_dups d
ON dm.dept_no = d.dept_no
ORDER BY dm.dept_no;

SELECT d.dept_no,dm.emp_no,d.dept_name
FROM departments_dups d
LEFT JOIN dept_manager_dup dm
ON  d.dept_no = dm.dept_no
ORDER BY d.dept_no;
SELECT * FROM departments_dups
ORDER BY d.dept_no;


SELECT dm.emp_no,dm.dept_no, d.dept_name
FROM dept_manager_dup dm
LEFT JOIN departments_dups d
ON dm.dept_no = d.dept_no
WHERE dept_name IS NULL
ORDER BY dm.dept_no;

SELECT e.emp_no,e.first_name,e.last_name, dm.dept_no, dm.from_date
FROM employees e
LEFT JOIN dept_manager dm
ON e.emp_no = dm.emp_no
WHERE last_name = 'Markovitch'
ORDER BY dm.dept_no DESC,e.emp_no;

SELECT e.emp_no,e.first_name,e.last_name,dm.dept_no,dm.from_date
FROM employees e
LEFT JOIN dept_manager dm
ON e.emp_no = dm.emp_no
WHERE last_name = 'Bamford'
ORDER BY dm.dept_no DESC, e.emp_no;


SELECT e.emp_no, e.first_name, e.last_name,dm.dept_no,dm.from_date
FROM employees e
RIGHT JOIN dept_manager dm
ON e.emp_no = dm.emp_no
WHERE e.last_name = 'Bamford'
ORDER BY dm.dept_no DESC, e.emp_no;

SELECT e.emp_no, e.first_name, e.last_name, dm.dept_no, dm.from_date
FROM dept_manager dm
RIGHT JOIN employees e
ON e.emp_no = dm.emp_no
WHERE e.last_name = 'Bamford'
ORDER BY dm.dept_no DESC;

SELECT * FROM departments_dups ORDER BY dept_no;
SELECT * FROM dept_manager_dup ORDER BY dept_no;

SELECT dd.dept_no, dd.dept_name, dm.emp_no, dm.from_date
FROM departments_dups dd
LEFT JOIN dept_manager_dup dm
ON dd.dept_no = dm.dept_no
ORDER BY dd.dept_no DESC;

SELECT  dm.emp_no, dm.from_date,dd.dept_no, dd.dept_name
FROM dept_manager_dup dm
RIGHT JOIN departments_dups dd
ON dm.dept_no = dd.dept_no
ORDER BY dept_no DESC;

SELECT m.dept_no,m.emp_no,d.dept_name
FROM dept_manager_dup m
JOIN departments_dups d
ON m.dept_no = d.dept_no
ORDER BY m.dept_no;

SELECT m.dept_no, m.emp_no, d.dept_name
FROM dept_manager_dup m,
departments_dups d
WHERE m.dept_no = d.dept_no;

SELECT m.emp_no,e.first_name,e.last_name,m.dept_no,e.hire_date
FROM dept_manager m
INNER JOIN employees e
WHERE m.emp_no  = e.emp_no
ORDER BY m.emp_no;

SELECT m.emp_no,e.first_name,e.last_name,m.dept_no,e.hire_date
FROM dept_manager m, employees e
WHERE m.emp_no  = e.emp_no
ORDER BY m.emp_no;


SELECT e.emp_no,e.first_name, e.last_name, s.salary
FROM employees e
JOIN salaries s
ON e.emp_no = s.emp_no
WHERE s.salary > 145000; 

set @@global.sql_mode := replace(@@global.sql_mode, 'ONLY_FULL_GROUP_BY', '');

SELECT e.emp_no, e.first_name,e.last_name, e.hire_date, t.title
FROM employees e
JOIN titles t
ON e.emp_no = t.emp_no
WHERE first_name = 'Margareta' AND last_name = 'Markovitch'
ORDER BY e.emp_no;

SELECT dm.*,d.*
FROM dept_manager dm
CROSS JOIN departments d
ORDER BY dm.emp_no, d.dept_no;

SELECT dm.*,d.*
FROM dept_manager dm
CROSS JOIN departments d;

SELECT * FROM departments ORDER BY dept_no;
SELECT dm.*,d.*
FROM dept_manager dm
CROSS JOIN departments d
ORDER BY dm.dept_no, d.dept_no;

SELECT dm.*,d.*
FROM dept_manager dm,
departments d
ORDER BY dm.emp_no, d.dept_no;

SELECT dm.*,d.*
FROM departments d
CROSS JOIN dept_manager dm
WHERE d.dept_no<>dm.dept_no
ORDER BY dm.emp_no,d.dept_no;

SELECT dm.*,d.*
FROM departments d
CROSS JOIN dept_manager dm
WHERE d.dept_no = 'd009'
ORDER BY dm.emp_no;

SELECT e.*,d.*
FROM employees e
CROSS JOIN departments d
WHERE e.emp_no <10011
ORDER BY e.emp_no;

SELECT
e.*, d.*
FROM
employees e
CROSS JOIN
departments d
WHERE
e.emp_no < 10011
ORDER BY e.emp_no, d.dept_name;

SELECT e.gender, AVG(s.salary) AS average_salary
FROM employees e
JOIN salaries s
ON e.emp_no = s.emp_no
GROUP BY gender;

SELECT e.first_name,e.last_name,e.hire_date,dm.from_date,d.dept_name
FROM employees e
JOIN dept_manager dm
ON e.emp_no = dm.emp_no
JOIN departments d
ON dm.dept_no = d.dept_no;

SELECT e.first_name, e.last_name, e.hire_date, t.title, dm.from_date,d.dept_name
FROM employees e
JOIN titles t
ON e.emp_no = t.emp_no
JOIN dept_manager dm
ON t.emp_no = dm.emp_no
JOIN departments d
ON dm.dept_no = d.dept_no
WHERE t.title = 'Manager'
ORDER BY e.emp_no;

SELECT e.first_name, e.last_name, e.hire_date, t.title, dm.from_date,d.dept_name
FROM employees e
JOIN dept_manager dm
ON e.emp_no = dm.emp_no
JOIN departments d
ON dm.dept_no = d.dept_no
JOIN titles t
ON e.emp_no = t.emp_no
WHERE t.title = 'Manager'
ORDER BY e.emp_no;



SELECT e.first_name,e.last_name,e.hire_date,t.title, de.from_date, d.dept_name
FROM employees e
JOIN dept_emp de
ON e.emp_no = de.emp_no
JOIN titles t
ON e.emp_no = t.emp_no
JOIN departments d
ON de.dept_no = d.dept_no
WHERE t.title = 'Senior Engineer'
ORDER BY e.emp_no;

SELECT 
    e.first_name,
    e.last_name,
    e.hire_date,
    t.title,
    de.from_date,
    d.dept_name
FROM
    employees e
        JOIN
    dept_emp de ON e.emp_no = de.emp_no
        JOIN
    departments d ON de.dept_no = d.dept_no
        JOIN
    titles t ON e.emp_no = t.emp_no
WHERE
    t.title = 'Senior Engineer'
ORDER BY e.emp_no;

SELECT d.dept_name, AVG(s.salary) AS avg_salary
FROM departments d
JOIN dept_manager dm
ON d.dept_no = dm.dept_no
JOIN salaries s
ON dm.emp_no = s.emp_no
GROUP BY d.dept_name
ORDER BY d.dept_no;


SELECT d.dept_name, AVG(s.salary) AS avg_salary
FROM departments d
JOIN dept_manager dm
ON d.dept_no = dm.dept_no
JOIN salaries s
ON dm.emp_no = s.emp_no
GROUP BY d.dept_name
HAVING avg_salary > 60000
ORDER BY avg_salary DESC;

SELECT  gender, COUNT(gender) AS count_gender
FROM employees
GROUP BY gender;

SELECT e.gender, COUNT(dm.emp_no)
FROM employees e
JOIN dept_manager dm
ON e.emp_no = dm.emp_no
GROUP BY gender;


SELECT t.title,AVG(s.salary) AS avg_salary
FROM titles t
JOIN salaries s
ON t.emp_no = s.emp_no
GROUP BY t.title
HAVING avg_salary < 75000
ORDER BY avg_salary DESC;
DROP TABLE employees_dup;
CREATE TABLE employees_dup
(emp_no INT(11),
birth_date DATE,
first_name VARCHAR(14),
last_name VARCHAR (16),
gender ENUM('M','F'),
hire_date DATE);

INSERT INTO employees_dup
SELECT * FROM employees
LIMIT 20;

SELECT * FROM employees_dup;
INSERT INTO employees_dup VALUES ('10001','1953-09-02','Georgi','Facello','M','1986-06-26');


SELECT e.emp_no, e.first_name, e.last_name, NULL AS dept_no, NULL AS from_date
FROM employees_dup e
WHERE e.emp_no = '10001'
UNION ALL
SELECT NULL AS emp_no, NULL AS first_name, NULL AS last_name, m.dept_no, m.from_date
FROM dept_manager m;

SELECT e.emp_no, e.first_name, e.last_name, NULL AS dept_no, NULL AS from_date
FROM employees_dup e
WHERE e.emp_no = '10001'
UNION
SELECT NULL AS emp_no, NULL AS first_name, NULL AS last_name, m.dept_no, m.from_date
FROM dept_manager m;

SELECT* FROM
(SELECT e.emp_no,e.first_name, e.last_name, NULL AS dept_no, NULL AS from_date
FROM employees e
WHERE last_name = 'Denis' 
UNION SELECT
NULL AS emp_no,
NULL AS first_name,
NULL AS last_name,
dm.dept_no,
dm.from_date
FROM
dept_manager dm) as a
ORDER BY -a.emp_no DESC;

SELECT * FROM 
(SELECT e.emp_no, e.first_name, e.last_name, NULL AS dept_no, NULL AS from_date
FROM employees e
WHERE last_name = 'Denis'
UNION SELECT
NULL AS emp_no,
NULL AS first_name,
NULL AS last_name,
dm.dept_no,
dm.from_date
FROM
dept_manager dm) as a
ORDER BY -a.emp_no DESC;


SELECT e.emp_no, e.first_name, e.last_name, NULL AS dept_no, NULL AS from_date
FROM employees e
WHERE last_name = 'Denis'
UNION SELECT
NULL AS emp_no,
NULL AS first_name,
NULL AS last_name,
dm.dept_no,
dm.from_date
FROM
dept_manager dm;


SELECT e.emp_no, e.first_name, e.last_name, NULL AS dept_no, NULL AS from_date
FROM employees e 
WHERE e.last_name = 'Bamford'
UNION 
SELECT NULL AS emp_no, NULL AS first_name, NULL AS last_name, dm.dept_no,
dm.from_date
FROM dept_manager dm;


SELECT * FROM dept_manager;

SELECT e.*
FROM employees e 
WHERE e.emp_no IN( SELECT dm.emp_no
FROM dept_manager dm);

SELECT dm.* 
FROM dept_manager dm 
WHERE dm.emp_no IN (SELECT e.emp_no
FROM employees e
WHERE hire_date  > '1990-01-01' AND hire_date < '1995-01-01');

SELECT e.emp_no, e.hire_date
FROM employees e
WHERE hire_date  BETWEEN '1990-01-01' AND '1995-01-01';

SELECT e.emp_no, e.hire_date
FROM employees e
WHERE hire_date  > '1990-01-01' AND hire_date < '1995-01-01';

SELECT dm.* 
FROM dept_manager dm 
WHERE dm.emp_no IN (SELECT e.emp_no
FROM employees e
WHERE hire_date BETWEEN '1990-01-01' AND '1995-01-01');

SELECT dm.emp_no, dm.dept_no, dm.from_date
FROM dept_manager dm
WHERE dm.emp_no 
IN (SELECT e.emp_no
FROM employees e 
WHERE birth_date >='1955-01-01');

SELECT e.first_name, e.last_name
FROM employees e
WHERE EXISTS (SELECT * FROM dept_manager dm
WHERE dm.emp_no = e.emp_no)
ORDER BY e.emp_no;

SELECT * FROM employees e
WHERE EXISTS (SELECT * FROM titles t
WHERE t.emp_no  = e.emp_no AND title = 'Assistant Engineer');


SELECT A.* FROM
(SELECT e.emp_no AS employee_ID,
de.dept_no as dept_code,
(SELECT emp_no 
FROM dept_manager
WHERE emp_no = '110022') AS manager_ID
FROM employees e 
JOIN dept_emp de
ON e.emp_no = de.emp_no
WHERE e.emp_no <= 11020
ORDER BY e.emp_no) AS A;



SELECT A.* FROM (SELECT e.emp_no AS employee_ID,
MIN(de.dept_no) as dept_code,
(SELECT emp_no 
FROM dept_manager
WHERE emp_no = '110022') AS manager_ID
FROM employees e 
JOIN dept_emp de
ON e.emp_no = de.emp_no
WHERE e.emp_no <= 10020
GROUP BY e.emp_no
ORDER BY e.emp_no)
AS A
UNION 
SELECT B.* FROM
(SELECT e.emp_no AS employee_ID,
MIN(de.dept_no) as dept_code,
(SELECT emp_no
FROM dept_manager
WHERE emp_no = '110039') AS manager_ID
FROM employees e
JOIN dept_emp de
ON e.emp_no = de.emp_no
WHERE e.emp_no BETWEEN '10021' AND '10040'
GROUP BY e.emp_no
ORDER BY e.emp_no)
AS B;

DROP TABLE IF EXISTS emp_manager;

CREATE TABLE emp_manager
(emp_no INT(11) NOT NULL,
dept_no CHAR(4) NULL,
manager_no INT(11) NOT NULL);

/*Use the structure of subset A to create subset C, where you must assign employee number 110039 as a manager to employee 110022.*/

SELECT C.* FROM
(SELECT e.emp_no AS employee_ID,
MIN(de.dept_no) AS dept_code,
(SELECT emp_no
FROM dept_manager
WHERE emp_no = '110039') AS manager_ID
FROM employees e
JOIN dept_emp de
WHERE e.emp_no = '110022'
GROUP BY e.emp_no
ORDER BY e.emp_no) AS C;

SELECT D.* FROM
(SELECT e.emp_no AS employee_ID,
MIN(de.dept_no) AS dept_code,
(SELECT emp_no
FROM dept_manager
WHERE emp_no = '110022') AS manager_ID
FROM employees e
JOIN dept_emp de
WHERE e.emp_no = '110039'
GROUP BY e.emp_no
ORDER BY e.emp_no) AS D;

INSERT INTO emp_manager
(SELECT U.* FROM (SELECT A.* FROM (SELECT e.emp_no AS employee_ID,
MIN(de.dept_no) as dept_code,
(SELECT emp_no 
FROM dept_manager
WHERE emp_no = '110022') AS manager_ID
FROM employees e 
JOIN dept_emp de
ON e.emp_no = de.emp_no
WHERE e.emp_no <= 10020
GROUP BY e.emp_no
ORDER BY e.emp_no)
AS A
UNION 
SELECT B.* FROM
(SELECT e.emp_no AS employee_ID,
MIN(de.dept_no) as dept_code,
(SELECT emp_no
FROM dept_manager
WHERE emp_no = '110039') AS manager_ID
FROM employees e
JOIN dept_emp de
ON e.emp_no = de.emp_no
WHERE e.emp_no BETWEEN '10021' AND '10040'
GROUP BY e.emp_no
ORDER BY e.emp_no)
AS B
UNION
SELECT C.* FROM
(SELECT e.emp_no AS employee_ID,
MIN(de.dept_no) AS dept_code,
(SELECT emp_no
FROM dept_manager
WHERE emp_no = '110039') AS manager_ID
FROM employees e
JOIN dept_emp de
ON e.emp_no = de.emp_no
WHERE e.emp_no = '110022'
GROUP BY e.emp_no
ORDER BY e.emp_no) AS C
UNION
SELECT D.* FROM
(SELECT e.emp_no AS employee_ID,
MIN(de.dept_no) AS dept_code,
(SELECT emp_no
FROM dept_manager
WHERE emp_no = '110022') AS manager_ID
FROM employees e
JOIN dept_emp de
ON e.emp_no = de.emp_no
WHERE e.emp_no = '110039'
GROUP BY e.emp_no
ORDER BY e.emp_no) AS D )AS U);
USE employees;
SELECT* FROM emp_manager;

SELECT t.emp_no,
t.title,
(SELECT ROUND(AVG(salary),2) 
FROM salaries s
WHERE t.emp_no = s.emp_no) AS avg_salary
FROM titles t
WHERE t.title = 'Staff' OR t.title = 'Engineer'
GROUP BY t.emp_no, t.title, avg_salary
ORDER BY avg_salary DESC;


SELECT 
    t.emp_no,
    t.title,
    (SELECT 
            ROUND(AVG(s.salary), 2)
        FROM
            salaries s
        WHERE
            s.emp_no = t.emp_no) AS avg_salary
FROM
    (SELECT 
        emp_no, title
    FROM
        titles t
    WHERE
        title = 'Staff' OR title = 'Engineer') as t
ORDER BY avg_salary DESC;

SELECT t.emp_no,
t.title,
(SELECT ROUND(AVG(salary),2) 
FROM salaries s
WHERE t.emp_no = s.emp_no) AS avg_salary
FROM (SELECT emp_no, title FROM titles t
WHERE t.title IN ('Staff','Engineer')) as t
ORDER BY avg_salary DESC;

SELECT e1.*
FROM emp_manager e1
JOIN emp_manager e2 
ON e1.emp_no = e2.manager_no;

SELECT DISTINCT e1.*
FROM emp_manager e1
JOIN emp_manager e2
ON e1.emp_no = e2.manager_no;

SELECT e2.*
FROM emp_manager e1
JOIN emp_manager e2
ON e1.emp_no = e2.manager_no;

SELECT e1.emp_no,e1.dept_no,e2.manager_no
FROM emp_manager e1
JOIN emp_manager e2
ON e1.emp_no = e2.manager_no;


SELECT e1.*
FROM emp_manager e1
JOIN emp_manager e2 ON e1.emp_no = e2.manager_no
WHERE e2.emp_no IN(SELECT manager_no FROM emp_manager);
USE employees;
SELECT * FROM dept_emp;

SELECT emp_no,MIN(from_date) as from_date,max(to_date) as to_date, COUNT(emp_no) AS NUM
FROM dept_emp
GROUP BY emp_no
HAVING NUM > 1;

CREATE OR REPLACE VIEW v_dept_emp_latest_date AS
SELECT emp_no,MIN(from_date) as from_date,max(to_date) as to_date, COUNT(emp_no) AS NUM
FROM dept_emp
GROUP BY emp_no;

CREATE OR REPLACE VIEW v_avg_salary_manager AS
SELECT s.emp_no, ROUND(AVG(salary),2) as avg_salary
FROM salaries s
JOIN dept_manager dm
ON s.emp_no = dm.emp_no
GROUP BY emp_no;

SELECT ROUND(AVG(salary),2) as avg_salary
FROM salaries s 
JOIN employees e
ON s.emp_no = e.emp_no
WHERE e.emp_no IN('10002','10005','10007') AND s.from_date BETWEEN '1991-01-01' AND '1996-12-31';








SELECT 
    ROUND(AVG(salary), 2) AS avg_salary
FROM
    salaries s
        JOIN
    employees e ON s.emp_no = e.emp_no
WHERE e.emp_no IN (10002, 10005, 10007)
AND from_date BETWEEN '1991-01-01' AND '1996-12-31';
    
DROP VIEW IF EXISTS v_manager_avg_salary;
CREATE VIEW v_manager_avg_salary AS
    SELECT 
        ROUND(AVG(salary), 2) AS avg_salary
    FROM
        salaries s
            JOIN
        employees e ON s.emp_no = e.emp_no
    WHERE e.emp_no IN (10002, 10005, 10007)
    AND from_date BETWEEN '1991-01-01' AND '1996-12-31';
    
    USE employees;
    DROP PROCEDURE IF EXISTS select_employees;
    DELIMITER $$
    CREATE PROCEDURE select_employees ()
    BEGIN
    SELECT * FROM employees
    LIMIT 1000;
    END$$
    DELIMITER ;
    
    CALL employees.select_employees();
    CALL select_employees();
    
    USE employees;
    DELIMITER $$
    CREATE PROCEDURE avg_salary()
    BEGIN
    SELECT AVG(salary)
    FROM salaries;
    END$$ 
    DELIMITER ;
    
    CALL avg_salary(); 
    
    USE employees;
    DROP PROCEDURE IF EXISTS emp_salary;
    
    DELIMITER $$
    CREATE PROCEDURE emp_salary(IN p_emp_no INT)
    BEGIN
    SELECT e.first_name, e.last_name, s.salary, s.from_date, s.to_date
    FROM employees e
    JOIN salaries s
    ON e.emp_no = s.emp_no
    WHERE e.emp_no = p_emp_no;
    END $$
    DELIMITER ;
    
    DROP PROCEDURE IF EXISTS emp_avg_salary;
    
    DELIMITER $$
    CREATE PROCEDURE emp_avg_salary(IN p_emp_no INT)
    BEGIN
    SELECT e.first_name, e.last_name, AVG(s.salary) AS avg_salary
    FROM employees e
    JOIN salaries s
    ON e.emp_no = s.emp_no 
    WHERE e.emp_no = p_emp_no
    GROUP BY e.emp_no;
    END $$
    DELIMITER ;
    
    
    DELIMITER $$
    CREATE PROCEDURE emp_avg_salary_out(IN p_emp_no INT , OUT p_avg_salary DECIMAL(10,2))
    BEGIN
    SELECT AVG(s.salary)
    INTO p_avg_salary 
    FROM employees e 
    JOIN salaries s 
    ON e.emp_no = s.emp_no 
    WHERE e.emp_no = p_emp_no ;
    END $$
    DELIMITER ;
    
    DROP PROCEDURE IF EXISTS emp_info;
    
    DELIMITER $$
    CREATE PROCEDURE emp_info(IN p_first_name CHAR(255), IN p_last_name CHAR(255), OUT p_emp_no INT)
    BEGIN
    SELECT e.emp_no
    INTO p_emp_no
    FROM employees e
    WHERE e.first_name = p_first_name AND e.last_name = p_last_name;
    END $$
    DELIMITER ;
    
    SET @v_avg_salary = 0 ;
    CALL employees.emp_avg_salary_out(11300, @v_avg_salary);
    SELECT @v_avg_salary;
    
    SET @v_emp_no = 0;
    CALL emp_info('Aruna','Journel', @v_emp_no);
    SELECT @v_emp_no;
    
    DELIMITER $$
    CREATE FUNCTION f_emp_avg_salary(p_emp_no INT) RETURNS DECIMAL(10,2)
    DETERMINISTIC 
    BEGIN
    DECLARE v_avg_salary DECIMAL (10,2);
    SELECT AVG(s.salary)
    INTO v_avg_salary
    FROM employees e
    JOIN salaries s
    ON e.emp_no = s.emp_no
    WHERE e.emp_no = p_emp_no;
    RETURN v_avg_salary;
    END $$
    DELIMITER $$
    
    DROP FUNCTION f_emp_avg_salary;
    DROP FUNCTION f_emp_info;
    
    
    DELIMITER $$
    CREATE FUNCTION f_emp_info(p_first_name VARCHAR(255),p_last_name VARCHAR(255)) RETURNS DECIMAL(10,2)
    DETERMINISTIC NO SQL READS SQL DATA
    BEGIN
    DECLARE v_max_from_date DATE;
    DECLARE v_salary DECIMAL(10,2);
    SELECT MAX(s.from_date)
    INTO v_max_from_date
    FROM employees e
    JOIN salaries s
    ON e.emp_no = s.emp_no
    WHERE e.first_name = p_first_name AND e.last_name = p_last_name;
    SELECT s.salary
    INTO v_salary
    FROM employees e
    JOIN salaries s
    ON e.emp_no = s.emp_no
    WHERE e.first_name = p_first_name AND e.last_name = p_last_name AND s.from_date = v_max_from_date;
    RETURN v_salary;
    END $$
    DELIMITER ;
    
   USE employees;
   COMMIT;
   
   DELIMITER $$
   CREATE TRIGGER before_salaries_insert
   BEFORE INSERT ON salaries
   FOR EACH ROW
   BEGIN
   IF NEW.salary <0 THEN
   SET NEW.salary = 0;
   END IF;
   END $$
   DELIMITER ;
   
   SELECT * FROM salaries 
   WHERE emp_no = '10001';
   
   INSERT INTO salaries VALUES ('10001','-92891', '2010-06-22', '9999-01-01');
    
    SELECT * FROM salaries
    WHERE emp_no = '10001';
    
    DELIMITER $$
    CREATE TRIGGER trigger_update_salary
    BEFORE UPDATE ON salaries
    FOR EACH ROW
    BEGIN
    IF NEW.salary<0 THEN
    SET NEW.salary = OLD.salary;
    END IF;
    END $$ 
    DELIMITER ;
    
    UPDATE salaries
    SET salary = 98765
    WHERE emp_no = '10001' AND from_date = '2010-06-22';
     
     
     SELECT * FROM salaries
     WHERE emp_no = '10001' AND from_date = '2010-06-22';
     
     UPDATE salaries
     SET salary = -5000
     WHERE emp_no = '10001' AND from_date = '2010-06-22';
     
     SELECT * FROM salaries
     WHERE emp_no = '10001' AND from_date = '2010-06-22';
     
     SELECT sysdate();
     SELECT date_format(sysdate(),'%y-%m-%d') as today;
     SELECT sysdate();
     
     
     
     DELIMITER $$
     CREATE TRIGGER trig_ins_dept_manager
     AFTER UPDATE ON dept_manager
     FOR EACH ROW
     BEGIN
     DECLARE v_curr_salary INT;
     SELECT MAX(salary)
     INTO v_curr_salary
     FROM salaries
     WHERE emp_no = NEW.emp_no;
     IF v_curr_salary IS NOT NULL
     THEN 
     UPDATE salaries
     SET to_date = SYSDATE()
     WHERE emp_no = NEW.emp_no AND to_date = NEW.to_date;
     INSERT INTO salaries
     VALUES(NEW.emp_no, v_curr_salary + 20000, NEW.from_date, NEW.to_date);
     END IF;
     END $$
     DELIMITER ;
     
     INSERT INTO dept_manager VALUES ('111534', 'd009', date_format(sysdate(), '%y-%m-%d'), '9999-01-01');
     
     SELECT 
    *
FROM
    dept_manager
WHERE
    emp_no = 111534;
    
    SELECT 
    *
FROM
    salaries
WHERE
    emp_no = 111534;
    
    ROLLBACK;
    
    
DELIMITER $$
CREATE TRIGGER trigger_higher_date
BEFORE INSERT ON employees
FOR EACH ROW
BEGIN
IF NEW.hire_date > date_format(SYSDATE(), '%Y-%m-%d')
THEN
SET NEW.hire_date = date_format(SYSDATE(), '%Y-%m-%d');
END IF;
END $$
DELIMITER ;
DROP TRIGGER trigger_higher_date;
USE employees;
INSERT INTO employees VALUES ('999904', '1970-01-31', 'John', 'Johnson', 'M', '2029-01-01');  

SELECT  *  FROM  employees
ORDER BY emp_no DESC;


SELECT * FROM employees
WHERE hire_date > '2000-01-01';

CREATE INDEX i_hire_date
ON employees(hire_date);

SELECT * FROM employees
WHERE hire_date > '2000-01-01';

SELECT * FROM employees
WHERE first_name = 'Georgi' AND last_name = 'Facello';

CREATE INDEX i_composite
ON employees(first_name,last_name);

SELECT * FROM employees
WHERE first_name = 'Georgi' AND last_name = 'Facello';


ALTER TABLE employees
DROP INDEX i_hire_date;

SELECT * FROM salaries
WHERE salary > 89000;

CREATE INDEX i_salary
ON salaries(salary);

SELECT * FROM salaries
WHERE salary > 89000;  

SELECT emp_no, first_name, last_name,
CASE WHEN 
gender = 'M' THEN 'Male'
ELSE 'Female'
END AS gender
FROM employees;

SELECT e.emp_no,e.first_name,e.last_name, 
CASE 
WHEN dm.emp_no IS NOT NULL THEN 'Manager'
ELSE 'Employee'
END AS is_manager
FROM employees e
JOIN dept_manager dm
ON dm.emp_no = e.emp_no
WHERE e.emp_no > 109990;

SELECT emp_no,first_name,last_name,
IF(gender = 'M','Male','Female') AS gender 
FROM employees;


SELECT dm.emp_no,e.first_name,e.last_name,
MAX(s.salary)- MIN(s.salary) AS salary_diffrence,
CASE WHEN MAX(s.salary)- MIN(s.salary) > 30000 THEN 'Salary was raised by 30000'
WHEN MAX(s.salary)- MIN(s.salary) > 20000 THEN 'Salary was raise by 20000'
ELSE 'Salary was raised by less than 20000' END AS salary_increase
FROM dept_manager dm
JOIN employees e
ON dm.emp_no = e.emp_no
JOIN salaries s
ON s.emp_no = dm.emp_no
GROUP BY s.emp_no;

SELECT e.emp_no,e.first_name,e.last_name,
CASE 
WHEN dm.emp_no IS NOT NULL THEN 'Manager'
ELSE 'Employee'
END AS is_manager
FROM employees e
LEFT JOIN dept_manager dm
ON e.emp_no = dm.emp_no
WHERE e.emp_no > 109990;

SELECT dm.emp_no, e.first_name, e.last_name,
MAX(s.salary)-MIN(s.salary) AS salary_diffrence,
CASE WHEN MAX(s.salary)-MIN(s.salary) > 30000 THEN 'Salary raise was higher than $30,000'
ELSE 'Salary raise was not higher than $30,000' END AS salary_increase
FROM dept_manager dm
JOIN employees e
ON dm.emp_no = e.emp_no
JOIN salaries s
ON s.emp_no = dm.emp_no
GROUP BY s.emp_no; 

SELECT dm.emp_no, e.first_name, e.last_name,
MAX(s.salary)-MIN(s.salary) AS salary_diffrence,
IF(MAX(s.salary)-MIN(s.salary) > 30000 ,'Salary raise was higher than $30,000','Salary raise was not higher than $30,000')
FROM dept_manager dm
JOIN employees e
ON dm.emp_no = e.emp_no
JOIN salaries s
ON s.emp_no = dm.emp_no
GROUP BY s.emp_no; 

SELECT e.emp_no,e.first_name,e.last_name,
CASE WHEN de.to_date >= date_format(SYSDATE(), '%Y-%m-%d') THEN 'Is Still Employed'
ELSE 'Not A Employee ANYMORE' END AS current_employee
FROM employees e
JOIN dept_emp de
ON e.emp_no = de.emp_no
ORDER BY e.emp_no
LIMIT 100;

SELECT emp_no,salary
FROM salaries;

SELECT emp_no,salary,
ROW_NUMBER()
OVER(PARTITION BY emp_no ORDER BY salary) FROM salaries;

SELECT emp_no, salary,
ROW_NUMBER() OVER()
FROM salaries;

SELECT e.emp_no, e.first_name,d.dept_name ,ROW_NUMBER() OVER(PARTITION BY d.dept_name ORDER BY e.emp_no) AS rownumber
FROM employees e 
JOIN dept_manager dm
ON e.emp_no = dm.emp_no
JOIN departments d
ON dm.dept_no = d.dept_no;

SELECT emp_no, dept_no,
ROW_NUMBER() OVER (ORDER BY emp_no) AS row_num
FROM dept_manager;

SELECT *, ROW_NUMBER() OVER(PARTITION BY first_name ORDER BY last_name ASC) as rwno
FROM employees;

SELECT emp_no, salary,
ROW_NUMBER() OVER() AS row_num1,
ROW_NUMBER() OVER(PARTITION BY emp_no) AS row_num2,
ROW_NUMBER() OVER(PARTITION BY emp_no ORDER BY salary DESC) AS row_num3,
ROW_NUMBER() OVER(ORDER BY salary DESC) AS row_num4
FROM salaries;

SELECT emp_no,salary,
ROW_NUMBER() OVER(PARTITION BY emp_no) AS row_num2,
ROW_NUMBER() OVER(PARTITION BY emp_no ORDER BY salary DESC) AS row_num3
FROM salaries;


SELECT dm.emp_no, s.salary,
ROW_NUMBER() OVER (ORDER BY emp_no) AS row_num,
ROW_NUMBER() OVER (PARTITION BY emp_no ORDER BY salary ASC) AS row_num2
FROM dept_manager dm
JOIN salaries s
ON dm.emp_no = s.emp_no
ORDER BY row_num,emp_no, salary;

SELECT dm.emp_no,salary,
ROW_NUMBER() OVER (PARTITION BY emp_no ORDER BY salary ASC) AS row_num1,
ROW_NUMBER() OVER (PARTITION BY emp_no ORDER BY salary DESC) AS row_num2   
FROM dept_manager dm
JOIN salaries s ON dm.emp_no = s.emp_no;

SELECT emp_no,salary,
ROW_NUMBER() OVER w AS row_num
FROM salaries
WINDOW w AS (PARTITION BY emp_no ORDER BY salary DESC);

SELECT emp_no,first_name,last_name,
ROW_NUMBER() OVER w AS row_num
FROM employees
WINDOW w AS (PARTITION BY emp_no ORDER BY first_name ASC);

SELECT@@sql_mode;
SET SESSION sql_mode = REPLACE(@@sql_mode, 'ONLY FULL GROUP BY','');

SELECT * FROM salaries GROUP BY emp_no;

SELECT * 
FROM salaries 
GROUP BY emp_no;


SELECT * FROM salaries GROUP BY emp_no;
SET SESSION sql_mode = REPLACE(@@sql_mode, 'ONLY_FULL_GROUP_BY', '');
SELECT @@sql_mode;

USE employees;
SELECT * FROM salaries GROUP BY emp_no;

SELECT emp_no,salary,
ROW_NUMBER() OVER(PARTITION BY emp_no ORDER BY salary DESC) AS row_num
FROM salaries;

SELECT a.emp_no, MAX(salary) AS max_salary FROM(SELECT emp_no,salary,
ROW_NUMBER() OVER(PARTITION BY emp_no ORDER BY salary DESC) AS row_num
FROM salaries) a
GROUP BY emp_no;

SELECT a.emp_no, MAX(salary) AS max_salary FROM
(SELECT emp_no, salary FROM salaries)a 
GROUP BY emp_no;


SELECT a.emp_no,a.salary FROM(SELECT emp_no,salary,
ROW_NUMBER() OVER(PARTITION BY emp_no ORDER BY salary DESC) AS row_num
FROM salaries) a
WHERE row_num = 5;


SELECT a.emp_no, MIN(salary) AS min_salary
FROM
(SELECT emp_no,salary, ROW_NUMBER() OVER(PARTITION BY emp_no ORDER BY salary ASC) AS row_num
FROM salaries) a 
GROUP BY emp_no;

SELECT a.emp_no, MIN(salary) AS min_salary
FROM
(SELECT emp_no, salary, ROW_NUMBER() OVER w as row_num
FROM salaries
WINDOW w AS (PARTITION BY emp_no ORDER BY salary ASC)) a 
GROUP BY emp_no;

SELECT a.emp_no, MIN(salary) AS min_salary
FROM
(SELECT emp_no,salary
FROM salaries) a
GROUP BY emp_no;


SELECT a.emp_no, a.salary 
FROM(SELECT emp_no,salary, ROW_NUMBER() OVER w as row_num
FROM salaries
WINDOW w AS (PARTITION BY emp_no ORDER BY salary ASC)) a
WHERE row_num = 1;


SELECT a.emp_no, a.salary
FROM(SELECT emp_no,salary, ROW_NUMBER() OVER w as row_num
FROM salaries
WINDOW w AS (PARTITION BY emp_no ORDER BY salary ASC)) a
WHERE row_num = 2;

SELECT emp_no, salary,
ROW_NUMBER() OVER(PARTITION BY emp_no ORDER BY salary DESC) AS row_num
FROM salaries
WHERE emp_no = 10001;

SELECT DISTINCT emp_no, salary,
ROW_NUMBER() OVER(PARTITION BY emp_no ORDER BY salary DESC) AS row_num
FROM salaries
WHERE emp_no = 10001;
    
    
SELECT emp_no, (COUNT(salary) - COUNT(DISTINCT salary)) AS diff
FROM salaries
GROUP BY emp_no
HAVING diff > 0
ORDER BY emp_no;

SELECT * FROM salaries
WHERE emp_no = 10560;


SELECT * FROM salaries
WHERE emp_no = 11839
ORDER BY salary;


SELECT emp_no, salary, 
ROW_NUMBER() OVER(PARTITION BY emp_no ORDER BY salary DESC) AS row_num
FROM salaries
WHERE emp_no = 11839;
    
    
SELECT emp_no, salary, 
RANK() OVER(PARTITION BY emp_no ORDER BY salary DESC) AS rank_num
FROM salaries
WHERE emp_no = 11839;

SELECT emp_no, salary,
dense_rank() OVER(PARTITION BY emp_no ORDER BY salary DESC) AS rank_num
FROM salaries
WHERE emp_no = 11839;

SELECT emp_no, salary,
ROW_NUMBER() OVER(PARTITION BY emp_no ORDER BY salary DESC) AS row_num
FROM salaries
WHERE emp_no =10560;

SELECT dm.emp_no, COUNT(salary) AS no_of_salary_contracts
FROM dept_manager dm
JOIN salaries s
ON dm.emp_no = s.emp_no
GROUP BY emp_no
ORDER BY emp_no;

SELECT emp_no,salary,
RANK() OVER(PARTITION BY emp_no ORDER BY salary DESC) AS rank_num
FROM salaries
WHERE emp_no = 10560;

SELECT emp_no,salary,
DENSE_RANK() OVER(PARTITION BY emp_no ORDER BY salary DESC) AS rank_num
FROM salaries
WHERE emp_no = 10560;


SELECT d.dept_no,d.dept_name,dm.emp_no,RANK()OVER(PARTITION BY d.dept_no ORDER BY s.salary DESC) AS department_salary_ranking, s.salary, s.from_date AS salary_from_date, s.to_date AS salary_to_date,
dm.from_date AS dept_manager_from_date, dm.to_date AS dept_manager_to_date
FROM departments d
JOIN dept_manager dm
ON d.dept_no = dm.dept_no
JOIN salaries s
ON dm.emp_no = s.emp_no
AND s.from_date BETWEEN dm.from_date AND dm.to_date
AND s.to_date BETWEEN dm.from_date AND dm.to_date;



/*Write a query that ranks the salary values in descending order of all contracts signed by employees numbered 
between 10500 and 10600 inclusive. Let equal salary values for one and the same employee bear the same rank. 
Also, allow gaps in the ranks obtained for their subsequent rows.
Use a join on the “employees” and “salaries” tables to obtain the desired result.*/

SELECT e.emp_no, s.salary, 
RANK() OVER(PARTITION BY emp_no ORDER BY salary DESC) AS employee_salary_ranking
FROM salaries s
JOIN employees e
ON s.emp_no = e.emp_no
WHERE e.emp_no BETWEEN 10500 AND 10600;


USE employees;


SELECT e.emp_no,
DENSE_RANK() OVER w AS employee_salary_ranking,
s.salary,
e.hire_date,
s.from_date,
(YEAR(s.from_date)-YEAR(e.hire_date)) AS years_from_start
FROM employees e
JOIN salaries s
ON s.emp_no = e.emp_no
AND(YEAR(s.from_date)-YEAR(e.hire_date))>=5
WINDOW w AS (PARTITION BY e.emp_no ORDER BY s.salary DESC);


SELECT e.emp_no, RANK() OVER(PARTITION BY emp_no ORDER BY salary DESC) AS employee_salary_ranking,
s.salary
FROM employees e 
JOIN salaries s 
ON e.emp_no = s.emp_no
WHERE e.emp_no BETWEEN 10001 AND 10006;

SELECT 
    e.emp_no,
    RANK() OVER w as employee_salary_ranking,
    s.salary
FROM
	employees e 
		JOIN 
    salaries s ON s.emp_no = e.emp_no
WHERE e.emp_no BETWEEN 10001 AND 10006
WINDOW w AS (PARTITION BY e.emp_no ORDER BY s.salary DESC);


USE employees;

SELECT
emp_no,
salary,
LAG(salary) OVER w AS previous_salary,
LEAD(salary) OVER w AS next_salary,
salary - LAG(salary) OVER w AS diff_salary_current_previous,
LEAD(salary)OVER w - salary AS diff_salary_next_current
FROM salaries
WINDOW w AS (PARTITION BY emp_no ORDER BY salary);


SELECT
emp_no,
salary,
LAG(salary) OVER w AS previous_salary,
LEAD(salary) OVER w AS next_salary,
salary - LAG(salary) OVER w AS diff_salary,
LEAD(salary)OVER w - salary AS diff_salary_next_current
FROM salaries
WHERE emp_no BETWEEN 10500 AND 10600
AND salary > 80000
WINDOW w AS(PARTITION BY emp_no ORDER BY salary);

SELECT
emp_no,
salary,
LAG(salary) OVER w AS previous_salary,
LAG(salary,2) OVER w AS before_previous_salary,
LEAD(salary) OVER w AS next_salary,
LEAD(salary,2) OVER w AS 1_after_next_salary,
LEAD(salary,5) OVER w AS  kidda
FROM salaries
WINDOW w AS(PARTITION BY emp_no ORDER BY salary)
LIMIT 1000;




USE employees;

SELECT sysdate();

SELECT emp_no,salary,MAX(from_date),to_date
FROM salaries
WHERE to_date > SYSDATE()
GROUP BY emp_no;



SELECT s1.emp_no, s.salary,s.from_date,s.to_date
FROM salaries s
JOIN(SELECT emp_no, MAX(from_date) AS from_date
FROM salaries
GROUP BY emp_no) s1 ON s.emp_no = s1.emp_no
WHERE to_date > sysdate()
AND s.from_date = s1.from_date;


SELECT*FROM dept_emp WHERE emp_no = 10010 ORDER BY from_date;
SELECT*FROM dept_emp WHERE emp_no = 10018 ORDER BY from_date;


SELECT de.emp_no, de.dept_no, de.from_date,de.to_date
FROM dept_emp de
JOIN(SELECT emp_no, MAX(from_date) AS from_date
FROM dept_emp
GROUP BY emp_no) de1
ON de.emp_no = de1.emp_no
WHERE de.to_date > SYSDATE()
AND de.from_date = de1.from_date;



SELECT de2.emp_no,d.dept_name,s2.salary, AVG(s2.salary) over w AS avg_salary_per_department
FROM(SELECT de.emp_no, de.dept_no, de.from_date,de.to_date
FROM dept_emp de
JOIN(SELECT emp_no, MAX(from_date) AS from_date
FROM dept_emp
GROUP BY emp_no) de1
ON de.emp_no = de1.emp_no
WHERE de.to_date > SYSDATE()
AND de.from_date = de1.from_date) de2
JOIN (SELECT s1.emp_no, s.salary,s.from_date,s.to_date
FROM salaries s
JOIN(SELECT emp_no, MAX(from_date) AS from_date
FROM salaries
GROUP BY emp_no) s1 ON s.emp_no = s1.emp_no
WHERE to_date > sysdate()
AND s.from_date = s1.from_date)s2
ON s2.emp_no = de2.emp_no
JOIN departments d
ON d.dept_no = de2.dept_no
GROUP BY de2.emp_no, d.dept_name
WINDOW w AS (PARTITION BY de2.dept_no)
ORDER BY de2.emp_no;


SELECT s1.emp_no, s.salary, s.from_date, s.to_date
FROM salaries s 
JOIN(SELECT emp_no, MIN(from_date) AS from_date
FROM salaries
GROUP BY emp_no) s1 ON s.emp_no = s1.emp_no
WHERE s.from_date = s1.from_date;



/*Consider the employees' contracts that have been signed after the 1st of January 2000 and terminated before the 1st of January 2002 (as registered in the "dept_emp" table).*/
/*Their employee number*/
/*The salary values of the latest contracts they have signed during the suggested time period*/
/*The department they have been working in (as specified in the latest contract they've signed during the suggested time period)*/
/*Use a window function to create a fourth field containing the average salary paid in the department the employee was last working in during the suggested time period. 
Name that field "average_salary_per_department".*/
SELECT * FROM dept_emp
WHERE from_date > '2000-01-01'
AND to_date < '2002-01-01';

SELECT s1.emp_no, s.salary, s.from_date,s.to_date
FROM salaries s 
JOIN(SELECT emp_no, MAX(from_date) AS from_date
FROM salaries
GROUP BY emp_no) s1
ON s.emp_no = s1.emp_no
WHERE s.from_date = s1.from_date; 

SELECT * FROM departments
JOIN dept_emp
ON departments.dept_no = dept_emp.dept_no
WHERE dept_emp.from_date > '2000-01-01'
AND dept_emp.to_date < '2002-01-01';

SELECT de2.emp_no, d.dept_name,s2.salary,/*de2.from_date,de2.to_date,*/ AVG(s2.salary) over w AS avereage_salary_per_department
FROM (SELECT de.emp_no, de.dept_no, de.from_date, de.to_date
FROM dept_emp de
JOIN(SELECT emp_no, MAX(from_date) AS from_date
FROM dept_emp
GROUP BY emp_no)de1
ON de1.emp_no = de.emp_no
WHERE de.from_date > '2000-01-01'
AND de.to_date < '2002-01-01'
AND de.from_date = de1.from_date) de2
JOIN(SELECT s1.emp_no, s.salary, s.from_date,s.to_date
FROM salaries s 
JOIN(SELECT emp_no, MAX(from_date) AS from_date
FROM salaries
GROUP BY emp_no) s1
ON s.emp_no = s1.emp_no
WHERE s.from_date = s1.from_date
AND s.from_date > '2000-01-01') s2
ON  s2.emp_no = de2.emp_no
JOIN departments d
ON d.dept_no = de2.dept_no
GROUP BY de2.emp_no, d.dept_name
WINDOW w AS (PARTITION BY de2.dept_no)
ORDER BY de2.emp_no,salary;



/*In a subquery named a, join the salaries and dept_emp tables ON employee number (emp_no), as well as the dept_emp and departments tables ON department number (dept_no) to select the department number (dept_no) from the dept_emp table, the department name (dept_name) from the departments table, and the salary (salary) from the salaries table. Use this subset in an outer query to retrieve: 

- the distinct department numbers (dept_no) from a
- the relevant department name (dept_name)
- the smallest salary value recorded for the given department (min_salary)
- the highest salary value recorded for the given department (max_salary)
- the average salary value recorded for the given department (avg_salary), rounded to the nearest dollar.

Sort the final output by department number (dept_no) in ascending order.*/


SELECT a.dept_no, a.dept_name, MIN(a.salary) over w AS min_salary, MAX(a.salary) OVER w AS max_salary, AVG(a.salary) OVER w AS avg_salary
FROM(SELECT s.salary,de.emp_no,d.dept_no,d.dept_name
FROM salaries s
JOIN dept_emp de
ON s.emp_no = de.emp_no
JOIN departments d
ON de.dept_no = d.dept_no) a
GROUP BY a.dept_no, a.dept_name
WINDOW w AS (PARTITION BY dept_no)
ORDER BY a.dept_no ASC;

USE employees;


SELECT DISTINCT a.dept_no, 
a.dept_name, MIN(a.salary) over w AS min_salary, MAX(a.salary) OVER w AS max_salary, ROUND(AVG(a.salary) OVER w) AS avg_salary
FROM(SELECT s.salary,de.dept_no,d.dept_name
FROM salaries s
JOIN dept_emp de
ON s.emp_no = de.emp_no
JOIN departments d
ON de.dept_no = d.dept_no) a
WINDOW w AS (PARTITION BY a.dept_no ORDER BY a.dept_no ASC);



USE employees;

SELECT AVG(salary) FROM salaries;

WITH cte AS
(SELECT AVG(salary) AS avg_salary FROM salaries)
SELECT SUM(CASE WHEN s.salary > c.avg_salary THEN 1 ELSE 0 END) AS no_of_female_salaries_above_avg,
COUNT(s.salary) AS total_no_of_salary_contracts
FROM salaries s
JOIN employees e 
ON s.emp_no = e.emp_no
AND e.gender = 'F'
CROSS JOIN cte c;


WITH cte AS
(SELECT AVG(salary) AS avg_salary FROM salaries)
SELECT SUM(CASE WHEN s.salary > c.avg_salary THEN 1 ELSE 0 END) AS no_of_female_salaries_above_avg_w_sum,
COUNT(CASE WHEN s.salary > c.avg_salary THEN s.salary ELSE NULL END) AS no_of_female_salaries_above_avg_w_count,
COUNT(s.salary) AS total_no_of_salary_contracts
FROM salaries s
JOIN employees e
ON s.emp_no = e.emp_no
AND e.gender = 'F'
CROSS JOIN cte c;


WITH cte AS
(SELECT AVG(salary) AS avg_salary FROM salaries)
SELECT SUM(CASE WHEN s.salary <= c.avg_salary THEN 1 ELSE 0 END) AS no_of_male_salaries_below_avg,
COUNT(s.salary) AS total_no_of_salary_contract
FROM salaries s
JOIN employees e 
ON s.emp_no = e.emp_no
AND e.gender = 'M'
CROSS JOIN cte c;

WITH cte AS (

SELECT AVG(salary) AS avg_salary FROM salaries

)

SELECT

SUM(CASE WHEN s.salary < c.avg_salary THEN 1 ELSE 0 END) AS no_salaries_below_avg,

COUNT(s.salary) AS no_of_salary_contracts

FROM salaries s JOIN employees e ON s.emp_no = e.emp_no AND e.gender = 'M' JOIN cte c;

WITH cte AS 
(SELECT AVG(salary) AS avg_salary FROM salaries)
SELECT COUNT(CASE WHEN s.salary <= c.avg_salary THEN s.salary ELSE NULL END) AS no_of_salaries_below_avg,
COUNT(s.salary) AS total_no_of_salary_contract
FROM salaries s
JOIN employees e
ON s.emp_no = e.emp_no
AND e.gender = 'M'
CROSS JOIN cte c;



SELECT SUM(CASE WHEN s.salary < a.avg_salary THEN 1 ELSE 0 END) AS no_of_salaries_below_avg,
COUNT(s.salary) AS total_no_of_salary
FROM (SELECT AVG(salary) AS avg_salary FROM salaries) a
JOIN salaries s
JOIN employees e 
ON s.emp_no = e.emp_no
AND e.gender = 'M';


SELECT AVG(salary) AS avg_salary FROM salaries;

SELECT s.emp_no, MAX(s.salary) AS f_highest_salary FROM salaries s
JOIN employees e
ON e.emp_no = s.emp_no AND e.gender = 'F'
GROUP BY emp_no;

WITH cte1 AS(SELECT AVG(salary) AS avg_salary FROM salaries),
cte2 AS(SELECT s.emp_no, MAX(s.salary) AS f_highest_salary FROM salaries s
JOIN employees e
ON e.emp_no = s.emp_no AND e.gender = 'F'
GROUP BY emp_no)
SELECT SUM(CASE WHEN c2.f_highest_salary > c1.avg_salary THEN 1 ELSE 0 END) AS f_highest_salary_above_avg,
COUNT(e.emp_no) AS total_no_of_f_contracts
FROM employees e
JOIN cte2 c2 ON e.emp_no = c2.emp_no
CROSS JOIN cte1 c1;


USE employees;
WITH cte1 AS(SELECT AVG(salary) AS avg_salary FROM salaries),
cte2 AS(SELECT s.emp_no, MAX(s.salary) AS f_highest_salary FROM salaries s 
JOIN employees e 
ON e.emp_no = s.emp_no AND e.gender = 'F' 
GROUP BY emp_no)
SELECT COUNT(CASE WHEN c2.f_highest_salary > c1.avg_salary THEN f_highest_salary ELSE NULL END) AS f_highest_salary_above_avg,
COUNT(e.emp_no) AS total_no_of_f_contacts,
CONCAT(ROUND((COUNT(CASE WHEN c2.f_highest_salary > c1.avg_salary THEN f_highest_salary ELSE NULL END)/COUNT(e.emp_no))*100,2),'%') AS '% Percentage'
FROM employees e 
JOIN cte2 c2 
ON e.emp_no = c2.emp_no 
CROSS JOIN cte1 c1;



WITH cte1 AS(SELECT AVG(salary) AS avg_salary FROM salaries),
cte2 AS(SELECT s.emp_no,MAX(s.salary) AS m_highest_salary FROM salaries s 
JOIN employees e 
ON s.emp_no = e.emp_no AND e.gender = 'M'
GROUP BY emp_no) 
SELECT SUM(CASE WHEN c2.m_highest_salary < c1.avg_salary THEN 1 ELSE 0 END) AS m_highest_salary_below_avg,
COUNT(e.emp_no) AS total_no_of_m_contracts
FROM employees e 
JOIN cte2 c2 
ON e.emp_no = c2.emp_no 
CROSS JOIN cte1 c1;



WITH cte1 AS(SELECT AVG(salary) AS avg_salary FROM salaries),
cte2 AS(SELECT s.emp_no,MAX(s.salary) AS m_highest_salary FROM salaries s 
JOIN employees e 
ON s.emp_no = e.emp_no AND e.gender = 'M'
GROUP BY emp_no) 
SELECT COUNT(CASE WHEN c2.m_highest_salary < c1.avg_salary THEN c2.m_highest_salary ELSE NULL END) AS m_highest_salary_below_avg,
COUNT(e.emp_no) AS total_no_of_m_contracts
FROM employees e 
JOIN cte2 c2 
ON e.emp_no = c2.emp_no 
CROSS JOIN cte1 c1;


SELECT COUNT(CASE WHEN c2.m_highest_salary < c1.avg_salary THEN c2.m_highest_salary ELSE NULL END) AS m_highest_salary_below_avg,
COUNT(e.emp_no) AS total_no_m_contracts
FROM(SELECT s.emp_no,MAX(s.salary) AS m_highest_salary FROM salaries s 
JOIN employees e
ON s.emp_no = e.emp_no AND e.gender = 'M'
GROUP BY emp_no)c2
JOIN employees e 
ON c2.emp_no = e.emp_no
CROSS JOIN (SELECT AVG(salary) AS avg_salary FROM salaries)c1;



SELECT * FROM employees WHERE hire_date > '2000-01-01';


WITH emp_hired_from_jan_2000 AS(SELECT * FROM employees WHERE hire_date > '2000-01-01'),
highest_contract_salary_values AS(SELECT e.emp_no, MAX(s.salary)
FROM salaries s JOIN emp_hired_from_jan_2000 e ON e.emp_no = s.emp_no
GROUP BY emp_no)
SELECT * FROM highest_contract_salary_values;


WITH cte1 AS(SELECT AVG(salary) AS avg_salary FROM salaries),
cte2 AS(SELECT COUNT(salary) AS total_no_of_salary_contracts FROM salaries)
SELECT SUM(CASE WHEN s.salary < c1.avg_salary THEN 1 ELSE 0 END) AS no_f_salaries_below_avg,
(SELECT total_no_of_salary_contracts FROM cte2) AS total_no_of_salary_contracts
FROM salaries s
JOIN employees e 
ON s.emp_no = e.emp_no
AND e.gender = 'F'
JOIN cte1 c1;

CREATE TEMPORARY TABLE f_highest_salary
SELECT s.emp_no, MAX(s.salary) AS f_highest_salary
FROM salaries s
JOIN employees e 
ON s.emp_no = e.emp_no
AND e.gender = 'F' 
GROUP BY s.emp_no;


SELECT * FROM f_highest_salary;
DROP TABLE f_highest_salary;
SELECT * FROM departments;

CREATE TEMPORARY TABLE male_max_salary
SELECT s.emp_no, MAX(salary) AS male_max_salary 
FROM salaries s 
JOIN employees e 
ON s.emp_no = e.emp_no 
AND e.gender = 'M'
GROUP BY s.emp_no;


SELECT * FROM male_max_salary;



CREATE TEMPORARY TABLE f_highest_salary
SELECT s.emp_no, MAX(s.salary) AS f_highest_salary
FROM salaries s
JOIN employees e 
ON s.emp_no = e.emp_no
AND e.gender = 'F' 
GROUP BY s.emp_no
LIMIT 10;
SELECT * FROM f_highest_salary;


SELECT * FROM employees e JOIN f_highest_salary f ON e.emp_no = f.emp_no;


WITH cte AS(SELECT s.emp_no, MAX(s.salary) AS f_highest_salary
FROM salaries s
JOIN employees e 
ON s.emp_no = e.emp_no
AND e.gender = 'F' 
GROUP BY s.emp_no
LIMIT 10)
SELECT * FROM f_highest_salary f1 JOIN cte c;

WITH cte AS(SELECT s.emp_no, MAX(s.salary) AS f_highest_salary
FROM salaries s
JOIN employees e 
ON s.emp_no = e.emp_no
AND e.gender = 'F' 
GROUP BY s.emp_no
LIMIT 10)
SELECT * FROM f_highest_salary f1 UNION ALL SELECT * FROM cte;


CREATE TEMPORARY TABLE dates
SELECT NOW() AS current_date_and_time,
DATE_SUB(NOW(),INTERVAL 1 MONTH) AS a_month_earlier,
DATE_SUB(NOW(),INTERVAL 1 YEAR) AS a_year_earlier;


SELECT * FROM dates;


SELECT * FROM dates d1
JOIN dates d2;


SELECT * FROM dates d1
UNION ALL SELECT * FROM dates d2;


WITH cte AS(SELECT NOW() AS current_date_and_time,
DATE_SUB(NOW(),INTERVAL 1 MONTH) AS a_month_earlier,
DATE_SUB(NOW(),INTERVAL 1 YEAR) AS a_year_earlier)
SELECT * FROM dates d1 JOIN cte c;



WITH cte AS(SELECT NOW() AS current_date_and_time,
DATE_SUB(NOW(),INTERVAL 1 MONTH) AS a_month_earlier,
DATE_SUB(NOW(),INTERVAL 1 YEAR) AS a_year_earlier)
SELECT * FROM dates d1 UNION ALL SELECT * FROM cte c;

DROP TABLE IF EXISTS f_highest_salary;
DROP TABLE dates;



CREATE TEMPORARY TABLE dates
SELECT NOW() AS current_date_and_time,
DATE_SUB(NOW(),INTERVAL 2 MONTH) AS a_month_earlier,
DATE_SUB(NOW(), INTERVAL -2 YEAR) AS a_year_later;

SELECT * FROM dates;

WITH cte AS (SELECT NOW() AS current_date_and_time,
DATE_SUB(NOW(),INTERVAL 2 MONTH) AS a_month_earlier,
DATE_SUB(NOW(), INTERVAL -2 YEAR) AS a_year_later)
SELECT * FROM dates d JOIN cte c;

WITH cte AS (SELECT NOW() AS current_date_and_time,
DATE_SUB(NOW(),INTERVAL 2 MONTH) AS a_month_earlier,
DATE_SUB(NOW(), INTERVAL -2 YEAR) AS a_year_later)
SELECT * FROM dates d UNION ALL SELECT * FROM cte c;

DROP TABLE IF EXISTS male_max_salary;
DROP TABLE dates;



CREATE TEMPORARY TABLE salaries_adjusted_for_inflation
SELECT s.emp_no,s.salary,
CASE 
WHEN s.from_date BETWEEN '1970-01-01' AND '1989-12-31' THEN ROUND(s.salary*6.5) 
WHEN s.from_date BETWEEN '1990-01-01' AND '1999-12-31' THEN ROUND(s.salary*2.8)
ELSE ROUND(salary*3) 
END AS inflation_adjusted_salary,
s.from_date, s.to_date
FROM salaries s;
DROP TABLE IF EXISTS salaries_adjusted_for_inflation;

CREATE TEMPORARY TABLE salaries_adjusted_for_inflation AS
SELECT 
    s.emp_no,
    s.salary,
    CASE 
        WHEN s.from_date BETWEEN '1970-01-01' AND '1989-12-31' THEN ROUND(s.salary * 6.5)
        WHEN s.from_date BETWEEN '1990-01-01' AND '1999-12-31' THEN ROUND(s.salary * 2.8)
        ELSE ROUND(s.salary * 3)
    END AS adjusted_salary,
    s.from_date,
    s.to_date
FROM salaries s;



USE employees_mod;
SELECT YEAR(de.from_date) AS calender_year,e.gender, COUNT(e.emp_no) as num_of_employees
FROM t_employees e
JOIN t_dept_emp de 
ON de.emp_no = e.emp_no
GROUP BY calender_year, e.gender
HAVING calender_year >= 1990
ORDER BY calender_year ASC;

USE employees_mod;

SELECT d.dept_name, ee.gender,dm.emp_no,dm.from_date,dm.to_date,e.calendar_year, CASE WHEN YEAR(dm.to_date) >= e.calendar_year AND  YEAR(dm.from_date) <= e.calendar_year THEN 1 
ELSE 0 END AS active
FROM (SELECT YEAR(hire_date) AS calendar_year FROM t_employees GROUP BY calendar_year)e
CROSS JOIN t_dept_manager dm
JOIN t_departments d
ON dm.dept_no = d.dept_no 
JOIN t_employees ee
ON dm.emp_no = ee.emp_no
ORDER BY dm.emp_no, e.calendar_year ASC;


SELECT a.dept_name, a.gender, a.emp_no, a.from_date,a.to_date,CASE WHEN dm.to_date>='2024-01-01' AND 
dm.from_date <= '2024-01-01' THEN 1 ELSE 0 END AS currently_active
FROM (SELECT d.dept_name, e.gender, e.emp_no, dm.from_date, dm.to_date 
FROM employees e
CROSS JOIN dept_manager dm 
JOIN departments d 
ON dm.dept_no = d.dept_no 
JOIN employees ee
ON dm.emp_no = ee.emp_no) a
ORDER BY dm.emp_no DESC;

SELECT 
    a.dept_name,
    a.gender,
    a.emp_no,
    a.from_date,
    a.to_date,
    CASE
        WHEN a.to_date > '2024-01-01' THEN 1
        ELSE 0
    END AS currently_active
FROM
    (SELECT 
    d.dept_name, e.gender, e.emp_no, dm.from_date, dm.to_date
    FROM
        employees e
        CROSS JOIN
    dept_manager dm
        JOIN
    departments d ON dm.dept_no = d.dept_no
        JOIN 
    employees ee ON dm.emp_no = ee.emp_no) a
ORDER BY emp_no DESC;






SELECT e.gender,d.dept_name, ROUND(AVG(s.salary),2) AS salary,YEAR(s.from_date) AS calender_year
FROM t_salaries s 
JOIN t_employees e 
ON s.emp_no = e.emp_no
JOIN t_dept_emp de
ON de.emp_no = e.emp_no
JOIN t_departments d
ON d.dept_no = de.dept_no
GROUP BY d.dept_no, calender_year, e.gender
HAVING calender_year <= 2002
ORDER BY d.dept_no;



SELECT 
    e.gender,
    d.dept_name,
    ROUND(AVG(s.salary), 2) AS salary,
    YEAR(s.from_date) AS calendar_year
FROM
    t_salaries s
        JOIN
    t_employees e ON s.emp_no = e.emp_no
        JOIN
    t_dept_emp de ON de.emp_no = e.emp_no
        JOIN
    t_departments d ON d.dept_no = de.dept_no
GROUP BY d.dept_no , e.gender , calendar_year
HAVING calendar_year <= 2002
ORDER BY d.dept_no;



SELECT e.gender, d.dept_name, ROUND(AVG(S.salary),2) AS avg_salary, CASE WHEN de.from_date < '1998-01-01' THEN 'before' ELSE 'on or after' END 
AS jan_1_1998
FROM employees e 
JOIN salaries s 
ON s.emp_no = e.emp_no 
JOIN dept_emp de 
ON de.emp_no = e.emp_no 
JOIN departments d 
ON d.dept_no = de.dept_no 
GROUP BY e.gender, d.dept_no, jan_1_1998
HAVING de.from_date >= '1990-01-01'
ORDER BY d.dept_no;



DELIMITER $$
CREATE PROCEDURE filter_salary (IN p_min_salary FLOAT, IN p_max_salary FLOAT)
BEGIN
SELECT 
    e.gender, d.dept_name, AVG(s.salary) as avg_salary
FROM
    t_salaries s
        JOIN
    t_employees e ON s.emp_no = e.emp_no
        JOIN
    t_dept_emp de ON de.emp_no = e.emp_no
        JOIN
    t_departments d ON d.dept_no = de.dept_no
    WHERE s.salary BETWEEN p_min_salary AND p_max_salary
GROUP BY d.dept_no, e.gender;
END$$

DELIMITER ;

CALL filter_salary(50000, 90000);


USE employees;
SELECT e.gender,d.dept_name,AVG(s.salary) AS avg_salary
FROM employees e 
JOIN salaries s 
ON e.emp_no = s.emp_no 
JOIN dept_emp de
ON de.emp_no = e.emp_no 
JOIN departments d 
ON de.dept_no = d.dept_no 
GROUP BY e.gender, d.dept_no 
ORDER BY d.dept_no;

SELECT MIN(dept_no), MAX(dept_no)
FROM dept_emp;



SELECT e.emp_no,de.dept_no AS dept_no, CASE WHEN e.emp_no <= '10020' THEN '110022' ELSE '110039' END AS manager
FROM employees e
JOIN (SELECT emp_no, MIN(dept_no) AS dept_no
FROM dept_emp
GROUP BY emp_no) de
ON e.emp_no = de.emp_no
WHERE e.emp_no < '10041';


SELECT
    emp_no,
    (SELECT
            MIN(dept_no)
        FROM
            dept_emp de
        WHERE
            e.emp_no = de.emp_no) dept_no,
    CASE
        WHEN emp_no <= 10020 THEN '110022'
        ELSE '110039'
    END AS manager
FROM
    employees e
WHERE
    emp_no <= 10040; 

SELECT *
FROM employees 
WHERE YEAR(hire_date) = 2000;

SELECT * FROM titles WHERE title LIKE('%engineer%');
SELECT
    *
FROM
    titles
WHERE
    title LIKE '%engineer%';
    SELECT
    *
FROM
    titles
WHERE
    title LIKE '%senior engineer%';
    SELECT
    *
FROM
    titles
WHERE
    title LIKE ('%senior engineer%');
    
    
    
    /*Create a procedure that asks you to insert an employee number and that will obtain an output containing the same number, as well as the number and name of the last department the employee has worked in.
Finally, call the procedure for employee number 10010.
If you've worked correctly, you should see that employee number 10010 has worked for department number 6 - "Quality Management".*/
USE employees;
DELIMITER $$
    CREATE PROCEDURE emp_avg_salary_out(IN p_emp_no INT , OUT p_avg_salary DECIMAL(10,2))
    BEGIN
    SELECT AVG(s.salary)
    INTO p_avg_salary 
    FROM employees e 
    JOIN salaries s 
    ON e.emp_no = s.emp_no 
    WHERE e.emp_no = p_emp_no ;
    END $$
    DELIMITER ;
    
    DELIMITER $$
    CREATE PROCEDURE last_dept(IN p_emp_no INT)
    BEGIN
    SELECT e.emp_no, de.dept_no, d.dept_name 
    FROM employees e 
    JOIN dept_emp de 
    ON e.emp_no = de.emp_no 
    JOIN departments d 
    ON d.dept_no = de.dept_no 
    WHERE e.emp_no = p_emp_no
    AND de.from_date = (SELECT MAX(from_date) FROM dept_emp WHERE emp_no = p_emp_no);
    END $$ 
    DELIMITER ;
    
    CALL employees.last_dept(10010);
    
    
    # Exercise 7
# How many contracts have been registered in the ‘salaries’ table with duration of more than one year and of value higher than or equal to $100,000? 
# Hint: You may wish to compare the difference between the start and end date of the salaries contracts.
    SELECT COUNT(emp_no)
    FROM salaries 
    WHERE DATEDIFF(to_date, from_date) > 365 
    AND salary >= 100000 ;
    
    
   # Exercise 8
# Create a trigger that checks if the hire date of an employee is higher than the current date. If true, set this date to be the current date. Format the output appropriately (YY-MM-DD).
# Extra challenge: You may try to declare a new variable called 'today' which stores today's data, and then use it in your trigger!
# After creating the trigger, execute the following code to see if it's working properly.
/*
INSERT employees VALUES ('999904', '1970-01-31', 'John', 'Johnson', 'M', '2025-01-01');   
DELIMITER $$
     CREATE TRIGGER trig_ins_dept_manager
     AFTER UPDATE ON dept_manager
     FOR EACH ROW
     BEGIN
     DECLARE v_curr_salary INT;
     SELECT MAX(salary)
     INTO v_curr_salary
     FROM salaries
     WHERE emp_no = NEW.emp_no;
     IF v_curr_salary IS NOT NULL
     THEN 
     UPDATE salaries
     SET to_date = SYSDATE()
     WHERE emp_no = NEW.emp_no AND to_date = NEW.to_date;
     INSERT INTO salaries
     VALUES(NEW.emp_no, v_curr_salary + 20000, NEW.from_date, NEW.to_date);
     END IF;
     END $$
     DELIMITER ;
     DELIMITER $$
CREATE TRIGGER trigger_higher_date
BEFORE INSERT ON employees
FOR EACH ROW
BEGIN
IF NEW.hire_date > date_format(SYSDATE(), '%Y-%m-%d')
THEN
SET NEW.hire_date = date_format(SYSDATE(), '%Y-%m-%d');
END IF;
END $$
DELIMITER ;
DROP TRIGGER trigger_higher_date;
USE employees;
INSERT INTO employees VALUES ('999904', '1970-01-31', 'John', 'Johnson', 'M', '2029-01-01');  

SELECT  *  FROM  employees
ORDER BY emp_no DESC;*/

DELIMITER $$ 
CREATE TRIGGER trigger_hire_date 
BEFORE INSERT ON employees 
FOR EACH ROW 
BEGIN
DECLARE today date;
SELECT date_format(SYSDATE(), '%Y-%m-%d') INTO today;
IF NEW.hire_date > date_format(SYSDATE(), '%Y-%m-%d')
THEN 
SET NEW.hire_date = date_format(SYSDATE(), '%Y-%m-%d');
END IF; 
END $$ 
DELIMITER ;

INSERT INTO employees VALUES ('999904', '1970-01-31', 'John', 'Johnson', 'M', '2029-01-01');


# Exercise 9
# Define a function that retrieves the largest contract salary value of an employee. Apply it to employee number 11356. 
# Also, what is the lowest salary value per contract of the same employee? You may want to create a new function that will deliver this number to you.  Apply it to employee number 11356 again.
# Feel free to apply the function to other employee numbers as well.
DROP FUNCTION IF EXISTS f_highest_salary;

DELIMITER $$
CREATE FUNCTION f_highest_salary (p_emp_no INTEGER) RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN

DECLARE v_highest_salary DECIMAL(10,2);

SELECT
    MAX(s.salary)
INTO v_highest_salary FROM
    employees e
        JOIN
    salaries s ON e.emp_no = s.emp_no
WHERE
    e.emp_no = p_emp_no;

RETURN v_highest_salary;
END$$

DELIMITER ;


SELECT f_highest_salary(11356);


DROP FUNCTION IF EXISTS f_lowest_salary;

DELIMITER $$
CREATE FUNCTION f_lowest_salary (p_emp_no INTEGER) RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN

DECLARE v_lowest_salary DECIMAL(10,2);

SELECT
    MIN(s.salary)
INTO v_lowest_salary FROM
    employees e
        JOIN
    salaries s ON e.emp_no = s.emp_no
WHERE
    e.emp_no = p_emp_no;

RETURN v_lowest_salary;
END$$

DELIMITER ;


SELECT f_lowest_salary(10356);


# Exercise 10
# Based on the previous example, you can now try to create a function that accepts also a second parameter which would be a character sequence. 
# Evaluate if its value is 'min' or 'max' and based on that retrieve either the lowest or the highest salary (using the same logic and code 
# from Exercise 9). If this value is a string value different from ‘min’ or ‘max’, then the output of the function should return 
# the difference between the highest and the lowest salary.
DROP FUNCTION IF EXISTS f_salary;

DELIMITER $$
CREATE FUNCTION f_salary (p_emp_no INTEGER, p_min_or_max varchar(10)) RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN

DECLARE v_salary_info DECIMAL(10,2);

SELECT
    CASE
        WHEN p_min_or_max = 'max' THEN MAX(s.salary)
        WHEN p_min_or_max = 'min' THEN MIN(s.salary)
        ELSE MAX(s.salary) - MIN(s.salary)
    END AS salary_info
INTO v_salary_info FROM
    employees e
        JOIN
    salaries s ON e.emp_no = s.emp_no
WHERE
    e.emp_no = p_emp_no;

RETURN v_salary_info;
END$$

DELIMITER ;

select employees.f_salary(11356, 'min');
select employees.f_salary(11356, 'max');
select employees.f_salary(11356, 'maxxx');
