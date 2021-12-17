--그룹절--
select department_id, 
       avg(salary)
from employees
group by department_id
order by department_id asc;

select department_id,
       count(*)
from employees
group by department_id;

select department_id,
       job_id,
       count(*),
       sum(salary)
from employees
group by department_id, job_id
order by department_id ASC , job_id DESC
;

--그룹절에서 where절은 오류가 남
select department_id,
       count(*),
       sum(salary)
from employees
where sum(salary)>=20000
group by department_id;

--having절을 where절 대신하여 사용
select department_id,
       count(*),
       sum(salary)
from employees
group by department_id
having sum(salary)>=20000;

--case when then end
select employee_id,
       first_name,
       job_id,
       salary,
       case when job_id = 'AC_ACCOUNT' then salary+salary*0.1
            when job_id = 'SA_REP' then salary+salary * 0.2
            when job_id = 'ST_CLERK' then salary + salary * 0.3
            ELSE salary
       end realsalary
from employees;

--decode()
select employee_id,
       first_name,
       salary,
       job_id,
       decode (job_id, 'AC_ACCOUNT', salary+SALARY*0.1,
                       'SA_REP', SALARY+SALARY*0.2,
                       'ST_CLERK', SALARY+SALARY*0.3,
               SALARY)realsalary
from employees;

select first_name,
       department_id,
       case when department_id<=50 then 'A-team'
            when department_id<=100 then 'B-team'
            when department_id<=150 then 'C-team'
            else '팀없음'
       end team
from employees;