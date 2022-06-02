-- create

CREATE TABLE IF NOT EXISTS khachhang(
    ma CHAR(10) NOT NULL,
    ho NVARCHAR(20),
    ten NVARCHAR(20),
    dia_chi NVARCHAR(255),
    sdt CHAR(20),
    email CHAR(50),
    PRIMARY KEY(ma)
);

-- add values

INSERT INTO
    khachhang
VALUES
    (
        "KH01",
        "Nguyễn",
        "Văn",
        "Hà Nội",
        "0123456789",
        "nguyenvan@gmail.com"
    );

-- add new column

ALTER TABLE khachhang ADD COLUMN ma_hoadon CHAR(10);

-- add foreign key

ALTER TABLE
    khachhang
ADD
    CONSTRAINT fk_mhd FOREIGN KEY(ma_hoadon) REFERENCES hoadon(ma);

-- edit value

UPDATE khachhang SET ma_hoadon = "HD01" WHERE ma = "KH01";

-- view

SELECT * FROM khachhang;