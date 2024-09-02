UPDATE employee_contactinfo
SET
	email = $email,
	contact_no = $contact_no,
	telephone_no = $telephone_no,
	permanent_address = $permanent_address,
	current_address = $current_address
WHERE employee_ID = $emp_ID;
