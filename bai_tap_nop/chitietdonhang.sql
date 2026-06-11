-- Summary:
--   Tao bang chi tiet don hang de luu sach, don gia va so luong trong tung don.
--   Can chay sach.sql va donhang.sql truoc file nay.

CREATE DATABASE IF NOT EXISTS qlbansach;
USE qlbansach;

-- Schema: khoa chinh ghep dam bao moi sach chi co mot dong trong mot don hang.
CREATE TABLE IF NOT EXISTS chitietdonhang (
    ma_sach CHAR(10) NOT NULL,
    ma_donhang CHAR(10) NOT NULL,
    don_gia DECIMAL(12, 2),
    so_luong INT,
    PRIMARY KEY (ma_sach, ma_donhang),
    CONSTRAINT fk_chitietdonhang_sach
        FOREIGN KEY (ma_sach) REFERENCES sach(ma),
    CONSTRAINT fk_chitietdonhang_donhang
        FOREIGN KEY (ma_donhang) REFERENCES donhang(ma)
);

-- Seed data.
INSERT INTO
    chitietdonhang (ma_sach, ma_donhang, don_gia, so_luong)
VALUES
    ('S01', 'DH01', 100000, 1)
ON DUPLICATE KEY UPDATE
    don_gia = VALUES(don_gia),
    so_luong = VALUES(so_luong);

-- Quick check.
SELECT * FROM chitietdonhang;
