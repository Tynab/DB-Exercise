-- Summary:
--   Truy van tong hop he thong quan ly ban sach.
--   Thu tu nap du lieu: chude -> nhaxuatban -> tacgia -> sach -> khachhang -> donhang -> chitiettacgia -> chitietdonhang.

CREATE DATABASE IF NOT EXISTS qlbansach;
USE qlbansach;

-- Bao cao don hang: khach hang, trang thai giao hang, sach, chu de, nha xuat ban va tac gia.
SELECT
    kh.ten AS ten_khachhang,
    dh.tinhtrang_giaohang,
    ctdh.so_luong,
    ctdh.don_gia,
    s.ten AS ten_sach,
    cd.ten AS ten_chude,
    nxb.ten AS ten_nhaxuatban,
    tg.ten AS ten_tacgia,
    cttg.vai_tro
FROM
    khachhang kh
    JOIN donhang dh ON dh.ma_khachhang = kh.ma
    JOIN chitietdonhang ctdh ON ctdh.ma_donhang = dh.ma
    JOIN sach s ON s.ma = ctdh.ma_sach
    JOIN chude cd ON cd.ma = s.ma_chude
    JOIN nhaxuatban nxb ON nxb.ma = s.ma_nhaxuatban
    JOIN chitiettacgia cttg ON cttg.ma_sach = s.ma
    JOIN tacgia tg ON tg.ma = cttg.ma_tacgia;
