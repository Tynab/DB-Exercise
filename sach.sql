-- create
CREATE TABLE IF NOT EXISTS sach(
  ma CHAR(10) NOT NULL,
  ten NVARCHAR(50),
  anh LONGBLOB,
  mo_ta NVARCHAR(500),
  gia DOUBLE,
  ngay DATE,
  so_luong INT,
  PRIMARY KEY(ma)
);
-- add new column
ALTER TABLE
  sach
ADD
  COLUMN ma_nxb CHAR(10)
AFTER
  so_luong;
ALTER TABLE
  sach
ADD
  COLUMN ma_tg CHAR(10)
AFTER
  ma_nxb;
ALTER TABLE
  sach
ADD
  COLUMN ma_cd CHAR(10);
-- add values
INSERT INTO
  sach(
    ma,
    ten,
    mo_ta,
    gia,
    ngay,
    so_luong
  )
VALUES
  (
    "S01",
    "Sách Văn Hóa",
    "Dạy kỹ năng ứng xử thường nhật",
    100000,
    "20220101",
    3
  );
-- edit value
UPDATE
  sach
SET
  ma_nxb = "NXB01"
WHERE
  ma = "S01";
UPDATE
  sach
SET
  ma_tg = "TG01"
WHERE
  ma = "S01";
UPDATE
  sach
SET
  ma_cd = "CD01"
WHERE
  ma = "S01";
-- view
SELECT
  *
FROM
  sach;
-- clear
DELETE FROM
  sach;
-- remove column
ALTER TABLE
  sach DROP COLUMN ma_nxb;
ALTER TABLE
  sach DROP COLUMN ma_tg;
ALTER TABLE
  sach DROP COLUMN ma_cd;
-- delete
  DROP TABLE sach;