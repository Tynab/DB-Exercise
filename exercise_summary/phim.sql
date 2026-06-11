-- Summary:
--   Tao bang phim cho database baitaptonghop.
--   Bang chitietphim va datve se tham chieu den bang nay.

CREATE DATABASE IF NOT EXISTS baitaptonghop;
USE baitaptonghop;

-- Schema: luu thong tin mo ta phim; trailer va hinh_anh de NULL trong du lieu mau.
CREATE TABLE IF NOT EXISTS phim (
    ma CHAR(10) NOT NULL,
    ten NVARCHAR(50) NOT NULL,
    trailer LONGBLOB,
    hinh_anh LONGBLOB,
    mo_ta NVARCHAR(255),
    PRIMARY KEY (ma)
);

-- Seed data.
INSERT INTO
    phim (ma, ten, mo_ta)
VALUES
    ('PH01', 'Teddy', 'Bộ phim dựa trên câu chuyện có thật.'),
    ('PH02', 'Detective Conan', 'Anime dựa trên bộ manga cùng tên.')
ON DUPLICATE KEY UPDATE
    ten = VALUES(ten),
    mo_ta = VALUES(mo_ta);

-- Quick check.
SELECT * FROM phim;
