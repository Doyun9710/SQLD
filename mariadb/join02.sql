-- 서브쿼리

-- 1. BLAKE 보다 급여가 많은 사원들의 사번, 이름, 급여를 검색하시오.
select empno, ename, sal 
from emp 
where sal > all (
    select sal 
    from emp 
    where ename = 'BLAKE'
);

-- 2. MILLER보다 늦게 입사한 사원의 사번, 이름, 입사일을 검색하시오.
select empno, ename, hiredate 
from emp 
where hiredate > all ( 
    select hiredate 
    from emp 
    where ename = 'MILLER'
);

-- 3. 사원 전체 평균 급여보다 급여가 많은 사원들의 사번, 이름, 급여를 검색하시오.
select empno, ename, sal 
from emp 
where sal > all ( 
    select avg( sal ) 
    from emp
);

-- 4. CLARK와 같은 부서이며, 사번이 7698인 직원의 급여보다 많은 급여를 받는
-- 	사원들의 사번, 이름, 급여를 검색하시오.
select empno, ename, sal 
from emp 
where deptno in ( 
    select deptno 
    from emp 
    where ename = 'CLARK'
) 
    and sal > all ( 
    select sal 
    from emp 
    where empno = 7698
);

-- 5. 부서별 최대 급여를 받는 사원들의 사번, 이름, 부서코드, 급여를 검색하시오.
select empno, ename, deptno, sal 
from emp 
where sal in (
    select max( sal )
    from emp
    group by deptno
);





-- 조인

-- 1. 부서 테이블과 사원 테이블에서 사번, 사원명, 부서코드, 부서명을 검색하시오. 
-- 단, 출력시, 사원명을 기준으로 오름차순으로 정렬하시오.
select e.empno, e.ename, e.deptno, d.dname 
from emp e inner join dept d 
on ( e.deptno = d.deptno ) 
order by e.ename asc;

-- 2. 부서 테이블과 사원 테이블에서 사번, 사원명, 급여, 부서명을 검색하시오. 
-- 단, 급여가 2000 이상인 사원에 대하여 급여를 기준으로 내림차순으로 정렬하시오.
select e.empno, e.ename, e.sal, d.dname 
from emp e inner join dept d 
on ( e.deptno = d.deptno ) 
where e.sal > 2000
order by sal asc;

-- 3. 부서 테이블과 사원 테이블에서 사번, 사원명, 업무, 급여, 부서명을 검색하시오. 
-- 단, 업무가 MANAGER이며 급여가 2500 이상인 사원에 대하여 사번을 기준으로 오름차순으로 정렬하시오.
select e.empno, e.ename, e.job, e.sal, d.dname 
from emp e inner join dept d 
on ( e.deptno = d.deptno )
where e.job = 'MANAGER' and sal > 2500 
order by e.empno asc;
