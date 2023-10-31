-- 각 부서의 평균 급여보다 적은 사원 목록 출력
select deptno, avg( sal ) 
from emp 
group by deptno;

select * 
from emp 
where sal < all (
    select avg( sal ) 
    from emp 
    group by deptno
);
