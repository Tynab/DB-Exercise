-- create
CREATE TABLE IF NOT EXISTS loaisanpham(
  ma CHAR(10) NOT NULL,
  ten NVARCHAR(50),
  PRIMARY KEY(ma)
);
-- add new column
ALTER TABLE
  loaisanpham
ADD
  COLUMN ma_sp CHAR(10);
-- add values
INSERT INTO
  loaisanpham
VALUES
  ("LSP01", "Sách"),
  ("LSP02", "Điện thoại"),
  ("LSP03", "Laptop");
-- edit value
UPDATE
  loaisanpham
SET
  ma_sp = "SP01"
WHERE
  ma = "LSP01";
UPDATE
  loaisanpham
SET
  ma_sp = "SP02"
WHERE
  ma = "LSP02";
UPDATE
  loaisanpham
SET
  ma_sp = "SP03"
WHERE
  ma = "LSP03";
-- view
SELECT
  *
FROM
  loaisanpham;
-- clear
DELETE FROM
  loaisanpham;
-- remove column
ALTER TABLE
  loaisanpham DROP COLUMN ma_sp;
-- delete
  DROP TABLE loaisanpham;