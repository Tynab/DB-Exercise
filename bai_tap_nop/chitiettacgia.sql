-- create

CREATE TABLE IF NOT EXISTS chitiettacgia(
    ma_sach CHAR(10) NOT NULL,
    ma_tacgia CHAR(10) NOT NULL,
    vai_tro NVARCHAR(20),
    vi_tri NVARCHAR(20),
    PRIMARY KEY(ma_sach, ma_tacgia)
);

-- add foreign key

ALTER TABLE
    chitiettacgia
ADD
    CONSTRAINT fk_ma_sach FOREIGN KEY(ma_sach) REFERENCES sach(ma);

ALTER TABLE
    chitiettacgia
ADD
    CONSTRAINT fk_ma_tacgia FOREIGN KEY(ma_tacgia) REFERENCES tacgia(ma);

-- add values

INSERT INTO
    chitiettacgia
VALUES
    (
        "S01",
        "TG01",
        "Tác giả",
        "Giám đốc"
    );

-- view

SELECT * FROM chitiettacgia;

-- clear

DELETE FROM chitiettacgia;

-- remove foreign key

ALTER TABLE chitiettacgia DROP FOREIGN KEY fk_ma_sach;

ALTER TABLE chitiettacgia DROP FOREIGN KEY fk_ma_tacgia;

-- delete

DROP TABLE chitiettacgia;