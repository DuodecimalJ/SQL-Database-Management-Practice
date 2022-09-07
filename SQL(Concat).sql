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

SELECT * FROM `employee`
 

CREATE TABLE `branch`(
	`branch_id` INT PRIMARY KEY,
    `branch_name` VARCHAR(20),
    `manager_id` INT,
    FOREIGN KEY(`manager_id`) REFERENCES `employee`(`emp_id`) ON DELETE SET NULL
);

SELECT * FROM `branch`

ALTER TABLE`employee`
ADD FOREIGN KEY(`branch_id`)
REFERENCES `branch`(`branch_id`)
ON DELETE SET NULL;


CREATE TABLE`client`(
	`client_id` INT PRIMARY KEY,
    `client_name` VARCHAR(20),
    `phone`VARCHAR(20)
);

SELECT * FROM `client`

CREATE TABLE `works_with`(
	`emp_id` INT,
    `client_id` INT,
    `total_sales` INT,
    PRIMARY KEY(`emp_id`, `client_id`),
    FOREIGN KEY(`emp_id`) REFERENCES `employee`(`emp_id`) ON DELETE CASCADE,
    FOREIGN KEY(`client_id`) REFERENCES `client`(`client_id`) ON DELETE CASCADE

);
    
SELECT * FROM `works_with`

INSERT INTO `branch`VALUES(1,"研發",NULL);
INSERT INTO `branch`VALUES(2,"行政",NULL);
INSERT INTO `branch`VALUES(3, "資訊",NULL);

INSERT INTO `employee`VALUES(206,"小黃","1998-10-08","F","50000",1,NULL);
INSERT INTO `employee`VALUES(207,"小綠","1985-09-16","M","29000",2,206);
INSERT INTO `employee`VALUES(208,"小黑","2000-12-19","M","35000",3,206);
INSERT INTO `employee`VALUES(209,"小白","1997-01-22","F","39000",3,207);
INSERT INTO `employee`VALUES(210,"小蘭","1925-11-10","F","84000",1,207);

UPDATE `branch` 
SET `manager_id` = 206
WHERE `branch_id` = 1

UPDATE `branch`
SET `manager_id` = 207
WHERE `branch_id` = 2

UPDATE `branch`
SET `manager_id` = 208
WHERE `branch_id` = 3


INSERT INTO `client` VALUES(400,"阿狗","254354335")
INSERT INTO `client` VALUES(401,"阿貓","25633899")
INSERT INTO `client` VALUES(402,"旺來","45354345")
INSERT INTO `client` VALUES(403,"露西","54354365")
INSERT INTO `client` VALUES(404,"愛瑞克","18783783")


INSERT INTO `works_with`VALUES(206,400,"70000")
INSERT INTO `works_with`VALUES(207,401,"24000")
INSERT INTO `works_with`VALUES(208,402,"9800")
INSERT INTO `works_with`VALUES(208,403,"24000")
INSERT INTO `works_with`VALUES(210,404,"87940")

SELECT * FROM `employee`
SELECT COUNT(*) FROM `employee`;
SELECT COUNT(*) FROM `employee`;

--1. 看出取得資料有幾筆--
SELECT COUNT(`salary`) FROM `employee`
SELECT COUNT(`branch_id`) FROM `employee`

--2. 取得所有出生於1970-01-01 之後的女性員工人數
SELECT COUNT(*) FROM `employee` 
WHERE `birth_date` > "1970-01-01" AND `sex` = "F";

SELECT COUNT(*) FROM `employee` 
WHERE `birth_date` > "1970-01-01" AND `sex` = "F";

--3. 取得所有所有員工平均薪水人數
 SELECT AVG(`salary`) FROM `employee`;
 
--4. 取得所有所有員工薪水總和
SELECT SUM(`salary`) FROM `employee`;
SELECT SUM(`emp_id`) FROM `employee`;
SELECT SUM(`salary`) FROM `employee`;

--5. 取得薪水最高/最低的員工
SELECT MAX(`salary`) FROM `employee`;

--6. 取得薪水最低的員工
SELECT MIN(`salary`) FROM `employee`


 



