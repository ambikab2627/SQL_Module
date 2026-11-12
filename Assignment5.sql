create database assignment1;
use assignment1;

-- 1. Table Creation ---
create table DEPARTEMENT(
department_id  int primary key auto_increment,
department_name varchar(100) );

create table location(
location_id  int primary key auto_increment,
location varchar(30) );

create table employee(
 employee_id int primary key auto_increment,
employee_name varchar(50),
gender enum('m','f'),
age int ,
hire_date date,
designation varchar(100),
salary decimal(10,2) default 0,
department_id int,
location_id int,
foreign key (department_id) references departement(department_id),
foreign key (location_id) references location(location_id)
);

-- 2. Table Alteration --
ALTER TABLE employee ADD email VARCHAR(100);
ALTER TABLE employee MODIFY designation VARCHAR(255);
ALTER TABLE employee DROP COLUMN age;
ALTER TABLE employee RENAME COLUMN hire_date TO date_of_joining;

-- 3. Table Renaming --
RENAME TABLE DEPARTEMENT TO Departments_Info;
RENAME TABLE Location TO Locations;

-- 4. Table Truncation --
TRUNCATE TABLE employee;

-- 5. Table Truncation --
DROP TABLE employee;
DROP DATABASE assignment1;

-- Constraints :
-- 1. Database Recreation:
DROP DATABASE IF EXISTS employee;
CREATE DATABASE employee;
USE employee;

-- 2. Departments Table
CREATE TABLE department (
    department_id INT PRIMARY KEY AUTO_INCREMENT,
    department_name VARCHAR(100) UNIQUE NOT NULL
);
-- 3. Location Table
CREATE TABLE location (
    location_id INT PRIMARY KEY AUTO_INCREMENT,
    location VARCHAR(30) NOT NULL UNIQUE
);
-- 4. Employees Table
CREATE TABLE employees (
    employee_id INT PRIMARY KEY AUTO_INCREMENT,
    employee_name VARCHAR(50) NOT NULL,
    gender ENUM('M', 'F'),
    age INT CHECK (age >= 18),
    hire_date DATE DEFAULT (CURRENT_DATE),
    designation VARCHAR(100),
    salary DECIMAL(10,2) DEFAULT 0,
    department_id INT,
    location_id INT,
    FOREIGN KEY (department_id)
        REFERENCES department(department_id),
    FOREIGN KEY (location_id)
        REFERENCES location(location_id)
);









