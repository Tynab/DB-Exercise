-- create
CREATE TABLE IF NOT EXISTS donhang(
  ma CHAR(10) NOT NULL,
  thanh_toan BIT,
  tinhtrang_giaohang NVARCHAR(20),
  ngay_dat DATE,
  ngay_giao DATE,
  PRIMARY KEY(ma)
);
-- add values
INSERT INTO
  donhang
VALUES
  ("DH01", true, "Đã giao", "2022-02-01", "2022-03-01");
-- add new column
ALTER TABLE
  donhang
ADD
  COLUMN ma_sach CHAR(10);
-- add foreign key
ALTER TABLE
  donhang
ADD
  CONSTRAINT fk_ms FOREIGN KEY(ma_sach) REFERENCES sach(ma);
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
-- remove foreign key
ALTER TABLE
  donhang DROP FOREIGN KEY fk_ms;
-- remove column
ALTER TABLE
  donhang DROP COLUMN ma_sach;
-- delete
  DROP TABLE donhang;