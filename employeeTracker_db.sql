DROP DATABASE IF EXISTS employeeTracker_db;

CREATE DATABASE employeeTracker_db;

USE employeeTracker_db;


CREATE TABLE department (
  id INTEGER(11) AUTO_INCREMENT NOT NULL, 
  first_name VARCHAR(30),
 PRIMARY KEY (id)
);

CREATE TABLE role (
id INTEGER(11) AUTO_INCREMENT NOT NULL,
  title VARCHAR(30),
  salary DECIMAL (7,2),
 department_id INT,
  PRIMARY KEY (id)
);


CREATE TABLE employee (
  id INTEGER(11) AUTO_INCREMENT NOT NULL,  
  first_name VARCHAR(30),
  last_name VARCHAR(30),
  role_id INT,
  manager_id INT,
  PRIMARY KEY (id)
);


-- -----------------------------------------------------------------------------

-- department
INSERT INTO department(first_name)
VALUES('David');



-- role 
INSERT INTO role (title, salary)
VALUES("supervisor", 75000.00);




-- employee
INSERT INTO employee (first_name, last_name)
VALUES('John', 'Smith');

INSERT INTO employee (first_name, last_name)
VALUES( 'Mary', 'Ann');

INSERT INTO employee (first_name, last_name) 
VALUES( 'Pookie', 'Johnson');

INSERT INTO employee (first_name, last_name) 
VALUES( 'Ray Ray', 'Jenekins');

INSERT INTO employee (first_name, last_name) 
VALUES( ' Kim', 'Her');

INSERT INTO employee (first_name, last_name) 
VALUES(' Cardi', 'lee');
