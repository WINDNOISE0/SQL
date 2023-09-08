--- 1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.
select employee_salary.id, employee_name, month_salary from employee_salary
join employees on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id

--- 2. Вывести всех работников у которых ЗП меньше 2000.
select employee_salary.id, employee_name as Работник, month_salary as ЗП from employee_salary
join employees on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id
where month_salary < '2000'

--- 3. Вывести все зарплатные позиции, но работник по ним не назначен. ЗП есть, но не понятно кто её получает.
select employee_salary.id, employee_name as Работник, month_salary as ЗП from employee_salary
left join employees on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id
where employee_name isnull

--- 4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. ЗП есть, но не понятно кто её получает.
select employee_salary.id, employee_name as Работник, month_salary as ЗП from employee_salary
left join employees on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id
where month_salary < '2000'  and employee_name isnull

---5. Найти всех работников кому не начислена ЗП
select employee_name as Работник, month_salary as ЗП from employees
left join employee_salary on employee_salary.employee_id = employees.id
left join salary on employee_salary.salary_id = salary.id
where employee_salary.employee_id is null

--- 6. Вывести всех работников с названиями их должности.
select employee_name as Работник, role_name as Должность from roles
join roles_employee on roles_employee.role_id  = roles.id
join employees on roles_employee.employee_id = employees.id

--- 7. Вывести имена и должность только Java разработчиков.
select employee_name as Работник, role_name  as Должность from roles
join roles_employee on roles_employee.role_id  = roles.id
join employees on roles_employee.employee_id = employees.id
where role_name like '%Java%'

--- 8. Вывести имена и должность только Python разработчиков.
select  employee_name as Работник, role_name  as Должность from roles
join roles_employee on roles_employee.role_id  = roles.id
join employees on roles_employee.employee_id = employees.id
where role_name like '%Python%'

--- 9. Вывести имена и должность всех QA инженеров.
select employee_name as Работник, role_name  as Должность from roles
join roles_employee on roles_employee.role_id  = roles.id
join employees on roles_employee.employee_id = employees.id
where role_name like '%QA%'

---  10. Вывести имена и должность ручных QA инженеров.
select employee_name as Работник, role_name  as Должность from roles
join roles_employee on roles_employee.role_id  = roles.id
join employees on roles_employee.employee_id = employees.id
where role_name like '%QA%' and role_name like '%Manual%'

--- 11. Вывести имена и должность автоматизаторов QA
select employee_name as Работник, role_name  as Должность from roles
join roles_employee on roles_employee.role_id  = roles.id
join employees on roles_employee.employee_id = employees.id
where role_name like '%QA%' and role_name like '%Automation%'


--- 12. Вывести имена и зарплаты Junior специалистов
select  employee_name as Работник, role_name as Должность, month_salary as ЗП from roles
join roles_employee on roles_employee.role_id  = roles.id
join employees on roles_employee.employee_id = employees.id
join employee_salary on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id
where role_name like '%Junior%'

--- 13. Вывести имена и зарплаты Middle специалистов
select employee_name as Работник, role_name as Должность, month_salary as ЗП from roles
join roles_employee on roles_employee.role_id  = roles.id
join employees on roles_employee.employee_id = employees.id
join employee_salary on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id
where role_name like '%Middle%'

--- 14. Вывести имена и зарплаты Senior специалистов
select employee_name as Работник, role_name as Должность, month_salary as ЗП from roles
join roles_employee on roles_employee.role_id  = roles.id
join employees on roles_employee.employee_id = employees.id
join employee_salary on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id
where role_name like '%Senior%'


--- 15. Вывести зарплаты Java разработчиков
select  role_name as Работник, month_salary as ЗП from roles
left join roles_employee on roles_employee.role_id  = roles.id
left join employees on roles_employee.employee_id = employees.id
left join employee_salary on employee_salary.employee_id = employees.id
left join salary on employee_salary.salary_id = salary.id
where role_name like '%Java%'

---  16. Вывести зарплаты Python разработчиков
select role_name as Работник, month_salary as ЗП from roles
left join roles_employee on roles_employee.role_id  = roles.id
left join employees on roles_employee.employee_id = employees.id
left join employee_salary on employee_salary.employee_id = employees.id
left join salary on employee_salary.salary_id = salary.id
where role_name like '%Python%'

---  17. Вывести имена и зарплаты Junior Python разработчиков
select  employee_name as Работник, role_name as Должность, month_salary as ЗП from roles
left join roles_employee on roles_employee.role_id  = roles.id
left join employees on roles_employee.employee_id = employees.id
left join employee_salary on employee_salary.employee_id = employees.id
left join salary on employee_salary.salary_id = salary.id
where role_name like '%Python%' and role_name like '%Junior%'

--- 18. Вывести имена и зарплаты Middle JS разработчиков
select  employee_name as Работник, role_name as Должность, month_salary as ЗП from roles
left join roles_employee on roles_employee.role_id  = roles.id
left join employees on roles_employee.employee_id = employees.id
left join employee_salary on employee_salary.employee_id = employees.id
left join salary on employee_salary.salary_id = salary.id
where role_name like '%Middle%' and role_name like '%JavaScript%'

---  19. Вывести имена и зарплаты Senior Java разработчиков
select  employee_name as Работник, role_name as Должность, month_salary as ЗП from roles
left join roles_employee on roles_employee.role_id  = roles.id
left join employees on roles_employee.employee_id = employees.id
left join employee_salary on employee_salary.employee_id = employees.id
left join salary on employee_salary.salary_id = salary.id
where role_name like '%Senior%' and role_name like '%Java%'

---  20. Вывести зарплаты Junior QA инженеров
select   role_name as Должность, month_salary as ЗП from roles
left join roles_employee on roles_employee.role_id  = roles.id
left join employees on roles_employee.employee_id = employees.id
left join employee_salary on employee_salary.employee_id = employees.id
left join salary on employee_salary.salary_id = salary.id
where role_name like '%Junior%' and role_name like '%QA%'

--- 21. Вывести среднюю зарплату всех Junior специалистов
select ROUND(AVG(month_salary)) as Средняя_ЗП from roles
 join roles_employee on roles_employee.role_id  = roles.id
 join employees on roles_employee.employee_id = employees.id
 join employee_salary on employee_salary.employee_id = employees.id
 join salary on employee_salary.salary_id = salary.id
where role_name like '%Junior%'

--- 22. Вывести сумму зарплат JS разработчиков
select SUM(month_salary) as Сумма_ЗП_JS from roles
join roles_employee on roles_employee.role_id  = roles.id
join employees on roles_employee.employee_id = employees.id
join employee_salary on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id
where role_name like '%JavaScript%'

--- 23. Вывести минимальную ЗП QA инженеров
select MIN(month_salary) as Минимальная_ЗП_QA from roles
join roles_employee on roles_employee.role_id  = roles.id
join employees on roles_employee.employee_id = employees.id
join employee_salary on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id
where role_name like '%QA%'

---  24. Вывести максимальную ЗП QA инженеров
select MAX(month_salary) as Максимальная_ЗП_QA from roles
join roles_employee on roles_employee.role_id  = roles.id
join employees on roles_employee.employee_id = employees.id
join employee_salary on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id
where role_name like '%QA%'

--- 25. Вывести количество QA инженеров
select COUNT(role_name) as Количество_QA from roles
join roles_employee on roles_employee.role_id  = roles.id
join employees on roles_employee.employee_id = employees.id
where role_name like '%QA%'

--- 26. Вывести количество Middle специалистов.
select COUNT(role_name) as Количество_Middle from roles
join roles_employee on roles_employee.role_id  = roles.id
join employees on roles_employee.employee_id = employees.id
where role_name like '%Middle%'

--- 27. Вывести количество разработчиков
select COUNT(role_name) as Количество_разработчиков from roles
join roles_employee on roles_employee.role_id  = roles.id
join employees on roles_employee.employee_id = employees.id
where role_name like '%developer%'

--- 28. Вывести фонд (сумму) зарплаты разработчиков.
select SUM(month_salary) as Cумма_зарплат from roles
join roles_employee on roles_employee.role_id  = roles.id
join employees on roles_employee.employee_id = employees.id
join employee_salary on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id
where role_name like '%developer%'

---  29. Вывести имена, должности и ЗП всех специалистов по возрастанию
select employee_name as Работник, role_name as Должность, month_salary as ЗП from roles
left join roles_employee on roles_employee.role_id  = roles.id
left join employees on roles_employee.employee_id = employees.id
left join employee_salary on employee_salary.employee_id = employees.id
left join salary on employee_salary.salary_id = salary.id
where employee_name is not null
order by month_salary

---  30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300
select employee_name as Работник, role_name as Должность, month_salary as ЗП from roles
left join roles_employee on roles_employee.role_id  = roles.id
left join employees on roles_employee.employee_id = employees.id
left join employee_salary on employee_salary.employee_id = employees.id
left join salary on employee_salary.salary_id = salary.id
where employee_name is not null  and month_salary between 1700 and 2300
order by month_salary

--- 31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300
select employee_name as Работник, role_name as Должность, month_salary as ЗП from roles
left join roles_employee on roles_employee.role_id  = roles.id
left join employees on roles_employee.employee_id = employees.id
left join employee_salary on employee_salary.employee_id = employees.id
left join salary on employee_salary.salary_id = salary.id
where employee_name is not null  and month_salary < 2300
order by month_salary

---  32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000
select employee_name as Работник, role_name as Должность, month_salary as ЗП from roles
left join roles_employee on roles_employee.role_id  = roles.id
left join employees on roles_employee.employee_id = employees.id
left join employee_salary on employee_salary.employee_id = employees.id
left join salary on employee_salary.salary_id = salary.id
where employee_name is not null and month_salary in(1100, 1500, 2000)
order by month_salary