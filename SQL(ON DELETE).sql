CREATE DATABASE `sql_tutorial`;
SHOW DATABASES;
USE `sql_tutorial`;

CREATE TABLE `employee`(
	`emp_id` INT PRIMARY KEY,
    `name` VARCHAR(20),
    `birth_date` DATE,
    `sex` VARCHAR(1),
    `salary` INT,
    `branch_id` INT,
    `sup_id` INT
    
);

--ON DELETE
--如果資料同時是pRIM/FOREI不能使用SET NULL, 否則出錯，只能使用CASCAD


CREATE TABLE `branch`(
	`branch_id` INT PRIMARY KEY,
    `branch_name` VARCHAR(20),
    `manager_id` INT,

SELECT * FROM `branch`		
SELECT * FROM `works_with`


CREATE TABLE `branch`(
	`branch_id` INT PRIMARY KEY,
    `branch_name` VARCHAR(20),
    `manager_id` INT,
    FOREIGN KEY(`manager_id`) REFERENCES `employee`(`emp_id`) ON DELETE SET NULL

);


CREATE TABLE `works_with`(
	`emp_id` INT,
	`client_id` INT,
	`total_sales`INT,	
	PRIMARY KEY(`emp_id`,`client_id`),
    FOREIGN KEY(`emp_id`) REFERENCES `employee`(`emp_id`) ON DELETE CASCADE,
	FOREIGN KEY(`client_id`) REFERENCES `client`(`client_id`) ON DELETE CASCADE

);

DELETE FROM `employee`
WHERE `emp_id` = 207;

SELECT * FROM `works_with`

