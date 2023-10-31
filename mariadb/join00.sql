-- Cartesian Product, 카테시안 프로덕트 : 테이블 간의 병합, 곱
select * from dept cross join emp;
select * from dept inner join emp;





-- equi join
select * 
from emp inner join dept
where emp.deptno = dept.deptno;


-- 10번 부서 해당 사원 목록
select * 
from emp inner join dept
where emp.deptno = dept.deptno and emp.deptno = 10;

select * 
from emp inner join dept
on ( emp.deptno = dept.deptno )
where emp.deptno = 10;

select * 
from emp inner join dept
using ( deptno )
where emp.deptno = 10;


-- 특정 데이터 출력
select empno, ename, deptno, dname
from emp inner join dept
-- deptno 중복, using으로 해결
-- on ( emp.deptno = dept.deptno )
using ( deptno )
where emp.deptno = 10;

select empno, ename, emp.deptno, dname
from emp inner join dept
on ( emp.deptno = dept.deptno )
where emp.deptno = 10;

select e.empno, e.ename, e.deptno, d.dname
from emp e inner join dept d
on ( e.deptno = d.deptno )
where e.deptno = 10;


-- 직책이 CLERK인 사원에 대한 사원번호, 사원이름, 급여, 부서이름, 부서위치 출력
select e.empno, e.ename, e.sal, d.dname, d.loc 
from emp e inner join dept d
on ( e.deptno = d.deptno )
where e.job = 'CLERK';





-- non-equi join, 부등호 관계
select * from emp where deptno = 10;
select * from salgrade;

select * 
from emp e inner join salgrade s 
on ( e.sal > s.losal and e.sal <= s.hisal );


-- 입사년도가 2011년인 사원 출력
select e.empno, e.ename, e.sal, s.grade 
from emp e inner join salgrade s 
on ( e.sal > s.losal and e.sal <= s.hisal )
where mid( e.hiredate, 1, 4) = '2011';


-- 테이블 3개
select e.empno, e.ename, e.sal, s.grade, d.dname, d.loc 
from emp e inner join dept d
on ( e.deptno = d.deptno ) 
inner join salgrade s 
-- on ( e.sal > s.losal and e.sal <= s.hisal );
on ( e.sal between s.losal and s.hisal );

select e.empno, e.ename, e.sal, s.grade, d.dname, d.loc 
from emp e inner join dept d inner join salgrade s 
on ( e.deptno = d.deptno and e.sal between s.losal and s.hisal );





-- outer join
-- left outer join
-- right outer join
-- full outer join

-- 사원이 없는 부서
select d.deptno, d.dname, e.empno, e.ename 
from emp e right outer join dept d
on ( d.deptno = e.deptno );

select d.deptno, d.dname, e.empno, e.ename 
from emp e right outer join dept d
on ( d.deptno = e.deptno )
where e.empno is null;





-- self join ∋ equi join, non-equi join, outer join

