-- Summary:
--   Tao danh muc loai ghe cho database baitaptonghop.
--   Ghe se tham chieu den loai ghe qua ghe.ma_loaighe.

CREATE DATABASE IF NOT EXISTS baitaptonghop;
USE baitaptonghop;

-- Schema: loai ghe luu mo ta va ty le chiet khau/phu thu.
CREATE TABLE IF NOT EXISTS loaighe (
    ma CHAR(10) NOT NULL,
    ten NVARCHAR(50) NOT NULL,
    mo_ta NVARCHAR(255),
    chiet_khau FLOAT,
    PRIMARY KEY (ma)
);

-- Seed data.
INSERT INTO
    loaighe (ma, ten, mo_ta, chiet_khau)
VALUES
    ('LG01', 'Ghế VIP', 'Ghế mới', 1.5),
    ('LG02', 'Ghế thường', 'Ghế cũ', 0)
ON DUPLICATE KEY UPDATE
    ten = VALUES(ten),
    mo_ta = VALUES(mo_ta),
    chiet_khau = VALUES(chiet_khau);

-- Quick check.
SELECT * FROM loaighe;
