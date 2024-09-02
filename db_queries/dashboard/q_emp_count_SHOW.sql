SELECT COUNT(CASE WHEN status = 1 THEN 1 END) AS num_emp, 
	(SELECT COUNT(CASE WHEN hr_approval = 0 THEN 1 END) FROM employee_leave) AS pend_req,
    COUNT(CASE WHEN department_ID = 1 AND status = 1 THEN 1 END) AS d_hr_count,
    COUNT(CASE WHEN department_ID = 2 AND status = 1 THEN 1 END) AS d_it_count
FROM employee_history
