UPDATE employee_history
SET end_date = '$end_date',
	status = 0
WHERE
	employee_ID = $emp_ID;
