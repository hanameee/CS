-- 0. Drop table INSTRUCTOR in case it already exists
drop table INSTRUCTOR
;
--1. Create table INSTRUCTOR
CREATE TABLE INSTRUCTOR
(
  ins_id INTEGER PRIMARY KEY NOT NULL,
  lastname VARCHAR(15) NOT NULL,
  firstname VARCHAR(15) NOT NULL,
  city VARCHAR(15),
  country CHAR(2)
)
;
--2A. Insert single row for Rav Ahuja
INSERT INTO INSTRUCTOR
  (ins_id, lastname, firstname, city, country)
VALUES
  (1, 'Ahuja', 'Rav', 'Toronto', 'CA')
;
--2B. Insert the two rows for Raul and Hima
-- 모든 열일때는 column 정보를 생략할 수 있고, 동시에 여러 row를 쉼표로 연결해 추가할 수 있다.
INSERT INTO INSTRUCTOR
VALUES
  (2, 'Chong', 'Raul', 'Toronto', 'CA'),
  (3, 'Vasudevan', 'Hima', 'Chicago', 'US')
;
--3. Select all rows in the table
SELECT *
FROM INSTRUCTOR
;
--3b. Select firstname, lastname and country where city is Toronto
SELECT firstname, lastname, country
from INSTRUCTOR
where city='Toronto'
;
--4. Change the city for Rav to Markham
UPDATE INSTRUCTOR SET city='Markham' where ins_id=1
;
--5. Delete the row for Raul Chong
DELETE FROM INSTRUCTOR where ins_id=2
;
--5b. Retrieve all rows from the table
SELECT *
FROM INSTRUCTOR 
;
