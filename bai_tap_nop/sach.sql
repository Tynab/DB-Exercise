-- Summary:
--   Tao bang sach va gan sach vao nha xuat ban, chu de.
--   Can chay nhaxuatban.sql va chude.sql truoc file nay.

CREATE DATABASE IF NOT EXISTS qlbansach;
USE qlbansach;

-- Schema: thong tin sach; tac gia duoc quan ly rieng qua bang chitiettacgia.
CREATE TABLE IF NOT EXISTS sach (
    ma CHAR(10) NOT NULL,
    ma_nhaxuatban CHAR(10) NOT NULL,
    ma_chude CHAR(10) NOT NULL,
    ten NVARCHAR(50) NOT NULL,
    anh LONGBLOB,
    mo_ta NVARCHAR(255),
    gia DECIMAL(12, 2),
    ngay DATE,
    so_luong INT,
    PRIMARY KEY (ma),
    CONSTRAINT fk_sach_nhaxuatban
        FOREIGN KEY (ma_nhaxuatban) REFERENCES nhaxuatban(ma),
    CONSTRAINT fk_sach_chude
        FOREIGN KEY (ma_chude) REFERENCES chude(ma)
);

-- Seed data.
INSERT INTO
    sach (ma, ma_nhaxuatban, ma_chude, ten, mo_ta, gia, ngay, so_luong)
VALUES
    ('S01', 'NXB01', 'CD01', 'Sách Văn Hóa', 'Dạy kỹ năng ứng xử thường nhật', 100000, '2022-01-01', 3)
ON DUPLICATE KEY UPDATE
    ma_nhaxuatban = VALUES(ma_nhaxuatban),
    ma_chude = VALUES(ma_chude),
    ten = VALUES(ten),
    mo_ta = VALUES(mo_ta),
    gia = VALUES(gia),
    ngay = VALUES(ngay),
    so_luong = VALUES(so_luong);

-- Quick check.
SELECT * FROM sach;
