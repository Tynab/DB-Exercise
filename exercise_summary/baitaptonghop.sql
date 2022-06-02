-- create

CREATE DATABASE IF NOT EXISTS baitaptonghop;

-- use

USE baitaptonghop;

-- 1)

SELECT
    r.ma,
    r.ten,
    cr.so_ghe,
    cr.ten
FROM
    rap r
    JOIN cumrap cr ON cr.ma_rap = r.ma
WHERE
    cr.ten = "Mega GS";

-- 2)

SELECT
    g.ma,
    g.ten,
    r.ten,
    g.stt,
    lg.ten,
    g.kich_hoat
FROM
    ghe g
    JOIN loaighe lg ON lg.ma_ghe = g.ma
    JOIN rap r ON r.ma_ghe = g.ma
WHERE
    lg.ten = "Ghế thường";

-- 3)

SELECT
    p.ten,
    r.ten,
    ctp.ngaygio_chieu,
    ctp.gia_ve,
    ctp.thoi_luong
FROM
    phim p
    JOIN chitietphim ctp ON ctp.ma_phim = p.ma
    JOIN rap r ON r.ma = ctp.ma_rap
WHERE
    ctp.ngaygio_chieu = "2019-01-01 14:00:00";

-- 4)

SELECT
    nd.ho_ten,
    nd.email,
    nd.sdt
FROM
    nguoidung nd
    JOIN loainguoidung lnd ON lnd.taikhoan_nguoidung = nd.tai_khoan
WHERE
    lnd.ten = "Nhóm 1";

-- 5)

SELECT
    p.ten,
    r.ten,
    ctp.ngaygio_chieu,
    ctp.gia_ve,
    ctp.thoi_luong
FROM
    phim p
    JOIN chitietphim ctp ON ctp.ma_phim = p.ma
    JOIN rap r ON r.ma = ctp.ma_rap
WHERE
    p.ten LIKE "%Ted%";