-- create
CREATE TABLE IF NOT EXISTS donhang(
  ma CHAR(10) NOT NULL,
  thanh_toan BIT,
  tinhtrang_giaohang NVARCHAR(20),
  ngay_dat DATE,
  ngay_giao DATE,
  PRIMARY KEY(ma)
);
-- add new column
ALTER TABLE
  donhang
ADD
  COLUMN ma_sach CHAR(10);
-- add values
INSERT INTO
  donhang
VALUES
  ("DH01", true, "Đã giao", "20220201", "20220301");
-- edit value
UPDATE
  donhang
SET
  ma_sach = "S01"
WHERE
  ma = "DH01";
-- view
SELECT
  *
FROM
  donhang;
-- clear
DELETE FROM
  donhang;
-- remove column
ALTER TABLE
  donhang DROP COLUMN ma_sach;
-- delete
  DROP TABLE donhang;