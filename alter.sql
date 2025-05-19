--all data find
SELECT * FROM person2

--1 column data added
ALTER TABLE person2 ADD COLUMN email VARCHAR(50) DEFAULT 'default@gmail.com' NOT NULL;

--1 row data added
INSERT INTO person2 VALUES(4, 'text',45, 'text@gmail.com')

ALTER TABLE person2
ADD constraint unique_person2_user_age UNIQUE(age)