-- 'WARD' 사원과 급여가 같은 사원 목록
select * 
from emp 
where sal = (
    select sal 
    from emp 
    where ename = 'WARD'
);