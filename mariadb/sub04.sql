-- Error, Subquery returns more than 1, 
select * 
from emp 
where sal = (
    select sal 
    from emp
);

-- 단일행, 복수열
select * 
from emp 
where sal in (
    select sal 
    from emp
);