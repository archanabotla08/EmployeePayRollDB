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

SELECT * FROM EMPLOYEE_PAYROLL;

SELECT * FROM EMPLOYEE_PAYROLL WHERE start BETWEEN CAST('2020-01-02' AS DATE) AND DATE(NOW());

ALTER TABLE EMPLOYEE_PAYROLL ADD GENDER char(1) after NAME;
UPDATE EMPLOYEE_PAYROLL SET GENDER = 'M';
SHOW table status;
DESCRIBE EMPLOYEE_PAYROLL;

SELECT sum(SALARY) FROM EMPLOYEE_PAYROLL WHERE GENDER = 'M' GROUP BY GENDER;
SELECT min(SALARY) FROM EMPLOYEE_PAYROLL WHERE GENDER = 'M' GROUP BY GENDER;
SELECT max(SALARY) FROM EMPLOYEE_PAYROLL WHERE GENDER = 'M' GROUP BY GENDER;
SELECT avg(SALARY) FROM EMPLOYEE_PAYROLL WHERE GENDER = 'M' GROUP BY GENDER;

INSERT INTO EMPLOYEE_PAYROLL(NAME,SALARY,START) VALUES ('SWEETY',80000,'2020-01-09');
INSERT INTO EMPLOYEE_PAYROLL(name,salary,start) VALUES ('SRIDHAR',520000,'2020-02-07');
UPDATE EMPLOYEE_PAYROLL SET gender = 'F' WHERE name = 'SRIDHAR';

SELECT gender,count(NAME) FROM EMPLOYEE_PAYROLL GROUP BY GENDER;
SELECT avg(SALARY) FROM EMPLOYEE_PAYROLL WHERE GENDER = 'F' GROUP BY GENDER;


ALTER TABLE EMPLOYEE_PAYROLL ADD PHONENUMBER BIGINT AFTER START;
ALTER TABLE EMPLOYEE_PAYROLL ADD ADDRESS varchar(100) AFTER PHONENUMBER;
ALTER TABLE EMPLOYEE_PAYROLL ADD DEPEARTMENT varchar(50) NOT NULL AFTER ADDRESS;

ALTER TABLE EMPLOYEE_PAYROLL RENAME COLUMN SALARY TO BASIC_PAY;
ALTER TABLE EMPLOYEE_PAYROLL ADD DEDUCTIONS BIGINT AFTER BASIC_PAY;
ALTER TABLE EMPLOYEE_PAYROLL ADD TAXABLE_PAY BIGINT AFTER DEDUCTIONS;
ALTER TABLE EMPLOYEE_PAYROLL ADD TAX BIGINT AFTER TAXABLE_PAY;
ALTER TABLE EMPLOYEE_PAYROLL ADD NET_PAY BIGINT AFTER TAX;
