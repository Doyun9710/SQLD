-- select 컬럼명 / 그룹함수
-- from 테이블명
-- group by 컬럼명

-- 그룹별 사원 수
select deptno, count(*)
from emp
group by deptno;

-- 부서별 최고급여
select deptno, max( sal )
from emp
group by deptno;

-- group( deptno ) && group( job )
select deptno, job, sum( sal )
from emp
group by deptno, job;
