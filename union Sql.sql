-- Union

SELECT first_name FROM employee
UNION
SELECT branch_name FROM branch

SELECT client_name FROM CLIENT
UNION
SELECT supplier_name FROM branch_supplier

SELECT salary FROM employee
UNION
SELECT total_sales FROM works_with
