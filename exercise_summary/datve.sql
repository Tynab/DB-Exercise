-- create
CREATE TABLE IF NOT EXISTS datve(
  ma_rap CHAR(10) NOT NULL,
  ma_phim CHAR(10) NOT NULL,
  ma_ghe CHAR(10) NOT NULL,
  taikhoan_nguoidung CHAR(50) NOT NULL,
  ngay_dat DATE,
  gia_ve INT,
  chiet_khau FLOAT,
  PRIMARY KEY(ma_rap, ma_phim, ma_ghe, taikhoan_nguoidung)
);
-- add foreign key
ALTER TABLE
  datve
ADD
  CONSTRAINT fk_ma_rap FOREIGN KEY(ma_rap) REFERENCES rap(ma);
ALTER TABLE
  datve
ADD
  CONSTRAINT fk_ma_phim FOREIGN KEY(ma_phim) REFERENCES phim(ma);
ALTER TABLE
  datve
ADD
  CONSTRAINT fk_ma_ghe FOREIGN KEY(ma_ghe) REFERENCES ghe(ma);
ALTER TABLE
  datve
ADD
  CONSTRAINT fk_ma_tknd FOREIGN KEY(taikhoan_nguoidung) REFERENCES nguoidung(tai_khoan);
-- add values
INSERT INTO
  datve(
    ma_rap,
    ma_phim,
    ma_ghe,
    taikhoan_nguoidung,
    ngay_dat
  )
VALUES
  (
    "R01",
    "PH01",
    "G01",
    "nguyenvana",
    "2022-01-01"
  ),
  (
    "R02",
    "PH02",
    "G02",
    "nguyenvandung",
    "2022-01-01"
  );
-- edit value
UPDATE
  datve dv
  JOIN chitietphim ctp ON ctp.ma_rap = dv.ma_rap
  AND ctp.ma_phim = dv.ma_phim
SET
  dv.gia_ve = ctp.gia_ve
WHERE
  dv.ma_phim = "PH01";
UPDATE
  datve dv
  JOIN chitietphim ctp ON ctp.ma_rap = dv.ma_rap
  AND ctp.ma_phim = dv.ma_phim
SET
  dv.gia_ve = ctp.gia_ve
WHERE
  dv.ma_phim = "PH02";
UPDATE
  datve dv
  JOIN ghe g ON g.ma = dv.ma_ghe
  JOIN loaighe lg ON lg.ma_ghe = g.ma
SET
  dv.chiet_khau = lg.chiet_khau
WHERE
  dv.ma_ghe = "G01";
UPDATE
  datve dv
  JOIN ghe g ON g.ma = dv.ma_ghe
  JOIN loaighe lg ON lg.ma_ghe = g.ma
SET
  dv.chiet_khau = lg.chiet_khau
WHERE
  dv.ma_ghe = "G02";
-- view
SELECT
  *
FROM
  datve;
-- clear
DELETE FROM
  datve;
-- remove foreign key
ALTER TABLE
  datve DROP FOREIGN KEY fk_ma_rap;
ALTER TABLE
  datve DROP FOREIGN KEY fk_ma_phim;
ALTER TABLE
  datve DROP FOREIGN KEY fk_ma_ghe;
ALTER TABLE
  datve DROP FOREIGN KEY fk_ma_tknd;
-- delete
  DROP TABLE datve;