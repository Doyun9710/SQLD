-- 최고 급여를 받는 사원 목록 출력
select * 
from emp 
where sal = (
    select max(sal) 
    from emp
);
