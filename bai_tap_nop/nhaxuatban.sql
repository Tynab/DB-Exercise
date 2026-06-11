-- Summary:
--   Tao bang nha xuat ban cho database qlbansach.
--   Bang sach se tham chieu den nha xuat ban qua sach.ma_nhaxuatban.

CREATE DATABASE IF NOT EXISTS qlbansach;
USE qlbansach;

-- Schema: thong tin lien he co ban cua nha xuat ban.
CREATE TABLE IF NOT EXISTS nhaxuatban (
    ma CHAR(10) NOT NULL,
    ten NVARCHAR(50) NOT NULL,
    dia_chi NVARCHAR(255),
    sdt CHAR(20),
    PRIMARY KEY (ma)
);

-- Seed data.
INSERT INTO
    nhaxuatban (ma, ten, dia_chi, sdt)
VALUES
    ('NXB01', 'NXB Văn Hóa', 'Hà Nội', '0987654321')
ON DUPLICATE KEY UPDATE
    ten = VALUES(ten),
    dia_chi = VALUES(dia_chi),
    sdt = VALUES(sdt);

-- Quick check.
SELECT * FROM nhaxuatban;
