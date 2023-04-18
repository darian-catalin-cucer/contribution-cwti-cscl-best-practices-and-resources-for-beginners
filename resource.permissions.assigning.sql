CREATE TABLE resources (
   id INT PRIMARY KEY,
   name VARCHAR(50)
);

CREATE TABLE permissions (
   role_id INT,
   resource_id INT,
   permission VARCHAR(10),
   FOREIGN KEY (role_id) REFERENCES roles(id),
   FOREIGN KEY (resource_id) REFERENCES resources(id)
);

INSERT INTO resources (id, name)
VALUES (1, 'sensitive_data'), (2, 'public_data');

INSERT INTO permissions (role_id, resource_id, permission)
VALUES (1, 1, 'read'), (1, 1, 'write'), (2, 2, 'read'); -- Admins can read and write sensitive data, users can read public data
