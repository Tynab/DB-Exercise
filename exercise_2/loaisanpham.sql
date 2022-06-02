-- create

CREATE TABLE IF NOT EXISTS loaisanpham(
    ma CHAR(10) NOT NULL,
    ten NVARCHAR(50),
    PRIMARY KEY(ma)
);

-- add values

INSERT INTO
    loaisanpham
VALUES
    ("LSP01", "Sách"),
    ("LSP02", "Điện thoại"),
    ("LSP03", "Laptop");

-- add new column

ALTER TABLE loaisanpham ADD COLUMN ma_sanpham CHAR(10);

-- add foreign key

ALTER TABLE
    loaisanpham
ADD
    CONSTRAINT fk_msp FOREIGN KEY(ma_sanpham) REFERENCES sanpham(ma);

-- edit value

UPDATE loaisanpham SET ma_sanpham = "SP01" WHERE ma = "LSP01";

UPDATE loaisanpham SET ma_sanpham = "SP02" WHERE ma = "LSP02";

UPDATE loaisanpham SET ma_sanpham = "SP03" WHERE ma = "LSP03";

-- view

SELECT * FROM loaisanpham;