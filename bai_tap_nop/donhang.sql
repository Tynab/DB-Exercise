-- Summary:
--   Tao bang don hang va lien ket moi don hang voi mot khach hang.
--   Can chay khachhang.sql truoc file nay.

CREATE DATABASE IF NOT EXISTS qlbansach;
USE qlbansach;

-- Schema: san pham trong don hang duoc luu o chitietdonhang, khong dat truc tiep tren donhang.
CREATE TABLE IF NOT EXISTS donhang (
    ma CHAR(10) NOT NULL,
    ma_khachhang CHAR(10) NOT NULL,
    thanh_toan BOOLEAN,
    tinhtrang_giaohang NVARCHAR(20),
    ngay_dat DATE,
    ngay_giao DATE,
    PRIMARY KEY (ma),
    CONSTRAINT fk_donhang_khachhang
        FOREIGN KEY (ma_khachhang) REFERENCES khachhang(ma)
);

-- Seed data.
INSERT INTO
    donhang (ma, ma_khachhang, thanh_toan, tinhtrang_giaohang, ngay_dat, ngay_giao)
VALUES
    ('DH01', 'KH01', TRUE, 'Đã giao', '2022-02-01', '2022-03-01')
ON DUPLICATE KEY UPDATE
    ma_khachhang = VALUES(ma_khachhang),
    thanh_toan = VALUES(thanh_toan),
    tinhtrang_giaohang = VALUES(tinhtrang_giaohang),
    ngay_dat = VALUES(ngay_dat),
    ngay_giao = VALUES(ngay_giao);

-- Quick check.
SELECT * FROM donhang;
