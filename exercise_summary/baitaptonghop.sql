-- Summary:
--   Cac cau truy van tong hop cho bai toan dat ve xem phim.
--   Thu tu nap du lieu: cumrap -> rap -> loaighe -> ghe -> phim -> chitietphim -> loainguoidung -> nguoidung -> datve.

CREATE DATABASE IF NOT EXISTS baitaptonghop;
USE baitaptonghop;

-- 1. Danh sach rap thuoc cum rap Mega GS.
SELECT
    r.ma AS ma_rap,
    r.ten AS ten_rap,
    r.so_ghe,
    cr.ten AS ten_cumrap
FROM
    rap r
    JOIN cumrap cr ON cr.ma = r.ma_cumrap
WHERE
    cr.ten = 'Mega GS';

-- 2. Danh sach ghe thuong va rap dang chua ghe do.
SELECT
    g.ma AS ma_ghe,
    g.ten AS ten_ghe,
    r.ten AS ten_rap,
    g.stt,
    lg.ten AS ten_loaighe,
    g.kich_hoat
FROM
    ghe g
    JOIN loaighe lg ON lg.ma = g.ma_loaighe
    JOIN rap r ON r.ma = g.ma_rap
WHERE
    lg.ten = 'Ghế thường';

-- 3. Lich chieu vao khung gio cu the.
SELECT
    p.ten AS ten_phim,
    r.ten AS ten_rap,
    ctp.ngaygio_chieu,
    ctp.gia_ve,
    ctp.thoi_luong
FROM
    phim p
    JOIN chitietphim ctp ON ctp.ma_phim = p.ma
    JOIN rap r ON r.ma = ctp.ma_rap
WHERE
    ctp.ngaygio_chieu = '2019-01-01 14:00:00';

-- 4. Nguoi dung thuoc nhom VIP. Gia tri loc khop voi du lieu mau trong loainguoidung.sql.
SELECT
    nd.ho_ten,
    nd.email,
    nd.sdt
FROM
    nguoidung nd
    JOIN loainguoidung lnd ON lnd.ma = nd.ma_loainguoidung
WHERE
    lnd.ten = 'Người dùng VIP';

-- 5. Tim lich chieu cua cac phim co ten gan dung 'Ted'.
SELECT
    p.ten AS ten_phim,
    r.ten AS ten_rap,
    ctp.ngaygio_chieu,
    ctp.gia_ve,
    ctp.thoi_luong
FROM
    phim p
    JOIN chitietphim ctp ON ctp.ma_phim = p.ma
    JOIN rap r ON r.ma = ctp.ma_rap
WHERE
    p.ten LIKE '%Ted%';
