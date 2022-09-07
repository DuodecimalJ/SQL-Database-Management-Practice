CREATE DATABASE `sql_tutorial`;
SHOW DATABASES;
USE `sql_tutorial`;

CREATE TABLE`student`(
	`student_id` INT AUTO_INCREMENT, 
    `name` VARCHAR(20) NOT NULL,
    `major` VARCHAR(20),
    PRIMARY KEY(`student_id`)
);

DESCRIBE `student`;
SELECT * FROM `student`;
DROP TABLE `student`;


INSERT INTO `student` VALUES(1, "小白","歷史");
INSERT INTO `student` (`student_id`,`name`) VALUES("2","小黑");
INSERT INTO `student`(`name`, `major`) VALUES("小黃","公民");
INSERT INTO `student`(`major`,`name`) VALUES("普化","小蘭");


SET SQL_SAFE_UPDATES = 0;

CREATE TABLE `student`(
	`student_id` INT PRIMARY KEY,
    `name` VARCHAR(20),
    `major` VARCHAR(20),
    `score` INT
);

SELECT* FROM `student`;

INSERT INTO `student` VALUES(1, "小白","歷史","50");
INSERT INTO `student` VALUES(2, "小白","歷史","50");
INSERT INTO `student` VALUES(3, "小黃","生物","90");
INSERT INTO `student` VALUES(4, "小藍","數學","80");

UPDATE `student`
SET `score` = "40"
WHERE `student_id` =1;

SELECT `name`,`major` FROM `student` ORDER BY `score`;

SELECT* FROM `student` ORDER BY `score` DESC;
SELECT* FROM `student` ORDER BY `score`;
SELECT *FROM `student` ORDER BY `score` DESC LIMIT 3;

SELECT * FROM `student` LIMIT 2 ;
 
SELECT * FROM `student` WHERE `major` = "生物" AND `name` = "小黃";
SELECT * FROM `student` WHERE `major` = "歷史" OR `name` = "小黃"

SELECT * FROM `student` WHERE `score` <=80;
SELECT * FROM `student` WHERE `score` <>80;
SELECT * FROM `student` WHERE `score` <>80 LIMIT 3;
 
SELECT * FROM `student` WHERE `major` IN("歷史", "生物");
SELECT * FROM `student` WHERE `student_id` IN(1,2); 

 


