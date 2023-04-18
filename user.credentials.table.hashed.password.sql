CREATE TABLE users (
   id INT PRIMARY KEY,
   username VARCHAR(50),
   password_hash VARCHAR(128)
);

INSERT INTO users (id, username, password_hash)
VALUES (1, 'john_doe', 'a1b2c3d4e5f6g7h8');
