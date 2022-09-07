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
INSERT INTO `student` VALUES(2, "小白","英語","50");
INSERT INTO `student` VALUES(3, "小黑","英語","60");

UPDATE `student`
SET `major` = "英語文學"
WHERE `name` = "小白"

UPDATE `student`
SET `name` = "小黃"
WHERE `name` = "小白" 

UPDATE `student`
SET `major` = "生物"
WHERE `score` = "50"

UPDATE `student`
SET `major` = "歷史"
WHERE `major` = "生物" or `major` = "英語"

UPDATE `student`
SET `name` = "小黃", `major` = "公民"
WHERE `name` = "小灰";

UPDATE `student` 
SET `major` = "物理"

DELETE FROM `student`
WHERE `student_id` = 1;

INSERT INTO `student` VALUES(1,"小白","歷史","20");
INSERT INTO `student` VALUES(4,"小黃","計算機","30");

DELETE FROM `student` 
WHERE `name` = "小白" and `score` = "20"

DELETE FROM `student`
WHERE `score` = 60;

SELECT* FROM `student`;
INSERT INTO `student` VALUES(1,"小紅","地科","70");

