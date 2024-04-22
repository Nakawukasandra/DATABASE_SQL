CREATE TABLE employees_QN (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    salary DECIMAL(10, 2),
    department_id INT,
    hire_date DATE
);

CREATE TABLE departments_QN(
    id INT PRIMARY KEY,
    name VARCHAR(255)
);
INSERT INTO departments_QN(id, name) 
VALUES 
    (1, 'Engineering'),
    (2, 'Sales'),
    (3, 'Marketing'),
    (4, 'HR');

INSERT INTO employees_QN(id, name, salary, department_id, hire_date)
VALUES
     (2,'Bob',70000.00,1,'2020-01-15'),
	 (3,'Charlie',80000.00,2,'2020-02-01'),
	 (4,'Dave',90000.00,3,'2020-02-15'),
	 (5,'Eve',100000.00,4,'2020-03-01');
	 
WITH ranked_employees_QN AS (
    SELECT 
        e.name,
        e.salary,
        e.department_id,
        ROW_NUMBER() OVER (PARTITION BY e.department_id ORDER BY e.salary DESC) AS rank
    FROM 
        employees e
)
SELECT 
    r.name,
    r.salary,
    d.name AS department
FROM 
    ranked_employees_QN r
INNER JOIN 
    departments_QN d ON r.department_id = d.id
WHERE 
    r.rank = 1;

	 
	 
	 
	 
	 
	 


