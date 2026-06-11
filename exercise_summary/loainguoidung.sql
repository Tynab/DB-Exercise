-- Summary:
--   Tao danh muc loai nguoi dung cho database baitaptonghop.
--   Nguoidung se tham chieu den bang nay qua nguoidung.ma_loainguoidung.

CREATE DATABASE IF NOT EXISTS baitaptonghop;
USE baitaptonghop;

-- Schema: danh muc phan nhom nguoi dung.
CREATE TABLE IF NOT EXISTS loainguoidung (
    ma CHAR(10) NOT NULL,
    ten NVARCHAR(50) NOT NULL,
    PRIMARY KEY (ma)
);

-- Seed data.
INSERT INTO
    loainguoidung (ma, ten)
VALUES
    ('L01', 'Người dùng VIP'),
    ('L02', 'Người dùng thường')
ON DUPLICATE KEY UPDATE
    ten = VALUES(ten);

-- Quick check.
SELECT * FROM loainguoidung;
