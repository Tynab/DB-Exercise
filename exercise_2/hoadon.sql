-- Summary:
--   Tao bang hoa don va lien ket moi hoa don voi mot khach hang.
--   Can chay khachhang.sql truoc file nay.

CREATE DATABASE IF NOT EXISTS baitap2;
USE baitap2;

-- Schema: hoa don thuoc ve mot khach hang.
CREATE TABLE IF NOT EXISTS hoadon (
    ma CHAR(10) NOT NULL,
    ma_khachhang CHAR(10) NOT NULL,
    ngay DATE,
    PRIMARY KEY (ma),
    CONSTRAINT fk_hoadon_khachhang
        FOREIGN KEY (ma_khachhang) REFERENCES khachhang(ma)
);

-- Seed data.
INSERT INTO
    hoadon (ma, ma_khachhang, ngay)
VALUES
    ('HD01', 'KH01', '2022-01-01'),
    ('HD02', 'KH01', '2022-01-02'),
    ('HD03', 'KH01', '2022-01-03')
ON DUPLICATE KEY UPDATE
    ma_khachhang = VALUES(ma_khachhang),
    ngay = VALUES(ngay);

-- Quick check.
SELECT * FROM hoadon;
