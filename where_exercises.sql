use employees;

select *
from employees
where first_name in ('Irena', 'Vidya', 'Maya');

select *
from employees
where last_name like 'E%';

select *
from employees
where hire_date < 1990;

select *
from employees
where birth_date = '12-25-%';

select *
from employees
where last_name like '%q%';

select *
from employees
where last_name like '%E';

select *
from employees
where hire_date between 1990 and 2000;

select *
from employees
where last_name like '%q%'
and last_name not like '%qu%';


