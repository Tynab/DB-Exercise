-- Summary:
--   Tao danh muc loai san pham cho database baitap2.
--   Chay file nay truoc sanpham.sql vi san pham se tham chieu den loai san pham.

CREATE DATABASE IF NOT EXISTS baitap2;
USE baitap2;

-- Schema: moi loai san pham gom ma va ten hien thi.
CREATE TABLE IF NOT EXISTS loaisanpham (
    ma CHAR(10) NOT NULL,
    ten NVARCHAR(50) NOT NULL,
    PRIMARY KEY (ma)
);

-- Seed data: ma loai duoc co dinh de cac bang khac tham chieu on dinh.
INSERT INTO
    loaisanpham (ma, ten)
VALUES
    ('LSP01', 'Sách'),
    ('LSP02', 'Điện thoại'),
    ('LSP03', 'Laptop')
ON DUPLICATE KEY UPDATE
    ten = VALUES(ten);

-- Quick check.
SELECT * FROM loaisanpham;
