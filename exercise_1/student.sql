-- Summary:
--   Tao va nap du lieu mau cho bang students trong database baitap1.
--   File nay nen duoc chay truoc baitap1.sql de cac cau SELECT co du lieu.

CREATE DATABASE IF NOT EXISTS baitap1;
USE baitap1;

-- Schema: luu thong tin co ban cua hoc vien.
CREATE TABLE IF NOT EXISTS students (
    id INT AUTO_INCREMENT,
    full_name VARCHAR(50) NOT NULL,
    gender VARCHAR(3),
    age INT,
    city VARCHAR(20),
    weight DOUBLE,
    PRIMARY KEY (id)
);

-- Seed data: khai bao id co dinh va dung ON DUPLICATE KEY UPDATE de co the chay lai file.
INSERT INTO
    students (id, full_name, gender, age, city, weight)
VALUES
    (1, 'Nguyen Thanh Nhan', 'Nam', 19, 'Can Tho', 56.5674),
    (2, 'Pham Thu Huong', 'Nu', 20, 'Vinh Long', 72.456),
    (3, 'Nguyen Nhu Ngoc', 'Nu', 20, 'Soc Trang', 85.387),
    (4, 'Bui Thanh Bao', 'Nam', 19, 'Soc Trang', 49.3),
    (5, 'Ly My Nhan', 'Nu', 22, 'Can Tho', 62.963),
    (6, 'Tan Thuc Bao', 'Nam', 35, 'An Giang', 55.5678),
    (7, 'Trinh Giao Kim', 'Nam', 44, 'Bac Lieu', 67.34)
ON DUPLICATE KEY UPDATE
    full_name = VALUES(full_name),
    gender = VALUES(gender),
    age = VALUES(age),
    city = VALUES(city),
    weight = VALUES(weight);

-- Quick check: xem toan bo du lieu mau sau khi seed.
SELECT * FROM students;
