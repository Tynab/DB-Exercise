-- Summary:
--   Tao bang dat ve de ghi nhan nguoi dung dat ghe cho mot phim tai mot rap.
--   Can chay chitietphim.sql, ghe.sql va nguoidung.sql truoc file nay.

CREATE DATABASE IF NOT EXISTS baitaptonghop;
USE baitaptonghop;

-- Schema: khoa chinh ghep tranh trung ve tren cung rap, phim, ghe va nguoi dung.
CREATE TABLE IF NOT EXISTS datve (
    ma_rap CHAR(10) NOT NULL,
    ma_phim CHAR(10) NOT NULL,
    ma_ghe CHAR(10) NOT NULL,
    taikhoan_nguoidung CHAR(50) NOT NULL,
    ngay_dat DATE,
    gia_ve DECIMAL(12, 2),
    chiet_khau FLOAT,
    PRIMARY KEY (ma_rap, ma_phim, ma_ghe, taikhoan_nguoidung),
    CONSTRAINT fk_datve_rap
        FOREIGN KEY (ma_rap) REFERENCES rap(ma),
    CONSTRAINT fk_datve_phim
        FOREIGN KEY (ma_phim) REFERENCES phim(ma),
    CONSTRAINT fk_datve_ghe
        FOREIGN KEY (ma_ghe) REFERENCES ghe(ma),
    CONSTRAINT fk_datve_nguoidung
        FOREIGN KEY (taikhoan_nguoidung) REFERENCES nguoidung(tai_khoan)
);

-- Seed data: gia ve lay theo chitietphim, chiet khau lay theo loai ghe tai thoi diem tao du lieu mau.
INSERT INTO
    datve (ma_rap, ma_phim, ma_ghe, taikhoan_nguoidung, ngay_dat, gia_ve, chiet_khau)
VALUES
    ('R01', 'PH01', 'G01', 'nguyenvana', '2022-01-01', 100000, 1.5),
    ('R02', 'PH02', 'G02', 'nguyenvandung', '2022-01-01', 90000, 0)
ON DUPLICATE KEY UPDATE
    ngay_dat = VALUES(ngay_dat),
    gia_ve = VALUES(gia_ve),
    chiet_khau = VALUES(chiet_khau);

-- Quick check.
SELECT * FROM datve;
