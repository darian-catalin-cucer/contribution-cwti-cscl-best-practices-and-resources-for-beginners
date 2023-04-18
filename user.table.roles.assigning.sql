CREATE TABLE roles (
   id INT PRIMARY KEY,
   name VARCHAR(50)
);

CREATE TABLE user_roles (
   user_id INT,
   role_id INT,
   FOREIGN KEY (user_id) REFERENCES users(id),
   FOREIGN KEY (role_id) REFERENCES roles(id)
);

INSERT INTO roles (id, name)
VALUES (1, 'admin'), (2, 'user');

INSERT INTO user_roles (user_id, role_id)
VALUES (1, 1); -- John Doe is an admin
