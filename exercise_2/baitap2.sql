-- create
CREATE DATABASE IF NOT EXISTS baitap2;
--use
USE baitap2;
-- test
SELECT
  kh.ten,
  hd.ngay,
  cthd.so_luong,
  sp.ten,
  lsp.ten
FROM
  khachhang kh
  JOIN hoadon hd ON hd.ma = kh.ma_hoadon
  JOIN chitiethoadon cthd ON cthd.ma_hoadon = hd.ma
  JOIN sanpham sp ON sp.ma = cthd.ma_sanpham
  JOIN loaisanpham lsp ON lsp.ma_sanpham = sp.ma;
-- delete
DROP DATABASE baitap2;