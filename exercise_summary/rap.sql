-- Summary:
--   Tao bang rap va gan tung rap vao mot cum rap.
--   Can chay cumrap.sql truoc file nay.

CREATE DATABASE IF NOT EXISTS baitaptonghop;
USE baitaptonghop;

-- Schema: moi rap thuoc mot cum rap va luu tong so ghe hien co.
CREATE TABLE IF NOT EXISTS rap (
    ma CHAR(10) NOT NULL,
    ma_cumrap CHAR(10) NOT NULL,
    ten NVARCHAR(50) NOT NULL,
    so_ghe INT,
    PRIMARY KEY (ma),
    CONSTRAINT fk_rap_cumrap
        FOREIGN KEY (ma_cumrap) REFERENCES cumrap(ma)
);

-- Seed data.
INSERT INTO
    rap (ma, ma_cumrap, ten, so_ghe)
VALUES
    ('R01', 'CR01', 'Rạp 1', 1),
    ('R02', 'CR02', 'Rạp 2', 1)
ON DUPLICATE KEY UPDATE
    ma_cumrap = VALUES(ma_cumrap),
    ten = VALUES(ten),
    so_ghe = VALUES(so_ghe);

-- Quick check.
SELECT * FROM rap;
