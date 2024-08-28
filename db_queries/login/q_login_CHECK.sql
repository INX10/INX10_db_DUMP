SELECT 
  IF(user_ID = '$user_ID' AND user_password = '$user_password', 'Login successful', 'Login failed') AS login_status,
  IF(user_ID = '$user_ID' AND user_password = '$user_password', user_ID, NULL) AS entered_user_ID,
  IF(user_ID = '$user_ID' AND user_password = '$user_password', user_type, NULL) AS user_role
FROM user_login
WHERE user_ID = '$user_ID';
