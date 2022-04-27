-- create
CREATE TABLE IF NOT EXISTS sanpham(
  ma CHAR(10) NOT NULL,
  ten NVARCHAR(50),
  mo_ta NVARCHAR(255),
  gia INT,
  PRIMARY KEY(ma)
);
-- add values
INSERT INTO
  sanpham
VALUES
  (
    "SP01",
    "Sách văn học",
    "Tuyển tập thơ đương đại",
    100000
  ),
  (
    "SP02",
    "Điện thoại iPhone",
    "Chống vỡ, chống nước, chống bụi",
    200000
  ),
  (
    "SP03",
    "Laptop Dell",
    "Siêu mỏng, siêu nhẹ, độ phân giải cao",
    300000
  );
-- view
SELECT
  *
FROM
  sanpham;
-- clear
DELETE FROM
  sanpham;
-- delete
  DROP TABLE sanpham;