-- create

CREATE TABLE IF NOT EXISTS ghe(
    ma CHAR(10) NOT NULL,
    ten NVARCHAR(50),
    stt INT,
    kich_hoat BIT,
    PRIMARY KEY(ma)
);

-- add values

INSERT INTO
    ghe
VALUES
    ("G01", "Ghế VIP", 1, true),
    ("G02", "Ghế thường", 1, false);

-- view

SELECT * FROM ghe;