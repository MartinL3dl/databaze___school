12.1

create database school;


create table students (
  id_student int AUTO_INCREMENT,
  firstname varchar(256) NOT NULL,
  lastname varchar(256) NOT NULL,
  class varchar(256),
  email varchar(256),
  PRIMARY KEY (id_student)
);

create table teachers (
  id_teacher int AUTO_INCREMENT,
  firstname varchar(256) NOT NULL,
  lastname varchar(256) NOT NULL,
  email varchar(256),
  description varchar(256),
  PRIMARY KEY (id_student)
);

INSERT INTO `students` (`id_student`, `firstname`, `lastname`, `class`, `email`) 
VALUES
(1,	'Simon',	'Siksta',	'2c',	'simonskista.ossp.cz'),
(2,	'Sorin',	'Eni',	'2c',	'sorineni.ossp.cz'),
(3,	'Martin',	'Ledl',	'2c',	'martinledl.ossp.cz');

INSERT INTO `teachers` (`id_teacher`, `firstname`, `lastname`, `email`, `description`) 
VALUES
(1,	'Tacomamna',	'komunikaci',	'nevimjmeno.ossp.cz',	'hippie'),
(2,	'Lenka',	'Sklenarova',	'Lenka.Sklenarova@ossp.cz',	'best chad'),
(3,	'Lukas',	'Jakoubek',	'Jakoubek.Lucas@ossp.cz',	'senpai <3');


25.1 2021

CREATE TABLE subjects (
  id_subject int AUTO_INCREMENT,
  name varchar(255) NOT NULL,
  description text,
  PRIMARY KEY (id_subject)
);


INSERT INTO `subjects` (`id_subject`, `name`, `description`) VALUES
(1,	'ekonomie',	'nevim nejsem ekonom'),
(2,	'haseni',	'nevim nejsem hasic'),
(3,	'foceni',	'nevim nejsem fotograf'),
(4,	'zaklady spol. ved',	'sedeni a poslouchani starobylich zprav o socialnich / zdravotnich vecech - YEY'),
(5,	'AHHHHH',	'placeholder'),
(6,	'AHHHHH',	'placeholder'),
(7,	'AHHHHH',	'placeholder'),
(8,	'AHHHHH',	'placeholder'),
(9,	'AHHHHH',	'placeholder'),
(10,	'AHHHHH',	'placeholder');

ALTER TABLE subjects ADD shortname varchar(10); 

UPDATE subjects
SET shortname = ZSV
WHERE id_subject = 4

UPDATE subjects
SET shortname = Foto
WHERE id_subject = 3

UPDATE subjects
SET shortname = Fire
WHERE id_subject = 2

UPDATE subjects
SET shortname = EK
WHERE id_subject = 1

UPDATE subjects
SET shortname = IDUNNO
WHERE id_subject = 5

UPDATE subjects
SET shortname = IDUNNO
WHERE id_subject = 6

UPDATE subjects
SET shortname = IDUNNO
WHERE id_subject = 7

UPDATE subjects
SET shortname = IDUNNO
WHERE id_subject = 8

UPDATE subjects
SET shortname = IDUNNO
WHERE id_subject = 9

UPDATE subjects
SET shortname = IDUNNO
WHERE id_subject = 10

INSERT INTO `subjects` (`id_subject`, `name`, `description`, `shortname`) VALUES
(1,	'ekonomie',	'nevim nejsem ekonom',	'EK'),
(2,	'haseni',	'nevim nejsem hasic',	'Fire'),
(3,	'foceni',	'nevim nejsem fotograf',	'Foto'),
(4,	'zaklady spol. ved',	'sedeni a poslouchani starobylich zprav o socialnich / zdravotnich vecech - YEY',	'ZSV'),
(5,	'AHHHHH',	'placeholder',	'IDUNNO'),
(6,	'AHHHHH',	'placeholder',	'IDUNNO'),
(7,	'AHHHHH',	'placeholder',	'IDUNNO'),
(8,	'AHHHHH',	'placeholder',	'IDUNNO'),
(9,	'AHHHHH',	'placeholder',	'IDUNNO'),
(10,	'AHHHHH',	'placeholder',	'IDUNNO');


School
_____________________________________________
CREATE TABLE classroom (
id_classroom int AUTO_INCREMENT,
number text,
description text,
building INT,
seats_count int,
is_computers_lab tinyint,
PRIMARY KEY (id_classroom) 
);

INSERT INTO `classroom` (`id_classroom`, `number`, `description`, `building`, `seats_count`, `is_computers_lab`) VALUES
(1,	'8A',	'placeholder',	2,	32,	0),
(2,	'8B',	'placeholder',	1,	32,	0),
(3,	'8H',	'placeholder',	1,	44,	0),
(4,	'6A',	'placeholder',	3,	21,	1),
(5,	'5A',	'placeholder',	2,	32,	0),
(6,	'3B',	'placeholder',	1,	32,	0),
(7,	'4B',	'placeholder',	3,	32,	0),
(8,	'9B',	'placeholder',	2,	32,	0),
(9,	'9C',	'placeholder',	3,	32,	0),
(10,	'8C',	'placeholder',	3,	21,	1),
(11,	'7C',	'placeholder',	2,	21,	0),
(12,	'6C',	'placeholder',	1,	21,	1);


_____________________________________________

ALTER TABLE classroom
ADD UNIQUE (number);

ALTER TABLE teachers
ADD UNIQUE (lastname);

ALTER TABLE subjects
ADD UNIQUE (name);

CREATE TABLE schedule (
id_schedule int AUTO_INCREMENT,
id_classroom int,
id_teacher int,
id_subject int,
lesson_number int,
day_of_week tinyint(5)
);

INSERT INTO `schedule` (`id_schedule`, `id_classroom`, `id_teacher`, `id_subject`, `lesson_number`, `day_of_week`) VALUES
(1,	1,	1,	1,	1,	1),
(2,	2,	2,	2,	2,	1),
(3,	2,	2,	2,	3,	1),
(4,	1,	1,	1,	4,	1),
(5,	3,	3,	4,	5,	1),
(6,	3,	3,	4,	6,	1),
(7,	4,	4,	4,	7,	1),
(8,	4,	4,	4,	8,	1),
(9,	5,	5,	5,	9,	1),
(10,	2,	1,	6,	10,	1);

_____________________________________________
alter table students
add unique (email);


_____________________________________________
25.3
alter table teachers
change id_teacher id int

alter table students
change id_student id int

alter table classroom
change id_classroom id int

alter table schedule
change id_schedule id int

alter table subjects
change id_subject id int


_____________________________________________
ALTER TABLE students 
RENAME TO student; 

ALTER TABLE teachers
RENAME TO teacher; 

ALTER TABLE classrooms
RENAME TO classroom; 

ALTER TABLE student
RENAME COLUMN ID_student TO student_ID;

ALTER TABLE teacher
RENAME COLUMN ID_teacher TO teacher_ID;

ALTER TABLE schedule
RENAME COLUMN ID_schedule TO ID;


