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

--join連接

INSERT INTO `branch` VALUES(4,`偷懶`,NULL);

--取得所有部門經理的名字

SELECT * FROM `employee`
JOIN `branch`
ON `emp_id` = `manager_id`;

SELECT * FROM `employee`
JOIN `branch`
ON `emp_id` = `manager_id`

SELECT `emp_id`, `name`,`branch_name`
FROM `employee`
JOIN `branch`
ON `emp_id` = `manager_id`;

SELECT `emp_id`, `name`,`branch_name`
FROM `employee`
JOIN `branch`
ON `employee`.`emp_id` = `branch`.`manager_id`;

SELECT `employee`.`emp_id`, `employee`.`name`, `branch`.`branch_name`
FROM `employee`
JOIN `branch`
ON `employee`.`emp_id` = `branch`. `manager_id`;

SELECT `employee`.`emp_id`,`employee`. `name`, `branch`.`branch_name`
FROM `employee` LEFT JOIN `branch`
ON `employee`.`emp_id` = `branch`.`manager_id`;


