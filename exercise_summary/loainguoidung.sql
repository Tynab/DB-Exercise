-- create
CREATE TABLE IF NOT EXISTS loainguoidung(
  ma CHAR(10) NOT NULL,
  ten NVARCHAR(50),
  PRIMARY KEY(ma)
);
-- add values
INSERT INTO
  loainguoidung
VALUES
  ("L01", "Người dùng VIP"),
  ("L02", "Người dùng thường");
-- add new column
ALTER TABLE
  loainguoidung
ADD
  COLUMN taikhoan_nguoidung CHAR(50);
-- add foreign key
ALTER TABLE
  loainguoidung
ADD
  CONSTRAINT fk_tknd FOREIGN KEY(taikhoan_nguoidung) REFERENCES nguoidung(tai_khoan);
-- edit value
UPDATE
  loainguoidung
SET
  taikhoan_nguoidung = "nguyenvana"
WHERE
  ma = "L01";
UPDATE
  loainguoidung
SET
  taikhoan_nguoidung = "nguyenvandung"
WHERE
  ma = "L02";
-- view
SELECT
  *
FROM
  loainguoidung;
-- clear
DELETE FROM
  loainguoidung;
-- remove foreign key
ALTER TABLE
  loainguoidung DROP FOREIGN KEY fk_tknd;
-- remove column
ALTER TABLE
  loainguoidung DROP COLUMN taikhoan_nguoidung;
-- delete
  DROP TABLE loainguoidung;