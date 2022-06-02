-- create

CREATE TABLE IF NOT EXISTS chitietphim(
    ma_rap CHAR(10) NOT NULL,
    ma_phim CHAR(10) NOT NULL,
    gia_ve INT,
    thoi_luong INT,
    ngaygio_chieu DATETIME,
    PRIMARY KEY(ma_rap, ma_phim)
);

-- add foreign key

ALTER TABLE
    chitietphim
ADD
    CONSTRAINT fk_marap FOREIGN KEY(ma_rap) REFERENCES rap(ma);

ALTER TABLE
    chitietphim
ADD
    CONSTRAINT fk_maphim FOREIGN KEY(ma_phim) REFERENCES phim(ma);

-- add values

INSERT INTO
    chitietphim
VALUES
    (
        "R01",
        "PH01",
        100000,
        100,
        "2019-01-01 20:00:00"
    ),
    (
        "R02",
        "PH02",
        90000,
        90,
        "2019-01-01 14:00:00"
    );

-- view

SELECT * FROM chitietphim;