SELECT w.start_date AS w_start_date, w.end_date AS w_end_date, w.company AS w_company, w.remarks AS w_remarks,
		d.filename AS d_filename, d.document_file AS d_document
FROM employee_information i
LEFT JOIN employee_workhistory w ON i.employee_ID = w.employee_ID
LEFT JOIN employee_documents d ON i.employee_ID = d.employee_ID
WHERE i.employee_ID = $emp_ID;

--ADDED WORK HISTORY AND DOCUMENT
