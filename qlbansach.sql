-- create
CREATE DATABASE IF NOT EXISTS qlbansach;
--use
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
  JOIN donhang dh ON dh.ma = kh.ma_dh
  JOIN chitietdonhang ctdh ON ctdh.ma_donhang = dh.ma
  JOIN sach s ON s.ma = ctdh.ma_sach
  JOIN chude cd ON cd.ma = s.ma_cd
  JOIN nhaxuatban nxb ON nxb.ma = s.ma_nxb
  JOIN tacgia tg ON tg.ma = s.ma_tg
  JOIN chitiettacgia cttg ON cttg.ma_tacgia = tg.ma;
-- delete
  DROP DATABASE qlbansach;