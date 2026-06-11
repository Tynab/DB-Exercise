-- Summary:
--   Truy van tong hop khach hang, hoa don, san pham va loai san pham trong database baitap2.
--   Thu tu nap du lieu de truy van co ket qua: khachhang -> loaisanpham -> sanpham -> hoadon -> chitiethoadon.

CREATE DATABASE IF NOT EXISTS baitap2;
USE baitap2;

-- Bao cao chi tiet hoa don: khach hang nao mua san pham nao, vao ngay nao.
SELECT
    kh.ma AS ma_khachhang,
    CONCAT(kh.ho, ' ', kh.ten) AS ten_khachhang,
    hd.ma AS ma_hoadon,
    hd.ngay AS ngay_hoa_don,
    cthd.so_luong,
    cthd.gia AS gia_ban,
    sp.ma AS ma_sanpham,
    sp.ten AS ten_sanpham,
    lsp.ten AS ten_loaisanpham
FROM
    khachhang kh
    JOIN hoadon hd ON hd.ma_khachhang = kh.ma
    JOIN chitiethoadon cthd ON cthd.ma_hoadon = hd.ma
    JOIN sanpham sp ON sp.ma = cthd.ma_sanpham
    JOIN loaisanpham lsp ON lsp.ma = sp.ma_loaisanpham;
