CREATE DATABASE girafee

CREATE TABLE student(
student_id INT NOT NULL AUTO_INCREMENT,
NAME VARCHAR(50) NULL,
major VARCHAR(50) NULL DEFAULT 'Undecided',
PRIMARY KEY(student_id)
);

DESCRIBE student

ALTER TABLE student 
ADD COLUMN GPA DECIMAL(3,2) NULL

ALTER TABLE student
DROP COLUMN GPA

INSERT INTO student VALUES(1, 'Jack', 'Biology');
INSERT INTO student VALUES(2, 'Kate', 'Scicology');
INSERT INTO student(student_id,NAME) VALUES(4, 'Sami');
INSERT INTO student(NAME,major) VALUES('khan', NULL);
INSERT INTO student(NAME,major) VALUES('Sehraan', 'Commerce');
INSERT INTO student(NAME,major) VALUES('Zain', 'Commerce');
INSERT INTO student(NAME,major) VALUES('Sandal', 'Bio');
INSERT INTO student(NAME,major) VALUES('Nizar', 'Chemistry');

SELECT * FROM student;

UPDATE student
SET major = 'Bio'
WHERE major = 'Biology'

UPDATE student 
SET NAME = 'Shahzaib'
WHERE NAME = 'khan'

UPDATE student 
SET major = 'Comm'
WHERE major = 'Commerce'

UPDATE student 
SET major = 'BioChemistry'
WHERE major = 'Bio' OR major = 'Chemistry'

UPDATE student
SET NAME = 'Rome', major = 'Undecided'
WHERE student_id = 9

SELECT * FROM student

UPDATE student
SET major = 'Undecided'

DELETE FROM student
WHERE student_id = 9

SELECT NAME,major FROM student

SELECT NAME,major FROM student
ORDER BY NAME 

SELECT NAME,major FROM student
ORDER BY NAME DESC 


SELECT * FROM student
ORDER BY student_id ASC


SELECT * FROM student
LIMIT 3


SELECT * FROM student
ORDER BY NAME
LIMIT 2

SELECT * FROM student
WHERE NAME IN ('Zain', 'Sandal','Jack')