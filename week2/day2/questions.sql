21. Maximum salary in each department
SELECT department_id, MAX(salary)
FROM Employee
GROUP BY department_id;
22. Departments having more than 2 employees
SELECT department_id, COUNT(*)
FROM Employee
GROUP BY department_id
HAVING COUNT(*) > 2;
23. Employees sorted by salary ascending
SELECT * FROM Employee
ORDER BY salary ASC;
24. Employees sorted by salary descending
SELECT * FROM Employee
ORDER BY salary DESC;
25. Top 3 highest-paid employees
SELECT * FROM Employee
ORDER BY salary DESC
LIMIT 3;
26. Employee names in alphabetical order
SELECT * FROM Employee
ORDER BY name ASC;
27. Employees with salary between 30000 and 60000
SELECT * FROM Employee
WHERE salary BETWEEN 30000 AND 60000;
28. Employees whose age is either 25 or 30
SELECT * FROM Employee
WHERE age IN (25, 30);
29. Employees not in HR department
SELECT * FROM Employee
WHERE department_id <> 2;
30. Employees with NULL manager_id
SELECT * FROM Employee
WHERE manager_id IS NULL;
JOIN Queries
31. Display employee names with department names
SELECT Employee.name, Department.department_name
FROM Employee
JOIN Department
ON Employee.department_id = Department.department_id;
32. Employees and their managers
SELECT E.name AS Employee, M.name AS Manager
FROM Employee E
LEFT JOIN Employee M
ON E.manager_id = M.employee_id;
33. Employees working in New York location
SELECT Employee.name
FROM Employee
JOIN Department
ON Employee.department_id = Department.department_id
WHERE Department.location = 'New York';
34. Department names with employee count
SELECT Department.department_name, COUNT(Employee.employee_id)
FROM Department
LEFT JOIN Employee
ON Department.department_id = Employee.department_id
GROUP BY Department.department_name;
35. Employees earning more than their manager
SELECT E.name
FROM Employee E
JOIN Employee M
ON E.manager_id = M.employee_id
WHERE E.salary > M.salary;
Subqueries
36. Employees earning above average salary
SELECT * FROM Employee
WHERE salary > (
    SELECT AVG(salary) FROM Employee
);
37. Employees working in department with highest average salary
SELECT *
FROM Employee
WHERE department_id = (
    SELECT department_id
    FROM Employee
    GROUP BY department_id
    ORDER BY AVG(salary) DESC
    LIMIT 1
);
38. Second highest salary
SELECT MAX(salary)
FROM Employee
WHERE salary < (
    SELECT MAX(salary) FROM Employee
);
39. Employees whose salary equals maximum salary
SELECT *
FROM Employee
WHERE salary = (
    SELECT MAX(salary) FROM Employee
);
40. Employees who belong to Sales department
SELECT *
FROM Employee
WHERE department_id = (
    SELECT department_id
    FROM Department
    WHERE department_name = 'Sales'
);

