-- Summary:
--   Tao bang nguoi dung dat ve va gan moi nguoi dung vao mot loai nguoi dung.
--   Can chay loainguoidung.sql truoc file nay.

CREATE DATABASE IF NOT EXISTS baitaptonghop;
USE baitaptonghop;

-- Schema: mat_khau dung MD5 de minh hoa bai tap; he thong thuc te can hash manh hon.
CREATE TABLE IF NOT EXISTS nguoidung (
    tai_khoan CHAR(50) NOT NULL,
    ma_loainguoidung CHAR(10) NOT NULL,
    mat_khau CHAR(32),
    ho_ten NVARCHAR(50),
    sdt CHAR(20),
    email CHAR(50),
    PRIMARY KEY (tai_khoan),
    CONSTRAINT fk_nguoidung_loainguoidung
        FOREIGN KEY (ma_loainguoidung) REFERENCES loainguoidung(ma)
);

-- Seed data.
INSERT INTO
    nguoidung (tai_khoan, ma_loainguoidung, mat_khau, ho_ten, sdt, email)
VALUES
    ('nguyenvana', 'L01', MD5('a311290'), 'Nguyễn Văn A', '0123456789', 'nguyenvana@gmail.com'),
    ('nguyenvandung', 'L02', MD5('dung91'), 'Nguyễn Văn Dũng', '0987654321', 'nvd@gmail.com')
ON DUPLICATE KEY UPDATE
    ma_loainguoidung = VALUES(ma_loainguoidung),
    mat_khau = VALUES(mat_khau),
    ho_ten = VALUES(ho_ten),
    sdt = VALUES(sdt),
    email = VALUES(email);

-- Quick check.
SELECT * FROM nguoidung;
