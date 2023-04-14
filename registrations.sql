/* Students need to be able to sign up for courses, which is a many-to-many relationship, so we need to create a table that reflects this relationship. Create a table called "student_courses" that has the following attributes:

studentid, a foreign key to the student taking the course
course, a foreign key to the course they are taking
grade, a floating-point value that defaults to NULL when data is inserted
Make sure the following students are enrolled in the following list of courses:

Fred Flintstone is taking INFO330A, INFO448A, and INFO314
Barney Rubble is taking INFO330A, and INFO449A
Wilma Flintstone is taking BAW010 and BAW100
Betty Rubble is taking BAW010 */

CREATE TABLE student_courses(
  studentid INTEGER,
  course VARCHAR,
  grade FLOAT NULL,
  FOREIGN KEY(studentid) REFERENCES students(id),
  FOREIGN KEY(course) REFERENCES courses(code)
);

INSERT INTO student_courses VALUES ((SELECT id FROM students WHERE firstname='Fred'), (SELECT code FROM courses WHERE code='INFO330A'), 3.2);
INSERT INTO student_courses VALUES ((SELECT id FROM students WHERE firstname='Fred'), (SELECT code FROM courses WHERE code='INFO448A'), 3.8);
INSERT INTO student_courses VALUES ((SELECT id FROM students WHERE firstname='Fred'), (SELECT code FROM courses WHERE code='INFO314'), 3.4);

INSERT INTO student_courses VALUES ((SELECT id FROM students WHERE firstname='Barney'), (SELECT code FROM courses WHERE code='INFO330A'), 4.0);
INSERT INTO student_courses VALUES ((SELECT id FROM students WHERE firstname='Barney'), (SELECT code FROM courses WHERE code='INFO449A'), 3.8);

INSERT INTO student_courses VALUES ((SELECT id FROM students WHERE firstname='Wilma'), (SELECT code FROM courses WHERE code='BAW0100'), 2.8);
INSERT INTO student_courses VALUES ((SELECT id FROM students WHERE firstname='Wilma'), (SELECT code FROM courses WHERE code='BAW100A'), 3.1);

INSERT INTO student_courses VALUES ((SELECT id FROM students WHERE firstname='Betty'), (SELECT code FROM courses WHERE code='BAW0100'), 4.0);
