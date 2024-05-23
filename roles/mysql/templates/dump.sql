CREATE DATABASE IF NOT EXISTS employeeSystem;
USE employeeSystem;

CREATE TABLE IF NOT EXISTS employees(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL, 
    age INT unsigned, 
    country VARCHAR(50), 
    position VARCHAR(50), 
    wage FLOAT NOT NULL
);
CREATE USER 'test'@'localhost' IDENTIFIED BY 'mauFJcuf5dhRMQrjj';
GRANT ALL PRIVILEGES ON employeeSystem.* TO 'test'@'localhost';

-- Create the user and grant privileges for any IP
CREATE USER 'test'@'%' IDENTIFIED BY 'mauFJcuf5dhRMQrjj';
GRANT ALL PRIVILEGES ON employeeSystem.* TO 'test'@'%';

FLUSH PRIVILEGES;

ALTER USER 'test'@'localhost' IDENTIFIED WITH 'mysql_native_password' BY 'mauFJcuf5dhRMQrjj';
ALTER USER 'test'@'%' IDENTIFIED WITH 'mysql_native_password' BY 'mauFJcuf5dhRMQrjj';
FLUSH PRIVILEGES;