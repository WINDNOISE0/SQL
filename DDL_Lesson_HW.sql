
create table salary(
	id serial primary key,
	month_salary int not null
);


create table roles_salary(
	id serial primary key,
	id_role int not null,
	id_salary int not null,
	foreign key (id_role) references roles(id),
	foreign key (id_salary) references salary(id)
);

insert into salary (month_salary)
values (1000),
 		(1100),
		(1200),
		(1300),
		(1400),
		(1500),
		(1600),
		(1700),
		(1800),
		(1900);


insert into roles(role_title)
values ('QA_manual_junior'),
    ('QA_manual_middle'),
    ('QA_manual_senior'),
    ('QA_automation_junior'),
    ('QA_automation_middle'),
    ('QA_automation_senior'),
    ('Java_developer_junior'),
    ('Java_developer_middle'),
    ('Java_developer_senior'),
    ('CEO'),
    ('CTO'),
    ('HR'),
    ('Manager'),
    ('Designer');

insert into roles_salary(id_role, id_salary)
values (1, 1),
		(2,4),
		(3, 7),
		(3, 7),
		(8, 6),
		(8, 6),
		(11, 15);

SELECT role_title, month_salary  FROM roles_salary
join roles on roles_salary.id_role = roles.id
join salary on roles_salary.id_salary = salary.id;

alter table roles 
add column parking int;


alter table roles
rename column parking to taxi

alter table roles
drop column taxi



UPDATE salary
SET month_salary = CASE 
    WHEN id = 1 THEN 1000
    WHEN id = 2 THEN 1100
    WHEN id = 3 THEN 1200
    WHEN id = 4 THEN 1300
    WHEN id = 5 THEN 1400
    WHEN id = 6 THEN 1500
    WHEN id = 7 THEN 1600
    WHEN id = 8 THEN 1700
    WHEN id = 9 THEN 1800
    WHEN id = 10 THEN 1900
    WHEN id = 11 THEN 2000
    WHEN id = 12 THEN 2100
    WHEN id = 13 THEN 2200
    WHEN id = 14 THEN 2300
    WHEN id = 15 THEN 2400
    WHEN id = 16 THEN 2500
    ELSE month_salary
    END;
   
DELETE FROM salary WHERE id > 16;




create table employees(
	id serial primary key,
	employee_name Varchar(50) not null
)

create table  employee_salary(
	id serial primary key,
	employee_id int unique not null,
	salary_id int not null
)

create table roles(
	id serial primary key,
	role_name int unique not null
)

alter table roles
alter column role_name type varchar(30)

create table roles_employee(
	id serial primary key,
	employee_id int unique not null,
	role_id int not null,
	foreign key (employee_id) references employees(id),
	foreign key (role_id) references roles(id)
)

