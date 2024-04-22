DROP TABLE IF EXISTS employees;
CREATE TABLE employees(
	id INT PRIMARY KEY,
	name VARCHAR(255),
	age INT,
	address VARCHAR(255)
);
INSERT INTO employees(id,name,age,address)
VALUES
     (1001,'Rohan','26','Delhi'),
	 (1002,'Ankit','30','Gurgon'),
	 (1003,'Gaurav','27','Mumbai'),
	 (1004,'Raja','32','Nagpur');
	 
SELECT * FROM employees 
WHERE id = 1004;

SELECT * FROM employees;

SELECT * FROM employees 
WHERE name LIKE 'R%';

SELECT id, age, name FROM employees ORDER BY age ASC, name DESC;

SELECT DISTINCT address FROM employees;







