SELECT CASE 
         WHEN (user_ID = '$user_ID' AND user_password = '$user_password') THEN 'Login successful'
         ELSE 'Login failed'
       END AS login_status
FROM user_login
WHERE user_ID = '$user_ID';
