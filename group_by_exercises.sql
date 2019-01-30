use employees;

select distinct title from titles order by title;

select last_name
from employees
where last_name like 'e%e'
group by last_name;

select first_name, last_name
from employees
where last_name like 'e%e'
group by last_name, first_name;

-- Find the unique last names with a 'q' but not 'qu'
select distinct last_name
from employees
where last_name like '%q%'
  and last_name not like '%qu%';

select last_name, count(*)
from employees
where last_name like '%q%'
  and last_name not like '%qu%'
group by last_name
order by count(*);


select count(*), gender FROM employees
where first_name in ('Irena', 'Vidya', 'Maya')
group by gender
order by count(*) desc;

