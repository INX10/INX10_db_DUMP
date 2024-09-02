CREATE VIEW employee_summary AS
SELECT i.user_ID AS ID, 
	CONCAT(i.first_name, ' ', i.last_name) AS NAME,
    d.department_name AS DEPARTMENT,
    c.contact_no AS CONTACT,
    COUNT(CASE WHEN l.manager_approval = 0 OR l.hr_approval = 0 THEN 1 END) OVER (PARTITION BY l.employee_ID) AS REQUESTS,
    start_date AS START_DATE
 FROM employee_history h
 LEFT JOIN employee_information i ON h.employee_ID = i.employee_ID
 LEFT JOIN employee_department d ON h.department_ID = d.department_ID
 LEFT JOIN employee_contactinfo c ON h.employee_ID = c.employee_ID
 LEFT JOIN employee_leave l ON h.employee_ID = l.employee_ID
 WHERE NOT status = 0;
