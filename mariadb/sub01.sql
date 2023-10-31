-- scott의 급여보다 큰 급여를 받는 사원에 대한 목록 출력
select * 
from emp 
where sal >= (
	select sal 
	from emp
	where ename = 'scott'
);
