LOGICAL OPERATORS
36. Find employees from IT department AND salary greater than 70000
SELECT * FROM Employees
WHERE department = 'IT' AND salary > 70000;
37. Find employees from Hyderabad OR Bangalore
SELECT * FROM Employees
WHERE city = 'Hyderabad' OR city = 'Bangalore';
 38. Find employees from HR department AND experience less than 3
SELECT * FROM Employees
WHERE department = 'HR' AND experience < 3;
39. Find employees with salary greater than 60000 OR experience greater than 6
SELECT * FROM Employees
WHERE salary > 60000 OR experience > 6;
 40. Find employees NOT from Sales department
SELECT * FROM Employees
WHERE department <> 'Sales';


IN AND NOT IN
41. Find employees working in ('Hyderabad', 'Mumbai')
SELECT * FROM Employees
WHERE city IN ('Hyderabad', 'Mumbai');
42. Find employees whose department IN ('IT', 'Finance')
SELECT * FROM Employees
WHERE department IN ('IT', 'Finance');
43. Find employees whose city NOT IN ('Chennai', 'Pune')
SELECT * FROM Employees
WHERE city NOT IN ('Chennai', 'Pune');
44. Find employees whose salary IN (45000, 75000, 91000)
SELECT * FROM Employees
WHERE salary IN (45000, 75000, 91000);
45. Find employees whose department NOT IN ('HR', 'Sales')
SELECT * FROM Employees
WHERE department NOT IN ('HR', 'Sales');


BETWEEN
 46. Find employees with salary BETWEEN 50000 AND 80000
SELECT * FROM Employees
WHERE salary BETWEEN 50000 AND 80000;
 47. Find employees with experience BETWEEN 3 AND 6
SELECT * FROM Employees
WHERE experience BETWEEN 3 AND 6;
48. Find employees whose emp_id BETWEEN 105 AND 112
SELECT * FROM Employees
WHERE emp_id BETWEEN 105 AND 112;
49. Find employees with salary NOT BETWEEN 40000 AND 60000
SELECT * FROM Employees
WHERE salary NOT BETWEEN 40000 AND 60000;
50. Find employees with experience BETWEEN 2 AND 4
SELECT * FROM Employees
WHERE experience BETWEEN 2 AND 4;

 LIKE OPERATOR
 51. Find employees whose names start with 'R'
SELECT * FROM Employees
WHERE emp_name LIKE 'R%';
 52. Find employees whose names end with 'a'
SELECT * FROM Employees
WHERE emp_name LIKE '%a';
 53. Find employees whose names contain 'v'
SELECT * FROM Employees
WHERE emp_name LIKE '%v%';
 54. Find employees whose city starts with 'B'
SELECT * FROM Employees
WHERE city LIKE 'B%';
 55. Find employees whose department ends with 's'
SELECT * FROM Employees
WHERE department LIKE '%s';
