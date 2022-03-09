--Considere el siguiente esquema de base de datos

--SubContractor (SID, S_Lname, S_Fname, Salary)
--Builder (BID, B_Lname, B_Fname, License) 
--Neighborhood  (NID, N_Name, City)
--HireInfo (BID*, SID*, HireDate) 
--House (HID, H_Name, FinishDate, Price, BID*, NID*) 

--Escriba las instrucciones/comandos para llevar el esquema a un SGBD usando SQL


-- CREATE DATABASE Builder;

DROP TABLE IF EXISTS "SubContractor" CASCADE;
DROP TABLE IF EXISTS "Builder" CASCADE;
DROP TABLE IF EXISTS "Neighborhood" CASCADE;
DROP TABLE IF EXISTS "HireInfo" CASCADE;
DROP TABLE IF EXISTS "House" CASCADE;

CREATE TABLE "SubContractor" (
  sid SERIAL PRIMARY KEY,
  s_lname varchar(30) NOT NULL,
  s_fname varchar(30) NOT NULL,
  salary int NOT NULL
);

CREATE TABLE "Builder" (
  bid serial PRIMARY KEY,
  b_lname varchar(30) NOT NULL,
  b_fname varchar(30) NOT NULL,
  license int NOT NULL
);

CREATE TABLE "Neighborhood" (
  nid serial PRIMARY KEY,
  n_name varchar(30) NOT NULL,
  city varchar(30) NOT NULL,
);

CREATE TABLE "HireInfo" (
  "idAdmin" int PRIMARY KEY,
  "NombreAdmin" varchar(15) NOT NULL,
  "ContraseñaAdmin" varchar(8) NOT NULL
);

CREATE TABLE "House" (
  "idAdmin" int PRIMARY KEY,
  "NombreAdmin" varchar(15) NOT NULL,
  "ContraseñaAdmin" varchar(8) NOT NULL
);




