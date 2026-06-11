-- Summary:
--   Tao bang chi tiet tac gia de noi sach voi tac gia.
--   Can chay sach.sql va tacgia.sql truoc file nay.

CREATE DATABASE IF NOT EXISTS qlbansach;
USE qlbansach;

-- Schema: khoa chinh ghep cho phep mot sach co nhieu tac gia va mot tac gia viet nhieu sach.
CREATE TABLE IF NOT EXISTS chitiettacgia (
    ma_sach CHAR(10) NOT NULL,
    ma_tacgia CHAR(10) NOT NULL,
    vai_tro NVARCHAR(20),
    vi_tri NVARCHAR(20),
    PRIMARY KEY (ma_sach, ma_tacgia),
    CONSTRAINT fk_chitiettacgia_sach
        FOREIGN KEY (ma_sach) REFERENCES sach(ma),
    CONSTRAINT fk_chitiettacgia_tacgia
        FOREIGN KEY (ma_tacgia) REFERENCES tacgia(ma)
);

-- Seed data.
INSERT INTO
    chitiettacgia (ma_sach, ma_tacgia, vai_tro, vi_tri)
VALUES
    ('S01', 'TG01', 'Tác giả', 'Giám đốc')
ON DUPLICATE KEY UPDATE
    vai_tro = VALUES(vai_tro),
    vi_tri = VALUES(vi_tri);

-- Quick check.
SELECT * FROM chitiettacgia;
