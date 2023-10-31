-- 정렬
select deptno, job, sum( sal ), sal
from emp
group by deptno, job
order by sal;

select deptno, job, sum( sal ), sal
from emp
group by deptno, job
order by 3;