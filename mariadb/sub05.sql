-- 20번 부서의 사원이 속한 직책과 같은 사원들에 대한 정보
select * 
from emp 
where job in (
    select distinct job 
    from emp 
    where deptno = '20'
)