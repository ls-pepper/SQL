create database if not exists nitel;
use nitel;
create table if not exists employees (
id int unsigned not null auto_increment primary key,
first_name varchar(30) not null,
last_name varchar(30) not null,
position_ varchar(30) not null,
salary numeric(10,2) not null

);
insert into employees (id, first_name, last_name, position_,salary) values (null, 'Ivan', 'Ivanov', 'director',127000);
insert into employees (id, first_name, last_name, position_,salary) values (null, 'Katya', 'Navka', 'manager',31400);
insert into employees (id, first_name, last_name, position_,salary) values (null, 'Vlad', 'Yarco', 'programmer',34100);
insert into employees (id, first_name, last_name, position_,salary) values (null, 'Maria', 'Kitova', 'accountant',23900);
insert into employees (id, first_name, last_name, position_,salary) values (null, 'Anton', 'Gubin', 'designer',21600);

SELECT * FROM employees where salary <30000;
SELECT * FROM employees where position_ = 'manager' and salary<30000;


create table if not exists cheif_employees (
cheif int,
employee int
);

insert into cheif_employees (cheif,employee) values (1,2);
insert into cheif_employees (cheif,employee) values (1,3);
insert into cheif_employees (cheif,employee) values (1,4);
insert into cheif_employees (cheif,employee) values (1,5);
insert into cheif_employees (cheif,employee) values (4,2);
insert into cheif_employees (cheif,employee) values (4,5);
insert into cheif_employees (cheif,employee) values (5,3);

SELECT f.cheif_name, f.emp_name FROM (SELECT c.employee as 'id_emp', CONCAT(c.first_name, ' ', c.last_name) as 'emp_name',
c.cheif as 'id_cheif', CONCAT(d.first_name, ' ', d.last_name) as 'cheif_name'
from (SELECT b.employee, a.first_name, a.last_name,b.cheif FROM employees a 
join cheif_employees b where a.id = b.employee) as c join employees d where d.id = c.cheif) f where f.id_cheif = 4 ;


