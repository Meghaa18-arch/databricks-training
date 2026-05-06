1. Select all columns from Employee table
SELECT * FROM Employee;
2. Select only name and salary
SELECT name, salary FROM Employee;
3. Employees older than 30
SELECT * FROM Employee WHERE age > 30;
4. Employees of IT department
SELECT * FROM Employee WHERE department_id = 1;
5. Employees who work in IT department
SELECT name FROM Employee WHERE department_id = 1;
6. Names starting with 'J'
SELECT * FROM Employee WHERE name LIKE 'J%';
7. Names ending with 'e'
SELECT * FROM Employee WHERE name LIKE '%e';
8. Names containing 'a'
SELECT * FROM Employee WHERE name LIKE '%a%';
9. Names with exactly 6 characters
SELECT * FROM Employee WHERE name LIKE '______';
10. Names with 'e' as second character
SELECT * FROM Employee WHERE name LIKE '_e%';
11. Employees hired in 2020
SELECT * FROM Employee 
WHERE YEAR(hire_date) = 2020;
12. Employees hired in January
SELECT * FROM Employee 
WHERE MONTH(hire_date) = 1;
13. Employees hired before 2019
SELECT * FROM Employee 
WHERE hire_date < '2019-01-01';
14. Employees hired on or after March 1, 2021
SELECT * FROM Employee 
WHERE hire_date >= '2021-03-01';
15. Employees hired in last 2 years
SELECT * FROM Employee 
WHERE hire_date >= DATE_SUB(CURDATE(), INTERVAL 2 YEAR);




