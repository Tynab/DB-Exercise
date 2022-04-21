-- create
CREATE TABLE IF NOT EXISTS nhaxuatban(
  ma CHAR(10) NOT NULL,
  ten NVARCHAR(50),
  dia_chi NVARCHAR(200),
  sdt CHAR(20),
  PRIMARY KEY(ma)
);
-- add values
INSERT INTO
  nhaxuatban
VALUES
  ("NXB01", "NXB Văn Hóa", "Hà Nội", "0987654321");
-- view
SELECT
  *
FROM
  nhaxuatban;
-- clear
DELETE FROM
  nhaxuatban;
-- delete
  DROP TABLE nhaxuatban;