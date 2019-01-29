use employees;

SELECT DISTINCT last_name FROM employees limit 10;

select *
from employees
where hire_date between '1990-01-01' and '1999-12-31'
limit 5;

select *
from employees
where hire_date between '1990-01-01' and '1999-12-31'
limit 5 offset 10;