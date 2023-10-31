-- 관리자 이름 출력
-- select empno, ename, mgr from emp;

select e.empno, e.ename '사원', e.mgr, m.ename '관리자' 
from emp e inner join emp m 
on ( e.mgr = m.empno );

-- KING 포함
select e.empno, e.ename '사원', e.mgr, m.ename '관리자' 
from emp e left outer join emp m 
on ( e.mgr = m.empno );

-- 관리자 없는 사원
select e.empno, e.ename '사원', e.mgr, m.ename '관리자' 
from emp e left outer join emp m 
on ( e.mgr = m.empno )
where e.mgr is null;