DROP DATABASE IF EXISTS employeeTracker_db;

CREATE DATABASE employeeTracker_db;

USE employeeTracker_db

CREATE TABLE department (
  id INT PRIMARY KEY,
  first_name VARCHAR(30),
    super_id INT,
  
);

CREATE TABLE role (
  id INT PRIMARY KEY,
  title VARCHAR(30),
  salary DECIMAL (7,2),
 department_id INT,
);


CREATE TABLE employee (
  id INT PRIMARY KEY,
  first_name VARCHAR(30),
  last_name VARCHAR(30),
  role_id INT,
  manager_id INT,
);


-- -----------------------------------------------------------------------------

-- department
INSERT INTO department VALUES(100, 'David', NULL, NULL);

UPDATE department
SET department_id = 1
WHERE manager_id = 102;

-- role 
INSERT INTO role VALUES("title", , 75000, NULL);


UPDATE employee
SET department_id = 2
WHERE manager_id = 103;


-- employee
INSERT INTO employee VALUES(2, 'John', 'Smith');
INSERT INTO employee VALUES(2, 'Mary', 'Ann');
INSERT INTO employee VALUES(3, 'Pookie', 'Johnson');
INSERT INTO employee VALUES(2, 'Ray Ray', 'Jenekins');

INSERT INTO employee VALUES(3, ' Kim', 'Her');

INSERT INTO employee VALUES(4, ' Cardi', 'lee');
