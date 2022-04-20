-- create
CREATE TABLE IF NOT EXISTS khachhang(
  ma CHAR(10) NOT NULL,
  tai_khoan NVARCHAR(50),
  mat_khau NVARCHAR(50),
  ten NVARCHAR(50),
  ngay_sinh DATE,
  gioi_tinh BIT,
  dia_chi NVARCHAR(500),
  sdt NVARCHAR(20),
  email NVARCHAR(50),
  PRIMARY KEY(ma)
);
-- add new column
ALTER TABLE
  khachhang
ADD
  COLUMN ma_dh CHAR(10);
-- add values
INSERT INTO
  khachhang(
    ma,
    tai_khoan,
    ten,
    ngay_sinh,
    gioi_tinh,
    dia_chi,
    sdt,
    email
  )
VALUES
  (
    "KH01",
    "nguyenvana",
    "Nguyễn Văn A",
    "19901231",
    true,
    "Hà Nội",
    "0123456789",
    "nva311290@gmail.com"
  );
-- hash pass
UPDATE
  khachhang
SET
  mat_khau = MD5("a311290")
WHERE
  ma = "KH01";
-- edit value
UPDATE
  khachhang
SET
  ma_dh = "DH01"
WHERE
  ma = "KH01";
-- view
SELECT
  *
FROM
  khachhang;
-- clear
DELETE FROM
  khachhang;
-- remove column
ALTER TABLE
  khachhang DROP COLUMN ma_dh;
-- delete
  DROP TABLE khachhang;