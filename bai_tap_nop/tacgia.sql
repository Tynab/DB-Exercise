-- Summary:
--   Tao bang tac gia cho database qlbansach.
--   Quan he nhieu-nhieu giua sach va tac gia duoc luu trong chitiettacgia.

CREATE DATABASE IF NOT EXISTS qlbansach;
USE qlbansach;

-- Schema: thong tin tac gia va lien he.
CREATE TABLE IF NOT EXISTS tacgia (
    ma CHAR(10) NOT NULL,
    ten NVARCHAR(50) NOT NULL,
    tieu_su NVARCHAR(255),
    dia_chi NVARCHAR(255),
    sdt CHAR(20),
    PRIMARY KEY (ma)
);

-- Seed data.
INSERT INTO
    tacgia (ma, ten, tieu_su, dia_chi, sdt)
VALUES
    ('TG01', 'Nguyễn Thị B', 'Từng làm thợ hàn', 'Hà Nội', '0987654322')
ON DUPLICATE KEY UPDATE
    ten = VALUES(ten),
    tieu_su = VALUES(tieu_su),
    dia_chi = VALUES(dia_chi),
    sdt = VALUES(sdt);

-- Quick check.
SELECT * FROM tacgia;
