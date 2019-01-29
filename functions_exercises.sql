use employees;

# order by first name
SELECT * FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
  AND gender = 'M'
ORDER BY first_name;

# order by first then last name with first result as Irena and last as Vidya
SELECT * FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
  AND gender = 'M'
ORDER BY first_name, last_name;

# order by last name before first name
SELECT * FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
  AND gender = 'M'
ORDER BY last_name, first_name;

# sort employees with E by employee number
SELECT * FROM employees
WHERE last_name LIKE 'E%'
   OR last_name LIKE '%E'
ORDER BY emp_no;

SELECT * FROM employees
WHERE last_name LIKE 'E%'
  AND last_name LIKE '%E'
ORDER BY emp_no;


# reverse the sort order for both queries
SELECT * FROM employees
WHERE last_name LIKE 'E%'
   OR last_name LIKE '%E'
ORDER BY emp_no DESC;

SELECT * FROM employees
WHERE last_name LIKE 'E%'
  AND last_name LIKE '%E'
ORDER BY emp_no DESC;

SELECT * FROM employees WHERE hire_date > '199%'
                          AND birth_date LIKE '%12-25'
ORDER BY birth_date, hire_date DESC;

select concat('Days Working at the company', datediff(now(), hire_date))
FROM employees
WHERE hire_date > '199%'
and hire_date LIKE '%12-25';

SELECT *
FROM employees
WHERE last_name LIKE '%q%';

SELECT * FROM employees WHERE last_name NOT LIKE '%qu%' AND last_name LIKE '%q%';

select concat(first_name, ' ', last_name)
from employees
WHERE last_name LIKE 'E%'
AND last_name LIKE '%E';
