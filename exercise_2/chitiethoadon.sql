-- Summary:
--   Tao bang chi tiet hoa don de luu san pham, so luong va gia ban tren tung hoa don.
--   Can chay sanpham.sql va hoadon.sql truoc file nay.

CREATE DATABASE IF NOT EXISTS baitap2;
USE baitap2;

-- Schema: khoa chinh ghep dam bao moi san pham chi xuat hien mot lan trong mot hoa don.
CREATE TABLE IF NOT EXISTS chitiethoadon (
    ma_sanpham CHAR(10) NOT NULL,
    ma_hoadon CHAR(10) NOT NULL,
    so_luong INT,
    gia DECIMAL(12, 2),
    PRIMARY KEY (ma_sanpham, ma_hoadon),
    CONSTRAINT fk_chitiethoadon_sanpham
        FOREIGN KEY (ma_sanpham) REFERENCES sanpham(ma),
    CONSTRAINT fk_chitiethoadon_hoadon
        FOREIGN KEY (ma_hoadon) REFERENCES hoadon(ma)
);

-- Seed data.
INSERT INTO
    chitiethoadon (ma_sanpham, ma_hoadon, so_luong, gia)
VALUES
    ('SP01', 'HD01', 1, 100000)
ON DUPLICATE KEY UPDATE
    so_luong = VALUES(so_luong),
    gia = VALUES(gia);

-- Quick check.
SELECT * FROM chitiethoadon;
