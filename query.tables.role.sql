SELECT * FROM users
JOIN user_roles ON users.id = user_roles.user_id
JOIN roles ON user_roles.role_id = roles.id
WHERE users.username = 'john_doe' AND roles.name = 'admin';
