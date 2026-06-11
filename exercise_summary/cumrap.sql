-- Summary:
--   Tao bang cum rap cho database baitaptonghop.
--   Rap se tham chieu den cum rap qua rap.ma_cumrap.

CREATE DATABASE IF NOT EXISTS baitaptonghop;
USE baitaptonghop;

-- Schema: cum rap la don vi gom nhieu rap.
CREATE TABLE IF NOT EXISTS cumrap (
    ma CHAR(10) NOT NULL,
    ten NVARCHAR(50) NOT NULL,
    PRIMARY KEY (ma)
);

-- Seed data.
INSERT INTO
    cumrap (ma, ten)
VALUES
    ('CR01', 'Mega GS'),
    ('CR02', 'CGV')
ON DUPLICATE KEY UPDATE
    ten = VALUES(ten);

-- Quick check.
SELECT * FROM cumrap;
