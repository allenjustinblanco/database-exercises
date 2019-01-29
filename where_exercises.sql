use employees;

select *
from employees
where first_name in ('Irena', 'Vidya', 'Maya');

select *
from employees
where last_name like 'E%';

select *
from employees
where hire_date like '199%';

select *
from employees
where birth_date = '%-12-25';

select *
from employees
where last_name like '%q%';

select *
from employees
where last_name like '%E';

select *
from employees
where hire_date between '1990-01-01' and '1999-12-31';

select *
from employees
where last_name like '%q%'
and last_name not like '%qu%';

SELECT * FROM employees
WHERE last_name LIKE 'e%'
   OR last_name LIKE '%e';

SELECT * FROM employees
WHERE last_name LIKE 'E%'
  AND last_name LIKE '%E';


