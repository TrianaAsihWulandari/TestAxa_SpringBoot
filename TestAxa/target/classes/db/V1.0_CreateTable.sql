CREATE TABLE roles (
    role_id INTEGER PRIMARY KEY AUTO_INCREMENT,
    role_name VARCHAR(100) NOT NULL
);

CREATE TABLE premissions (
    premission_id INTEGER PRIMARY KEY AUTO_INCREMENT,
    premission_type VARCHAR(50) NOT NULL
);

CREATE TABLE users (
    user_id INTEGER PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    role_id INTEGER,
    FOREIGN KEY (role_id) REFERENCES roles(role_id)

);

CREATE TABLE role_permissions (
    role_id INTEGER,
    premission_id INTEGER,
    PRIMARY KEY (role_id, premission_id),
    FOREIGN KEY (role_id) REFERENCES roles(role_id),
    FOREIGN KEY (premission_id) REFERENCES premissions(premission_id)
);