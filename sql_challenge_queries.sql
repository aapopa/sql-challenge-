
select employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary 
from employees 
join salaries on employees.emp_no = salaries.emp_no

select employees.first_name, employees.last_name, employees.hire_date 
from employees 
where extract(year from employees.hire_date)=1986

SELECT dept_manager.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name       
FROM dept_manager
JOIN departments ON dept_manager.dept_no = departments.dept_no
JOIN employees ON dept_manager.emp_no = employees.emp_no;

select dept_emp.dept_no, dept_emp.emp_no, employees.first_name, employees.last_name, departments.dept_name
from dept_emp 
join departments on departments.dept_no = dept_emp.dept_no 
join employees on dept_emp.emp_no = employees.emp_no 

select employees.first_name, employees.last_name, employees.sex 
from employees 
where employees.first_name = 'Hercules'
AND employees.last_name LIKE '%B%'

select employees.first_name, employees.last_name, employees.emp_no, dept_emp.dept_no, departments.dept_name 
from employees 
join dept_emp on dept_emp.emp_no = employees.emp_no 
join departments on dept_emp.dept_no = departments.dept_no 
where dept_name = 'Sales'

select employees.first_name, employees.last_name, employees.emp_no, dept_emp.dept_no, departments.dept_name 
from employees 
join dept_emp on dept_emp.emp_no = employees.emp_no 
join departments on dept_emp.dept_no = departments.dept_no 
where departments.dept_name IN ('Sales', 'Development')


