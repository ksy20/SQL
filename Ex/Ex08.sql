--rownum
select ROWNUM,
       first_name,
       salary
from employees
where rownum >=1 and ROWNUM<=5
order by salary DESC;

--미리 정렬된 테이블을 이용하여 rownum 사용하기
select rownum,
       first_name,
       salary
from (select first_name,
             salary
      from employees
      order by salary DESC)
where rownum<=5;

select rownum,
       first_name,
       salary
from (select first_name,
             salary
      from employees
      order by salary DESC)
where rownum>=3 
and rownum<=5;
---> 1부터가 아닌 다른 숫자부터가 안나옴

select rno,
       r.first_name,
       r.salary
FROM ((select rownum rno,
       o.first_name,
       o.salary
       from (select first_name,
                    salary
             from employees
             order by salary DESC) o )r)
where rno>=2 
and rno<=4;

select first_name,
       salary,
       hire_date
from employees;

--문제 1
select rno,
       r.first_name,
       r.salary,
       r.hire_date
from ((select rownum rno,
              o.first_name,
              o.salary,
              o.hire_date
        from (select first_name,
                    salary,
                    hire_date
              from employees
              where hire_date>='07/01/01' 
              and hire_date<'08/01/01'
              order by salary DESC) o)r)
where rno>=3 and rno<=7;

--문제 2
select rno,
       r.first_name,
       r.salary,
       r.hire_date,
       r.department_name
from ((select ROWNUM rno,
       o.first_name,
       o.salary,
       o.hire_date,
       o.department_name
       from(select em.first_name,
                   em.salary,
                   em.hire_date,
                   de.department_name
            from employees em, departments de
            where em.department_id = de.department_id
            and hire_date>='07/01/01' 
            and hire_date<'08/01/01'
            order by em.salary DESC)o)r)
where rno>=3 and rno<=7;
