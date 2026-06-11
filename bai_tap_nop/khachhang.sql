-- Summary:
--   Tao bang khach hang cho database qlbansach.
--   Don hang se tham chieu den khach hang qua donhang.ma_khachhang.

CREATE DATABASE IF NOT EXISTS qlbansach;
USE qlbansach;

-- Schema: mat_khau dung MD5 de minh hoa bai tap; he thong thuc te can hash manh hon.
CREATE TABLE IF NOT EXISTS khachhang (
    ma CHAR(10) NOT NULL,
    tai_khoan CHAR(50),
    mat_khau CHAR(32),
    ten NVARCHAR(50),
    ngay_sinh DATE,
    gioi_tinh BOOLEAN,
    dia_chi NVARCHAR(255),
    sdt CHAR(20),
    email CHAR(50),
    PRIMARY KEY (ma)
);

-- Seed data.
INSERT INTO
    khachhang (ma, tai_khoan, mat_khau, ten, ngay_sinh, gioi_tinh, dia_chi, sdt, email)
VALUES
    ('KH01', 'nguyenvana', MD5('a311290'), 'Nguyễn Văn A', '1990-12-31', TRUE, 'Hà Nội', '0123456789', 'nva311290@gmail.com')
ON DUPLICATE KEY UPDATE
    tai_khoan = VALUES(tai_khoan),
    mat_khau = VALUES(mat_khau),
    ten = VALUES(ten),
    ngay_sinh = VALUES(ngay_sinh),
    gioi_tinh = VALUES(gioi_tinh),
    dia_chi = VALUES(dia_chi),
    sdt = VALUES(sdt),
    email = VALUES(email);

-- Quick check.
SELECT * FROM khachhang;
