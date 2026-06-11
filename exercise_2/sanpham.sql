-- Summary:
--   Tao bang san pham va gan moi san pham vao mot loai san pham.
--   Can chay loaisanpham.sql truoc file nay.

CREATE DATABASE IF NOT EXISTS baitap2;
USE baitap2;

-- Schema: san pham thuoc ve mot loai san pham thong qua ma_loaisanpham.
CREATE TABLE IF NOT EXISTS sanpham (
    ma CHAR(10) NOT NULL,
    ma_loaisanpham CHAR(10) NOT NULL,
    ten NVARCHAR(50) NOT NULL,
    mo_ta NVARCHAR(255),
    gia DECIMAL(12, 2),
    PRIMARY KEY (ma),
    CONSTRAINT fk_sanpham_loaisanpham
        FOREIGN KEY (ma_loaisanpham) REFERENCES loaisanpham(ma)
);

-- Seed data: dung ON DUPLICATE KEY UPDATE de cap nhat du lieu mau khi chay lai.
INSERT INTO
    sanpham (ma, ma_loaisanpham, ten, mo_ta, gia)
VALUES
    ('SP01', 'LSP01', 'Sách văn học', 'Tuyển tập thơ đương đại', 100000),
    ('SP02', 'LSP02', 'Điện thoại iPhone', 'Chống vỡ, chống nước, chống bụi', 200000),
    ('SP03', 'LSP03', 'Laptop Dell', 'Siêu mỏng, siêu nhẹ, độ phân giải cao', 300000)
ON DUPLICATE KEY UPDATE
    ma_loaisanpham = VALUES(ma_loaisanpham),
    ten = VALUES(ten),
    mo_ta = VALUES(mo_ta),
    gia = VALUES(gia);

-- Quick check.
SELECT * FROM sanpham;
