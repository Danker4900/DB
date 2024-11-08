-- Роль admin_role

CREATE USER 'admin_role'@'localhost' IDENTIFIED BY 'ComplexPassword@123';
GRANT ALL PRIVILEGES ON military.* TO 'admin_role'@'localhost' WITH GRANT OPTION;

-- Роль developer_role

CREATE USER 'developer_role'@'localhost' IDENTIFIED BY 'ComplexPassword@123';
GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, DROP, INDEX, ALTER ON military.* TO 'developer_role'@'localhost';

-- Роль analyst_role

CREATE USER 'analyst_role'@'localhost' IDENTIFIED BY 'ComplexPassword@123';
GRANT SELECT ON military.* TO 'analyst_role'@'localhost';

-- Створення користувача admin_user з усіма привілеями

CREATE USER 'admin_user'@'localhost' IDENTIFIED BY 'AdminUserPassword@123';
GRANT ALL PRIVILEGES ON military.* TO 'admin_user'@'localhost' WITH GRANT OPTION;

-- Створення користувача dev_user з обмеженими привілеями (для розробки)

CREATE USER 'dev_user'@'localhost' IDENTIFIED BY 'DevUserPassword@123';
GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, DROP, INDEX, ALTER ON military.* TO 'dev_user'@'localhost';

-- Створення користувача analyst_user з правами лише для читання

CREATE USER 'analyst_user'@'localhost' IDENTIFIED BY 'AnalystUserPassword@123';
GRANT SELECT ON military.* TO 'analyst_user'@'localhost';

-- Створення користувача guest_user з правами лише для читання конкретної таблиці targets

CREATE USER 'guest_user'@'localhost' IDENTIFIED BY 'GuestUserPassword@123';
GRANT SELECT ON military.targets TO 'guest_user'@'localhost';

-- Оновлення привілеїв

FLUSH PRIVILEGES;
