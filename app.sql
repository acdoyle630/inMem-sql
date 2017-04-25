DROP TABLE IF EXISTS todo;
  CREATE TABLE IF NOT EXISTS todo(
    id SERIAL PRIMARY KEY NOT NULL,
    name VARCHAR(10) NOT NULL,
    age INTEGER NOT NULL,
    gender VARCHAR(1) NOT NULL,
    employerId VARCHAR (20) NOT NULL
    );

INSERT INTO todo (id, name, age, gender, employerId) VALUES (DEFAULT, 'Alice', 12, 'f', 'st');

INSERT INTO todo (id, name, age, gender, employerId) VALUES (DEFAULT, 'Bob', 21, 'm', 'dv');

INSERT INTO todo (id, name, age, gender, employerId) VALUES (DEFAULT, 'Claire', 56, 'f', 'dv');

INSERT INTO todo (id, name, age, gender, employerId) VALUES (DEFAULT, 'David', 9, 'm', 'na');

INSERT INTO todo (id, name, age, gender, employerId) VALUES (DEFAULT, 'Eric', 61, 'm', 'dv');

INSERT INTO todo (id, name, age, gender, employerId) VALUES (DEFAULT, 'Fred', 45, 'm', 'dv');

INSERT INTO todo (id, name, age, gender, employerId) VALUES (DEFAULT, 'George', 38, 'm', 'dv');

INSERT INTO todo (id, name, age, gender, employerId) VALUES (DEFAULT, 'Hannah', 15, 'f', 'na');

INSERT INTO todo (id, name, age, gender, employerId) VALUES (DEFAULT, 'Ilona', 17, 'f', 'st');

INSERT INTO todo (id, name, age, gender, employerId) VALUES (DEFAULT, 'Jake', 27, 'm', 'dv');

INSERT INTO todo (id, name, age, gender, employerId) VALUES (DEFAULT, 'Kathy', 8, 'f', 'na');

INSERT INTO todo (id, name, age, gender, employerId) VALUES (DEFAULT, 'Liam', 20, 'm', 'st');

DROP TABLE IF EXISTS employer;
CREATE TABLE IF NOT EXISTS employer(
  id SERIAL PRIMARY KEY NOT NULL,
  abv VARCHAR(9) NOT NULL,
  str VARCHAR(9) NOT NULL
);

INSERT INTO employer
(abv, str) VALUES ('dv','DevLeague');

INSERT INTO employer
(abv, str) VALUES ('st', 'Student');

INSERT INTO employer
(abv, str) VALUES ('na', 'N/A');


SELECT *
FROM todo;

SELECT *
FROM employer;


SELECT *
FROM todo
WHERE id = 2;

SELECT min(age)
  FROM todo;

SELECT max(age)
  FROM todo;

SELECT *
  FROM todo
  WHERE gender = 'm';

SELECT *
  FROM todo
  WHERE gender = 'f';

UPDATE todo
  SET employerId = employer.str
  FROM employer
  WHERE employerId = employer.abv;

SELECT *
  FROM todo;

SELECT *
  FROM todo
  WHERE age >= 21;

SELECT*
  FROM todo
  ORDER BY employerId, name ASC;

