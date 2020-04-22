-- wild card

SELECT * FROM CLIENT
WHERE client_name LIKE '%LLC';

SELECT * FROM branch_supplier
WHERE supplier_name LIKE '%labels'

SELECT * FROM employee
WHERE birth_date LIKE '%____-10%'

SELECT * FROM branch supplier
WHERE branch_name LIKE '%cor%'