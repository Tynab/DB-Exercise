-- Summary:
--   Tao bang tai khoan nguoi dung CRM.
--   Bang taskscrm se tham chieu den bang nay qua account_id.

CREATE DATABASE IF NOT EXISTS baitapcrm;
USE baitapcrm;

-- Schema: thong tin tai khoan co ban. Mat khau chi la du lieu minh hoa cho bai tap.
CREATE TABLE IF NOT EXISTS accountscrm (
    id INT AUTO_INCREMENT,
    fullname VARCHAR(100) NOT NULL,
    email VARCHAR(100),
    password VARCHAR(20),
    phone VARCHAR(20),
    address VARCHAR(255),
    PRIMARY KEY (id)
);

-- Seed data.
INSERT INTO
    accountscrm (id, fullname, email, password, phone, address)
VALUES
    (1, 'Fullname 1', 'fullname1@gmail.com', '123456', '0987654321', 'Address 1')
ON DUPLICATE KEY UPDATE
    fullname = VALUES(fullname),
    email = VALUES(email),
    password = VALUES(password),
    phone = VALUES(phone),
    address = VALUES(address);

-- Quick check.
SELECT * FROM accountscrm;
