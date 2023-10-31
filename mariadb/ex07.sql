-- 최대 최소
select max( sal ), min( sal ) from emp;

-- 주의!!! ename과 max( sal ) 은 관계 없음
select ename, max( sal ) from emp;
