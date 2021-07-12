SELECT EMP.emp_no, EMP.last_name, EMP.first_name, EMP.sex , SAL.Salary
	FROM public."Employees" EMP
	INNER JOIN public."Salaries" SAL
	ON EMP.emp_no = SAL.emp_no;
	
SELECT EMP.first_name, EMP.last_name, EMP.hire_date
	FROM public."Employees" EMP
	WHERE date_part('year',EMP.hire_date) = 1986;	
	
SELECT DM.dept_no, DEPT.dept_name, DM.emp_no, EMP.last_name	,EMP.first_name
	FROM public."Dept_Manager" DM
	INNER JOIN public."Employees" EMP
	ON DM.emp_no = EMP.emp_no
	INNER JOIN public."Departments" DEPT
	ON DM.dept_no = DEPT.dept_no;
	
SELECT EMP.emp_no, EMP.last_name, EMP.first_name, DEPT.dept_name
	FROM public."Employees" EMP
	INNER JOIN public."Dept_Emp" DE
	ON EMP.emp_no = DE.emp_no
	INNER JOIN public."Departments" DEPT
	ON DE.dept_no = DEPT.dept_no;	
	
SELECT EMP.first_name, EMP.last_name, EMP.sex
	FROM public."Employees" EMP
	WHERE EMP.first_name = 'Hercules'
	AND LEFT(EMP.last_name,1) = 'B' ;
	
SELECT EMP.emp_no, EMP.last_name, EMP.first_name, DEPT.dept_name
	FROM public."Employees" EMP
	INNER JOIN public."Dept_Emp" DE
	ON EMP.emp_no = DE.emp_no
	INNER JOIN public."Departments" DEPT
	ON DE.dept_no = DEPT.dept_no
	WHERE DEPT.dept_name = 'Sales';	
	
SELECT EMP.emp_no, EMP.last_name, EMP.first_name, DEPT.dept_name
	FROM public."Employees" EMP
	INNER JOIN public."Dept_Emp" DE
	ON EMP.emp_no = DE.emp_no
	INNER JOIN public."Departments" DEPT
	ON DE.dept_no = DEPT.dept_noSELECT EMP.emp_no, EMP.last_name, EMP.first_name, EMP.sex , SAL.Salary
	FROM public."Employees" EMP
	INNER JOIN public."Salaries" SAL
	ON EMP.emp_no = SAL.emp_no;
	
SELECT EMP.first_name, EMP.last_name, EMP.hire_date
	FROM public."Employees" EMP
	WHERE date_part('year',EMP.hire_date) = 1986;	
	
SELECT DM.dept_no, DEPT.dept_name, DM.emp_no, EMP.last_name	,EMP.first_name
	FROM public."Dept_Manager" DM
	INNER JOIN public."Employees" EMP
	ON DM.emp_no = EMP.emp_no
	INNER JOIN public."Departments" DEPT
	ON DM.dept_no = DEPT.dept_no;
	
SELECT EMP.emp_no, EMP.last_name, EMP.first_name, DEPT.dept_name
	FROM public."Employees" EMP
	INNER JOIN public."Dept_Emp" DE
	ON EMP.emp_no = DE.emp_no
	INNER JOIN public."Departments" DEPT
	ON DE.dept_no = DEPT.dept_no;	
	
SELECT EMP.first_name, EMP.last_name, EMP.sex
	FROM public."Employees" EMP
	WHERE EMP.first_name = 'Hercules'
	AND LEFT(EMP.last_name,1) = 'B' ;
	
SELECT EMP.emp_no, EMP.last_name, EMP.first_name, DEPT.dept_name
	FROM public."Employees" EMP
	INNER JOIN public."Dept_Emp" DE
	ON EMP.emp_no = DE.emp_no
	INNER JOIN public."Departments" DEPT
	ON DE.dept_no = DEPT.dept_no
	WHERE DEPT.dept_name = 'Sales';	
	
SELECT EMP.emp_no, EMP.last_name, EMP.first_name, DEPT.dept_name
	FROM public."Employees" EMP
	INNER JOIN public."Dept_Emp" DE
	ON EMP.emp_no = DE.emp_no
	INNER JOIN public."Departments" DEPT
	ON DE.dept_no = DEPT.dept_no
	WHERE DEPT.dept_name IN ('Sales','Development');

SELECT EMP.last_name, COUNT(1)
	FROM public."Employees" EMP
	GROUP BY EMP.last_name
	ORDER BY COUNT(1) DESC;
	
	WHERE DEPT.dept_name IN ('Sales','Development');

SELECT EMP.last_name, COUNT(1)
	FROM public."Employees" EMP
	GROUP BY EMP.last_name
	ORDER BY COUNT(1) DESC;
	