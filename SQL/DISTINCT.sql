CREATE TABLE NAME_ONE(
FIRST_NAME VARCHAR(20),
LAST_NAME VARCHAR(20)
);

SELECT * FROM `NAME_ONE`;
INSERT INTO NAME_ONE VALUES('ARUN','SHARMA',1);
INSERT INTO NAME_ONE VALUES('ROHAN','SHARMA',2);
INSERT INTO NAME_ONE VALUES('ARUN','SHARMA',3);
INSERT INTO NAME_ONE VALUES('ROHAN','SHARMA',4);
INSERT INTO NAME_ONE VALUES('ARUN','SHARMA',5);
INSERT INTO NAME_ONE VALUES('ROHAN','SHARMA',6);
INSERT INTO NAME_ONE VALUES('ROHIT','SHARMA',7);
INSERT INTO NAME_ONE VALUES('RAHUL','SHARMA',8);
INSERT INTO NAME_ONE VALUES('RAJAT','SHARMA',9);
INSERT INTO NAME_ONE VALUES('ROBIN','SHERGILL',10);
DELETE FROM `NAME_ONE` WHERE `S_NO`=1;
DELETE FROM `NAME_ONE` WHERE `S_NO`=2;
SELECT * FROM `NAME_ONE` ORDER BY `S_NO`;
ROLLBACK;

ALTER TABLE `NAME_ONE`
ADD S_NO INT;


CREATE TABLE NAME_TWO  AS SELECT  DISTINCT `FIRST_NAME` FROM  NAME_ONE;
SELECT * FROM NAME_TWO;