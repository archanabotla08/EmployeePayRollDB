CREATE DATABASE EMPLOYEE_PAYROLL;
SHOW DATABASES;
USE EMPLOYEE_PAYROLL;
CREATE TABLE EMPLOYEE_PAYROLL (
	ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    NAME VARCHAR(100),
    SALARY DOUBLE NOT NULL,
	START DATE
);
SHOW tables;
USE EMPLOYEE_PAYROLL;
INSERT INTO employee_payroll(NAME,SALARY,START) VALUES ('SHRUTI',50000,'2019-09-10'),('SACHIN',80000,'2020-01-09'),('VAIBHAV',50000,'2020-08-18');
SHOW table status;

SELECT * FROM employee_payroll;

SELECT * FROM employee_payroll WHERE start BETWEEN CAST('2020-01-02' AS DATE) AND DATE(NOW());

ALTER TABLE employee_payroll ADD GENDER char(1) after NAME;
UPDATE EMPLOYEE_PAYROLL SET GENDER = 'M';
SHOW table status;
DESCRIBE employee_payroll;

SELECT sum(SALARY) FROM employee_payroll WHERE GENDER = 'M' GROUP BY GENDER;
SELECT min(SALARY) FROM employee_payroll WHERE GENDER = 'M' GROUP BY GENDER;
SELECT max(SALARY) FROM employee_payroll WHERE GENDER = 'M' GROUP BY GENDER;
SELECT avg(SALARY) FROM employee_payroll WHERE GENDER = 'M' GROUP BY GENDER;

INSERT INTO employee_payroll(NAME,SALARY,START) VALUES ('SWEETY',80000,'2020-01-09');
INSERT INTO employee_payroll(name,salary,start) VALUES ('SRIDHAR',520000,'2020-02-07');
UPDATE employee_payroll SET gender = 'F' WHERE name = 'SRIDHAR';

SELECT gender,count(NAME) FROM employee_payroll GROUP BY GENDER;
SELECT avg(SALARY) FROM employee_payroll WHERE GENDER = 'F' GROUP BY GENDER;
