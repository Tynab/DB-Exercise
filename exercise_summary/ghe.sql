-- Summary:
--   Tao bang ghe, gan ghe vao rap va loai ghe.
--   Can chay rap.sql va loaighe.sql truoc file nay.

CREATE DATABASE IF NOT EXISTS baitaptonghop;
USE baitaptonghop;

-- Schema: ma_rap cho biet ghe nam trong rap nao, ma_loaighe cho biet hang ghe.
CREATE TABLE IF NOT EXISTS ghe (
    ma CHAR(10) NOT NULL,
    ma_rap CHAR(10) NOT NULL,
    ma_loaighe CHAR(10) NOT NULL,
    ten NVARCHAR(50) NOT NULL,
    stt INT,
    kich_hoat BOOLEAN,
    PRIMARY KEY (ma),
    CONSTRAINT fk_ghe_rap
        FOREIGN KEY (ma_rap) REFERENCES rap(ma),
    CONSTRAINT fk_ghe_loaighe
        FOREIGN KEY (ma_loaighe) REFERENCES loaighe(ma)
);

-- Seed data.
INSERT INTO
    ghe (ma, ma_rap, ma_loaighe, ten, stt, kich_hoat)
VALUES
    ('G01', 'R01', 'LG01', 'Ghế VIP', 1, TRUE),
    ('G02', 'R02', 'LG02', 'Ghế thường', 1, FALSE)
ON DUPLICATE KEY UPDATE
    ma_rap = VALUES(ma_rap),
    ma_loaighe = VALUES(ma_loaighe),
    ten = VALUES(ten),
    stt = VALUES(stt),
    kich_hoat = VALUES(kich_hoat);

-- Quick check.
SELECT * FROM ghe;
