-- 그룹함수

-- 평균은 하나인데 이름은 여러개라서
select avg(salary),
       first_name
from employees;

--count 데이터 총 건수를 세어줌
select count(department_id)
from employees
where department_id=100;

select count(*),
       count(commission_pct)
from employees;

select count(salary)
from employees
where salary>16000;

--sum
SELECT sum(salary)
from employees;

SELECT sum(salary), COUNT(*), avg(salary)
from employees;

SELECT sum(salary), COUNT(*), avg(salary)
from employees
where salary>16000;

--그룹함수 AVG
select count(*),
       sum(salary),
       avg(salary)
from employees;

select count(*),
       sum(salary),
       avg(nvl(salary,0)) --> null인값은 원래 출력x 하고싶으면 이렇게 출력
from employees;

--그룹함수 max/min
SELECT MAX(salary),
       min(salary)
from employees;

--group by 절----------------------------------------------------------
select avg(salary),
       department_id
from employees
group by department_id;














