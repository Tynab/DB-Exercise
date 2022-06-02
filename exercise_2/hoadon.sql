-- create

CREATE TABLE IF NOT EXISTS hoadon(
    ma CHAR(10) NOT NULL,
    ngay DATE,
    PRIMARY KEY(ma)
);

-- add values

INSERT INTO
    hoadon
VALUES
    ("HD01", "2022-01-01"),
    ("HD02", "2022-01-02"),
    ("HD03", "2022-01-03");

-- view

SELECT * FROM hoadon;