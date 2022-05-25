-- create
CREATE DATABASE IF NOT EXISTS qlbansach;
-- use
USE qlbansach;
-- test
SELECT
  kh.ten,
  dh.tinhtrang_giaohang,
  ctdh.so_luong,
  s.ten,
  cd.ten,
  nxb.ten,
  tg.ten,
  cttg.vai_tro
FROM
  khachhang kh
  JOIN donhang dh ON dh.ma = kh.ma_donhang
  JOIN chitietdonhang ctdh ON ctdh.ma_donhang = dh.ma
  JOIN sach s ON s.ma = ctdh.ma_sach
  JOIN chude cd ON cd.ma = s.ma_chude
  JOIN nhaxuatban nxb ON nxb.ma = s.ma_nhaxuatban
  JOIN tacgia tg ON tg.ma = s.ma_tacgia
  JOIN chitiettacgia cttg ON cttg.ma_tacgia = tg.ma;
-- delete
  DROP DATABASE qlbansach;