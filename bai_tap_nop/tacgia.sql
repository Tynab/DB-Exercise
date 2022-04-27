-- create
CREATE TABLE IF NOT EXISTS tacgia(
  ma CHAR(10) NOT NULL,
  ten NVARCHAR(50),
  tieu_su NVARCHAR(255),
  dia_chi NVARCHAR(255),
  sdt CHAR(20),
  PRIMARY KEY(ma)
);
-- add values
INSERT INTO
  tacgia
VALUES
  (
    "TG01",
    "Nguyễn Thị B",
    "Từng làm thợ hàn",
    "Hà Nội",
    "0987654322"
  );
-- view
SELECT
  *
FROM
  tacgia;
-- clear
DELETE FROM
  tacgia;
-- delete
  DROP TABLE tacgia;