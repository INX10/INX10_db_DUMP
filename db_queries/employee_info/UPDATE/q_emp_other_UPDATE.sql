UPDATE employee_otherinfo
SET
	birth_date = $birth_date,
	birth_place = $birth_place,
	civil_status = $civil_status
WHERE employee_ID = $emp_ID;
