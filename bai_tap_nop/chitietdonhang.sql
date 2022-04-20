-- create
CREATE TABLE IF NOT EXISTS chitietdonhang(
  ma_sach CHAR(10) NOT NULL,
  ma_donhang CHAR(10) NOT NULL,
  don_gia DOUBLE,
  so_luong INT,
  PRIMARY KEY(ma_sach, ma_donhang)
);
-- add foreign key
ALTER TABLE
  chitietdonhang
ADD
  CONSTRAINT fk_masach FOREIGN KEY(ma_sach) REFERENCES sach(ma);
ALTER TABLE
  chitietdonhang
ADD
  CONSTRAINT fk_madonhang FOREIGN KEY(ma_donhang) REFERENCES donhang(ma);
-- add values
INSERT INTO
  chitietdonhang
VALUES
  (
    "S01",
    "DH01",
    100000,
    1
  );
-- view
SELECT
  *
FROM
  chitietdonhang;
-- clear
DELETE FROM
  chitietdonhang;
-- remove foreign key
ALTER TABLE
  chitietdonhang DROP FOREIGN KEY fk_masach;
ALTER TABLE
  chitietdonhang DROP FOREIGN KEY fk_madonhang;
-- delete
  DROP TABLE chitietdonhang;