-- create

CREATE TABLE IF NOT EXISTS loaighe(
    ma CHAR(10) NOT NULL,
    ten NVARCHAR(50),
    mo_ta NVARCHAR(255),
    chiet_khau FLOAT,
    PRIMARY KEY(ma)
);

-- add values

INSERT INTO
    loaighe
VALUES
    ("LG01", "Ghế VIP", "Ghế mới", 1.5),
    ("LG02", "Ghế thường", "Ghế cũ", 0);

-- add new column

ALTER TABLE loaighe ADD COLUMN ma_ghe CHAR(10);

-- add foreign key

ALTER TABLE
    loaighe
ADD
    CONSTRAINT fk_maghe FOREIGN KEY(ma_ghe) REFERENCES ghe(ma);

-- edit value

UPDATE loaighe SET ma_ghe = "G01" WHERE ma = "LG01";

UPDATE loaighe SET ma_ghe = "G02" WHERE ma = "LG02";

-- view

SELECT * FROM loaighe;