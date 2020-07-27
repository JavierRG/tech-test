-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.
--
--
-- CREATE DATABASE employee_employee;

CREATE TABLE employee (
    id int NOT NULL PRIMARY KEY,
    first_name varchar(255),
    last_name varchar(255) 
);

CREATE TABLE employee_department (
    id int NOT NULL PRIMARY KEY,
    name varchar(255),
    description varchar(255)
);

ALTER TABLE employee
ADD id_department int,
FOREIGN KEY(id_department) REFERENCES  employee_department(id);

INSERT INTO employee (id, first_name, last_name, id_department) VALUES
(1, 'Javier', 'Ramirez','1'),
(2, 'Oliver', 'Cervantez','2'),
(3, 'Bob', 'Gonzalez','1'),
(4, 'Jesus', 'Guzman','5');

INSERT INTO employee_department 
VALUES
(1, 'Desarollo', 'Programadores'),
(2, 'RH', 'Recursos Humanos'),
(3, 'Marketing', 'Diseñadores'),
(4, 'Ingenieria', 'Sistemas y soporte'),
(5, 'Ventas', 'Servicios'),
(6, 'Administracion', 'Facturacion');
-- ...
