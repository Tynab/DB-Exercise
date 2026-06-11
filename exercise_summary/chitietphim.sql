-- Summary:
--   Tao lich chieu/phien chieu don gian cho cap rap va phim.
--   Can chay rap.sql va phim.sql truoc file nay.

CREATE DATABASE IF NOT EXISTS baitaptonghop;
USE baitaptonghop;

-- Schema: khoa chinh ghep dam bao moi phim chi co mot lich chieu mau trong mot rap.
CREATE TABLE IF NOT EXISTS chitietphim (
    ma_rap CHAR(10) NOT NULL,
    ma_phim CHAR(10) NOT NULL,
    gia_ve DECIMAL(12, 2),
    thoi_luong INT,
    ngaygio_chieu DATETIME,
    PRIMARY KEY (ma_rap, ma_phim),
    CONSTRAINT fk_chitietphim_rap
        FOREIGN KEY (ma_rap) REFERENCES rap(ma),
    CONSTRAINT fk_chitietphim_phim
        FOREIGN KEY (ma_phim) REFERENCES phim(ma)
);

-- Seed data.
INSERT INTO
    chitietphim (ma_rap, ma_phim, gia_ve, thoi_luong, ngaygio_chieu)
VALUES
    ('R01', 'PH01', 100000, 100, '2019-01-01 20:00:00'),
    ('R02', 'PH02', 90000, 90, '2019-01-01 14:00:00')
ON DUPLICATE KEY UPDATE
    gia_ve = VALUES(gia_ve),
    thoi_luong = VALUES(thoi_luong),
    ngaygio_chieu = VALUES(ngaygio_chieu);

-- Quick check.
SELECT * FROM chitietphim;
