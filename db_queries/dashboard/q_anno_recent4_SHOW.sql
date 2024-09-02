SELECT a.announce_ID, CONCAT(e.last_name, ', ', e.first_name) AS author, a.announce_subject, a.announce_body, a.date
FROM announcement a
LEFT JOIN employee_information e ON a.employee_ID = e.employee_ID
ORDER BY date DESC
LIMIT 4;
