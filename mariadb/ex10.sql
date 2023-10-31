-- having
select deptno, job, sum( sal ), sal
from emp
-- ERROR Invalid use of group function, 선 그룹화
-- where sum( sal ) >- 2000
group by deptno, job
having sum( sal ) >= 2000
order by 3;