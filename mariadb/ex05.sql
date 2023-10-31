-- 급여 인상분 ..
-- 10 -> 10% / 20 -> 20% / 30 -> 인상없음
select empno, ename, job, sal '현재 급여',
    case deptno
        when 10 then sal * 1.1
        when 20 then sal * 1.2
        else sal
    end '인상 급여'
from emp;