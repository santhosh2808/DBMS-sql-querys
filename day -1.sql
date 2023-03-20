-- SQL is case-insensitive
/*
We will follow
UPPERCASE: Keywords
lovercase:Non-keywords
*/

/*
show tables;
USE store;

SELECT *
FROM customers;

SELECT *
FROM customers
ORDER BY first_name ASC;
*/
-- ORDER BY <column_name> DESC FOR descenting order




/*

-- QUESTION 1
SELECT *
FROM employees
ORDER BY first_name DESC;

-- QUESTION 2
select EMPLOYEE_ID,FIRST_NAME,LAST_NAME,SALARY
FROM employees
ORDER BY SALARY ASC;
*/
/*


SELECT* 
FROM customers
ORDER BY last_name DESC,birth_date DESC;
*/

-- SELECT first_name,last_name,points,points*1.1 AS 'discount_factor'
-- FROM customers;
-- USE STORE;

/*
SELECT  birth_date, TIMESTAMPDIFF(YEAR,birth_date ,CURDATE())AS age
FROM customers;
 -- distinct for select unic values 
SELECT DISTINCT state
FROM customer;

*/

-- SELECT*
-- FROM customers
-- WHERE points <= '1000';


-- SELECT*
-- FROM customers
-- WHERE birth_date>= '1990-01-01'AND state = 'FL';

-- SELECT*
-- FROM customers
-- WHERE birth_date >= '1990-01-01';

-- SELECT*
-- FROM customers
-- WHERE birth_date >= '1989-01-01'OR points <'4000' AND state='VA';

-- SELECT*
-- FROM customers
-- WHERE points < '4000' AND birth_date >= '1990-01-01' OR state='va';

-- SELECT*
-- FROM customers
-- WHERE NOT state='fl';

-- SELECT *
-- FROM customers
-- WHERE state='FL' OR  state='GA' OR state='VA';

-- SELECT *
-- FROM customers
-- WHERE state IN ('FL','GA','VA');

-- SELECT *
-- FROM products
-- WHERE quantity_in_stock IN (38,49,72);

-- SELECT *
-- FROM customers
-- WHERE birth_date > '1990-1-1' and birth_date < '2000-1-1';

-- SELECT *
-- FROM customers
-- WHERE points BETWEEN 3000 and 10000;

-- SELECT *
-- FROM customers
-- WHERE birth_date BETWEEN '1990-1-1' and '2000-1-1';



-- SELECT FIRST_NAME,LAST_NAME,SALARY
-- FROM employees
-- WHERE salary NOT BETWEEN 10000 and 15000;

-- select*
-- FROM customers
-- WHERE last_name LIKE '%A%';

-- SELECT*
-- FROM customers
-- WHERE state like '%A';


-- select*
-- FROM customers
-- WHERE last_name like 'b____y';

-- REGEXP -- 

-- SELECT*
-- FROM customers
-- WHERE last_name REGEXP 'age';

-- SELECT*
-- FROM customers
-- WHERE last_name REGEXP 'mac';

-- SELECT*
-- FROM customers
-- WHERE address REGEXP 'TRAIL | AVENUE';

/*
^ (caret) -start withh
$ -ends with
| (pipe)-logical or
[.] -set
*/

-- select*
-- FROM customers
-- WHERE last_name regexp 'ae|be|ce|de|ee|fe|ge|he';

-- select*
-- FROM customers
-- WHERE last_name regexp '[gim]e';

-- select*
-- FROM customers
-- WHERE  last_name regexp '^[a-z]{6}$' ;

-- select*
-- FROM customers
-- WHERE  last_name regexp '^.{6}$' ;


-- SELECT *
-- FROM customers
-- WHERE last_name regexp '[B].*[r|u]';
-- USE store;
-- use exercise_hr;

-- SELECT *
-- FROM employees
-- WHERE last_name regexp 'b.*[ru]';

-- USE store;

-- select*
-- FROM customers
-- WHERE PHONE IS NOT NULL;


-- select *
-- FROM customers


-- USE exercise_hr;

-- SELECT*
-- FROM employees
-- WHERE EMPLOYEE_ID = 102 ;


-- EXPLAIN
-- SELECT*
-- FROM employees
-- WHERE LAST_NAME='De Haan' ;

-- SELECT*
-- FROM employees
-- ORDER BY LAST_NAME ;


USE exercise_hr;
-- select *
-- from employees
-- where department_name='IT';
-- -- WHERE job_id='IT_PROG'; 


-- for inner join 


-- SELECT *
-- FROM employees INNER JOIN departments
-- ON employees.department_id = departments.department_id;


-- SELECT *
-- FROM employees INNER JOIN departments
-- ON employees.department_id = departments.department_id 
-- WHERE department_name ='IT';

-- SELECT first_name,last_name,e.department_id,department_name
-- FROM employees AS e INNER JOIN departments AS d
-- ON e.department_id = d.department_id;


-- SELECT department_id, count(*) as 'number of employees'
-- FROM employees
-- GROUP BY  department_id;


-- SELECT *
-- FROM employees AS e INNER JOIN employees AS m
-- ON e.manager_id = m.manager_id;


-- Write the join query to get the information of the manager of every employee
SELECT *
FROM employees AS e INNER JOIN employees AS m
ON e.manager_id = m.employee_id;

SELECT e.employee_id AS 'Employee ID',
CONCAT(e.first_name, e.last_name) AS 'Employee name', 
m.employee_id AS 'Manager ID', 
CONCAT(m.first_name, m.last_name) AS 'Manager name'
FROM employees AS e INNER JOIN employees AS m
ON e.manager_id = m.employee_id;