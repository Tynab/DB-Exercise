-- create
CREATE TABLE IF NOT EXISTS khachhang(
  ma CHAR(10) NOT NULL,
  ho NVARCHAR(20),
  ten NVARCHAR(20),
  dia_chi NVARCHAR(200),
  sdt NVARCHAR(20),
  email NVARCHAR(50),
  PRIMARY KEY(ma)
);
-- add new column
ALTER TABLE
  khachhang
ADD
  COLUMN ma_hd CHAR(10);
-- add values
INSERT INTO
  khachhang
VALUES
  (
    "KH01",
    "Nguyễn",
    "Văn",
    "Hà Nội",
    "0123456789",
    "nguyenvan@gmail.com"
  );
-- edit value
UPDATE
  khachhang
SET
  ma_hd = "HD01"
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
  khachhang DROP COLUMN ma_hd;
-- delete
  DROP TABLE khachhang;