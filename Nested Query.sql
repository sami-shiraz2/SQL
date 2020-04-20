CREATE TABLE employee (
emp_id INT NOT NULL AUTO_INCREMENT,
first_name NVARCHAR(50) NULL,
last_name NVARCHAR(50) NULL,
birth_date DATE NULL,
sex NVARCHAR(1) NULL,
salary INT NULL,
super_id INT NULL,
branch_id INT NULL,
PRIMARY KEY(emp_id)
);

CREATE TABLE branch(
branch_id INT NOT NULL AUTO_INCREMENT,
branch_name NVARCHAR(50) NULL,
mgr_id INT NULL,
mgr_start_date DATE NULL,
FOREIGN KEY(mgr_id) REFERENCES employee(emp_id) ON DELETE SET NULL,
PRIMARY KEY(branch_id)
);

ALTER TABLE employee
ADD FOREIGN KEY(super_id) REFERENCES employee(emp_id)
ON DELETE SET NULL

ALTER TABLE employee
ADD FOREIGN KEY(branch_id) REFERENCES branch(branch_id)
ON DELETE SET NULL

CREATE TABLE CLIENT(
client_id INT NOT NULL AUTO_INCREMENT,
client_name NVARCHAR(50) NULL,
branch_id INT NULL,
FOREIGN KEY(branch_id) REFERENCES branch(branch_id) ON DELETE SET NULL,
PRIMARY KEY(client_id)
);

CREATE TABLE works_with(
emp_id INT,
client_id INT,
total_sales INT,
PRIMARY KEY(emp_id, client_id),
FOREIGN KEY(emp_id) REFERENCES employee(emp_id) ON DELETE CASCADE,
FOREIGN KEY(client_id) REFERENCES CLIENT(client_id) ON DELETE CASCADE
);

CREATE TABLE branch_supplier(
branch_id INT,
supplier_name NVARCHAR(50),
supply_type NVARCHAR(50),
FOREIGN KEY(branch_id) REFERENCES branch(branch_id) ON DELETE CASCADE,
PRIMARY KEY(branch_id, supplier_name)
);

CREATE VIEW vCombinedRecords AS
SELECT * 
FROM employee
JOIN
SELECT * FROM branch







-- Corporate

INSERT INTO employee VALUES(100, 'David', 'Wallace', '1967-11-17', 'M', 250000, NULL, NULL);

INSERT INTO branch VALUES(1, 'Corporate', 100, '2006-02-09');

UPDATE employee
SET branch_id = 1
WHERE emp_id = 100;

INSERT INTO employee VALUES(101, 'Jan', 'Levinson', '1961-05-11', 'F', 110000, 100, 1);

-- Scranton

INSERT INTO employee VALUES(102, 'Michael', 'Scott', '1964-03-15', 'M', 75000, 100, NULL);

INSERT INTO branch VALUES(2, 'Scranton', 102, '1992-04-06');

UPDATE employee
SET branch_id = 2
WHERE emp_id = 102;

INSERT INTO employee VALUES(103, 'Angela', 'Martin', '1971-06-25', 'F', 63000, 102, 2);
INSERT INTO employee VALUES(104, 'Kelly', 'Kapoor', '1980-02-05', 'F', 55000, 102, 2);
INSERT INTO employee VALUES(105, 'Stanley', 'Hudson', '1958-02-19', 'M', 69000, 102, 2);

-- Stamford

INSERT INTO employee VALUES(106, 'Josh', 'Porter', '1969-09-05', 'M', 78000, 100, NULL);

INSERT INTO branch VALUES(3, 'Stamford', 106, '1998-02-13');

UPDATE employee
SET branch_id = 3
WHERE emp_id = 106;

INSERT INTO employee VALUES(107, 'Andy', 'Bernard', '1973-07-22', 'M', 65000, 106, 3);
INSERT INTO employee VALUES(108, 'Jim', 'Halpert', '1978-10-01', 'M', 71000, 106, 3);

-- Branch Supplier

INSERT INTO branch_supplier VALUES(2, 'Hammer Mill', 'Paper');
INSERT INTO branch_supplier VALUES(2, 'Uni-ball', 'Writing Utensils');
INSERT INTO branch_supplier VALUES(3, 'Patriot Paper', 'Paper');
INSERT INTO branch_supplier VALUES(2, 'J.T. Forms & Labels', 'Custom Forms');
INSERT INTO branch_supplier VALUES(3, 'Uni-ball', 'Writing Utensils');
INSERT INTO branch_supplier VALUES(3, 'Hammer Mill', 'Paper');
INSERT INTO branch_supplier VALUES(3, 'Stamford Lables', 'Custom Forms');

-- Client

INSERT INTO CLIENT VALUES(400, 'Dunmore Highschool', 2);
INSERT INTO CLIENT VALUES(401, 'Lackawana Country', 2);
INSERT INTO CLIENT VALUES(402, 'FedEx', 3);
INSERT INTO CLIENT VALUES(403, 'John Daly Law, LLC', 3);
INSERT INTO CLIENT VALUES(404, 'Scranton Whitepages', 2);
INSERT INTO CLIENT VALUES(405, 'Times Newspaper', 3);
INSERT INTO CLIENT VALUES(406, 'FedEx', 2);

-- Workes With

INSERT INTO works_with VALUES(105, 400, 55000);
INSERT INTO works_with VALUES(102, 401, 267000);
INSERT INTO works_with VALUES(108, 402, 22500);
INSERT INTO works_with VALUES(107, 403, 5000);
INSERT INTO works_with VALUES(108, 403, 12000);
INSERT INTO works_with VALUES(105, 404, 33000);
INSERT INTO works_with VALUES(107, 405, 26000);
INSERT INTO works_with VALUES(102, 406, 15000);
INSERT INTO works_with VALUES(105, 406, 130000);

SELECT * FROM branch
ORDER BY mgr_start_date

SELECT * FROM employee
ORDER BY salary ASC

SELECT * FROM employee
ORDER BY sex, first_name, last_name

SELECT * FROM employee
LIMIT 5

SELECT first_name AS NAME, last_name AS SurName
FROM employee

SELECT DISTINCT sex FROM employee

SELECT DISTINCT branch_id FROM branch

SELECT DISTINCT emp_id FROM employee

SELECT COUNT(emp_id) FROM employee

SELECT * FROM employee
WHERE sex = 'F' AND birth_date > 1970

SELECT AVG(salary) FROM employee
WHERE sex = 'M'

SELECT SUM(salary) FROM employee

SELECT COUNT(sex), sex
FROM employee
GROUP BY sex

SELECT SUM(total_sales), emp_id
FROM works_with
GROUP BY emp_id

SELECT AVG(total_sales), emp_id
FROM works_with
GROUP BY emp_id

SELECT * FROM employee


UPDATE db2 SET db2.table.field1 =  db1.table.field1
FROM db2
JOIN db1 
ON db2.id = db1.id         -- condition met


















DECLARE @counter INT

SET @counter = 1

WHILE @counter <= 15
    BEGIN
        UPDATE employee
        SET age = 21
        WHERE e_id = 2
        
        SET @counter = @counter + 1
    END
    
    
   setect * FROM employee
     
   
   
 cursor1.execute("SELECT rfid, time FROM %s" % (today))
FOR ROW IN cursor1.fetchall():
rfid, TIME = ROW
cursor2.execute("""UPDATE stefar_timing.races SET tp3 = %s WHERE runners_id = %s """, ( TIME, rfid )  
     
     
     
     
     
     
     
     
     
     

-- work done inshallah

CREATE VIEW vCombinedRecords AS
SELECT * FROM root.dbo.MyTable
UNION ALL
SELECT * FROM races.dbo.MyTable

SELECT * FROM vCombinedRecords 
WHERE rfid = runners_id 

UPDATE races SET tp1 = %s 
WHERE runners_id = %s 



cursor1.execute("SELECT rfid, time FROM %s" % (today))
FOR ROW IN cursor1.fetchall():
rfid, TIME = ROW
cursor2.execute("""UPDATE races SET tp3 = %s WHERE runners_id = %s """, ( TIME, rfid ))




SELECT * FROM staff

SELECT staff.fName, branch.street, branch.branchNo
FROM staff
INNER JOIN branch
ON branch.branchNo = staff.branchNo


SELECT staff.fName, branch.street
FROM staff
INNER JOIN branch
ON branch.branchNo = staff.branchNo
ORDER BY staff.fname


SELECT Staff.fname,branch.street
FROM staff
OUTER JOIN branch
ON staff.branchNo=branch.branchNo
ORDER BY staff.fname

SELECT Staff.fname,branch.street
FROM staff
LEFT JOIN branch
ON staff.branchNo=branch.branchNo
ORDER BY staff.fname
