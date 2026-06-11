-- Summary:
--   Tao bang khach hang cho database baitap2.
--   Khach hang duoc hoa don tham chieu qua hoadon.ma_khachhang.

CREATE DATABASE IF NOT EXISTS baitap2;
USE baitap2;

-- Schema: luu thong tin lien he co ban cua khach hang.
CREATE TABLE IF NOT EXISTS khachhang (
    ma CHAR(10) NOT NULL,
    ho NVARCHAR(20),
    ten NVARCHAR(20),
    dia_chi NVARCHAR(255),
    sdt CHAR(20),
    email CHAR(50),
    PRIMARY KEY (ma)
);

-- Seed data.
INSERT INTO
    khachhang (ma, ho, ten, dia_chi, sdt, email)
VALUES
    ('KH01', 'Nguyễn', 'Văn A', 'Hà Nội', '0123456789', 'nguyenvan@gmail.com')
ON DUPLICATE KEY UPDATE
    ho = VALUES(ho),
    ten = VALUES(ten),
    dia_chi = VALUES(dia_chi),
    sdt = VALUES(sdt),
    email = VALUES(email);

-- Quick check.
SELECT * FROM khachhang;
