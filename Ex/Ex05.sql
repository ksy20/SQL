-------------------------------
----------- join문 ------------
-------------------------------

select employee_id,
       first_name,
       department_id
from employees;

select *
from employees,departments;

select employees.employee_id,
       employees.first_name,
       employees.salary,
       departments.department_name
from employees, departments
where employees.department_id = departments.department_id;

select em.first_name,
       de.department_name,
       jo.job_title
from employees em, departments de, jobs jo
where em.department_id = de.department_id
      and em.job_id = jo.job_id;

select *
from employees em, departments de, jobs jo
;
