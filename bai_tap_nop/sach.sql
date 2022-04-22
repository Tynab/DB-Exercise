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
-- add new column
ALTER TABLE
  sach
ADD
  COLUMN ma_nhaxuatban CHAR(10)
AFTER
  so_luong;
ALTER TABLE
  sach
ADD
  COLUMN ma_tacgia CHAR(10)
AFTER
  ma_nhaxuatban;
ALTER TABLE
  sach
ADD
  COLUMN ma_chude CHAR(10);
-- add foreign key
ALTER TABLE
  sach
ADD
  CONSTRAINT fk_mnxb FOREIGN KEY(ma_nhaxuatban) REFERENCES nhaxuatban(ma);
ALTER TABLE
  sach
ADD
  CONSTRAINT fk_mtg FOREIGN KEY(ma_tacgia) REFERENCES tacgia(ma);
ALTER TABLE
  sach
ADD
  CONSTRAINT fk_mcd FOREIGN KEY(ma_chude) REFERENCES chude(ma);
-- edit value
UPDATE
  sach
SET
  ma_nhaxuatban = "NXB01"
WHERE
  ma = "S01";
UPDATE
  sach
SET
  ma_tacgia = "TG01"
WHERE
  ma = "S01";
UPDATE
  sach
SET
  ma_chude = "CD01"
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
-- remove foreign key
ALTER TABLE
  sach DROP FOREIGN KEY fk_mnxb;
ALTER TABLE
  sach DROP FOREIGN KEY fk_mtg;
ALTER TABLE
  sach DROP FOREIGN KEY fk_mcd;
-- remove column
ALTER TABLE
  sach DROP COLUMN ma_nhaxuatban;
ALTER TABLE
  sach DROP COLUMN ma_tacgia;
ALTER TABLE
  sach DROP COLUMN ma_chude;
-- delete
  DROP TABLE sach;