-- Summary:
--   Tao danh muc chu de sach cho database qlbansach.
--   Bang sach se tham chieu den chu de qua sach.ma_chude.

CREATE DATABASE IF NOT EXISTS qlbansach;
USE qlbansach;

-- Schema: chu de giup phan nhom sach.
CREATE TABLE IF NOT EXISTS chude (
    ma CHAR(10) NOT NULL,
    ten NVARCHAR(50) NOT NULL,
    PRIMARY KEY (ma)
);

-- Seed data.
INSERT INTO
    chude (ma, ten)
VALUES
    ('CD01', 'Văn Học')
ON DUPLICATE KEY UPDATE
    ten = VALUES(ten);

-- Quick check.
SELECT * FROM chude;
