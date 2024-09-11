drop database if exists employes;
create database employes;
use employes ;

create table empleados(
id varchar(15),
Full_Name varchar(50),
gender varchar(15),
age int,
etnia varchar(50)
);
CREATE INDEX idx_empleados_id ON empleados(id);
create table department(
empleado_id varchar(15),
departamento varchar(50),
job_title varchar(50),
Business_unit varchar(60),
FOREIGN KEY (empleado_id) REFERENCES empleados(id) 
);
  
create table ubicacion(
empleado_id varchar(15),
country varchar(50),
city varchar(50),
FOREIGN KEY (empleado_id) REFERENCES empleados(id) 
);
create table Salario(
empleado_id varchar(15),
Anual_salary  DECIMAL(10,2),
bonus  DECIMAL(5,2), 
FOREIGN KEY (empleado_id) REFERENCES empleados(id) 
);
ALTER TABLE salario MODIFY COLUMN Anual_salary DECIMAL(10,2);
