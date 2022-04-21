-- create
CREATE TABLE IF NOT EXISTS chitiethoadon(
  ma_sanpham CHAR(10) NOT NULL,
  ma_hoadon CHAR(10) NOT NULL,
  so_luong INT,
  gia INT,
  PRIMARY KEY(ma_sanpham, ma_hoadon)
);
-- add foreign key
ALTER TABLE
  chitiethoadon
ADD
  CONSTRAINT fk_ma_sanpham FOREIGN KEY(ma_sanpham) REFERENCES sanpham(ma);
ALTER TABLE
  chitiethoadon
ADD
  CONSTRAINT fk_ma_hoadon FOREIGN KEY(ma_hoadon) REFERENCES hoadon(ma);
-- add values
INSERT INTO
  chitiethoadon
VALUES
  (
    "SP01",
    "HD01",
    1,
    100000
  );
-- view
SELECT
  *
FROM
  chitiethoadon;
-- clear
DELETE FROM
  chitiethoadon;
-- remove foreign key
ALTER TABLE
  chitiethoadon DROP FOREIGN KEY fk_ma_sanpham;
ALTER TABLE
  chitiethoadon DROP FOREIGN KEY fk_ma_hoadon;
-- delete
  DROP TABLE chitiethoadon;