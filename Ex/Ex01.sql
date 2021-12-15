--select문 select 절 from절 

--직원 테이블 전체 조회
select*from employees;

--부서 테이블 전체 조회
select*from departments;

--원하는 컬러만 조회
select employee_id, first_name, last_name
from employees;

select first_name, phone_number, hire_date, salary
from employees;

-- 컬럼이 많을 때
select first_name, 
       last_name, 
       salary, 
       phone_number, 
       email, 
       hire_date
from employees;

--컬럼명 별명 적용

select first_name as 이름,     
       phone_number as 전화번호, 
       hire_date as 입사일,
       salary as 급여
from employees;

select employee_id as 사원번호,
       first_name as 이름,
       last_name as 성,
       salary as 급여,
       phone_number as 전화번호,
       email 이메일,
       hire_date 입사일
from employees;

select first_name || last_name
from employees;

select first_name ||' '|| last_name as name
from employees;

--산술 연산자 사용하기
select first_name,
       salary  월급,
       salary*12 연봉 
from employees;

select first_name,
       salary 월급,
       salary*12 연봉,
      (salary+300)*12
from employees;

select first_name||'-'||last_name 성명,
       salary 월급,
       salary*12 연봉,
       (salary*12)+5000 연봉2,
       phone_number 전화번호
from employees;

--where문
SELECT first_name,
       last_name,
       salary
FROM employees
where department_id > 10;

SELECT first_name,
       salary
FROM employees
WHERE salary>=15000;

SELECT first_name,
       hire_date
FROM employees
WHERE hire_date >= '07/01/01';

select salary
from employees
where first_name = 'Lex';

select first_name,
       salary
from employees
where salary <= 14000
OR   salary >=17000;

 select first_name,
        hire_date
 from  employees
 where hire_date >= '04/01/01'
 and   hire_date <= '05/12/31';
 
select first_name,
        salary
from employees
where salary 
between 14000 and 17000;

--in 연산자
select *
from employees
WHERE first_name in ('Neena', 'Lex', 'John' );

select first_name, last_name, salary 
from employees
WHERE salary in (2100, 3100, 4100, 5100);

--like 연산자
select *
from employees
where first_name like 'L%';

SELECT first_name,
       salary
from employees
where first_name like '%am%';

select first_name,
       salary
from employees
where first_name like '_a%';

SELECT first_name
FROM employees
where first_name like '___a%' ;

select first_name
from employees
where first_name like '_a__';

--null 연산자
select first_name, 
       salary, 
       commission_pct, 
       salary*commission_pct
from employees
where salary between 13000 and 15000;

--is null/is not null
select *
from employees
where commission_pct is null;

select first_name,
       salary,
       commission_pct
from employees
where commission_pct is not null;

select first_name
from employees
WHERE commission_pct is null
and manager_id is null;

--order by 절
select *
from employees
ORDER BY salary DESC; --오름차순

select *
from employees
ORDER by salary asc; --내림차순

select *
from employees
ORDER by salary asc, first_name ASC;

select *
from employees
where salary >=9000
ORDER by salary asc;

SELECT department_id,
       salary,
       first_name
from employees
ORDER by department_id ASC;

select first_name,
       salary
from employees
where salary>10000
ORDER by salary DESC;

select department_id,
       salary,
       first_name
from employees
ORDER by department_id ASC, salary desc;






