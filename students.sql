/* Create a table called "students" that has the following attributes on it:

id, which needs to be an integer primary key
firstname, which needs to be a string type limited to 40 characters
lastname, which needs to be a string type limited to 80 characters
age, which needs to be a numeric type */

CREATE TABLE students (
	id INTEGER PRIMARY KEY NOT NULL,
	firstname	varchar(40),
	lastname varchar(80),
	age	INT
);

INSERT INTO students (firstname, lastname, age) VALUES('Fred', 'Flintstone', 35);
INSERT INTO students (firstname, lastname, age) VALUES('Wilma', 'Flintstone', 29);
INSERT INTO students (firstname, lastname, age) VALUES('Barney', 'Rubble', 33);
INSERT INTO students (firstname, lastname, age) VALUES('Betty', 'Rubble', 29);
INSERT INTO students (firstname, lastname, age) VALUES('Pebbles', 'Flintstone', 1);
INSERT INTO students (firstname, lastname, age) VALUES('Bam-Bam', 'Rubble', 1);
INSERT INTO students (firstname, lastname, age) VALUES('Sarah', 'Flintstone', 21);
INSERT INTO students (firstname, lastname, age) VALUES('Rob', 'Rubble', 28);
INSERT INTO students (firstname, lastname, age) VALUES('Patty', 'Rubble', 40);
