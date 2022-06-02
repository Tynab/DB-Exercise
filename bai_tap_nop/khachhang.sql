-- create

CREATE TABLE IF NOT EXISTS khachhang(
    ma CHAR(10) NOT NULL,
    tai_khoan CHAR(50),
    mat_khau CHAR(50),
    ten NVARCHAR(50),
    ngay_sinh DATE,
    gioi_tinh BIT,
    dia_chi NVARCHAR(255),
    sdt CHAR(20),
    email CHAR(50),
    PRIMARY KEY(ma)
);

-- add values

INSERT INTO
    khachhang(
        ma,
        tai_khoan,
        ten,
        ngay_sinh,
        gioi_tinh,
        dia_chi,
        sdt,
        email
    )
VALUES
    (
        "KH01",
        "nguyenvana",
        "Nguyễn Văn A",
        "19901231",
        true,
        "Hà Nội",
        "0123456789",
        "nva311290@gmail.com"
    );

-- hash pass

UPDATE
    khachhang
SET
    mat_khau = MD5("a311290")
WHERE
    ma = "KH01";

-- add new column

ALTER TABLE khachhang ADD COLUMN ma_donhang CHAR(10);

-- add foreign key

ALTER TABLE
    khachhang
ADD
    CONSTRAINT fk_mdh FOREIGN KEY(ma_donhang) REFERENCES donhang(ma);

-- edit value

UPDATE khachhang SET ma_donhang = "DH01" WHERE ma = "KH01";

-- view

SELECT * FROM khachhang;