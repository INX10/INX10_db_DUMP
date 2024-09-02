SELECT i.user_ID AS i_user_ID, i.first_name AS i_first_name, i.middle_name AS i_middle_name, i.last_name AS i_last_name, 
	j.job_title AS job, d.department_name AS department, st.start_date,
	c.email AS c_email, c.contact_no AS c_contact_no, c.telephone_no AS c_telephone_no, c.permanent_address AS c_permanent_address, c.current_address AS c_current_address,
        o.birth_date AS o_birth_date, o.birth_place AS o_birth_place, o.civil_status AS o_civil_status,
        ed.highschool AS ed_highschool, ed.college AS ed_college, ed.remarks AS ed_remarks,
        g.sss AS g_sss, g.philhealth AS g_philhealth, g.pagibig AS g_pagibig, g.tin AS g_tin
FROM employee_information i
LEFT JOIN employee_contactinfo c ON i.employee_ID = c.employee_ID
LEFT JOIN employee_otherinfo o ON i.employee_ID = o.employee_ID
LEFT JOIN employee_education ed ON i.employee_ID = ed.employee_ID
LEFT JOIN employee_governmentid g ON i.employee_ID = g.employee_ID
LEFT JOIN employee_history st ON i.employee_ID = st.employee_ID 
LEFT JOIN employee_department d ON st.department_ID = d.department_ID
LEFT JOIN employee_job j ON st.job_ID = j.job_ID
WHERE i.employee_ID = 1;

--WITHOUT WORK_HISTORY AND DOCUMENTS [REASON: POSSIBLE MULTIPLE ENTRIES]
