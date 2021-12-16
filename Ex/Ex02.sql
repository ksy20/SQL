--단일행 함수

--문자 합수 ㅡ initcap(컬럼명)

select email,
       INITCAP(email),
       department_id
from employees
where department_id = 100;

--upper / lower(컬럼명)
select first_name,
       UPPER(first_name) u_first_name,
       lower(first_name) l_first_name
from employees
where department_id = 100;

--substr(컬럼명, 시작위치, 글자수)
SELECT first_name,
       substr(first_name,2,3),
       substr(first_name,-3,2)
from employees
WHERE department_id = 100;

--lpad / rpad
SELECT first_name,
       LPAD(first_name, 10,'*'),
       RPAD(first_name, 10,'*')
from employees;

select first_name,
       replace(first_name, 'a', '*'),
       REPLACE(first_name, substr(first_name, 2, 3),'***')
from employees
where department_id = 100;

--숫자함수 ㅡ  round(숫자, 출력을 원하는 자리수) 반올림 적용
select round(123.346, 2) "r2",
       round(123.846, 0) "r0",
       round(123.456,-1) "r-1"
from dual;

-- trunc 반올림 적용x
select trunc(123.346, 2) "r2",
       trunc(123.346, 0) "r0",
       trunc(123.346, -1) "r-1"
from dual;

--날짜 함수
select sysdate
from dual;

select sysdate,
       hire_date,
       MONTHS_BETWEEN(SYSDATE,hire_date),
       trunc(MONTHS_BETWEEN(SYSDATE,hire_date), 0),
       round(MONTHS_BETWEEN(SYSDATE,hire_date), 0)
from employees
where department_id = 100;

select first_name, 
       salary,
       salary*12,
       to_char(salary*12, '$999999'),
       to_char(salary*12, '0999999'),
       to_char(salary*12, '9999999'),
       to_char(salary*12, '999999.99'),
       to_char(salary*12*12, '999,999,999.99')
from employees
where department_id=100;

--변환함수 날짜->문자형
select sysdate,
       to_char(sysdate, 'dd')
from dual;

select hire_date,
       to_char(hire_date,'yyyy-mm-dd')
from employees
where department_id=100;

select sysdate,
       to_char(sysdate, 'hh-mi-ss')
from dual;

select sysdate,
       to_char(sysdate, 'yyyy"년"mm"월"dd"일" hh24:mi:ss')
from dual;

--값이 null일때 nvl
select first_name,
       NVL(commission_pct,0),
       nvl2(commission_pct,100,0)
from employees;