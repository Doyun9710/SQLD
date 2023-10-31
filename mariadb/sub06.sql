-- 직책이 MANAGER인 사원들보다 급여가 적은 사원 목록 출력
select * 
from emp 
where sal < all (
    select sal 
    from emp 
    where job = 'MANAGER'
);