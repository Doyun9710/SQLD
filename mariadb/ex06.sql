-- 행(데이터의 수) - count
select count( * ) from emp;
select count( empno ) from emp;

-- 30번 부서의 사원수
select count( * ) from emp where deptno=30;
select count( empno ) from emp where deptno=30;

-- count시 NULL 값 제외
select count( sal ), count( comm ) from emp;
select count( sal ) sal, count( ifnull(comm, 0) ) comm from emp;



-- 합
select sum( sal ) from emp;

-- 평균
select avg( sal ) from emp;
select avg( comm ), sum( comm )/count( comm ), sum( comm )/count( * ) from emp;

-- 분산
