----------------------------------------------------------------------
--연습문제 practice 02
----------------------------------------------------------------------

--**문제1**
select COUNT(*)
from employees
where manager_id is not null;

--**문제2**
select MAX(salary) 최고임금,
       min(salary) 최저임금,
       max(salary)-min(salary) "최고임금 - 최저임금"
from employees;

--**문제3**
select to_char(max(hire_date), 'yyyy"년"-mm"월"-dd"일"') 신입사원입사일
from employees
;

--**문제4**
select avg(salary),
       MAX(salary),
       MIN(salary),
       department_id
from employees
group by department_id
order by department_id DESC;

--**문제5**
select job_id,
       round(avg(salary),0),
       max(salary),
       MIN(salary)
from employees
group by job_id
order by min(salary) desc,
avg(salary) asc;

--**문제6**
select to_char(min(hire_date), 'yyyy-mm-dd day')
from employees
;

--**문제7**
select department_id,
       COUNT(*),
       avg(salary),
       MIN(salary),
       avg(salary)-min(salary)
from employees
group by department_id
having avg(salary)-min(salary)<2000
order by avg(salary)-min(salary) DESC;

--**문제8**
select job_id,
       MAX(salary)- min(salary)
from employees
group by job_id
order by MAX(salary)- min(salary) DESC;

--**문제9**
select manager_id,
       round(avg(salary),0),
       min(salary),
       max(salary)
from employees
GROUP by manager_id
order by avg(salary)DESC;

--**문제10**
select hire_date,
       case when hire_date<'02/12/31' then '창립멤버'
            when hire_date<'04/01/01' then '03년입사'
            when hire_date<'05/01/01' then '04년입사'
            else '상장 이후 입사'
       end optdate
from employees
order by hire_date asc;