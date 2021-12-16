----------------------------------------------------------------------
--연습문제
----------------------------------------------------------------------
--**문제1**

select first_name||' '||last_name 이름,
       salary 월급,
       phone_number 전화번호,
       hire_date 입사일
from employees
ORDER by hire_date asc;

--**문제2**
select job_id 업무이름,
       MAX(salary) 최고월급
from employees
group by job_id;

--**문제3**
select first_name,
       manager_id,
       commission_pct,
       salary
from employees
where manager_id is not null
      and commission_pct is null
      and salary>3000;

--**문제4**
select job_id,
       MAX(salary)
from employees
where salary >= 10000
group by job_id
order by max(salary) DESC; 

--**문제5**
select first_name,
       salary,
       nvl(commission_pct, 0)
from employees
where salary>=10000
      and salary<14000;
      
--**문제6**
select first_name,
       salary,
       to_char(hire_date, 'yy-mm'),
       department_id
from employees
WHERE department_id in (10, 90, 100);

--**문제7**
select first_name,
       salary
from employees
where first_name like 'S%' or first_name like '%s%';

--**문제8**
SELECT *
from departments
ORDER BY length (department_name) DESC;

--**문제9**
select upper (country_name)
from countries
order by country_name ASC;

--**문제10**
select first_name,
       salary,
       replace(phone_number, '.','-'),
       hire_date
from employees
WHERE hire_date<'03/12/31';

SELECT phone_number
from employees;

