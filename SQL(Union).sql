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

SELECT * FROM `client`

--Wildcards 萬用字元 % 代表多字_一個字元

--1. 取得號碼尾數是335客戶--

SELECT * FROM `client` 
WHERE `phone` LIKE "%335";

SELECT * FROM `client`

SELECT * FROM `client`
WHERE `phone` LIKE "254%";

--2.取得姓愛的客戶--

SELECT * FROM `client`
WHERE `client_name` LIKE "愛%"

--3.取得生日在12月的員工
SELECT * FROM `employee`
WHERE `birth_date` LIKE "_____09%"

--UNION--聯集

--1. 員工名 UNION 客戶名
SELECT `name` 
FROM `employee`
UNION
SELECT `client_name`
FROM `client`
UNION
SELECT`branch_name`
FROM `branch`;

--2. 員工ID + 員工名 UNION 客戶ID + 客戶名字
SELECT `emp_id`,`name`
FROM `employee`
UNION
SELECT `client_id`,`client_name`
FROM `client`;

--3. 員工薪水 UNION 銷售金額
SELECT `salary`
FROM `employee`
UNION
SELECT `total_sales`
FROM `works_with`;

SELECT `salary` AS `total_money`
FROM `employee`
UNION
SELECT `total_sales`
FROM `works_with`;

