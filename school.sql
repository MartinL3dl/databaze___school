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