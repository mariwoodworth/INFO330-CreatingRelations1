/* Create a table called "courses" that has the following attributes on it:

code, which needs to be a string limited to 40 characters and is a primary key
description, which needs to be a string limited to 400 characters
start, which needs to be a date
end, which needs to be a date
In addition, make sure the following constraints are enforced:

code can never be NULL and must be at least 7 characters long
start and end can never be NULL
the value of end for a given row must always be after start */

CREATE TABLE courses(
  code VARCHAR PRIMARY KEY NOT NULL,
  description VARCHAR(400),
  start DATE NOT NULL,
  end DATE NOT NULL,
  CHECK(LENGTH(code)>=7 AND end>start)
);

INSERT INTO courses(code, description, start, end) VALUES('INFO330A', 'Data and databases', '2023-04-01', '2023-06-01');
INSERT INTO courses(code, description, start, end) VALUES('INFO314', 'Networking and distributed systems', '2023-04-01', '2023-06-01');
INSERT INTO courses(code, description, start, end) VALUES('INFO448A', 'Introduction to iOS', '2023-09-25', '2023-12-19');
INSERT INTO courses(code, description, start, end) VALUES('INFO449A', 'Introduction to Android', '2023-09-25', '2023-12-19');
INSERT INTO courses(code, description, start, end) VALUES('BAW0100', 'Introduction to Basket-Weaving', '2023-04-01', '2023-06-01');
INSERT INTO courses(code, description, start, end) VALUES('BAW100A', 'Underwater Basket-Weaving', '2023-04-01', '2023-06-01');
INSERT INTO courses(code, description, start, end) VALUES('GAME100', 'Introduction to game design', '2023-05-20', '2023-08-20');
