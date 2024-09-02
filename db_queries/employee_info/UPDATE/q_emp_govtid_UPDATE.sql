UPDATE employee_governmentid
SET
	sss = $sss,
	philhealth = $philhealth,
	pagibig = $pagibig,
	tin = $tin
WHERE employee_ID = $emp_ID;
